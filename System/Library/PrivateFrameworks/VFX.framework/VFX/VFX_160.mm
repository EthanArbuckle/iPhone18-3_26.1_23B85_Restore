uint64_t sub_1AFD3D69C(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v251 = a8;
  v270 = a7;
  v265 = a5;
  v266 = a6;
  v254 = a4;
  v253 = a3;
  v236 = a12;
  v235 = a11;
  v256 = a10;
  v250 = a9;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v226 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v249 = &v226 - v25;
  v268 = type metadata accessor for ScriptIndex();
  v26 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268, v27);
  v29 = &v226 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v226 - v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  v243 = (&v226 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v259 = &v226 - v39;
  v40 = a1[1];
  v246 = sub_1AF706D00(v40, a1);
  v234 = sub_1AF7064D0(v40, a1);
  v264 = v40;
  result = sub_1AF7069F4(v40, a1);
  v245 = result;
  v228 = v12;
  v42 = a1[11];
  v247 = a2;
  v271 = v22;
  v242 = v42;
  if (!v42)
  {
    v243 = v29;
    v136 = a1[6];
    v242 = a1[7];
    if (v136 == v242)
    {
      return result;
    }

    v137 = v18;
    v252 = type metadata accessor for MetalFunctionScript(0);
    v241 = *(*(v252 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v238 = v138;
    v237 = *(*(v138 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v240 = v139;
    v239 = *(*(v139 - 1) + 72);
    v140 = (v26 + 48);
    v261 = (v26 + 56);
    v233 = "nction for script ";
    v232 = "tal library for script ";
    v230 = 0x80000001AFF4F110;
    v231 = 0x80000001AFF4F1B0;
    v249 = v18;
    v260 = v33;
    v248 = v26 + 48;
    while (1)
    {
      v255 = v245 + v239 * v136;
      sub_1AFD53C4C(v255, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);

      v150 = sub_1AF6496EC(v136);

      if (*(a2 + 16) && (v151 = sub_1AF449D3C(v150), (v152 & 1) != 0))
      {
        v153 = (*(a2 + 56) + 8 * v151);
        v155 = *v153;
        v154 = v153[1];
      }

      else
      {

        v156 = sub_1AF6496EC(v136);

        v155 = v156;
        v154 = HIDWORD(v156);
      }

      *&v269 = v154;
      v157 = v246 + v241 * v136;
      sub_1AFB12858(v157 + *(v252 + 24), v137);
      v158 = *v140;
      v159 = (*v140)(v137, 1, v268);
      v259 = v136;
      if (v159 == 1)
      {

        v160 = sub_1AF6496EC(v136);
        v161 = v249;

        v162 = v260;
        *v260 = v160;
        v163 = v268;
        swift_storeEnumTagMultiPayload();
        if (v158(v161, 1, v163) != 1)
        {
          sub_1AFD53CA8(v161, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v162 = v260;
        sub_1AFD53D8C(v137, v260, type metadata accessor for ScriptIndex);
      }

      v164 = v243;
      sub_1AFD531F8(v162, v243, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v164, type metadata accessor for ScriptIndex);
        v166 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        *&v165 = *v164;
        v167 = *(a2 + 16);
        v267 = v165;
        if (v167)
        {
          v168 = sub_1AF449D3C(v165);
          v166 = MEMORY[0x1E69E7CC0];
          if (v170)
          {
            *&v169 = *(*(a2 + 56) + 8 * v168);
            v267 = v169;
          }
        }

        else
        {
          v166 = MEMORY[0x1E69E7CC0];
        }

        sub_1AFD53198(v162, type metadata accessor for ScriptIndex);
        *v162 = v267;
        swift_storeEnumTagMultiPayload();
      }

      v171 = v255;
      sub_1AFD531F8(v157, v255, type metadata accessor for MetalFunctionScript);
      v172 = sub_1AFAA98A4();
      v173 = v240;
      v174 = v171 + v240[9];
      *v174 = v172;
      *(v174 + 8) = 0;
      v175 = v173[10];
      v263 = 1;
      *(v171 + v175) = 1;
      *(v171 + v173[11]) = 0;
      v176 = v171 + v173[12];
      strcpy(v176, "<precompiled>");
      *(v176 + 14) = -4864;
      *(v171 + v173[13]) = v166;
      v277 = MEMORY[0x1E69E7CD0];
      v177 = *(v157 + 16);
      if (v177 < 4)
      {
        v263 = sub_1AFDFEE28();
      }

      v178 = sub_1AFAA9A50(v253, v254 & 1);
      v179 = *(v178 + 16);
      if (v179)
      {
        break;
      }

      v141 = 0;
      v142 = v166;
      v143 = v166;
LABEL_74:
      v144 = v259;
      v145 = v234 + v237 * v259;
      sub_1AFD53C4C(v145, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v255, v145, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v146 = v238;
      *(v145 + v238[15]) = 0;
      *(v145 + v146[9]) = v141;
      *(v145 + v146[10]) = v143;
      *(v145 + v146[11]) = v142;
      *(v145 + v146[12]) = 0;
      *(v145 + v146[13]) = 0;
      v147 = v145 + v146[14];
      *v147 = v253;
      *(v147 + 8) = v254 & 1;

      v148 = sub_1AF6496EC(v144);

      v274 = v146;
      v275 = &off_1F2558F90;
      v149 = sub_1AF585714(&v272);
      sub_1AFD53D18(v145, v149, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      v276 = 0;
      sub_1AF8259D0(&v272, v252, v148);
      sub_1AF967B70(v277);
      result = sub_1AFD53198(v260, type metadata accessor for ScriptIndex);
      a2 = v247;
      v140 = v248;
LABEL_75:
      v136 = v144 + 1;
      v137 = v249;
      if (v136 == v242)
      {
        return result;
      }
    }

    v141 = 0;
    v244 = v178;
    v180 = (v178 + 48);
    v181 = v155;
    v182 = v166;
    v258 = v166;
    v257 = v181 | (v269 << 32);
    v262 = v177;
    while (1)
    {
      v184 = *(v180 - 2);
      v185 = *(v180 - 1);
      LODWORD(v267) = *v180;
      *&v269 = v182;
      if (v263)
      {
        swift_bridgeObjectRetain_n();

        v186 = v259;
        v187 = sub_1AF6496EC(v259);

        v188 = sub_1AF6496EC(v186);
        v177 = v262;

        v189 = v141;
        v190 = v271;
        *v271 = v188;
        v191 = v268;
        swift_storeEnumTagMultiPayload();
        v192 = v190;
        v141 = v189;
        (*v261)(v192, 0, 1, v191);
      }

      else
      {
        v193 = v271;
        sub_1AFD531F8(v260, v271, type metadata accessor for ScriptIndex);
        (*v261)(v193, 0, 1, v268);
        swift_bridgeObjectRetain_n();
        v187 = v257;
      }

      v194 = v271;
      v195 = sub_1AFAF8B58(v184, v185, v265, v266, v187, 0x6C656E72656BuLL, 0xE600000000000000, v271);
      v197 = v196;

      sub_1AFD53CA8(v194, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v272, v195, v197);

      if (v177 >= 4)
      {
        break;
      }

      v198 = sub_1AFDFEE28();

      if (v198)
      {
        goto LABEL_104;
      }

      if (v177 == 2)
      {
        v182 = v269;
        if (v256)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_1AF4246B0(0, *(v182 + 2) + 1, 1, v182);
          }

          v206 = *(v182 + 2);
          v205 = *(v182 + 3);
          if (v206 >= v205 >> 1)
          {
            v182 = sub_1AF4246B0(v205 > 1, v206 + 1, 1, v182);
          }

          *(v182 + 2) = v206 + 1;
          v207 = &v182[24 * v206];
          *(v207 + 4) = v195;
          *(v207 + 5) = v197;
          v207[48] = v267;
          v141 = v256;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v272 = 0;
          v273 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v233 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v195, v197);

          MEMORY[0x1B2718AE0](0xD000000000000031, v232 | 0x8000000000000000);
          v218 = v272;
          v217 = v273;
          v219 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v220 = v219;
            swift_once();
            v219 = v220;
          }

          v272 = 0;
          sub_1AF0D4F18(v219, &v272, v218, v217);
        }

        goto LABEL_97;
      }

      v208 = v251;
      v182 = v269;
      if (!*(v251 + 16) || (v209 = sub_1AF419914(v195, v197), (v210 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v272 = 0;
        v273 = 0xE000000000000000;
        sub_1AFDFE218();

        v272 = 0xD000000000000022;
        v273 = v230;
        MEMORY[0x1B2718AE0](v195, v197);

        v223 = v272;
        v222 = v273;
        v224 = sub_1AFDFDA08();
        a2 = v247;
        v221 = v260;
        v140 = v248;
        if (qword_1ED731058 != -1)
        {
          goto LABEL_139;
        }

        goto LABEL_134;
      }

      v211 = v209;

      v212 = *(*(v208 + 56) + 8 * v211);
      v213 = v258;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v213 = sub_1AF42469C(0, *(v213 + 2) + 1, 1, v213);
      }

      v258 = v213;
      v215 = *(v213 + 2);
      v214 = *(v213 + 3);
      if (v215 >= v214 >> 1)
      {
        v258 = sub_1AF42469C(v214 > 1, v215 + 1, 1, v258);
      }

      v216 = v258;
      *(v258 + 2) = v215 + 1;
      *&v216[8 * v215 + 32] = v212;
      v141 = v250;
LABEL_96:

LABEL_97:
      v180 += 24;
      if (!--v179)
      {

        v143 = v258;
        v142 = v182;
        goto LABEL_74;
      }
    }

LABEL_104:
    if (!v270 || (v199 = *(v270 + 96), v200 = sub_1AFDFCEC8(), v201 = [v199 objectForKeyedSubscript_], v199, v200, !v201))
    {

LABEL_131:

      v221 = v260;
      v140 = v248;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v272 = 0;
      v273 = 0xE000000000000000;
      sub_1AFDFE218();

      v272 = 0xD000000000000025;
      v273 = v231;
      MEMORY[0x1B2718AE0](v195, v197);

      v223 = v272;
      v222 = v273;
      v224 = sub_1AFDFDA08();
      a2 = v247;
      if (qword_1ED731058 != -1)
      {
LABEL_139:
        v225 = v224;
        swift_once();
        v224 = v225;
      }

LABEL_134:
      v272 = 0;
      sub_1AF0D4F18(v224, &v272, v223, v222);

      result = sub_1AFD53198(v221, type metadata accessor for ScriptIndex);
      v144 = v259;
      goto LABEL_75;
    }

    v202 = [v201 isUndefined];

    if (v202)
    {
      goto LABEL_131;
    }

    v182 = v269;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_1AF4246B0(0, *(v182 + 2) + 1, 1, v182);
    }

    v177 = v262;
    v204 = *(v182 + 2);
    v203 = *(v182 + 3);
    if (v204 >= v203 >> 1)
    {
      v182 = sub_1AF4246B0(v203 > 1, v204 + 1, 1, v182);
    }

    *(v182 + 2) = v204 + 1;
    v183 = &v182[24 * v204];
    *(v183 + 4) = v195;
    *(v183 + 5) = v197;
    v183[48] = v267;
    v141 = v270;
    goto LABEL_96;
  }

  v43 = v249;
  v241 = a1[13];
  if (v241)
  {
    v248 = type metadata accessor for MetalFunctionScript(0);
    v240 = *(*(v248 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v233 = v44;
    v232 = *(*(v44 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v45 = 0;
    v239 = v46;
    v238 = *(*(v46 - 1) + 72);
    v47 = (v26 + 48);
    v261 = (v26 + 56);
    v231 = "nction for script ";
    v230 = "tal library for script ";
    v227 = 0x80000001AFF4F110;
    v229 = 0x80000001AFF4F1B0;
    v237 = (v26 + 48);
    while (1)
    {
      v58 = *(v242 + 8 * v45);
      v59 = v245 + v238 * v45;
      sub_1AFD53C4C(v59, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);

      v260 = v58;
      v60 = sub_1AF6496EC(v58);

      if (*(a2 + 16) && (v61 = sub_1AF449D3C(v60), (v62 & 1) != 0))
      {
        v63 = (*(a2 + 56) + 8 * v61);
        v65 = *v63;
        v64 = v63[1];
      }

      else
      {

        v66 = sub_1AF6496EC(v260);

        v65 = v66;
        v64 = HIDWORD(v66);
      }

      *&v267 = v64;
      v255 = v45;
      v67 = v246 + v240 * v45;
      sub_1AFB12858(v67 + *(v248 + 24), v43);
      v68 = *v47;
      v69 = (*v47)(v43, 1, v268);
      v252 = v59;
      if (v69 == 1)
      {

        v70 = sub_1AF6496EC(v260);

        v71 = v259;
        *v259 = v70;
        v59 = v252;
        v72 = v249;
        v73 = v268;
        swift_storeEnumTagMultiPayload();
        if (v68(v72, 1, v73) != 1)
        {
          sub_1AFD53CA8(v72, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v71 = v259;
        sub_1AFD53D8C(v43, v259, type metadata accessor for ScriptIndex);
      }

      v74 = v243;
      sub_1AFD531F8(v71, v243, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v76 = v65;
        sub_1AFD53198(v74, type metadata accessor for ScriptIndex);
        v77 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        *&v75 = *v74;
        v78 = *(a2 + 16);
        v77 = MEMORY[0x1E69E7CC0];
        v269 = v75;
        if (v78)
        {
          v79 = sub_1AF449D3C(v75);
          if (v81)
          {
            *&v80 = *(*(a2 + 56) + 8 * v79);
            v269 = v80;
          }
        }

        v76 = v65;
        sub_1AFD53198(v71, type metadata accessor for ScriptIndex);
        *v71 = v269;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v67, v59, type metadata accessor for MetalFunctionScript);
      v82 = sub_1AFAA98A4();
      v83 = v239;
      v84 = v59 + v239[9];
      *v84 = v82;
      *(v84 + 8) = 0;
      v85 = v83[10];
      v263 = 1;
      *(v59 + v85) = 1;
      *(v59 + v83[11]) = 0;
      v86 = v59 + v83[12];
      strcpy(v86, "<precompiled>");
      *(v86 + 14) = -4864;
      *(v59 + v83[13]) = v77;
      v277 = MEMORY[0x1E69E7CD0];
      v87 = *(v67 + 16);
      if (v87 < 4)
      {
        v263 = sub_1AFDFEE28();
      }

      v88 = sub_1AFAA9A50(v253, v254 & 1);
      v89 = *(v88 + 16);
      if (v89)
      {
        break;
      }

      v48 = 0;
      v49 = v77;
      v50 = v77;
LABEL_5:
      v51 = v234 + v232 * v255;
      sub_1AFD53C4C(v51, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v252, v51, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v52 = v233;
      *(v51 + *(v233 + 15)) = 0;
      *(v51 + v52[9]) = v48;
      *(v51 + v52[10]) = v50;
      *(v51 + v52[11]) = v49;
      *(v51 + v52[12]) = 0;
      *(v51 + v52[13]) = 0;
      v53 = v51 + v52[14];
      *v53 = v253;
      *(v53 + 8) = v254 & 1;

      v54 = sub_1AF6496EC(v260);

      v274 = v52;
      v275 = &off_1F2558F90;
      v55 = sub_1AF585714(&v272);
      sub_1AFD53D18(v51, v55, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      v276 = 0;
      v56 = v54;
      v57 = v255;
      sub_1AF8259D0(&v272, v248, v56);
      sub_1AF967B70(v277);
      result = sub_1AFD53198(v259, type metadata accessor for ScriptIndex);
      a2 = v247;
LABEL_6:
      v47 = v237;
      v45 = v57 + 1;
      v43 = v249;
      if (v45 == v241)
      {
        return result;
      }
    }

    *&v269 = 0;
    v244 = v88;
    v90 = (v88 + 48);
    v91 = v77;
    v258 = v77;
    v257 = v76 | (v267 << 32);
    v262 = v87;
    while (1)
    {
      v93 = *(v90 - 2);
      v94 = *(v90 - 1);
      LODWORD(v267) = *v90;
      v95 = v91;
      if (v263)
      {
        swift_bridgeObjectRetain_n();

        v96 = v260;
        v97 = sub_1AF6496EC(v260);

        v98 = sub_1AF6496EC(v96);
        v99 = v271;
        v100 = v98;

        *v99 = v100;
        v87 = v262;
        v101 = v268;
        swift_storeEnumTagMultiPayload();
        (*v261)(v99, 0, 1, v101);
      }

      else
      {
        v102 = v271;
        sub_1AFD531F8(v259, v271, type metadata accessor for ScriptIndex);
        (*v261)(v102, 0, 1, v268);
        swift_bridgeObjectRetain_n();
        v97 = v257;
      }

      v103 = v271;
      v104 = sub_1AFAF8B58(v93, v94, v265, v266, v97, 0x6C656E72656BuLL, 0xE600000000000000, v271);
      v106 = v105;

      sub_1AFD53CA8(v103, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v272, v104, v106);

      if (v87 >= 4)
      {
        break;
      }

      v107 = sub_1AFDFEE28();

      if (v107)
      {
        goto LABEL_34;
      }

      v91 = v95;
      if (v87 == 2)
      {
        if (v256)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_1AF4246B0(0, *(v95 + 2) + 1, 1, v95);
          }

          v115 = v267;
          v117 = *(v91 + 2);
          v116 = *(v91 + 3);
          if (v117 >= v116 >> 1)
          {
            v91 = sub_1AF4246B0(v116 > 1, v117 + 1, 1, v91);
          }

          *(v91 + 2) = v117 + 1;
          v118 = &v91[24 * v117];
          *(v118 + 4) = v104;
          *(v118 + 5) = v106;
          v118[48] = v115;
          *&v269 = v256;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v272 = 0;
          v273 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v231 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v104, v106);

          MEMORY[0x1B2718AE0](0xD000000000000031, v230 | 0x8000000000000000);
          v129 = v272;
          v128 = v273;
          v130 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v131 = v130;
            swift_once();
            v130 = v131;
          }

          v272 = 0;
          sub_1AF0D4F18(v130, &v272, v129, v128);
        }

        goto LABEL_27;
      }

      v119 = v251;
      if (!*(v251 + 16) || (v120 = sub_1AF419914(v104, v106), (v121 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v272 = 0;
        v273 = 0xE000000000000000;
        sub_1AFDFE218();

        v272 = 0xD000000000000022;
        v273 = v227;
        MEMORY[0x1B2718AE0](v104, v106);

        v133 = v272;
        v132 = v273;
        v134 = sub_1AFDFDA08();
        a2 = v247;
        v57 = v255;
        if (qword_1ED731058 != -1)
        {
          goto LABEL_69;
        }

        goto LABEL_64;
      }

      v122 = v120;

      v123 = *(*(v119 + 56) + 8 * v122);
      v124 = v258;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_1AF42469C(0, *(v124 + 2) + 1, 1, v124);
      }

      v258 = v124;
      v126 = *(v124 + 2);
      v125 = *(v124 + 3);
      if (v126 >= v125 >> 1)
      {
        v258 = sub_1AF42469C(v125 > 1, v126 + 1, 1, v258);
      }

      v127 = v258;
      *(v258 + 2) = v126 + 1;
      *&v127[8 * v126 + 32] = v123;
LABEL_26:

LABEL_27:
      v90 += 24;
      if (!--v89)
      {

        v48 = v269;
        v50 = v258;
        v49 = v91;
        goto LABEL_5;
      }
    }

LABEL_34:
    if (!v270 || (v108 = *(v270 + 96), v109 = sub_1AFDFCEC8(), v110 = [v108 objectForKeyedSubscript_], v108, v109, !v110))
    {

LABEL_61:

      v57 = v255;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v272 = 0;
      v273 = 0xE000000000000000;
      sub_1AFDFE218();

      v272 = 0xD000000000000025;
      v273 = v229;
      MEMORY[0x1B2718AE0](v104, v106);

      v133 = v272;
      v132 = v273;
      v134 = sub_1AFDFDA08();
      a2 = v247;
      if (qword_1ED731058 != -1)
      {
LABEL_69:
        v135 = v134;
        swift_once();
        v134 = v135;
      }

LABEL_64:
      v272 = 0;
      sub_1AF0D4F18(v134, &v272, v133, v132);

      result = sub_1AFD53198(v259, type metadata accessor for ScriptIndex);
      goto LABEL_6;
    }

    v111 = [v110 isUndefined];

    if (v111)
    {
      goto LABEL_61;
    }

    v91 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_1AF4246B0(0, *(v95 + 2) + 1, 1, v95);
    }

    v87 = v262;
    v112 = v267;
    v114 = *(v91 + 2);
    v113 = *(v91 + 3);
    if (v114 >= v113 >> 1)
    {
      v91 = sub_1AF4246B0(v113 > 1, v114 + 1, 1, v91);
    }

    *(v91 + 2) = v114 + 1;
    v92 = &v91[24 * v114];
    *(v92 + 4) = v104;
    *(v92 + 5) = v106;
    v92[48] = v112;
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1AFD3F8E8(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v160 = a3;
  v161 = a4;
  sub_1AF0D4E74();
  v159 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v158 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1AFDFC298();
  *&v162 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v10);
  v156 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v155 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v131 - v21;
  v23 = type metadata accessor for ScriptIndex();
  v170 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v131 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v140 = (&v131 - v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v153 = (&v131 - v36);
  v37 = a1[1];
  v145 = sub_1AF705FA0(v37, a1);
  v144 = sub_1AF707064(v37, a1);
  result = sub_1AF706938(v37, a1);
  v131 = v4;
  v39 = a1[11];
  v133 = a1;
  v154 = v23;
  v146 = v37;
  v139 = v39;
  if (v39)
  {
    v138 = a1[13];
    if (v138)
    {
      v137 = type metadata accessor for ShaderScript(0);
      v136 = *(*(v137 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      v40 = 0;
      v141 = v41;
      v42 = *(v41 - 8);
      v142 = (v170 + 48);
      v135 = *(v42 + 72);
      v150 = 0x80000001AFF4F1E0;
      v149 = (v170 + 56);
      v148 = (v162 + 32);
      v147 = xmmword_1AFE431C0;
      v132 = a2;
      v143 = v22;
      while (1)
      {
        v43 = v139[v40];
        v44 = a1[2];
        v45 = a1[3] + v40;
        v165 = *a1;
        v166 = v37;
        v167 = v44;
        v168 = v45;
        v169 = v43;

        if (*(v37 + 184))
        {
          break;
        }

        v47 = *(*(v37 + 168) + 4 * v43);
        v48 = *(*(v46 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v47 + 8);

        if (*(a2 + 16) && (v49 = sub_1AF449D3C(v47 | (v48 << 32)), (v50 & 1) != 0))
        {
          v51 = (*(a2 + 56) + 8 * v49);
          v52 = *v51;
          v170 = v51[1];
        }

        else
        {

          if (*(v37 + 184))
          {
            break;
          }

          v52 = *(*(v37 + 168) + 4 * v43);
          v170 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v52 + 8);
        }

        v54 = v143;
        sub_1AFB12858(v145 + v136 * v40 + *(v137 + 24), v143);
        v55 = *v142;
        v56 = (*v142)(v54, 1, v23);
        v152 = v40;
        if (v56 == 1)
        {
          v57 = v146;

          if (*(v57 + 184))
          {
            break;
          }

          v59 = *(*(v57 + 168) + 4 * v43);
          v60 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v59 + 8);

          v61 = v153;
          *v153 = v59;
          v61[1] = v60;
          swift_storeEnumTagMultiPayload();
          v62 = v143;
          if (v55(v143, 1, v23) != 1)
          {
            sub_1AFD53CA8(v62, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v61 = v153;
          sub_1AFD53D8C(v54, v153, type metadata accessor for ScriptIndex);
        }

        v63 = v140;
        sub_1AFD531F8(v61, v140, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v63, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v64 = *v63;
          v65 = *(a2 + 16);
          v162 = v64;
          if (v65)
          {
            v66 = sub_1AF449D3C(v64);
            if (v68)
            {
              *&v67 = *(*(a2 + 56) + 8 * v66);
              v162 = v67;
            }
          }

          sub_1AFD53198(v61, type metadata accessor for ScriptIndex);
          *v61 = v162;
          swift_storeEnumTagMultiPayload();
        }

        v69 = v144 + v135 * v152;
        if (!*(v69 + *(v141 + 40)) && !*(v69 + *(v141 + 44)))
        {
          v134 = sub_1AFABA41C();
          v70 = *(v134 + 2);
          if (v70)
          {
            v151 = v52 | (v170 << 32);
            v71 = (v134 + 40);
            do
            {
              *&v162 = v70;
              v72 = *(v71 - 1);
              v73 = *v71;
              v170 = v71;
              v74 = v155;
              sub_1AFD531F8(v61, v155, type metadata accessor for ScriptIndex);
              (*v149)(v74, 0, 1, v23);

              v75 = sub_1AFAF8B58(v72, v73, v160, v161, v151, 0x726564616873uLL, 0xE600000000000000, v74);
              v77 = v76;

              sub_1AFD53CA8(v74, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v163 = 0;
              v164 = 0xE000000000000000;
              sub_1AFDFE218();

              v163 = 0xD000000000000022;
              v164 = v150;
              MEMORY[0x1B2718AE0](v75, v77);

              v78 = v163;
              v79 = v164;
              v80 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v147;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v79;

              sub_1AFDFC4C8();

              v82 = v156;
              sub_1AFDFC288();
              v83 = v158;
              v84 = v159[12];
              v85 = v159[16];
              v86 = &v158[v159[20]];
              (*v148)(v158, v82, v157);
              *(v83 + v84) = v80;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v79;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v71 = (v170 + 24);
              v70 = v162 - 1;
              v61 = v153;
              v23 = v154;
            }

            while (v162 != 1);
          }

          sub_1AF8DAD40(0);
          sub_1AF8DAD7C(0);
          a2 = v132;
          a1 = v133;
        }

        result = sub_1AFD53198(v61, type metadata accessor for ScriptIndex);
        v40 = v152 + 1;
        v37 = v146;
        if (v152 + 1 == v138)
        {
          return result;
        }
      }

LABEL_69:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v143 = v15;
    v87 = a1[6];
    v140 = a1[7];
    if (v87 != v140)
    {
      v138 = a1[3] - v87;
      v137 = type metadata accessor for ShaderScript(0);
      v136 = *(*(v137 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      v141 = v88;
      v89 = *(v88 - 8);
      v142 = (v170 + 48);
      v135 = *(v89 + 72);
      v150 = 0x80000001AFF4F1E0;
      v149 = (v170 + 56);
      v148 = (v162 + 32);
      v147 = xmmword_1AFE431C0;
      v139 = v26;
      v153 = v30;
      v132 = a2;
      while (1)
      {
        v91 = a1[2];
        v165 = *a1;
        v166 = v37;
        v167 = v91;
        v168 = v138 + v87;
        v169 = v87;

        if (*(v37 + 184))
        {
          goto LABEL_69;
        }

        v93 = *(*(v37 + 168) + 4 * v87);
        v94 = *(*(v92 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v93 + 8);

        if (*(a2 + 16) && (v95 = sub_1AF449D3C(v93 | (v94 << 32)), (v96 & 1) != 0))
        {
          v97 = (*(a2 + 56) + 8 * v95);
          v98 = *v97;
          v170 = v97[1];
        }

        else
        {

          if (*(v37 + 184))
          {
            goto LABEL_69;
          }

          v98 = *(*(v37 + 168) + 4 * v87);
          v170 = *(*(v99 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v98 + 8);
        }

        v100 = v143;
        sub_1AFB12858(v145 + v136 * v87 + *(v137 + 24), v143);
        v101 = *v142;
        v102 = (*v142)(v100, 1, v23);
        v152 = v87;
        if (v102 == 1)
        {

          if (*(v37 + 184))
          {
            goto LABEL_69;
          }

          v104 = *(*(v37 + 168) + 4 * v87);
          v105 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v104 + 8);

          v106 = v153;
          *v153 = v104;
          v106[1] = v105;
          v37 = v146;
          swift_storeEnumTagMultiPayload();
          if (v101(v143, 1, v23) != 1)
          {
            sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v106 = v153;
          sub_1AFD53D8C(v100, v153, type metadata accessor for ScriptIndex);
        }

        v107 = v139;
        sub_1AFD531F8(v106, v139, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v107, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v108 = *v107;
          v109 = *(a2 + 16);
          v162 = v108;
          if (v109)
          {
            v110 = sub_1AF449D3C(v108);
            if (v112)
            {
              *&v111 = *(*(a2 + 56) + 8 * v110);
              v162 = v111;
            }
          }

          sub_1AFD53198(v106, type metadata accessor for ScriptIndex);
          *v106 = v162;
          swift_storeEnumTagMultiPayload();
        }

        v113 = v144 + v135 * v152;
        if (!*(v113 + *(v141 + 40)) && !*(v113 + *(v141 + 44)))
        {
          v134 = sub_1AFABA41C();
          v114 = *(v134 + 2);
          if (v114)
          {
            v151 = v98 | (v170 << 32);
            v115 = (v134 + 40);
            do
            {
              *&v162 = v114;
              v116 = *(v115 - 1);
              v117 = *v115;
              v170 = v115;
              v118 = v155;
              sub_1AFD531F8(v106, v155, type metadata accessor for ScriptIndex);
              (*v149)(v118, 0, 1, v23);

              v119 = sub_1AFAF8B58(v116, v117, v160, v161, v151, 0x726564616873uLL, 0xE600000000000000, v118);
              v121 = v120;

              sub_1AFD53CA8(v118, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v163 = 0;
              v164 = 0xE000000000000000;
              sub_1AFDFE218();

              v163 = 0xD000000000000022;
              v164 = v150;
              MEMORY[0x1B2718AE0](v119, v121);

              v122 = v163;
              v123 = v164;
              v124 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v125 = swift_allocObject();
              *(v125 + 16) = v147;
              *(v125 + 56) = MEMORY[0x1E69E6158];
              *(v125 + 64) = sub_1AF0D544C();
              *(v125 + 32) = v122;
              *(v125 + 40) = v123;

              sub_1AFDFC4C8();

              v126 = v156;
              sub_1AFDFC288();
              v127 = v158;
              v128 = v159[12];
              v129 = v159[16];
              v130 = &v158[v159[20]];
              (*v148)(v158, v126, v157);
              *(v127 + v128) = v124;
              *(v127 + v129) = 0;
              *v130 = v122;
              *(v130 + 1) = v123;

              sub_1AFDFC608();

              sub_1AFD53198(v127, sub_1AF0D4E74);

              v115 = (v170 + 24);
              v114 = v162 - 1;
              v106 = v153;
              v23 = v154;
            }

            while (v162 != 1);
          }

          sub_1AF8DAD40(0);
          sub_1AF8DAD7C(0);
          a2 = v132;
          a1 = v133;
          v37 = v146;
        }

        v90 = v106;
        v87 = v152 + 1;
        result = sub_1AFD53198(v90, type metadata accessor for ScriptIndex);
        if (v87 == v140)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD40BCC(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v266 = a8;
  v292 = a7;
  v289 = a6;
  v288 = a5;
  v259 = a4;
  v258 = a3;
  v262 = a2;
  v257 = a12;
  v256 = a11;
  v274 = a10;
  v265 = a9;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v249 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v290 = (&v249 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v280 = &v249 - v23;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v249 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v249 - v31);
  MEMORY[0x1EEE9AC00](v33, v34);
  v272 = (&v249 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v291 = (&v249 - v38);
  v39 = a1[1];
  v279 = sub_1AF705FA0(v39, a1);
  v255 = sub_1AF707064(v39, a1);
  result = sub_1AF706938(v39, a1);
  v278 = result;
  v41 = a1[11];
  v296 = v24;
  v283 = v39;
  v271 = v41;
  if (!v41)
  {
    v287 = v32;
    v273 = v28;
    v280 = v17;
    v142 = a1[6];
    v272 = a1[7];
    if (v142 == v272)
    {
      return result;
    }

    v275 = type metadata accessor for ShaderScript(0);
    v271 = *(*(v275 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v260 = v143;
    v254 = *(*(v143 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v270 = v144;
    v269 = *(*(v144 - 1) + 72);
    v145 = (v25 + 48);
    v263 = "mpiled script for ";
    v285 = v25 + 56;
    v253 = "nction for script ";
    v252 = "tal library for script ";
    v250 = 0x80000001AFF4F110;
    v251 = 0x80000001AFF4F1B0;
    v268 = v25 + 48;
    v146 = v262;
    while (1)
    {
      v293 = v12;
      v282 = v278 + v269 * v142;
      sub_1AFD53C4C(v282, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);

      v157 = sub_1AF6496EC(v142);

      if (*(v146 + 16) && (v158 = sub_1AF449D3C(v157), (v159 & 1) != 0))
      {
        v160 = v146;
        v161 = (*(v146 + 56) + 8 * v158);
        v163 = *v161;
        v162 = v161[1];
        v294 = v163;
      }

      else
      {
        v160 = v146;

        v164 = sub_1AF6496EC(v142);

        v294 = v164;
        v162 = HIDWORD(v164);
      }

      v284 = v162;
      v165 = v279 + v271 * v142;
      v166 = v280;
      sub_1AFB12858(v165 + *(v275 + 24), v280);
      v167 = *v145;
      v168 = v296;
      if ((*v145)(v166, 1, v296) == 1)
      {

        v169 = sub_1AF6496EC(v142);

        v170 = v287;
        *v287 = v169;
        v171 = v280;
        swift_storeEnumTagMultiPayload();
        if (v167(v171, 1, v168) != 1)
        {
          sub_1AFD53CA8(v171, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v170 = v287;
        sub_1AFD53D8C(v166, v287, type metadata accessor for ScriptIndex);
      }

      v172 = v273;
      sub_1AFD531F8(v170, v273, type metadata accessor for ScriptIndex);
      v146 = v160;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v172, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v173 = *v172;
        v174 = *(v160 + 16);
        v295 = v173;
        if (v174)
        {
          v175 = sub_1AF449D3C(v173);
          if (v177)
          {
            *&v176 = *(*(v160 + 56) + 8 * v175);
            v295 = v176;
          }
        }

        sub_1AFD53198(v170, type metadata accessor for ScriptIndex);
        *v170 = v295;
        swift_storeEnumTagMultiPayload();
      }

      v178 = v282;
      sub_1AFD531F8(v165, v282, type metadata accessor for ShaderScript);
      v179 = sub_1AFAAAC40();
      v180 = v270;
      v181 = v178 + v270[9];
      *v181 = v179;
      *(v181 + 8) = 0;
      *(v178 + v180[10]) = 1;
      *(v178 + v180[11]) = 0;
      v182 = v178 + v180[12];
      strcpy(v182, "<precompiled>");
      *(v182 + 14) = -4864;
      *(v178 + v180[13]) = MEMORY[0x1E69E7CC0];
      v183 = v293;
      sub_1AFAAADB4(0, 1uLL, &v298);
      v293 = v183;
      if (!v183)
      {
        break;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v298 = 0;
      v299 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v263 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0x6353726564616853, 0xEC00000074706972);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v184 = v293;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v186 = v298;
      v185 = v299;
      v187 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v246 = v187;
        swift_once();
        v187 = v246;
      }

      v298 = 0;
      sub_1AF0D4F18(v187, &v298, v186, v185);

      result = sub_1AFD53198(v287, type metadata accessor for ScriptIndex);
      v12 = 0;
LABEL_85:
      ++v142;
      v145 = v268;
      if (v142 == v272)
      {
        return result;
      }
    }

    v188 = v302;
    v189 = v303;

    v297 = MEMORY[0x1E69E7CD0];
    v190 = *(v165 + 16);
    LODWORD(v291) = v190;
    v281 = v142;
    v267 = v188;
    v264 = v189;
    if (v190 >= 4)
    {
      LODWORD(v286) = 1;
    }

    else
    {
      LODWORD(v286) = sub_1AFDFEE28();
    }

    v191 = sub_1AFABA41C();
    v192 = *(v191 + 2);
    if (!v192)
    {

      v147 = 0;
      v148 = MEMORY[0x1E69E7CC0];
      v149 = MEMORY[0x1E69E7CC0];
LABEL_83:
      v142 = v281;
      v150 = v255 + v254 * v281;
      sub_1AFD53C4C(v150, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v282, v150, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
      v151 = v260;
      v152 = (v150 + v260[15]);
      v153 = v264;
      *v152 = v267;
      v152[1] = v153;
      *(v150 + v151[9]) = v147;
      *(v150 + v151[10]) = v149;
      *(v150 + v151[11]) = v148;
      *(v150 + v151[12]) = 0;
      *(v150 + v151[13]) = 0;
      v154 = v150 + v151[14];
      *v154 = v258;
      *(v154 + 8) = v259 & 1;

      v155 = sub_1AF6496EC(v142);

      v300 = v151;
      v301 = &off_1F2558F90;
      v156 = sub_1AF585714(&v298);
      sub_1AFD53D18(v150, v156, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      LOBYTE(v302) = 0;
      sub_1AF8259D0(&v298, v275, v155);
      sub_1AF967B70(v297);
      result = sub_1AFD53198(v287, type metadata accessor for ScriptIndex);
      v146 = v262;
LABEL_84:
      v12 = v293;
      goto LABEL_85;
    }

    v147 = 0;
    v261 = v191;
    v193 = (v191 + 48);
    *&v295 = MEMORY[0x1E69E7CC0];
    v276 = MEMORY[0x1E69E7CC0];
    v277 = v294 | (v284 << 32);
    v194 = v292;
    while (1)
    {
      v196 = *(v193 - 2);
      v197 = *(v193 - 1);
      LODWORD(v294) = *v193;
      if (v286)
      {
        swift_bridgeObjectRetain_n();

        v198 = v197;
        v199 = v193;
        v200 = v192;
        v201 = v194;
        v202 = v147;
        v203 = v281;
        v284 = v196;
        v204 = sub_1AF6496EC(v281);

        v205 = v203;
        v147 = v202;
        v194 = v201;
        v192 = v200;
        v193 = v199;
        v197 = v198;
        v206 = sub_1AF6496EC(v205);

        v207 = v290;
        *v290 = v206;
        v208 = v296;
        swift_storeEnumTagMultiPayload();
        v209 = v208;
        v196 = v284;
        (*v285)(v207, 0, 1, v209);
      }

      else
      {
        v207 = v290;
        sub_1AFD531F8(v287, v290, type metadata accessor for ScriptIndex);
        (*v285)(v207, 0, 1, v296);
        swift_bridgeObjectRetain_n();
        v204 = v277;
      }

      v210 = sub_1AFAF8B58(v196, v197, v288, v289, v204, 0x726564616873uLL, 0xE600000000000000, v207);
      v212 = v211;

      sub_1AFD53CA8(v207, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v298, v210, v212);

      if (v291 >= 4)
      {
        break;
      }

      v213 = sub_1AFDFEE28();

      if (v213)
      {
        goto LABEL_119;
      }

      if (v291 == 2)
      {
        if (v274)
        {

          v218 = v295;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v218 = sub_1AF4246B0(0, *(v218 + 2) + 1, 1, v218);
          }

          v223 = *(v218 + 2);
          v222 = *(v218 + 3);
          if (v223 >= v222 >> 1)
          {
            v218 = sub_1AF4246B0(v222 > 1, v223 + 1, 1, v218);
          }

          *(v218 + 2) = v223 + 1;
          v224 = &v218[24 * v223];
          *(v224 + 4) = v210;
          *(v224 + 5) = v212;
          v224[48] = v294;
          v147 = v274;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v298 = 0;
          v299 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v253 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v210, v212);

          MEMORY[0x1B2718AE0](0xD000000000000031, v252 | 0x8000000000000000);
          v233 = v298;
          v234 = v299;
          v235 = sub_1AFDFDA08();
          v218 = v295;
          if (qword_1ED731058 != -1)
          {
            v236 = v235;
            swift_once();
            v235 = v236;
          }

          v298 = 0;
          sub_1AF0D4F18(v235, &v298, v233, v234);
        }
      }

      else
      {

        v225 = v266;
        if (!*(v266 + 16) || (v226 = sub_1AF419914(v210, v212), (v227 & 1) == 0))
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v298 = 0;
          v299 = 0xE000000000000000;
          sub_1AFDFE218();

          v298 = 0xD000000000000022;
          v299 = v250;
          MEMORY[0x1B2718AE0](v210, v212);

          v243 = v298;
          v242 = v299;
          v244 = sub_1AFDFDA08();
          v146 = v262;
          v245 = v287;
          v142 = v281;
          if (qword_1ED731058 != -1)
          {
            v248 = v244;
            swift_once();
            v244 = v248;
          }

          v298 = 0;
          sub_1AF0D4F18(v244, &v298, v243, v242);

          result = sub_1AFD53198(v245, type metadata accessor for ScriptIndex);
          goto LABEL_84;
        }

        v228 = v226;

        v229 = *(*(v225 + 56) + 8 * v228);
        v230 = v276;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v230 = sub_1AF42469C(0, *(v230 + 2) + 1, 1, v230);
        }

        v218 = v295;
        v232 = *(v230 + 2);
        v231 = *(v230 + 3);
        if (v232 >= v231 >> 1)
        {
          v230 = sub_1AF42469C(v231 > 1, v232 + 1, 1, v230);
        }

        *(v230 + 2) = v232 + 1;
        v276 = v230;
        *&v230[8 * v232 + 32] = v229;
        v147 = v265;

        v194 = v292;
      }

LABEL_112:
      *&v295 = v218;
      v193 += 24;
      if (!--v192)
      {

        v149 = v276;
        v148 = v295;
        goto LABEL_83;
      }
    }

LABEL_119:
    if (!v194 || (v214 = *(v194 + 96), v215 = sub_1AFDFCEC8(), v216 = [v214 objectForKeyedSubscript_], v214, v215, !v216))
    {

LABEL_146:

      *&v295 = v147;

      v237 = v262;
      v238 = v287;
      v142 = v281;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v298 = 0;
      v299 = 0xE000000000000000;
      sub_1AFDFE218();

      v298 = 0xD000000000000025;
      v299 = v251;
      MEMORY[0x1B2718AE0](v210, v212);

      v240 = v298;
      v239 = v299;
      v241 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v247 = v241;
        swift_once();
        v241 = v247;
      }

      v298 = 0;
      sub_1AF0D4F18(v241, &v298, v240, v239);

      result = sub_1AFD53198(v238, type metadata accessor for ScriptIndex);
      v12 = v293;
      v146 = v237;
      goto LABEL_85;
    }

    v217 = [v216 isUndefined];

    if (v217)
    {
      goto LABEL_146;
    }

    v218 = v295;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v292;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v218 = sub_1AF4246B0(0, *(v218 + 2) + 1, 1, v218);
    }

    v221 = *(v218 + 2);
    v220 = *(v218 + 3);
    if (v221 >= v220 >> 1)
    {
      v218 = sub_1AF4246B0(v220 > 1, v221 + 1, 1, v218);
    }

    *(v218 + 2) = v221 + 1;
    v195 = &v218[24 * v221];
    *(v195 + 4) = v210;
    *(v195 + 5) = v212;
    v195[48] = v294;

    v147 = v194;
    goto LABEL_112;
  }

  v270 = a1[13];
  if (v270)
  {
    v273 = type metadata accessor for ShaderScript(0);
    v269 = *(*(v273 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v254 = v42;
    v253 = *(*(v42 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v268 = v43;
    v267 = *(*(v43 - 8) + 72);
    v44 = (v25 + 48);
    v261 = "mpiled script for ";
    v284 = v25 + 56;
    v45 = 0;
    v252 = "nction for script ";
    v251 = "tal library for script ";
    v249 = 0x80000001AFF4F110;
    v250 = 0x80000001AFF4F1B0;
    v276 = v44;
    v46 = v262;
    while (1)
    {
      v56 = *(v271 + 8 * v45);
      v281 = v278 + v267 * v45;
      sub_1AFD53C4C(v281, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);

      v287 = v56;
      v57 = sub_1AF6496EC(v56);

      v58 = v46;
      if (*(v46 + 16) && (v59 = sub_1AF449D3C(v57), (v60 & 1) != 0))
      {
        v61 = (*(v46 + 56) + 8 * v59);
        v63 = *v61;
        v62 = v61[1];
        v294 = v63;
      }

      else
      {

        v64 = sub_1AF6496EC(v287);

        v294 = v64;
        v62 = HIDWORD(v64);
      }

      v286 = v62;
      v65 = v296;
      v282 = v45;
      v66 = v279 + v269 * v45;
      v67 = v280;
      sub_1AFB12858(v66 + *(v273 + 6), v280);
      v68 = *v44;
      if ((*v44)(v67, 1, v65) == 1)
      {

        v69 = sub_1AF6496EC(v287);

        v70 = v291;
        *v291 = v69;
        v71 = v280;
        swift_storeEnumTagMultiPayload();
        if (v68(v71, 1, v65) != 1)
        {
          sub_1AFD53CA8(v71, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v70 = v291;
        sub_1AFD53D8C(v67, v291, type metadata accessor for ScriptIndex);
      }

      v72 = v272;
      sub_1AFD531F8(v70, v272, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v72, type metadata accessor for ScriptIndex);
        v44 = v276;
      }

      else
      {
        *&v73 = *v72;
        v74 = *(v58 + 16);
        v295 = v73;
        if (v74)
        {
          v75 = sub_1AF449D3C(v73);
          v44 = v276;
          if (v77)
          {
            *&v76 = *(*(v58 + 56) + 8 * v75);
            v295 = v76;
          }
        }

        else
        {
          v44 = v276;
        }

        v78 = v291;
        sub_1AFD53198(v291, type metadata accessor for ScriptIndex);
        *v78 = v295;
        swift_storeEnumTagMultiPayload();
      }

      v79 = v281;
      sub_1AFD531F8(v66, v281, type metadata accessor for ShaderScript);
      v80 = sub_1AFAAAC40();
      v81 = v268;
      v82 = v79 + *(v268 + 36);
      *v82 = v80;
      *(v82 + 8) = 0;
      *(v79 + v81[10]) = 1;
      *(v79 + v81[11]) = 0;
      v83 = v79 + v81[12];
      strcpy(v83, "<precompiled>");
      *(v83 + 14) = -4864;
      *(v79 + v81[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAAADB4(0, 1uLL, &v298);
      v293 = v12;
      if (v12)
      {
        v84 = v291;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v298 = 0;
        v299 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v261 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0x6353726564616853, 0xEC00000074706972);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v85 = v293;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v87 = v298;
        v86 = v299;
        v88 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v139 = v88;
          swift_once();
          v88 = v139;
        }

        v298 = 0;
        sub_1AF0D4F18(v88, &v298, v87, v86);

        result = sub_1AFD53198(v84, type metadata accessor for ScriptIndex);
        v12 = 0;
        v46 = v58;
        goto LABEL_6;
      }

      v264 = v302;
      v263 = v303;

      v297 = MEMORY[0x1E69E7CD0];
      v89 = *(v66 + 16);
      LODWORD(v285) = v89 >= 4 ? 1 : sub_1AFDFEE28();

      v90 = sub_1AFABA41C();
      v91 = *(v90 + 2);
      if (v91)
      {
        break;
      }

      v47 = MEMORY[0x1E69E7CC0];
      v48 = MEMORY[0x1E69E7CC0];
LABEL_5:
      v49 = v255 + v253 * v282;
      sub_1AFD53C4C(v49, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v281, v49, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
      v50 = v254;
      v51 = (v49 + v254[15]);
      v52 = v263;
      *v51 = v264;
      v51[1] = v52;
      *(v49 + v50[9]) = v91;
      *(v49 + v50[10]) = v48;
      *(v49 + v50[11]) = v47;
      *(v49 + v50[12]) = 0;
      *(v49 + v50[13]) = 0;
      v53 = v49 + v50[14];
      *v53 = v258;
      *(v53 + 8) = v259 & 1;

      v54 = sub_1AF6496EC(v287);

      v300 = v50;
      v301 = &off_1F2558F90;
      v55 = sub_1AF585714(&v298);
      sub_1AFD53D18(v49, v55, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      LOBYTE(v302) = 0;
      sub_1AF8259D0(&v298, v273, v54);
      sub_1AF967B70(v297);
      result = sub_1AFD53198(v291, type metadata accessor for ScriptIndex);
      v46 = v262;
      v12 = v293;
      v44 = v276;
LABEL_6:
      v45 = v282 + 1;
      if ((v282 + 1) == v270)
      {
        return result;
      }
    }

    *&v295 = 0;
    v260 = v90;
    v92 = (v90 + 48);
    v47 = MEMORY[0x1E69E7CC0];
    v275 = MEMORY[0x1E69E7CC0];
    v277 = v294 | (v286 << 32);
    LODWORD(v286) = v89;
    while (1)
    {
      v94 = *(v92 - 2);
      v95 = *(v92 - 1);
      LODWORD(v294) = *v92;
      if (v285)
      {
        swift_bridgeObjectRetain_n();

        v96 = v287;
        v97 = sub_1AF6496EC(v287);

        v98 = v96;
        v89 = v286;
        v99 = sub_1AF6496EC(v98);

        v100 = v290;
        *v290 = v99;
        v101 = v100;
        v102 = v296;
        swift_storeEnumTagMultiPayload();
        (*v284)(v101, 0, 1, v102);
      }

      else
      {
        v101 = v290;
        sub_1AFD531F8(v291, v290, type metadata accessor for ScriptIndex);
        (*v284)(v101, 0, 1, v296);
        swift_bridgeObjectRetain_n();
        v97 = v277;
      }

      v103 = sub_1AFAF8B58(v94, v95, v288, v289, v97, 0x726564616873uLL, 0xE600000000000000, v101);
      v105 = v104;

      sub_1AFD53CA8(v101, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v298, v103, v105);

      if (v89 >= 4)
      {
        break;
      }

      v106 = sub_1AFDFEE28();

      if (v106)
      {
        goto LABEL_41;
      }

      if (v89 == 2)
      {
        if (v274)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1AF4246B0(0, *(v47 + 2) + 1, 1, v47);
          }

          v114 = v294;
          v116 = *(v47 + 2);
          v115 = *(v47 + 3);
          if (v116 >= v115 >> 1)
          {
            v47 = sub_1AF4246B0(v115 > 1, v116 + 1, 1, v47);
          }

          *(v47 + 2) = v116 + 1;
          v117 = &v47[24 * v116];
          *(v117 + 4) = v103;
          *(v117 + 5) = v105;
          v117[48] = v114;
          *&v295 = v274;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v298 = 0;
          v299 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v252 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v103, v105);

          MEMORY[0x1B2718AE0](0xD000000000000031, v251 | 0x8000000000000000);
          v126 = v298;
          v127 = v299;
          v128 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v129 = v128;
            swift_once();
            v128 = v129;
          }

          v298 = 0;
          sub_1AF0D4F18(v128, &v298, v126, v127);
        }
      }

      else
      {

        v118 = v266;
        if (!*(v266 + 16) || (v119 = sub_1AF419914(v103, v105), (v120 & 1) == 0))
        {

          v135 = v291;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v298 = 0;
          v299 = 0xE000000000000000;
          sub_1AFDFE218();

          v298 = 0xD000000000000022;
          v299 = v249;
          MEMORY[0x1B2718AE0](v103, v105);

          v137 = v298;
          v136 = v299;
          v138 = sub_1AFDFDA08();
          v46 = v262;
          v44 = v276;
          if (qword_1ED731058 != -1)
          {
            v141 = v138;
            swift_once();
            v138 = v141;
          }

          v298 = 0;
          sub_1AF0D4F18(v138, &v298, v137, v136);

          result = sub_1AFD53198(v135, type metadata accessor for ScriptIndex);
          v12 = v293;
          goto LABEL_6;
        }

        v121 = v119;

        v122 = *(*(v118 + 56) + 8 * v121);
        v123 = v275;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1AF42469C(0, *(v123 + 2) + 1, 1, v123);
        }

        v125 = *(v123 + 2);
        v124 = *(v123 + 3);
        if (v125 >= v124 >> 1)
        {
          v123 = sub_1AF42469C(v124 > 1, v125 + 1, 1, v123);
        }

        *(v123 + 2) = v125 + 1;
        v275 = v123;
        *&v123[8 * v125 + 32] = v122;

        v89 = v286;
      }

LABEL_34:
      v92 += 24;
      if (!--v91)
      {

        v91 = v295;
        v48 = v275;
        goto LABEL_5;
      }
    }

LABEL_41:
    if (!v292 || (v107 = *(v292 + 96), v108 = sub_1AFDFCEC8(), v109 = [v107 objectForKeyedSubscript_], v107, v108, !v109))
    {

LABEL_68:

      v130 = v291;

      v131 = v262;
      v44 = v276;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v298 = 0;
      v299 = 0xE000000000000000;
      sub_1AFDFE218();

      v298 = 0xD000000000000025;
      v299 = v250;
      MEMORY[0x1B2718AE0](v103, v105);

      v133 = v298;
      v132 = v299;
      v134 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v140 = v134;
        swift_once();
        v134 = v140;
      }

      v298 = 0;
      sub_1AF0D4F18(v134, &v298, v133, v132);

      result = sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
      v12 = v293;
      v46 = v131;
      goto LABEL_6;
    }

    v110 = [v109 isUndefined];

    if (v110)
    {
      goto LABEL_68;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1AF4246B0(0, *(v47 + 2) + 1, 1, v47);
    }

    v89 = v286;
    v111 = v294;
    v113 = *(v47 + 2);
    v112 = *(v47 + 3);
    if (v113 >= v112 >> 1)
    {
      v47 = sub_1AF4246B0(v112 > 1, v113 + 1, 1, v47);
    }

    *(v47 + 2) = v113 + 1;
    v93 = &v47[24 * v113];
    *(v93 + 4) = v103;
    *(v93 + 5) = v105;
    v93[48] = v111;

    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1AFD43440(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v199 = a5;
  v200 = a6;
  LODWORD(v202) = a4;
  v206 = a3;
  v183 = a2;
  sub_1AF0D4E74();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v197 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1AFDFC298();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v166 - v22;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = (&v166 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v193 = &v166 - v38;
  v39 = a1[1];
  v182 = sub_1AF706CCC(v39, a1);
  v181 = sub_1AF706FA8(v39, a1);
  result = sub_1AF70687C(v39, a1);
  v167 = v6;
  v41 = a1[11];
  v178 = a1;
  v185 = v39;
  v176 = v41;
  if (v41)
  {
    v184 = v23;
    v175 = a1[13];
    if (v175)
    {
      v173 = type metadata accessor for EmitterScript(0);
      v172 = *(*(v173 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      v42 = 0;
      v180 = v43;
      v44 = *(v43 - 8);
      v179 = (v25 + 48);
      v171 = *(v44 + 72);
      v166 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v45 = &unk_1F25040C0;
      if (v206 < 1029)
      {
        v45 = &unk_1F2504088;
      }

      v169 = v45;
      v168 = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v201 = v24;
      while (1)
      {
        v46 = v176[v42];
        v174 = a1[2];

        if (*(v39 + 184))
        {
          break;
        }

        v48 = *(v39 + 168);
        v186 = v46;
        v49 = *(v48 + 4 * v46);
        v50 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

        v51 = v183;
        if (*(v183 + 16) && (v52 = sub_1AF449D3C(v49 | (v50 << 32)), (v53 & 1) != 0))
        {
          v54 = (*(v51 + 56) + 8 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v177;
        }

        else
        {

          v57 = v177;
          if (*(v39 + 184))
          {
            break;
          }

          v55 = *(*(v39 + 168) + 4 * v186);
          v56 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        }

        v192 = v42;
        v59 = (v182 + v172 * v42);
        v60 = v184;
        sub_1AFB12858(&v59[*(v173 + 32)], v184);
        v61 = *v179;
        if ((*v179)(v60, 1, v24) == 1)
        {
          v62 = v185;

          if (*(v62 + 184))
          {
            break;
          }

          v64 = *(*(v62 + 168) + 4 * v186);
          v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

          v66 = v193;
          *v193 = v64;
          *(v66 + 4) = v65;
          v67 = v66;
          swift_storeEnumTagMultiPayload();
          v68 = v61(v184, 1, v24);
          a1 = v178;
          if (v68 != 1)
          {
            sub_1AFD53CA8(v184, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v69 = v60;
          v67 = v193;
          sub_1AFD53D8C(v69, v193, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v67, v57, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v57, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v70 = *v57;
          v71 = *(v51 + 16);
          v202 = v70;
          if (v71)
          {
            v72 = sub_1AF449D3C(v70);
            if (v74)
            {
              *&v73 = *(*(v51 + 56) + 8 * v72);
              v202 = v73;
            }
          }

          sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
          *v67 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v75 = v181 + v171 * v192;
        if (!*(v75 + *(v180 + 40)) && !*(v75 + *(v180 + 44)))
        {
          v76 = v169;
          if (v168)
          {
            v76 = &unk_1F25040F8;
            if (*v59 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v76 = swift_allocObject();
              v76[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v166;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v77 = v204;
              *(v76 + 4) = v203;
              *(v76 + 5) = v77;
              *(v76 + 48) = 0;
            }
          }

          v170 = v76;
          v78 = *(v76 + 2);
          if (v78)
          {
            v191 = v55 | (v56 << 32);
            v79 = v170 + 5;
            do
            {
              *&v202 = v78;
              v80 = *(v79 - 1);
              v81 = *v79;
              v206 = v79;
              v82 = v194;
              sub_1AFD531F8(v67, v194, type metadata accessor for ScriptIndex);
              (*v188)(v82, 0, 1, v24);

              v83 = sub_1AFAF8B58(v80, v81, v199, v200, v191, 0x72657474696D65uLL, 0xE700000000000000, v82);
              v85 = v84;

              sub_1AFD53CA8(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v83, v85);

              v87 = v203;
              v86 = v204;
              v88 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v89 = swift_allocObject();
              *(v89 + 16) = v190;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1AF0D544C();
              *(v89 + 32) = v87;
              *(v89 + 40) = v86;

              sub_1AFDFC4C8();

              v90 = v195;
              sub_1AFDFC288();
              v91 = v197;
              v92 = v198[12];
              v93 = v198[16];
              v94 = &v197[v198[20]];
              (*v187)(v197, v90, v196);
              *(v91 + v92) = v88;
              *(v91 + v93) = 0;
              *v94 = v87;
              *(v94 + 1) = v86;

              sub_1AFDFC608();

              sub_1AFD53198(v91, sub_1AF0D4E74);

              v79 = (v206 + 24);
              v24 = v201;
              v78 = v202 - 1;
              v67 = v193;
            }

            while (v202 != 1);
          }

          v95 = v185;
          v96 = *(*(v185 + 40) + 16);
          v97 = *(v96 + 128);
          a1 = v178;
          if (*(v97 + 16))
          {
            v98 = sub_1AF449CB8(v180);
            if ((v99 & 1) != 0 && *(*(v96 + 24) + 16 * *(*(v97 + 56) + 8 * v98) + 32) == v180)
            {
              v203 = v180;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v95, v174);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
          v101 = *(*(v95 + 40) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v100;
            v104 = sub_1AF449CB8(v100);
            if ((v105 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v104) + 32) == v103)
            {
              v203 = v103;
              v204 = &off_1F250F310;
              v205 = 1;
              v106 = v185;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v106, v174);

              sub_1AF635250(&v203);
            }
          }
        }

        result = sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
        v42 = (v192 + 1);
        v39 = v185;
        if ((v192 + 1) == v175)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v192 = v32;
    v186 = v16;
    v107 = a1[6];
    v179 = a1[7];
    if (v107 != v179)
    {
      v175 = type metadata accessor for EmitterScript(0);
      v174 = *(*(v175 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      v184 = v108;
      v109 = *(v108 - 8);
      v180 = v25 + 48;
      v173 = *(v109 + 72);
      v169 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v110 = &unk_1F25040C0;
      if (v206 < 1029)
      {
        v110 = &unk_1F2504088;
      }

      v171 = v110;
      LODWORD(v170) = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v176 = v28;
      v201 = v24;
      while (1)
      {
        v177 = a1[2];

        if (*(v39 + 184))
        {
          goto LABEL_91;
        }

        v112 = *(v39 + 168);
        v193 = v107;
        v113 = *(v112 + 4 * v107);
        v114 = *(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

        v115 = v183;
        if (*(v183 + 16) && (v116 = sub_1AF449D3C(v113 | (v114 << 32)), (v117 & 1) != 0))
        {
          v118 = (*(v115 + 56) + 8 * v116);
          v119 = *v118;
          v120 = v118[1];
          v122 = v192;
          v121 = v193;
        }

        else
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v121 = v193;
          v119 = *(*(v39 + 168) + 4 * v193);
          v120 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          v122 = v192;
        }

        v124 = (v182 + v174 * v121);
        v125 = v186;
        sub_1AFB12858(&v124[*(v175 + 32)], v186);
        v126 = *v180;
        if ((*v180)(v125, 1, v24) == 1)
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v128 = *(*(v39 + 168) + 4 * v193);
          v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *v122 = v128;
          v122[1] = v129;
          v39 = v185;
          swift_storeEnumTagMultiPayload();
          if (v126(v186, 1, v24) != 1)
          {
            sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v125, v122, type metadata accessor for ScriptIndex);
        }

        v130 = v176;
        sub_1AFD531F8(v122, v176, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v131 = *v130;
          v132 = *(v115 + 16);
          v202 = v131;
          if (v132)
          {
            v133 = sub_1AF449D3C(v131);
            if (v135)
            {
              *&v134 = *(*(v115 + 56) + 8 * v133);
              v202 = v134;
            }
          }

          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
          *v122 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v136 = v181 + v173 * v193;
        if (!*(v136 + *(v184 + 10)) && !*(v136 + *(v184 + 11)))
        {
          v137 = v171;
          if (v170)
          {
            v137 = &unk_1F25040F8;
            if (*v124 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v137 = swift_allocObject();
              v137[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v169;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v138 = v204;
              *(v137 + 4) = v203;
              *(v137 + 5) = v138;
              *(v137 + 48) = 0;
            }
          }

          v172 = v137;
          v139 = *(v137 + 2);
          if (v139)
          {
            v191 = v119 | (v120 << 32);
            v140 = v172 + 5;
            do
            {
              *&v202 = v139;
              v141 = *(v140 - 1);
              v142 = *v140;
              v206 = v140;
              v143 = v194;
              sub_1AFD531F8(v122, v194, type metadata accessor for ScriptIndex);
              (*v188)(v143, 0, 1, v201);

              v144 = sub_1AFAF8B58(v141, v142, v199, v200, v191, 0x72657474696D65uLL, 0xE700000000000000, v143);
              v146 = v145;

              sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v144, v146);

              v148 = v203;
              v147 = v204;
              v149 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v150 = swift_allocObject();
              *(v150 + 16) = v190;
              *(v150 + 56) = MEMORY[0x1E69E6158];
              *(v150 + 64) = sub_1AF0D544C();
              *(v150 + 32) = v148;
              *(v150 + 40) = v147;

              sub_1AFDFC4C8();

              v151 = v195;
              sub_1AFDFC288();
              v152 = v197;
              v153 = v198[12];
              v154 = v198[16];
              v155 = &v197[v198[20]];
              (*v187)(v197, v151, v196);
              *(v152 + v153) = v149;
              *(v152 + v154) = 0;
              *v155 = v148;
              *(v155 + 1) = v147;

              sub_1AFDFC608();

              sub_1AFD53198(v152, sub_1AF0D4E74);

              v140 = (v206 + 24);
              v139 = v202 - 1;
              v122 = v192;
            }

            while (v202 != 1);
          }

          v39 = v185;
          v156 = *(*(v185 + 40) + 16);
          v157 = *(v156 + 128);
          if (*(v157 + 16))
          {
            v158 = sub_1AF449CB8(v184);
            if ((v159 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v158) + 32) == v184)
            {
              v203 = v184;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
          v161 = *(*(v39 + 40) + 16);
          v162 = *(v161 + 128);
          v24 = v201;
          if (*(v162 + 16))
          {
            v163 = v160;
            v164 = sub_1AF449CB8(v160);
            if ((v165 & 1) != 0 && *(*(v161 + 24) + 16 * *(*(v162 + 56) + 8 * v164) + 32) == v163)
            {
              v203 = v163;
              v204 = &off_1F250F310;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }
        }

        v107 = v193 + 1;
        result = sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        a1 = v178;
        if (v107 == v179)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD44C10(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v249 = a8;
  v277 = a7;
  v274 = a6;
  v273 = a5;
  v250 = a4;
  v251 = a3;
  v242 = a12;
  v241 = a11;
  v260 = a10;
  v248 = a9;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v275 = (&v234 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v265 = &v234 - v24;
  v25 = type metadata accessor for ScriptIndex();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v234 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v258 = (&v234 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v271 = &v234 - v39;
  v40 = a1[1];
  v264 = sub_1AF706CCC(v40, a1);
  v240 = sub_1AF706FA8(v40, a1);
  v281 = v40;
  result = sub_1AF70687C(v40, a1);
  v263 = result;
  v42 = v12;
  v43 = a1[11];
  v244 = a2;
  v279 = v25;
  v257 = v43;
  if (!v43)
  {
    v272 = v33;
    v258 = v29;
    v265 = v18;
    v135 = a1[6];
    v257 = a1[7];
    if (v135 == v257)
    {
      return result;
    }

    v259 = type metadata accessor for EmitterScript(0);
    v256 = *(*(v259 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
    v243 = v136;
    v239 = *(*(v136 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v255 = v137;
    v254 = *(*(v137 - 1) + 72);
    v253 = (v26 + 48);
    v246 = "mpiled script for ";
    v268 = v26 + 56;
    v238 = "nction for script ";
    v237 = "tal library for script ";
    v235 = 0x80000001AFF4F110;
    v236 = 0x80000001AFF4F1B0;
    v138 = v272;
LABEL_91:
    v140 = v42;
    v266 = v263 + v254 * v135;
    sub_1AFD53C4C(v266, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);

    v141 = sub_1AF6496EC(v135);

    if (*(a2 + 16) && (v142 = sub_1AF449D3C(v141), (v143 & 1) != 0))
    {
      v144 = (*(a2 + 56) + 8 * v142);
      v146 = *v144;
      v145 = v144[1];
      v278 = v146;
    }

    else
    {

      v147 = sub_1AF6496EC(v135);

      v278 = v147;
      v145 = HIDWORD(v147);
    }

    v267 = v145;
    v148 = (v264 + v256 * v135);
    v149 = v265;
    sub_1AFB12858(&v148[*(v259 + 32)], v265);
    v150 = *v253;
    v151 = (*v253)(v149, 1, v25);
    v271 = v135;
    if (v151 == 1)
    {

      v152 = sub_1AF6496EC(v135);
      v138 = v272;

      *v138 = v152;
      v153 = v265;
      swift_storeEnumTagMultiPayload();
      v154 = v150(v153, 1, v25);
      v155 = v266;
      if (v154 != 1)
      {
        sub_1AFD53CA8(v153, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFD53D8C(v149, v138, type metadata accessor for ScriptIndex);
      v155 = v266;
    }

    v156 = v258;
    sub_1AFD531F8(v138, v258, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFD53198(v156, type metadata accessor for ScriptIndex);
    }

    else
    {
      *&v157 = *v156;
      v158 = *(a2 + 16);
      v280 = v157;
      if (v158)
      {
        v159 = sub_1AF449D3C(v157);
        if (v161)
        {
          *&v160 = *(*(a2 + 56) + 8 * v159);
          v280 = v160;
        }
      }

      sub_1AFD53198(v138, type metadata accessor for ScriptIndex);
      *v138 = v280;
      swift_storeEnumTagMultiPayload();
    }

    sub_1AFD531F8(v148, v155, type metadata accessor for EmitterScript);
    v162 = sub_1AFAA71FC();
    v163 = v255;
    v164 = v155 + v255[9];
    *v164 = v162;
    *(v164 + 8) = 0;
    *(v155 + v163[10]) = 1;
    *(v155 + v163[11]) = 0;
    v165 = v155 + v163[12];
    strcpy(v165, "<precompiled>");
    *(v165 + 14) = -4864;
    *(v155 + v163[13]) = MEMORY[0x1E69E7CC0];
    sub_1AFAA7344(0, 1, &v283);
    v269 = v140;
    if (v140)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v283 = 0;
      v284 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v246 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0x5372657474696D45, 0xED00007470697263);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v166 = v269;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v168 = v283;
      v167 = v284;
      v169 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v233 = v169;
        swift_once();
        v169 = v233;
      }

      v283 = 0;
      sub_1AF0D4F18(v169, &v283, v168, v167);

      result = sub_1AFD53198(v138, type metadata accessor for ScriptIndex);
      v42 = 0;
LABEL_89:
      v139 = v271;
      goto LABEL_90;
    }

    v247 = v287;
    v170 = v288;

    v282 = MEMORY[0x1E69E7CD0];
    v171 = *v148;
    v172 = v250;
    v276 = v171;
    v252 = v170;
    if (v171 >= 4)
    {
      LODWORD(v270) = 1;
    }

    else
    {
      LODWORD(v270) = sub_1AFDFEE28();
    }

    v173 = sub_1AFD0834C(v251, v172 & 1);
    v174 = *(v173 + 2);
    if (!v174)
    {

      v278 = 0;
      v220 = MEMORY[0x1E69E7CC0];
      *&v280 = MEMORY[0x1E69E7CC0];
      v221 = v172;
      goto LABEL_158;
    }

    v175 = 0;
    v245 = v173;
    v176 = (v173 + 48);
    *&v280 = MEMORY[0x1E69E7CC0];
    v261 = MEMORY[0x1E69E7CC0];
    v262 = v278 | (v267 << 32);
    v177 = v277;
    while (1)
    {
      v179 = *(v176 - 2);
      v180 = *(v176 - 1);
      LODWORD(v278) = *v176;
      if (v270)
      {
        swift_bridgeObjectRetain_n();

        v181 = v180;
        v182 = v176;
        v183 = v174;
        v184 = v177;
        v185 = v175;
        v186 = v271;
        v267 = v179;
        v187 = sub_1AF6496EC(v271);

        v188 = v186;
        v175 = v185;
        v177 = v184;
        v174 = v183;
        v176 = v182;
        v180 = v181;
        v189 = sub_1AF6496EC(v188);

        v190 = v275;
        *v275 = v189;
        v191 = v279;
        swift_storeEnumTagMultiPayload();
        v192 = v191;
        v179 = v267;
        (*v268)(v190, 0, 1, v192);
      }

      else
      {
        v190 = v275;
        sub_1AFD531F8(v138, v275, type metadata accessor for ScriptIndex);
        (*v268)(v190, 0, 1, v279);
        swift_bridgeObjectRetain_n();
        v187 = v262;
      }

      v193 = sub_1AFAF8B58(v179, v180, v273, v274, v187, 0x72657474696D65uLL, 0xE700000000000000, v190);
      v195 = v194;

      sub_1AFD53CA8(v190, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v283, v193, v195);

      if (v276 >= 4)
      {
        break;
      }

      v196 = sub_1AFDFEE28();

      if (v196)
      {
        goto LABEL_125;
      }

      if (v276 != 2)
      {

        v208 = v249;
        if (!*(v249 + 16) || (v209 = sub_1AF419914(v193, v195), (v210 & 1) == 0))
        {

          v42 = v269;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v283 = 0;
          v284 = 0xE000000000000000;
          sub_1AFDFE218();

          v283 = 0xD000000000000022;
          v284 = v235;
          MEMORY[0x1B2718AE0](v193, v195);

          v223 = v283;
          v222 = v284;
          v224 = sub_1AFDFDA08();
          v25 = v279;
          if (qword_1ED731058 != -1)
          {
            goto LABEL_156;
          }

          goto LABEL_88;
        }

        v211 = v209;

        v212 = *(*(v208 + 56) + 8 * v211);
        v213 = v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v213 = sub_1AF42469C(0, *(v213 + 2) + 1, 1, v213);
        }

        v138 = v272;
        v201 = v280;
        v215 = *(v213 + 2);
        v214 = *(v213 + 3);
        if (v215 >= v214 >> 1)
        {
          v213 = sub_1AF42469C(v214 > 1, v215 + 1, 1, v213);
        }

        *(v213 + 2) = v215 + 1;
        v261 = v213;
        *&v213[8 * v215 + 32] = v212;
        v175 = v248;

        v177 = v277;
        goto LABEL_118;
      }

      if (v260)
      {

        v201 = v280;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_1AF4246B0(0, *(v201 + 2) + 1, 1, v201);
        }

        v206 = *(v201 + 2);
        v205 = *(v201 + 3);
        if (v206 >= v205 >> 1)
        {
          v201 = sub_1AF4246B0(v205 > 1, v206 + 1, 1, v201);
        }

        *(v201 + 2) = v206 + 1;
        v207 = &v201[24 * v206];
        *(v207 + 4) = v193;
        *(v207 + 5) = v195;
        v207[48] = v278;
        v175 = v260;
      }

      else
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v283 = 0;
        v284 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, v238 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v193, v195);

        MEMORY[0x1B2718AE0](0xD000000000000031, v237 | 0x8000000000000000);
        v216 = v283;
        v217 = v284;
        v218 = sub_1AFDFDA08();
        v201 = v280;
        if (qword_1ED731058 != -1)
        {
          v219 = v218;
          swift_once();
          v218 = v219;
        }

        v283 = 0;
        sub_1AF0D4F18(v218, &v283, v216, v217);
      }

LABEL_117:
      v138 = v272;
LABEL_118:
      *&v280 = v201;
      v176 += 24;
      if (!--v174)
      {

        v221 = v250;
        v278 = v175;
        v220 = v261;
LABEL_158:
        v139 = v271;
        v226 = v240 + v239 * v271;
        sub_1AFD53C4C(v226, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        sub_1AFD53D18(v266, v226, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v227 = v243;
        v228 = (v226 + v243[15]);
        v229 = v252;
        *v228 = v247;
        v228[1] = v229;
        *(v226 + v227[9]) = v278;
        *(v226 + v227[10]) = v220;
        *(v226 + v227[11]) = v280;
        *(v226 + v227[12]) = 0;
        *(v226 + v227[13]) = 0;
        v230 = v226 + v227[14];
        *v230 = v251;
        *(v230 + 8) = v221 & 1;

        v231 = sub_1AF6496EC(v139);

        v285 = v227;
        v286 = &off_1F2558F90;
        v232 = sub_1AF585714(&v283);
        sub_1AFD53D18(v226, v232, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        LOBYTE(v287) = 0;
        sub_1AF8259D0(&v283, v259, v231);
        sub_1AF967B70(v282);
        v138 = v272;
        result = sub_1AFD53198(v272, type metadata accessor for ScriptIndex);
        a2 = v244;
        v25 = v279;
        v42 = v269;
LABEL_90:
        v135 = v139 + 1;
        if (v135 == v257)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

LABEL_125:
    if (!v177 || (v197 = *(v177 + 96), v198 = sub_1AFDFCEC8(), v199 = [v197 objectForKeyedSubscript_], v197, v198, !v199))
    {

LABEL_153:

      v42 = v269;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v283 = 0;
      v284 = 0xE000000000000000;
      sub_1AFDFE218();

      v283 = 0xD000000000000025;
      v284 = v236;
      MEMORY[0x1B2718AE0](v193, v195);

      v223 = v283;
      v222 = v284;
      v224 = sub_1AFDFDA08();
      v25 = v279;
      if (qword_1ED731058 != -1)
      {
LABEL_156:
        v225 = v224;
        swift_once();
        v224 = v225;
      }

LABEL_88:
      v283 = 0;
      sub_1AF0D4F18(v224, &v283, v223, v222);

      v138 = v272;
      result = sub_1AFD53198(v272, type metadata accessor for ScriptIndex);
      a2 = v244;
      goto LABEL_89;
    }

    v200 = [v199 isUndefined];

    if (v200)
    {
      goto LABEL_153;
    }

    v201 = v280;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = v277;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v201 = sub_1AF4246B0(0, *(v201 + 2) + 1, 1, v201);
    }

    v204 = *(v201 + 2);
    v203 = *(v201 + 3);
    if (v204 >= v203 >> 1)
    {
      v201 = sub_1AF4246B0(v203 > 1, v204 + 1, 1, v201);
    }

    *(v201 + 2) = v204 + 1;
    v178 = &v201[24 * v204];
    *(v178 + 4) = v193;
    *(v178 + 5) = v195;
    v178[48] = v278;

    v175 = v177;
    goto LABEL_117;
  }

  v256 = a1[13];
  if (v256)
  {
    v259 = type metadata accessor for EmitterScript(0);
    v255 = *(*(v259 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
    v239 = v44;
    v238 = *(*(v44 - 1) + 72);
    v45 = v26;
    v46 = &unk_1ED728DD0;
    sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v47 = 0;
    v254 = v48;
    v253 = *(*(v48 - 1) + 72);
    v252 = (v45 + 48);
    v245 = "mpiled script for ";
    v267 = v45 + 56;
    v237 = "nction for script ";
    v236 = "tal library for script ";
    v234 = 0x80000001AFF4F110;
    v235 = 0x80000001AFF4F1B0;
    v49 = v271;
    while (1)
    {
      v60 = *(v257 + 8 * v47);
      v270 = v47;
      v266 = v263 + v253 * v47;
      sub_1AFD53C4C(v266, v46, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);

      v272 = v60;
      v61 = sub_1AF6496EC(v60);

      if (*(a2 + 16) && (v62 = sub_1AF449D3C(v61), (v63 & 1) != 0))
      {
        v64 = v46;
        v65 = (*(a2 + 56) + 8 * v62);
        v67 = *v65;
        v66 = v65[1];
        v278 = v67;
      }

      else
      {
        v64 = v46;

        v68 = sub_1AF6496EC(v272);

        v278 = v68;
        v66 = HIDWORD(v68);
      }

      v262 = v66;
      v69 = (v264 + v255 * v270);
      v70 = v265;
      sub_1AFB12858(&v69[*(v259 + 32)], v265);
      v71 = *v252;
      if ((*v252)(v70, 1, v25) == 1)
      {

        v72 = sub_1AF6496EC(v272);
        v49 = v271;

        *v49 = v72;
        v73 = v265;
        swift_storeEnumTagMultiPayload();
        if (v71(v73, 1, v25) != 1)
        {
          sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v70, v49, type metadata accessor for ScriptIndex);
      }

      v74 = v258;
      sub_1AFD531F8(v49, v258, type metadata accessor for ScriptIndex);
      v46 = v64;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v74, type metadata accessor for ScriptIndex);
        v76 = v266;
      }

      else
      {
        *&v75 = *v74;
        v77 = *(a2 + 16);
        v280 = v75;
        if (v77)
        {
          v78 = sub_1AF449D3C(v75);
          v76 = v266;
          if (v80)
          {
            *&v79 = *(*(a2 + 56) + 8 * v78);
            v280 = v79;
          }
        }

        else
        {
          v76 = v266;
        }

        sub_1AFD53198(v49, type metadata accessor for ScriptIndex);
        *v49 = v280;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v69, v76, type metadata accessor for EmitterScript);
      v81 = sub_1AFAA71FC();
      v82 = v254;
      v83 = v76 + v254[9];
      *v83 = v81;
      *(v83 + 8) = 0;
      *(v76 + v82[10]) = 1;
      *(v76 + v82[11]) = 0;
      v84 = v76 + v82[12];
      strcpy(v84, "<precompiled>");
      *(v84 + 14) = -4864;
      *(v76 + v82[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAA7344(0, 1, &v283);
      v269 = v42;
      if (v42)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v283 = 0;
        v284 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v245 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0x5372657474696D45, 0xED00007470697263);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v85 = v269;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v87 = v283;
        v86 = v284;
        v88 = sub_1AFDFDA08();
        v59 = v270;
        if (qword_1ED731058 != -1)
        {
          v133 = v88;
          swift_once();
          v88 = v133;
        }

        v283 = 0;
        sub_1AF0D4F18(v88, &v283, v87, v86);

        result = sub_1AFD53198(v49, type metadata accessor for ScriptIndex);
        v42 = 0;
        goto LABEL_6;
      }

      v246 = v287;
      v247 = v288;

      v282 = MEMORY[0x1E69E7CD0];
      v89 = *v69;
      v276 = v89;
      if (v89 <= 1)
      {
        break;
      }

      v90 = v250;
      if (v89 == 2 || v89 == 3)
      {
        goto LABEL_35;
      }

      LODWORD(v268) = 1;
LABEL_36:

      v91 = sub_1AFD0834C(v251, v90 & 1);
      v92 = *(v91 + 2);
      if (!v92)
      {

        v50 = MEMORY[0x1E69E7CC0];
        v51 = MEMORY[0x1E69E7CC0];
        goto LABEL_5;
      }

      *&v280 = 0;
      v243 = v91;
      v93 = (v91 + 48);
      v50 = MEMORY[0x1E69E7CC0];
      v261 = MEMORY[0x1E69E7CC0];
      v262 = v278 | (v262 << 32);
      do
      {
        v95 = *(v93 - 2);
        v96 = *(v93 - 1);
        LODWORD(v278) = *v93;
        if (v268)
        {
          swift_bridgeObjectRetain_n();

          v97 = v272;
          v98 = sub_1AF6496EC(v272);

          v99 = sub_1AF6496EC(v97);

          v100 = v275;
          *v275 = v99;
          v101 = v100;
          v102 = v279;
          swift_storeEnumTagMultiPayload();
          (*v267)(v101, 0, 1, v102);
        }

        else
        {
          v101 = v275;
          sub_1AFD531F8(v49, v275, type metadata accessor for ScriptIndex);
          (*v267)(v101, 0, 1, v279);
          swift_bridgeObjectRetain_n();
          v98 = v262;
        }

        v103 = sub_1AFAF8B58(v95, v96, v273, v274, v98, 0x72657474696D65uLL, 0xE700000000000000, v101);
        v105 = v104;

        sub_1AFD53CA8(v101, qword_1ED730680, type metadata accessor for ScriptIndex);

        sub_1AF0D2164(&v283, v103, v105);

        if (v276 >= 4)
        {

LABEL_47:
          if (!v277 || (v107 = *(v277 + 96), v108 = sub_1AFDFCEC8(), v109 = [v107 objectForKeyedSubscript_], v107, v108, !v109))
          {

LABEL_74:

            v42 = v269;
            v59 = v270;

            v46 = &unk_1ED728DD0;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v283 = 0;
            v284 = 0xE000000000000000;
            sub_1AFDFE218();

            v283 = 0xD000000000000025;
            v284 = v235;
            MEMORY[0x1B2718AE0](v103, v105);

            v131 = v283;
            v130 = v284;
            v132 = sub_1AFDFDA08();
            v25 = v279;
            if (qword_1ED731058 != -1)
            {
              goto LABEL_83;
            }

            goto LABEL_77;
          }

          v110 = [v109 isUndefined];

          if (v110)
          {
            goto LABEL_74;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1AF4246B0(0, *(v50 + 2) + 1, 1, v50);
          }

          v111 = v278;
          v113 = *(v50 + 2);
          v112 = *(v50 + 3);
          if (v113 >= v112 >> 1)
          {
            v50 = sub_1AF4246B0(v112 > 1, v113 + 1, 1, v50);
          }

          *(v50 + 2) = v113 + 1;
          v94 = &v50[24 * v113];
          *(v94 + 4) = v103;
          *(v94 + 5) = v105;
          v94[48] = v111;

LABEL_39:
          v49 = v271;
          goto LABEL_40;
        }

        v106 = sub_1AFDFEE28();

        if (v106)
        {
          goto LABEL_47;
        }

        if (v276 == 2)
        {
          if (v260)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1AF4246B0(0, *(v50 + 2) + 1, 1, v50);
            }

            v114 = v278;
            v116 = *(v50 + 2);
            v115 = *(v50 + 3);
            if (v116 >= v115 >> 1)
            {
              v50 = sub_1AF4246B0(v115 > 1, v116 + 1, 1, v50);
            }

            *(v50 + 2) = v116 + 1;
            v117 = &v50[24 * v116];
            *(v117 + 4) = v103;
            *(v117 + 5) = v105;
            v117[48] = v114;
            *&v280 = v260;
          }

          else
          {

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v283 = 0;
            v284 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000027, v237 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v103, v105);

            MEMORY[0x1B2718AE0](0xD000000000000031, v236 | 0x8000000000000000);
            v126 = v283;
            v127 = v284;
            v128 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v129 = v128;
              swift_once();
              v128 = v129;
            }

            v283 = 0;
            sub_1AF0D4F18(v128, &v283, v126, v127);
          }

          goto LABEL_39;
        }

        v118 = v249;
        if (!*(v249 + 16) || (v119 = sub_1AF419914(v103, v105), (v120 & 1) == 0))
        {

          v42 = v269;
          v59 = v270;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v283 = 0;
          v284 = 0xE000000000000000;
          sub_1AFDFE218();

          v283 = 0xD000000000000022;
          v284 = v234;
          MEMORY[0x1B2718AE0](v103, v105);

          v131 = v283;
          v130 = v284;
          v132 = sub_1AFDFDA08();
          v25 = v279;
          v46 = &unk_1ED728DD0;
          if (qword_1ED731058 == -1)
          {
            goto LABEL_77;
          }

LABEL_83:
          v134 = v132;
          swift_once();
          v132 = v134;
LABEL_77:
          v283 = 0;
          sub_1AF0D4F18(v132, &v283, v131, v130);

          v49 = v271;
          result = sub_1AFD53198(v271, type metadata accessor for ScriptIndex);
          a2 = v244;
          goto LABEL_6;
        }

        v121 = v119;

        v122 = *(*(v118 + 56) + 8 * v121);
        v123 = v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1AF42469C(0, *(v123 + 2) + 1, 1, v123);
        }

        v49 = v271;
        v125 = *(v123 + 2);
        v124 = *(v123 + 3);
        if (v125 >= v124 >> 1)
        {
          v123 = sub_1AF42469C(v124 > 1, v125 + 1, 1, v123);
        }

        *(v123 + 2) = v125 + 1;
        v261 = v123;
        *&v123[8 * v125 + 32] = v122;

LABEL_40:
        v93 += 24;
        --v92;
      }

      while (v92);

      v46 = &unk_1ED728DD0;
      v92 = v280;
      v51 = v261;
LABEL_5:
      v52 = v240 + v238 * v270;
      sub_1AFD53C4C(v52, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v266, v52, v46, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      v53 = v239;
      v54 = (v52 + v239[15]);
      v55 = v247;
      *v54 = v246;
      v54[1] = v55;
      *(v52 + v53[9]) = v92;
      *(v52 + v53[10]) = v51;
      *(v52 + v53[11]) = v50;
      *(v52 + v53[12]) = 0;
      *(v52 + v53[13]) = 0;
      v56 = v52 + v53[14];
      *v56 = v251;
      *(v56 + 8) = v250 & 1;

      v57 = sub_1AF6496EC(v272);

      v285 = v53;
      v46 = &unk_1ED728DD0;
      v286 = &off_1F2558F90;
      v58 = sub_1AF585714(&v283);
      v59 = v270;
      sub_1AFD53D18(v52, v58, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      LOBYTE(v287) = 0;
      sub_1AF8259D0(&v283, v259, v57);
      sub_1AF967B70(v282);
      v49 = v271;
      result = sub_1AFD53198(v271, type metadata accessor for ScriptIndex);
      a2 = v244;
      v25 = v279;
      v42 = v269;
LABEL_6:
      v47 = v59 + 1;
      if (v47 == v256)
      {
        return result;
      }
    }

    v90 = v250;
LABEL_35:
    LODWORD(v268) = sub_1AFDFEE28();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AFD4744C(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v199 = a5;
  v200 = a6;
  LODWORD(v202) = a4;
  v206 = a3;
  v183 = a2;
  sub_1AF0D4E74();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v197 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1AFDFC298();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v166 - v22;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = (&v166 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v193 = &v166 - v38;
  v39 = a1[1];
  v182 = sub_1AF706C98(v39, a1);
  v181 = sub_1AF706270(v39, a1);
  result = sub_1AF7067C0(v39, a1);
  v167 = v6;
  v41 = a1[11];
  v178 = a1;
  v185 = v39;
  v176 = v41;
  if (v41)
  {
    v184 = v23;
    v175 = a1[13];
    if (v175)
    {
      inited = type metadata accessor for ParticleInitScript(0);
      v172 = *(*(inited - 8) + 72);
      sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v42 = 0;
      v180 = v43;
      v44 = *(v43 - 8);
      v179 = (v25 + 48);
      v171 = *(v44 + 72);
      v166 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v45 = &unk_1F2504168;
      if (v206 < 1029)
      {
        v45 = &unk_1F2504130;
      }

      v169 = v45;
      v168 = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v201 = v24;
      while (1)
      {
        v46 = v176[v42];
        v174 = a1[2];

        if (*(v39 + 184))
        {
          break;
        }

        v48 = *(v39 + 168);
        v186 = v46;
        v49 = *(v48 + 4 * v46);
        v50 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

        v51 = v183;
        if (*(v183 + 16) && (v52 = sub_1AF449D3C(v49 | (v50 << 32)), (v53 & 1) != 0))
        {
          v54 = (*(v51 + 56) + 8 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v177;
        }

        else
        {

          v57 = v177;
          if (*(v39 + 184))
          {
            break;
          }

          v55 = *(*(v39 + 168) + 4 * v186);
          v56 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        }

        v192 = v42;
        v59 = (v182 + v172 * v42);
        v60 = v184;
        sub_1AFB12858(&v59[*(inited + 40)], v184);
        v61 = *v179;
        if ((*v179)(v60, 1, v24) == 1)
        {
          v62 = v185;

          if (*(v62 + 184))
          {
            break;
          }

          v64 = *(*(v62 + 168) + 4 * v186);
          v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

          v66 = v193;
          *v193 = v64;
          *(v66 + 4) = v65;
          v67 = v66;
          swift_storeEnumTagMultiPayload();
          v68 = v61(v184, 1, v24);
          a1 = v178;
          if (v68 != 1)
          {
            sub_1AFD53CA8(v184, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v69 = v60;
          v67 = v193;
          sub_1AFD53D8C(v69, v193, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v67, v57, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v57, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v70 = *v57;
          v71 = *(v51 + 16);
          v202 = v70;
          if (v71)
          {
            v72 = sub_1AF449D3C(v70);
            if (v74)
            {
              *&v73 = *(*(v51 + 56) + 8 * v72);
              v202 = v73;
            }
          }

          sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
          *v67 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v75 = v181 + v171 * v192;
        if (!*(v75 + *(v180 + 40)) && !*(v75 + *(v180 + 44)))
        {
          v76 = v169;
          if (v168)
          {
            v76 = &unk_1F25041A0;
            if (*v59 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v76 = swift_allocObject();
              v76[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v166;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v77 = v204;
              *(v76 + 4) = v203;
              *(v76 + 5) = v77;
              *(v76 + 48) = 0;
            }
          }

          v170 = v76;
          v78 = *(v76 + 2);
          if (v78)
          {
            v191 = v55 | (v56 << 32);
            v79 = v170 + 5;
            do
            {
              *&v202 = v78;
              v80 = *(v79 - 1);
              v81 = *v79;
              v206 = v79;
              v82 = v194;
              sub_1AFD531F8(v67, v194, type metadata accessor for ScriptIndex);
              (*v188)(v82, 0, 1, v24);

              v83 = sub_1AFAF8B58(v80, v81, v199, v200, v191, 0x656C636974726170uLL, 0xEC00000074696E49, v82);
              v85 = v84;

              sub_1AFD53CA8(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v83, v85);

              v87 = v203;
              v86 = v204;
              v88 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v89 = swift_allocObject();
              *(v89 + 16) = v190;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1AF0D544C();
              *(v89 + 32) = v87;
              *(v89 + 40) = v86;

              sub_1AFDFC4C8();

              v90 = v195;
              sub_1AFDFC288();
              v91 = v197;
              v92 = v198[12];
              v93 = v198[16];
              v94 = &v197[v198[20]];
              (*v187)(v197, v90, v196);
              *(v91 + v92) = v88;
              *(v91 + v93) = 0;
              *v94 = v87;
              *(v94 + 1) = v86;

              sub_1AFDFC608();

              sub_1AFD53198(v91, sub_1AF0D4E74);

              v79 = (v206 + 24);
              v24 = v201;
              v78 = v202 - 1;
              v67 = v193;
            }

            while (v202 != 1);
          }

          v95 = v185;
          v96 = *(*(v185 + 40) + 16);
          v97 = *(v96 + 128);
          a1 = v178;
          if (*(v97 + 16))
          {
            v98 = sub_1AF449CB8(v180);
            if ((v99 & 1) != 0 && *(*(v96 + 24) + 16 * *(*(v97 + 56) + 8 * v98) + 32) == v180)
            {
              v203 = v180;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v95, v174);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
          v101 = *(*(v95 + 40) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v100;
            v104 = sub_1AF449CB8(v100);
            if ((v105 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v104) + 32) == v103)
            {
              v203 = v103;
              v204 = &off_1F250F310;
              v205 = 1;
              v106 = v185;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v106, v174);

              sub_1AF635250(&v203);
            }
          }
        }

        result = sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
        v42 = (v192 + 1);
        v39 = v185;
        if ((v192 + 1) == v175)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v192 = v32;
    v186 = v16;
    v107 = a1[6];
    v179 = a1[7];
    if (v107 != v179)
    {
      v175 = type metadata accessor for ParticleInitScript(0);
      v174 = *(*(v175 - 8) + 72);
      sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v184 = v108;
      v109 = *(v108 - 8);
      v180 = v25 + 48;
      inited = *(v109 + 72);
      v169 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v110 = &unk_1F2504168;
      if (v206 < 1029)
      {
        v110 = &unk_1F2504130;
      }

      v171 = v110;
      LODWORD(v170) = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v176 = v28;
      v201 = v24;
      while (1)
      {
        v177 = a1[2];

        if (*(v39 + 184))
        {
          goto LABEL_91;
        }

        v112 = *(v39 + 168);
        v193 = v107;
        v113 = *(v112 + 4 * v107);
        v114 = *(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

        v115 = v183;
        if (*(v183 + 16) && (v116 = sub_1AF449D3C(v113 | (v114 << 32)), (v117 & 1) != 0))
        {
          v118 = (*(v115 + 56) + 8 * v116);
          v119 = *v118;
          v120 = v118[1];
          v122 = v192;
          v121 = v193;
        }

        else
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v121 = v193;
          v119 = *(*(v39 + 168) + 4 * v193);
          v120 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          v122 = v192;
        }

        v124 = (v182 + v174 * v121);
        v125 = v186;
        sub_1AFB12858(&v124[*(v175 + 40)], v186);
        v126 = *v180;
        if ((*v180)(v125, 1, v24) == 1)
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v128 = *(*(v39 + 168) + 4 * v193);
          v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *v122 = v128;
          v122[1] = v129;
          v39 = v185;
          swift_storeEnumTagMultiPayload();
          if (v126(v186, 1, v24) != 1)
          {
            sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v125, v122, type metadata accessor for ScriptIndex);
        }

        v130 = v176;
        sub_1AFD531F8(v122, v176, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v131 = *v130;
          v132 = *(v115 + 16);
          v202 = v131;
          if (v132)
          {
            v133 = sub_1AF449D3C(v131);
            if (v135)
            {
              *&v134 = *(*(v115 + 56) + 8 * v133);
              v202 = v134;
            }
          }

          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
          *v122 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v136 = v181 + inited * v193;
        if (!*(v136 + *(v184 + 10)) && !*(v136 + *(v184 + 11)))
        {
          v137 = v171;
          if (v170)
          {
            v137 = &unk_1F25041A0;
            if (*v124 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v137 = swift_allocObject();
              v137[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v169;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v138 = v204;
              *(v137 + 4) = v203;
              *(v137 + 5) = v138;
              *(v137 + 48) = 0;
            }
          }

          v172 = v137;
          v139 = *(v137 + 2);
          if (v139)
          {
            v191 = v119 | (v120 << 32);
            v140 = v172 + 5;
            do
            {
              *&v202 = v139;
              v141 = *(v140 - 1);
              v142 = *v140;
              v206 = v140;
              v143 = v194;
              sub_1AFD531F8(v122, v194, type metadata accessor for ScriptIndex);
              (*v188)(v143, 0, 1, v201);

              v144 = sub_1AFAF8B58(v141, v142, v199, v200, v191, 0x656C636974726170uLL, 0xEC00000074696E49, v143);
              v146 = v145;

              sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v144, v146);

              v148 = v203;
              v147 = v204;
              v149 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v150 = swift_allocObject();
              *(v150 + 16) = v190;
              *(v150 + 56) = MEMORY[0x1E69E6158];
              *(v150 + 64) = sub_1AF0D544C();
              *(v150 + 32) = v148;
              *(v150 + 40) = v147;

              sub_1AFDFC4C8();

              v151 = v195;
              sub_1AFDFC288();
              v152 = v197;
              v153 = v198[12];
              v154 = v198[16];
              v155 = &v197[v198[20]];
              (*v187)(v197, v151, v196);
              *(v152 + v153) = v149;
              *(v152 + v154) = 0;
              *v155 = v148;
              *(v155 + 1) = v147;

              sub_1AFDFC608();

              sub_1AFD53198(v152, sub_1AF0D4E74);

              v140 = (v206 + 24);
              v139 = v202 - 1;
              v122 = v192;
            }

            while (v202 != 1);
          }

          v39 = v185;
          v156 = *(*(v185 + 40) + 16);
          v157 = *(v156 + 128);
          if (*(v157 + 16))
          {
            v158 = sub_1AF449CB8(v184);
            if ((v159 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v158) + 32) == v184)
            {
              v203 = v184;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
          v161 = *(*(v39 + 40) + 16);
          v162 = *(v161 + 128);
          v24 = v201;
          if (*(v162 + 16))
          {
            v163 = v160;
            v164 = sub_1AF449CB8(v160);
            if ((v165 & 1) != 0 && *(*(v161 + 24) + 16 * *(*(v162 + 56) + 8 * v164) + 32) == v163)
            {
              v203 = v163;
              v204 = &off_1F250F310;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }
        }

        v107 = v193 + 1;
        result = sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        a1 = v178;
        if (v107 == v179)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD48C2C(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v251 = a8;
  v279 = a7;
  v276 = a6;
  v275 = a5;
  v252 = a4;
  v253 = a3;
  v243 = a12;
  v242 = a11;
  v262 = a10;
  v250 = a9;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v277 = (&v234 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v267 = &v234 - v24;
  v25 = type metadata accessor for ScriptIndex();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v234 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v260 = (&v234 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v273 = &v234 - v39;
  v40 = a1[1];
  v266 = sub_1AF706C98(v40, a1);
  v241 = sub_1AF706270(v40, a1);
  v283 = v40;
  result = sub_1AF7067C0(v40, a1);
  v265 = result;
  v42 = v12;
  v43 = a1[11];
  v245 = a2;
  v281 = v25;
  v259 = v43;
  if (!v43)
  {
    v274 = v33;
    v260 = v29;
    v267 = v18;
    v135 = a1[6];
    v259 = a1[7];
    if (v135 == v259)
    {
      return result;
    }

    inited = type metadata accessor for ParticleInitScript(0);
    v258 = *(*(inited - 8) + 72);
    sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    v244 = v136;
    v240 = *(*(v136 - 1) + 72);
    sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v257 = v137;
    v256 = *(*(v137 - 1) + 72);
    v255 = (v26 + 48);
    v248 = "mpiled script for ";
    v247 = "rticleUpdateScript>";
    v270 = v26 + 56;
    v239 = "nction for script ";
    v238 = "tal library for script ";
    v236 = 0x80000001AFF4F110;
    v237 = 0x80000001AFF4F1B0;
    v138 = v274;
LABEL_91:
    v140 = v42;
    v268 = v265 + v256 * v135;
    sub_1AFD53C4C(v268, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);

    v141 = sub_1AF6496EC(v135);

    if (*(a2 + 16) && (v142 = sub_1AF449D3C(v141), (v143 & 1) != 0))
    {
      v144 = (*(a2 + 56) + 8 * v142);
      v146 = *v144;
      v145 = v144[1];
      v280 = v146;
    }

    else
    {

      v147 = sub_1AF6496EC(v135);

      v280 = v147;
      v145 = HIDWORD(v147);
    }

    v269 = v145;
    v148 = (v266 + v258 * v135);
    v149 = v267;
    sub_1AFB12858(&v148[*(inited + 40)], v267);
    v150 = *v255;
    v151 = (*v255)(v149, 1, v25);
    v273 = v135;
    if (v151 == 1)
    {

      v152 = sub_1AF6496EC(v135);
      v138 = v274;

      *v138 = v152;
      v153 = v267;
      swift_storeEnumTagMultiPayload();
      v154 = v150(v153, 1, v25);
      v155 = v268;
      if (v154 != 1)
      {
        sub_1AFD53CA8(v153, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFD53D8C(v149, v138, type metadata accessor for ScriptIndex);
      v155 = v268;
    }

    v156 = v260;
    sub_1AFD531F8(v138, v260, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFD53198(v156, type metadata accessor for ScriptIndex);
    }

    else
    {
      *&v157 = *v156;
      v158 = *(a2 + 16);
      v282 = v157;
      if (v158)
      {
        v159 = sub_1AF449D3C(v157);
        if (v161)
        {
          *&v160 = *(*(a2 + 56) + 8 * v159);
          v282 = v160;
        }
      }

      sub_1AFD53198(v138, type metadata accessor for ScriptIndex);
      *v138 = v282;
      swift_storeEnumTagMultiPayload();
    }

    sub_1AFD531F8(v148, v155, type metadata accessor for ParticleInitScript);
    v162 = sub_1AFAA2868();
    v163 = v257;
    v164 = v155 + v257[9];
    *v164 = v162;
    *(v164 + 8) = 0;
    *(v155 + v163[10]) = 1;
    *(v155 + v163[11]) = 0;
    v165 = v155 + v163[12];
    strcpy(v165, "<precompiled>");
    *(v165 + 14) = -4864;
    *(v155 + v163[13]) = MEMORY[0x1E69E7CC0];
    sub_1AFAA2CD8(0, 1uLL, &v285);
    v271 = v140;
    if (v140)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v285 = 0;
      v286 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v248 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0xD000000000000012, v247 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v166 = v271;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v168 = v285;
      v167 = v286;
      v169 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v233 = v169;
        swift_once();
        v169 = v233;
      }

      v285 = 0;
      sub_1AF0D4F18(v169, &v285, v168, v167);

      result = sub_1AFD53198(v138, type metadata accessor for ScriptIndex);
      v42 = 0;
LABEL_89:
      v139 = v273;
      goto LABEL_90;
    }

    v249 = v289;
    v170 = v290;

    v284 = MEMORY[0x1E69E7CD0];
    v171 = *v148;
    v172 = v252;
    v278 = v171;
    v254 = v170;
    if (v171 >= 4)
    {
      LODWORD(v272) = 1;
    }

    else
    {
      LODWORD(v272) = sub_1AFDFEE28();
    }

    v173 = sub_1AFD080F4(v253, v172 & 1);
    v174 = *(v173 + 2);
    if (!v174)
    {

      v280 = 0;
      v220 = MEMORY[0x1E69E7CC0];
      *&v282 = MEMORY[0x1E69E7CC0];
      v221 = v172;
      goto LABEL_158;
    }

    v175 = 0;
    v246 = v173;
    v176 = (v173 + 48);
    *&v282 = MEMORY[0x1E69E7CC0];
    v263 = MEMORY[0x1E69E7CC0];
    v264 = v280 | (v269 << 32);
    v177 = v279;
    while (1)
    {
      v179 = *(v176 - 2);
      v180 = *(v176 - 1);
      LODWORD(v280) = *v176;
      if (v272)
      {
        swift_bridgeObjectRetain_n();

        v181 = v180;
        v182 = v176;
        v183 = v174;
        v184 = v177;
        v185 = v175;
        v186 = v273;
        v269 = v179;
        v187 = sub_1AF6496EC(v273);

        v188 = v186;
        v175 = v185;
        v177 = v184;
        v174 = v183;
        v176 = v182;
        v180 = v181;
        v189 = sub_1AF6496EC(v188);

        v190 = v277;
        *v277 = v189;
        v191 = v281;
        swift_storeEnumTagMultiPayload();
        v192 = v191;
        v179 = v269;
        (*v270)(v190, 0, 1, v192);
      }

      else
      {
        v190 = v277;
        sub_1AFD531F8(v138, v277, type metadata accessor for ScriptIndex);
        (*v270)(v190, 0, 1, v281);
        swift_bridgeObjectRetain_n();
        v187 = v264;
      }

      v193 = sub_1AFAF8B58(v179, v180, v275, v276, v187, 0x656C636974726170uLL, 0xEC00000074696E49, v190);
      v195 = v194;

      sub_1AFD53CA8(v190, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v285, v193, v195);

      if (v278 >= 4)
      {
        break;
      }

      v196 = sub_1AFDFEE28();

      if (v196)
      {
        goto LABEL_125;
      }

      if (v278 != 2)
      {

        v208 = v251;
        if (!*(v251 + 16) || (v209 = sub_1AF419914(v193, v195), (v210 & 1) == 0))
        {

          v42 = v271;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v285 = 0;
          v286 = 0xE000000000000000;
          sub_1AFDFE218();

          v285 = 0xD000000000000022;
          v286 = v236;
          MEMORY[0x1B2718AE0](v193, v195);

          v223 = v285;
          v222 = v286;
          v224 = sub_1AFDFDA08();
          v25 = v281;
          if (qword_1ED731058 != -1)
          {
            goto LABEL_156;
          }

          goto LABEL_88;
        }

        v211 = v209;

        v212 = *(*(v208 + 56) + 8 * v211);
        v213 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v213 = sub_1AF42469C(0, *(v213 + 2) + 1, 1, v213);
        }

        v138 = v274;
        v201 = v282;
        v215 = *(v213 + 2);
        v214 = *(v213 + 3);
        if (v215 >= v214 >> 1)
        {
          v213 = sub_1AF42469C(v214 > 1, v215 + 1, 1, v213);
        }

        *(v213 + 2) = v215 + 1;
        v263 = v213;
        *&v213[8 * v215 + 32] = v212;
        v175 = v250;

        v177 = v279;
        goto LABEL_118;
      }

      if (v262)
      {

        v201 = v282;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_1AF4246B0(0, *(v201 + 2) + 1, 1, v201);
        }

        v206 = *(v201 + 2);
        v205 = *(v201 + 3);
        if (v206 >= v205 >> 1)
        {
          v201 = sub_1AF4246B0(v205 > 1, v206 + 1, 1, v201);
        }

        *(v201 + 2) = v206 + 1;
        v207 = &v201[24 * v206];
        *(v207 + 4) = v193;
        *(v207 + 5) = v195;
        v207[48] = v280;
        v175 = v262;
      }

      else
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v285 = 0;
        v286 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, v239 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v193, v195);

        MEMORY[0x1B2718AE0](0xD000000000000031, v238 | 0x8000000000000000);
        v216 = v285;
        v217 = v286;
        v218 = sub_1AFDFDA08();
        v201 = v282;
        if (qword_1ED731058 != -1)
        {
          v219 = v218;
          swift_once();
          v218 = v219;
        }

        v285 = 0;
        sub_1AF0D4F18(v218, &v285, v216, v217);
      }

LABEL_117:
      v138 = v274;
LABEL_118:
      *&v282 = v201;
      v176 += 24;
      if (!--v174)
      {

        v221 = v252;
        v280 = v175;
        v220 = v263;
LABEL_158:
        v139 = v273;
        v226 = v241 + v240 * v273;
        sub_1AFD53C4C(v226, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        sub_1AFD53D18(v268, v226, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v227 = v244;
        v228 = (v226 + v244[15]);
        v229 = v254;
        *v228 = v249;
        v228[1] = v229;
        *(v226 + v227[9]) = v280;
        *(v226 + v227[10]) = v220;
        *(v226 + v227[11]) = v282;
        *(v226 + v227[12]) = 0;
        *(v226 + v227[13]) = 0;
        v230 = v226 + v227[14];
        *v230 = v253;
        *(v230 + 8) = v221 & 1;

        v231 = sub_1AF6496EC(v139);

        v287 = v227;
        v288 = &off_1F2558F90;
        v232 = sub_1AF585714(&v285);
        sub_1AFD53D18(v226, v232, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        LOBYTE(v289) = 0;
        sub_1AF8259D0(&v285, inited, v231);
        sub_1AF967B70(v284);
        v138 = v274;
        result = sub_1AFD53198(v274, type metadata accessor for ScriptIndex);
        a2 = v245;
        v25 = v281;
        v42 = v271;
LABEL_90:
        v135 = v139 + 1;
        if (v135 == v259)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

LABEL_125:
    if (!v177 || (v197 = *(v177 + 96), v198 = sub_1AFDFCEC8(), v199 = [v197 objectForKeyedSubscript_], v197, v198, !v199))
    {

LABEL_153:

      v42 = v271;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v285 = 0;
      v286 = 0xE000000000000000;
      sub_1AFDFE218();

      v285 = 0xD000000000000025;
      v286 = v237;
      MEMORY[0x1B2718AE0](v193, v195);

      v223 = v285;
      v222 = v286;
      v224 = sub_1AFDFDA08();
      v25 = v281;
      if (qword_1ED731058 != -1)
      {
LABEL_156:
        v225 = v224;
        swift_once();
        v224 = v225;
      }

LABEL_88:
      v285 = 0;
      sub_1AF0D4F18(v224, &v285, v223, v222);

      v138 = v274;
      result = sub_1AFD53198(v274, type metadata accessor for ScriptIndex);
      a2 = v245;
      goto LABEL_89;
    }

    v200 = [v199 isUndefined];

    if (v200)
    {
      goto LABEL_153;
    }

    v201 = v282;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = v279;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v201 = sub_1AF4246B0(0, *(v201 + 2) + 1, 1, v201);
    }

    v204 = *(v201 + 2);
    v203 = *(v201 + 3);
    if (v204 >= v203 >> 1)
    {
      v201 = sub_1AF4246B0(v203 > 1, v204 + 1, 1, v201);
    }

    *(v201 + 2) = v204 + 1;
    v178 = &v201[24 * v204];
    *(v178 + 4) = v193;
    *(v178 + 5) = v195;
    v178[48] = v280;

    v175 = v177;
    goto LABEL_117;
  }

  v258 = a1[13];
  if (v258)
  {
    inited = type metadata accessor for ParticleInitScript(0);
    v257 = *(*(inited - 8) + 72);
    sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    v240 = v44;
    v239 = *(*(v44 - 1) + 72);
    v45 = v26;
    v46 = qword_1ED728E30;
    sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v47 = 0;
    v256 = v48;
    v255 = *(*(v48 - 1) + 72);
    v254 = (v45 + 48);
    v247 = "mpiled script for ";
    v246 = "rticleUpdateScript>";
    v269 = v45 + 56;
    v238 = "nction for script ";
    v237 = "tal library for script ";
    v235 = 0x80000001AFF4F110;
    v236 = 0x80000001AFF4F1B0;
    v49 = v273;
    while (1)
    {
      v60 = *(v259 + 8 * v47);
      v272 = v47;
      v268 = v265 + v255 * v47;
      sub_1AFD53C4C(v268, v46, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);

      v274 = v60;
      v61 = sub_1AF6496EC(v60);

      if (*(a2 + 16) && (v62 = sub_1AF449D3C(v61), (v63 & 1) != 0))
      {
        v64 = v46;
        v65 = (*(a2 + 56) + 8 * v62);
        v67 = *v65;
        v66 = v65[1];
        v280 = v67;
      }

      else
      {
        v64 = v46;

        v68 = sub_1AF6496EC(v274);

        v280 = v68;
        v66 = HIDWORD(v68);
      }

      v264 = v66;
      v69 = (v266 + v257 * v272);
      v70 = v267;
      sub_1AFB12858(&v69[*(inited + 40)], v267);
      v71 = *v254;
      if ((*v254)(v70, 1, v25) == 1)
      {

        v72 = sub_1AF6496EC(v274);
        v49 = v273;

        *v49 = v72;
        v73 = v267;
        swift_storeEnumTagMultiPayload();
        if (v71(v73, 1, v25) != 1)
        {
          sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v70, v49, type metadata accessor for ScriptIndex);
      }

      v74 = v260;
      sub_1AFD531F8(v49, v260, type metadata accessor for ScriptIndex);
      v46 = v64;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v74, type metadata accessor for ScriptIndex);
        v76 = v268;
      }

      else
      {
        *&v75 = *v74;
        v77 = *(a2 + 16);
        v282 = v75;
        if (v77)
        {
          v78 = sub_1AF449D3C(v75);
          v76 = v268;
          if (v80)
          {
            *&v79 = *(*(a2 + 56) + 8 * v78);
            v282 = v79;
          }
        }

        else
        {
          v76 = v268;
        }

        sub_1AFD53198(v49, type metadata accessor for ScriptIndex);
        *v49 = v282;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v69, v76, type metadata accessor for ParticleInitScript);
      v81 = sub_1AFAA2868();
      v82 = v256;
      v83 = v76 + v256[9];
      *v83 = v81;
      *(v83 + 8) = 0;
      *(v76 + v82[10]) = 1;
      *(v76 + v82[11]) = 0;
      v84 = v76 + v82[12];
      strcpy(v84, "<precompiled>");
      *(v84 + 14) = -4864;
      *(v76 + v82[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAA2CD8(0, 1uLL, &v285);
      v271 = v42;
      if (v42)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v285 = 0;
        v286 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v247 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0xD000000000000012, v246 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v85 = v271;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v87 = v285;
        v86 = v286;
        v88 = sub_1AFDFDA08();
        v59 = v272;
        if (qword_1ED731058 != -1)
        {
          v133 = v88;
          swift_once();
          v88 = v133;
        }

        v285 = 0;
        sub_1AF0D4F18(v88, &v285, v87, v86);

        result = sub_1AFD53198(v49, type metadata accessor for ScriptIndex);
        v42 = 0;
        goto LABEL_6;
      }

      v248 = v289;
      v249 = v290;

      v284 = MEMORY[0x1E69E7CD0];
      v89 = *v69;
      v278 = v89;
      if (v89 <= 1)
      {
        break;
      }

      v90 = v252;
      if (v89 == 2 || v89 == 3)
      {
        goto LABEL_35;
      }

      LODWORD(v270) = 1;
LABEL_36:

      v91 = sub_1AFD080F4(v253, v90 & 1);
      v92 = *(v91 + 2);
      if (!v92)
      {

        v50 = MEMORY[0x1E69E7CC0];
        v51 = MEMORY[0x1E69E7CC0];
        goto LABEL_5;
      }

      *&v282 = 0;
      v244 = v91;
      v93 = (v91 + 48);
      v50 = MEMORY[0x1E69E7CC0];
      v263 = MEMORY[0x1E69E7CC0];
      v264 = v280 | (v264 << 32);
      do
      {
        v95 = *(v93 - 2);
        v96 = *(v93 - 1);
        LODWORD(v280) = *v93;
        if (v270)
        {
          swift_bridgeObjectRetain_n();

          v97 = v274;
          v98 = sub_1AF6496EC(v274);

          v99 = sub_1AF6496EC(v97);

          v100 = v277;
          *v277 = v99;
          v101 = v100;
          v102 = v281;
          swift_storeEnumTagMultiPayload();
          (*v269)(v101, 0, 1, v102);
        }

        else
        {
          v101 = v277;
          sub_1AFD531F8(v49, v277, type metadata accessor for ScriptIndex);
          (*v269)(v101, 0, 1, v281);
          swift_bridgeObjectRetain_n();
          v98 = v264;
        }

        v103 = sub_1AFAF8B58(v95, v96, v275, v276, v98, 0x656C636974726170uLL, 0xEC00000074696E49, v101);
        v105 = v104;

        sub_1AFD53CA8(v101, qword_1ED730680, type metadata accessor for ScriptIndex);

        sub_1AF0D2164(&v285, v103, v105);

        if (v278 >= 4)
        {

LABEL_47:
          if (!v279 || (v107 = *(v279 + 96), v108 = sub_1AFDFCEC8(), v109 = [v107 objectForKeyedSubscript_], v107, v108, !v109))
          {

LABEL_74:

            v42 = v271;
            v59 = v272;

            v46 = qword_1ED728E30;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v285 = 0;
            v286 = 0xE000000000000000;
            sub_1AFDFE218();

            v285 = 0xD000000000000025;
            v286 = v236;
            MEMORY[0x1B2718AE0](v103, v105);

            v131 = v285;
            v130 = v286;
            v132 = sub_1AFDFDA08();
            v25 = v281;
            if (qword_1ED731058 != -1)
            {
              goto LABEL_83;
            }

            goto LABEL_77;
          }

          v110 = [v109 isUndefined];

          if (v110)
          {
            goto LABEL_74;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1AF4246B0(0, *(v50 + 2) + 1, 1, v50);
          }

          v111 = v280;
          v113 = *(v50 + 2);
          v112 = *(v50 + 3);
          if (v113 >= v112 >> 1)
          {
            v50 = sub_1AF4246B0(v112 > 1, v113 + 1, 1, v50);
          }

          *(v50 + 2) = v113 + 1;
          v94 = &v50[24 * v113];
          *(v94 + 4) = v103;
          *(v94 + 5) = v105;
          v94[48] = v111;

LABEL_39:
          v49 = v273;
          goto LABEL_40;
        }

        v106 = sub_1AFDFEE28();

        if (v106)
        {
          goto LABEL_47;
        }

        if (v278 == 2)
        {
          if (v262)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1AF4246B0(0, *(v50 + 2) + 1, 1, v50);
            }

            v114 = v280;
            v116 = *(v50 + 2);
            v115 = *(v50 + 3);
            if (v116 >= v115 >> 1)
            {
              v50 = sub_1AF4246B0(v115 > 1, v116 + 1, 1, v50);
            }

            *(v50 + 2) = v116 + 1;
            v117 = &v50[24 * v116];
            *(v117 + 4) = v103;
            *(v117 + 5) = v105;
            v117[48] = v114;
            *&v282 = v262;
          }

          else
          {

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v285 = 0;
            v286 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000027, v238 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v103, v105);

            MEMORY[0x1B2718AE0](0xD000000000000031, v237 | 0x8000000000000000);
            v126 = v285;
            v127 = v286;
            v128 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v129 = v128;
              swift_once();
              v128 = v129;
            }

            v285 = 0;
            sub_1AF0D4F18(v128, &v285, v126, v127);
          }

          goto LABEL_39;
        }

        v118 = v251;
        if (!*(v251 + 16) || (v119 = sub_1AF419914(v103, v105), (v120 & 1) == 0))
        {

          v42 = v271;
          v59 = v272;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v285 = 0;
          v286 = 0xE000000000000000;
          sub_1AFDFE218();

          v285 = 0xD000000000000022;
          v286 = v235;
          MEMORY[0x1B2718AE0](v103, v105);

          v131 = v285;
          v130 = v286;
          v132 = sub_1AFDFDA08();
          v25 = v281;
          v46 = qword_1ED728E30;
          if (qword_1ED731058 == -1)
          {
            goto LABEL_77;
          }

LABEL_83:
          v134 = v132;
          swift_once();
          v132 = v134;
LABEL_77:
          v285 = 0;
          sub_1AF0D4F18(v132, &v285, v131, v130);

          v49 = v273;
          result = sub_1AFD53198(v273, type metadata accessor for ScriptIndex);
          a2 = v245;
          goto LABEL_6;
        }

        v121 = v119;

        v122 = *(*(v118 + 56) + 8 * v121);
        v123 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1AF42469C(0, *(v123 + 2) + 1, 1, v123);
        }

        v49 = v273;
        v125 = *(v123 + 2);
        v124 = *(v123 + 3);
        if (v125 >= v124 >> 1)
        {
          v123 = sub_1AF42469C(v124 > 1, v125 + 1, 1, v123);
        }

        *(v123 + 2) = v125 + 1;
        v263 = v123;
        *&v123[8 * v125 + 32] = v122;

LABEL_40:
        v93 += 24;
        --v92;
      }

      while (v92);

      v46 = qword_1ED728E30;
      v92 = v282;
      v51 = v263;
LABEL_5:
      v52 = v241 + v239 * v272;
      sub_1AFD53C4C(v52, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v268, v52, v46, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      v53 = v240;
      v54 = (v52 + v240[15]);
      v55 = v249;
      *v54 = v248;
      v54[1] = v55;
      *(v52 + v53[9]) = v92;
      *(v52 + v53[10]) = v51;
      *(v52 + v53[11]) = v50;
      *(v52 + v53[12]) = 0;
      *(v52 + v53[13]) = 0;
      v56 = v52 + v53[14];
      *v56 = v253;
      *(v56 + 8) = v252 & 1;

      v57 = sub_1AF6496EC(v274);

      v287 = v53;
      v46 = qword_1ED728E30;
      v288 = &off_1F2558F90;
      v58 = sub_1AF585714(&v285);
      v59 = v272;
      sub_1AFD53D18(v52, v58, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      LOBYTE(v289) = 0;
      sub_1AF8259D0(&v285, inited, v57);
      sub_1AF967B70(v284);
      v49 = v273;
      result = sub_1AFD53198(v273, type metadata accessor for ScriptIndex);
      a2 = v245;
      v25 = v281;
      v42 = v271;
LABEL_6:
      v47 = v59 + 1;
      if (v47 == v258)
      {
        return result;
      }
    }

    v90 = v252;
LABEL_35:
    LODWORD(v270) = sub_1AFDFEE28();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AFD4B488(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v199 = a5;
  v200 = a6;
  LODWORD(v202) = a4;
  v206 = a3;
  v183 = a2;
  sub_1AF0D4E74();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v197 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1AFDFC298();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v166 - v22;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = (&v166 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v193 = &v166 - v38;
  v39 = a1[1];
  v182 = sub_1AF706C64(v39, a1);
  v181 = sub_1AF7061B4(v39, a1);
  result = sub_1AF706704(v39, a1);
  v167 = v6;
  v41 = a1[11];
  v178 = a1;
  v185 = v39;
  v176 = v41;
  if (v41)
  {
    v184 = v23;
    v175 = a1[13];
    if (v175)
    {
      updated = type metadata accessor for ParticleUpdateScript(0);
      v172 = *(*(updated - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v42 = 0;
      v180 = v43;
      v44 = *(v43 - 8);
      v179 = (v25 + 48);
      v171 = *(v44 + 72);
      v166 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v45 = &unk_1F2504210;
      if (v206 < 1029)
      {
        v45 = &unk_1F25041D8;
      }

      v169 = v45;
      v168 = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v201 = v24;
      while (1)
      {
        v46 = v176[v42];
        v174 = a1[2];

        if (*(v39 + 184))
        {
          break;
        }

        v48 = *(v39 + 168);
        v186 = v46;
        v49 = *(v48 + 4 * v46);
        v50 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

        v51 = v183;
        if (*(v183 + 16) && (v52 = sub_1AF449D3C(v49 | (v50 << 32)), (v53 & 1) != 0))
        {
          v54 = (*(v51 + 56) + 8 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v177;
        }

        else
        {

          v57 = v177;
          if (*(v39 + 184))
          {
            break;
          }

          v55 = *(*(v39 + 168) + 4 * v186);
          v56 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        }

        v192 = v42;
        v59 = v182 + v172 * v42;
        v60 = v184;
        sub_1AFB12858(v59 + *(updated + 40), v184);
        v61 = *v179;
        if ((*v179)(v60, 1, v24) == 1)
        {
          v62 = v185;

          if (*(v62 + 184))
          {
            break;
          }

          v64 = *(*(v62 + 168) + 4 * v186);
          v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

          v66 = v193;
          *v193 = v64;
          *(v66 + 4) = v65;
          v67 = v66;
          swift_storeEnumTagMultiPayload();
          v68 = v61(v184, 1, v24);
          a1 = v178;
          if (v68 != 1)
          {
            sub_1AFD53CA8(v184, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v69 = v60;
          v67 = v193;
          sub_1AFD53D8C(v69, v193, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v67, v57, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v57, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v70 = *v57;
          v71 = *(v51 + 16);
          v202 = v70;
          if (v71)
          {
            v72 = sub_1AF449D3C(v70);
            if (v74)
            {
              *&v73 = *(*(v51 + 56) + 8 * v72);
              v202 = v73;
            }
          }

          sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
          *v67 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v75 = v181 + v171 * v192;
        if (!*(v75 + *(v180 + 40)) && !*(v75 + *(v180 + 44)))
        {
          v76 = v169;
          if (v168)
          {
            v76 = &unk_1F2504248;
            if (*(v59 + 24) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v76 = swift_allocObject();
              v76[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v166;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v77 = v204;
              *(v76 + 4) = v203;
              *(v76 + 5) = v77;
              *(v76 + 48) = 0;
            }
          }

          v170 = v76;
          v78 = *(v76 + 2);
          if (v78)
          {
            v191 = v55 | (v56 << 32);
            v79 = v170 + 5;
            do
            {
              *&v202 = v78;
              v80 = *(v79 - 1);
              v81 = *v79;
              v206 = v79;
              v82 = v194;
              sub_1AFD531F8(v67, v194, type metadata accessor for ScriptIndex);
              (*v188)(v82, 0, 1, v24);

              v83 = sub_1AFAF8B58(v80, v81, v199, v200, v191, 0x656C636974726170uLL, 0xEE00657461647055, v82);
              v85 = v84;

              sub_1AFD53CA8(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v83, v85);

              v87 = v203;
              v86 = v204;
              v88 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v89 = swift_allocObject();
              *(v89 + 16) = v190;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1AF0D544C();
              *(v89 + 32) = v87;
              *(v89 + 40) = v86;

              sub_1AFDFC4C8();

              v90 = v195;
              sub_1AFDFC288();
              v91 = v197;
              v92 = v198[12];
              v93 = v198[16];
              v94 = &v197[v198[20]];
              (*v187)(v197, v90, v196);
              *(v91 + v92) = v88;
              *(v91 + v93) = 0;
              *v94 = v87;
              *(v94 + 1) = v86;

              sub_1AFDFC608();

              sub_1AFD53198(v91, sub_1AF0D4E74);

              v79 = (v206 + 24);
              v24 = v201;
              v78 = v202 - 1;
              v67 = v193;
            }

            while (v202 != 1);
          }

          v95 = v185;
          v96 = *(*(v185 + 40) + 16);
          v97 = *(v96 + 128);
          a1 = v178;
          if (*(v97 + 16))
          {
            v98 = sub_1AF449CB8(v180);
            if ((v99 & 1) != 0 && *(*(v96 + 24) + 16 * *(*(v97 + 56) + 8 * v98) + 32) == v180)
            {
              v203 = v180;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v95, v174);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
          v101 = *(*(v95 + 40) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v100;
            v104 = sub_1AF449CB8(v100);
            if ((v105 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v104) + 32) == v103)
            {
              v203 = v103;
              v204 = &off_1F250F310;
              v205 = 1;
              v106 = v185;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v106, v174);

              sub_1AF635250(&v203);
            }
          }
        }

        result = sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
        v42 = (v192 + 1);
        v39 = v185;
        if ((v192 + 1) == v175)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v192 = v32;
    v186 = v16;
    v107 = a1[6];
    v179 = a1[7];
    if (v107 != v179)
    {
      v175 = type metadata accessor for ParticleUpdateScript(0);
      v174 = *(*(v175 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v184 = v108;
      v109 = *(v108 - 8);
      v180 = v25 + 48;
      updated = *(v109 + 72);
      v169 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v110 = &unk_1F2504210;
      if (v206 < 1029)
      {
        v110 = &unk_1F25041D8;
      }

      v171 = v110;
      LODWORD(v170) = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v176 = v28;
      v201 = v24;
      while (1)
      {
        v177 = a1[2];

        if (*(v39 + 184))
        {
          goto LABEL_91;
        }

        v112 = *(v39 + 168);
        v193 = v107;
        v113 = *(v112 + 4 * v107);
        v114 = *(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

        v115 = v183;
        if (*(v183 + 16) && (v116 = sub_1AF449D3C(v113 | (v114 << 32)), (v117 & 1) != 0))
        {
          v118 = (*(v115 + 56) + 8 * v116);
          v119 = *v118;
          v120 = v118[1];
          v122 = v192;
          v121 = v193;
        }

        else
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v121 = v193;
          v119 = *(*(v39 + 168) + 4 * v193);
          v120 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          v122 = v192;
        }

        v124 = v182 + v174 * v121;
        v125 = v186;
        sub_1AFB12858(v124 + *(v175 + 40), v186);
        v126 = *v180;
        if ((*v180)(v125, 1, v24) == 1)
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v128 = *(*(v39 + 168) + 4 * v193);
          v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *v122 = v128;
          v122[1] = v129;
          v39 = v185;
          swift_storeEnumTagMultiPayload();
          if (v126(v186, 1, v24) != 1)
          {
            sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v125, v122, type metadata accessor for ScriptIndex);
        }

        v130 = v176;
        sub_1AFD531F8(v122, v176, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v131 = *v130;
          v132 = *(v115 + 16);
          v202 = v131;
          if (v132)
          {
            v133 = sub_1AF449D3C(v131);
            if (v135)
            {
              *&v134 = *(*(v115 + 56) + 8 * v133);
              v202 = v134;
            }
          }

          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
          *v122 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v136 = v181 + updated * v193;
        if (!*(v136 + *(v184 + 10)) && !*(v136 + *(v184 + 11)))
        {
          v137 = v171;
          if (v170)
          {
            v137 = &unk_1F2504248;
            if (*(v124 + 24) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v137 = swift_allocObject();
              v137[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v169;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v138 = v204;
              *(v137 + 4) = v203;
              *(v137 + 5) = v138;
              *(v137 + 48) = 0;
            }
          }

          v172 = v137;
          v139 = *(v137 + 2);
          if (v139)
          {
            v191 = v119 | (v120 << 32);
            v140 = v172 + 5;
            do
            {
              *&v202 = v139;
              v141 = *(v140 - 1);
              v142 = *v140;
              v206 = v140;
              v143 = v194;
              sub_1AFD531F8(v122, v194, type metadata accessor for ScriptIndex);
              (*v188)(v143, 0, 1, v201);

              v144 = sub_1AFAF8B58(v141, v142, v199, v200, v191, 0x656C636974726170uLL, 0xEE00657461647055, v143);
              v146 = v145;

              sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v144, v146);

              v148 = v203;
              v147 = v204;
              v149 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v150 = swift_allocObject();
              *(v150 + 16) = v190;
              *(v150 + 56) = MEMORY[0x1E69E6158];
              *(v150 + 64) = sub_1AF0D544C();
              *(v150 + 32) = v148;
              *(v150 + 40) = v147;

              sub_1AFDFC4C8();

              v151 = v195;
              sub_1AFDFC288();
              v152 = v197;
              v153 = v198[12];
              v154 = v198[16];
              v155 = &v197[v198[20]];
              (*v187)(v197, v151, v196);
              *(v152 + v153) = v149;
              *(v152 + v154) = 0;
              *v155 = v148;
              *(v155 + 1) = v147;

              sub_1AFDFC608();

              sub_1AFD53198(v152, sub_1AF0D4E74);

              v140 = (v206 + 24);
              v139 = v202 - 1;
              v122 = v192;
            }

            while (v202 != 1);
          }

          v39 = v185;
          v156 = *(*(v185 + 40) + 16);
          v157 = *(v156 + 128);
          if (*(v157 + 16))
          {
            v158 = sub_1AF449CB8(v184);
            if ((v159 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v158) + 32) == v184)
            {
              v203 = v184;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
          v161 = *(*(v39 + 40) + 16);
          v162 = *(v161 + 128);
          v24 = v201;
          if (*(v162 + 16))
          {
            v163 = v160;
            v164 = sub_1AF449CB8(v160);
            if ((v165 & 1) != 0 && *(*(v161 + 24) + 16 * *(*(v162 + 56) + 8 * v164) + 32) == v163)
            {
              v203 = v163;
              v204 = &off_1F250F310;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }
        }

        v107 = v193 + 1;
        result = sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        a1 = v178;
        if (v107 == v179)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD4CC70(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v251 = a8;
  v279 = a7;
  v276 = a6;
  v275 = a5;
  v252 = a4;
  v253 = a3;
  v243 = a12;
  v242 = a11;
  v262 = a10;
  v250 = a9;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v277 = (&v234 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v267 = &v234 - v24;
  v25 = type metadata accessor for ScriptIndex();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v234 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v260 = (&v234 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v273 = &v234 - v39;
  v40 = a1[1];
  v266 = sub_1AF706C64(v40, a1);
  v241 = sub_1AF7061B4(v40, a1);
  v283 = v40;
  result = sub_1AF706704(v40, a1);
  v265 = result;
  v42 = v12;
  v43 = a1[11];
  v245 = a2;
  v281 = v25;
  v259 = v43;
  if (!v43)
  {
    v274 = v33;
    v260 = v29;
    v267 = v18;
    v135 = a1[6];
    v259 = a1[7];
    if (v135 == v259)
    {
      return result;
    }

    updated = type metadata accessor for ParticleUpdateScript(0);
    v258 = *(*(updated - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v244 = v136;
    v240 = *(*(v136 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v257 = v137;
    v256 = *(*(v137 - 1) + 72);
    v255 = (v26 + 48);
    v248 = "mpiled script for ";
    v247 = "ration<TriggerScript>";
    v270 = v26 + 56;
    v239 = "nction for script ";
    v238 = "tal library for script ";
    v236 = 0x80000001AFF4F110;
    v237 = 0x80000001AFF4F1B0;
    v138 = v274;
LABEL_91:
    v140 = v42;
    v268 = v265 + v256 * v135;
    sub_1AFD53C4C(v268, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);

    v141 = sub_1AF6496EC(v135);

    if (*(a2 + 16) && (v142 = sub_1AF449D3C(v141), (v143 & 1) != 0))
    {
      v144 = (*(a2 + 56) + 8 * v142);
      v146 = *v144;
      v145 = v144[1];
      v280 = v146;
    }

    else
    {

      v147 = sub_1AF6496EC(v135);

      v280 = v147;
      v145 = HIDWORD(v147);
    }

    v269 = v145;
    v148 = v266 + v258 * v135;
    v149 = v267;
    sub_1AFB12858(v148 + *(updated + 40), v267);
    v150 = *v255;
    v151 = (*v255)(v149, 1, v25);
    v273 = v135;
    if (v151 == 1)
    {

      v152 = sub_1AF6496EC(v135);
      v138 = v274;

      *v138 = v152;
      v153 = v267;
      swift_storeEnumTagMultiPayload();
      v154 = v150(v153, 1, v25);
      v155 = v268;
      if (v154 != 1)
      {
        sub_1AFD53CA8(v153, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFD53D8C(v149, v138, type metadata accessor for ScriptIndex);
      v155 = v268;
    }

    v156 = v260;
    sub_1AFD531F8(v138, v260, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFD53198(v156, type metadata accessor for ScriptIndex);
    }

    else
    {
      *&v157 = *v156;
      v158 = *(a2 + 16);
      v282 = v157;
      if (v158)
      {
        v159 = sub_1AF449D3C(v157);
        if (v161)
        {
          *&v160 = *(*(a2 + 56) + 8 * v159);
          v282 = v160;
        }
      }

      sub_1AFD53198(v138, type metadata accessor for ScriptIndex);
      *v138 = v282;
      swift_storeEnumTagMultiPayload();
    }

    sub_1AFD531F8(v148, v155, type metadata accessor for ParticleUpdateScript);
    v162 = sub_1AFAA3818();
    v163 = v257;
    v164 = v155 + v257[9];
    *v164 = v162;
    *(v164 + 8) = 0;
    *(v155 + v163[10]) = 1;
    *(v155 + v163[11]) = 0;
    v165 = v155 + v163[12];
    strcpy(v165, "<precompiled>");
    *(v165 + 14) = -4864;
    *(v155 + v163[13]) = MEMORY[0x1E69E7CC0];
    sub_1AFAA3C54(0, 1uLL, &v285);
    v271 = v140;
    if (v140)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v285 = 0;
      v286 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v248 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0xD000000000000014, v247 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v166 = v271;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v168 = v285;
      v167 = v286;
      v169 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v233 = v169;
        swift_once();
        v169 = v233;
      }

      v285 = 0;
      sub_1AF0D4F18(v169, &v285, v168, v167);

      result = sub_1AFD53198(v138, type metadata accessor for ScriptIndex);
      v42 = 0;
LABEL_89:
      v139 = v273;
      goto LABEL_90;
    }

    v249 = v289;
    v170 = v290;

    v284 = MEMORY[0x1E69E7CD0];
    v171 = *(v148 + 24);
    v172 = v252;
    v278 = v171;
    v254 = v170;
    if (v171 >= 4)
    {
      LODWORD(v272) = 1;
    }

    else
    {
      LODWORD(v272) = sub_1AFDFEE28();
    }

    v173 = sub_1AFD0802C(v253, v172 & 1);
    v174 = *(v173 + 2);
    if (!v174)
    {

      v280 = 0;
      v220 = MEMORY[0x1E69E7CC0];
      *&v282 = MEMORY[0x1E69E7CC0];
      v221 = v172;
      goto LABEL_158;
    }

    v175 = 0;
    v246 = v173;
    v176 = (v173 + 48);
    *&v282 = MEMORY[0x1E69E7CC0];
    v263 = MEMORY[0x1E69E7CC0];
    v264 = v280 | (v269 << 32);
    v177 = v279;
    while (1)
    {
      v179 = *(v176 - 2);
      v180 = *(v176 - 1);
      LODWORD(v280) = *v176;
      if (v272)
      {
        swift_bridgeObjectRetain_n();

        v181 = v180;
        v182 = v176;
        v183 = v174;
        v184 = v177;
        v185 = v175;
        v186 = v273;
        v269 = v179;
        v187 = sub_1AF6496EC(v273);

        v188 = v186;
        v175 = v185;
        v177 = v184;
        v174 = v183;
        v176 = v182;
        v180 = v181;
        v189 = sub_1AF6496EC(v188);

        v190 = v277;
        *v277 = v189;
        v191 = v281;
        swift_storeEnumTagMultiPayload();
        v192 = v191;
        v179 = v269;
        (*v270)(v190, 0, 1, v192);
      }

      else
      {
        v190 = v277;
        sub_1AFD531F8(v138, v277, type metadata accessor for ScriptIndex);
        (*v270)(v190, 0, 1, v281);
        swift_bridgeObjectRetain_n();
        v187 = v264;
      }

      v193 = sub_1AFAF8B58(v179, v180, v275, v276, v187, 0x656C636974726170uLL, 0xEE00657461647055, v190);
      v195 = v194;

      sub_1AFD53CA8(v190, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v285, v193, v195);

      if (v278 >= 4)
      {
        break;
      }

      v196 = sub_1AFDFEE28();

      if (v196)
      {
        goto LABEL_125;
      }

      if (v278 != 2)
      {

        v208 = v251;
        if (!*(v251 + 16) || (v209 = sub_1AF419914(v193, v195), (v210 & 1) == 0))
        {

          v42 = v271;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v285 = 0;
          v286 = 0xE000000000000000;
          sub_1AFDFE218();

          v285 = 0xD000000000000022;
          v286 = v236;
          MEMORY[0x1B2718AE0](v193, v195);

          v223 = v285;
          v222 = v286;
          v224 = sub_1AFDFDA08();
          v25 = v281;
          if (qword_1ED731058 != -1)
          {
            goto LABEL_156;
          }

          goto LABEL_88;
        }

        v211 = v209;

        v212 = *(*(v208 + 56) + 8 * v211);
        v213 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v213 = sub_1AF42469C(0, *(v213 + 2) + 1, 1, v213);
        }

        v138 = v274;
        v201 = v282;
        v215 = *(v213 + 2);
        v214 = *(v213 + 3);
        if (v215 >= v214 >> 1)
        {
          v213 = sub_1AF42469C(v214 > 1, v215 + 1, 1, v213);
        }

        *(v213 + 2) = v215 + 1;
        v263 = v213;
        *&v213[8 * v215 + 32] = v212;
        v175 = v250;

        v177 = v279;
        goto LABEL_118;
      }

      if (v262)
      {

        v201 = v282;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_1AF4246B0(0, *(v201 + 2) + 1, 1, v201);
        }

        v206 = *(v201 + 2);
        v205 = *(v201 + 3);
        if (v206 >= v205 >> 1)
        {
          v201 = sub_1AF4246B0(v205 > 1, v206 + 1, 1, v201);
        }

        *(v201 + 2) = v206 + 1;
        v207 = &v201[24 * v206];
        *(v207 + 4) = v193;
        *(v207 + 5) = v195;
        v207[48] = v280;
        v175 = v262;
      }

      else
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v285 = 0;
        v286 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, v239 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v193, v195);

        MEMORY[0x1B2718AE0](0xD000000000000031, v238 | 0x8000000000000000);
        v216 = v285;
        v217 = v286;
        v218 = sub_1AFDFDA08();
        v201 = v282;
        if (qword_1ED731058 != -1)
        {
          v219 = v218;
          swift_once();
          v218 = v219;
        }

        v285 = 0;
        sub_1AF0D4F18(v218, &v285, v216, v217);
      }

LABEL_117:
      v138 = v274;
LABEL_118:
      *&v282 = v201;
      v176 += 24;
      if (!--v174)
      {

        v221 = v252;
        v280 = v175;
        v220 = v263;
LABEL_158:
        v139 = v273;
        v226 = v241 + v240 * v273;
        sub_1AFD53C4C(v226, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        sub_1AFD53D18(v268, v226, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v227 = v244;
        v228 = (v226 + v244[15]);
        v229 = v254;
        *v228 = v249;
        v228[1] = v229;
        *(v226 + v227[9]) = v280;
        *(v226 + v227[10]) = v220;
        *(v226 + v227[11]) = v282;
        *(v226 + v227[12]) = 0;
        *(v226 + v227[13]) = 0;
        v230 = v226 + v227[14];
        *v230 = v253;
        *(v230 + 8) = v221 & 1;

        v231 = sub_1AF6496EC(v139);

        v287 = v227;
        v288 = &off_1F2558F90;
        v232 = sub_1AF585714(&v285);
        sub_1AFD53D18(v226, v232, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        LOBYTE(v289) = 0;
        sub_1AF8259D0(&v285, updated, v231);
        sub_1AF967B70(v284);
        v138 = v274;
        result = sub_1AFD53198(v274, type metadata accessor for ScriptIndex);
        a2 = v245;
        v25 = v281;
        v42 = v271;
LABEL_90:
        v135 = v139 + 1;
        if (v135 == v259)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

LABEL_125:
    if (!v177 || (v197 = *(v177 + 96), v198 = sub_1AFDFCEC8(), v199 = [v197 objectForKeyedSubscript_], v197, v198, !v199))
    {

LABEL_153:

      v42 = v271;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v285 = 0;
      v286 = 0xE000000000000000;
      sub_1AFDFE218();

      v285 = 0xD000000000000025;
      v286 = v237;
      MEMORY[0x1B2718AE0](v193, v195);

      v223 = v285;
      v222 = v286;
      v224 = sub_1AFDFDA08();
      v25 = v281;
      if (qword_1ED731058 != -1)
      {
LABEL_156:
        v225 = v224;
        swift_once();
        v224 = v225;
      }

LABEL_88:
      v285 = 0;
      sub_1AF0D4F18(v224, &v285, v223, v222);

      v138 = v274;
      result = sub_1AFD53198(v274, type metadata accessor for ScriptIndex);
      a2 = v245;
      goto LABEL_89;
    }

    v200 = [v199 isUndefined];

    if (v200)
    {
      goto LABEL_153;
    }

    v201 = v282;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = v279;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v201 = sub_1AF4246B0(0, *(v201 + 2) + 1, 1, v201);
    }

    v204 = *(v201 + 2);
    v203 = *(v201 + 3);
    if (v204 >= v203 >> 1)
    {
      v201 = sub_1AF4246B0(v203 > 1, v204 + 1, 1, v201);
    }

    *(v201 + 2) = v204 + 1;
    v178 = &v201[24 * v204];
    *(v178 + 4) = v193;
    *(v178 + 5) = v195;
    v178[48] = v280;

    v175 = v177;
    goto LABEL_117;
  }

  v258 = a1[13];
  if (v258)
  {
    updated = type metadata accessor for ParticleUpdateScript(0);
    v257 = *(*(updated - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v240 = v44;
    v239 = *(*(v44 - 1) + 72);
    v45 = v26;
    v46 = &unk_1ED728E10;
    sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v47 = 0;
    v256 = v48;
    v255 = *(*(v48 - 1) + 72);
    v254 = (v45 + 48);
    v247 = "mpiled script for ";
    v246 = "ration<TriggerScript>";
    v269 = v45 + 56;
    v238 = "nction for script ";
    v237 = "tal library for script ";
    v235 = 0x80000001AFF4F110;
    v236 = 0x80000001AFF4F1B0;
    v49 = v273;
    while (1)
    {
      v60 = *(v259 + 8 * v47);
      v272 = v47;
      v268 = v265 + v255 * v47;
      sub_1AFD53C4C(v268, v46, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);

      v274 = v60;
      v61 = sub_1AF6496EC(v60);

      if (*(a2 + 16) && (v62 = sub_1AF449D3C(v61), (v63 & 1) != 0))
      {
        v64 = v46;
        v65 = (*(a2 + 56) + 8 * v62);
        v67 = *v65;
        v66 = v65[1];
        v280 = v67;
      }

      else
      {
        v64 = v46;

        v68 = sub_1AF6496EC(v274);

        v280 = v68;
        v66 = HIDWORD(v68);
      }

      v264 = v66;
      v69 = v266 + v257 * v272;
      v70 = v267;
      sub_1AFB12858(v69 + *(updated + 40), v267);
      v71 = *v254;
      if ((*v254)(v70, 1, v25) == 1)
      {

        v72 = sub_1AF6496EC(v274);
        v49 = v273;

        *v49 = v72;
        v73 = v267;
        swift_storeEnumTagMultiPayload();
        if (v71(v73, 1, v25) != 1)
        {
          sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v70, v49, type metadata accessor for ScriptIndex);
      }

      v74 = v260;
      sub_1AFD531F8(v49, v260, type metadata accessor for ScriptIndex);
      v46 = v64;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v74, type metadata accessor for ScriptIndex);
        v76 = v268;
      }

      else
      {
        *&v75 = *v74;
        v77 = *(a2 + 16);
        v282 = v75;
        if (v77)
        {
          v78 = sub_1AF449D3C(v75);
          v76 = v268;
          if (v80)
          {
            *&v79 = *(*(a2 + 56) + 8 * v78);
            v282 = v79;
          }
        }

        else
        {
          v76 = v268;
        }

        sub_1AFD53198(v49, type metadata accessor for ScriptIndex);
        *v49 = v282;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v69, v76, type metadata accessor for ParticleUpdateScript);
      v81 = sub_1AFAA3818();
      v82 = v256;
      v83 = v76 + v256[9];
      *v83 = v81;
      *(v83 + 8) = 0;
      *(v76 + v82[10]) = 1;
      *(v76 + v82[11]) = 0;
      v84 = v76 + v82[12];
      strcpy(v84, "<precompiled>");
      *(v84 + 14) = -4864;
      *(v76 + v82[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAA3C54(0, 1uLL, &v285);
      v271 = v42;
      if (v42)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v285 = 0;
        v286 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v247 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0xD000000000000014, v246 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v85 = v271;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v87 = v285;
        v86 = v286;
        v88 = sub_1AFDFDA08();
        v59 = v272;
        if (qword_1ED731058 != -1)
        {
          v133 = v88;
          swift_once();
          v88 = v133;
        }

        v285 = 0;
        sub_1AF0D4F18(v88, &v285, v87, v86);

        result = sub_1AFD53198(v49, type metadata accessor for ScriptIndex);
        v42 = 0;
        goto LABEL_6;
      }

      v248 = v289;
      v249 = v290;

      v284 = MEMORY[0x1E69E7CD0];
      v89 = *(v69 + 24);
      v278 = v89;
      if (v89 <= 1)
      {
        break;
      }

      v90 = v252;
      if (v89 == 2 || v89 == 3)
      {
        goto LABEL_35;
      }

      LODWORD(v270) = 1;
LABEL_36:

      v91 = sub_1AFD0802C(v253, v90 & 1);
      v92 = *(v91 + 2);
      if (!v92)
      {

        v50 = MEMORY[0x1E69E7CC0];
        v51 = MEMORY[0x1E69E7CC0];
        goto LABEL_5;
      }

      *&v282 = 0;
      v244 = v91;
      v93 = (v91 + 48);
      v50 = MEMORY[0x1E69E7CC0];
      v263 = MEMORY[0x1E69E7CC0];
      v264 = v280 | (v264 << 32);
      do
      {
        v95 = *(v93 - 2);
        v96 = *(v93 - 1);
        LODWORD(v280) = *v93;
        if (v270)
        {
          swift_bridgeObjectRetain_n();

          v97 = v274;
          v98 = sub_1AF6496EC(v274);

          v99 = sub_1AF6496EC(v97);

          v100 = v277;
          *v277 = v99;
          v101 = v100;
          v102 = v281;
          swift_storeEnumTagMultiPayload();
          (*v269)(v101, 0, 1, v102);
        }

        else
        {
          v101 = v277;
          sub_1AFD531F8(v49, v277, type metadata accessor for ScriptIndex);
          (*v269)(v101, 0, 1, v281);
          swift_bridgeObjectRetain_n();
          v98 = v264;
        }

        v103 = sub_1AFAF8B58(v95, v96, v275, v276, v98, 0x656C636974726170uLL, 0xEE00657461647055, v101);
        v105 = v104;

        sub_1AFD53CA8(v101, qword_1ED730680, type metadata accessor for ScriptIndex);

        sub_1AF0D2164(&v285, v103, v105);

        if (v278 >= 4)
        {

LABEL_47:
          if (!v279 || (v107 = *(v279 + 96), v108 = sub_1AFDFCEC8(), v109 = [v107 objectForKeyedSubscript_], v107, v108, !v109))
          {

LABEL_74:

            v42 = v271;
            v59 = v272;

            v46 = &unk_1ED728E10;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v285 = 0;
            v286 = 0xE000000000000000;
            sub_1AFDFE218();

            v285 = 0xD000000000000025;
            v286 = v236;
            MEMORY[0x1B2718AE0](v103, v105);

            v131 = v285;
            v130 = v286;
            v132 = sub_1AFDFDA08();
            v25 = v281;
            if (qword_1ED731058 != -1)
            {
              goto LABEL_83;
            }

            goto LABEL_77;
          }

          v110 = [v109 isUndefined];

          if (v110)
          {
            goto LABEL_74;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1AF4246B0(0, *(v50 + 2) + 1, 1, v50);
          }

          v111 = v280;
          v113 = *(v50 + 2);
          v112 = *(v50 + 3);
          if (v113 >= v112 >> 1)
          {
            v50 = sub_1AF4246B0(v112 > 1, v113 + 1, 1, v50);
          }

          *(v50 + 2) = v113 + 1;
          v94 = &v50[24 * v113];
          *(v94 + 4) = v103;
          *(v94 + 5) = v105;
          v94[48] = v111;

LABEL_39:
          v49 = v273;
          goto LABEL_40;
        }

        v106 = sub_1AFDFEE28();

        if (v106)
        {
          goto LABEL_47;
        }

        if (v278 == 2)
        {
          if (v262)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1AF4246B0(0, *(v50 + 2) + 1, 1, v50);
            }

            v114 = v280;
            v116 = *(v50 + 2);
            v115 = *(v50 + 3);
            if (v116 >= v115 >> 1)
            {
              v50 = sub_1AF4246B0(v115 > 1, v116 + 1, 1, v50);
            }

            *(v50 + 2) = v116 + 1;
            v117 = &v50[24 * v116];
            *(v117 + 4) = v103;
            *(v117 + 5) = v105;
            v117[48] = v114;
            *&v282 = v262;
          }

          else
          {

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v285 = 0;
            v286 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000027, v238 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v103, v105);

            MEMORY[0x1B2718AE0](0xD000000000000031, v237 | 0x8000000000000000);
            v126 = v285;
            v127 = v286;
            v128 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v129 = v128;
              swift_once();
              v128 = v129;
            }

            v285 = 0;
            sub_1AF0D4F18(v128, &v285, v126, v127);
          }

          goto LABEL_39;
        }

        v118 = v251;
        if (!*(v251 + 16) || (v119 = sub_1AF419914(v103, v105), (v120 & 1) == 0))
        {

          v42 = v271;
          v59 = v272;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v285 = 0;
          v286 = 0xE000000000000000;
          sub_1AFDFE218();

          v285 = 0xD000000000000022;
          v286 = v235;
          MEMORY[0x1B2718AE0](v103, v105);

          v131 = v285;
          v130 = v286;
          v132 = sub_1AFDFDA08();
          v25 = v281;
          v46 = &unk_1ED728E10;
          if (qword_1ED731058 == -1)
          {
            goto LABEL_77;
          }

LABEL_83:
          v134 = v132;
          swift_once();
          v132 = v134;
LABEL_77:
          v285 = 0;
          sub_1AF0D4F18(v132, &v285, v131, v130);

          v49 = v273;
          result = sub_1AFD53198(v273, type metadata accessor for ScriptIndex);
          a2 = v245;
          goto LABEL_6;
        }

        v121 = v119;

        v122 = *(*(v118 + 56) + 8 * v121);
        v123 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1AF42469C(0, *(v123 + 2) + 1, 1, v123);
        }

        v49 = v273;
        v125 = *(v123 + 2);
        v124 = *(v123 + 3);
        if (v125 >= v124 >> 1)
        {
          v123 = sub_1AF42469C(v124 > 1, v125 + 1, 1, v123);
        }

        *(v123 + 2) = v125 + 1;
        v263 = v123;
        *&v123[8 * v125 + 32] = v122;

LABEL_40:
        v93 += 24;
        --v92;
      }

      while (v92);

      v46 = &unk_1ED728E10;
      v92 = v282;
      v51 = v263;
LABEL_5:
      v52 = v241 + v239 * v272;
      sub_1AFD53C4C(v52, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v268, v52, v46, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      v53 = v240;
      v54 = (v52 + v240[15]);
      v55 = v249;
      *v54 = v248;
      v54[1] = v55;
      *(v52 + v53[9]) = v92;
      *(v52 + v53[10]) = v51;
      *(v52 + v53[11]) = v50;
      *(v52 + v53[12]) = 0;
      *(v52 + v53[13]) = 0;
      v56 = v52 + v53[14];
      *v56 = v253;
      *(v56 + 8) = v252 & 1;

      v57 = sub_1AF6496EC(v274);

      v287 = v53;
      v46 = &unk_1ED728E10;
      v288 = &off_1F2558F90;
      v58 = sub_1AF585714(&v285);
      v59 = v272;
      sub_1AFD53D18(v52, v58, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      LOBYTE(v289) = 0;
      sub_1AF8259D0(&v285, updated, v57);
      sub_1AF967B70(v284);
      v49 = v273;
      result = sub_1AFD53198(v273, type metadata accessor for ScriptIndex);
      a2 = v245;
      v25 = v281;
      v42 = v271;
LABEL_6:
      v47 = v59 + 1;
      if (v47 == v258)
      {
        return result;
      }
    }

    v90 = v252;
LABEL_35:
    LODWORD(v270) = sub_1AFDFEE28();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AFD4F4D4(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v199 = a5;
  v200 = a6;
  LODWORD(v202) = a4;
  v206 = a3;
  v183 = a2;
  sub_1AF0D4E74();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v197 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1AFDFC298();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v166 - v22;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = (&v166 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v193 = &v166 - v38;
  v39 = a1[1];
  v182 = sub_1AF70632C(v39, a1);
  v181 = sub_1AF706360(v39, a1);
  result = sub_1AF706648(v39, a1);
  v167 = v6;
  v41 = a1[11];
  v178 = a1;
  v185 = v39;
  v176 = v41;
  if (v41)
  {
    v184 = v23;
    v175 = a1[13];
    if (v175)
    {
      v173 = type metadata accessor for TriggerScript(0);
      v172 = *(*(v173 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      v42 = 0;
      v180 = v43;
      v44 = *(v43 - 8);
      v179 = (v25 + 48);
      v171 = *(v44 + 72);
      v166 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v45 = &unk_1F25042B8;
      if (v206 < 1029)
      {
        v45 = &unk_1F2504280;
      }

      v169 = v45;
      v168 = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v201 = v24;
      while (1)
      {
        v46 = v176[v42];
        v174 = a1[2];

        if (*(v39 + 184))
        {
          break;
        }

        v48 = *(v39 + 168);
        v186 = v46;
        v49 = *(v48 + 4 * v46);
        v50 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

        v51 = v183;
        if (*(v183 + 16) && (v52 = sub_1AF449D3C(v49 | (v50 << 32)), (v53 & 1) != 0))
        {
          v54 = (*(v51 + 56) + 8 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v177;
        }

        else
        {

          v57 = v177;
          if (*(v39 + 184))
          {
            break;
          }

          v55 = *(*(v39 + 168) + 4 * v186);
          v56 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        }

        v192 = v42;
        v59 = v182 + v172 * v42;
        v60 = v184;
        sub_1AFB12858(v59 + *(v173 + 44), v184);
        v61 = *v179;
        if ((*v179)(v60, 1, v24) == 1)
        {
          v62 = v185;

          if (*(v62 + 184))
          {
            break;
          }

          v64 = *(*(v62 + 168) + 4 * v186);
          v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

          v66 = v193;
          *v193 = v64;
          *(v66 + 4) = v65;
          v67 = v66;
          swift_storeEnumTagMultiPayload();
          v68 = v61(v184, 1, v24);
          a1 = v178;
          if (v68 != 1)
          {
            sub_1AFD53CA8(v184, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v69 = v60;
          v67 = v193;
          sub_1AFD53D8C(v69, v193, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v67, v57, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v57, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v70 = *v57;
          v71 = *(v51 + 16);
          v202 = v70;
          if (v71)
          {
            v72 = sub_1AF449D3C(v70);
            if (v74)
            {
              *&v73 = *(*(v51 + 56) + 8 * v72);
              v202 = v73;
            }
          }

          sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
          *v67 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v75 = v181 + v171 * v192;
        if (!*(v75 + *(v180 + 40)) && !*(v75 + *(v180 + 44)))
        {
          v76 = v169;
          if (v168)
          {
            v76 = &unk_1F25042F0;
            if (*(v59 + 24) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v76 = swift_allocObject();
              v76[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v166;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v77 = v204;
              *(v76 + 4) = v203;
              *(v76 + 5) = v77;
              *(v76 + 48) = 0;
            }
          }

          v170 = v76;
          v78 = *(v76 + 2);
          if (v78)
          {
            v191 = v55 | (v56 << 32);
            v79 = v170 + 5;
            do
            {
              *&v202 = v78;
              v80 = *(v79 - 1);
              v81 = *v79;
              v206 = v79;
              v82 = v194;
              sub_1AFD531F8(v67, v194, type metadata accessor for ScriptIndex);
              (*v188)(v82, 0, 1, v24);

              v83 = sub_1AFAF8B58(v80, v81, v199, v200, v191, 0x72656767697274uLL, 0xE700000000000000, v82);
              v85 = v84;

              sub_1AFD53CA8(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v83, v85);

              v87 = v203;
              v86 = v204;
              v88 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v89 = swift_allocObject();
              *(v89 + 16) = v190;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1AF0D544C();
              *(v89 + 32) = v87;
              *(v89 + 40) = v86;

              sub_1AFDFC4C8();

              v90 = v195;
              sub_1AFDFC288();
              v91 = v197;
              v92 = v198[12];
              v93 = v198[16];
              v94 = &v197[v198[20]];
              (*v187)(v197, v90, v196);
              *(v91 + v92) = v88;
              *(v91 + v93) = 0;
              *v94 = v87;
              *(v94 + 1) = v86;

              sub_1AFDFC608();

              sub_1AFD53198(v91, sub_1AF0D4E74);

              v79 = (v206 + 24);
              v24 = v201;
              v78 = v202 - 1;
              v67 = v193;
            }

            while (v202 != 1);
          }

          v95 = v185;
          v96 = *(*(v185 + 40) + 16);
          v97 = *(v96 + 128);
          a1 = v178;
          if (*(v97 + 16))
          {
            v98 = sub_1AF449CB8(v180);
            if ((v99 & 1) != 0 && *(*(v96 + 24) + 16 * *(*(v97 + 56) + 8 * v98) + 32) == v180)
            {
              v203 = v180;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v95, v174);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          v101 = *(*(v95 + 40) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v100;
            v104 = sub_1AF449CB8(v100);
            if ((v105 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v104) + 32) == v103)
            {
              v203 = v103;
              v204 = &off_1F250F310;
              v205 = 1;
              v106 = v185;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v106, v174);

              sub_1AF635250(&v203);
            }
          }
        }

        result = sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
        v42 = (v192 + 1);
        v39 = v185;
        if ((v192 + 1) == v175)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v192 = v32;
    v186 = v16;
    v107 = a1[6];
    v179 = a1[7];
    if (v107 != v179)
    {
      v175 = type metadata accessor for TriggerScript(0);
      v174 = *(*(v175 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      v184 = v108;
      v109 = *(v108 - 8);
      v180 = v25 + 48;
      v173 = *(v109 + 72);
      v169 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v110 = &unk_1F25042B8;
      if (v206 < 1029)
      {
        v110 = &unk_1F2504280;
      }

      v171 = v110;
      LODWORD(v170) = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v176 = v28;
      v201 = v24;
      while (1)
      {
        v177 = a1[2];

        if (*(v39 + 184))
        {
          goto LABEL_91;
        }

        v112 = *(v39 + 168);
        v193 = v107;
        v113 = *(v112 + 4 * v107);
        v114 = *(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

        v115 = v183;
        if (*(v183 + 16) && (v116 = sub_1AF449D3C(v113 | (v114 << 32)), (v117 & 1) != 0))
        {
          v118 = (*(v115 + 56) + 8 * v116);
          v119 = *v118;
          v120 = v118[1];
          v122 = v192;
          v121 = v193;
        }

        else
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v121 = v193;
          v119 = *(*(v39 + 168) + 4 * v193);
          v120 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          v122 = v192;
        }

        v124 = v182 + v174 * v121;
        v125 = v186;
        sub_1AFB12858(v124 + *(v175 + 44), v186);
        v126 = *v180;
        if ((*v180)(v125, 1, v24) == 1)
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v128 = *(*(v39 + 168) + 4 * v193);
          v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *v122 = v128;
          v122[1] = v129;
          v39 = v185;
          swift_storeEnumTagMultiPayload();
          if (v126(v186, 1, v24) != 1)
          {
            sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v125, v122, type metadata accessor for ScriptIndex);
        }

        v130 = v176;
        sub_1AFD531F8(v122, v176, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v131 = *v130;
          v132 = *(v115 + 16);
          v202 = v131;
          if (v132)
          {
            v133 = sub_1AF449D3C(v131);
            if (v135)
            {
              *&v134 = *(*(v115 + 56) + 8 * v133);
              v202 = v134;
            }
          }

          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
          *v122 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v136 = v181 + v173 * v193;
        if (!*(v136 + *(v184 + 10)) && !*(v136 + *(v184 + 11)))
        {
          v137 = v171;
          if (v170)
          {
            v137 = &unk_1F25042F0;
            if (*(v124 + 24) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v137 = swift_allocObject();
              v137[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v169;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v138 = v204;
              *(v137 + 4) = v203;
              *(v137 + 5) = v138;
              *(v137 + 48) = 0;
            }
          }

          v172 = v137;
          v139 = *(v137 + 2);
          if (v139)
          {
            v191 = v119 | (v120 << 32);
            v140 = v172 + 5;
            do
            {
              *&v202 = v139;
              v141 = *(v140 - 1);
              v142 = *v140;
              v206 = v140;
              v143 = v194;
              sub_1AFD531F8(v122, v194, type metadata accessor for ScriptIndex);
              (*v188)(v143, 0, 1, v201);

              v144 = sub_1AFAF8B58(v141, v142, v199, v200, v191, 0x72656767697274uLL, 0xE700000000000000, v143);
              v146 = v145;

              sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v144, v146);

              v148 = v203;
              v147 = v204;
              v149 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v150 = swift_allocObject();
              *(v150 + 16) = v190;
              *(v150 + 56) = MEMORY[0x1E69E6158];
              *(v150 + 64) = sub_1AF0D544C();
              *(v150 + 32) = v148;
              *(v150 + 40) = v147;

              sub_1AFDFC4C8();

              v151 = v195;
              sub_1AFDFC288();
              v152 = v197;
              v153 = v198[12];
              v154 = v198[16];
              v155 = &v197[v198[20]];
              (*v187)(v197, v151, v196);
              *(v152 + v153) = v149;
              *(v152 + v154) = 0;
              *v155 = v148;
              *(v155 + 1) = v147;

              sub_1AFDFC608();

              sub_1AFD53198(v152, sub_1AF0D4E74);

              v140 = (v206 + 24);
              v139 = v202 - 1;
              v122 = v192;
            }

            while (v202 != 1);
          }

          v39 = v185;
          v156 = *(*(v185 + 40) + 16);
          v157 = *(v156 + 128);
          if (*(v157 + 16))
          {
            v158 = sub_1AF449CB8(v184);
            if ((v159 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v158) + 32) == v184)
            {
              v203 = v184;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          v161 = *(*(v39 + 40) + 16);
          v162 = *(v161 + 128);
          v24 = v201;
          if (*(v162 + 16))
          {
            v163 = v160;
            v164 = sub_1AF449CB8(v160);
            if ((v165 & 1) != 0 && *(*(v161 + 24) + 16 * *(*(v162 + 56) + 8 * v164) + 32) == v163)
            {
              v203 = v163;
              v204 = &off_1F250F310;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }
        }

        v107 = v193 + 1;
        result = sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        a1 = v178;
        if (v107 == v179)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD50DA8(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, void *, __n128), uint64_t (*a14)(uint64_t, void *), uint64_t (*a15)(uint64_t, void *), uint64_t (*a16)(void), unint64_t *a17, uint64_t (*a18)(uint64_t), uint64_t a19, unint64_t *a20, uint64_t (*a21)(void), uint64_t (*a22)(uint64_t), uint64_t (*a23)(uint64_t, void), unint64_t a24, unint64_t a25)
{
  v275 = a8;
  v299 = a7;
  v293 = a5;
  v294 = a6;
  v272 = a4;
  v276 = a3;
  v271 = a2;
  v291 = a24;
  v292 = a25;
  v268 = a23;
  v267 = a22;
  v266 = a21;
  v279 = a20;
  v278 = a19;
  v277 = a18;
  v262 = a17;
  v254 = a12;
  v253 = a11;
  v282 = a10;
  v273 = a9;
  v297 = a15;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v244 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v295 = (&v244 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v269 = &v244 - v35;
  v36 = type metadata accessor for ScriptIndex();
  v296 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = (&v244 - v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  v261 = (&v244 - v46);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v285 = (&v244 - v50);
  v51 = a1[1];
  v52 = v298;
  v265 = a13(v51, a1, v49);
  v252 = a14(v51, a1);
  v290 = v51;
  result = v297(v51, a1);
  v264 = result;
  v246 = v52;
  v54 = a1[11];
  v297 = v36;
  v260 = v54;
  if (!v54)
  {
    v261 = v39;
    v269 = v29;
    v150 = a1[6];
    v260 = a1[7];
    v151 = v271;
    if (v150 == v260)
    {
      return result;
    }

    v270 = a16(0);
    v259 = *(*(v270 - 8) + 72);
    v152 = v277;
    v153 = v278;
    sub_1AFD53F14(0, v262, v277, v278, type metadata accessor for ScriptRuntime);
    v255 = v154;
    v251 = *(*(v154 - 1) + 72);
    sub_1AFD53F14(0, v279, v152, v153, type metadata accessor for ScriptCompileAttempt);
    v258 = v155;
    v257 = *(*(v155 - 1) + 72);
    v256 = (v296 + 48);
    v286 = (v296 + 56);
    v250 = "nction for script ";
    v249 = "tal library for script ";
    v247 = 0x80000001AFF4F110;
    v248 = 0x80000001AFF4F1B0;
    v285 = v43;
    while (1)
    {
      v280 = v264 + v257 * v150;
      sub_1AFD53C4C(v280, v279, v277, v278, type metadata accessor for ScriptCompileAttempt);

      v170 = sub_1AF6496EC(v150);

      if (*(v151 + 16) && (v171 = sub_1AF449D3C(v170), (v172 & 1) != 0))
      {
        v173 = (*(v151 + 56) + 8 * v171);
        v175 = *v173;
        v174 = v173[1];
      }

      else
      {

        v176 = sub_1AF6496EC(v150);

        v175 = v176;
        v174 = HIDWORD(v176);
      }

      v296 = v174;
      v177 = v265 + v259 * v150;
      v178 = v269;
      sub_1AFB12858(v177 + *(v270 + 44), v269);
      v179 = *v256;
      v180 = (*v256)(v178, 1, v36);
      v284 = v150;
      if (v180 == 1)
      {

        v181 = sub_1AF6496EC(v150);
        v182 = v269;

        v183 = v285;
        *v285 = v181;
        swift_storeEnumTagMultiPayload();
        if (v179(v182, 1, v36) != 1)
        {
          sub_1AFD53CA8(v182, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v183 = v285;
        sub_1AFD53D8C(v178, v285, type metadata accessor for ScriptIndex);
      }

      v184 = v261;
      sub_1AFD531F8(v183, v261, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v184, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v185 = *v184;
        v186 = *(v151 + 16);
        v298 = v185;
        if (v186)
        {
          v187 = sub_1AF449D3C(v185);
          if (v189)
          {
            *&v188 = *(*(v151 + 56) + 8 * v187);
            v298 = v188;
          }
        }

        sub_1AFD53198(v183, type metadata accessor for ScriptIndex);
        *v183 = v298;
        swift_storeEnumTagMultiPayload();
      }

      v190 = v280;
      v191 = sub_1AFD531F8(v177, v280, v266);
      v192 = v267(v191);
      v193 = v258;
      v194 = v190 + v258[9];
      *v194 = v192;
      *(v194 + 8) = 0;
      v195 = v193[10];
      v289 = 1;
      *(v190 + v195) = 1;
      *(v190 + v193[11]) = 0;
      v196 = v190 + v193[12];
      strcpy(v196, "<precompiled>");
      *(v196 + 14) = -4864;
      *(v190 + v193[13]) = MEMORY[0x1E69E7CC0];
      v197 = *v177;
      v305 = MEMORY[0x1E69E7CD0];
      v198 = *(v177 + 24);
      v199 = v272;
      if (v198 < 4)
      {
        v289 = sub_1AFDFEE28();
      }

      v274 = v197;

      v200 = v268(v276, v199 & 1);
      v201 = *(v200 + 16);
      if (v201)
      {
        break;
      }

      v156 = 0;
      v157 = MEMORY[0x1E69E7CC0];
      v158 = MEMORY[0x1E69E7CC0];
LABEL_77:
      v159 = v284;
      v160 = v252 + v251 * v284;
      *&v298 = type metadata accessor for ScriptRuntime;
      v161 = v277;
      v162 = v278;
      sub_1AFD53C4C(v160, v262, v277, v278, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v280, v160, v279, v161, v162, type metadata accessor for ScriptCompileAttempt);
      v163 = v255;
      v164 = (v160 + v255[15]);
      *v164 = v274;
      v164[1] = 0;
      *(v160 + v163[9]) = v156;
      *(v160 + v163[10]) = v158;
      *(v160 + v163[11]) = v157;
      *(v160 + v163[12]) = 0;
      *(v160 + v163[13]) = 0;
      v165 = v160 + v163[14];
      *v165 = v276;
      *(v165 + 8) = v199 & 1;

      v166 = sub_1AF6496EC(v159);

      v302 = v163;
      v303 = &off_1F2558F90;
      v167 = sub_1AF585714(&v300);
      v168 = v162;
      v169 = v159;
      sub_1AFD53D18(v160, v167, v262, v161, v168, v298);
      v304 = 0;
      sub_1AF8259D0(&v300, v270, v166);
      sub_1AF967B70(v305);
      result = sub_1AFD53198(v285, type metadata accessor for ScriptIndex);
      v151 = v271;
      v36 = v297;
LABEL_78:
      v150 = v169 + 1;
      if (v150 == v260)
      {
        return result;
      }
    }

    v202 = v175;
    v156 = 0;
    v263 = v200;
    v203 = (v200 + 48);
    *&v298 = MEMORY[0x1E69E7CC0];
    v283 = MEMORY[0x1E69E7CC0];
    v281 = v202 | (v296 << 32);
    while (1)
    {
      v205 = *(v203 - 2);
      v206 = *(v203 - 1);
      LODWORD(v296) = *v203;
      if (v289)
      {
        swift_bridgeObjectRetain_n();

        v207 = v284;
        v208 = sub_1AF6496EC(v284);

        v209 = sub_1AF6496EC(v207);

        v210 = v295;
        *v295 = v209;
        v211 = v297;
        swift_storeEnumTagMultiPayload();
        (*v286)(v210, 0, 1, v211);
      }

      else
      {
        v210 = v295;
        sub_1AFD531F8(v285, v295, type metadata accessor for ScriptIndex);
        (*v286)(v210, 0, 1, v297);
        swift_bridgeObjectRetain_n();
        v208 = v281;
      }

      v212 = sub_1AFAF8B58(v205, v206, v293, v294, v208, v291, v292, v210);
      v214 = v213;

      sub_1AFD53CA8(v210, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v300, v212, v214);

      if (v198 < 4)
      {
        v215 = sub_1AFDFEE28();

        if ((v215 & 1) == 0)
        {
          if (v198 == 2)
          {
            if (v282)
            {

              v220 = v298;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v220 = sub_1AF4246B0(0, *(v220 + 2) + 1, 1, v220);
              }

              v224 = *(v220 + 2);
              v223 = *(v220 + 3);
              if (v224 >= v223 >> 1)
              {
                v220 = sub_1AF4246B0(v223 > 1, v224 + 1, 1, v220);
              }

              *(v220 + 2) = v224 + 1;
              v225 = &v220[24 * v224];
              *(v225 + 4) = v212;
              *(v225 + 5) = v214;
              v225[48] = v296;
              v156 = v282;
            }

            else
            {

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v300 = 0;
              v301 = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000027, v250 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](v212, v214);

              MEMORY[0x1B2718AE0](0xD000000000000031, v249 | 0x8000000000000000);
              v235 = v300;
              v236 = v301;
              v237 = sub_1AFDFDA08();
              v220 = v298;
              if (qword_1ED731058 != -1)
              {
                v238 = v237;
                swift_once();
                v237 = v238;
              }

              v300 = 0;
              sub_1AF0D4F18(v237, &v300, v235, v236);
            }
          }

          else
          {

            v226 = v275;
            if (!*(v275 + 16) || (v227 = sub_1AF419914(v212, v214), (v228 & 1) == 0))
            {

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v300 = 0;
              v301 = 0xE000000000000000;
              sub_1AFDFE218();

              v300 = 0xD000000000000022;
              v301 = v247;
              MEMORY[0x1B2718AE0](v212, v214);

              v240 = v300;
              v241 = v301;
              v242 = sub_1AFDFDA08();
              v151 = v271;
              v36 = v297;
              v239 = v285;
              v169 = v284;
              if (qword_1ED731058 == -1)
              {
LABEL_139:
                v300 = 0;
                sub_1AF0D4F18(v242, &v300, v240, v241);

                result = sub_1AFD53198(v239, type metadata accessor for ScriptIndex);
                goto LABEL_78;
              }

LABEL_144:
              v243 = v242;
              swift_once();
              v242 = v243;
              goto LABEL_139;
            }

            v229 = v227;

            v230 = *(*(v226 + 56) + 8 * v229);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v220 = v298;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v283 = sub_1AF42469C(0, *(v283 + 2) + 1, 1, v283);
            }

            v233 = *(v283 + 2);
            v232 = *(v283 + 3);
            if (v233 >= v232 >> 1)
            {
              v283 = sub_1AF42469C(v232 > 1, v233 + 1, 1, v283);
            }

            v234 = v283;
            *(v283 + 2) = v233 + 1;
            *&v234[8 * v233 + 32] = v230;
            v156 = v273;
          }

          goto LABEL_98;
        }
      }

      else
      {
      }

      if (!v299 || (v287 = v203, v288 = v201, v216 = *(v299 + 96), v217 = sub_1AFDFCEC8(), v218 = [v216 objectForKeyedSubscript_], v216, v217, !v218))
      {

        goto LABEL_136;
      }

      v219 = [v218 isUndefined];

      if (v219)
      {

LABEL_136:

        v36 = v297;
        v239 = v285;
        v169 = v284;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v300 = 0;
        v301 = 0xE000000000000000;
        sub_1AFDFE218();

        v300 = 0xD000000000000025;
        v301 = v248;
        MEMORY[0x1B2718AE0](v212, v214);

        v240 = v300;
        v241 = v301;
        v242 = sub_1AFDFDA08();
        v151 = v271;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_139;
        }

        goto LABEL_144;
      }

      v220 = v298;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v220 = sub_1AF4246B0(0, *(v220 + 2) + 1, 1, v220);
      }

      v222 = *(v220 + 2);
      v221 = *(v220 + 3);
      if (v222 >= v221 >> 1)
      {
        v220 = sub_1AF4246B0(v221 > 1, v222 + 1, 1, v220);
      }

      *(v220 + 2) = v222 + 1;
      v204 = &v220[24 * v222];
      *(v204 + 4) = v212;
      *(v204 + 5) = v214;
      v204[48] = v296;
      v156 = v299;

      v203 = v287;
      v201 = v288;
LABEL_98:
      *&v298 = v220;
      v203 += 24;
      if (!--v201)
      {

        v199 = v272;
        v158 = v283;
        v157 = v298;
        goto LABEL_77;
      }
    }
  }

  v55 = v271;
  v56 = v285;
  v259 = a1[13];
  if (v259)
  {
    v270 = a16(0);
    v258 = *(*(v270 - 8) + 72);
    v57 = v277;
    v58 = v278;
    sub_1AFD53F14(0, v262, v277, v278, type metadata accessor for ScriptRuntime);
    v251 = v59;
    v250 = *(*(v59 - 1) + 72);
    sub_1AFD53F14(0, v279, v57, v58, type metadata accessor for ScriptCompileAttempt);
    v60 = 0;
    v257 = v61;
    v256 = *(*(v61 - 1) + 72);
    v62 = (v296 + 48);
    v287 = (v296 + 56);
    v249 = "nction for script ";
    v248 = "tal library for script ";
    v245 = 0x80000001AFF4F110;
    v247 = 0x80000001AFF4F1B0;
    v255 = (v296 + 48);
    while (1)
    {
      v77 = *(v260 + 8 * v60);
      v280 = v264 + v256 * v60;
      sub_1AFD53C4C(v280, v279, v277, v278, type metadata accessor for ScriptCompileAttempt);

      v286 = v77;
      v78 = sub_1AF6496EC(v77);

      if (*(v55 + 16) && (v79 = sub_1AF449D3C(v78), (v80 & 1) != 0))
      {
        v81 = (*(v55 + 56) + 8 * v79);
        v83 = *v81;
        v82 = v81[1];
      }

      else
      {

        v84 = sub_1AF6496EC(v286);

        v83 = v84;
        v82 = HIDWORD(v84);
      }

      v281 = v60;
      v85 = v265 + v258 * v60;
      v86 = v269;
      sub_1AFB12858(v85 + *(v270 + 44), v269);
      v87 = *v62;
      if ((*v62)(v86, 1, v36) == 1)
      {

        v88 = sub_1AF6496EC(v286);
        v56 = v285;

        *v56 = v88;
        v89 = v269;
        swift_storeEnumTagMultiPayload();
        if (v87(v89, 1, v36) != 1)
        {
          sub_1AFD53CA8(v89, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v86, v56, type metadata accessor for ScriptIndex);
      }

      v90 = v261;
      sub_1AFD531F8(v56, v261, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v92 = v83;
        sub_1AFD53198(v90, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v91 = *v90;
        v93 = *(v55 + 16);
        v298 = v91;
        if (v93)
        {
          v94 = sub_1AF449D3C(v91);
          if (v96)
          {
            *&v95 = *(*(v55 + 56) + 8 * v94);
            v298 = v95;
          }
        }

        v92 = v83;
        sub_1AFD53198(v56, type metadata accessor for ScriptIndex);
        *v56 = v298;
        swift_storeEnumTagMultiPayload();
      }

      v97 = v280;
      v98 = sub_1AFD531F8(v85, v280, v266);
      v99 = v267(v98);
      v100 = v257;
      v101 = v97 + v257[9];
      *v101 = v99;
      *(v101 + 8) = 0;
      v102 = v100[10];
      v289 = 1;
      *(v97 + v102) = 1;
      *(v97 + v100[11]) = 0;
      v103 = v97 + v100[12];
      strcpy(v103, "<precompiled>");
      *(v103 + 14) = -4864;
      *(v97 + v100[13]) = MEMORY[0x1E69E7CC0];
      v104 = *v85;
      v305 = MEMORY[0x1E69E7CD0];
      v105 = *(v85 + 24);
      v106 = v272;
      if (v105 < 4)
      {
        v289 = sub_1AFDFEE28();
      }

      v274 = v104;

      v107 = v268(v276, v106 & 1);
      v108 = *(v107 + 16);
      if (v108)
      {
        break;
      }

      *&v298 = 0;
      v63 = MEMORY[0x1E69E7CC0];
      v64 = MEMORY[0x1E69E7CC0];
      v65 = v106;
LABEL_5:
      v66 = v252 + v250 * v281;
      v67 = v262;
      v68 = v277;
      v69 = v278;
      sub_1AFD53C4C(v66, v262, v277, v278, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v280, v66, v279, v68, v69, type metadata accessor for ScriptCompileAttempt);
      v70 = v251;
      v71 = (v66 + v251[15]);
      *v71 = v274;
      v71[1] = 0;
      *(v66 + v70[9]) = v298;
      *(v66 + v70[10]) = v63;
      *(v66 + v70[11]) = v64;
      *(v66 + v70[12]) = 0;
      *(v66 + v70[13]) = 0;
      v72 = v66 + v70[14];
      *v72 = v276;
      *(v72 + 8) = v65 & 1;

      v73 = sub_1AF6496EC(v286);

      v302 = v70;
      v303 = &off_1F2558F90;
      v74 = sub_1AF585714(&v300);
      sub_1AFD53D18(v66, v74, v67, v68, v69, type metadata accessor for ScriptRuntime);
      v304 = 0;
      v75 = v73;
      v76 = v281;
      sub_1AF8259D0(&v300, v270, v75);
      sub_1AF967B70(v305);
      v56 = v285;
      result = sub_1AFD53198(v285, type metadata accessor for ScriptIndex);
      v55 = v271;
      v36 = v297;
LABEL_6:
      v62 = v255;
      v60 = v76 + 1;
      if (v60 == v259)
      {
        return result;
      }
    }

    *&v298 = 0;
    v263 = v107;
    v109 = (v107 + 48);
    v64 = MEMORY[0x1E69E7CC0];
    v283 = MEMORY[0x1E69E7CC0];
    v284 = v92 | (v82 << 32);
    LODWORD(v288) = v105;
    while (1)
    {
      v112 = *(v109 - 2);
      v111 = *(v109 - 1);
      LODWORD(v296) = *v109;
      if (v289)
      {
        swift_bridgeObjectRetain_n();

        v113 = v286;
        v114 = sub_1AF6496EC(v286);

        v115 = v113;
        v105 = v288;
        v116 = sub_1AF6496EC(v115);

        v117 = v295;
        *v295 = v116;
        v118 = v297;
        swift_storeEnumTagMultiPayload();
        (*v287)(v117, 0, 1, v118);
      }

      else
      {
        v117 = v295;
        sub_1AFD531F8(v285, v295, type metadata accessor for ScriptIndex);
        (*v287)(v117, 0, 1, v297);
        swift_bridgeObjectRetain_n();
        v114 = v284;
      }

      v119 = sub_1AFAF8B58(v112, v111, v293, v294, v114, v291, v292, v117);
      v121 = v120;

      sub_1AFD53CA8(v117, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v300, v119, v121);

      if (v105 >= 4)
      {
        break;
      }

      v122 = sub_1AFDFEE28();

      if (v122)
      {
        goto LABEL_34;
      }

      if (v105 == 2)
      {
        if (v282)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1AF4246B0(0, *(v64 + 2) + 1, 1, v64);
          }

          v130 = v296;
          v132 = *(v64 + 2);
          v131 = *(v64 + 3);
          if (v132 >= v131 >> 1)
          {
            v64 = sub_1AF4246B0(v131 > 1, v132 + 1, 1, v64);
          }

          *(v64 + 2) = v132 + 1;
          v133 = &v64[24 * v132];
          *(v133 + 4) = v119;
          *(v133 + 5) = v121;
          v133[48] = v130;
          *&v298 = v282;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v300 = 0;
          v301 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v249 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v119, v121);

          MEMORY[0x1B2718AE0](0xD000000000000031, v248 | 0x8000000000000000);
          v142 = v300;
          v143 = v301;
          v144 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v145 = v144;
            swift_once();
            v144 = v145;
          }

          v300 = 0;
          sub_1AF0D4F18(v144, &v300, v142, v143);
        }

        goto LABEL_27;
      }

      v134 = v275;
      if (!*(v275 + 16) || (v135 = sub_1AF419914(v119, v121), (v136 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v300 = 0;
        v301 = 0xE000000000000000;
        sub_1AFDFE218();

        v300 = 0xD000000000000022;
        v301 = v245;
        MEMORY[0x1B2718AE0](v119, v121);

        v146 = v300;
        v147 = v301;
        v148 = sub_1AFDFDA08();
        v55 = v271;
        v36 = v297;
        v56 = v285;
        v76 = v281;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_64;
        }

LABEL_71:
        v149 = v148;
        swift_once();
        v148 = v149;
LABEL_64:
        v300 = 0;
        sub_1AF0D4F18(v148, &v300, v146, v147);

        result = sub_1AFD53198(v56, type metadata accessor for ScriptIndex);
        goto LABEL_6;
      }

      v137 = v135;

      v138 = *(*(v134 + 56) + 8 * v137);
      v139 = v283;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_1AF42469C(0, *(v139 + 2) + 1, 1, v139);
      }

      v141 = *(v139 + 2);
      v140 = *(v139 + 3);
      if (v141 >= v140 >> 1)
      {
        v139 = sub_1AF42469C(v140 > 1, v141 + 1, 1, v139);
      }

      *(v139 + 2) = v141 + 1;
      v283 = v139;
      *&v139[8 * v141 + 32] = v138;
LABEL_26:

LABEL_27:
      v109 += 24;
      if (!--v108)
      {

        v65 = v272;
        v63 = v283;
        goto LABEL_5;
      }
    }

LABEL_34:
    if (!v299 || (v123 = *(v299 + 96), v124 = sub_1AFDFCEC8(), v125 = [v123 objectForKeyedSubscript_], v123, v124, !v125))
    {

LABEL_61:

      v36 = v297;
      v76 = v281;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v300 = 0;
      v301 = 0xE000000000000000;
      sub_1AFDFE218();

      v300 = 0xD000000000000025;
      v301 = v247;
      MEMORY[0x1B2718AE0](v119, v121);

      v146 = v300;
      v147 = v301;
      v148 = sub_1AFDFDA08();
      v55 = v271;
      v56 = v285;
      if (qword_1ED731058 != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v126 = [v125 isUndefined];

    if (v126)
    {
      goto LABEL_61;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1AF4246B0(0, *(v64 + 2) + 1, 1, v64);
    }

    v105 = v288;
    v127 = v296;
    v129 = *(v64 + 2);
    v128 = *(v64 + 3);
    if (v129 >= v128 >> 1)
    {
      v64 = sub_1AF4246B0(v128 > 1, v129 + 1, 1, v64);
    }

    *(v64 + 2) = v129 + 1;
    v110 = &v64[24 * v129];
    *(v110 + 4) = v119;
    *(v110 + 5) = v121;
    v110[48] = v127;
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1AFD53198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFD531F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFD53260(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFD55360(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFD532D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AFD53334(uint64_t a1, uint64_t a2)
{
  sub_1AFD532D0(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFD533D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AFD533F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], &off_1F2532E98);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFD53450(uint64_t a1, uint64_t a2)
{
  sub_1AFD533F0(0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFD534D0(uint64_t a1)
{
  sub_1AFD533F0(0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFD53548(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v54 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v7, v8, v9, v10);
  result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v7, v8, v9, v10);
  v12 = result;
  if (!v7)
  {
    v33 = a1[6];
    v34 = a1[7];
    if (v33 == v34)
    {
      return result;
    }

    v35 = a3 + 32;
    while (1)
    {
      v57 = *(v54 + 16 * v33);
      v36 = sub_1AFA2D838(*(v12 + 16 * v33));
      v37 = v57;
      *(&v37 + 3) = v36;
      v58[0] = v37;
      v59 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v38 = *(a3 + 16);
      v39 = 2 * v38;
      v40 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v38 + 32, 8);
      *v40 = &type metadata for DebugInfoWireframePrimitive;
      v40[1] = &off_1F25604A8;
      v40[2] = &type metadata for DebugInfoColor;
      v40[3] = &off_1F2560488;
      if (!v38)
      {
        v43 = 2;
        goto LABEL_41;
      }

      if (v38 <= 3)
      {
        break;
      }

      if ((v40 + 4) < v35 + v39 * 8 && v35 < &v40[v39 + 4])
      {
        break;
      }

      v42 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v43 = v38 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v44 = v40 + 8;
      v45 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v46 = (a3 + 64);
      do
      {
        v48 = *(v46 - 2);
        v47 = *(v46 - 1);
        v50 = *v46;
        v49 = v46[1];
        v46 += 4;
        *(v44 - 2) = v48;
        *(v44 - 1) = v47;
        *v44 = v50;
        v44[1] = v49;
        v44 += 4;
        v45 -= 4;
      }

      while (v45);
      if (v38 != v42)
      {
        goto LABEL_37;
      }

LABEL_41:
      v60 = 1;
      sub_1AF63C898(v40, v43, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v58, -16744193);
      if (v4)
      {
LABEL_44:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v4 = 0;
      ++v33;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v33 == v34)
      {
        return result;
      }
    }

    v42 = 0;
    v43 = 2;
LABEL_37:
    v51 = v38 - v42;
    v52 = (v35 + 16 * v42);
    do
    {
      v53 = *v52++;
      *&v40[2 * v43++] = v53;
      --v51;
    }

    while (v51);
    goto LABEL_41;
  }

  if (v9)
  {
    v13 = 0;
    v14 = a3 + 32;
    do
    {
      v56 = *(v54 + 16 * v13);
      v15 = sub_1AFA2D838(*(v12 + 16 * v13));
      v16 = v56;
      *(&v16 + 3) = v15;
      v58[0] = v16;
      v59 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v17 = *(a3 + 16);
      v18 = 2 * v17;
      v19 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v17 + 32, 8);
      *v19 = &type metadata for DebugInfoWireframePrimitive;
      v19[1] = &off_1F25604A8;
      v19[2] = &type metadata for DebugInfoColor;
      v19[3] = &off_1F2560488;
      if (v17)
      {
        if (v17 > 3 && ((v19 + 4) < v14 + v18 * 8 ? (v20 = v14 >= &v19[v18 + 4]) : (v20 = 1), v20))
        {
          v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          v22 = v17 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v23 = v19 + 8;
          v24 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          v25 = (a3 + 64);
          do
          {
            v27 = *(v25 - 2);
            v26 = *(v25 - 1);
            v29 = *v25;
            v28 = v25[1];
            v25 += 4;
            *(v23 - 2) = v27;
            *(v23 - 1) = v26;
            *v23 = v29;
            v23[1] = v28;
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
          if (v17 == v21)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v21 = 0;
          v22 = 2;
        }

        v30 = v17 - v21;
        v31 = (v14 + 16 * v21);
        do
        {
          v32 = *v31++;
          *&v19[2 * v22++] = v32;
          --v30;
        }

        while (v30);
      }

      else
      {
        v22 = 2;
      }

LABEL_20:
      v60 = 1;
      sub_1AF63C898(v19, v22, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v58, -16744193);
      if (v4)
      {
        goto LABEL_44;
      }

      v4 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      ++v13;
    }

    while (v13 != v9);
  }

  return result;
}

void sub_1AFD53904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[11];
  v8 = a1[12];
  v10 = a1[13];
  v11 = a1[2];
  v50 = sub_1AF64B110(&type metadata for KillShape, &off_1F2561EB0, v9, v8, v10, v11);
  v12 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v9, v8, v10, v11);
  if (v9)
  {
    if (v10)
    {
      v13 = *(a2 + 32);
      v14 = (v12 + 32);
      v15 = (v50 + 1);
      do
      {

        sub_1AFB95040(v13, &v53);
        v48 = v53.columns[1];
        v51 = v53.columns[0];
        v44 = v53.columns[3];
        v46 = v53.columns[2];

        if (v54)
        {
          v16 = -1;
        }

        else
        {
          v16 = 0;
        }

        v17 = vdupq_n_s32(v16);
        v18 = vbslq_s8(v17, xmmword_1AFE20150, v51);
        v19 = vbslq_s8(v17, xmmword_1AFE20160, v48);
        v20 = vbslq_s8(v17, xmmword_1AFE20180, v46);
        v21 = vbslq_s8(v17, xmmword_1AFE201A0, v44);
        v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14[-4].f32)), v19, v14[-4], 1), v20, *v14[-4].f32, 2), v21, *v14[-4].f32, 3);
        v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14[-2].f32)), v19, v14[-2], 1), v20, *v14[-2].f32, 2), v21, *v14[-2].f32, 3);
        v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14->f32)), v19, *v14, 1), v20, *v14->f32, 2), v21, *v14->f32, 3);
        v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14[2].f32)), v19, v14[2], 1), v20, *v14[2].f32, 2), v21, *v14[2].f32, 3);
        v26 = *v15;
        if (*(v15 - 1))
        {
          if (*(v15 - 1) == 1)
          {
            sub_1AFB6657C(v26, a3, a4, v22, v23, v24, v25);
          }

          else
          {
            sub_1AFB671E8(v26, a3, a4, v22, v23, v24, v25, *v19.i64, *v20.i64, v21);
          }
        }

        else
        {
          sub_1AFB65D2C(v26, a3, a4, v22, v23, v24);
        }

        v14 += 8;
        v15 += 2;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v27 = a1[6];
    v28 = a1[7];
    v29 = v28 - v27;
    if (v28 != v27)
    {
      v30 = *(a2 + 32);
      v31 = (v50 + 2 * v27 + 1);
      v32 = (v12 + (v27 << 6) + 32);
      do
      {

        sub_1AFB95040(v30, &v53);
        v49 = v53.columns[1];
        v52 = v53.columns[0];
        v45 = v53.columns[3];
        v47 = v53.columns[2];

        if (v54)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34 = vdupq_n_s32(v33);
        v35 = vbslq_s8(v34, xmmword_1AFE20150, v52);
        v36 = vbslq_s8(v34, xmmword_1AFE20160, v49);
        v37 = vbslq_s8(v34, xmmword_1AFE20180, v47);
        v38 = vbslq_s8(v34, xmmword_1AFE201A0, v45);
        v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32[-4].f32)), v36, v32[-4], 1), v37, *v32[-4].f32, 2), v38, *v32[-4].f32, 3);
        v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32[-2].f32)), v36, v32[-2], 1), v37, *v32[-2].f32, 2), v38, *v32[-2].f32, 3);
        v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32->f32)), v36, *v32, 1), v37, *v32->f32, 2), v38, *v32->f32, 3);
        v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32[2].f32)), v36, v32[2], 1), v37, *v32[2].f32, 2), v38, *v32[2].f32, 3);
        v43 = *v31;
        if (*(v31 - 1))
        {
          if (*(v31 - 1) == 1)
          {
            sub_1AFB6657C(v43, a3, a4, v39, v40, v41, v42);
          }

          else
          {
            sub_1AFB671E8(v43, a3, a4, v39, v40, v41, v42, *v36.i64, *v37.i64, v38);
          }
        }

        else
        {
          sub_1AFB65D2C(v43, a3, a4, v39, v40, v41);
        }

        v31 += 2;
        v32 += 8;
        --v29;
      }

      while (v29);
    }
  }
}

uint64_t sub_1AFD53C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFD53F14(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFD53CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFD532D0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFD53D18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFD53F14(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFD53D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AFD53DF4()
{
  if (!qword_1EB644400)
  {
    sub_1AFD53F14(255, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644400);
    }
  }
}

void sub_1AFD53E84()
{
  if (!qword_1EB644408)
  {
    sub_1AFD53F14(255, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644408);
    }
  }
}

void sub_1AFD53F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFD53F80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFD53F14(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1AFD53FF4()
{
  if (!qword_1EB644418)
  {
    sub_1AFD53F14(255, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644418);
    }
  }
}

void sub_1AFD54084()
{
  if (!qword_1ED7256F8)
  {
    sub_1AFD53F14(255, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7256F8);
    }
  }
}

void sub_1AFD54114()
{
  if (!qword_1EB644428)
  {
    sub_1AFD53F14(255, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644428);
    }
  }
}

void sub_1AFD541A4()
{
  if (!qword_1ED725720)
  {
    sub_1AFD53F14(255, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED725720);
    }
  }
}

void sub_1AFD54234()
{
  if (!qword_1EB644430)
  {
    sub_1AFD53F14(255, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644430);
    }
  }
}

void sub_1AFD542C4()
{
  if (!qword_1ED725728[0])
  {
    sub_1AFD53F14(255, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, qword_1ED725728);
    }
  }
}

void sub_1AFD54354()
{
  if (!qword_1EB644438)
  {
    sub_1AFD53F14(255, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644438);
    }
  }
}

void sub_1AFD543E4()
{
  if (!qword_1ED722AF0)
  {
    sub_1AFD53F14(255, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722AF0);
    }
  }
}

void sub_1AFD54474()
{
  if (!qword_1EB644448)
  {
    sub_1AFD53F14(255, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644448);
    }
  }
}

void sub_1AFD54504()
{
  if (!qword_1EB644450)
  {
    sub_1AFD53F14(255, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644450);
    }
  }
}

void sub_1AFD54594()
{
  if (!qword_1ED725700)
  {
    sub_1AFD53F14(255, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED725700);
    }
  }
}

void sub_1AFD54624()
{
  if (!qword_1EB644458)
  {
    sub_1AFD53F14(255, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644458);
    }
  }
}

void sub_1AFD546B4()
{
  if (!qword_1ED725718)
  {
    sub_1AFD53F14(255, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED725718);
    }
  }
}

void sub_1AFD54744()
{
  if (!qword_1EB644460)
  {
    sub_1AFD53F14(255, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644460);
    }
  }
}

void sub_1AFD547D4()
{
  if (!qword_1EB644468[0])
  {
    sub_1AFD53F14(255, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, qword_1EB644468);
    }
  }
}

uint64_t sub_1AFD54864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFD548CC(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for Skybox, &off_1F25304A0, v4, v5, v6, v7);
  result = sub_1AF64B110(&type metadata for IBLGenerator, &off_1F252A618, v4, v5, v6, v7);
  if (v4)
  {
    if (v6)
    {
      v10 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v53 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v55 = a2;
      v11 = (v8 + 4);
      do
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        if ((v16 != -1 || v17 != 0) && (v16 & 0x80000000) == 0 && v10[1] > v16)
        {
          v19 = (*v10 + 12 * v16);
          if (v17 == -1 || v19[2] == v17)
          {
            v20 = *(v19 + 2);
            v21 = *(*(a2 + 144) + 8 * *v19 + 32);
            if (*(v21 + 232) <= v20 && *(v21 + 240) > v20)
            {
              v23 = *(a2 + v53);
              v24 = *v23;
              v25 = *(v21 + 344);

              os_unfair_lock_lock(v25);
              ecs_stack_allocator_push_snapshot(*(v24 + 32));
              v26 = *(*(v21 + 40) + 16);
              v27 = *(v26 + 128);
              if (!*(v27 + 16) || (v28 = sub_1AF449CB8(&type metadata for TextureRequireMipmapGeneration), (v29 & 1) == 0) || *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * v28) + 32) != &type metadata for TextureRequireMipmapGeneration)
              {
                v12 = *(v24 + 32);

                v13 = ecs_stack_allocator_allocate(v12, 8, 8);
                *v13 = v20;
                v14 = *v23;
                sub_1AF5B4D64(v13, 1, 1, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 1);
                LODWORD(v12) = *(v21 + 24);

                v62 = 0;
                v60 = 0u;
                v61 = 0u;
                v59 = 0;
                v57 = 0u;
                v58 = 0u;
                v15 = sub_1AF65A4B4(v12, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 0, 0, &v60, &v57);

                sub_1AF5DD41C(&v57);
                sub_1AF5DD41C(&v60);
                sub_1AF64A824(v13, 1, 1, v15, v14);
              }

              ecs_stack_allocator_pop_snapshot(*(v24 + 32));
              os_unfair_lock_unlock(*(v21 + 344));

              a2 = v55;
            }
          }
        }

        v11 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v30 = a1[6];
    v31 = a1[7];
    v32 = v31 - v30;
    if (v31 != v30)
    {
      v33 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v54 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v56 = a2;
      v34 = (v8 + 32 * v30 + 4);
      do
      {
        v39 = *(v34 - 1);
        v40 = *v34;
        if ((v39 != -1 || v40 != 0) && (v39 & 0x80000000) == 0 && v33[1] > v39)
        {
          v42 = (*v33 + 12 * v39);
          if (v40 == -1 || v42[2] == v40)
          {
            v43 = *(v42 + 2);
            v44 = *(*(a2 + 144) + 8 * *v42 + 32);
            if (*(v44 + 232) <= v43 && *(v44 + 240) > v43)
            {
              v46 = *(a2 + v54);
              v47 = *v46;
              v48 = *(v44 + 344);

              os_unfair_lock_lock(v48);
              ecs_stack_allocator_push_snapshot(*(v47 + 32));
              v49 = *(*(v44 + 40) + 16);
              v50 = *(v49 + 128);
              if (!*(v50 + 16) || (v51 = sub_1AF449CB8(&type metadata for TextureRequireMipmapGeneration), (v52 & 1) == 0) || *(*(v49 + 24) + 16 * *(*(v50 + 56) + 8 * v51) + 32) != &type metadata for TextureRequireMipmapGeneration)
              {
                v35 = *(v47 + 32);

                v36 = ecs_stack_allocator_allocate(v35, 8, 8);
                *v36 = v43;
                v37 = *v46;
                sub_1AF5B4D64(v36, 1, 1, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 1);
                LODWORD(v35) = *(v44 + 24);

                v62 = 0;
                v60 = 0u;
                v61 = 0u;
                v59 = 0;
                v57 = 0u;
                v58 = 0u;
                v38 = sub_1AF65A4B4(v35, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 0, 0, &v60, &v57);

                sub_1AF5DD41C(&v57);
                sub_1AF5DD41C(&v60);
                sub_1AF64A824(v36, 1, 1, v38, v37);
              }

              ecs_stack_allocator_pop_snapshot(*(v47 + 32));
              os_unfair_lock_unlock(*(v44 + 344));

              a2 = v56;
            }
          }
        }

        v34 += 8;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

void sub_1AFD54DA0(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v3 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for SubEntity, &off_1F2562C50, v4, v3, v5, v7);
  v50 = v6;
  v9 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v4, v3, v5, v7);
  v10 = v9;
  if (v4)
  {
    if (v5)
    {
      v49 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      do
      {
        v11 = *v4;
        v51 = v4 + 1;
        v13 = *v10;
        v12 = v10[1];
        if (*v10 == -1 && v12 == 0)
        {
          v15 = *v8;
          *v10 = *v8;
          v12 = HIDWORD(v15);
          v13 = v15;
        }

        v16 = v13 == -1 && v12 == 0;
        v17 = v16;
        if (!v16 && (v13 & 0x80000000) == 0 && v49[1] > v13 && ((v23 = *v49 + 12 * v13, v12 == -1) || *(v23 + 8) == v12) && (v24 = *(*(*(a2 + 88) + 8 * *(v23 + 6) + 32) + 16), v25 = *(v24 + 128), *(v25 + 16)) && (v26 = sub_1AF449CB8(&type metadata for Children), (v27 & 1) != 0) && *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) == &type metadata for Children)
        {
          sub_1AF6875E0(v13 | (v12 << 32), a2, v50, v11);
        }

        else
        {
          sub_1AFD55360(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1AFE431C0;

          if (*(v50 + 184))
          {
            goto LABEL_75;
          }

          v19 = *(*(v50 + 168) + 4 * v11);
          v20 = *(*(v18 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v19 + 8);

          *(v6 + 32) = v19;
          *(v6 + 36) = v20;
          if ((v17 & 1) == 0 && (v13 & 0x80000000) == 0 && v49[1] > v13)
          {
            v21 = (*v49 + 12 * v13);
            if (v12 == -1 || v21[2] == v12)
            {
              v11 = *(*(a2 + 144) + 8 * *v21 + 32);
              v22 = *(v21 + 2);
              os_unfair_lock_lock(*(v11 + 344));
              sub_1AFC0FAEC(v11, v22, v6, a2, v13 | (v12 << 32));
              if (v46)
              {
                goto LABEL_76;
              }

              os_unfair_lock_unlock(*(v11 + 344));
            }
          }
        }

        v4 = v51;
        v10 += 2;
        ++v8;
        --v5;
      }

      while (v5);
    }

    return;
  }

  v28 = a1[6];
  v52 = a1[7];
  if (v28 == v52)
  {
    return;
  }

  v29 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v30 = (v9 + 8 * v28);
  v48 = v8;
  while (1)
  {
    v32 = *v30;
    v31 = v30[1];
    if (*v30 == -1 && v31 == 0)
    {
      v34 = v8[v28];
      *v30 = v34;
      v31 = HIDWORD(v34);
      v32 = v34;
    }

    v35 = v32 == -1 && v31 == 0;
    v36 = v35;
    if (v35)
    {
      break;
    }

    if ((v32 & 0x80000000) != 0)
    {
      break;
    }

    if (v29[1] <= v32)
    {
      break;
    }

    v40 = *v29 + 12 * v32;
    if (v31 != -1 && *(v40 + 8) != v31)
    {
      break;
    }

    v41 = *(*(*(a2 + 88) + 8 * *(v40 + 6) + 32) + 16);
    v6 = *(v41 + 128);
    if (!*(v6 + 16))
    {
      break;
    }

    v42 = sub_1AF449CB8(&type metadata for Children);
    if ((v43 & 1) == 0 || *(*(v41 + 24) + 16 * *(*(v6 + 56) + 8 * v42) + 32) != &type metadata for Children)
    {
      break;
    }

    sub_1AF6875E0(v32 | (v31 << 32), a2, v50, v28);
LABEL_71:
    ++v28;
    v30 += 2;
    if (v52 == v28)
    {
      return;
    }
  }

  v37 = v29;
  sub_1AFD55360(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;

  if ((*(v50 + 184) & 1) == 0)
  {
    v6 = *(*(v50 + 168) + 4 * v28);
    v39 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6 + 8);

    *(v11 + 32) = v6;
    *(v11 + 36) = v39;
    if (!v36)
    {
      v29 = v37;
      if ((v32 & 0x80000000) != 0 || v37[1] <= v32 || (v44 = (*v37 + 12 * v32), v31 != -1) && v44[2] != v31)
      {

        goto LABEL_70;
      }

      v6 = *(*(a2 + 144) + 8 * *v44 + 32);
      v45 = *(v44 + 2);
      os_unfair_lock_lock(*(v6 + 344));
      sub_1AFC0FAEC(v6, v45, v11, a2, v32 | (v31 << 32));
      if (v46)
      {
        goto LABEL_77;
      }

      os_unfair_lock_unlock(*(v6 + 344));
    }

    v29 = v37;
LABEL_70:
    v8 = v48;
    goto LABEL_71;
  }

LABEL_75:
  sub_1AFDFE518();
  __break(1u);
LABEL_76:

  os_unfair_lock_unlock(*(v11 + 344));
  __break(1u);
LABEL_77:

  os_unfair_lock_unlock(*(v6 + 344));
  __break(1u);
}