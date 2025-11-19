uint64_t SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void *__return_ptr, __int128 *)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v199 = a4;
  v200 = a5;
  v208 = a6;
  v7 = *a3;
  v9 = a3[1];
  v8 = a3[2];
  v11 = a3[3];
  v10 = a3[4];
  v12 = a3[5];
  v13 = a3[6];
  v14 = a3[7];
  v15 = a3[8];
  v16 = a3[9];
  v17 = a3[10];
  v224 = v12;
  v251 = v16;
  v252 = v14;
  v248 = v10;
  v249 = v11;
  if (v10)
  {
    v18 = v15;
    v19 = v7;
    v20 = v8;
    specialized Graph.Node<>.input(named:)(a1, a2, v7, v8, v312);
    v230 = v312[1];
    v231 = v312[0];
    v21 = v312[3];
    v228 = v312[4];
    v229 = v312[2];
    v227 = v313;
    v22 = a3[8];
    v233 = a3[10];
    v234 = v22;
    v242 = *(a3 + 72);
    v23 = a3[6];
    v235 = a3[7];
    v236 = v23;
    v24 = *a3;
    v240 = a3[1];
    v241 = v24;
    v25 = a3[2];
    v238 = a3[3];
    v239 = v25;
    v12 = a3[5];
    v237 = a3[4];
  }

  else
  {
    v230 = 0;
    v231 = 0;
    v228 = 0;
    v229 = 0;
    v21 = 0;
    v227 = 0;
    v237 = 0;
    v238 = v11;
    v20 = v8;
    v239 = v8;
    v240 = v9;
    v19 = v7;
    v241 = v7;
    v235 = v14;
    v236 = v13;
    v242 = v16;
    v18 = v15;
    v233 = v17;
    v234 = v15;
  }

  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v311);
  v207 = a3;
  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v311);
  v202 = 0;
  v222 = MEMORY[0x277D84F90];
  v206 = v12;
  v232 = v12;
  v26 = v224;
  v28 = v251;
  v27 = v252;
  v29 = v18;
  v30 = v20;
  v31 = v19;
  v32 = v21;
  v33 = v248;
  v34 = v249;
  while (1)
  {
    *&v305 = v241;
    *(&v305 + 1) = v240;
    *&v306 = v239;
    *(&v306 + 1) = v238;
    *&v307 = v237;
    *(&v307 + 1) = v232;
    *&v308 = v236;
    *(&v308 + 1) = v235;
    *&v309 = v234;
    BYTE8(v309) = v242 & 1;
    v310 = v233;
    v35 = v31;
    v311[0] = v31;
    v311[1] = v9;
    v311[2] = v30;
    v311[3] = v34;
    v311[4] = v33;
    v311[5] = v26;
    v311[6] = v13;
    v251 = v28;
    v252 = v27;
    v311[7] = v27;
    v246 = v29;
    v247 = v13;
    v311[8] = v29;
    v311[9] = v28;
    v311[10] = v17;
    v250 = v17;
    if (!v33)
    {
      v166 = v26;
      v167 = v30;

      v30 = v167;
      v26 = v166;
      goto LABEL_80;
    }

    if (!v32)
    {
      goto LABEL_80;
    }

    v36 = v30;
    v328[0] = v231;
    v328[1] = v230;
    v328[2] = v229;
    v328[3] = v32;
    v328[4] = v228;
    v329 = v227 & 1;
    v37 = v243[1];
    if (!*(v37 + 16))
    {
      v168 = v26;

      v26 = v168;
      goto LABEL_79;
    }

    v38 = v32;
    v39 = v26;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if ((v41 & 1) == 0)
    {
      break;
    }

    v248 = v33;
    v249 = v34;
    *&v244 = v35;
    *(&v244 + 1) = v9;
    v245 = v38;
    v42 = (*(v37 + 56) + 48 * v40);
    v43 = *v42;
    v45 = v42[2];
    v44 = v42[3];
    v47 = v42[4];
    v46 = v42[5];

    outlined init with copy of [Input](v311, &v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    specialized Graph.edge(to:)(v328, v46, &v289);
    v267 = v289;
    v268 = v290;
    v269 = v291;
    v270 = v292;
    v271 = v293;
    v272 = v294;
    v273 = v291;
    v274 = v292;
    v275 = v293;
    v276 = v294;
    if (!*(&v290 + 1))
    {
      goto LABEL_6;
    }

    if ((v289 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v289 >= *(v46 + 16))
    {
      goto LABEL_84;
    }

    v48 = (v46 + 88 * v289);
    v49 = v48[8];
    if (!v49)
    {
      outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_6:

      outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v295 = v244;
      v296 = v36;
      goto LABEL_7;
    }

    v225 = v44;
    v226 = v36;
    v217 = *(&v290 + 1);
    v50 = v243[2];
    if (!*(v50 + 16))
    {
      goto LABEL_28;
    }

    v52 = v48[4];
    v51 = v48[5];
    v54 = v48[6];
    v53 = v48[7];
    v218 = v54;
    v214 = v53;
    v223 = v49;
    v211 = v290;
    v209 = v289;
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v52);
    if (v56)
    {
      v57 = *(*(v50 + 56) + 8 * v55);
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      v58 = *v243;
      v59 = *(*v243 + 16);
      if (v57 >= v59)
      {
        goto LABEL_86;
      }

      v203 = v47;
      v204 = v45;
      v198 = v59;
      v197 = v58 + 32;
      v60 = v58 + 32 + 88 * v57;
      v61 = *(v60 + 16);
      v283 = *v60;
      v284 = v61;
      v62 = *(v60 + 80);
      v64 = *(v60 + 48);
      v63 = *(v60 + 64);
      v285 = *(v60 + 32);
      v286 = v64;
      v287 = v63;
      v288 = v62;
      v220 = v283;
      v221 = *(&v284 + 1);
      v219 = v284;
      v65 = v285;
      v212 = *(&v64 + 1);
      v213 = v64;
      v215 = *(&v285 + 1);
      v216 = v63;
      v66 = v51;
      v67 = *(&v63 + 1);
      v289 = v244;
      *&v290 = v226;
      *(&v290 + 1) = v249;
      *&v291 = v248;
      *(&v291 + 1) = v39;
      *&v292 = v247;
      *(&v292 + 1) = v252;
      *&v293 = v246;
      *(&v293 + 1) = v251;
      v294 = v250;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v52, v66, v218, v214, v223);
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v283, &v277);
      outlined destroy of [Input](&v289, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v68 = v67;
      v69 = *(&v220 + 1);
      v295 = v220;
      v296 = v219;
      v297 = v221;
      v298 = v65;
      v299 = v215;
      v300 = v213;
      v301 = v212;
      v302 = v216;
      v303 = v68;
      v17 = v62;
      v304 = v62;
      v266 = v68;
      v210 = v65;
      v205 = v68;
      if (v65)
      {
        v252 = v50;
        outlined init with copy of [Input](&v295, &v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        v264[2] = v269;
        v264[3] = v270;
        v264[4] = v271;
        v265 = v272;
        v264[0] = v267;
        v264[1] = v268;
        outlined init with copy of [Input](v264, &v277, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v201 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v222 + 2) + 1, 1, v222);
        }

        v71 = v221;
        v73 = *(v222 + 2);
        v72 = *(v222 + 3);
        if (v73 >= v72 >> 1)
        {
          v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v222);
        }

        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v305);
        v263 = v276;
        v261 = v274;
        v262 = v275;
        v260 = v273;
        v74 = v222;
        *(v222 + 2) = v73 + 1;
        v75 = &v74[104 * v73];
        v76 = v211;
        *(v75 + 2) = v209;
        *(v75 + 3) = v76;
        v78 = v261;
        v77 = v262;
        v79 = v263;
        *(v75 + 4) = v260;
        *(v75 + 5) = v78;
        v75[112] = v79;
        *(v75 + 6) = v77;
        v80 = v250;
        *(v75 + 15) = v201;
        *(v75 + 16) = v80;
        v325 = v220;
        v81 = v219;
        *&v326 = v219;
        *(&v326 + 1) = v71;
        v327 = v210;
        if (v219 >> 62 == 1)
        {
          v82 = v219 & 0x3FFFFFFFFFFFFFFFLL;

          v251 = *((v81 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v83 = *((v81 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v84 = *((v81 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v85 = *((v81 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v86 = *(v82 + 56);
          v87 = *(v82 + 32);

          specialized SGDataTypeGraph.resultNode.getter(v86, v314);
          v88 = v315;
          if (v315)
          {
            v89 = v314[3];
            specialized Graph.Node<>.input(named:)(v211, v217, v314[0], v314[2], v316);
            v230 = v316[1];
            v231 = v316[0];
            v245 = v316[3];
            v228 = v316[4];
            v229 = v316[2];
            v227 = v317;
            outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            v324[0] = v89;
            v324[1] = v88;
            outlined destroy of String(v324);
          }

          else
          {
            outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v230 = 0;
            v231 = 0;
            v228 = 0;
            v229 = 0;
            v245 = 0;
            v227 = 0;
          }

          v102 = v252;
          specialized SGDataTypeGraph.resultNode.getter(v86, v318);
          if (!v318[4])
          {

LABEL_61:

            outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v244 = 0uLL;
            v226 = 0;
            v248 = 0;
            v249 = 0;
            v224 = 0;
            v246 = 0;
            v247 = 0;
            v251 = 0;
            v252 = 0;
            v250 = 0;
            v115 = v201;
            v116 = v216;
            v117 = v212;
            v118 = v213;
            goto LABEL_63;
          }

          v103 = v318[0];

          if (!*(v102 + 16))
          {
            outlined destroy of [Input](v318, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            goto LABEL_61;
          }

          v104 = specialized __RawDictionaryStorage.find<A>(_:)(v251, v103);
          v105 = v201;
          v106 = v216;
          v107 = v213;
          if (v108)
          {
            v109 = *(*(v102 + 56) + 8 * v104);
            if (v109 >= v198)
            {
              goto LABEL_87;
            }

            v110 = (v197 + 88 * v109);
            v111 = v110[1];
            v277 = *v110;
            v278 = v111;
            v112 = v110[2];
            v113 = v110[3];
            v114 = v110[4];
            v282 = *(v110 + 10);
            v280 = v113;
            v281 = v114;
            v279 = v112;
            outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v277, &v254);
            outlined destroy of [Input](v318, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v244 = v277;
            v226 = v278;
            v248 = v279;
            v249 = *(&v278 + 1);
            v224 = *(&v279 + 1);
            v246 = v281;
            v247 = v280;
            v251 = *(&v281 + 1);
            v252 = *(&v280 + 1);
            v250 = v282;
            v115 = v105;
            v116 = v106;
            v117 = v212;
            v118 = v107;
          }

          else
          {
            v118 = v213;
            outlined destroy of [Input](v318, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v244 = 0uLL;
            v226 = 0;
            v248 = 0;
            v249 = 0;
            v224 = 0;
            v246 = 0;
            v247 = 0;
            v251 = 0;
            v252 = 0;
            v250 = 0;
            v115 = v105;
            v116 = v106;
            v117 = v212;
          }

LABEL_63:
          v138 = *(&v220 + 1);
          v139 = v220;
          v277 = v220;
          v140 = v219;
          *&v278 = v219;
          v141 = v221;
          *(&v278 + 1) = v221;
          v142 = v210;
          *&v279 = v210;
          v143 = v215;
          *(&v279 + 1) = v215;
          *&v280 = v118;
          *(&v280 + 1) = v117;
          *&v281 = v116;
          *(&v281 + 1) = v205;
          v282 = v115;
          v144 = v115;
          v145 = v117;
          outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v240 = v138;
          v241 = v139;
          v242 = v266;
          v238 = v141;
          v239 = v140;
          v236 = v118;
          v237 = v142;
          v232 = v143;
          v233 = v144;
          v234 = v216;
          v235 = v145;
          v32 = v245;
          v29 = v246;
          v34 = v249;
          v17 = v250;
          v9 = *(&v244 + 1);
          v31 = v244;
          v13 = v247;
          v33 = v248;
          v26 = v224;
          v28 = v251;
          v27 = v252;
          v30 = v226;
        }

        else
        {
          v92 = v219 >> 62;
          outlined init with copy of [Input](&v295, &v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v93 = v81 & 0x3FFFFFFFFFFFFFFFLL;

          specialized SGDataTypeGraph.argumentsNode.getter(v46, v319);
          v94 = v319[0];
          v95 = v319[1];
          v96 = v319[2];
          v97 = v319[3];
          v98 = v319[4];

          if (v98)
          {
            v99 = v96;
            v100 = v215;
            if (v220 != __PAIR128__(v95, v94) || (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v219, v99) & 1) == 0 || (v221 != v97 || v210 != v98) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              v101 = outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
              v81 = v219;
              goto LABEL_46;
            }

            if (v266)
            {
              v101 = outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
              v81 = v219;
              goto LABEL_46;
            }

            v153 = v197;
            outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v154 = v216;
            v155 = v201;
            v156 = v212;
            v157 = v213;
            if (v216 >= v198)
            {
              goto LABEL_88;
            }

            v158 = (v153 + 88 * v216);
            v159 = v158[1];
            v254 = *v158;
            v255 = v159;
            v160 = *(v158 + 10);
            v162 = v158[3];
            v161 = v158[4];
            v256 = v158[2];
            v257 = v162;
            v258 = v161;
            v259 = v160;
            *(&v244 + 1) = *(&v254 + 1);
            v163 = v254;
            v249 = *(&v255 + 1);
            v164 = v255;
            v250 = v160;
            v224 = *(&v256 + 1);
            v165 = v256;
            v246 = v161;
            v247 = v162;
            v251 = *(&v161 + 1);
            v252 = *(&v162 + 1);
            v277 = v220;
            *&v278 = v219;
            *(&v278 + 1) = v221;
            *&v279 = v210;
            *(&v279 + 1) = v100;
            *&v280 = v213;
            *(&v280 + 1) = v212;
            *&v281 = v216;
            *(&v281 + 1) = v205;
            v282 = v201;
            outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v254, &v253);
            outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v248 = v165;
            *&v244 = v163;
            v226 = v164;
            if (v165)
            {
              specialized Graph.Node<>.input(named:)(v211, v217, v163, v164, v320);
              v230 = v320[1];
              v231 = v320[0];
              v245 = v320[3];
              v228 = v320[4];
              v229 = v320[2];
              v227 = v321;

              outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            }

            else
            {

              outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
              outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v230 = 0;
              v231 = 0;
              v228 = 0;
              v229 = 0;
              v245 = 0;
              v227 = 0;
            }

            v242 = 0;
            v240 = *(&v220 + 1);
            v241 = v220;
            v238 = v221;
            v239 = v219;
            v236 = v157;
            v237 = v210;
            v232 = v100;
            v233 = v155;
            v234 = v154;
            v235 = v156;
            v9 = *(&v244 + 1);
            v32 = v245;
            v34 = v249;
            v17 = v250;
            v31 = v244;
            v13 = v247;
            v33 = v248;
            v26 = v224;
            v28 = v251;
            v27 = v252;
            v29 = v246;
            v30 = v226;
          }

          else
          {
            outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v220, *(&v220 + 1), v81, v221, v210);
            v101 = outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v94, v95, v96, v97, 0);
LABEL_46:
            v277 = v325;
            v278 = v326;
            *&v279 = v327;
            if (v92)
            {
              v119 = v201;
              v120 = v216;
              v121 = v212;
              v28 = v205;
              if (v92 != 1)
              {
                goto LABEL_52;
              }

              v122 = v93 + 40;
            }

            else
            {
              v122 = v81 + 32;
              v119 = v201;
              v120 = v216;
              v121 = v212;
              v28 = v205;
            }

            v123 = *(*v122 + 16);
LABEL_52:
            MEMORY[0x28223BE20](v101);
            v195 = &v277;
            v124 = v202;
            v126 = specialized Sequence.compactMap<A>(_:)(_s11ShaderGraph0B0V4NodeV6inputsSayAC5InputVyx_GGvgAISgSiXEfU_AA010SGDataTypeB0V11PersonalityV_TG5TA_0, v194, 0, v125);
            v202 = v124;
            v127 = *(v126 + 16);

            if (v127 != 1)
            {
              if (v127)
              {
                v199(v322, &v325);
                v230 = v322[1];
                v231 = v322[0];
                v132 = v322[3];
                v228 = v322[4];
                v229 = v322[2];
                v227 = v323;

                outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v32 = v132;
                v129 = *(&v220 + 1);
                v9 = *(&v220 + 1);
                v130 = v220;
                v31 = v220;
                v242 = v266;
              }

              else
              {

                outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v230 = 0;
                v231 = 0;
                v228 = 0;
                v229 = 0;
                v32 = 0;
                v227 = 0;
                v242 = v266;
                v129 = *(&v220 + 1);
                v9 = *(&v220 + 1);
                v130 = v220;
                v31 = v220;
              }

              v133 = v219;
              v134 = v221;
              v135 = v210;
              v33 = v210;
              v136 = v215;
              v26 = v215;
              v137 = v213;
              v27 = v121;
              v29 = v120;
              v30 = v219;
              goto LABEL_70;
            }

            v277 = v325;
            v278 = v326;
            *&v279 = v327;
            if (!v92)
            {
              v131 = v219 + 32;
              goto LABEL_65;
            }

            if (v92 == 1)
            {
              v131 = v93 + 40;
LABEL_65:
              v146 = *(*v131 + 16);
            }

            MEMORY[0x28223BE20](v128);
            v195 = &v277;
            v147 = v202;
            v149 = specialized Sequence.compactMap<A>(_:)(closure #1 in Graph.Node.inputs.getterspecialized partial apply, v194, 0, v148);
            v202 = v147;
            if (*(v149 + 16))
            {
              v150 = *(v149 + 32);
              v230 = *(v149 + 40);
              v231 = v150;
              v151 = *(v149 + 48);
              v152 = *(v149 + 56);
              v228 = *(v149 + 64);
              v229 = v151;
              v227 = *(v149 + 72);

              outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v32 = v152;
            }

            else
            {

              outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v230 = 0;
              v231 = 0;
              v228 = 0;
              v229 = 0;
              v32 = 0;
              v227 = 0;
            }

            v129 = *(&v220 + 1);
            v9 = *(&v220 + 1);
            v130 = v220;
            v31 = v220;
            v242 = v266;
            v133 = v219;
            v30 = v219;
            v134 = v221;
            v135 = v210;
            v33 = v210;
            v136 = v215;
            v26 = v215;
            v137 = v213;
            v27 = v121;
            v29 = v120;
            v28 = v205;
LABEL_70:
            v17 = v119;
            v240 = v129;
            v241 = v130;
            v238 = v134;
            v239 = v133;
            v236 = v137;
            v237 = v135;
            v232 = v136;
            v233 = v119;
            v234 = v120;
            v235 = v121;
            v13 = v137;
            v34 = v134;
          }
        }
      }

      else
      {
        v90 = v220;
        v91 = v219;

        outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

        outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
        v33 = 0;
        v31 = v90;
        v9 = v69;
        v30 = v91;
        v34 = v221;
        v26 = v215;
        v29 = v216;
        v27 = v212;
        v13 = v213;
        v28 = v205;
        v32 = v245;
      }
    }

    else
    {
LABEL_28:

      outlined destroy of [Input](v311, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      outlined destroy of [Input](&v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
      v295 = v244;
      v296 = v226;
LABEL_7:
      v297 = v249;
      v298 = v248;
      v299 = v39;
      v300 = v247;
      v301 = v252;
      v302 = v246;
      v303 = v251;
      v304 = v250;
      outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v31 = 0;
      v9 = 0;
      v30 = 0;
      v34 = 0;
      v33 = 0;
      v26 = 0;
      v13 = 0;
      v27 = 0;
      v29 = 0;
      v28 = 0;
      v17 = 0;
      v32 = v245;
    }
  }

  v26 = v39;
LABEL_79:
  v30 = v36;
LABEL_80:
  v224 = v26;
  v169 = v243[1];
  if (*(v169 + 16))
  {
    v170 = v33;
    v171 = v34;
    v172 = v30;
    v173 = specialized __RawDictionaryStorage.find<A>(_:)(v206);
    if (v174)
    {
      v175 = (*(v169 + 56) + 48 * v173);
      v176 = *v175;
      v248 = v175[1];
      v249 = v176;
      v177 = v175[2];
      v178 = v175[3];
      v179 = v175[4];
      v245 = v175[5];
      v180 = *(v207 + 3);
      v291 = *(v207 + 2);
      v292 = v180;
      v293 = *(v207 + 4);
      v294 = v207[10];
      v181 = *(v207 + 1);
      v289 = *v207;
      v290 = v181;
      v283 = v305;
      v284 = v306;
      v288 = v310;
      v286 = v308;
      v287 = v309;
      v285 = v307;
      *&v295 = v35;
      *(&v295 + 1) = v9;
      v296 = v172;
      v297 = v171;
      v298 = v170;
      v299 = v224;
      v300 = v247;
      v301 = v252;
      v302 = v246;
      v303 = v251;
      v304 = v250;
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(v207, &v277);

      v182 = v178;

      v183 = v245;

      result = outlined destroy of [Input](&v295, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v185 = v208;
      *v208 = v222;
      v186 = v292;
      *(v185 + 5) = v291;
      *(v185 + 7) = v186;
      *(v185 + 9) = v293;
      v185[11] = v294;
      v187 = v290;
      *(v185 + 1) = v289;
      *(v185 + 3) = v187;
      v188 = v284;
      *(v185 + 6) = v283;
      *(v185 + 7) = v188;
      v189 = v285;
      v190 = v287;
      v191 = v288;
      *(v185 + 9) = v286;
      *(v185 + 10) = v190;
      *(v185 + 8) = v189;
      v192 = v248;
      v193 = v249;
      v185[22] = v191;
      v185[23] = v193;
      v185[24] = v192;
      v185[25] = v177;
      v185[26] = v182;
      v185[27] = v179;
      v185[28] = v183;
      return result;
    }
  }

LABEL_89:
  v196 = 0;
  v195 = 191;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.hasValue.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v1 = v0[14];
    if (v1 >> 62)
    {
      LOBYTE(v1) = v1 >> 62 != 1;
    }

    else
    {
      v2 = v0[13];
      v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = *(v3 + 16);
      v5 = *(v3 + 24);
      v6 = v4 == 0x656D756772615F5FLL && v5 == 0xEB0000000073746ELL;
      if (v6 || (v7 = *(v3 + 16), v8 = *(v3 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        LOBYTE(v1) = v2 == v0[23];
      }

      else if (v4 == 0x746C757365725F5FLL && v5 == 0xE900000000000073)
      {
        LOBYTE(v1) = 0;
      }

      else
      {
        LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
      }
    }
  }

  return v1 & 1;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.constantBoolValue.getter()
{
  v1 = *(v0 + 112);
  if (v1 >> 62 == 2 && ((v2 = v1 & 0x3FFFFFFFFFFFFFFFLL, *(v2 + 16) == 1) ? (v3 = *(v2 + 96) == 0) : (v3 = 0), v3))
  {
    return *(v2 + 32) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.sourceNode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t Graph.Node<>.BOOLValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62 == 2 && ((v2 = v1 & 0x3FFFFFFFFFFFFFFFLL, *(v2 + 16) == 1) ? (v3 = *(v2 + 96) == 0) : (v3 = 0), v3))
  {
    return *(v2 + 32) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t Graph.Node<>.constantStringValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62 != 2)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (*(v2 + 16) != 11 || *(v2 + 96) != 6)
  {
    return 0;
  }

  v6 = *(v2 + 32);
  v5 = *(v2 + 40);

  return v6;
}

uint64_t Graph.Node<>.constantAssetValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62 != 2)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (*(v2 + 16) != 13 || *(v2 + 96) != 6)
  {
    return 0;
  }

  v6 = *(v2 + 32);
  v5 = *(v2 + 40);

  return v6;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.PathEdge.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  MEMORY[0x266771550](58, 0xE100000000000000);
  v7 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v7);

  MEMORY[0x266771550](91, 0xE100000000000000);
  v12 = v0[11];
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](0x203E2D205DLL, 0xE500000000000000);
  MEMORY[0x266771550](v4, v5);
  MEMORY[0x266771550](58, 0xE100000000000000);
  v9 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v9);

  MEMORY[0x266771550](91, 0xE100000000000000);
  v13 = v0[12];
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v10);

  MEMORY[0x266771550](93, 0xE100000000000000);
  return v2;
}

__n128 SGDataTypeGraph.TopologicalSort.Path.PathEdge.init(edge:fromElement:toElement:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v8) = *(a1 + 80);
  result = a1[2];
  v5 = a1[4];
  v6 = *a1;
  v7 = a1[1];
  *(a4 + 48) = a1[3];
  *(a4 + 64) = v5;
  *(a4 + 16) = v7;
  *(a4 + 32) = result;
  *a4 = v6;
  *(a4 + 80) = v8;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  return result;
}

BOOL SGDataTypeGraph.TopologicalSort.Path.isMaterialUniform.getter()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[28];

  specialized SGDataTypeGraph.argumentsNode.getter(v6, &v14);
  v8 = v14;
  v7 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18;
  if (v18)
  {
    v12 = v2 == v14 && v1 == v15 && (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v3, v16) & 1) != 0 && (v4 == v10 && v11 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  else
  {
    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v2, v1, v3, v4, v5);
    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v8, v7, v9, v10, 0);
    return 0;
  }

  return v12;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 0x706D652068746150;
  }

  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[17];

  *&v29[0] = v4;
  *(&v29[0] + 1) = v3;
  MEMORY[0x266771550](91, 0xE100000000000000);
  *&v27 = v5;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](0x203E2D205DLL, 0xE500000000000000);
  v7 = v0[6];
  MEMORY[0x266771550](v0[4], v0[5]);
  MEMORY[0x266771550](91, 0xE100000000000000);
  *&v27 = v7;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](0x203A3A205DLL, 0xE500000000000000);
  v9 = v29[0];
  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v10 = v28;
  v11 = (v1 + 32);
  do
  {
    v12 = *v11;
    v13 = v11[2];
    v29[1] = v11[1];
    v29[2] = v13;
    v29[0] = v12;
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v30 = *(v11 + 12);
    v29[4] = v15;
    v29[5] = v16;
    v29[3] = v14;
    outlined init with copy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(v29, &v27);
    v17 = SGDataTypeGraph.TopologicalSort.Path.PathEdge.debugDescription.getter();
    v19 = v18;
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(v29);
    v28 = v10;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v10 = v28;
    }

    *(v10 + 16) = v21 + 1;
    v22 = v10 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v11 = (v11 + 104);
    --v2;
  }

  while (v2);
  *&v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  v27 = v9;

  MEMORY[0x266771550](v23, v25);

  return v27;
}

double closure #1 in default argument 2 of SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double specialized closure #1 in Graph.Node.inputs.getter@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized closure #1 in Graph.Node.inputs.getter(*a1, *a2, *(a2 + 16), &v7);
  if (!v3)
  {
    v6 = v8[0];
    *a3 = v7;
    a3[1] = v6;
    result = *(v8 + 9);
    *(a3 + 25) = *(v8 + 9);
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path.PathEdge(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path.PathEdge(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized closure #1 in Graph.Node.inputs.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = a3 >> 62;
  if (a3 >> 62)
  {
    if (v4 != 1)
    {
LABEL_10:
      a2 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_13:
      *a4 = a2;
      *(a4 + 8) = v9;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      return result;
    }

    v5 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = 40;
  }

  else
  {
    v6 = 32;
    v5 = a3;
  }

  if (*(*(v5 + v6) + 16) <= result)
  {
    goto LABEL_10;
  }

  v8 = a4;
  if (!v4)
  {
    a4 = *(a3 + 32);
    if (*(a4 + 16) <= result)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_12:
    v14 = a4 + 32 * result;
    v10 = *(v14 + 32);
    v11 = *(v14 + 40);
    v12 = *(v14 + 48);
    v13 = *(v14 + 56);
    v15 = result;

    v9 = v15;
    a4 = v8;
    goto LABEL_13;
  }

  a4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  if (*(a4 + 16) > result)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v51 = v3 & 0xC000000000000001;
    v49 = v3 + 32;
    v45 = a2;
    v46 = i;
    v47 = v3;
    while (1)
    {
      if (v51)
      {
        v6 = MEMORY[0x266772030](v5, v3);
      }

      else
      {
        if (v5 >= *(v50 + 16))
        {
          goto LABEL_57;
        }

        v6 = *(v49 + 8 * v5);
      }

      v53 = v6;
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

      v9 = *a2;
      v8 = *(a2 + 8);
      v10 = (v8 + 32);
      if (*a2)
      {
        v12 = (v9 + 16);
        v11 = *(v9 + 16);
        v13 = *a2;

        v14 = NSObject._rawHashValue(seed:)(v11);
        v15 = 1 << *(v9 + 16);
        v7 = __OFSUB__(v15, 1);
        v16 = v15 - 1;
        if (v7)
        {
          goto LABEL_59;
        }

        v17 = v16 & v14;
        v18 = _HashTable.UnsafeHandle._startIterator(bucket:)(v16 & v14, (v9 + 16), v9 + 32);
        if (v18)
        {
          v3 = v19;
          v21 = v20;
          v48 = v5;
          v22 = -1 << *(v9 + 16);
          v23 = (v22 ^ ~v18) + (*(v9 + 24) >> 6);
          if (v23 >= ~v22)
          {
            v24 = ~v22;
          }

          else
          {
            v24 = 0;
          }

          v25 = v23 - v24;
          type metadata accessor for SGEdge();
          v26 = v10[v25];
          a2 = static NSObject.== infix(_:_:)();

          if ((a2 & 1) == 0)
          {
            v52 = 0;
            do
            {
              ++v17;
              v27 = *v12 & 0x3FLL;
              v28 = 1 << *v12;
              if (v17 == v28)
              {
                if (v52)
                {
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return;
                }

                v17 = 0;
                v52 = 1;
              }

              if (v21 >= v27)
              {
                v36 = (v28 - 1) & v3;
                v3 >>= v27;
                v21 -= v27;
                if (!v36)
                {
LABEL_50:
                  a2 = v45;
                  v5 = v48;
                  goto LABEL_51;
                }
              }

              else
              {
                v29 = (v17 * v27) >> 6;
                if (v21)
                {
                  if (__OFADD__(v27 << v27, 64))
                  {
                    goto LABEL_58;
                  }

                  v30 = (v27 << v27) + 126;
                  if ((v27 << v27) + 64 >= 1)
                  {
                    v30 = (v27 << v27) + 63;
                  }

                  if (v29 + 1 == v30 >> 6)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    ++v29;
                  }
                }

                v31 = v27 - v21;
                if (__OFSUB__(v27, v21))
                {
                  __break(1u);
LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

                v32 = v29 == 2 && v27 == 5;
                v33 = 64;
                if (v32)
                {
                  v33 = 32;
                }

                v7 = __OFSUB__(v33, v31);
                v34 = v33 - v31;
                if (v7)
                {
                  goto LABEL_55;
                }

                v35 = *(v9 + 32 + 8 * v29);
                v36 = ((v35 << v21) | v3) & (v28 - 1);
                v3 = v35 >> v31;
                v21 = v34;
                if (!v36)
                {
                  goto LABEL_50;
                }
              }

              v37 = -1 << v27;
              v38 = (v37 ^ ~v36) + (*(v9 + 24) >> 6);
              if (v38 >= ~v37)
              {
                v39 = ~v37;
              }

              else
              {
                v39 = 0;
              }

              v40 = v10[v38 - v39];
              a2 = static NSObject.== infix(_:_:)();
            }

            while ((a2 & 1) == 0);
          }

          a2 = v45;
          i = v46;
          v3 = v47;
          v5 = v48;
          goto LABEL_5;
        }

LABEL_51:

        i = v46;
        v3 = v47;
      }

      else
      {
        v41 = v5;
        v42 = *(v8 + 16);
        if (v42)
        {
          type metadata accessor for SGEdge();
          while (1)
          {
            v43 = *v10;
            v44 = static NSObject.== infix(_:_:)();

            if (v44)
            {
              break;
            }

            ++v10;
            if (!--v42)
            {
              goto LABEL_48;
            }
          }

          v5 = v41;
          goto LABEL_5;
        }

LABEL_48:
        v17 = 0;
        v5 = v41;
      }

      specialized OrderedSet._appendNew(_:in:)(v53, v17);

LABEL_5:
      if (v5 == i)
      {
        return;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_60;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v36 = isUniquelyReferenced_nonNull_bridgeObject;
    v37 = v1;
    v38 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    do
    {
      if (v40)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x266772030](v3, v36);
      }

      else
      {
        if (v3 >= *(v39 + 16))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v38 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v35 = isUniquelyReferenced_nonNull_bridgeObject;
        v1 = __CocoaSet.count.getter();
        isUniquelyReferenced_nonNull_bridgeObject = v35;
        goto LABEL_3;
      }

      v42 = v7;
      v8 = (isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR___SGOutput__edges);
      swift_beginAccess();
      v9 = *v8;
      v10 = v8[1];
      v11 = MEMORY[0x277D84F90];
      v44[0] = MEMORY[0x277D84F90];
      v12 = *(v10 + 16);
      if (v12)
      {
        v43 = v2;
        v13 = v10 + 32;

        v14 = 0;
        while (v14 < *(v10 + 16))
        {
          outlined init with copy of WeakBox<SGEdge>(v13, v45);
          Strong = swift_unknownObjectWeakLoadStrong();
          isUniquelyReferenced_nonNull_bridgeObject = outlined destroy of [Input](v45, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
          if (Strong)
          {
            MEMORY[0x266771770](isUniquelyReferenced_nonNull_bridgeObject);
            if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            isUniquelyReferenced_nonNull_bridgeObject = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v11 = v44[0];
          }

          ++v14;
          v13 += 8;
          if (v12 == v14)
          {

            v2 = v43;
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_21:
      v16 = v11 >> 62;
      if (v11 >> 62)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v2 >> 62;
      if (v2 >> 62)
      {
        v33 = __CocoaSet.count.getter();
        v20 = v33 + v17;
        if (__OFADD__(v33, v17))
        {
LABEL_51:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v17;
        if (__OFADD__(v19, v17))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v18)
        {
          goto LABEL_32;
        }

        v21 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v18)
        {
LABEL_32:
          __CocoaSet.count.getter();
          goto LABEL_33;
        }

        v21 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = *(v21 + 16);
LABEL_33:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = isUniquelyReferenced_nonNull_bridgeObject;
      v21 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v16)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v25 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          v4 = v37;
          v3 = v42;
          if (v17 > 0)
          {
            goto LABEL_56;
          }

          continue;
        }
      }

      else
      {
        v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_5;
        }
      }

      if (((v24 >> 1) - v23) < v17)
      {
        goto LABEL_57;
      }

      v41 = v17;
      v26 = v21 + 8 * v23 + 32;
      if (v16)
      {
        if (v25 < 1)
        {
          goto LABEL_59;
        }

        lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [SGEdge] and conformance [A], &_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
        for (i = 0; i != v25; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
          v28 = specialized protocol witness for Collection.subscript.read in conformance [A](v44, i, v11);
          v30 = *v29;
          (v28)(v44, 0);
          *(v26 + 8 * i) = v30;
        }
      }

      else
      {
        type metadata accessor for SGEdge();
        swift_arrayInitWithCopy();
      }

      v3 = v42;
      v4 = v37;
      if (v41 >= 1)
      {
        v31 = *(v21 + 16);
        v6 = __OFADD__(v31, v41);
        v32 = v31 + v41;
        if (v6)
        {
          goto LABEL_58;
        }

        *(v21 + 16) = v32;
      }
    }

    while (v3 != v4);
  }

  return v2;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

void SGGraph.remove(edge:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR___SGEdge_to);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = *(a1 + OBJC_IVAR___SGEdge_from);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized OrderedSet.remove(_:)(v14, v13);
  swift_endAccess();
  outlined destroy of [Input](v14, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  outlined destroy of [Input](v13, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
  v6 = OBJC_IVAR___SGGraph_edges;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = specialized Collection<>.firstIndex(of:)(a1, v7);
  v10 = v9;

  if (v10)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v11 = 0xD000000000000032;
    *(v11 + 8) = 0x8000000265F33020;
    *(v11 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v12 = specialized Array.remove(at:)(v8, specialized _ArrayBuffer._consumeAndCreateNew());
    swift_endAccess();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.insert(_:)(Swift::OpaquePointer_optional a1)
{
  if (!a1.value._rawValue)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v17 = swift_allocError();
    *v18 = xmmword_265F26E20;
    *(v18 + 16) = 1;
    swift_willThrow();
LABEL_32:
    type metadata accessor for SGError();
    v41 = v17;
    SGError.__allocating_init(_:)(v17);
    swift_willThrow();

    return;
  }

  rawValue = a1.value._rawValue;
  v3 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v75 = v1;
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x277D84F90];
    v70 = rawValue;
    if (i)
    {
      v76 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        goto LABEL_73;
      }

      v7 = 0;
      v8 = v76;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x266772030](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = &v9[OBJC_IVAR___SGNode_name];
        swift_beginAccess();
        v13 = *v11;
        v12 = *(v11 + 1);

        v76 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v8 = v76;
        }

        ++v7;
        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
      }

      while (i != v7);

      rawValue = v70;
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v8);

    v77 = v19;
    v76 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v20 = v76;
    v22 = *(v76 + 16);
    v21 = *(v76 + 24);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v20 = v76;
      v21 = *(v76 + 24);
      v23 = v21 >> 1;
    }

    *(v20 + 16) = v24;
    v25 = v20 + 16 * v22;
    *(v25 + 32) = 0x656D756772615F5FLL;
    *(v25 + 40) = 0xEB0000000073746ELL;
    v26 = v22 + 2;
    if (v23 <= v24)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v26, 1);
      v20 = v76;
    }

    *(v20 + 16) = v26;
    v27 = v20 + 16 * v24;
    *(v27 + 32) = 0x746C757365725F5FLL;
    *(v27 + 40) = 0xE900000000000073;
    v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

    specialized Set.formUnion<A>(_:)(v28);
    v71 = rawValue >> 62;
    if (rawValue >> 62)
    {
      break;
    }

    v29 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_37;
    }

LABEL_22:
    v30 = 0;
    v73 = rawValue & 0xFFFFFFFFFFFFFF8;
    v74 = rawValue & 0xC000000000000001;
    while (1)
    {
      if (v74)
      {
        v31 = MEMORY[0x266772030](v30, rawValue);
      }

      else
      {
        if (v30 >= *(v73 + 16))
        {
          goto LABEL_34;
        }

        v31 = *(rawValue + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v4 = &v31[OBJC_IVAR___SGNode_name];
      v35 = *&v31[OBJC_IVAR___SGNode_name];
      v34 = *&v31[OBJC_IVAR___SGNode_name + 8];
      v36 = v77;

      v37 = specialized Set.contains(_:)(v35, v34, v36);

      if (v37)
      {

        v39 = *v4;
        v38 = *(v4 + 8);
        lazy protocol witness table accessor for type APIError and conformance APIError();
        v17 = swift_allocError();
        *v40 = v39;
        *(v40 + 8) = v38;
        *(v40 + 16) = 9;
        swift_willThrow();

        goto LABEL_32;
      }

      specialized Set._Variant.insert(_:)(&v76, v35, v34);

      ++v30;
      rawValue = v70;
      if (v33 == v29)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v29 = __CocoaSet.count.getter();
  if (v29)
  {
    goto LABEL_22;
  }

LABEL_37:
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v42);
  swift_endAccess();
  if (v71)
  {
    v43 = __CocoaSet.count.getter();
    if (!v43)
    {
LABEL_68:

      return;
    }
  }

  else
  {
    v43 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_68;
    }
  }

  v44 = 0;
  v45 = (v75 + OBJC_IVAR___SGGraph_nodeMap);
  v72 = v43;
  while (2)
  {
    if ((v70 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x266772030](v44, v70);
    }

    else
    {
      if (v44 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v50 = v70[v44 + 4];
    }

    v51 = v50;
    if (!__OFADD__(v44++, 1))
    {
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v53 = *&v51[OBJC_IVAR___SGNode_name];
      v54 = *&v51[OBJC_IVAR___SGNode_name + 8];
      swift_beginAccess();
      v55 = *v45;
      v56 = v45[1];
      v57 = *(v56 + 16);
      if (*v45)
      {
        v58 = v51;

        v59 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v53, v54, v56 + 32, v57, (v55 + 16), v55 + 32);
        v61 = v60;
        v47 = v62;

        if ((v61 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_43:
        specialized OrderedSet._appendNew(_:in:)(v53, v54, v47);
        v48 = v51;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v49 = *(v45[2] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
        if (!v57)
        {
LABEL_42:
          v46 = v51;
          v47 = 0;
          goto LABEL_43;
        }

        v59 = 0;
        v63 = (v56 + 40);
        while (1)
        {
          v64 = *(v63 - 1) == v53 && *v63 == v54;
          if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v59;
          v63 += 2;
          if (v57 == v59)
          {
            goto LABEL_42;
          }
        }

        v65 = v51;
LABEL_62:
        v66 = v45[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[2] = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v66);
          v45[2] = v66;
        }

        if ((v59 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (v59 >= *(v66 + 16))
        {
          goto LABEL_72;
        }

        v68 = v66 + 8 * v59;
        v69 = *(v68 + 32);
        *(v68 + 32) = v51;

        specialized ContiguousArray._endMutation()();
      }

      swift_endAccess();

      if (v44 == v72)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void SGGraph.connect(_:to:)(char *a1, char *a2)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    v22 = xmmword_265F26E40;
LABEL_11:
    *v21 = v22;
    *(v21 + 16) = 1;
    swift_willThrow();
    return;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    v22 = xmmword_265F26E30;
    goto LABEL_11;
  }

  v5 = &a1[OBJC_IVAR___SGOutput_attachment];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = &a2[OBJC_IVAR___SGInput_attachment];
  swift_beginAccess();
  v9 = *(v8 + 1);
  if (!v6)
  {
    if (!v9)
    {
      v42 = *&a2[OBJC_IVAR___SGInput_name];
      v43 = *&a2[OBJC_IVAR___SGInput_name + 8];

      MEMORY[0x266771550](8236, 0xE200000000000000);
      MEMORY[0x266771550](*&a1[OBJC_IVAR___SGOutput_name], *&a1[OBJC_IVAR___SGOutput_name + 8]);
      lazy protocol witness table accessor for type APIError and conformance APIError();
      v19 = swift_allocError();
      *v31 = v42;
      *(v31 + 8) = v43;
      v32 = 5;
      goto LABEL_25;
    }

    v24 = *&a1[OBJC_IVAR___SGOutput_name];
    v23 = *&a1[OBJC_IVAR___SGOutput_name + 8];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v25 = v24;
    *(v25 + 8) = v23;
    v26 = 6;
LABEL_15:
    *(v25 + 16) = v26;
    swift_willThrow();

LABEL_26:
    type metadata accessor for SGError();
    v38 = v19;
    SGError.__allocating_init(_:)(v19);
    swift_willThrow();

    return;
  }

  if (!v9)
  {
    v28 = *&a2[OBJC_IVAR___SGInput_name];
    v27 = *&a2[OBJC_IVAR___SGInput_name + 8];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v25 = v28;
    *(v25 + 8) = v27;
    v26 = 7;
    goto LABEL_15;
  }

  v10 = *v8;
  swift_bridgeObjectRetain_n();

  v11 = SGGraph.node(named:)(v7, v6);

  v40 = v2;
  v12 = SGGraph.node(named:)(v10, v9);

  v41 = v11;
  if (!v11)
  {
    if (v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_265F1F670;
      *(v29 + 32) = v7;
      *(v29 + 40) = v6;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      v19 = swift_allocError();
      *v30 = v29;
      *(v30 + 8) = 0;
      *(v30 + 16) = 8;
      swift_willThrow();

      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_265F21D90;
    *(v37 + 32) = v10;
    *(v37 + 40) = v9;
    *(v37 + 48) = v7;
    *(v37 + 56) = v6;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v31 = v37;
    *(v31 + 8) = 0;
    v32 = 8;
LABEL_25:
    *(v31 + 16) = v32;
    swift_willThrow();
    goto LABEL_26;
  }

  if (!v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_265F1F670;
    *(v33 + 32) = v10;
    *(v33 + 40) = v9;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v34 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 8;
    swift_willThrow();
    goto LABEL_20;
  }

  v13 = v12;

  v14 = type metadata accessor for SGEdge();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___SGEdge_from] = a1;
  *&v15[OBJC_IVAR___SGEdge_to] = a2;
  v44.receiver = v15;
  v44.super_class = v14;
  v16 = a2;
  a1;
  v17 = objc_msgSendSuper2(&v44, sel_init);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 24;
    swift_willThrow();

LABEL_20:
    goto LABEL_26;
  }

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized OrderedSet._append(_:)(v45);
  swift_endAccess();
  outlined destroy of [Input](v45, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  v35 = OBJC_IVAR___SGGraph_edges;
  swift_beginAccess();
  v36 = v17;
  MEMORY[0x266771770]();
  if (*((*(v40 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v40 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*(v40 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t SGGraph.node(containing:)(uint64_t a1)
{
  return SGGraph.node(containing:)(a1, &OBJC_IVAR___SGOutput_attachment);
}

{
  return SGGraph.node(containing:)(a1, &OBJC_IVAR___SGInput_attachment);
}

uint64_t SGGraph.topologicalSort()@<X0>(uint64_t a1@<X8>)
{
  v45 = MEMORY[0x277D84F90];
  specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(*(v1 + OBJC_IVAR___SGGraph_resultsNode), 1, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #1 in SGGraph.topologicalSort());
  if (v2)
  {
  }

  v5 = v45;
  v6 = *(v45 + 2);
  if (!v6)
  {
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v19 = 6;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x8000000000000000;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0;
    swift_willThrow();
  }

  v43 = a1;
  v7 = &v45[40 * v6];
  v8 = *(v7 - 1);
  v9 = *v7;
  v41 = *(v7 + 2);
  v42 = *(v7 + 1);
  v40 = v7[24];
  v10 = v42;

  v39 = v8;
  v38 = v9;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
LABEL_5:
  v13 = 40 * v11 + 32;
  while (v6 != v11)
  {
    if (v11 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_35;
    }

    v14 = *&v5[v13];
    ++v11;
    v13 += 40;
    if ((*(v14 + OBJC_IVAR___SGNode_data + 80) & 0xC0) == 0x40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[16 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v11 - 1;
      goto LABEL_5;
    }
  }

  if (*(v12 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSiGMd, &_ss18_DictionaryStorageCySOSiGMR);
    v18 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v44 = v18;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v12, 1, &v44);

  v20 = v44;
  v21 = *(v5 + 2);
  v22 = v5;
  if (!v21)
  {
LABEL_33:

    *v43 = v22;
    *(v43 + 8) = v39;
    *(v43 + 16) = v38;
    *(v43 + 24) = v42;
    *(v43 + 32) = v41;
    *(v43 + 40) = v40;
    return result;
  }

  v23 = 0;
  v22 = v5;
LABEL_20:
  v37 = v22;
  v24 = 40 * v23 + 64;
  while (v23 < *(v5 + 2))
  {
    v25 = &v5[v24];
    v26 = *&v5[v24 - 16];
    if (v26)
    {
      if (*(v20 + 16))
      {
        v27 = *(v25 - 4);
        v28 = *(v25 - 3);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(*&v5[v24 - 16]);
        if (v30)
        {
          v35 = *(*(v20 + 56) + 8 * v29);
          v36 = v27;
          v34 = v28;
          v31 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
          }

          if (v23 >= *(v37 + 2))
          {
            goto LABEL_36;
          }

          v32 = &v37[v24];
          *(v32 - 1) = v35;
          *v32 = 0;

          v45 = v37;
          v33 = v21 - 1 == v23++;
          v22 = v37;
          if (v33)
          {
            goto LABEL_33;
          }

          goto LABEL_20;
        }
      }
    }

    ++v23;
    v24 += 40;
    if (v21 == v23)
    {
      v22 = v37;
      goto LABEL_33;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t key path getter for SGInput.edge : SGInput@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.collapseConstantAndPassthroughNodes()()
{
  SGGraph.topologicalSort()(v197);
  if (v0)
  {
    return;
  }

  v2 = v197[0];
  v1 = v197[1];
  v202 = v197[0];
  v3 = v197[3];

  v201 = v3;
  outlined destroy of [Input](&v201, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
  v4 = *(v2 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v128 = v2 + 8;
  v5 = MEMORY[0x277D84F90];
  v134 = v2;
  do
  {
    v130 = v5;
    v6 = v128 + 40 * v4--;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_17:
        v5 = v130;
        goto LABEL_18;
      }

      v7 = *(v6 - 16);
      v8 = &v7[OBJC_IVAR___SGNode_data];
      v9 = v7[OBJC_IVAR___SGNode_data + 80];
      if (v9 <= 0x3F)
      {
        break;
      }

LABEL_5:
      --v4;
      v6 -= 40;
      if (v4 == -1)
      {
        goto LABEL_17;
      }
    }

    v146 = *(v6 + 16);
    v177 = *(v6 - 8);
    v11 = *(v8 + 8);
    v10 = *(v8 + 9);
    v187 = *(v8 + 7);
    v183 = *(v8 + 6);
    v161 = *(v8 + 5);
    v157 = *(v8 + 4);
    v12 = *(v8 + 2);
    v154 = *(v8 + 3);
    v14 = *v8;
    v13 = *(v8 + 1);
    v138 = *v6;
    v142 = *(v6 + 8);
    v150 = *v6;
    v173 = v7;
    v178 = v177;
    outlined copy of NodeData(v14, v13, v12, v154, v157, v161, v183, v187, v11, v10, v9);

    outlined copy of MaterialXAvailability(v157, v161);
    v15._countAndFlagsBits = 0x5F746F645F444ELL;
    v15._object = 0xE700000000000000;
    v165 = String.hasPrefix(_:)(v15);

    outlined consume of MaterialXAvailability(v157, v161);
    outlined consume of NodeData(v14, v13, v12, v154, v157, v161, v183, v187, v11, v10, v9);
    if (!v165)
    {

      v2 = v134;
      goto LABEL_5;
    }

    v5 = v130;
    v196 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 16) + 1, 1);
      v5 = v196;
    }

    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v5 = v196;
    }

    *(v5 + 16) = v17 + 1;
    v18 = v5 + 40 * v17;
    *(v18 + 32) = v173;
    *(v18 + 40) = v178;
    *(v18 + 48) = v138;
    *(v18 + 56) = v142;
    *(v18 + 64) = v146;
    v2 = v134;
  }

  while (v4);
LABEL_18:
  outlined destroy of [Input](&v202, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v19 = *(v5 + 16);
  v131 = v5;
  if (!v19)
  {
LABEL_63:

    SGGraph.topologicalSort()(v198);
    v60 = v198[0];
    v59 = v198[1];
    v200 = v198[0];
    v61 = v198[3];

    v199 = v61;
    outlined destroy of [Input](&v199, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
    v62 = *(v60 + 16);
    if (!v62)
    {
LABEL_132:
      v63 = MEMORY[0x277D84F90];
      goto LABEL_81;
    }

    v129 = v60 + 8;
    v63 = MEMORY[0x277D84F90];
    v136 = v60;
LABEL_65:
    v132 = v63;
    v64 = v129 + 40 * v62--;
    while (1)
    {
      if (v62 >= *(v60 + 16))
      {
        __break(1u);
LABEL_80:
        v63 = v132;
        goto LABEL_81;
      }

      v65 = *(v64 - 16);
      v66 = &v65[OBJC_IVAR___SGNode_data];
      v67 = v65[OBJC_IVAR___SGNode_data + 80];
      if (v67 <= 0x3F)
      {
        v148 = *(v64 + 16);
        v180 = *(v64 - 8);
        v69 = *(v66 + 8);
        v68 = *(v66 + 9);
        v189 = *(v66 + 7);
        v185 = *(v66 + 6);
        v163 = *(v66 + 5);
        v159 = *(v66 + 4);
        v70 = *(v66 + 2);
        v155 = *(v66 + 3);
        v71 = *v66;
        v72 = *(v66 + 1);
        v140 = *v64;
        v144 = *(v64 + 8);
        v152 = *v64;
        v175 = v65;
        v181 = v180;
        outlined copy of NodeData(v71, v72, v70, v155, v159, v163, v185, v189, v69, v68, v67);

        outlined copy of MaterialXAvailability(v159, v163);
        v73._countAndFlagsBits = 0x74736E6F635F444ELL;
        v73._object = 0xEC0000005F746E61;
        v167 = String.hasPrefix(_:)(v73);

        outlined consume of MaterialXAvailability(v159, v163);
        outlined consume of NodeData(v71, v72, v70, v155, v159, v163, v185, v189, v69, v68, v67);
        if (v167)
        {
          v63 = v132;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v195 = v132;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v132 + 16) + 1, 1);
            v63 = v195;
          }

          v76 = *(v63 + 16);
          v75 = *(v63 + 24);
          if (v76 >= v75 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
            v63 = v195;
          }

          *(v63 + 16) = v76 + 1;
          v77 = v63 + 40 * v76;
          *(v77 + 32) = v175;
          *(v77 + 40) = v181;
          *(v77 + 48) = v140;
          *(v77 + 56) = v144;
          *(v77 + 64) = v148;
          v60 = v136;
          if (!v62)
          {
LABEL_81:
            outlined destroy of [Input](&v200, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
            v80 = *(v63 + 16);
            if (!v80)
            {
LABEL_126:

              return;
            }

            v81 = 0;
            v82 = v63 + 32;
            v133 = v63;
            v137 = *(v63 + 16);
            v149 = v63 + 32;
            while (2)
            {
              if (v81 >= *(v63 + 16))
              {
                goto LABEL_137;
              }

              v85 = (v82 + 40 * v81);
              v84 = *v85;
              v168 = v85[1];
              v86 = v85[2];
              v87 = *&(*v85)[OBJC_IVAR___SGNode_inputs];
              if (!(v87 >> 62))
              {
                if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_89;
                }

LABEL_85:
                if (++v81 == v80)
                {
                  goto LABEL_126;
                }

                continue;
              }

              break;
            }

            if (v87 < 0)
            {
              v120 = *&v84[OBJC_IVAR___SGNode_inputs];
            }

            v121 = v81;
            v122 = __CocoaSet.count.getter();
            v82 = v149;
            v81 = v121;
            if (!v122)
            {
              goto LABEL_85;
            }

LABEL_89:
            *v164 = v81;
            if ((v87 & 0xC000000000000001) != 0)
            {
              v123 = v86;
              v124 = v84;
              v125 = v168;
              v90 = MEMORY[0x266772030](0, v87);
            }

            else
            {
              if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_138;
              }

              v88 = *(v87 + 32);
              v89 = v86;
              v90 = v88;
              v91 = v84;
              v92 = v168;
            }

            v93 = *&v84[OBJC_IVAR___SGNode_outputs];
            if (v93 >> 62)
            {
              if (v93 < 0)
              {
                v126 = *&v84[OBJC_IVAR___SGNode_outputs];
              }

              if (!__CocoaSet.count.getter())
              {
                goto LABEL_83;
              }

LABEL_94:
              if ((v93 & 0xC000000000000001) != 0)
              {
                v94 = MEMORY[0x266772030](0, v93);
              }

              else
              {
                if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_139;
                }

                v94 = *(v93 + 32);
              }

              v95 = v94;
              v96 = SGOutput.edges.getter();
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              v160 = Strong;
              if (Strong)
              {
                v98 = OBJC_IVAR___SGEdge_from;
                v99 = Strong;
                swift_beginAccess();
                v100 = *&v99[v98];
                v101 = v99;
                SGGraph.remove(edge:)(v101);
              }

              else
              {
                v100 = 0;
              }

              v153 = v95;
              v156 = v90;
              if (v96 >> 62)
              {
                v102 = __CocoaSet.count.getter();
              }

              else
              {
                v102 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v103 = OBJC_IVAR___SGGraph_edges;
              swift_beginAccess();
              if (v102)
              {
                v141 = v84;
                v145 = v86;
                v104 = 0;
                v182 = v96 & 0xFFFFFFFFFFFFFF8;
                v186 = v96 & 0xC000000000000001;
                v105 = v168;
                v172 = v103;
                v176 = v96;
                *v170 = v102;
                while (1)
                {
                  if (v186)
                  {
                    v106 = MEMORY[0x266772030](v104, v96);
                  }

                  else
                  {
                    if (v104 >= *(v182 + 16))
                    {
                      goto LABEL_136;
                    }

                    v106 = *(v96 + 8 * v104 + 32);
                  }

                  v107 = v106;
                  v190 = v104 + 1;
                  if (__OFADD__(v104, 1))
                  {
                    goto LABEL_135;
                  }

                  v108 = v100;
                  v109 = OBJC_IVAR___SGEdge_to;
                  v110 = *&v106[OBJC_IVAR___SGEdge_to];
                  swift_beginAccess();
                  swift_unknownObjectWeakAssign();
                  v111 = *&v107[OBJC_IVAR___SGEdge_from];
                  swift_unknownObjectWeakInit();
                  swift_unknownObjectWeakAssign();
                  swift_beginAccess();
                  specialized OrderedSet.remove(_:)(v191, v192);
                  swift_endAccess();
                  outlined destroy of [Input](v191, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
                  outlined destroy of [Input](v192, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
                  v112 = *&v105[v172];

                  v113 = specialized Collection<>.firstIndex(of:)(v107, v112);
                  v114 = v105;
                  v116 = v115;

                  if (v116)
                  {

                    lazy protocol witness table accessor for type APIError and conformance APIError();
                    swift_allocError();
                    *v127 = 0xD000000000000032;
                    *(v127 + 8) = 0x8000000265F33020;
                    *(v127 + 16) = 1;
                    swift_willThrow();

                    v79 = v145;
                    goto LABEL_78;
                  }

                  swift_beginAccess();
                  v117 = specialized Array.remove(at:)(v113, specialized _ArrayBuffer._consumeAndCreateNew());
                  swift_endAccess();

                  v105 = v114;
                  v100 = v108;
                  if (v108)
                  {
                    v118 = *&v107[v109];
                    v119 = v108;
                    SGGraph.connect(_:to:)(v108, v118);
                  }

                  ++v104;
                  v96 = v176;
                  if (v190 == *v170)
                  {
                    v84 = v141;
                    v86 = v145;
                    break;
                  }
                }
              }

              v63 = v133;
              v80 = v137;
              v90 = v156;
              v83 = v160;
            }

            else
            {
              if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

LABEL_83:
              v83 = v84;
              v84 = v168;
            }

            v81 = *v164;
            v82 = v149;
            goto LABEL_85;
          }

          goto LABEL_65;
        }

        v60 = v136;
      }

      --v62;
      v64 -= 40;
      if (v62 == -1)
      {
        goto LABEL_80;
      }
    }
  }

  v20 = 0;
  v21 = v5 + 32;
  v143 = v5 + 32;
  v135 = *(v5 + 16);
  while (1)
  {
    if (v20 >= *(v131 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v24 = (v21 + 40 * v20);
    v23 = *v24;
    v166 = v24[1];
    v25 = v24[2];
    v26 = *&(*v24)[OBJC_IVAR___SGNode_inputs];
    if (v26 >> 62)
    {
      if (v26 < 0)
      {
        v54 = *&v23[OBJC_IVAR___SGNode_inputs];
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_22;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if ((v26 & 0xC000000000000001) == 0)
    {
      break;
    }

    v55 = v25;
    v56 = v23;
    v57 = v166;
    v29 = MEMORY[0x266772030](0, v26);
LABEL_29:
    v32 = *&v23[OBJC_IVAR___SGNode_outputs];
    if (v32 >> 62)
    {
      if (v32 < 0)
      {
        v58 = *&v23[OBJC_IVAR___SGNode_outputs];
      }

      if (__CocoaSet.count.getter())
      {
LABEL_31:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x266772030](0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_134;
          }

          v33 = *(v32 + 32);
        }

        v34 = v33;
        v35 = SGOutput.edges.getter();
        swift_beginAccess();
        v36 = swift_unknownObjectWeakLoadStrong();
        v184 = v35;
        v162 = v36;
        if (v36)
        {
          v37 = OBJC_IVAR___SGEdge_from;
          v38 = v36;
          swift_beginAccess();
          v179 = *&v38[v37];
          v39 = v38;
          SGGraph.remove(edge:)(v39);

          v35 = v184;
        }

        else
        {
          v179 = 0;
        }

        v158 = v29;
        if (v35 >> 62)
        {
          v40 = __CocoaSet.count.getter();
        }

        else
        {
          v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = OBJC_IVAR___SGGraph_edges;
        swift_beginAccess();
        if (v40)
        {
          v139 = v20;
          v147 = v23;
          v151 = v25;
          v42 = 0;
          v174 = v35 & 0xC000000000000001;
          *v169 = v41;
          v171 = v35 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v174)
            {
              v43 = MEMORY[0x266772030](v42, v35);
            }

            else
            {
              if (v42 >= *(v171 + 16))
              {
                goto LABEL_130;
              }

              v43 = *(v35 + 8 * v42 + 32);
            }

            v19 = v43;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            v188 = (v42 + 1);
            v41 = v40;
            v44 = OBJC_IVAR___SGEdge_to;
            v45 = *&v43[OBJC_IVAR___SGEdge_to];
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            v46 = *&v19[OBJC_IVAR___SGEdge_from];
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakAssign();
            swift_beginAccess();
            specialized OrderedSet.remove(_:)(v193, v194);
            swift_endAccess();
            outlined destroy of [Input](v193, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
            outlined destroy of [Input](v194, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
            v25 = *v169;
            v47 = *&v166[*v169];

            v48 = specialized Collection<>.firstIndex(of:)(v19, v47);
            v50 = v49;

            if (v50)
            {

              lazy protocol witness table accessor for type APIError and conformance APIError();
              swift_allocError();
              *v78 = 0xD000000000000032;
              *(v78 + 8) = 0x8000000265F33020;
              *(v78 + 16) = 1;
              swift_willThrow();

              v79 = v151;
LABEL_78:

              return;
            }

            swift_beginAccess();
            v51 = specialized Array.remove(at:)(v48, specialized _ArrayBuffer._consumeAndCreateNew());
            swift_endAccess();

            v23 = v179;
            if (v179)
            {
              v52 = *&v19[v44];
              v53 = v179;
              SGGraph.connect(_:to:)(v179, v52);
            }

            v35 = v184;

            ++v42;
            v40 = v41;
            if (v188 == v41)
            {
              v23 = v147;
              v25 = v151;
              v19 = v135;
              v20 = v139;
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);

          return;
        }

LABEL_51:

        v21 = v143;
        v29 = v158;
        v22 = v162;
        goto LABEL_21;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v22 = v23;
    v23 = v166;
LABEL_21:

LABEL_22:
    if (++v20 == v19)
    {
      goto LABEL_63;
    }
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
    v28 = v25;
    v29 = v27;
    v30 = v23;
    v31 = v166;
    goto LABEL_29;
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.removeUnconnectedNodesAndEdges()()
{
  v2 = v1;
  v3 = specialized SGGraph.connectedUpstreamSubgraph(rootedAt:)(*(v0 + OBJC_IVAR___SGGraph_resultsNode));
  v51 = v4;

  v5 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_67;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= 2)
  {
    while (1)
    {
      if ((v6 & 0xC000000000000001) == 0 || v8 == 2)
      {
      }

      else
      {
        type metadata accessor for SGNode();

        v10 = 2;
        do
        {
          v11 = v10 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v10);
          v10 = v11;
        }

        while (v8 != v11);
      }

      if (v7)
      {

        v6 = _CocoaArrayWrapper.subscript.getter();
        v54 = v13;
        v12 = v14;
        v8 = v15 >> 1;
      }

      else
      {
        v6 &= 0xFFFFFFFFFFFFFF8uLL;
        v54 = v6 + 32;
        v12 = 2;
      }

      swift_endAccess();
      swift_unknownObjectRetain();
      if (v12 == v8)
      {
LABEL_14:

        swift_unknownObjectRelease_n();
        return;
      }

      v60 = v51 + 32;
      v58 = v3 + 32;
      v55 = v3;
      v53 = v6;
      v52 = v8;
      while (1)
      {
        if (v12 >= v8)
        {
          goto LABEL_64;
        }

        v17 = *(v54 + 8 * v12);
        v57 = v17;
        if (v3)
        {
          break;
        }

        v7 = *(v51 + 16);
        v32 = v17;
        if (!v7)
        {
          goto LABEL_17;
        }

        v16 = v32;
        type metadata accessor for SGNode();
        v33 = (v51 + 32);
        while (1)
        {
          v34 = *v33;
          v35 = static NSObject.== infix(_:_:)();

          if (v35)
          {
            break;
          }

          ++v33;
          if (!--v7)
          {
            goto LABEL_17;
          }
        }

LABEL_18:

        v3 = v55;
LABEL_19:
        v6 = v53;
        if (++v12 == v8)
        {
          goto LABEL_14;
        }
      }

      v6 = *(v3 + 16);
      v18 = v17;

      v19 = NSObject._rawHashValue(seed:)(v6);
      v20 = 1 << *(v3 + 16);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v21)
      {
        goto LABEL_66;
      }

      v56 = v2;
      v23 = v22 & v19;
      v24 = _HashTable.UnsafeHandle._startIterator(bucket:)(v22 & v19, (v3 + 16), v58);
      if (!v24)
      {
        break;
      }

      v6 = v25;
      v2 = v26;
      v27 = -1 << *(v3 + 16);
      v28 = (v27 ^ ~v24) + (*(v3 + 24) >> 6);
      if (v28 >= ~v27)
      {
        v29 = ~v27;
      }

      else
      {
        v29 = 0;
      }

      v7 = v28 - v29;
      type metadata accessor for SGNode();
      v30 = *(v60 + 8 * v7);
      v31 = static NSObject.== infix(_:_:)();

      if (v31)
      {
        v3 = v55;
LABEL_60:

        v2 = v56;
        v8 = v52;
        goto LABEL_19;
      }

      v59 = 0;
      v3 = v55;
LABEL_35:
      ++v23;
      v36 = *(v55 + 16) & 0x3FLL;
      v37 = 1 << *(v55 + 16);
      if (v23 == v37)
      {
        if (v59)
        {
          goto LABEL_74;
        }

        v23 = 0;
        v59 = 1;
      }

      if (v2 >= v36)
      {
        v45 = (v37 - 1) & v6;
        v6 >>= v36;
        v2 -= v36;
        if (!v45)
        {
          break;
        }

LABEL_56:
        v46 = -1 << v36;
        v47 = (v46 ^ ~v45) + (*(v55 + 24) >> 6);
        if (v47 >= ~v46)
        {
          v48 = ~v46;
        }

        else
        {
          v48 = 0;
        }

        v49 = *(v60 + 8 * (v47 - v48));
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      v38 = (v23 * v36) >> 6;
      if (v2)
      {
        if (__OFADD__(v36 << v36, 64))
        {
          goto LABEL_65;
        }

        v39 = (v36 << v36) + 126;
        if ((v36 << v36) + 64 >= 1)
        {
          v39 = (v36 << v36) + 63;
        }

        if (v38 + 1 == v39 >> 6)
        {
          v38 = 0;
        }

        else
        {
          ++v38;
        }
      }

      v40 = v36 - v2;
      if (!__OFSUB__(v36, v2))
      {
        v41 = v38 == 2 && v36 == 5;
        v42 = 64;
        if (v41)
        {
          v42 = 32;
        }

        v21 = __OFSUB__(v42, v40);
        v43 = v42 - v40;
        if (v21)
        {
          goto LABEL_63;
        }

        v44 = *(v58 + 8 * v38);
        v45 = ((v44 << v2) | v6) & (v37 - 1);
        v6 = v44 >> v40;
        v2 = v43;
        if (!v45)
        {
          break;
        }

        goto LABEL_56;
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v50 = __CocoaSet.count.getter();
      if (v50 < 2)
      {
        goto LABEL_72;
      }

      v8 = v50;
      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_73;
      }

      if (__CocoaSet.count.getter() < v8)
      {
        __break(1u);
        goto LABEL_71;
      }
    }

    v2 = v56;
    v8 = v52;
LABEL_17:
    v16 = v57;
    SGGraph.remove(node:)(v57);
    if (v2)
    {

      swift_unknownObjectRelease_n();

      return;
    }

    goto LABEL_18;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double TopologicalSort.surfaceNodeElement(ofType:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  specialized TopologicalSort.surfaceNodeElement(ofType:)(a1 & 1, *v2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t mapUniforms(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0VySiGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0VySiGGMR);
  inited = swift_initStackObject();
  *(inited + 16) = partial apply for closure #1 in mapUniforms(_:);
  *(inited + 24) = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v22 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v22;
    result = swift_beginAccess();
    v7 = 0;
    v8 = (a1 + 56);
    while (1)
    {
      v10 = *(v8 - 3);
      v9 = *(v8 - 2);
      v21 = *(v8 - 8);
      v20 = *v8;
      if (v21 == 1)
      {
        v11 = v7;
        outlined copy of TextureSource();
        outlined copy of TextureSource();

        v7 = v11;
        v12 = v10;
        v13 = v9;
      }

      else
      {
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v14;
        outlined copy of TextureSource();

        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v15);

        v12 = 0x65727574786574;
        v13 = 0xE700000000000000;
        v7 = v14;
      }

      v23 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v7;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v7 = v19;
        v5 = v23;
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 48 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      *(v18 + 48) = v20;
      *(v18 + 56) = v10;
      *(v18 + 64) = v9;
      *(v18 + 72) = v21;
      v8 += 4;
      if (!--v4)
      {

        goto LABEL_12;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_12:

  return v5;
}

void SGGraph.remove(node:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = specialized Collection<>.firstIndex(of:)(a1, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v32 = v6;
    v35 = specialized Sequence.flatMap<A>(_:)(*(a1 + OBJC_IVAR___SGNode_outputs));
    v33 = a1;
    v9 = *(a1 + OBJC_IVAR___SGNode_inputs);
    v40 = MEMORY[0x277D84F90];
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_34:
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v37 = MEMORY[0x277D84F90];
    while (v11 != v12)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266772030](v12, v9);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      ++v12;
      if (Strong)
      {
        MEMORY[0x266771770]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v40;
        v12 = v15;
      }
    }

    v36 = v2;
    v40 = v35;
    specialized Array.append<A>(contentsOf:)(v37);
    v2 = v40;
    if (v40 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = OBJC_IVAR___SGGraph_edges;
    swift_beginAccess();
    if (v10)
    {
      v19 = 0;
      v35 = v2 & 0xC000000000000001;
      v34 = v18;
      do
      {
        if (v35)
        {
          v20 = MEMORY[0x266772030](v19, v2);
        }

        else
        {
          if (v19 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v20 = *(v2 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_32;
        }

        v38 = v19 + 1;
        v22 = *&v20[OBJC_IVAR___SGEdge_to];
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v23 = *&v21[OBJC_IVAR___SGEdge_from];
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        specialized OrderedSet.remove(_:)(v41, v39);
        swift_endAccess();
        outlined destroy of [Input](v41, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
        outlined destroy of [Input](v39, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
        v9 = v36;
        v24 = *(v36 + v34);

        v25 = specialized Collection<>.firstIndex(of:)(v21, v24);
        LOBYTE(v23) = v26;

        if (v23)
        {

          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v31 = 0xD000000000000032;
          *(v31 + 8) = 0x8000000265F33020;
          *(v31 + 16) = 1;
          swift_willThrow();

          return;
        }

        swift_beginAccess();
        v27 = specialized Array.remove(at:)(v25, specialized _ArrayBuffer._consumeAndCreateNew());
        swift_endAccess();

        ++v19;
      }

      while (v38 != v10);
    }

    swift_beginAccess();
    v28 = specialized Array.remove(at:)(v32, specialized _ArrayBuffer._consumeAndCreateNew());
    swift_endAccess();

    v29 = *(v33 + OBJC_IVAR___SGNode_name);
    v30 = *(v33 + OBJC_IVAR___SGNode_name + 8);
    swift_beginAccess();

    specialized OrderedDictionary.subscript.setter(0, v29, v30);
    swift_endAccess();
  }
}

uint64_t SGGraph.nodeWithOutput(_:)(char *a1, void *a2, const char *a3)
{
  v5 = &a1[*a2];
  swift_beginAccess();
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;

    v8 = SGGraph.node(named:)(v7, v6);

    result = v8;
    if (v8)
    {
      return result;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = static os_log_type_t.error.getter();
    v12 = a1;
    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&dword_265D7D000, v13, v11, a3, v14, 0xCu);
      outlined destroy of [Input](v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v15, -1, -1);
      MEMORY[0x266773120](v14, -1, -1);
    }
  }

  return 0;
}

uint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo11MTLFunction_p_Tt0g5Tm(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t SGGraph.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGGraph_name);
  v2 = *(v0 + OBJC_IVAR___SGGraph_name + 8);

  return v1;
}

Class @objc SGGraph.childNodes.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  v6 = *a3;
  swift_beginAccess();
  v7 = *(a1 + v6);
  a4(0);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t @objc SGGraph.edges.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5)
{
  a4(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *a5;
  swift_beginAccess();
  v9 = *(a1 + v8);
  *(a1 + v8) = v7;
}

uint64_t SGGraph.init(name:inputs:outputs:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v11 = a1;
    v12 = a2;
  }

  else
  {
    v12 = 0xE800000000000000;
    v11 = 0x64656C7469746E55;
  }

  v13 = &v4[OBJC_IVAR___SGGraph_name];
  *v13 = v11;
  v13[1] = v12;
  if (a3 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  v71 = ObjectType;
  v72 = v4;
  if (v14)
  {
    v75 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        v19 = (MEMORY[0x266772030]() + OBJC_IVAR___SGInput_attachment);
        swift_beginAccess();
        v20 = v19[1];
        *v19 = a1;
        v19[1] = a2;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(v75 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 = v18;
      }

      while (v14 != v18);
    }

    else
    {
      v23 = 32;
      do
      {
        v24 = *(a3 + v23);
        v25 = &v24[OBJC_IVAR___SGInput_attachment];
        swift_beginAccess();
        v26 = v25[1];
        *v25 = a1;
        v25[1] = a2;
        v27 = v24;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = *(v75 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 += 8;
        --v14;
      }

      while (v14);
    }

    v22 = v75;
    v4 = v72;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v29 = OBJC_IVAR___SGGraph_inputs;
  *&v4[OBJC_IVAR___SGGraph_inputs] = v22;
  if (!(a4 >> 62))
  {
    v30 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_20;
    }

LABEL_30:

    v42 = MEMORY[0x277D84F90];
LABEL_31:
    v43 = OBJC_IVAR___SGGraph_outputs;
    *&v72[OBJC_IVAR___SGGraph_outputs] = v42;
    *&v72[OBJC_IVAR___SGGraph_edges] = v15;
    swift_beginAccess();
    v44 = *&v72[v29];

    v46 = specialized static SGGraph.generateArgumentsNode(inputs:)(v45);

    v47 = OBJC_IVAR___SGGraph_argumentsNode;
    *&v72[OBJC_IVAR___SGGraph_argumentsNode] = v46;
    swift_beginAccess();
    v48 = *&v72[v43];

    v50 = specialized static SGGraph.generateResultsNode(outputs:)(v49);

    v51 = OBJC_IVAR___SGGraph_resultsNode;
    *&v72[OBJC_IVAR___SGGraph_resultsNode] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_265F24070;
    v53 = *&v72[v47];
    *(v52 + 32) = v53;
    *(v52 + 40) = v50;
    *&v72[OBJC_IVAR___SGGraph_nodes] = v52;
    v54 = v53;
    v55 = v50;
    v56 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_AA6SGNodeCSaySS_AItGTt0g5Tf4g_n(v15);
    v57 = &v72[OBJC_IVAR___SGGraph_nodeMap];
    *v57 = v56;
    *(v57 + 1) = v58;
    *(v57 + 2) = v59;
    v60 = *&v72[v47];
    v61 = *&v60[OBJC_IVAR___SGNode_name];
    v62 = *&v60[OBJC_IVAR___SGNode_name + 8];
    swift_beginAccess();

    v63 = v60;
    specialized OrderedDictionary.subscript.setter(v60, v61, v62);
    v64 = *&v72[v51];
    v65 = *&v64[OBJC_IVAR___SGNode_name];
    v66 = *&v64[OBJC_IVAR___SGNode_name + 8];

    v67 = v64;
    specialized OrderedDictionary.subscript.setter(v64, v65, v66);
    swift_endAccess();
    v73.receiver = v72;
    v73.super_class = v71;
    v68 = objc_msgSendSuper2(&v73, sel_init);
    v69 = *&v68[OBJC_IVAR___SGGraph_argumentsNode];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v70 = *&v68[OBJC_IVAR___SGGraph_resultsNode];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    return v68;
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_20:
  v74 = v15;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v30 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v31 = 0;
      do
      {
        v32 = v31 + 1;
        v33 = (MEMORY[0x266772030]() + OBJC_IVAR___SGOutput_attachment);
        swift_beginAccess();
        v34 = v33[1];
        *v33 = a1;
        v33[1] = a2;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = *(v74 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v31 = v32;
      }

      while (v30 != v32);
    }

    else
    {
      v36 = 32;
      do
      {
        v37 = *(a4 + v36);
        v38 = &v37[OBJC_IVAR___SGOutput_attachment];
        swift_beginAccess();
        v39 = v38[1];
        *v38 = a1;
        v38[1] = a2;
        v40 = v37;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v41 = *(v74 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v36 += 8;
        --v30;
      }

      while (v30);
    }

    v42 = v74;
    v15 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

ShaderGraph::SGGraph::CodingKeys_optional __swiftcall SGGraph.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGGraph.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t SGGraph.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x7365646F6ELL;
  v2 = 0x737475706E69;
  v3 = 0x7374757074756FLL;
  if (a1 != 3)
  {
    v3 = 1701667182;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7365676465;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGGraph.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7365646F6ELL;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE600000000000000;
  v6 = 0x737475706E69;
  v7 = 0xE700000000000000;
  v8 = 0x7374757074756FLL;
  if (v3 != 3)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7365676465;
  if (!*a1)
  {
    v9 = 0x7365646F6ELL;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = v5;
  }

  v12 = 0xE600000000000000;
  v13 = 0x737475706E69;
  v14 = 0xE700000000000000;
  v15 = 0x7374757074756FLL;
  if (v4 != 3)
  {
    v15 = 1701667182;
    v14 = 0xE400000000000000;
  }

  if (v4 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (*a2)
  {
    v2 = 0x7365676465;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = v12;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGGraph.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGGraph.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGGraph.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGGraph.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGGraph.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGGraph.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7365646F6ELL;
  v5 = 0xE600000000000000;
  v6 = 0x737475706E69;
  v7 = 0xE700000000000000;
  v8 = 0x7374757074756FLL;
  if (v2 != 3)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7365676465;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGGraph.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7365646F6ELL;
  v3 = 0x737475706E69;
  v4 = 0x7374757074756FLL;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365676465;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGGraph.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGGraph.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGGraph.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGGraph.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SGGraph.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v163 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v181 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = v2;
  if (v2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  LOBYTE(v191) = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v25 = &v3[OBJC_IVAR___SGGraph_name];
  *v25 = v13;
  v25[1] = v23;
  v26 = v13;

  v27._countAndFlagsBits = v26;
  v27._object = v24;
  v28._countAndFlagsBits = 1701667182;
  v28._object = 0xE400000000000000;
  validate(_:named:)(v27, v28);
  v12 = v29;
  if (v29)
  {
    (*(v6 + 8))(v9, v5);

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 1;
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
  v190 = 2;
  lazy protocol witness table accessor for type [SGInput] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = OBJC_IVAR___SGGraph_inputs;
  *&v3[OBJC_IVAR___SGGraph_inputs] = v191;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph8SGOutputCGMd, &_sSay11ShaderGraph8SGOutputCGMR);
  v190 = 3;
  lazy protocol witness table accessor for type [SGOutput] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = OBJC_IVAR___SGGraph_outputs;
  *&v3[OBJC_IVAR___SGGraph_outputs] = v191;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
  v190 = 0;
  lazy protocol witness table accessor for type [SGNode] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v191;
  swift_beginAccess();
  v33 = *&v3[v30];
  v34 = v32;

  v36 = specialized static SGGraph.generateArgumentsNode(inputs:)(v35);

  v180 = OBJC_IVAR___SGGraph_argumentsNode;
  *&v3[OBJC_IVAR___SGGraph_argumentsNode] = v36;
  swift_beginAccess();
  v37 = *&v3[v31];

  v39 = specialized static SGGraph.generateResultsNode(outputs:)(v38);

  v177 = OBJC_IVAR___SGGraph_resultsNode;
  *&v3[OBJC_IVAR___SGGraph_resultsNode] = v39;
  if (v34 >> 62)
  {
    goto LABEL_155;
  }

  v40 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v41 = MEMORY[0x277D84F90];
  v173 = v6;
  v172 = v5;
  v176 = v9;
  v42 = v180;
  v179 = v34;
  if (!v40)
  {
    goto LABEL_29;
  }

  v188 = MEMORY[0x277D84F90];
  v178 = v40;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 & ~(v40 >> 63), 0);
  if ((v178 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v41 = v188;
    v45 = v34 & 0xC000000000000001;
    do
    {
      if (v45)
      {
        v46 = MEMORY[0x266772030](v44, v179);
      }

      else
      {
        v46 = *(v179 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = &v46[OBJC_IVAR___SGNode_name];
      swift_beginAccess();
      v50 = *v48;
      v49 = *(v48 + 1);

      v188 = v41;
      v52 = *(v41 + 16);
      v51 = *(v41 + 24);
      if (v52 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v41 = v188;
      }

      v44 = (v44 + 1);
      *(v41 + 16) = v52 + 1;
      v53 = v41 + 16 * v52;
      *(v53 + 32) = v50;
      *(v53 + 40) = v49;
      v42 = v180;
    }

    while (v178 != v44);
    v6 = v173;
    v5 = v172;
    v9 = v176;
LABEL_29:
    v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v41);

    v55 = (*&v3[v42] + OBJC_IVAR___SGNode_name);
    v57 = *v55;
    v56 = v55[1];

    v58 = v42;
    v59 = specialized Set.contains(_:)(v57, v56, v54);

    if (v59)
    {
    }

    else
    {
      v58 = v177;
      v60 = (*&v3[v177] + OBJC_IVAR___SGNode_name);
      v62 = *v60;
      v61 = v60[1];

      v63 = specialized Set.contains(_:)(v62, v61, v54);

      if ((v63 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v70 = swift_allocObject();
        v71 = *&v3[v180];
        *(v70 + 16) = xmmword_265F24070;
        v72 = *&v3[v58];
        *(v70 + 32) = v71;
        *(v70 + 40) = v72;
        v188 = v70;
        v73 = v71;
        v74 = v72;
        specialized Array.append<A>(contentsOf:)(v179);
        v43 = v188;
        v164 = OBJC_IVAR___SGGraph_nodes;
        *&v3[OBJC_IVAR___SGGraph_nodes] = v188;
        if (!(v43 >> 62))
        {
          v34 = v43;
          v75 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_35;
        }

        goto LABEL_161;
      }
    }

    v188 = 0;
    *&v189 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v188 = 0xD000000000000017;
    *&v189 = 0x8000000265F33060;
    v64 = (*&v3[v58] + OBJC_IVAR___SGNode_name);
    v65 = *v64;
    v66 = v64[1];

    MEMORY[0x266771550](v65, v66);

    v67 = v188;
    v68 = v189;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v12 = swift_allocError();
    *v69 = v67;
    *(v69 + 8) = v68;
    *(v69 + 16) = 14;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_4:
    type metadata accessor for SGError();
    v18 = v12;
    SGError.__allocating_init(_:)(v12);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v181);
    if (v14)
    {
      v21 = *&v3[OBJC_IVAR___SGGraph_name + 8];

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    else if (!v15)
    {
      goto LABEL_6;
    }

LABEL_6:
    if (v16)
    {
      v22 = *&v3[OBJC_IVAR___SGGraph_inputs];

      if (!v17)
      {
        goto LABEL_9;
      }
    }

    else if (!v17)
    {
LABEL_9:
      swift_deallocPartialClassInstance();
      return v3;
    }

    v19 = *&v3[OBJC_IVAR___SGGraph_outputs];

    goto LABEL_9;
  }

  while (1)
  {
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v34 = v43;
    v75 = __CocoaSet.count.getter();
LABEL_35:
    v76 = MEMORY[0x277D84F90];
    if (v75)
    {
      v188 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75 & ~(v75 >> 63), 0);
      if (v75 < 0)
      {
        __break(1u);
        goto LABEL_163;
      }

      v77 = 0;
      v78 = v188;
      v178 = v34 & 0xC000000000000001;
      v179 = v75;
      v79 = v34;
      do
      {
        if (v178)
        {
          v80 = MEMORY[0x266772030](v77, v34);
        }

        else
        {
          v80 = *(v34 + 8 * v77 + 32);
        }

        v81 = v80;
        v82 = *&v80[OBJC_IVAR___SGNode_name];
        v83 = *&v80[OBJC_IVAR___SGNode_name + 8];
        v188 = v78;
        v84 = *(v78 + 16);
        v85 = *(v78 + 24);
        v180 = v84 + 1;

        if (v84 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v180, 1);
          v78 = v188;
        }

        ++v77;
        *(v78 + 16) = v180;
        v86 = (v78 + 24 * v84);
        v86[4] = v82;
        v86[5] = v83;
        v86[6] = v81;
        v9 = v176;
        v34 = v79;
      }

      while (v179 != v77);

      v76 = MEMORY[0x277D84F90];
    }

    v87 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo11MTLFunction_p_Tt0g5Tm(v76, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5, specialized Array._copyContents(initializing:));
    v188 = 0;
    *&v189 = v76;
    *(&v189 + 1) = v87;

    specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v88, specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:), 0, &v188);
    v89 = v12;
    if (v12)
    {
      goto LABEL_186;
    }

    swift_bridgeObjectRelease_n();
    v90 = v189;
    v91 = &v3[OBJC_IVAR___SGGraph_nodeMap];
    *v91 = v188;
    *(v91 + 8) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
    LOBYTE(v184) = 1;
    lazy protocol witness table accessor for type [SGEdge] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v165 = v188;
    v92 = v164;
    swift_beginAccess();
    v34 = *&v3[v92];
    if (!(v34 >> 62))
    {
      v6 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_48;
    }

LABEL_163:
    v6 = __CocoaSet.count.getter();
LABEL_48:

    v5 = MEMORY[0x277D84F90];
    v166 = v34;
    if (v6)
    {
      v93 = 0;
      v170 = v34 & 0xC000000000000001;
      v169 = v34 & 0xFFFFFFFFFFFFFF8;
      v168 = v34 + 32;
      v94 = MEMORY[0x277D84F90];
      v167 = v6;
      while (1)
      {
        if (v170)
        {
          v95 = MEMORY[0x266772030](v93, v166);
        }

        else
        {
          if (v93 >= *(v169 + 16))
          {
            goto LABEL_144;
          }

          v95 = *(v168 + 8 * v93);
        }

        v175 = v95;
        v96 = __OFADD__(v93, 1);
        v97 = v93 + 1;
        if (v96)
        {
          break;
        }

        v98 = *&v175[OBJC_IVAR___SGNode_inputs];
        if (v98 >> 62)
        {
          if (v98 < 0)
          {
            v117 = *&v175[OBJC_IVAR___SGNode_inputs];
          }

          v118 = *&v175[OBJC_IVAR___SGNode_inputs];
          v119 = __CocoaSet.count.getter();
          v98 = v118;
          v9 = v119;
        }

        else
        {
          v9 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v174 = v97;
        if (v9)
        {
          v34 = v98;
          v171 = v94;
          v183[0] = v5;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
          if (v9 < 0)
          {
            goto LABEL_151;
          }

          v99 = 0;
          v100 = v183[0];
          v178 = &v175[OBJC_IVAR___SGNode_name];
          v101 = v34;
          v177 = v34 & 0xC000000000000001;
          v180 = v34;
          v179 = v9;
          do
          {
            if (v177)
            {
              v102 = MEMORY[0x266772030](v99, v101);
            }

            else
            {
              v102 = *(v101 + 8 * v99 + 32);
            }

            v103 = v102;
            v104 = *(v178 + 8);
            v184 = *v178;
            v185 = v104;

            MEMORY[0x266771550](58, 0xE100000000000000);
            MEMORY[0x266771550](*&v103[OBJC_IVAR___SGInput_name], *&v103[OBJC_IVAR___SGInput_name + 8]);
            v105 = v184;
            v106 = v185;
            v183[0] = v100;
            v108 = *(v100 + 16);
            v107 = *(v100 + 24);
            if (v108 >= v107 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1);
              v100 = v183[0];
            }

            ++v99;
            *(v100 + 16) = v108 + 1;
            v109 = (v100 + 24 * v108);
            v109[4] = v105;
            v109[5] = v106;
            v109[6] = v103;
            v101 = v180;
          }

          while (v179 != v99);

          v94 = v171;
          v6 = v167;
          v5 = MEMORY[0x277D84F90];
        }

        else
        {

          v100 = v5;
        }

        v9 = v100;
        v110 = *(v100 + 16);
        v34 = v94[2];
        v111 = v34 + v110;
        if (__OFADD__(v34, v110))
        {
          goto LABEL_145;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v111 > v94[3] >> 1)
        {
          if (v34 <= v111)
          {
            v113 = v34 + v110;
          }

          else
          {
            v113 = v34;
          }

          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v113, 1, v94);
        }

        if (*(v9 + 16))
        {
          v114 = v94[2];
          if ((v94[3] >> 1) - v114 < v110)
          {
            goto LABEL_152;
          }

          v34 = &v94[3 * v114];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph7SGInputCtMd, &_sSS_11ShaderGraph7SGInputCtMR);
          swift_arrayInitWithCopy();

          if (v110)
          {
            v115 = v94[2];
            v96 = __OFADD__(v115, v110);
            v116 = v115 + v110;
            if (v96)
            {
              goto LABEL_157;
            }

            v94[2] = v116;
          }
        }

        else
        {

          if (v110)
          {
            goto LABEL_146;
          }
        }

        v93 = v174;
        if (v174 == v6)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      v40 = __CocoaSet.count.getter();
      goto LABEL_19;
    }

    v94 = MEMORY[0x277D84F90];
LABEL_86:

    if (v94[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMR);
      v120 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v120 = MEMORY[0x277D84F98];
    }

    v184 = v120;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v94, 1, &v184, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
    v163 = v12;
    if (v12)
    {
      goto LABEL_187;
    }

    v166 = v184;
    v34 = *&v3[v164];
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v150 = *&v3[v164];
      }

      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v121 = MEMORY[0x277D84F90];
    v164 = v34;
    if (v12)
    {
      v9 = 0;
      v170 = v34 & 0xC000000000000001;
      v169 = v34 & 0xFFFFFFFFFFFFFF8;
      v168 = v34 + 32;
      v6 = MEMORY[0x277D84F90];
      v167 = v12;
      while (1)
      {
        if (v170)
        {
          v122 = MEMORY[0x266772030](v9, v164);
          v96 = __OFADD__(v9++, 1);
          if (v96)
          {
            goto LABEL_147;
          }
        }

        else
        {
          if (v9 >= *(v169 + 16))
          {
            goto LABEL_148;
          }

          v122 = *(v168 + 8 * v9);
          v96 = __OFADD__(v9++, 1);
          if (v96)
          {
            goto LABEL_147;
          }
        }

        v180 = *&v122[OBJC_IVAR___SGNode_outputs];
        v34 = v180;
        if (v180 >> 62)
        {
          v133 = v122;
          v5 = __CocoaSet.count.getter();
          v122 = v133;
          v34 = v180;
          if (!v5)
          {
LABEL_114:

            v5 = v121;
            goto LABEL_115;
          }
        }

        else
        {
          v5 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v5)
          {
            goto LABEL_114;
          }
        }

        v175 = v122;
        v171 = v9;
        v174 = v6;
        v183[0] = v121;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
        v179 = v5;
        if (v5 < 0)
        {
          goto LABEL_153;
        }

        v123 = 0;
        v5 = v183[0];
        v178 = &v175[OBJC_IVAR___SGNode_name];
        v124 = v34;
        v177 = v34 & 0xC000000000000001;
        do
        {
          if (v177)
          {
            v125 = MEMORY[0x266772030](v123, v124);
          }

          else
          {
            v125 = *(v124 + 8 * v123 + 32);
          }

          v126 = v125;
          v127 = *(v178 + 8);
          v184 = *v178;
          v185 = v127;

          MEMORY[0x266771550](58, 0xE100000000000000);
          MEMORY[0x266771550](*&v126[OBJC_IVAR___SGOutput_name], *&v126[OBJC_IVAR___SGOutput_name + 8]);
          v128 = v184;
          v129 = v185;
          v183[0] = v5;
          v131 = *(v5 + 16);
          v130 = *(v5 + 24);
          if (v131 >= v130 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1);
            v5 = v183[0];
          }

          ++v123;
          *(v5 + 16) = v131 + 1;
          v132 = (v5 + 24 * v131);
          v132[4] = v128;
          v132[5] = v129;
          v132[6] = v126;
          v124 = v180;
        }

        while (v179 != v123);

        v121 = MEMORY[0x277D84F90];
        v6 = v174;
        v12 = v167;
        v9 = v171;
LABEL_115:
        v134 = *(v5 + 16);
        v34 = *(v6 + 16);
        v135 = v34 + v134;
        if (__OFADD__(v34, v134))
        {
          goto LABEL_149;
        }

        v136 = swift_isUniquelyReferenced_nonNull_native();
        if (!v136 || v135 > *(v6 + 24) >> 1)
        {
          if (v34 <= v135)
          {
            v137 = v34 + v134;
          }

          else
          {
            v137 = v34;
          }

          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v136, v137, 1, v6);
        }

        if (*(v5 + 16))
        {
          v138 = *(v6 + 16);
          if ((*(v6 + 24) >> 1) - v138 < v134)
          {
            goto LABEL_154;
          }

          v34 = v6 + 24 * v138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph8SGOutputCtMd, &_sSS_11ShaderGraph8SGOutputCtMR);
          swift_arrayInitWithCopy();

          if (v134)
          {
            v139 = *(v6 + 16);
            v96 = __OFADD__(v139, v134);
            v140 = v139 + v134;
            if (v96)
            {
              goto LABEL_158;
            }

            *(v6 + 16) = v140;
          }
        }

        else
        {

          if (v134)
          {
            goto LABEL_150;
          }
        }

        if (v9 == v12)
        {
          goto LABEL_128;
        }
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_128:

    if (*(v6 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMR);
      v141 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v141 = MEMORY[0x277D84F98];
    }

    v89 = v165;
    v184 = v141;
    v142 = v163;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, 1, &v184, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
    v9 = v142;
    if (v142)
    {
      break;
    }

    v143 = v184;
    if (v89 >> 62)
    {
      v144 = __CocoaSet.count.getter();
      if (!v144)
      {
LABEL_168:

        v149 = MEMORY[0x277D84F90];
LABEL_169:
        v151 = v173;
        v152 = v172;
        *&v3[OBJC_IVAR___SGGraph_edges] = v149;
        v186.receiver = v3;
        v186.super_class = ObjectType;
        v3 = objc_msgSendSuper2(&v186, sel_init, v163);
        v153 = OBJC_IVAR___SGGraph_nodes;
        swift_beginAccess();
        v154 = *&v3[v153];
        if (v154 >> 62)
        {
          goto LABEL_184;
        }

        for (i = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
        {
          v3 = v3;

          if (!i)
          {
            break;
          }

          v156 = 0;
          ObjectType = (v154 & 0xC000000000000001);
          v157 = v154;
          v158 = v154 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (ObjectType)
            {
              v154 = i;
              v159 = MEMORY[0x266772030](v156, v157);
            }

            else
            {
              if (v156 >= *(v158 + 16))
              {
                goto LABEL_183;
              }

              v154 = i;
              v159 = *(v157 + 8 * v156 + 32);
            }

            v160 = v159;
            v152 = v156 + 1;
            if (__OFADD__(v156, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v156;
            i = v154;
            v161 = v152 == v154;
            v151 = v173;
            v152 = v172;
            if (v161)
            {
              goto LABEL_181;
            }
          }

          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          ;
        }

LABEL_181:

        (*(v151 + 8))(v176, v152);
        __swift_destroy_boxed_opaque_existential_1Tm(v181);

        return v3;
      }
    }

    else
    {
      v144 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v144)
      {
        goto LABEL_168;
      }
    }

    v184 = v121;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v144 < 0)
    {
      __break(1u);
LABEL_186:

      __break(1u);
LABEL_187:

      v162 = v163;
      goto LABEL_189;
    }

    v12 = 0;
    v180 = v89 & 0xC000000000000001;
    v43 = &v193;
    v179 = v89 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v145 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v180)
      {
        v146 = MEMORY[0x266772030](v12, v89);
      }

      else
      {
        if (v12 >= *(v179 + 16))
        {
          goto LABEL_160;
        }

        v146 = *(v89 + 8 * v12 + 32);
      }

      v147 = v146;
      v192 = v146;
      closure #7 in SGGraph.init(from:)(&v192, v166, v143, &v187, v183);
      v9 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v148 = *(v184 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v89 = v165;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v12;
      if (v145 == v144)
      {

        v149 = v184;
        goto LABEL_169;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
  }

  v162 = v142;
LABEL_189:

  __break(1u);
  return result;
}

uint64_t closure #7 in SGGraph.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v8 = 0xD000000000000012;
  v9 = *a1;
  v10 = OBJC_IVAR___SGEdge_to;
  v11 = (*(*a1 + OBJC_IVAR___SGEdge_to) + OBJC_IVAR___SGInput_attachment);
  swift_beginAccess();
  v12 = v11[1];
  v13 = "Invalid uniform type: ";
  if (v12)
  {
    v42 = a5;
    v43 = a3;
    v44 = a4;
    v14 = *v11;
    v15 = OBJC_IVAR___SGEdge_from;
    v16 = (*(v9 + OBJC_IVAR___SGEdge_from) + OBJC_IVAR___SGOutput_attachment);
    swift_beginAccess();
    v17 = v16[1];
    if (!v17)
    {
      v8 = 0xD00000000000001ELL;
LABEL_13:
      a4 = v44;
      goto LABEL_14;
    }

    v18 = *v16;

    MEMORY[0x266771550](58, 0xE100000000000000);
    v19 = (*(v9 + v10) + OBJC_IVAR___SGInput_name);
    v21 = *v19;
    v20 = v19[1];

    MEMORY[0x266771550](v21, v20);

    v46 = v18;
    MEMORY[0x266771550](58, 0xE100000000000000);
    v22 = (*(v9 + v15) + OBJC_IVAR___SGOutput_name);
    v24 = *v22;
    v23 = v22[1];

    MEMORY[0x266771550](v24, v23);

    if (*(a2 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v12);
      v27 = v26;

      if ((v27 & 1) != 0 && *(v43 + 16))
      {
        v28 = *(*(a2 + 56) + 8 * v25);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v17);
        v31 = v30;

        if (v31)
        {
          v32 = *(*(v43 + 56) + 8 * v29);
          v33 = type metadata accessor for SGEdge();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR___SGEdge_from] = v32;
          *&v34[OBJC_IVAR___SGEdge_to] = v28;
          v47.receiver = v34;
          v47.super_class = v33;
          v35 = v32;
          v36 = v28;
          v37 = v35;
          v38 = objc_msgSendSuper2(&v47, sel_init);
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          swift_beginAccess();
          specialized OrderedSet._append(_:)(v48);
          swift_endAccess();

          result = outlined destroy of [Input](v48, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
          *v42 = v38;
          return result;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:
    v13 = "Unable to decode IO attachment";
    goto LABEL_13;
  }

  v8 = 0xD00000000000001ELL;
LABEL_14:
  lazy protocol witness table accessor for type APIError and conformance APIError();
  v40 = swift_allocError();
  *v41 = v8;
  *(v41 + 8) = v13 | 0x8000000000000000;
  *(v41 + 16) = 14;
  result = swift_willThrow();
  *a4 = v40;
  return result;
}

void SGGraph.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR___SGGraph_name);
  v12 = *(v3 + OBJC_IVAR___SGGraph_name + 8);
  v37 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    type metadata accessor for SGError();
    v29 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v13 = OBJC_IVAR___SGGraph_inputs;
    swift_beginAccess();
    v36 = *(v3 + v13);
    LOBYTE(v35) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type [SGInput] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = OBJC_IVAR___SGGraph_outputs;
    swift_beginAccess();
    v35 = *(v3 + v14);
    LOBYTE(v38) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph8SGOutputCGMd, &_sSay11ShaderGraph8SGOutputCGMR);
    lazy protocol witness table accessor for type [SGOutput] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = OBJC_IVAR___SGGraph_nodes;
    swift_beginAccess();
    v16 = *(v3 + v15);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 2)
      {
LABEL_4:
        v33 = v16 >> 62;
        if ((v16 & 0xC000000000000001) == 0 || v17 == 2)
        {

          if (!v33)
          {
LABEL_9:
            v16 &= 0xFFFFFFFFFFFFFF8uLL;
            v20 = v16 + 32;
            v17 = (2 * v17) | 1;
            v21 = 2;
            goto LABEL_12;
          }
        }

        else
        {
          type metadata accessor for SGNode();

          v18 = 2;
          do
          {
            v19 = v18 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v18);
            v18 = v19;
          }

          while (v17 != v19);
          if (!v33)
          {
            goto LABEL_9;
          }
        }

        v16 = _CocoaArrayWrapper.subscript.getter();
        v20 = v22;
        v21 = v23;
        v17 = v24;
LABEL_12:
        swift_endAccess();
        if ((v17 & 1) == 0)
        {
LABEL_13:
          specialized _copyCollectionToContiguousArray<A>(_:)(v16, v20, v21, v17);
          v26 = v25;
          goto LABEL_20;
        }

        v32 = v20;
        v33 = v21;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          swift_unknownObjectRelease();
          v27 = MEMORY[0x277D84F90];
        }

        v28 = *(v27 + 16);

        if (!__OFSUB__(v17 >> 1, v33))
        {
          if (v28 == (v17 >> 1) - v33)
          {
            v26 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v26)
            {
LABEL_21:
              v35 = v26;
              LOBYTE(v38) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
              lazy protocol witness table accessor for type [SGNode] and conformance <A> [A]();
              KeyedEncodingContainer.encode<A>(_:forKey:)();

              v30 = OBJC_IVAR___SGGraph_edges;
              swift_beginAccess();
              v38 = *(v3 + v30);
              v34 = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
              lazy protocol witness table accessor for type [SGEdge] and conformance <A> [A]();
              KeyedEncodingContainer.encode<A>(_:forKey:)();
              (*(v6 + 8))(v9, v5);
              return;
            }

            v26 = MEMORY[0x277D84F90];
LABEL_20:
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        swift_unknownObjectRelease();
        v20 = v32;
        v21 = v33;
        goto LABEL_13;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v31 = __CocoaSet.count.getter();
    if (v31 < 2)
    {
      __break(1u);
    }

    else
    {
      v17 = v31;
      if (__CocoaSet.count.getter() >= 2)
      {
        if (__CocoaSet.count.getter() >= v17)
        {
          goto LABEL_4;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

uint64_t SGGraph.bodyNodes.getter()
{
  v1 = OBJC_IVAR___SGGraph_nodes;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 2)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v4 = result;
    result = __CocoaSet.count.getter();
    if (result < 2)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    result = __CocoaSet.count.getter();
    if (result >= v4)
    {
      goto LABEL_3;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 < 2)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) == 0 || v4 == 2)
  {
  }

  else
  {
    type metadata accessor for SGNode();

    v6 = 2;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (v4 != v7);
  }

  if (v3 >> 62)
  {

    v8 = _CocoaArrayWrapper.subscript.getter();
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  swift_endAccess();
  return v8;
}

id SGGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGGraph@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SGGraph.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.connect(outputInputPairs:)(Swift::OpaquePointer_optional outputInputPairs)
{
  if (outputInputPairs.value._rawValue)
  {
    v2 = v1;
    rawValue = outputInputPairs.value._rawValue;
    v4 = outputInputPairs.value._rawValue & 0xFFFFFFFFFFFFFF8;
    if (outputInputPairs.value._rawValue >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((outputInputPairs.value._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); (i & 1) == 0; i = __CocoaSet.count.getter())
    {
      if (i < 2)
      {
        v6 = 0x8000000265F33120;
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        v8 = 0xD000000000000032;
        goto LABEL_38;
      }

      v10 = 0;
      v11 = rawValue & 0xC000000000000001;
      while (1)
      {
        v23 = (rawValue + 8 * v10);
        if (v11)
        {
          MEMORY[0x266772030](v10, rawValue);
          goto LABEL_12;
        }

        if (v10 < 0)
        {
          break;
        }

        if (v10 >= *(v4 + 16))
        {
          goto LABEL_35;
        }

        v12 = *(rawValue + 8 * v10 + 32);
        swift_unknownObjectRetain();
LABEL_12:
        type metadata accessor for SGOutput();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          _StringGuts.grow(_:)(44);
          MEMORY[0x266771550](0xD00000000000001ALL, 0x8000000265F330E0);
          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v18);

          MEMORY[0x266771550](0x6F66207475622027, 0xED00002720646E75);
          if (v11)
          {
            MEMORY[0x266772030](v10, rawValue);
          }

          else
          {
            v20 = *(v23 + 4);
            swift_unknownObjectRetain();
          }

          _print_unlocked<A, B>(_:_:)();
          swift_unknownObjectRelease();
          MEMORY[0x266771550](39, 0xE100000000000000);
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v7 = 0;
          *(v7 + 8) = 0xE000000000000000;
          v9 = 6;
          goto LABEL_39;
        }

        v14 = v13;
        if (v10 + 1 >= i)
        {
          goto LABEL_33;
        }

        if (v11)
        {
          MEMORY[0x266772030]();
        }

        else
        {
          if (v10 < 0)
          {
            __break(1u);
LABEL_41:
            __break(1u);
            return;
          }

          if (v10 + 1 >= *(v4 + 16))
          {
            goto LABEL_41;
          }

          v15 = *(v23 + 5);
          swift_unknownObjectRetain();
        }

        type metadata accessor for SGInput();
        v16 = swift_dynamicCastClass();
        if (!v16)
        {
          swift_unknownObjectRelease();
          _StringGuts.grow(_:)(43);
          MEMORY[0x266771550](0xD000000000000019, 0x8000000265F33100);
          v19 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v19);

          MEMORY[0x266771550](0x6F66207475622027, 0xED00002720646E75);
          if ((rawValue & 0xC000000000000001) != 0)
          {
            MEMORY[0x266772030](v10 + 1, rawValue);
          }

          else
          {
            v21 = *(v23 + 5);
            swift_unknownObjectRetain();
          }

          _print_unlocked<A, B>(_:_:)();
          swift_unknownObjectRelease();
          MEMORY[0x266771550](39, 0xE100000000000000);
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v22 = 0;
          *(v22 + 8) = 0xE000000000000000;
          *(v22 + 16) = 7;
          swift_willThrow();
LABEL_33:
          swift_unknownObjectRelease();
          return;
        }

        v17 = v16;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        SGGraph.connect(_:to:)(v14, v17);
        if (v2)
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease_n();
          return;
        }

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease_n();
        v10 += 2;
        v11 = rawValue & 0xC000000000000001;
        if (v10 >= i)
        {
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v6 = 0x8000000265F330A0;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    v8 = 0xD00000000000003BLL;
LABEL_38:
    *v7 = v8;
    *(v7 + 8) = v6;
    v9 = 5;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v7 = xmmword_265F26E50;
    v9 = 1;
  }

LABEL_39:
  *(v7 + 16) = v9;
  swift_willThrow();
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t SGGraph.node(containing:)(uint64_t a1, void *a2)
{
  v2 = (a1 + *a2);
  swift_beginAccess();
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;

  v5 = SGGraph.node(named:)(v4, v3);

  return v5;
}

uint64_t SGGraph.node(connectedTo:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = (*(Strong + OBJC_IVAR___SGEdge_from) + OBJC_IVAR___SGOutput_attachment);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = v1;

    v6 = SGGraph.node(named:)(v4, v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t closure #1 in SGGraph.connectedUpstreamSubgraph(rootedAt:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized OrderedSet._append(_:)(a1);
  v5 = *&a1[OBJC_IVAR___SGNode_inputs];
  v16 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x266772030](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    ++v7;
    if (Strong)
    {
      MEMORY[0x266771770]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v16;
      v7 = v11;
    }
  }

  specialized Sequence.forEach(_:)(v8, a4);
}

uint64_t SGGraph.nodesUpstreamOf(node:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SGNode_inputs);
  v15 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_22:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v14 = result;
    for (i = v3; ; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266772030](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_6:
      if (v3 == v2)
      {
        return v14;
      }
    }

    v9 = OBJC_IVAR___SGEdge_from;
    v10 = Strong;
    swift_beginAccess();
    v11 = *&v10[v9];
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();

    if (!v12)
    {
      goto LABEL_6;
    }

    MEMORY[0x266771770]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v15;
  }

  while (v3 != v2);
  return result;
}

void *TopologicalSort.Element.nodeGraphCallNode.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TopologicalSort.Element.nodeGraphCallElementIndex.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t TopologicalSort.Element.nodeGraphCallElementIndex.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TopologicalSort.Element.init(node:graph:nodeGraphCallNode:nodeGraphCallElementIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

id TopologicalSort.rootElement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v5 = *(v1 + 24);
  *(a1 + 16) = v5;
  v9 = v5;
  *(a1 + 32) = v4;
  v6 = v2;
  v7 = v3;

  return v9;
}

__n128 TopologicalSort.init(_:root:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3 & 1;
  return result;
}

uint64_t closure #1 in SGGraph.topologicalSort()(void *a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *a3;
    v9 = a2;
    v10 = a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    *(v8 + 16) = v13 + 1;
    v14 = v8 + 40 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v7;
    *(v14 + 48) = a2;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
  }

  else
  {
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v15 = 6;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x8000000000000000;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t inboundEdgeIterator #1 (for:) in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(uint64_t a1, uint64_t (*a2)(void), unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(a1 + OBJC_IVAR___SGNode_inputs);
    v38 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_44;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v37 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v11 = MEMORY[0x266772030](v8, v6);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_41;
          }

          v11 = *(v6 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v7 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        if (a2(v11))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v9;
          v15 = v7;
          v16 = v6;
          v17 = a2;
          v18 = a3;
          v19 = *(v38 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          a3 = v18;
          a2 = v17;
          v6 = v16;
          v7 = v15;
          v9 = v14;
          v10 = v37;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v8;
      }

      while (v13 != v7);
      v20 = v38;
      v39 = MEMORY[0x277D84F90];
      if (v38 < 0)
      {
LABEL_45:
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
          goto LABEL_46;
        }

LABEL_25:
        a3 = v20 & 0xC000000000000001;
        v25 = MEMORY[0x277D84F90];
        v6 = 0;
        if ((v20 & 0xC000000000000001) != 0)
        {
LABEL_39:
          v26 = MEMORY[0x266772030](v6, v20);
          goto LABEL_32;
        }

        while (1)
        {
          if (v6 >= *(v20 + 16))
          {
            goto LABEL_43;
          }

          v26 = *(v20 + 8 * v6 + 32);
LABEL_32:
          v27 = v26;
          v28 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + OBJC_IVAR___SGEdge_from);

            swift_beginAccess();
            v32 = swift_unknownObjectWeakLoadStrong();

            if (v32)
            {
              MEMORY[0x266771770](v33);
              if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v34 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v25 = v39;
              if (v28 == a2)
              {
                goto LABEL_47;
              }

              v6 = v28;
              if (a3)
              {
                goto LABEL_39;
              }

              continue;
            }
          }

          else
          {
          }

          ++v6;
          if (v28 == a2)
          {
            goto LABEL_47;
          }

          if (a3)
          {
            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
      v39 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }
    }

    if ((v20 & 0x4000000000000000) != 0)
    {
      goto LABEL_45;
    }

    a2 = *(v20 + 16);
    if (a2)
    {
      goto LABEL_25;
    }

LABEL_46:
    v25 = MEMORY[0x277D84F90];
LABEL_47:
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_265D7D000, v22, v23, "Node isn't contained in a graph.", v24, 2u);
      MEMORY[0x266773120](v24, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v25;
}

uint64_t closure #1 in mapUniforms(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v4 + 1;
    *a2 = v4;
    *(a2 + 8) = 0;
  }

  return result;
}

id createCustomUniformsType(graph:textureAssignments:)(uint64_t a1, uint64_t a2)
{
  result = SGGraph.createCustomUniformsType(named:textureAssignments:)(0x736D726F66696E55, 0xE800000000000000, a2);
  v4 = result;
  if (!v2)
  {
    v5 = type metadata accessor for SGPropertyDescription();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___SGPropertyDescription_name];
    *v7 = 0x736D726F66696E55;
    v7[1] = 0xE800000000000000;
    *&v6[OBJC_IVAR___SGPropertyDescription_type] = v4;
    v6[OBJC_IVAR___SGPropertyDescription_visible] = 1;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

uint64_t SGGraph.createCustomUniformsType(named:textureAssignments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = OBJC_IVAR___SGNode_outputs;
  v80 = *(v3 + OBJC_IVAR___SGGraph_argumentsNode);
  v5 = *(v80 + OBJC_IVAR___SGNode_outputs);
  v96 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v33)
  {
    v78 = a3;

    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    v84 = v5 & 0xFFFFFFFFFFFFFF8;
    v86 = v5 & 0xC000000000000001;
    v75 = v5;
    v81 = i;
    v82 = (v5 + 32);
    v5 = &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR;
    while (1)
    {
      if (v86)
      {
        v10 = MEMORY[0x266772030](v8, v75);
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v8 >= *(v84 + 16))
        {
          goto LABEL_43;
        }

        v10 = *&v82[8 * v8];
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          goto LABEL_42;
        }
      }

      v93 = v10;
      v12 = &v10[OBJC_IVAR___SGOutput__edges];
      swift_beginAccess();
      v13 = *v12;
      v14 = *(v12 + 1);
      v102 = v7;
      v15 = *(v14 + 16);
      if (v15)
      {
        break;
      }

LABEL_19:
      if (v7 >> 62)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v96 + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v7 = MEMORY[0x277D84F90];
      if (v8 == i)
      {
        v21 = v96;
        goto LABEL_29;
      }
    }

    v89 = v8;
    v16 = v14 + 32;

    v17 = 0;
    while (v17 < *(v14 + 16))
    {
      outlined init with copy of WeakBox<SGEdge>(v16, &v103);
      Strong = swift_unknownObjectWeakLoadStrong();
      v19 = outlined destroy of [Input](&v103, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      if (Strong)
      {
        MEMORY[0x266771770](v19);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v102;
      }

      ++v17;
      v16 += 8;
      if (v15 == v17)
      {

        i = v81;
        v8 = v89;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a3;
    v33 = __CocoaSet.count.getter();
    a3 = v32;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:

  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_46:

    v88 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v7);

    v34 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v35 = *(v78 + 16);
    if (v35)
    {
      v96 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v34 = v96;
      v36 = (v78 + 40);
      do
      {
        v38 = *(v36 - 1);
        v37 = *v36;
        v39 = v36[1];
        v40 = *(v36 + 32);
        v96 = v34;
        v42 = *(v34 + 2);
        v41 = *(v34 + 3);

        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v34 = v96;
        }

        *(v34 + 2) = v42 + 1;
        v43 = &v34[48 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v37;
        *(v43 + 6) = v39;
        *(v43 + 7) = MEMORY[0x277D84F90];
        v43[64] = v40;
        *(v43 + 9) = 0;
        v36 += 6;
        --v35;
      }

      while (v35);
    }

    specialized Array.append<A>(contentsOf:)(v34);
    v44 = *(v80 + v79);
    if (v44 >> 62)
    {
      goto LABEL_82;
    }

    for (j = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = __CocoaSet.count.getter())
    {
      v45 = v92;

      v46 = MEMORY[0x277D84F90];
      if (j)
      {
        v47 = 0;
        v85 = v44 & 0xFFFFFFFFFFFFFF8;
        v87 = v44 & 0xC000000000000001;
        v83 = v44;
        while (1)
        {
          if (v87)
          {
            v49 = MEMORY[0x266772030](v47, v44);
          }

          else
          {
            if (v47 >= *(v85 + 16))
            {
              goto LABEL_79;
            }

            v49 = *(v44 + 8 * v47 + 32);
          }

          v50 = v49;
          v51 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          v101 = v49;
          closure #3 in SGGraph.createCustomUniformsType(named:textureAssignments:)(&v101, v88, &v96);

          if (v97)
          {
            v94 = v97;
            v92 = v45;
            v52 = v96;
            v54 = v98;
            v53 = v99;
            v55 = v100;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
            }

            v57 = *(v46 + 2);
            v56 = *(v46 + 3);
            v58 = v94;
            if (v57 >= v56 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v46);
              v58 = v94;
              v46 = v59;
            }

            *(v46 + 2) = v57 + 1;
            v48 = &v46[48 * v57];
            *(v48 + 4) = v52;
            *(v48 + 40) = v58;
            *(v48 + 7) = v54;
            v48[64] = v53 & 1;
            *(v48 + 9) = v55;
            v45 = v92;
            v44 = v83;
          }

          ++v47;
          if (v51 == j)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
      }

      else
      {
LABEL_67:

        specialized Array.append<A>(contentsOf:)(v46);
        v96 = v103;
        v88 = v103;

        v4 = v45;
        specialized MutableCollection<>.sort(by:)(&v96, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
        if (v45)
        {
          goto LABEL_84;
        }

        specialized MutableCollection<>.sort(by:)(&v96, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

        v60 = v96;
        v61 = *(v96 + 2);
        if (!v61)
        {

          v44 = MEMORY[0x277D84F90];
LABEL_77:
          type metadata accessor for MetalDataType.Struct();
          swift_allocObject();

          v71 = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, a1, a2, v44);
          v72 = objc_allocWithZone(type metadata accessor for SGTypeDescription());
          v73 = specialized SGTypeDescription.init(_:)(v71);

          return v73;
        }

        v96 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61, 0);
        v62 = 0;
        v44 = v96;
        v92 = v60;
        v95 = *(v60 + 2);
        v63 = v60 + 64;
        v91 = v61;
        while (v95 != v62)
        {
          if (v62 >= *(v60 + 2))
          {
            goto LABEL_81;
          }

          v64 = *(v63 - 4);
          v65 = *(v63 - 3);
          v66 = *(v63 - 2);
          v67 = *v63;
          v96 = v44;
          v69 = *(v44 + 16);
          v68 = *(v44 + 24);

          if (v69 >= v68 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
            v44 = v96;
          }

          *(v44 + 16) = v69 + 1;
          v70 = v44 + 48 * v69;
          *(v70 + 72) = v62;
          *(v70 + 32) = v64;
          *(v70 + 40) = v65;
          *(v70 + 48) = v66;
          *(v70 + 56) = MEMORY[0x277D84F90];
          *(v70 + 64) = v67;
          v63 += 48;
          ++v62;
          v60 = v92;
          if (v91 == v62)
          {

            goto LABEL_77;
          }
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_46;
  }

LABEL_32:
  v96 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v7 = v96;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x266772030](v23, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = &v24[OBJC_IVAR___SGOutput_name];
      swift_beginAccess();
      v28 = *v26;
      v27 = *(v26 + 1);

      v96 = v7;
      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v7 = v96;
      }

      ++v23;
      *(v7 + 16) = v30 + 1;
      v31 = (v7 + 16 * v30);
      *(v31 + 4) = v28;
      *(v31 + 5) = v27;
    }

    while (v22 != v23);
    goto LABEL_46;
  }

  __break(1u);
LABEL_84:

  __break(1u);
  return result;
}

double closure #3 in SGGraph.createCustomUniformsType(named:textureAssignments:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = (*a1 + OBJC_IVAR___SGOutput_name);
  if (specialized Set.contains(_:)(*v5, v5[1], a2))
  {
    v6 = OBJC_IVAR___SGOutput_type;
    swift_beginAccess();
    v7 = *(v4 + v6);
    if (v7 != 13)
    {
      v8 = SGDataType.metalDataType.getter(v7);
      if (v8)
      {
        v9 = v5[1];
        v10 = MEMORY[0x277D84F90];
        *a3 = *v5;
        *(a3 + 8) = v9;
        *(a3 + 16) = v8;
        *(a3 + 24) = v10;
        *(a3 + 32) = xmmword_265F23D80;

        return result;
      }

      _StringGuts.grow(_:)(24);

      v20[0] = 0xD000000000000016;
      v20[1] = 0x8000000265F33240;
      v12 = *(v4 + v6);
      v13 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v13);

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v20[0] = v18;
        *v17 = 136315138;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000265F33240, v20);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_265D7D000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x266773120](v18, -1, -1);
        MEMORY[0x266773120](v17, -1, -1);
      }

      else
      {
      }
    }
  }

  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

NSString __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.createDotRepresentation()()
{
  v2 = createDotText(representing:)(v0);
  if (v1)
  {
    type metadata accessor for SGError();
    v3 = v1;
    SGError.__allocating_init(_:)(v1);
    swift_willThrow();
  }

  else
  {
    v5 = MEMORY[0x266771450](v2);

    return v5;
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 48;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 48 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(*(v9 + 16) + 60) >= *(v7 + 60))
      {
LABEL_4:
        ++a3;
        v5 += 48;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v9 + 48);
      v11 = *(v9 + 56);
      v12 = *(v9 + 72);
      result = *(v9 + 80);
      v13 = *(v9 + 88);
      v14 = *(v9 + 16);
      *(v9 + 48) = *v9;
      *(v9 + 64) = v14;
      *(v9 + 80) = *(v9 + 32);
      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v7;
      *(v9 + 24) = v12;
      *(v9 + 32) = result;
      *(v9 + 40) = v13;
      v9 -= 48;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 48 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 48);
      v14 = *(v12 + 72);
      v15 = *(v12 + 80);
      v16 = *(v12 + 88);
      v17 = *(v12 + 56);
      v18 = *(v12 + 16);
      *(v12 + 48) = *v12;
      *(v12 + 64) = v18;
      *(v12 + 80) = *(v12 + 32);
      *v12 = result;
      *(v12 + 8) = v17;
      *(v12 + 24) = v14;
      v10 = v17;
      *(v12 + 32) = v15;
      *(v12 + 40) = v16;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 40);
      v12 = result == *(*v11 + 40) && *(v9 + 48) == *(*v11 + 48);
      if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v7 = *v96;
    if (!*v96)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v91 = *(v9 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = *&v9[16 * v91];
        v93 = *&v9[16 * v91 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v92), (*a3 + 48 * *&v9[16 * v91 + 16]), (*a3 + 48 * v93), v7);
        if (v5)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v91 - 2 >= *(v9 + 2))
        {
          goto LABEL_114;
        }

        v94 = &v9[16 * v91];
        *v94 = v92;
        *(v94 + 1) = v93;
        result = specialized Array.remove(at:)(v91 - 1);
        v91 = *(v9 + 2);
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *a3 + 48 * v10;
      v12 = *(*(*a3 + 48 * v8 + 16) + 60);
      v13 = *(*(v11 + 16) + 60);
      v14 = v10 + 2;
      v15 = (v11 + 112);
      v16 = v12;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 6;
        v18 = (v13 < v12) ^ (v16 >= *(v17 + 60));
        ++v14;
        v16 = *(v17 + 60);
        if ((v18 & 1) == 0)
        {
          v8 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v19 = 48 * v8 - 24;
        v20 = 48 * v10 + 40;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v32 + v20);
            v24 = *(v32 + v20 - 40);
            v25 = v32 + v19;
            v26 = *(v23 - 2);
            v27 = *(v23 - 8);
            v28 = *v23;
            v29 = *(v23 - 2);
            v30 = *(v25 + 8);
            v31 = *(v25 - 8);
            *(v23 - 5) = *(v25 - 24);
            *(v23 - 3) = v31;
            *(v23 - 1) = v30;
            *(v25 - 24) = v24;
            *(v25 - 16) = v29;
            *v25 = v26;
            *(v25 + 8) = v27;
            *(v25 + 16) = v28;
          }

          ++v22;
          v19 -= 48;
          v20 += 48;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v10;
    *(v48 + 5) = v8;
    v49 = *v96;
    if (!*v96)
    {
      goto LABEL_125;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 4);
          v52 = *(v9 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = &v9[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_107;
          }

          v73 = &v9[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v77 = &v9[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_71:
        if (v72)
        {
          goto LABEL_106;
        }

        v80 = &v9[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_109;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_78:
        v7 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v88 = *&v9[16 * v7 + 32];
        v89 = *&v9[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v88), (*a3 + 48 * *&v9[16 * v50 + 32]), (*a3 + 48 * v89), v49);
        if (v5)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v90 = &v9[16 * v7];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        result = specialized Array.remove(at:)(v50);
        v47 = *(v9 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v9[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = &v9[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_108;
      }

      if (v66 >= v58)
      {
        v84 = &v9[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_112;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v33 = *a3;
  v34 = *a3 + 48 * v8 - 48;
  v35 = v10 - v8;
LABEL_30:
  v36 = *(v33 + 48 * v8 + 16);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    if (*(*(v38 + 16) + 60) >= *(v36 + 60))
    {
LABEL_29:
      ++v8;
      v34 += 48;
      --v35;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v33)
    {
      break;
    }

    v39 = *(v38 + 48);
    v40 = *(v38 + 56);
    v41 = *(v38 + 72);
    v42 = *(v38 + 80);
    result = *(v38 + 88);
    v43 = *(v38 + 16);
    *(v38 + 48) = *v38;
    *(v38 + 64) = v43;
    *(v38 + 80) = *(v38 + 32);
    *v38 = v39;
    *(v38 + 8) = v40;
    *(v38 + 16) = v36;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = result;
    v38 -= 48;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v108 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v108 = *v108;
    if (!v108)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v99 = v8 + 16;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (1)
      {
        v101 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v102 = &v8[16 * v100];
        v5 = *v102;
        v103 = &v99[2 * v100];
        v104 = v103[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((v101 + 48 * *v102), (v101 + 48 * *v103), (v101 + 48 * v104), v108);
        if (v4)
        {
        }

        if (v104 < v5)
        {
          goto LABEL_129;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_130;
        }

        *v102 = v5;
        *(v102 + 1) = v104;
        v105 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_131;
        }

        v100 = *v99 - 1;
        result = memmove(v103, v103 + 2, 16 * v105);
        *v99 = v100;
        v5 = a3;
        if (v100 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 48 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 48 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 56);
        v17 = v16;
        do
        {
          result = v16[5];
          v19 = v17[6];
          v17 += 6;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 48 * v7 - 24;
          v22 = 48 * v9 + 40;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v34 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v34 + v22);
              v26 = *(v34 + v22 - 40);
              v27 = v34 + v21;
              v28 = *(v25 - 2);
              v29 = *(v25 - 8);
              v30 = *v25;
              v31 = *(v25 - 2);
              v32 = *(v27 + 8);
              v33 = *(v27 - 8);
              *(v25 - 5) = *(v27 - 24);
              *(v25 - 3) = v33;
              *(v25 - 1) = v32;
              *(v27 - 24) = v26;
              *(v27 - 16) = v31;
              *v27 = v28;
              *(v27 + 8) = v29;
              *(v27 + 16) = v30;
            }

            ++v24;
            v21 -= 48;
            v22 += 48;
          }

          while (v24 < v23);
        }
      }
    }

    v35 = v5[1];
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v35)
        {
          v36 = v5[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v36)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v53 = *(v8 + 2);
    v52 = *(v8 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v54;
    v55 = &v8[16 * v53];
    *(v55 + 4) = v9;
    *(v55 + 5) = v7;
    v56 = *v108;
    if (!*v108)
    {
      goto LABEL_142;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v8 + 4);
          v59 = *(v8 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_74:
          if (v61)
          {
            goto LABEL_120;
          }

          v74 = &v8[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_123;
          }

          v80 = &v8[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_127;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v84 = &v8[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_88:
        if (v79)
        {
          goto LABEL_122;
        }

        v87 = &v8[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_125;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_95:
        v95 = v57 - 1;
        if (v57 - 1 >= v54)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v96 = *&v8[16 * v95 + 32];
        v97 = *&v8[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 48 * v96), (*v5 + 48 * *&v8[16 * v57 + 32]), (*v5 + 48 * v97), v56);
        if (v4)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v95 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v8[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        result = specialized Array.remove(at:)(v57);
        v54 = *(v8 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v8[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_118;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_119;
      }

      v69 = &v8[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_121;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_124;
      }

      if (v73 >= v65)
      {
        v91 = &v8[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_128;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v37 = *v5;
  v38 = *v5 + 48 * v7 - 48;
  v106 = v9;
  v39 = v9 - v7;
LABEL_43:
  v40 = (v37 + 48 * v7);
  v41 = *v40;
  v42 = v40[1];
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = v41 == *v44 && v42 == *(v44 + 8);
    if (v45 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v38 += 48;
      --v39;
      if (v7 != v36)
      {
        goto LABEL_43;
      }

      v7 = v36;
      v5 = a3;
      v9 = v106;
      goto LABEL_54;
    }

    if (!v37)
    {
      break;
    }

    v41 = *(v44 + 48);
    v46 = *(v44 + 72);
    v47 = *(v44 + 80);
    v48 = *(v44 + 88);
    v49 = *(v44 + 56);
    v50 = *(v44 + 16);
    *(v44 + 48) = *v44;
    *(v44 + 64) = v50;
    *(v44 + 80) = *(v44 + 32);
    *v44 = v41;
    *(v44 + 8) = v49;
    *(v44 + 24) = v46;
    v42 = v49;
    *(v44 + 32) = v47;
    *(v44 + 40) = v48;
    v44 -= 48;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = specialized Array.remove(at:)(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 40);
      if (result == *(v11 + 40) && *(v10 + 48) == *(v11 + 48))
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 40);
          if (result == *(v15 + 40) && *(*v14 + 48) == *(v15 + 48))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = (v8 + a4);
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = specialized Array.remove(at:)(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 40) == *(*v30 + 40) && *(v28 + 48) == *(*v30 + 48);
    if (v31 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(*(v4 + 2) + 60) < *(*(v6 + 2) + 60))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 48;
    do
    {
      v17 = v5 + 48;
      if (*(*(v6 - 4) + 60) < *(*(v12 - 4) + 60))
      {
        v21 = v6 - 48;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 48;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 48;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = *(v18 - 6);
      v20 = *(v18 - 5);
      v18 -= 48;
      v21 = v19 == *(v6 - 6) && v20 == *(v6 - 5);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 48 != v6)
        {
          v24 = *v17;
          v25 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v25;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v5 + 48 != v12)
      {
        v22 = *v18;
        v23 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v23;
        *v5 = v22;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v26 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 40) == *(*v4 + 40) && *(*v6 + 48) == *(*v4 + 48);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 48);
      v21 = *(v19 + 40) == *(*v17 + 40) && v20 == *(*v17 + 48);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}