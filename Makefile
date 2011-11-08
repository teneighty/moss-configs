EXT=mba
PKGS=cherries goldgrey ebupof

all: pkgs

pkgs: ${PKGS}
	@ for i in $^  ; do \
		zip -r $$i.${EXT} $$i -x */ss.png; \
	done

clean:
	rm -rf *.${EXT}

.PHONY: pkgs
.PHONY: clean
