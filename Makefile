PDF := main.pdf
TEX := main.tex

.PHONY: all clean watch

all: $(PDF)

$(PDF): $(TEX)
	latexmk -xelatex -interaction=nonstopmode -halt-on-error $(TEX)

watch:
	latexmk -xelatex -pvc -interaction=nonstopmode $(TEX)

clean:
	latexmk -C
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.fls *.fdb_latexmk
