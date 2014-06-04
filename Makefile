.SUFFIXES: .tex .pdf .aux

cv.pdf: cv.tex friggeri-cv.cls cv.aux
	xelatex $<
	biber $(basename $@)
	(sleep 1 && touch cv.aux) &

%.aux:
	touch $@

clean:
	rm -f *.aux *.log *.bbl *.bcf *.blg *.out *.xml *.pdf
