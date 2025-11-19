uint64_t sub_22BB11ED8(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_22BB10CB4(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_22BB1E96C() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_22BB10FF8(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB12098(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v218 = a4;
  v217 = a1;
  v7 = sub_22BB1E93C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v234 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v213 - v12;
  MEMORY[0x28223BE20](v14);
  v215 = &v213 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v213 - v17;
  v259 = sub_22BB1E91C();
  v19 = *(v259 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v259);
  v245 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v248 = &v213 - v23;
  MEMORY[0x28223BE20](v24);
  v214 = &v213 - v25;
  MEMORY[0x28223BE20](v26);
  v224 = &v213 - v27;
  v258 = sub_22BB1E96C();
  v28 = *(*(v258 - 8) + 64);
  MEMORY[0x28223BE20](v258);
  v221 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v232 = &v213 - v31;
  MEMORY[0x28223BE20](v32);
  v257 = &v213 - v33;
  MEMORY[0x28223BE20](v34);
  v249 = &v213 - v35;
  MEMORY[0x28223BE20](v36);
  v238 = &v213 - v37;
  MEMORY[0x28223BE20](v38);
  v237 = &v213 - v39;
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v41);
  v260 = MEMORY[0x277D84F90];
  v233 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_135:
    v208 = *v217;
    if (!*v217)
    {
      goto LABEL_163;
    }

    v209 = v208;
    v210 = v240;
    sub_22BB11ED8(&v260, v209, v233, a5);

    v240 = v210;
LABEL_137:
    swift_bridgeObjectRelease_n();
  }

  v216 = &v213 - v42;
  v213 = v44;
  v242 = v43 + 16;
  v243 = (v43 + 8);
  v255 = (v8 + 88);
  v254 = *MEMORY[0x277D74670];
  v222 = (v8 + 8);
  v251 = (v19 + 32);
  v252 = (v8 + 96);
  v241 = (v19 + 8);
  v229 = v43;
  v236 = (v43 + 32);
  swift_bridgeObjectRetain_n();
  v46 = 0;
  v250 = MEMORY[0x277D84F90];
  v253 = a5;
  v47 = v218;
  v256 = v7;
  v244 = v13;
  v228 = v18;
  v48 = v258;
  while (1)
  {
    v219 = v46;
    if (v46 + 1 >= v45)
    {
      v99 = v46 + 1;
      goto LABEL_47;
    }

    v239 = v45;
    v49 = *v233;
    v50 = *(v229 + 72);
    v51 = *(v229 + 16);
    v247 = (*v233 + v50 * (v46 + 1));
    v51(v216);
    v246 = v50;
    v52 = v49 + v50 * v46;
    v53 = v213;
    v231 = v51;
    (v51)(v213, v52, v48);
    v54 = v216;
    v55 = v240;
    LODWORD(v235) = sub_22BB0DE34(v216, v53, a5);
    v240 = v55;
    if (v55)
    {
      v212 = *v243;
      (*v243)(v53, v48);
      (v212)(v54, v48);
      goto LABEL_137;
    }

    v227 = v49;
    v56 = *v243;
    (*v243)(v53, v48);
    v230 = v56;
    (v56)(v54, v48);
    v57 = v219 + 2;
    v58 = v246;
    v59 = v227 + v246 * (v219 + 2);
    do
    {
      if (v239 == v57)
      {
        v99 = v239;
        goto LABEL_33;
      }

      v62 = a5;
      v63 = v13;
      v64 = v231;
      v231(v237, v59, v48);
      v64(v238, v247, v48);
      v65 = v228;
      sub_22BB1E94C();
      v66 = *v255;
      v67 = (*v255)(v65, v7);
      if (v67 != v254)
      {
        (*v222)(v65, v7);
        v60 = 0;
        v13 = v63;
LABEL_9:
        a5 = v62;
        goto LABEL_10;
      }

      v68 = *v252;
      (*v252)(v65, v7);
      v69 = *v251;
      v70 = v224;
      v71 = v65;
      v72 = v259;
      (*v251)(v224, v71, v259);
      v73 = sub_22BB1E8AC();
      if (!v74)
      {
        (*v241)(v70, v72);
        v60 = 0;
        v7 = v256;
        v13 = v244;
        goto LABEL_9;
      }

      if (!*(v62 + 16))
      {

        v79 = v224;
LABEL_23:
        (*v241)(v79, v259);
        v60 = 0;
        a5 = v253;
        v7 = v256;
LABEL_24:
        v13 = v244;
        goto LABEL_10;
      }

      v75 = v69;
      v76 = sub_22BAD6B9C(v73, v74);
      v78 = v77;

      v79 = v224;
      if ((v78 & 1) == 0)
      {
        goto LABEL_23;
      }

      v80 = v224;
      a5 = v253;
      v227 = *(*(v253 + 56) + 8 * v76);
      v81 = v215;
      sub_22BB1E94C();
      v82 = v81;
      v83 = v81;
      v7 = v256;
      v84 = v66(v83, v256);
      if (v84 != v254)
      {
        (*v241)(v80, v259);
        (*v222)(v82, v7);
        v60 = 0;
        goto LABEL_24;
      }

      v68(v82, v7);
      v85 = v82;
      v86 = v214;
      v87 = v259;
      v75(v214, v85, v259);
      v88 = sub_22BB1E8AC();
      if (!v89)
      {
        v97 = *v241;
        (*v241)(v86, v87);
        v97(v80, v87);
        v60 = 0;
        goto LABEL_24;
      }

      if (*(a5 + 16))
      {
        v90 = a5;
        v91 = sub_22BAD6B9C(v88, v89);
        v93 = v92;

        v94 = *v241;
        v13 = v244;
        if (v93)
        {
          v95 = *(*(v90 + 56) + 8 * v91);
          v96 = v259;
          v94(v214, v259);
          v94(v224, v96);
          v60 = v95 < v227;
          a5 = v90;
          v7 = v256;
          goto LABEL_10;
        }

        a5 = v90;
        v7 = v256;
      }

      else
      {

        v94 = *v241;
        v13 = v244;
      }

      v98 = v259;
      v94(v214, v259);
      v94(v224, v98);
      v60 = 0;
LABEL_10:
      v48 = v258;
      v61 = v230;
      (v230)(v238, v258);
      v61(v237, v48);
      ++v57;
      v58 = v246;
      v59 += v246;
      v247 = &v246[v247];
    }

    while (((v235 ^ v60) & 1) == 0);
    v99 = v57 - 1;
LABEL_33:
    v47 = v218;
    v46 = v219;
    if (v235)
    {
      break;
    }

LABEL_47:
    v105 = v233[1];
    if (v99 >= v105)
    {
      goto LABEL_84;
    }

    if (__OFSUB__(v99, v46))
    {
      goto LABEL_155;
    }

    if (v99 - v46 >= v47)
    {
      goto LABEL_84;
    }

    if (__OFADD__(v46, v47))
    {
      goto LABEL_156;
    }

    if (v46 + v47 < v105)
    {
      v105 = v46 + v47;
    }

    if (v105 < v46)
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v99 == v105)
    {
      goto LABEL_84;
    }

    v223 = v105;
    v106 = *v233;
    v107 = *(v229 + 72);
    v235 = *(v229 + 16);
    v108 = v106 + v107 * (v99 - 1);
    v230 = -v107;
    v109 = (v46 - v99);
    v231 = v106;
    v220 = v107;
    v110 = (v106 + v99 * v107);
    while (2)
    {
      v239 = v99;
      v225 = v110;
      v226 = v109;
      v227 = v108;
      v112 = v108;
      while (1)
      {
        v246 = v110;
        v247 = v109;
        v113 = v235;
        v235(v249, v110, v48);
        v113(v257, v112, v48);
        sub_22BB1E94C();
        v114 = *v255;
        v115 = (*v255)(v13, v7);
        if (v115 != v254)
        {
          (*v222)(v13, v7);
LABEL_57:
          v48 = v258;
          v111 = *v243;
          (*v243)(v257, v258);
          (v111)(v249, v48);
          goto LABEL_58;
        }

        v116 = *v252;
        (*v252)(v13, v7);
        v117 = *v251;
        (*v251)(v248, v13, v259);
        v118 = sub_22BB1E8AC();
        if (!v119)
        {
          (*v241)(v248, v259);
          v7 = v256;
          goto LABEL_57;
        }

        v120 = v253;
        if (!*(v253 + 16))
        {

LABEL_75:
          (*v241)(v248, v259);
          goto LABEL_80;
        }

        v121 = sub_22BAD6B9C(v118, v119);
        v123 = v122;

        if ((v123 & 1) == 0)
        {
          goto LABEL_75;
        }

        v124 = *(*(v120 + 56) + 8 * v121);
        v125 = v234;
        sub_22BB1E94C();
        v126 = v125;
        v127 = v125;
        v7 = v256;
        v128 = v114(v127, v256);
        if (v128 != v254)
        {
          (*v241)(v248, v259);
          (*v222)(v126, v7);
LABEL_81:
          v13 = v244;
          goto LABEL_57;
        }

        v116(v126, v7);
        v129 = v259;
        v117(v245, v126, v259);
        v130 = sub_22BB1E8AC();
        if (!v131)
        {
          v146 = *v241;
          (*v241)(v245, v129);
          v146(v248, v129);
LABEL_80:
          v7 = v256;
          goto LABEL_81;
        }

        if (!*(v120 + 16))
        {

LABEL_79:
          v147 = *v241;
          v148 = v259;
          (*v241)(v245, v259);
          v147(v248, v148);
          goto LABEL_80;
        }

        v132 = sub_22BAD6B9C(v130, v131);
        v134 = v133;

        if ((v134 & 1) == 0)
        {
          goto LABEL_79;
        }

        v135 = *(*(v120 + 56) + 8 * v132);
        v136 = *v241;
        v137 = v259;
        (*v241)(v245, v259);
        v136(v248, v137);
        v138 = *v243;
        v139 = v258;
        (*v243)(v257, v258);
        (v138)(v249, v139);
        v7 = v256;
        if (v135 >= v124)
        {
          break;
        }

        v13 = v244;
        v140 = v247;
        if (!v231)
        {
          goto LABEL_159;
        }

        v141 = v256;
        v142 = *v236;
        v143 = v232;
        v144 = v246;
        v48 = v258;
        (*v236)(v232, v246, v258);
        swift_arrayInitWithTakeFrontToBack();
        v142(v112, v143, v48);
        v112 += v230;
        v110 = &v144[v230];
        v145 = __CFADD__(v140, 1);
        v109 = v140 + 1;
        v7 = v141;
        if (v145)
        {
          goto LABEL_58;
        }
      }

      v13 = v244;
      v48 = v258;
LABEL_58:
      v99 = v239 + 1;
      v108 = v227 + v220;
      v109 = v226 - 1;
      v110 = &v225[v220];
      if (v239 + 1 != v223)
      {
        continue;
      }

      break;
    }

    v46 = v219;
    v99 = v223;
    a5 = v253;
LABEL_84:
    if (v99 < v46)
    {
      goto LABEL_154;
    }

    v223 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v250 = sub_22BAF6114(0, *(v250 + 2) + 1, 1, v250);
    }

    v150 = *(v250 + 2);
    v149 = *(v250 + 3);
    v151 = v150 + 1;
    if (v150 >= v149 >> 1)
    {
      v250 = sub_22BAF6114((v149 > 1), v150 + 1, 1, v250);
    }

    v152 = v250;
    *(v250 + 2) = v151;
    v153 = v152 + 32;
    v154 = &v152[16 * v150 + 32];
    v155 = v223;
    *v154 = v219;
    *(v154 + 1) = v155;
    v260 = v152;
    v247 = *v217;
    if (!v247)
    {
      goto LABEL_162;
    }

    if (v150)
    {
      while (2)
      {
        v156 = v151 - 1;
        if (v151 >= 4)
        {
          v161 = &v153[16 * v151];
          v162 = *(v161 - 8);
          v163 = *(v161 - 7);
          v167 = __OFSUB__(v163, v162);
          v164 = v163 - v162;
          if (v167)
          {
            goto LABEL_143;
          }

          v166 = *(v161 - 6);
          v165 = *(v161 - 5);
          v167 = __OFSUB__(v165, v166);
          v159 = v165 - v166;
          v160 = v167;
          if (v167)
          {
            goto LABEL_144;
          }

          v168 = &v250[16 * v151];
          v170 = *v168;
          v169 = *(v168 + 1);
          v167 = __OFSUB__(v169, v170);
          v171 = v169 - v170;
          if (v167)
          {
            goto LABEL_146;
          }

          v167 = __OFADD__(v159, v171);
          v172 = v159 + v171;
          if (v167)
          {
            goto LABEL_149;
          }

          if (v172 >= v164)
          {
            v190 = &v153[16 * v156];
            v192 = *v190;
            v191 = *(v190 + 1);
            v167 = __OFSUB__(v191, v192);
            v193 = v191 - v192;
            if (v167)
            {
              goto LABEL_153;
            }

            if (v159 < v193)
            {
              v156 = v151 - 2;
            }
          }

          else
          {
LABEL_104:
            if (v160)
            {
              goto LABEL_145;
            }

            v173 = &v250[16 * v151];
            v175 = *v173;
            v174 = *(v173 + 1);
            v176 = __OFSUB__(v174, v175);
            v177 = v174 - v175;
            v178 = v176;
            if (v176)
            {
              goto LABEL_148;
            }

            v179 = &v153[16 * v156];
            v181 = *v179;
            v180 = *(v179 + 1);
            v167 = __OFSUB__(v180, v181);
            v182 = v180 - v181;
            if (v167)
            {
              goto LABEL_151;
            }

            if (__OFADD__(v177, v182))
            {
              goto LABEL_152;
            }

            if (v177 + v182 < v159)
            {
              goto LABEL_118;
            }

            if (v159 < v182)
            {
              v156 = v151 - 2;
            }
          }
        }

        else
        {
          if (v151 == 3)
          {
            v157 = *(v250 + 4);
            v158 = *(v250 + 5);
            v167 = __OFSUB__(v158, v157);
            v159 = v158 - v157;
            v160 = v167;
            goto LABEL_104;
          }

          v183 = &v250[16 * v151];
          v185 = *v183;
          v184 = *(v183 + 1);
          v167 = __OFSUB__(v184, v185);
          v177 = v184 - v185;
          v178 = v167;
LABEL_118:
          if (v178)
          {
            goto LABEL_147;
          }

          v186 = &v153[16 * v156];
          v188 = *v186;
          v187 = *(v186 + 1);
          v167 = __OFSUB__(v187, v188);
          v189 = v187 - v188;
          if (v167)
          {
            goto LABEL_150;
          }

          if (v189 < v177)
          {
            goto LABEL_3;
          }
        }

        if (v156 - 1 >= v151)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
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
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v194 = *v233;
        if (!*v233)
        {
          goto LABEL_160;
        }

        v195 = &v153[16 * v156 - 16];
        v196 = *v195;
        v197 = &v153[16 * v156];
        v198 = *(v197 + 1);
        v199 = *(v229 + 72);
        v200 = v194 + v199 * *v195;
        v201 = v194 + v199 * *v197;
        v202 = v194 + v199 * v198;
        v203 = v253;

        v204 = v200;
        v205 = v240;
        sub_22BB10FF8(v204, v201, v202, v247, v203);

        v240 = v205;
        if (v205)
        {
          v260 = v250;
          goto LABEL_137;
        }

        if (v198 < v196)
        {
          goto LABEL_140;
        }

        v206 = *(v250 + 2);
        if (v156 > v206)
        {
          goto LABEL_141;
        }

        *v195 = v196;
        *(v195 + 1) = v198;
        if (v156 >= v206)
        {
          goto LABEL_142;
        }

        v151 = v206 - 1;
        memmove(&v153[16 * v156], v197 + 16, 16 * (v206 - 1 - v156));
        *(v250 + 2) = v206 - 1;
        v207 = v206 > 2;
        a5 = v253;
        v7 = v256;
        v13 = v244;
        v48 = v258;
        if (!v207)
        {
LABEL_3:
          v260 = v250;
          break;
        }

        continue;
      }
    }

    v45 = v233[1];
    v46 = v223;
    v47 = v218;
    if (v223 >= v45)
    {
      goto LABEL_135;
    }
  }

  if (v99 >= v219)
  {
    if (v219 < v99)
    {
      v100 = v58 * (v99 - 1);
      v101 = v99 * v58;
      v239 = v99;
      v102 = v219;
      v103 = v219 * v58;
      do
      {
        if (v102 != --v99)
        {
          v104 = *v233;
          if (!*v233)
          {
            goto LABEL_161;
          }

          v247 = *v236;
          (v247)(v221, v104 + v103, v258);
          if (v103 < v100 || v104 + v103 >= (v104 + v101))
          {
            v48 = v258;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v48 = v258;
            if (v103 != v100)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          (v247)(v104 + v100, v221, v48);
          v58 = v246;
        }

        ++v102;
        v100 -= v58;
        v101 -= v58;
        v103 += v58;
      }

      while (v102 < v99);
      v47 = v218;
      v7 = v256;
      v13 = v244;
      v99 = v239;
      v46 = v219;
    }

    goto LABEL_47;
  }

LABEL_158:
  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_162:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_163:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_22BB134E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v101 = a5;
  v9 = sub_22BB1E93C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v83 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v71[-v14];
  v99 = sub_22BB1E91C();
  v16 = *(v99 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v99);
  v90 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v97 = &v71[-v20];
  v21 = sub_22BB1E96C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v82 = &v71[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v100 = &v71[-v25];
  v28 = MEMORY[0x28223BE20](v26);
  v98 = &v71[-v29];
  v74 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v32 = *(v27 + 16);
    v31 = v27 + 16;
    v87 = v32;
    v33 = *(v31 + 56);
    v96 = (v10 + 88);
    v95 = *MEMORY[0x277D74670];
    v92 = (v16 + 32);
    v93 = (v10 + 96);
    v85 = (v16 + 8);
    v86 = (v31 - 8);
    v88 = v31;
    v80 = (v31 + 16);
    v72 = (v10 + 8);
    v34 = v30 + v33 * (a3 - 1);
    v79 = -v33;
    v35 = a1 - a3;
    v81 = v30;
    v73 = v33;
    v36 = v30 + v33 * a3;
    v94 = v9;
    v84 = v15;
    v89 = v21;
    while (2)
    {
      v78 = a3;
      v75 = v36;
      v76 = v35;
      v77 = v34;
      while (1)
      {
        v91 = v35;
        v38 = v87;
        (v87)(v98, v36, v21, v28);
        v38(v100, v34, v21);
        sub_22BB1E94C();
        v39 = *v96;
        v40 = (*v96)(v15, v9);
        if (v40 != v95)
        {
          break;
        }

        v41 = *v93;
        (*v93)(v15, v9);
        v42 = *v92;
        (*v92)(v97, v15, v99);
        v43 = sub_22BB1E8AC();
        if (!v44)
        {
          (*v85)(v97, v99);
          v9 = v94;
          goto LABEL_5;
        }

        if (!*(v101 + 16))
        {

LABEL_25:
          (*v85)(v97, v99);
          v9 = v94;
          v15 = v84;
          goto LABEL_5;
        }

        v45 = v101;
        v46 = sub_22BAD6B9C(v43, v44);
        v48 = v47;

        if ((v48 & 1) == 0)
        {
          goto LABEL_25;
        }

        v49 = *(*(v45 + 56) + 8 * v46);
        v50 = v83;
        sub_22BB1E94C();
        v51 = v50;
        v52 = v50;
        v9 = v94;
        v53 = v39(v52, v94);
        if (v53 != v95)
        {
          (*v85)(v97, v99);
          (*v72)(v51, v9);
          v15 = v84;
          goto LABEL_5;
        }

        v41(v51, v9);
        v42(v90, v51, v99);
        v54 = sub_22BB1E8AC();
        v21 = v89;
        if (!v55)
        {
          goto LABEL_28;
        }

        if (!*(v101 + 16))
        {

LABEL_28:
          v69 = *v85;
          v70 = v99;
          (*v85)(v90, v99);
          v69(v97, v70);
          v9 = v94;
          v15 = v84;
          goto LABEL_6;
        }

        v56 = v101;
        v57 = sub_22BAD6B9C(v54, v55);
        v59 = v58;

        if ((v59 & 1) == 0)
        {
          goto LABEL_28;
        }

        v60 = *(*(v56 + 56) + 8 * v57);
        v61 = *v85;
        v62 = v99;
        (*v85)(v90, v99);
        v61(v97, v62);
        v63 = *v86;
        (*v86)(v100, v21);
        v63(v98, v21);
        v64 = v60 < v49;
        v9 = v94;
        v15 = v84;
        v65 = v91;
        if (!v64)
        {
          goto LABEL_7;
        }

        if (!v81)
        {
          __break(1u);
          return;
        }

        v66 = *v80;
        v67 = v82;
        (*v80)(v82, v36, v21);
        swift_arrayInitWithTakeFrontToBack();
        v66(v34, v67, v21);
        v34 += v79;
        v36 += v79;
        v68 = __CFADD__(v65, 1);
        v35 = v65 + 1;
        if (v68)
        {
          goto LABEL_7;
        }
      }

      (*v72)(v15, v9);
LABEL_5:
      v21 = v89;
LABEL_6:
      v37 = *v86;
      (*v86)(v100, v21);
      v37(v98, v21);
LABEL_7:
      a3 = v78 + 1;
      v34 = v77 + v73;
      v35 = v76 - 1;
      v36 = v75 + v73;
      if (v78 + 1 == v74)
      {
        return;
      }

      continue;
    }
  }
}

void sub_22BB13C24()
{
  v1 = *(v0 + 16);
  if (*v1 & 1) == 0 && (sub_22BB1E7AC())
  {
    *v1 = 1;
  }
}

uint64_t sub_22BB13C60(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_22BB0D434(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_22BB13D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BB13DE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BAF2CCC(a1, a2);
  }

  return a1;
}

void sub_22BB13E24()
{
  sub_22BB1E9DC();
  if (v0 <= 0x3F)
  {
    sub_22BB1EADC();
    if (v1 <= 0x3F)
    {
      sub_22BB13FA0(319, &qword_281424168, MEMORY[0x277D746B0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22BB13F18()
{
  sub_22BB13FA0(319, &unk_2814244C0, type metadata accessor for FragmentCollator.ElementVisibilityContext, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22BB13FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BB1402C()
{
  result = sub_22BB1E55C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BB140C8()
{
  type metadata accessor for CGAffineTransform(319);
  if (v0 <= 0x3F)
  {
    sub_22BB1E96C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BB14194()
{
  sub_22BB1F5BC();
  if (v0 <= 0x3F)
  {
    sub_22BB1F11C();
    if (v1 <= 0x3F)
    {
      sub_22BB14230();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BB14230()
{
  if (!qword_281424188[0])
  {
    v0 = sub_22BB1F3CC();
    if (!v1)
    {
      atomic_store(v0, qword_281424188);
    }
  }
}

uint64_t sub_22BB14290(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v4 = sub_22BB1F52C();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22BB1F56C();
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Snapshotter();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = v11;
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22BB1F2AC();
  v55 = *(v57 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v53 = v13;
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1F5BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v50 - v21;
  v23 = _s17AsyncProviderTaskVMa();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v51 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v50 - v28;
  v30 = *(v15 + 16);
  v60 = v2;
  v30(v18, v2, v14, v27);
  aBlock = 0x746F687370616E53;
  v70 = 0xE900000000000028;
  v59 = a1;
  v31 = sub_22BB1F24C();
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  MEMORY[0x23189D130](v31, v33);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  sub_22BAC8A94(v18, aBlock, v70, v22);

  (*(v15 + 8))(v18, v14);
  v34 = v24;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_22BAC81E8(v22, &qword_27D8DF048, &unk_22BB216E0);
  }

  sub_22BB16F58(v22, v29, _s17AsyncProviderTaskVMa);
  if (qword_27D8DECC8 != -1)
  {
    swift_once();
  }

  v67 = qword_27D8DF668;
  v50 = _s17AsyncProviderTaskVMa;
  v36 = v51;
  sub_22BB16EF0(v29, v51, _s17AsyncProviderTaskVMa);
  v37 = v55;
  v38 = v52;
  v39 = v57;
  (*(v55 + 16))(v52, v59, v57);
  v40 = v58;
  sub_22BB16EF0(v60, v58, type metadata accessor for Snapshotter);
  v41 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v42 = (v25 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v43 = *(v54 + 80);
  v60 = v29;
  v44 = (v53 + v43 + v42) & ~v43;
  v45 = swift_allocObject();
  sub_22BB16F58(v36, v45 + v41, v50);
  (*(v37 + 32))(v45 + v42, v38, v39);
  sub_22BB16F58(v40, v45 + v44, type metadata accessor for Snapshotter);
  v73 = sub_22BB16FC0;
  v74 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_22BAC37D4;
  v72 = &block_descriptor_6;
  v46 = _Block_copy(&aBlock);
  v47 = v61;
  sub_22BB1F54C();
  v68 = MEMORY[0x277D84F90];
  sub_22BAC378C(&qword_281424180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  v48 = v63;
  v49 = v66;
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v47, v48, v46);
  _Block_release(v46);
  (*(v65 + 8))(v48, v49);
  (*(v62 + 8))(v47, v64);
  sub_22BAC9F20(v60);
}

uint64_t sub_22BB14A2C()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAD7598();
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAC378C(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_27D8DF668 = result;
  return result;
}

void sub_22BB14C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v286 = a3;
  v5 = sub_22BB1EB2C();
  v270 = *(v5 - 8);
  v271 = v5;
  v6 = *(v270 + 64);
  MEMORY[0x28223BE20](v5);
  v269 = v253 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1E68C();
  v257 = *(v8 - 8);
  v9 = *(v257 + 64);
  MEMORY[0x28223BE20](v8);
  v279 = v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1E60C();
  v267 = *(v11 - 8);
  v268 = v11;
  v12 = *(v267 + 64);
  MEMORY[0x28223BE20](v11);
  v266 = v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1EB3C();
  v264 = *(v14 - 8);
  v265 = v14;
  v15 = *(v264 + 64);
  MEMORY[0x28223BE20](v14);
  v263 = v253 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BB1EB9C();
  v261 = *(v17 - 8);
  v18 = *(v261 + 64);
  MEMORY[0x28223BE20](v17);
  v277 = v253 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_22BB1F1DC();
  v296 = *(v300 - 1);
  v20 = *(v296 + 64);
  MEMORY[0x28223BE20](v300);
  v299 = v253 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22BB1F17C();
  v274 = *(v22 - 8);
  v275 = v22;
  v23 = *(v274 + 64);
  MEMORY[0x28223BE20](v22);
  v273 = v253 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BB1F45C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v259 = v253 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v295 = v253 - v30;
  MEMORY[0x28223BE20](v31);
  v262 = v253 - v32;
  MEMORY[0x28223BE20](v33);
  v258 = v253 - v34;
  MEMORY[0x28223BE20](v35);
  v272 = (v253 - v36);
  v287 = sub_22BB1F1AC();
  v276 = *(v287 - 1);
  v37 = *(v276 + 64);
  MEMORY[0x28223BE20](v287);
  v288 = v253 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_22BB1F1FC();
  v297 = *(v291 - 8);
  v39 = *(v297 + 64);
  MEMORY[0x28223BE20](v291);
  v298 = v253 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22BB1F21C();
  v289 = *(v41 - 8);
  v290 = v41;
  v42 = *(v289 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = v253 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22BB1F24C();
  if (v46)
  {
    v47 = v46;
    v278 = v45;
  }

  else
  {
    v278 = sub_22BB1EBAC();
    v47 = v48;
  }

  v256 = type metadata accessor for Snapshotter();
  v280 = *(v256 + 20);
  v49 = 1.0;
  if ((sub_22BB1EFEC() & 1) == 0)
  {
    sub_22BB1F27C();
    v49 = v50;
  }

  sub_22BB1F26C();
  v51 = v49 * CGRectGetWidth(v307);
  if (COERCE__INT64(fabs(v51)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_22BB1F26C();
  v52 = v49 * CGRectGetHeight(v308);
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v52 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v255 = v8;
  v284 = v47;
  if ((v51 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v285 = a2;
  v260 = v17;
  v282 = v25;
  v53 = v52;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v55 = AlignedBytesPerRow * v53;
  if ((AlignedBytesPerRow * v53) >> 64 == (AlignedBytesPerRow * v53) >> 63)
  {
    v56 = AlignedBytesPerRow;
    v281 = v26;
    v283 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF670, &unk_22BB22D70);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22BB22D00;
    v58 = *MEMORY[0x277CD2B88];
    *(v57 + 32) = *MEMORY[0x277CD2B88];
    v59 = MEMORY[0x277D83B88];
    *(v57 + 40) = v51;
    v60 = *MEMORY[0x277CD2A28];
    *(v57 + 64) = v59;
    *(v57 + 72) = v60;
    *(v57 + 80) = v53;
    v61 = *MEMORY[0x277CD2A70];
    *(v57 + 104) = v59;
    *(v57 + 112) = v61;
    v62 = MEMORY[0x277D84CC0];
    *(v57 + 120) = 1111970369;
    v63 = *MEMORY[0x277CD2960];
    *(v57 + 160) = 4;
    v64 = MEMORY[0x277CD2968];
    *(v57 + 144) = v62;
    *(v57 + 152) = v63;
    v65 = *v64;
    *(v57 + 200) = v56;
    v66 = MEMORY[0x277CD2948];
    *(v57 + 184) = v59;
    *(v57 + 192) = v65;
    v67 = *v66;
    *(v57 + 224) = v59;
    *(v57 + 232) = v67;
    *(v57 + 264) = v59;
    *(v57 + 240) = v55;
    v68 = v58;
    v69 = v60;
    v70 = v61;
    v71 = v63;
    v72 = v65;
    v73 = v67;
    sub_22BAF7D0C(v57);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF318, &unk_22BB21FF0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for CFString(0);
    sub_22BAC378C(&qword_27D8DEDA8, type metadata accessor for CFString);
    v74 = sub_22BB1F5EC();

    v75 = IOSurfaceCreate(v74);

    if (!v75)
    {
      v141 = v295;
      sub_22BB1F40C();
      v142 = v284;

      v143 = sub_22BB1F44C();
      v144 = sub_22BB1F8BC();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&a.m11 = v146;
        *v145 = 136446210;
        v147 = sub_22BABDC4C(v278, v142, &a);

        *(v145 + 4) = v147;
        _os_log_impl(&dword_22BABB000, v143, v144, "Failed to create IOSurfaceRef for snapshot: %{public}s", v145, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x23189DF20](v146, -1, -1);
        MEMORY[0x23189DF20](v145, -1, -1);
      }

      else
      {
      }

      v207 = (*(v281 + 8))(v141, v282);
      if (qword_281424D70 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_71;
    }

    v76 = v75;
    v77 = sub_22BB1F66C();
    v78 = sub_22BB1E56C();
    IOSurfaceSetValue(v76, v77, v78);

    v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF678, &unk_22BB22D80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_22BB22D10;
    v80 = *MEMORY[0x277CDA888];
    *(v79 + 32) = sub_22BB1F68C();
    *(v79 + 40) = v81;
    v82 = sub_22BB1F22C();
    *(v79 + 72) = MEMORY[0x277D837D0];
    *(v79 + 48) = v82;
    *(v79 + 56) = v83;
    v84 = *MEMORY[0x277CDA870];
    *(v79 + 80) = sub_22BB1F68C();
    *(v79 + 88) = v85;
    type metadata accessor for IOSurfaceRef(0);
    *(v79 + 120) = v86;
    *(v79 + 96) = v76;
    v294 = *MEMORY[0x277CDA900];
    *(v79 + 128) = sub_22BB1F68C();
    *(v79 + 136) = v87;
    v88 = v76;
    sub_22BB1F29C();
    CATransform3DMakeScale(&v304, v49, v49, 1.0);
    a = *&v303[17];
    *v303 = v304;
    CATransform3DConcat(&v305, &a, v303);
    type metadata accessor for CATransform3D(0);
    v293 = v89;
    *(v79 + 168) = v89;
    v90 = swift_allocObject();
    *(v79 + 144) = v90;
    v91 = *&v305.m33;
    v90[5] = *&v305.m31;
    v90[6] = v91;
    v92 = *&v305.m43;
    v90[7] = *&v305.m41;
    v90[8] = v92;
    v93 = *&v305.m13;
    v90[1] = *&v305.m11;
    v90[2] = v93;
    v94 = *&v305.m23;
    v90[3] = *&v305.m21;
    v90[4] = v94;
    v95 = *MEMORY[0x277CDA8B8];
    *(v79 + 176) = sub_22BB1F68C();
    *(v79 + 184) = v96;
    v97 = MEMORY[0x277D839B0];
    *(v79 + 216) = MEMORY[0x277D839B0];
    *(v79 + 192) = 1;
    v98 = *MEMORY[0x277CDA8B0];
    *(v79 + 224) = sub_22BB1F68C();
    *(v79 + 232) = v99;
    *(v79 + 264) = v97;
    *(v79 + 240) = 1;
    v100 = *MEMORY[0x277CDA8A0];
    *(v79 + 272) = sub_22BB1F68C();
    *(v79 + 280) = v101;
    v102 = v286;
    v103 = sub_22BB1F02C();
    *(v79 + 312) = v97;
    *(v79 + 288) = v103 & 1;
    v104 = *MEMORY[0x277CDA8A8];
    *(v79 + 320) = sub_22BB1F68C();
    *(v79 + 328) = v105;
    v106 = sub_22BB1F08C();
    *(v79 + 360) = v97;
    *(v79 + 336) = v106 & 1;
    v107 = sub_22BAF7E34(v79);
    swift_setDeallocating();
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF320, &qword_22BB22000);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22BB1F28C();
    v108 = v298;
    sub_22BB1F20C();
    (*(v289 + 8))(v44, v290);
    v109 = v297;
    v110 = v291;
    v111 = (*(v297 + 88))(v108, v291);
    if (v111 == *MEMORY[0x277D74918])
    {
      (*(v109 + 96))(v108, v110);
      v112 = v276;
      v114 = v287;
      v113 = v288;
      (*(v276 + 32))(v288, v108, v287);
      v115 = sub_22BB1F19C();
      v116 = v279;
      if (!v115 || !sub_22BB1F18C())
      {

        v197 = v272;
        sub_22BB1F40C();
        v198 = v284;

        v199 = sub_22BB1F44C();
        v200 = sub_22BB1F8BC();

        if (os_log_type_enabled(v199, v200))
        {
          v201 = v88;
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          *&a.m11 = v203;
          *v202 = 136446210;
          v204 = v112;
          v205 = sub_22BABDC4C(v278, v198, &a);

          *(v202 + 4) = v205;
          _os_log_impl(&dword_22BABB000, v199, v200, "Ignoring snapshot request for %{public}s due to contextID or layerID being 0", v202, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v203);
          MEMORY[0x23189DF20](v203, -1, -1);
          MEMORY[0x23189DF20](v202, -1, -1);

          (*(v281 + 8))(v272, v282);
          v206 = (*(v204 + 8))(v288, v114);
        }

        else
        {

          (*(v281 + 8))(v197, v282);
          v206 = (*(v112 + 8))(v288, v114);
        }

        if (qword_281424D70 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_72;
      }

      v272 = v88;
      v117 = *MEMORY[0x277CDA8C8];
      v118 = sub_22BB1F68C();
      v120 = v119;
      v121 = *MEMORY[0x277CDA8E0];
      v122 = sub_22BB1F68C();
      *&a.m14 = MEMORY[0x277D837D0];
      *&a.m11 = v122;
      a.m12 = v123;
      sub_22BAEEDE4(&a, v303);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v302[0] = v107;
      sub_22BB0F0A0(v303, v118, v120, isUniquelyReferenced_nonNull_native);

      v125 = *&v302[0];
      v126 = *MEMORY[0x277CDA860];
      v127 = sub_22BB1F68C();
      v129 = v128;
      v130 = sub_22BB1F19C();
      *&a.m14 = MEMORY[0x277D84CC0];
      LODWORD(a.m11) = v130;
      sub_22BAEEDE4(&a, v303);
      v131 = swift_isUniquelyReferenced_nonNull_native();
      *&v302[0] = v125;
      sub_22BB0F0A0(v303, v127, v129, v131);

      v132 = *&v302[0];
      v133 = *MEMORY[0x277CDA8C0];
      v134 = sub_22BB1F68C();
      v136 = v135;
      v137 = sub_22BB1F18C();
      *&a.m14 = MEMORY[0x277D84D38];
      *&a.m11 = v137;
      sub_22BAEEDE4(&a, v303);
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *&v302[0] = v132;
      sub_22BB0F0A0(v303, v134, v136, v138);

      (*(v112 + 8))(v113, v114);
      v139 = *&v302[0];
      v140 = v284;
      goto LABEL_46;
    }

    v116 = v279;
    if (v111 == *MEMORY[0x277D74910])
    {
      v272 = v88;
      (*(v109 + 96))(v108, v110);
      (*(v274 + 32))(v273, v108, v275);
      v148 = *MEMORY[0x277CDA8C8];
      v149 = sub_22BB1F68C();
      v151 = v150;
      v152 = *MEMORY[0x277CDA8E8];
      v153 = sub_22BB1F68C();
      *&a.m14 = MEMORY[0x277D837D0];
      *&a.m11 = v153;
      a.m12 = v154;
      sub_22BAEEDE4(&a, v303);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      *&v302[0] = v107;
      sub_22BB0F0A0(v303, v149, v151, v155);

      v156 = *&v302[0];
      v157 = *MEMORY[0x277CDA868];
      v158 = sub_22BB1F68C();
      v160 = v159;
      v161 = sub_22BB1F16C();
      v162 = *(v161 + 16);
      if (v162)
      {
        v254 = v156;
        v258 = v158;
        v276 = v160;
        *&v302[0] = MEMORY[0x277D84F90];
        sub_22BB03470(0, v162, 0);
        v298 = *&v302[0];
        v291 = *MEMORY[0x277CDA860];
        v163 = v296;
        v164 = (*(v296 + 80) + 32) & ~*(v296 + 80);
        v253[1] = v161;
        v165 = v161 + v164;
        v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
        v167 = *(v163 + 16);
        v163 += 16;
        v289 = v167;
        v290 = v166;
        v168 = *(v163 + 56);
        v296 = v163;
        v287 = (v163 - 8);
        v288 = v168;
        while (1)
        {
          v297 = v162;
          (v289)(v299, v165, v300);
          v169 = swift_allocObject();
          *(v169 + 32) = sub_22BB1F68C();
          *(v169 + 40) = v170;
          v171 = sub_22BB1F1BC();
          *(v169 + 72) = MEMORY[0x277D84CC0];
          *(v169 + 48) = v171;
          *(v169 + 80) = sub_22BB1F68C();
          *(v169 + 88) = v172;
          sub_22BB1F1CC();
          *(v169 + 120) = v293;
          v173 = swift_allocObject();
          *(v169 + 96) = v173;
          v174 = *&a.m33;
          v173[5] = *&a.m31;
          v173[6] = v174;
          v175 = *&a.m43;
          v173[7] = *&a.m41;
          v173[8] = v175;
          v176 = *&a.m13;
          v173[1] = *&a.m11;
          v173[2] = v176;
          v177 = *&a.m23;
          v173[3] = *&a.m21;
          v173[4] = v177;
          v178 = sub_22BB1FC2C();

          sub_22BB17104(v169 + 32, v303);
          v180 = v303[0];
          v179 = v303[1];
          v181 = sub_22BAD6B9C(v303[0], v303[1]);
          if (v182)
          {
            break;
          }

          *(v178 + ((v181 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v181;
          v183 = (v178[6] + 16 * v181);
          *v183 = v180;
          v183[1] = v179;
          sub_22BAEEDE4(&v303[2], (v178[7] + 32 * v181));
          v184 = v178[2];
          v185 = __OFADD__(v184, 1);
          v186 = v184 + 1;
          if (v185)
          {
            goto LABEL_62;
          }

          v178[2] = v186;
          sub_22BB17104(v169 + 80, v303);
          v187 = v303[0];
          v188 = v303[1];
          v189 = sub_22BAD6B9C(v303[0], v303[1]);
          if (v190)
          {
            break;
          }

          *(v178 + ((v189 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v189;
          v191 = (v178[6] + 16 * v189);
          *v191 = v187;
          v191[1] = v188;
          sub_22BAEEDE4(&v303[2], (v178[7] + 32 * v189));
          v192 = v178[2];
          v185 = __OFADD__(v192, 1);
          v193 = v192 + 1;
          if (v185)
          {
            goto LABEL_62;
          }

          v178[2] = v193;

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*v287)(v299, v300);
          v194 = v298;
          *&v302[0] = v298;
          v196 = *(v298 + 2);
          v195 = *(v298 + 3);
          if (v196 >= v195 >> 1)
          {
            sub_22BB03470((v195 > 1), v196 + 1, 1);
            v194 = *&v302[0];
          }

          *(v194 + 2) = v196 + 1;
          v298 = v194;
          *&v194[8 * v196 + 32] = v178;
          v165 += v288;
          v162 = v297 - 1;
          if (v297 == 1)
          {

            v140 = v284;
            v102 = v286;
            v116 = v279;
            v160 = v276;
            v158 = v258;
            v156 = v254;
            v218 = v298;
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v218 = MEMORY[0x277D84F90];
      v140 = v284;
LABEL_45:
      v303[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF680, &qword_22BB22D90);
      v303[0] = v218;
      sub_22BAEEDE4(v303, v302);
      v226 = swift_isUniquelyReferenced_nonNull_native();
      v301 = v156;
      sub_22BB0F0A0(v302, v158, v160, v226);

      (*(v274 + 8))(v273, v275);
      v139 = v301;
    }

    else
    {
      v209 = v284;
      if (v111 != *MEMORY[0x277D74920])
      {

        v219 = v258;
        sub_22BB1F40C();

        v220 = sub_22BB1F44C();
        v221 = sub_22BB1F8BC();

        if (os_log_type_enabled(v220, v221))
        {
          v222 = v88;
          v223 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          *&a.m11 = v224;
          *v223 = 136446210;
          v225 = sub_22BABDC4C(v278, v209, &a);

          *(v223 + 4) = v225;
          v109 = v297;
          _os_log_impl(&dword_22BABB000, v220, v221, "Snapshot %{public}s provided a SnapshotTarget that Snapshotter does not know about", v223, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v224);
          MEMORY[0x23189DF20](v224, -1, -1);
          MEMORY[0x23189DF20](v223, -1, -1);
        }

        else
        {
        }

        (*(v281 + 8))(v219, v282);
        v206 = (*(v109 + 8))(v298, v110);
        if (qword_281424D70 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_72;
      }

      v272 = v88;
      v210 = *MEMORY[0x277CDA8C8];
      v211 = sub_22BB1F68C();
      v213 = v212;
      v214 = *MEMORY[0x277CDA8D0];
      v215 = sub_22BB1F68C();
      *&a.m14 = MEMORY[0x277D837D0];
      *&a.m11 = v215;
      a.m12 = v216;
      sub_22BAEEDE4(&a, v303);
      v217 = swift_isUniquelyReferenced_nonNull_native();
      *&v302[0] = v107;
      sub_22BB0F0A0(v303, v211, v213, v217);

      v139 = *&v302[0];
      v140 = v209;
    }

LABEL_46:
    v227 = sub_22BB1F25C();
    if (v228)
    {
      v229 = v227;
      v230 = v228;
      v231 = *MEMORY[0x277CDA890];
      v232 = sub_22BB1F68C();
      v234 = v233;
      v303[3] = MEMORY[0x277D837D0];
      v303[0] = v229;
      v303[1] = v230;
      sub_22BAEEDE4(v303, v302);
      v235 = swift_isUniquelyReferenced_nonNull_native();
      v301 = v139;
      sub_22BB0F0A0(v302, v232, v234, v235);

      v139 = v301;
    }

    v236 = v277;
    sub_22BB0BDCC(v139);
    v237 = sub_22BB1F5EC();

    v238 = CARenderServerSnapshot();

    if (v238)
    {
      sub_22BB1EB8C();
      sub_22BB1EF5C();
      sub_22BB1EB6C();
      (*(v264 + 104))(v263, *MEMORY[0x277D74770], v265);
      v239 = sub_22BB1EB7C();
      sub_22BB1EB4C();
      v239(v303, 0);
      (*(v267 + 104))(v266, *MEMORY[0x277D74490], v268);
      v240 = sub_22BB1EB7C();
      sub_22BB1EB5C();
      v240(v303, 0);
      v241 = v269;
      v242 = v102;
      v243 = v272;
      sub_22BB1EB1C();
      sub_22BB1EB0C();

      v251 = (*(v270 + 8))(v241, v271);
      v300 = v253;
      v252 = *(v242 + *(v256 + 24));
      MEMORY[0x28223BE20](v251);
      v253[-2] = v285;
      v253[-1] = v116;
      os_unfair_lock_lock(v252 + 6);
      sub_22BB170E8(&v252[4]);
      os_unfair_lock_unlock(v252 + 6);

      (*(v261 + 8))(v236, v260);

      v206 = (*(v257 + 8))(v116, v255);
      if (qword_281424D70 == -1)
      {
        goto LABEL_59;
      }
    }

    else
    {

      v244 = v262;
      sub_22BB1F40C();

      v245 = sub_22BB1F44C();
      v246 = sub_22BB1F8BC();

      if (os_log_type_enabled(v245, v246))
      {
        v247 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v303[0] = v248;
        *v247 = 136446210;
        v249 = sub_22BABDC4C(v278, v140, v303);

        *(v247 + 4) = v249;
        _os_log_impl(&dword_22BABB000, v245, v246, "CARenderServer failed to render snapshot for %{public}s", v247, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v248);
        MEMORY[0x23189DF20](v248, -1, -1);
        MEMORY[0x23189DF20](v247, -1, -1);
        v250 = v272;
      }

      else
      {

        v245 = v272;
      }

      v206 = (*(v281 + 8))(v244, v282);
      if (qword_281424D70 == -1)
      {
        goto LABEL_59;
      }
    }

LABEL_72:
    v206 = swift_once();
LABEL_59:
    v208 = *(qword_281425148 + 24);
    MEMORY[0x28223BE20](v206);
    v253[-2] = v283;
    LOBYTE(v253[-1]) = 0;
    os_unfair_lock_lock((v208 + 40));
    sub_22BB17174((v208 + 16));
    goto LABEL_60;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v207 = swift_once();
LABEL_36:
  v208 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](v207);
  v253[-2] = v283;
  LOBYTE(v253[-1]) = 0;
  os_unfair_lock_lock((v208 + 40));
  sub_22BACB55C((v208 + 16));
LABEL_60:
  os_unfair_lock_unlock((v208 + 40));
}

uint64_t sub_22BB16C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5F0, &qword_22BB22BD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = sub_22BB1F2AC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2, v11);
  v15 = sub_22BB1E68C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v8, a3, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  return sub_22BB09DD4(v8, v13);
}

uint64_t sub_22BB16DB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_22BB19350(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_22BB1E68C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a3, v8 + *(v10 + 72) * v7, v9);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = sub_22BB1E68C();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_22BB16EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BB16F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22BB16FC0()
{
  v1 = *(_s17AsyncProviderTaskVMa() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22BB1F2AC() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Snapshotter() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  sub_22BB14C7C(v0 + v2, v0 + v5, v8);
}

uint64_t sub_22BB17104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF320, &qword_22BB22000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB1718C(uint64_t a1)
{
  v2 = sub_22BB1EADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  result = MEMORY[0x23189D290](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_22BB197C4(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22BB173EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E69C();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v83 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v78 = sub_22BB1EADC();
  v10 = *(v78 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF718, &qword_22BB22FC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v71 = v18;
    v22 = 0;
    v23 = *(a1 + 64);
    v65 = a1 + 64;
    v24 = 1 << *(a1 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v64 = (v24 + 63) >> 6;
    v77 = (v10 + 32);
    v67 = v10 + 16;
    v68 = (v10 + 8);
    v79 = (v84 + 8);
    v80 = v84 + 16;
    v69 = a2;
    v70 = v21;
    v72 = a1;
    v66 = v10;
    while (v26)
    {
      v74 = v22;
      v75 = (v26 - 1) & v26;
      v27 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_17:
      v32 = v73;
      v33 = v78;
      (*(v10 + 16))(v73, *(a1 + 48) + *(v10 + 72) * v27, v78, v19);
      v34 = *(a1 + 56);
      v35 = v10;
      v36 = *(v34 + 8 * v27);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
      v38 = *(v37 + 48);
      v39 = *(v35 + 32);
      v40 = v71;
      v39(v71, v32, v33);
      *(v40 + v38) = v36;
      (*(*(v37 - 8) + 56))(v40, 0, 1, v37);

LABEL_18:
      v41 = v70;
      sub_22BAD7044(v40, v70, &qword_27D8DF718, &qword_22BB22FC0);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
      if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
      {
        return;
      }

      v43 = *(v42 + 48);
      v44 = v76;
      v45 = v78;
      (*v77)(v76, v41, v78);
      v46 = *(v41 + v43);
      v47 = v69;
      v48 = sub_22BB1927C(v44);
      v50 = v49;
      (*v68)(v44, v45);
      if ((v50 & 1) == 0 || (v85 = *(*(v47 + 56) + 8 * v48), v51 = *(v85 + 16), v51 != *(v46 + 16)))
      {
LABEL_32:

        return;
      }

      a1 = v72;
      if (v51 && v85 != v46)
      {
        v52 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v81 = v46 + v52;
        v82 = v85 + v52;

        v53 = 0;
        while (v53 < *(v85 + 16))
        {
          v54 = *(v84 + 72) * v53;
          v55 = *(v84 + 16);
          v55(v9, v82 + v54, v4);
          if (v53 >= *(v46 + 16))
          {
            goto LABEL_36;
          }

          v56 = v46;
          v57 = v9;
          v58 = v83;
          v55(v83, v81 + v54, v4);
          sub_22BABE0B4(&qword_27D8DF720, MEMORY[0x277D74590]);
          v59 = sub_22BB1F65C();
          v60 = *v79;
          v61 = v58;
          v9 = v57;
          (*v79)(v61, v4);
          v60(v57, v4);
          if ((v59 & 1) == 0)
          {

            goto LABEL_32;
          }

          ++v53;
          v46 = v56;
          if (v51 == v53)
          {

            a1 = v72;
            goto LABEL_6;
          }
        }

        goto LABEL_35;
      }

LABEL_6:

      v10 = v66;
      v22 = v74;
      v26 = v75;
    }

    if (v64 <= v22 + 1)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = v64;
    }

    v29 = v28 - 1;
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v64)
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
        v40 = v71;
        (*(*(v62 - 8) + 56))(v71, 1, 1, v62);
        v74 = v29;
        v75 = 0;
        goto LABEL_18;
      }

      v31 = *(v65 + 8 * v30);
      ++v22;
      if (v31)
      {
        v74 = v30;
        v75 = (v31 - 1) & v31;
        v27 = __clz(__rbit64(v31)) | (v30 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

void sub_22BB17A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF728, &qword_22BB22FC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = v51 - v13;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v56 = v14;
    v17 = 0;
    v18 = a1 + 64;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(a1 + 64);
    v22 = (v19 + 63) >> 6;
    v51[1] = v5 + 16;
    v52 = v5;
    v60 = v51 - v13;
    v61 = (v5 + 32);
    v54 = (v5 + 8);
    v55 = a2;
    v53 = a1;
    while (v21)
    {
      v59 = (v21 - 1) & v21;
      v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_17:
      v28 = v57;
      (*(v5 + 16))(v57, *(a1 + 48) + *(v5 + 72) * v23, v4, v15);
      v29 = *(*(a1 + 56) + 8 * v23);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF730, &unk_22BB22FD0);
      v31 = *(v30 + 48);
      v32 = v56;
      (*(v5 + 32))(v56, v28, v4);
      *(v32 + v31) = v29;
      (*(*(v30 - 8) + 56))(v32, 0, 1, v30);

      v16 = v60;
LABEL_18:
      sub_22BAD7044(v32, v16, &qword_27D8DF728, &qword_22BB22FC8);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF730, &unk_22BB22FD0);
      if ((*(*(v33 - 8) + 48))(v16, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v58;
      (*v61)(v58, v16, v4);
      v36 = *&v16[v34];
      v37 = v55;
      v38 = sub_22BB1927C(v35);
      LOBYTE(v34) = v39;
      (*v54)(v35, v4);
      if ((v34 & 1) == 0 || (v40 = *(*(v37 + 56) + 8 * v38), v41 = *(v40 + 16), v41 != *(v36 + 16)))
      {
LABEL_36:

        return;
      }

      v42 = v4;
      v43 = v52;
      v44 = v53;
      if (v41)
      {
        v45 = v40 == v36;
      }

      else
      {
        v45 = 1;
      }

      if (!v45)
      {
        v46 = (v40 + 40);
        v47 = (v36 + 40);
        while (v41)
        {
          v48 = *(v46 - 1) == *(v47 - 1) && *v46 == *v47;
          if (!v48 && (sub_22BB1FD9C() & 1) == 0)
          {
            goto LABEL_36;
          }

          v46 += 2;
          v47 += 2;
          if (!--v41)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_6:

      a1 = v44;
      v4 = v42;
      v5 = v43;
      v21 = v59;
      v16 = v60;
    }

    if (v22 <= v17 + 1)
    {
      v24 = v17 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    while (1)
    {
      v26 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF730, &unk_22BB22FD0);
        v50 = v56;
        (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
        v59 = 0;
        v17 = v25;
        v32 = v50;
        goto LABEL_18;
      }

      v27 = *(v18 + 8 * v26);
      ++v17;
      if (v27)
      {
        v59 = (v27 - 1) & v27;
        v23 = __clz(__rbit64(v27)) | (v26 << 6);
        v17 = v26;
        goto LABEL_17;
      }
    }

LABEL_39:
    __break(1u);
  }
}

uint64_t sub_22BB17F84()
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
  v1 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = *v0;
  v7 = (*v0 + 64);
  v8 = *(*v0 + 32);
  v9 = 1;
  v10 = 1 << v8;
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *v7;
  v13 = (v10 + 63) >> 6;
  v32 = v6;

  v15 = 0;
  v29 = v5;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v9;
    }

    v12 = v7[v16];
    ++v15;
    if (v12)
    {
      v33 = v9;
      while (1)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v16 << 6);
        v19 = v32;
        v20 = *(v32 + 48);
        v21 = sub_22BB1EADC();
        v22 = *(v21 - 8);
        (*(v22 + 16))(v5, v20 + *(v22 + 72) * v18, v21);
        v23 = v31;
        *&v5[*(v31 + 48)] = *(*(v19 + 56) + 8 * v18);
        if (v33)
        {
          v24 = v5;
          v25 = v30;
          sub_22BAD7044(v24, v30, &qword_27D8DF710, &qword_22BB22FB8);
          v26 = *(*(v25 + *(v23 + 48)) + 16);

          v9 = v26 == 0;
          v27 = v25;
          v5 = v29;
          result = (*(v22 + 8))(v27, v21);
          v15 = v16;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        else
        {

          result = sub_22BAC81E8(v5, &qword_27D8DF710, &qword_22BB22FB8);
          v9 = 0;
          v15 = v16;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v33 = v9;
        v16 = v15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.description.getter()
{
  v35 = sub_22BB1E69C();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v54 = 0xD000000000000013;
  v55 = 0x800000022BB28220;

  result = sub_22BB1718C(v10);
  v12 = 0;
  v13 = result + 56;
  v14 = 1 << *(result + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(result + 56);
  v17 = (v14 + 63) >> 6;
  v45 = result + 56;
  v46 = v5;
  v42 = (v5 + 8);
  v43 = v5 + 16;
  v40 = v4;
  v41 = v1;
  v44 = v17;
  v38 = v9;
  v39 = v8;
  v36 = (v1 + 8);
  v37 = result;
  v50 = v1 + 16;
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      MEMORY[0x23189D130](10506, 0xE200000000000000);
      return v54;
    }

    v16 = *(v13 + 8 * v18);
    ++v12;
    if (v16)
    {
      while (1)
      {
        v49 = v18;
        v19 = result;
        (*(v46 + 16))(v8, *(result + 48) + *(v46 + 72) * (__clz(__rbit64(v16)) | (v18 << 6)), v4);
        v52 = 10;
        v53 = 0xE100000000000000;
        sub_22BABE0B4(&unk_2814250C0, MEMORY[0x277D74708]);
        v20 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v20);

        MEMORY[0x23189D130](v52, v53);

        if (*(v9 + 16) && (v21 = sub_22BB1927C(v8), (v22 & 1) != 0))
        {
          v23 = *(*(v9 + 56) + 8 * v21);
        }

        else
        {
          v23 = MEMORY[0x277D84F90];
        }

        v16 &= v16 - 1;
        (*v42)(v8, v4);
        v24 = *(v23 + 16);
        if (v24)
        {
          v47 = v23;
          v48 = v16;
          v25 = v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
          v51 = *(v41 + 72);
          v26 = *(v41 + 16);
          v28 = v35;
          v27 = v36;
          v29 = v34;
          do
          {
            v26(v29, v25, v28);
            v52 = 545005578;
            v53 = 0xE400000000000000;
            sub_22BABE0B4(&qword_27D8DF688, MEMORY[0x277D74590]);
            v30 = sub_22BB1FD7C();
            v32 = v31;
            (*v27)(v29, v28);
            MEMORY[0x23189D130](v30, v32);

            MEMORY[0x23189D130](v52, v53);

            v25 += v51;
            --v24;
          }

          while (v24);

          v16 = v48;
          v12 = v49;
          v8 = v39;
          v4 = v40;
          result = v37;
          v9 = v38;
          v17 = v44;
          v13 = v45;
          if (!v48)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v12 = v49;
          v17 = v44;
          v13 = v45;
          result = v19;
          if (!v16)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v18 = v12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.availableProcesses.getter()
{
  v1 = *v0;

  return sub_22BB1718C(v2);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.availableBundleIDs.getter()
{
  v31 = sub_22BB1EADC();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;

  v7 = sub_22BB1718C(v6);
  v8 = v7 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  v29 = v1 + 8;
  v30 = v1 + 16;
  v32 = v7;

  v14 = 0;
  v28 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v31;
      (*(v1 + 16))(v4, *(v32 + 48) + *(v1 + 72) * (v15 | (v14 << 6)), v31);
      v17 = sub_22BB1EA9C();
      v19 = v18;
      result = (*(v1 + 8))(v4, v16);
      if (v19)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22BACE678(0, *(v28 + 2) + 1, 1, v28);
      v28 = result;
    }

    v22 = *(v28 + 2);
    v21 = *(v28 + 3);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v27 = v22 + 1;
      result = sub_22BACE678((v21 > 1), v22 + 1, 1, v28);
      v23 = v27;
      v28 = result;
    }

    v24 = v28;
    *(v28 + 2) = v23;
    v25 = &v24[16 * v22];
    *(v25 + 4) = v17;
    *(v25 + 5) = v19;
  }

  while (v11);
LABEL_6:
  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v12)
    {

      v26 = sub_22BB1DCC8(v28);

      return v26;
    }

    v11 = *(v8 + 8 * v20);
    ++v14;
    if (v11)
    {
      v14 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.commands(for:)(uint64_t a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22BB1927C(a1);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(*(v2 + 56) + 8 * v3);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.commands(for:)(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v40 - v5;
  v6 = sub_22BB1EADC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v40 - v11;
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - v13;
  v14 = *v2;

  v15 = sub_22BB1718C(v40);
  v16 = v15;
  v17 = v15 + 56;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v7 + 16;
  v46 = (v7 + 8);
  v47 = (v7 + 32);

  v23 = 0;
  while (v20)
  {
LABEL_11:
    v26 = v16;
    v27 = v45;
    (*(v7 + 16))(v45, *(v16 + 48) + *(v7 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v6);
    v28 = *(v7 + 32);
    v29 = v27;
    v30 = v6;
    v28(v49, v29, v6);
    v31 = sub_22BB1EA9C();
    if (v32)
    {
      if (v31 == v48 && v32 == v43)
      {

        goto LABEL_25;
      }

      v24 = sub_22BB1FD9C();

      if (v24)
      {

LABEL_25:
        v34 = v42;
        v6 = v30;
        v28(v42, v49, v30);
        v33 = 0;
LABEL_16:
        (*(v7 + 56))(v34, v33, 1, v6);

        if ((*(v7 + 48))(v34, 1, v6) == 1)
        {
          sub_22BAC81E8(v34, &qword_27D8DEEA0, &qword_22BB20A30);
          return MEMORY[0x277D84F90];
        }

        else
        {
          v36 = v41;
          (*v47)(v41, v34, v6);
          v37 = v40;
          if (*(v40 + 16) && (v38 = sub_22BB1927C(v36), (v39 & 1) != 0))
          {
            v35 = *(*(v37 + 56) + 8 * v38);
          }

          else
          {
            v35 = MEMORY[0x277D84F90];
          }

          (*v46)(v36, v6);
        }

        return v35;
      }
    }

    v20 &= v20 - 1;
    v6 = v30;
    result = (*v46)(v49, v30);
    v16 = v26;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      v33 = 1;
      v34 = v42;
      goto LABEL_16;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB18D74()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BB18DE0()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BB18E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000022BB28240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22BB1FD9C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22BB18ED0(uint64_t a1)
{
  v2 = sub_22BB1DD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BB18F0C(uint64_t a1)
{
  v2 = sub_22BB1DD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF690, &qword_22BB22D98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB1DD60();

  sub_22BB1FE2C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF6A0, &qword_22BB22DA0);
  sub_22BB1DDB4();
  sub_22BB1FD4C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF6C8, &qword_22BB22DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB1DD60();
  sub_22BB1FE1C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF6A0, &qword_22BB22DA0);
    sub_22BB1DEA8();
    sub_22BB1FCBC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22BB1927C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22BB1EADC();
  v5 = MEMORY[0x277D74708];
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  v6 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v6, MEMORY[0x277D74708], &unk_2814250D0, v5, MEMORY[0x277D74728]);
}

unint64_t sub_22BB19350(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22BB1F2AC();
  v5 = MEMORY[0x277D74928];
  sub_22BABE0B4(&qword_27D8DF0B0, MEMORY[0x277D74928]);
  v6 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v6, MEMORY[0x277D74928], &qword_27D8DF738, v5, MEMORY[0x277D74938]);
}

unint64_t sub_22BB19424(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22BB1E9DC();
  v5 = MEMORY[0x277D746D8];
  sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8]);
  v6 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v6, MEMORY[0x277D746D8], &unk_2814250F0, v5, MEMORY[0x277D746E8]);
}

unint64_t sub_22BB194F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22BB1FB0C();

  return sub_22BB195F0(a1, v5);
}

unint64_t sub_22BB1953C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22BB1FDDC();
  type metadata accessor for CFString(0);
  sub_22BABE0B4(&qword_27D8DF750, type metadata accessor for CFString);
  sub_22BB1E59C();
  v4 = sub_22BB1FE0C();

  return sub_22BB196B8(a1, v4);
}

unint64_t sub_22BB195F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22BB1E308(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23189D540](v9, a1);
      sub_22BB1E364(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22BB196B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_22BABE0B4(&qword_27D8DF750, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22BB1E58C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22BB197C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22BB1EADC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  v36 = a2;
  v13 = sub_22BB1F61C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22BABE0B4(&unk_2814250D0, MEMORY[0x277D74708]);
      v23 = sub_22BB1F65C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22BB1B834(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22BB19AA4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940]);
  v36 = a2;
  v13 = sub_22BB1F61C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22BABE0B4(&qword_281425068, MEMORY[0x277D74940]);
      v23 = sub_22BB1F65C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22BB1BAFC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22BB19D84(uint64_t a1, void *a2)
{
  v30 = a1;
  v4 = type metadata accessor for ConnectionID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v28 = (&v28 - v10);
  v29 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22BB1FDDC();
  v13 = *a2;
  MEMORY[0x23189D810](*a2);
  v31 = v4;
  v14 = *(v4 + 20);
  sub_22BB1EADC();
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  v32 = a2;
  sub_22BB1F62C();
  v15 = sub_22BB1FE0C();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    do
    {
      sub_22BABED78(*(v11 + 48) + v19 * v17, v8, type metadata accessor for ConnectionID);
      if (*v8 == v13)
      {
        v20 = v8 + *(v31 + 20);
        v21 = sub_22BB1EAAC();
        sub_22BABEDE0(v8, type metadata accessor for ConnectionID);
        if (v21)
        {
          sub_22BABEDE0(v32, type metadata accessor for ConnectionID);
          sub_22BABED78(*(v11 + 48) + v19 * v17, v30, type metadata accessor for ConnectionID);
          return 0;
        }
      }

      else
      {
        sub_22BABEDE0(v8, type metadata accessor for ConnectionID);
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v23 = v29;
  v24 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v32;
  v27 = v28;
  sub_22BABED78(v32, v28, type metadata accessor for ConnectionID);
  v33 = *v23;
  sub_22BB1BDC4(v27, v17, isUniquelyReferenced_nonNull_native);
  *v23 = v33;
  sub_22BAEF968(v26, v30);
  return 1;
}

uint64_t sub_22BB1A088(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22BB1FAEC();

    if (v9)
    {

      sub_22BB1E2BC();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22BB1FADC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22BB1A3F0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22BB1B328(v22 + 1);
    }

    v20 = v8;
    sub_22BB1B7B0(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_22BB1E2BC();
  v11 = *(v6 + 40);
  v12 = sub_22BB1F9EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22BB1C080(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22BB1F9FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22BB1A2A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  v9 = sub_22BB1FE0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22BB1FD9C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22BB1C1E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22BB1A3F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
    v2 = sub_22BB1FB4C();
    v16 = v2;
    sub_22BB1FACC();
    if (sub_22BB1FAFC())
    {
      sub_22BB1E2BC();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_22BB1B328(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_22BB1F9EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22BB1FAFC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22BB1A5D0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22BB1EADC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF708, &qword_22BB22FB0);
  result = sub_22BB1FB3C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
      result = sub_22BB1F61C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22BB1A92C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22BB1F2EC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF758, &unk_22BB22FF0);
  result = sub_22BB1FB3C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940]);
      result = sub_22BB1F61C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22BB1AC88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionID();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF740, &qword_22BB22FE0);
  result = sub_22BB1FB3C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_22BAEF968(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v7);
      v26 = *(v39 + 20);
      sub_22BB1EADC();
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22BAEF968(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22BB1AFCC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22BB1E9DC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20]();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF638, &qword_22BB22C20);
  result = sub_22BB1FB3C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8]);
      result = sub_22BB1F61C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22BB1B328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
  result = sub_22BB1FB3C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_22BB1F9EC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22BB1B550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF700, &qword_22BB22FA8);
  result = sub_22BB1FB3C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22BB1B7B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22BB1F9EC();
  v5 = -1 << *(a2 + 32);
  result = sub_22BB1FABC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22BB1B834(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22BB1EADC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1A5D0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22BB1C580(MEMORY[0x277D74708], &qword_27D8DF708, &qword_22BB22FB0);
      goto LABEL_12;
    }

    sub_22BB1CA64(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  v16 = sub_22BB1F61C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22BABE0B4(&unk_2814250D0, MEMORY[0x277D74708]);
      v24 = sub_22BB1F65C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

uint64_t sub_22BB1BAFC(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1A92C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22BB1C580(MEMORY[0x277D74940], &qword_27D8DF758, &unk_22BB22FF0);
      goto LABEL_12;
    }

    sub_22BB1CD80(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940]);
  v16 = sub_22BB1F61C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22BABE0B4(&qword_281425068, MEMORY[0x277D74940]);
      v24 = sub_22BB1F65C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

uint64_t sub_22BB1BDC4(void *a1, unint64_t a2, char a3)
{
  v29 = a1;
  v6 = type metadata accessor for ConnectionID();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_22BB1AC88(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22BB1C360();
      goto LABEL_15;
    }

    sub_22BB1D09C(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_22BB1FDDC();
  v14 = *v29;
  MEMORY[0x23189D810](*v29);
  v15 = *(v6 + 20);
  sub_22BB1EADC();
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  sub_22BB1F62C();
  v16 = sub_22BB1FE0C();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v28 + 72);
    do
    {
      sub_22BABED78(*(v12 + 48) + v19 * a2, v9, type metadata accessor for ConnectionID);
      if (*v9 == v14)
      {
        v20 = v9 + *(v6 + 20);
        v21 = sub_22BB1EAAC();
        sub_22BABEDE0(v9, type metadata accessor for ConnectionID);
        if (v21)
        {
          sub_22BB1FDAC();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_22BABEDE0(v9, type metadata accessor for ConnectionID);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22BAEF968(v29, *(v22 + 48) + *(v28 + 72) * a2);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void sub_22BB1C080(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1B328(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22BB1C7B8();
      goto LABEL_12;
    }

    sub_22BB1D6E0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_22BB1F9EC();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_22BB1E2BC();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_22BB1F9FC();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22BB1FDAC();
  __break(1u);
}

uint64_t sub_22BB1C1E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22BB1B550(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22BB1C908();
      goto LABEL_16;
    }

    sub_22BB1D8F4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  result = sub_22BB1FE0C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22BB1FD9C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

void *sub_22BB1C360()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF740, &qword_22BB22FE0);
  v7 = *v0;
  v8 = sub_22BB1FB2C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_22BABED78(*(v7 + 48) + v22, v6, type metadata accessor for ConnectionID);
        result = sub_22BAEF968(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_22BB1C580(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_22BB1FB2C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_22BB1C7B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
  v2 = *v0;
  v3 = sub_22BB1FB2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22BB1C908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF700, &qword_22BB22FA8);
  v2 = *v0;
  v3 = sub_22BB1FB2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22BB1CA64(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22BB1EADC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF708, &qword_22BB22FB0);
  v10 = sub_22BB1FB3C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
      result = sub_22BB1F61C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22BB1CD80(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22BB1F2EC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF758, &unk_22BB22FF0);
  v10 = sub_22BB1FB3C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940]);
      result = sub_22BB1F61C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22BB1D09C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionID();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF740, &qword_22BB22FE0);
  result = sub_22BB1FB3C();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_22BABED78(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for ConnectionID);
      v25 = *(v11 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v7);
      v26 = *(v38 + 20);
      sub_22BB1EADC();
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22BAEF968(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22BB1D3C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22BB1E9DC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF638, &qword_22BB22C20);
  v10 = sub_22BB1FB3C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8]);
      result = sub_22BB1F61C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22BB1D6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
  result = sub_22BB1FB3C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_22BB1F9EC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22BB1D8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF700, &qword_22BB22FA8);
  result = sub_22BB1FB3C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22BB1FDDC();

      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22BB1DB2C(uint64_t a1)
{
  v2 = sub_22BB1F2EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940]);
  result = MEMORY[0x23189D290](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_22BB19AA4(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22BB1DCC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23189D290](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22BB1A2A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_22BB1DD60()
{
  result = qword_27D8DF698;
  if (!qword_27D8DF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF698);
  }

  return result;
}

unint64_t sub_22BB1DDB4()
{
  result = qword_27D8DF6A8;
  if (!qword_27D8DF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF6A0, &qword_22BB22DA0);
    sub_22BABE0B4(&qword_27D8DF158, MEMORY[0x277D74708]);
    sub_22BB1DF9C(&qword_27D8DF6B0, &qword_27D8DF6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6A8);
  }

  return result;
}

unint64_t sub_22BB1DEA8()
{
  result = qword_27D8DF6D0;
  if (!qword_27D8DF6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF6A0, &qword_22BB22DA0);
    sub_22BABE0B4(&qword_27D8DF148, MEMORY[0x277D74708]);
    sub_22BB1DF9C(&qword_27D8DF6D8, &qword_27D8DF6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6D0);
  }

  return result;
}

uint64_t sub_22BB1DF9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF6B8, &qword_22BB22DA8);
    sub_22BABE0B4(a2, MEMORY[0x277D74590]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB1E038(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22BB1E080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr283F6AF29O18ExecutableCommandsV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s14descr283F6AF29O18ExecutableCommandsV10CodingKeysOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22BB1E1B8()
{
  result = qword_27D8DF6E8;
  if (!qword_27D8DF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6E8);
  }

  return result;
}

unint64_t sub_22BB1E210()
{
  result = qword_27D8DF6F0;
  if (!qword_27D8DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6F0);
  }

  return result;
}

unint64_t sub_22BB1E268()
{
  result = qword_27D8DF6F8;
  if (!qword_27D8DF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6F8);
  }

  return result;
}

unint64_t sub_22BB1E2BC()
{
  result = qword_2814240C0;
  if (!qword_2814240C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814240C0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BB1E3CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BB1E3EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_22BB1E434()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_22BB1E440()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}