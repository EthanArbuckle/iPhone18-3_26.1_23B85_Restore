void sub_1D9C39508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

unint64_t faiss::knn_extra_metrics(uint64_t a1, float *a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, void *a7, float a8)
{
  v8 = a5;
  if (a6 <= 3)
  {
    if (a6 != 1)
    {
      if (a6 != 2)
      {
        if (a6 != 3)
        {
          goto LABEL_392;
        }

        v60 = a7[1];
        result = faiss::InterruptCallback::get_period_hint((a5 * a3));
        v376 = result;
        v61 = a4;
        if (!a4)
        {
          return result;
        }

        v62 = 0;
        v63 = 0;
        v64 = 0;
        v362 = 4 * result;
        v369 = 8 * result;
        while (1)
        {
          v383 = v64 + v376;
          if (v64 + v376 < v61)
          {
            v61 = v64 + v376;
          }

          v391 = v63;
          v398 = v62;
          v65 = v62;
          v405 = v61;
LABEL_70:
          if (v64 < v61)
          {
            break;
          }

          result = faiss::InterruptCallback::check(result);
          v63 = v391 + v369;
          v62 = v398 + v362;
          v61 = a4;
          v64 = v383;
          if (v383 >= a4)
          {
            return result;
          }
        }

        v67 = a7[2];
        v66 = a7[3];
        v68 = a7[1];
        if (v60)
        {
          v69 = (v67 + v68 * v63);
          v70 = v60;
          v71 = (v66 + v68 * v65);
          do
          {
            *v71++ = 2139095039;
            *v69++ = -1;
            --v70;
          }

          while (v70);
        }

        v426 = v66;
        v433 = v63;
        v450 = v64;
        v412 = v67;
        v419 = v68;
        v72 = (v66 + 4 * v68 * v64);
        v73 = (v67 + 8 * v68 * v64);
        if (!v8)
        {
          goto LABEL_91;
        }

        v74 = 0;
        v75 = a2;
        v76 = v72 - 1;
        v77 = v73 - 1;
        do
        {
          v78 = faiss::fvec_Linf((a1 + 4 * v450 * a3), v75, a3);
          if (v78 >= *v72)
          {
            goto LABEL_90;
          }

          if (v60 < 2)
          {
            v79 = 1;
            goto LABEL_89;
          }

          v80 = 3;
          v81 = 2;
          v82 = 1;
          while (1)
          {
            if (v81 == v60)
            {
              v83 = v76[v60];
LABEL_83:
              v84 = v83;
              v85 = v73 - 1;
              v80 = v81;
              if (v83 < v78)
              {
                break;
              }

              goto LABEL_86;
            }

            v83 = v76[v81];
            v84 = v72[v81];
            if (v83 > v84)
            {
              goto LABEL_83;
            }

            v85 = v73;
            if (v84 < v78)
            {
              break;
            }

LABEL_86:
            v76[v82] = v84;
            v77[v82] = v85[v81];
            v79 = v80;
            v81 = 2 * v80;
            v80 = (2 * v80) | 1;
            v82 = v79;
            if (v81 > v60)
            {
              goto LABEL_89;
            }
          }

          v79 = v82;
LABEL_89:
          v76[v79] = v78;
          v77[v79] = v74;
LABEL_90:
          v75 += a3;
          ++v74;
        }

        while (v74 != v8);
LABEL_91:
        if (!v60)
        {
          v87 = 0;
          v90 = v450;
          goto LABEL_111;
        }

        v86 = 0;
        v87 = 0;
        v88 = v72 - 1;
        v89 = v73 - 1;
        v90 = v450;
LABEL_93:
        v91 = *v72;
        v92 = *v73;
        v93 = v60 - v86;
        v94 = v88[v60 - v86];
        if (v60 - v86 < 2)
        {
          v95 = 1;
          goto LABEL_106;
        }

        v96 = 3;
        v97 = 2;
        v98 = 1;
        while (v97 != v93)
        {
          v99 = v88[v97];
          v100 = v72[v97];
          if (v99 > v100)
          {
            goto LABEL_99;
          }

          v101 = v73;
          if (v94 > v100)
          {
LABEL_104:
            v95 = v98;
LABEL_105:
            v94 = v88[v93];
LABEL_106:
            v88[v95] = v94;
            v89[v95] = v89[v93];
            v102 = v60 + ~v87;
            v72[v102] = v91;
            v73[v102] = v92;
            if (v92 != -1)
            {
              ++v87;
            }

            if (++v86 == v60)
            {
LABEL_111:
              memmove(v72, &v72[v60 - v87], 4 * v87);
              result = memmove(v73, &v73[v60 - v87], 8 * v87);
              v103 = v60 - v87;
              if (v60 > v87)
              {
                v104 = (v412 + v419 * v433 + 8 * v87);
                v105 = (v426 + v419 * v65 + 4 * v87);
                do
                {
                  *v105++ = 2139095039;
                  *v104++ = -1;
                  --v103;
                }

                while (v103);
              }

              v64 = v90 + 1;
              v63 = v433 + 8;
              v65 += 4;
              v61 = v405;
              goto LABEL_70;
            }

            goto LABEL_93;
          }

LABEL_102:
          v88[v98] = v100;
          v89[v98] = v101[v97];
          v95 = v96;
          v97 = 2 * v96;
          v96 = (2 * v96) | 1;
          v98 = v95;
          if (v97 > v93)
          {
            goto LABEL_105;
          }
        }

        v99 = v88[v93];
LABEL_99:
        v100 = v99;
        v101 = v73 - 1;
        v96 = v97;
        if (v94 > v99)
        {
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      v159 = a7[1];
      result = faiss::InterruptCallback::get_period_hint((a5 * a3));
      v378 = result;
      v160 = a4;
      if (!a4)
      {
        return result;
      }

      v161 = 0;
      v162 = 0;
      v163 = 0;
      v364 = 4 * result;
      v371 = 8 * result;
      while (1)
      {
        v385 = v163 + v378;
        if (v163 + v378 < v160)
        {
          v160 = v163 + v378;
        }

        v393 = v162;
        v400 = v161;
        v164 = v161;
        v407 = v160;
LABEL_181:
        if (v163 < v160)
        {
          break;
        }

        result = faiss::InterruptCallback::check(result);
        v162 = v393 + v371;
        v161 = v400 + v364;
        v160 = a4;
        v163 = v385;
        if (v385 >= a4)
        {
          return result;
        }
      }

      v166 = a7[2];
      v165 = a7[3];
      v167 = a7[1];
      if (v159)
      {
        v168 = (v166 + v167 * v162);
        v169 = v159;
        v170 = (v165 + v167 * v164);
        do
        {
          *v170++ = 2139095039;
          *v168++ = -1;
          --v169;
        }

        while (v169);
      }

      v428 = v165;
      v435 = v162;
      v444 = v164;
      v451 = v163;
      v414 = v166;
      v421 = v167;
      v171 = (v165 + 4 * v167 * v163);
      v172 = (v166 + 8 * v167 * v163);
      if (!v8)
      {
        goto LABEL_202;
      }

      v173 = 0;
      v174 = a2;
      v175 = (a1 + 4 * v163 * a3);
      v176 = v171 - 1;
      v177 = v172 - 1;
      do
      {
        v178 = faiss::fvec_L1(v175, v174, a3);
        if (v178 >= *v171)
        {
          goto LABEL_201;
        }

        if (v159 < 2)
        {
          v179 = 1;
          goto LABEL_200;
        }

        v180 = 3;
        v181 = 2;
        v182 = 1;
        while (1)
        {
          if (v181 == v159)
          {
            v183 = v176[v159];
LABEL_194:
            v184 = v183;
            v185 = v172 - 1;
            v180 = v181;
            if (v183 < v178)
            {
              break;
            }

            goto LABEL_197;
          }

          v183 = v176[v181];
          v184 = v171[v181];
          if (v183 > v184)
          {
            goto LABEL_194;
          }

          v185 = v172;
          if (v184 < v178)
          {
            break;
          }

LABEL_197:
          v176[v182] = v184;
          v177[v182] = v185[v181];
          v179 = v180;
          v181 = 2 * v180;
          v180 = (2 * v180) | 1;
          v182 = v179;
          if (v181 > v159)
          {
            goto LABEL_200;
          }
        }

        v179 = v182;
LABEL_200:
        v176[v179] = v178;
        v177[v179] = v173;
LABEL_201:
        v174 += a3;
        ++v173;
      }

      while (v173 != v8);
LABEL_202:
      if (!v159)
      {
        v187 = 0;
        goto LABEL_222;
      }

      v186 = 0;
      v187 = 0;
      v188 = v171 - 1;
      v189 = v172 - 1;
LABEL_204:
      v190 = *v171;
      v191 = *v172;
      v192 = v159 - v186;
      v193 = v188[v159 - v186];
      if (v159 - v186 < 2)
      {
        v194 = 1;
        goto LABEL_217;
      }

      v195 = 3;
      v196 = 2;
      v197 = 1;
      while (v196 != v192)
      {
        v198 = v188[v196];
        v199 = v171[v196];
        if (v198 > v199)
        {
          goto LABEL_210;
        }

        v200 = v172;
        if (v193 > v199)
        {
LABEL_215:
          v194 = v197;
LABEL_216:
          v193 = v188[v192];
LABEL_217:
          v188[v194] = v193;
          v189[v194] = v189[v192];
          v201 = v159 + ~v187;
          v171[v201] = v190;
          v172[v201] = v191;
          if (v191 != -1)
          {
            ++v187;
          }

          if (++v186 == v159)
          {
LABEL_222:
            memmove(v171, &v171[v159 - v187], 4 * v187);
            result = memmove(v172, &v172[v159 - v187], 8 * v187);
            v202 = v159 - v187;
            if (v159 > v187)
            {
              v203 = (v414 + v421 * v435 + 8 * v187);
              v204 = (v428 + v421 * v444 + 4 * v187);
              do
              {
                *v204++ = 2139095039;
                *v203++ = -1;
                --v202;
              }

              while (v202);
            }

            v163 = v451 + 1;
            v162 = v435 + 8;
            v164 = v444 + 4;
            v160 = v407;
            goto LABEL_181;
          }

          goto LABEL_204;
        }

LABEL_213:
        v188[v197] = v199;
        v189[v197] = v200[v196];
        v194 = v195;
        v196 = 2 * v195;
        v195 = (2 * v195) | 1;
        v197 = v194;
        if (v196 > v192)
        {
          goto LABEL_216;
        }
      }

      v198 = v188[v192];
LABEL_210:
      v199 = v198;
      v200 = v172 - 1;
      v195 = v196;
      if (v193 > v198)
      {
        goto LABEL_215;
      }

      goto LABEL_213;
    }

    v205 = a7[1];
    result = faiss::InterruptCallback::get_period_hint((a5 * a3));
    v206 = a4;
    v379 = result;
    if (!a4)
    {
      return result;
    }

    v207 = 0;
    v208 = 0;
    v209 = 0;
    v365 = 4 * result;
    v372 = 8 * result;
    while (1)
    {
      v386 = v209 + v379;
      if (v209 + v379 < v206)
      {
        v206 = v209 + v379;
      }

      v394 = v208;
      v401 = v207;
      v210 = v207;
      v408 = v206;
LABEL_233:
      if (v209 < v206)
      {
        break;
      }

      result = faiss::InterruptCallback::check(result);
      v208 = v394 + v372;
      v207 = v401 + v365;
      v206 = a4;
      v209 = v386;
      if (v386 >= a4)
      {
        return result;
      }
    }

    v212 = a7[2];
    v211 = a7[3];
    v213 = a7[1];
    if (v205)
    {
      v214 = (v212 + v213 * v208);
      v215 = v205;
      v216 = (v211 + v213 * v210);
      do
      {
        *v216++ = 2139095039;
        *v214++ = -1;
        --v215;
      }

      while (v215);
    }

    v429 = v211;
    v436 = v208;
    v445 = v210;
    v452 = v209;
    v415 = v212;
    v422 = v213;
    v217 = (v211 + 4 * v213 * v209);
    v218 = (v212 + 8 * v213 * v209);
    if (!v8)
    {
      goto LABEL_254;
    }

    v219 = 0;
    v220 = a2;
    v221 = (a1 + 4 * v209 * a3);
    v222 = v217 - 1;
    v223 = v218 - 1;
    do
    {
      v224 = faiss::fvec_L2sqr(v221, v220, a3);
      if (v224 >= *v217)
      {
        goto LABEL_253;
      }

      if (v205 < 2)
      {
        v225 = 1;
        goto LABEL_252;
      }

      v226 = 3;
      v227 = 2;
      v228 = 1;
      while (1)
      {
        if (v227 == v205)
        {
          v229 = v222[v205];
LABEL_246:
          v230 = v229;
          v231 = v218 - 1;
          v226 = v227;
          if (v229 < v224)
          {
            break;
          }

          goto LABEL_249;
        }

        v229 = v222[v227];
        v230 = v217[v227];
        if (v229 > v230)
        {
          goto LABEL_246;
        }

        v231 = v218;
        if (v230 < v224)
        {
          break;
        }

LABEL_249:
        v222[v228] = v230;
        v223[v228] = v231[v227];
        v225 = v226;
        v227 = 2 * v226;
        v226 = (2 * v226) | 1;
        v228 = v225;
        if (v227 > v205)
        {
          goto LABEL_252;
        }
      }

      v225 = v228;
LABEL_252:
      v222[v225] = v224;
      v223[v225] = v219;
LABEL_253:
      v220 += a3;
      ++v219;
    }

    while (v219 != v8);
LABEL_254:
    if (!v205)
    {
      v233 = 0;
      goto LABEL_274;
    }

    v232 = 0;
    v233 = 0;
    v234 = v217 - 1;
    v235 = v218 - 1;
LABEL_256:
    v236 = *v217;
    v237 = *v218;
    v238 = v205 - v232;
    v239 = v234[v205 - v232];
    if (v205 - v232 < 2)
    {
      v240 = 1;
      goto LABEL_269;
    }

    v241 = 3;
    v242 = 2;
    v243 = 1;
    while (v242 != v238)
    {
      v244 = v234[v242];
      v245 = v217[v242];
      if (v244 > v245)
      {
        goto LABEL_262;
      }

      v246 = v218;
      if (v239 > v245)
      {
LABEL_267:
        v240 = v243;
LABEL_268:
        v239 = v234[v238];
LABEL_269:
        v234[v240] = v239;
        v235[v240] = v235[v238];
        v247 = v205 + ~v233;
        v217[v247] = v236;
        v218[v247] = v237;
        if (v237 != -1)
        {
          ++v233;
        }

        if (++v232 == v205)
        {
LABEL_274:
          memmove(v217, &v217[v205 - v233], 4 * v233);
          result = memmove(v218, &v218[v205 - v233], 8 * v233);
          v248 = v205 - v233;
          if (v205 > v233)
          {
            v249 = (v415 + v422 * v436 + 8 * v233);
            v250 = (v429 + v422 * v445 + 4 * v233);
            do
            {
              *v250++ = 2139095039;
              *v249++ = -1;
              --v248;
            }

            while (v248);
          }

          v209 = v452 + 1;
          v208 = v436 + 8;
          v210 = v445 + 4;
          v206 = v408;
          goto LABEL_233;
        }

        goto LABEL_256;
      }

LABEL_265:
      v234[v243] = v245;
      v235[v243] = v246[v242];
      v240 = v241;
      v242 = 2 * v241;
      v241 = (2 * v241) | 1;
      v243 = v240;
      if (v242 > v238)
      {
        goto LABEL_268;
      }
    }

    v244 = v234[v238];
LABEL_262:
    v245 = v244;
    v246 = v218 - 1;
    v241 = v242;
    if (v239 > v244)
    {
      goto LABEL_267;
    }

    goto LABEL_265;
  }

  if (a6 > 20)
  {
    if (a6 != 21)
    {
      if (a6 == 22)
      {
        v106 = a7[1];
        result = faiss::InterruptCallback::get_period_hint((a5 * a3));
        v363 = result;
        v107 = a4;
        if (!a4)
        {
          return result;
        }

        v108 = 0;
        v109 = 0;
        v110 = 0;
        v357 = 4 * result;
        v359 = 8 * result;
        v443 = 4 * a3;
        v355 = 4 * result * a3;
        while (1)
        {
          v111 = v110 + v363;
          v370 = v110 + v363;
          v377 = v109;
          if (v110 + v363 >= v107)
          {
            v111 = v107;
          }

          v112 = a1;
          v384 = v108;
          v113 = v108;
          v392 = v111;
LABEL_124:
          if (v110 < v111)
          {
            break;
          }

          result = faiss::InterruptCallback::check(result);
          v109 = v377 + v359;
          v108 = v384 + v357;
          a1 += v355;
          v110 = v370;
          v107 = a4;
          if (v370 >= a4)
          {
            return result;
          }
        }

        v115 = a7[2];
        v114 = a7[3];
        v116 = a7[1];
        if (v106)
        {
          v117 = (v115 + v116 * v109);
          v118 = v106;
          v119 = (v114 + v116 * v113);
          do
          {
            *v119++ = 2139095039;
            *v117++ = -1;
            --v118;
          }

          while (v118);
        }

        v420 = v109;
        v427 = v113;
        v434 = v110;
        v406 = v116;
        v413 = v114;
        v120 = (v114 + 4 * v116 * v110);
        v399 = v115;
        v121 = (v115 + 8 * v116 * v110);
        if (!v8)
        {
          goto LABEL_150;
        }

        v122 = 0;
        v123 = v120 - 1;
        v124 = v121 - 1;
        v125 = a2;
        do
        {
          if (a3)
          {
            v126 = 0;
            v127 = 0.0;
            do
            {
              v128 = *(v112 + 4 * v126);
              v129 = v125[v126];
              v130 = (v128 + v129) * 0.5;
              v131 = logf(v130 / v128);
              v127 = v127 + (-(v129 * logf(v130 / v129)) - (v128 * v131));
              ++v126;
            }

            while (a3 != v126);
            v132 = v127 * 0.5;
            v8 = a5;
          }

          else
          {
            v132 = 0.0;
          }

          if (v132 >= *v120)
          {
            goto LABEL_149;
          }

          if (v106 < 2)
          {
            v133 = 1;
            goto LABEL_148;
          }

          v134 = 3;
          v135 = 2;
          v136 = 1;
          while (1)
          {
            if (v135 == v106)
            {
              v137 = v123[v106];
LABEL_142:
              v138 = v137;
              v139 = v121 - 1;
              v134 = v135;
              if (v137 < v132)
              {
                break;
              }

              goto LABEL_145;
            }

            v137 = v123[v135];
            v138 = v120[v135];
            if (v137 > v138)
            {
              goto LABEL_142;
            }

            v139 = v121;
            if (v138 < v132)
            {
              break;
            }

LABEL_145:
            v123[v136] = v138;
            v124[v136] = v139[v135];
            v133 = v134;
            v135 = 2 * v134;
            v134 = (2 * v134) | 1;
            v136 = v133;
            if (v135 > v106)
            {
              goto LABEL_148;
            }
          }

          v133 = v136;
LABEL_148:
          v123[v133] = v132;
          v124[v133] = v122;
LABEL_149:
          ++v122;
          v125 = (v125 + v443);
        }

        while (v122 != v8);
LABEL_150:
        if (!v106)
        {
          v141 = 0;
          goto LABEL_170;
        }

        v140 = 0;
        v141 = 0;
        v142 = v120 - 1;
        v143 = v121 - 1;
LABEL_152:
        v144 = *v120;
        v145 = *v121;
        v146 = v106 - v140;
        v147 = v142[v106 - v140];
        if (v106 - v140 < 2)
        {
          v148 = 1;
          goto LABEL_165;
        }

        v149 = 3;
        v150 = 2;
        v151 = 1;
        while (v150 != v146)
        {
          v152 = v142[v150];
          v153 = v120[v150];
          if (v152 > v153)
          {
            goto LABEL_158;
          }

          v154 = v121;
          if (v147 > v153)
          {
LABEL_163:
            v148 = v151;
LABEL_164:
            v147 = v142[v146];
LABEL_165:
            v142[v148] = v147;
            v143[v148] = v143[v146];
            v155 = v106 + ~v141;
            v120[v155] = v144;
            v121[v155] = v145;
            if (v145 != -1)
            {
              ++v141;
            }

            if (++v140 == v106)
            {
LABEL_170:
              memmove(v120, &v120[v106 - v141], 4 * v141);
              result = memmove(v121, &v121[v106 - v141], 8 * v141);
              v156 = v106 - v141;
              if (v106 > v141)
              {
                v157 = (v399 + v406 * v420 + 8 * v141);
                v158 = (v413 + v406 * v427 + 4 * v141);
                do
                {
                  *v158++ = 2139095039;
                  *v157++ = -1;
                  --v156;
                }

                while (v156);
              }

              v110 = v434 + 1;
              v109 = v420 + 8;
              v113 = v427 + 4;
              v112 += v443;
              v111 = v392;
              goto LABEL_124;
            }

            goto LABEL_152;
          }

LABEL_161:
          v142[v151] = v153;
          v143[v151] = v154[v150];
          v148 = v149;
          v150 = 2 * v149;
          v149 = (2 * v149) | 1;
          v151 = v148;
          if (v150 > v146)
          {
            goto LABEL_164;
          }
        }

        v152 = v142[v146];
LABEL_158:
        v153 = v152;
        v154 = v121 - 1;
        v149 = v150;
        if (v147 > v152)
        {
          goto LABEL_163;
        }

        goto LABEL_161;
      }

LABEL_392:
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v454, "metric type not implemented");
      faiss::FaissException::FaissException(exception, v454, "void faiss::knn_extra_metrics(const float *, const float *, size_t, size_t, size_t, MetricType, float, float_maxheap_array_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/extra_distances.cpp", 191);
    }

    v301 = a7[1];
    result = faiss::InterruptCallback::get_period_hint((a5 * a3));
    v388 = result;
    v302 = a4;
    if (!a4)
    {
      return result;
    }

    v303 = 0;
    v304 = 0;
    v305 = 0;
    v374 = 4 * result;
    v381 = 8 * result;
    v306 = 4 * a3;
    v367 = 4 * result * a3;
    while (1)
    {
      v307 = v305 + v388;
      v396 = v305 + v388;
      v403 = v304;
      if (v305 + v388 >= v302)
      {
        v307 = v302;
      }

      v308 = a1;
      v410 = v303;
      v417 = v307;
      v309 = v303;
LABEL_342:
      if (v305 < v307)
      {
        break;
      }

      result = faiss::InterruptCallback::check(result);
      v304 = v403 + v381;
      v303 = v410 + v374;
      a1 += v367;
      v302 = a4;
      v305 = v396;
      if (v396 >= a4)
      {
        return result;
      }
    }

    v310 = a7[2];
    v311 = a7[3];
    v312 = a7[1];
    if (v301)
    {
      v313 = (v310 + v312 * v304);
      v314 = v301;
      v315 = (v311 + v312 * v309);
      do
      {
        *v315++ = 2139095039;
        *v313++ = -1;
        --v314;
      }

      while (v314);
    }

    v447 = v304;
    v431 = v312;
    v316 = (v311 + 4 * v312 * v305);
    v317 = (v310 + 8 * v312 * v305);
    if (!v8)
    {
      goto LABEL_366;
    }

    v318 = 0;
    v319 = v316 - 1;
    v320 = v317 - 1;
    v321 = a2;
    do
    {
      if (!a3)
      {
        goto LABEL_365;
      }

      v322 = 0;
      v323 = 0.0;
      v324 = 0.0;
      do
      {
        v325 = *(v308 + 4 * v322);
        v326 = v321[v322];
        v323 = v323 + vabds_f32(v325, v326);
        v324 = v324 + fabsf(v325 + v326);
        ++v322;
      }

      while (a3 != v322);
      v327 = v323 / v324;
      if (v327 >= *v316)
      {
        goto LABEL_365;
      }

      if (v301 < 2)
      {
        v328 = 1;
        goto LABEL_364;
      }

      v329 = 3;
      v330 = 2;
      v331 = 1;
      while (1)
      {
        if (v330 == v301)
        {
          v332 = v319[v301];
LABEL_358:
          v333 = v332;
          v334 = v317 - 1;
          v329 = v330;
          if (v332 < v327)
          {
            break;
          }

          goto LABEL_361;
        }

        v332 = v319[v330];
        v333 = v316[v330];
        if (v332 > v333)
        {
          goto LABEL_358;
        }

        v334 = v317;
        if (v333 < v327)
        {
          break;
        }

LABEL_361:
        v319[v331] = v333;
        v320[v331] = v334[v330];
        v328 = v329;
        v330 = 2 * v329;
        v329 = (2 * v329) | 1;
        v331 = v328;
        if (v330 > v301)
        {
          goto LABEL_364;
        }
      }

      v328 = v331;
LABEL_364:
      v319[v328] = v327;
      v320[v328] = v318;
LABEL_365:
      ++v318;
      v321 = (v321 + v306);
    }

    while (v318 != v8);
LABEL_366:
    v453 = v309;
    v438 = v311;
    v424 = v310;
    if (!v301)
    {
      v336 = 0;
      goto LABEL_386;
    }

    v335 = 0;
    v336 = 0;
    v337 = v316 - 1;
    v338 = v317 - 1;
LABEL_368:
    v339 = *v316;
    v340 = *v317;
    v341 = v301 - v335;
    v342 = v337[v301 - v335];
    if (v301 - v335 < 2)
    {
      v343 = 1;
      goto LABEL_381;
    }

    v344 = 3;
    v345 = 2;
    v346 = 1;
    while (v345 != v341)
    {
      v347 = v337[v345];
      v348 = v316[v345];
      if (v347 > v348)
      {
        goto LABEL_374;
      }

      v349 = v317;
      if (v342 > v348)
      {
LABEL_379:
        v343 = v346;
LABEL_380:
        v342 = v337[v341];
LABEL_381:
        v337[v343] = v342;
        v338[v343] = v338[v341];
        v350 = v301 + ~v336;
        v316[v350] = v339;
        v317[v350] = v340;
        if (v340 != -1)
        {
          ++v336;
        }

        if (++v335 == v301)
        {
LABEL_386:
          memmove(v316, &v316[v301 - v336], 4 * v336);
          result = memmove(v317, &v317[v301 - v336], 8 * v336);
          v351 = v301 - v336;
          if (v301 > v336)
          {
            v352 = (v424 + v431 * v447 + 8 * v336);
            v353 = (v438 + v431 * v453 + 4 * v336);
            do
            {
              *v353++ = 2139095039;
              *v352++ = -1;
              --v351;
            }

            while (v351);
          }

          ++v305;
          v304 = v447 + 8;
          v309 = v453 + 4;
          v308 += v306;
          v307 = v417;
          goto LABEL_342;
        }

        goto LABEL_368;
      }

LABEL_377:
      v337[v346] = v348;
      v338[v346] = v349[v345];
      v343 = v344;
      v345 = 2 * v344;
      v344 = (2 * v344) | 1;
      v346 = v343;
      if (v345 > v341)
      {
        goto LABEL_380;
      }
    }

    v347 = v337[v341];
LABEL_374:
    v348 = v347;
    v349 = v317 - 1;
    v344 = v345;
    if (v342 > v347)
    {
      goto LABEL_379;
    }

    goto LABEL_377;
  }

  if (a6 == 4)
  {
    v252 = a7[1];
    result = faiss::InterruptCallback::get_period_hint((a5 * a3));
    v366 = result;
    v253 = a4;
    if (!a4)
    {
      return result;
    }

    v254 = 0;
    v255 = 0;
    v256 = 0;
    v358 = 4 * result;
    v360 = 8 * result;
    v446 = 4 * a3;
    v356 = 4 * result * a3;
    while (1)
    {
      v257 = v256 + v366;
      v373 = v256 + v366;
      v380 = v255;
      if (v256 + v366 >= v253)
      {
        v257 = v253;
      }

      v258 = a1;
      v387 = v254;
      v259 = v254;
      v395 = v257;
LABEL_285:
      if (v256 < v257)
      {
        break;
      }

      result = faiss::InterruptCallback::check(result);
      v255 = v380 + v360;
      v254 = v387 + v358;
      a1 += v356;
      v256 = v373;
      v253 = a4;
      if (v373 >= a4)
      {
        return result;
      }
    }

    v261 = a7[2];
    v260 = a7[3];
    v262 = a7[1];
    if (v252)
    {
      v263 = (v261 + v262 * v255);
      v264 = v252;
      v265 = (v260 + v262 * v259);
      do
      {
        *v265++ = 2139095039;
        *v263++ = -1;
        --v264;
      }

      while (v264);
    }

    v423 = v255;
    v430 = v259;
    v437 = v256;
    v409 = v262;
    v416 = v260;
    v266 = (v260 + 4 * v262 * v256);
    v402 = v261;
    v267 = (v261 + 8 * v262 * v256);
    if (!v8)
    {
      goto LABEL_311;
    }

    v268 = 0;
    v269 = v266 - 1;
    v270 = v267 - 1;
    v271 = a2;
    do
    {
      if (a3)
      {
        v272 = 0;
        v273 = 0.0;
        do
        {
          v273 = v273 + powf(vabds_f32(*(v258 + 4 * v272), v271[v272]), a8);
          ++v272;
        }

        while (a3 != v272);
      }

      else
      {
        v273 = 0.0;
      }

      v8 = a5;
      if (v273 >= *v266)
      {
        goto LABEL_310;
      }

      if (v252 < 2)
      {
        v274 = 1;
        goto LABEL_309;
      }

      v275 = 3;
      v276 = 2;
      v277 = 1;
      while (1)
      {
        if (v276 == v252)
        {
          v278 = v269[v252];
LABEL_303:
          v279 = v278;
          v280 = v267 - 1;
          v275 = v276;
          if (v278 < v273)
          {
            break;
          }

          goto LABEL_306;
        }

        v278 = v269[v276];
        v279 = v266[v276];
        if (v278 > v279)
        {
          goto LABEL_303;
        }

        v280 = v267;
        if (v279 < v273)
        {
          break;
        }

LABEL_306:
        v269[v277] = v279;
        v270[v277] = v280[v276];
        v274 = v275;
        v276 = 2 * v275;
        v275 = (2 * v275) | 1;
        v277 = v274;
        if (v276 > v252)
        {
          goto LABEL_309;
        }
      }

      v274 = v277;
LABEL_309:
      v269[v274] = v273;
      v270[v274] = v268;
LABEL_310:
      ++v268;
      v271 = (v271 + v446);
    }

    while (v268 != a5);
LABEL_311:
    if (!v252)
    {
      v282 = 0;
      v285 = v437;
      goto LABEL_331;
    }

    v281 = 0;
    v282 = 0;
    v283 = v266 - 1;
    v284 = v267 - 1;
    v285 = v437;
LABEL_313:
    v286 = *v266;
    v287 = *v267;
    v288 = v252 - v281;
    v289 = v283[v252 - v281];
    if (v252 - v281 < 2)
    {
      v290 = 1;
      goto LABEL_326;
    }

    v291 = 3;
    v292 = 2;
    v293 = 1;
    while (v292 != v288)
    {
      v294 = v283[v292];
      v295 = v266[v292];
      if (v294 > v295)
      {
        goto LABEL_319;
      }

      v296 = v267;
      if (v289 > v295)
      {
LABEL_324:
        v290 = v293;
LABEL_325:
        v289 = v283[v288];
LABEL_326:
        v283[v290] = v289;
        v284[v290] = v284[v288];
        v297 = v252 + ~v282;
        v266[v297] = v286;
        v267[v297] = v287;
        if (v287 != -1)
        {
          ++v282;
        }

        if (++v281 == v252)
        {
LABEL_331:
          memmove(v266, &v266[v252 - v282], 4 * v282);
          result = memmove(v267, &v267[v252 - v282], 8 * v282);
          v298 = v252 - v282;
          if (v252 > v282)
          {
            v299 = (v402 + v409 * v423 + 8 * v282);
            v300 = (v416 + v409 * v430 + 4 * v282);
            do
            {
              *v300++ = 2139095039;
              *v299++ = -1;
              --v298;
            }

            while (v298);
          }

          v256 = v285 + 1;
          v255 = v423 + 8;
          v259 = v430 + 4;
          v258 += v446;
          v257 = v395;
          goto LABEL_285;
        }

        goto LABEL_313;
      }

LABEL_322:
      v283[v293] = v295;
      v284[v293] = v296[v292];
      v290 = v291;
      v292 = 2 * v291;
      v291 = (2 * v291) | 1;
      v293 = v290;
      if (v292 > v288)
      {
        goto LABEL_325;
      }
    }

    v294 = v283[v288];
LABEL_319:
    v295 = v294;
    v296 = v267 - 1;
    v291 = v292;
    if (v289 > v294)
    {
      goto LABEL_324;
    }

    goto LABEL_322;
  }

  if (a6 != 20)
  {
    goto LABEL_392;
  }

  v10 = a7[1];
  result = faiss::InterruptCallback::get_period_hint((a5 * a3));
  v382 = result;
  v12 = a4;
  if (a4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v368 = 4 * result;
    v375 = 8 * result;
    v16 = 4 * a3;
    v361 = 4 * result * a3;
    while (1)
    {
      v17 = v15 + v382;
      v390 = v15 + v382;
      v397 = v14;
      if (v15 + v382 >= v12)
      {
        v17 = v12;
      }

      v18 = a1;
      v404 = v13;
      v411 = v17;
      v19 = v13;
LABEL_10:
      if (v15 < v17)
      {
        break;
      }

      result = faiss::InterruptCallback::check(result);
      v14 = v397 + v375;
      v13 = v404 + v368;
      a1 += v361;
      v12 = a4;
      v15 = v390;
      if (v390 >= a4)
      {
        return result;
      }
    }

    v20 = a7[2];
    v21 = a7[3];
    v22 = a7[1];
    if (v10)
    {
      v23 = (v20 + v22 * v14);
      v24 = v10;
      v25 = (v21 + v22 * v19);
      do
      {
        *v25++ = 2139095039;
        *v23++ = -1;
        --v24;
      }

      while (v24);
    }

    v442 = v14;
    v425 = v22;
    v26 = (v21 + 4 * v22 * v15);
    v27 = (v20 + 8 * v22 * v15);
    if (!v8)
    {
      goto LABEL_36;
    }

    v28 = 0;
    v29 = v26 - 1;
    v30 = v27 - 1;
    v31 = a2;
    do
    {
      if (a3)
      {
        v32 = 0;
        v33 = 0.0;
        do
        {
          v33 = v33 + (vabds_f32(*(v18 + 4 * v32), v31[v32]) / (fabsf(*(v18 + 4 * v32)) + fabsf(v31[v32])));
          ++v32;
        }

        while (a3 != v32);
      }

      else
      {
        v33 = 0.0;
      }

      if (v33 >= *v26)
      {
        goto LABEL_35;
      }

      if (v10 < 2)
      {
        v34 = 1;
        goto LABEL_34;
      }

      v35 = 3;
      v36 = 2;
      v37 = 1;
      while (1)
      {
        if (v36 == v10)
        {
          v38 = v29[v10];
LABEL_28:
          v39 = v38;
          v40 = v27 - 1;
          v35 = v36;
          if (v38 < v33)
          {
            break;
          }

          goto LABEL_31;
        }

        v38 = v29[v36];
        v39 = v26[v36];
        if (v38 > v39)
        {
          goto LABEL_28;
        }

        v40 = v27;
        if (v39 < v33)
        {
          break;
        }

LABEL_31:
        v29[v37] = v39;
        v30[v37] = v40[v36];
        v34 = v35;
        v36 = 2 * v35;
        v35 = (2 * v35) | 1;
        v37 = v34;
        if (v36 > v10)
        {
          goto LABEL_34;
        }
      }

      v34 = v37;
LABEL_34:
      v29[v34] = v33;
      v30[v34] = v28;
LABEL_35:
      ++v28;
      v31 = (v31 + v16);
    }

    while (v28 != v8);
LABEL_36:
    v449 = v19;
    v432 = v21;
    v418 = v20;
    if (!v10)
    {
      v42 = 0;
      goto LABEL_56;
    }

    v41 = 0;
    v42 = 0;
    v43 = v26 - 1;
    v44 = v27 - 1;
LABEL_38:
    v45 = *v26;
    v46 = *v27;
    v47 = v10 - v41;
    v48 = v43[v10 - v41];
    if (v10 - v41 < 2)
    {
      v49 = 1;
      goto LABEL_51;
    }

    v50 = 3;
    v51 = 2;
    v52 = 1;
    while (v51 != v47)
    {
      v53 = v43[v51];
      v54 = v26[v51];
      if (v53 > v54)
      {
        goto LABEL_44;
      }

      v55 = v27;
      if (v48 > v54)
      {
LABEL_49:
        v49 = v52;
LABEL_50:
        v48 = v43[v47];
LABEL_51:
        v43[v49] = v48;
        v44[v49] = v44[v47];
        v56 = v10 + ~v42;
        v26[v56] = v45;
        v27[v56] = v46;
        if (v46 != -1)
        {
          ++v42;
        }

        if (++v41 == v10)
        {
LABEL_56:
          memmove(v26, &v26[v10 - v42], 4 * v42);
          result = memmove(v27, &v27[v10 - v42], 8 * v42);
          v57 = v10 - v42;
          if (v10 > v42)
          {
            v58 = (v418 + v425 * v442 + 8 * v42);
            v59 = (v432 + v425 * v449 + 4 * v42);
            do
            {
              *v59++ = 2139095039;
              *v58++ = -1;
              --v57;
            }

            while (v57);
          }

          ++v15;
          v14 = v442 + 8;
          v19 = v449 + 4;
          v18 += v16;
          v17 = v411;
          goto LABEL_10;
        }

        goto LABEL_38;
      }

LABEL_47:
      v43[v52] = v54;
      v44[v52] = v55[v51];
      v49 = v50;
      v51 = 2 * v50;
      v50 = (2 * v50) | 1;
      v52 = v49;
      if (v51 > v47)
      {
        goto LABEL_50;
      }
    }

    v53 = v43[v47];
LABEL_44:
    v54 = v53;
    v55 = v27 - 1;
    v50 = v51;
    if (v48 > v53)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  return result;
}

void sub_1D9C3AE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

void faiss::get_extra_distance_computer(uint64_t a1, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        operator new();
      case 2:
        operator new();
      case 3:
        operator new();
    }
  }

  else if (a2 > 20)
  {
    if (a2 == 21)
    {
      operator new();
    }

    if (a2 == 22)
    {
      operator new();
    }
  }

  else
  {
    if (a2 == 4)
    {
      operator new();
    }

    if (a2 == 20)
    {
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v3, "metric type not implemented");
  faiss::FaissException::FaissException(exception, v3, "DistanceComputer *faiss::get_extra_distance_computer(size_t, MetricType, float, size_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/extra_distances.cpp", 217);
}

void sub_1D9C3B0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

double faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)20>>::operator()(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0.0;
  }

  v3 = a1[4];
  v4 = (a1[5] + 4 * v2 * a2);
  result = 0.0;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    *&result = *&result + (vabds_f32(v7, v8) / (fabsf(v7) + fabsf(v8)));
    --v2;
  }

  while (v2);
  return result;
}

double faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)20>>::symmetric_dis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0.0;
  }

  v4 = *(a1 + 40);
  v5 = (v4 + 4 * v3 * a3);
  v6 = (v4 + 4 * v3 * a2);
  result = 0.0;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    *&result = *&result + (vabds_f32(v9, v10) / (fabsf(v9) + fabsf(v10)));
    --v3;
  }

  while (v3);
  return result;
}

float faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)21>>::operator()(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return NAN;
  }

  v3 = a1[4];
  v4 = (a1[5] + 4 * v2 * a2);
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = *v3++;
    v8 = v7;
    v9 = *v4++;
    v5 = v5 + vabds_f32(v8, v9);
    v6 = v6 + fabsf(v8 + v9);
    --v2;
  }

  while (v2);
  return v5 / v6;
}

float faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)21>>::symmetric_dis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return NAN;
  }

  v4 = *(a1 + 40);
  v5 = (v4 + 4 * v3 * a3);
  v6 = (v4 + 4 * v3 * a2);
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v9 = *v5++;
    v10 = v9;
    v11 = *v6++;
    v7 = v7 + vabds_f32(v10, v11);
    v8 = v8 + fabsf(v10 + v11);
    --v3;
  }

  while (v3);
  return v7 / v8;
}

void faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)22>>::operator()(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[4];
    v4 = (a1[5] + 4 * v2 * a2);
    v5 = 0.0;
    do
    {
      v6 = *v3++;
      v7 = v6;
      v8 = *v4++;
      v9 = (v7 + v8) * 0.5;
      v10 = logf(v9 / v7);
      v5 = v5 + (-(v8 * logf(v9 / v8)) - (v7 * v10));
      --v2;
    }

    while (v2);
  }
}

void faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)22>>::symmetric_dis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = (v4 + 4 * v3 * a3);
    v6 = (v4 + 4 * v3 * a2);
    v7 = 0.0;
    do
    {
      v8 = *v5++;
      v9 = v8;
      v10 = *v6++;
      v11 = (v9 + v10) * 0.5;
      v12 = logf(v11 / v9);
      v7 = v7 + (-(v10 * logf(v11 / v10)) - (v9 * v12));
      --v3;
    }

    while (v3);
  }
}

float faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)4>>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0.0;
  }

  v3 = *(a1 + 32);
  v4 = (*(a1 + 40) + 4 * v2 * a2);
  v5 = *(a1 + 16);
  v6 = 0.0;
  do
  {
    v7 = *v3++;
    v8 = v7;
    v9 = *v4++;
    v6 = v6 + powf(vabds_f32(v8, v9), v5);
    --v2;
  }

  while (v2);
  return v6;
}

float faiss::anonymous namespace::ExtraDistanceComputer<faiss::VectorDistance<(faiss::MetricType)4>>::symmetric_dis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0.0;
  }

  v4 = *(a1 + 40);
  v5 = (v4 + 4 * v3 * a3);
  v6 = (v4 + 4 * v3 * a2);
  v7 = *(a1 + 16);
  v8 = 0.0;
  do
  {
    v9 = *v5++;
    v10 = v9;
    v11 = *v6++;
    v8 = v8 + powf(vabds_f32(v10, v11), v7);
    --v3;
  }

  while (v3);
  return v8;
}

uint64_t faiss::hamming<64ul>(void *a1, void *a2)
{
  v2 = vcnt_s8((*a2 ^ *a1));
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

float faiss::hamming<128ul>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a2, *a1))))));
  LODWORD(result) = vadd_s32(vdup_lane_s32(v2, 1), v2).u32[0];
  return result;
}

uint64_t faiss::hamming(faiss *this, const unint64_t *a2, const unint64_t *a3)
{
  for (i = 0; a3; a3 = (a3 - 1))
  {
    v5 = *this;
    this = (this + 8);
    v4 = v5;
    v6 = *a2++;
    v7 = vcnt_s8((v6 ^ v4));
    v7.i16[0] = vaddlv_u8(v7);
    i = (i + v7.i32[0]);
  }

  return i;
}

uint64_t *faiss::hammings(uint64_t *this, const unint64_t *a2, const unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a5 * a3;
  if (a5 * a3)
  {
    v8 = 0;
    v9 = a5 * a4;
    v10 = 8 * a5;
    do
    {
      if (v9)
      {
        v11 = 0;
        v12 = a2;
        do
        {
          v13 = 0;
          if (a5)
          {
            v14 = this;
            v15 = v12;
            v16 = a5;
            do
            {
              v18 = *v14++;
              v17 = v18;
              v19 = *v15++;
              v20 = vcnt_s8((v19 ^ v17));
              v20.i16[0] = vaddlv_u8(v20);
              v13 += v20.i32[0];
              --v16;
            }

            while (v16);
          }

          *(a6 + 4 * v11) = v13;
          v11 += a5;
          v12 = (v12 + v10);
        }

        while (v11 < v9);
      }

      v8 += a5;
      this = (this + v10);
    }

    while (v8 < v7);
  }

  return this;
}

float *faiss::fvec2bitvec(float *this, float *a2, unsigned __int8 *a3)
{
  if (a3)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 8;
      v5 = a3 - v3;
      if (v4 <= a3)
      {
        v6 = 8;
      }

      else
      {
        v6 = v5;
      }

      if (v6 < 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 1;
        v9 = this;
        do
        {
          v10 = *v9++;
          if (v10 >= 0.0)
          {
            v11 = v8;
          }

          else
          {
            v11 = 0;
          }

          v7 |= v11;
          v8 *= 2;
          --v6;
        }

        while (v6);
      }

      *a2 = v7;
      a2 = (a2 + 1);
      this += 8;
      v3 = v4;
    }

    while (v4 < a3);
  }

  return this;
}

float *faiss::fvecs2bitvecs(float *this, float *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v7 = this;
    v8 = (a3 + 7) >> 3;
    v9 = 4 * a3;
    do
    {
      this = faiss::fvec2bitvec(v7, a2, a3);
      a2 = (a2 + v8);
      v7 = (v7 + v9);
      --v4;
    }

    while (v4);
  }

  return this;
}

void faiss::bitvecs2fvecs(faiss *this, const unsigned __int8 *a2, faiss *a3, float *a4)
{
  if (a4)
  {
    v4 = a4;
    v8 = (a3 + 7) >> 3;
    v9 = 4 * a3;
    do
    {
      faiss::binary_to_real(a3, this, a2, a4);
      a2 += v9;
      this = (this + v8);
      v4 = (v4 - 1);
    }

    while (v4);
  }
}

unint64_t *faiss::bitvec_print(unint64_t *this, const unsigned __int8 *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = 0;
      v6 = *v3;
      v7 = 64;
      do
      {
        v5 = v6 & 1 | (2 * v5);
        v6 >>= 1;
        --v7;
      }

      while (v7);
      if (v4 < a2)
      {
        v8 = 0;
        do
        {
          printf("%d", v5 & 1);
          v9 = v8 + 1;
          if (v8 > 0x3E)
          {
            break;
          }

          v5 >>= 1;
          ++v8;
        }

        while (v9 + v4 < a2);
        v4 += v9;
      }

      ++v3;
      this = putchar(32);
    }

    while (v4 < a2);
  }

  return this;
}

void faiss::bitvec_shuffle(faiss *this, unint64_t a2, uint64_t a3, unsigned int *a4, const int *a5, const unsigned __int8 *a6, unsigned __int8 *a7)
{
  if (a3)
  {
    v12 = a4;
    v13 = a3;
    do
    {
      v15 = *v12++;
      v14 = v15;
      if ((v15 & 0x80000000) != 0 || v14 >= a2)
      {
        memset(&v24, 0, sizeof(v24));
        v20 = snprintf(0, 0, "Error: '%s' failed", "order[i] >= 0 && order[i] < da");
        std::string::resize(&v24, v20 + 1, 0);
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v24;
        }

        else
        {
          v21 = v24.__r_.__value_.__r.__words[0];
        }

        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v24.__r_.__value_.__l.__size_;
        }

        snprintf(v21, size, "Error: '%s' failed", "order[i] >= 0 && order[i] < da");
        exception = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(exception, &v24, "void faiss::bitvec_shuffle(size_t, size_t, size_t, const int *, const uint8_t *, uint8_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/hamming.cpp", 433);
      }

      --v13;
    }

    while (v13);
  }

  if (this)
  {
    v16 = 0;
    v17 = (a2 + 7) >> 3;
    v18 = (a3 + 7) >> 3;
    do
    {
      bzero(&a6[v16 * v18], (a3 + 7) >> 3);
      if (a3)
      {
        v19 = 0;
        do
        {
          a6[v16 * v18 + (v19 >> 3)] |= ((*(a5 + v16 * v17 + (a4[v19] >> 3)) >> (a4[v19] & 7)) & 1) << (v19 & 7);
          ++v19;
        }

        while (a3 != v19);
      }

      v16 = (v16 + 1);
    }

    while (v16 != this);
  }
}

void sub_1D9C3BB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *faiss::hammings(uint64_t *this, int8x16_t *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  if ((a5 & 7) != 0)
  {
    memset(&v20, 0, sizeof(v20));
    v16 = snprintf(0, 0, "Error: '%s' failed", "ncodes % 8 == 0");
    std::string::resize(&v20, v16 + 1, 0);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v20;
    }

    else
    {
      v17 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    snprintf(v17, size, "Error: '%s' failed", "ncodes % 8 == 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v20, "void faiss::hammings(const uint8_t *, const uint8_t *, size_t, size_t, size_t, hamdis_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/hamming.cpp", 464);
  }

  v7 = (a5 - 8) >> 3;
  if (v7 > 2)
  {
    if (v7 == 3)
    {

      return faiss::hammings<256ul>(this, a2, a3, a4, a6);
    }

    else
    {
      if (v7 != 7)
      {
LABEL_13:
        v8 = 8 * a5;

        return faiss::hammings(this, a2, a3, a4, v8, a6, a7);
      }

      return faiss::hammings<512ul>(this, a2, a3, a4, a6);
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {

        return faiss::hammings<128ul>(this, a2, a3, a4, a6);
      }

      goto LABEL_13;
    }

    if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        if (a4)
        {
          v10 = this[i];
          v11 = a2;
          v12 = a6;
          v13 = a4;
          do
          {
            v14 = v11->i64[0];
            v11 = (v11 + 8);
            v15 = vcnt_s8((v14 ^ v10));
            v15.i16[0] = vaddlv_u8(v15);
            *v12++ = v15.i32[0];
            --v13;
          }

          while (v13);
        }

        a6 += a4;
      }
    }
  }

  return this;
}

void sub_1D9C3BD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::hammings<128ul>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        v6 = *(result + 16 * i);
        v7 = a2;
        v8 = a5;
        v9 = a4;
        do
        {
          v10 = *v7++;
          v11 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v10, v6))))));
          *v8++ = vadd_s32(vdup_lane_s32(v11, 1), v11).u32[0];
          --v9;
        }

        while (v9);
      }

      a5 += a4;
    }
  }

  return result;
}

uint64_t faiss::hammings<256ul>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a3)
  {
    v8 = result;
    v9 = 0;
    v10 = 4 * a4;
    do
    {
      if (a4)
      {
        v11 = a2;
        v12 = a5;
        v13 = a4;
        do
        {
          result = faiss::hamming<256ul>((v8 + 32 * v9), v11);
          *v12++ = result;
          v11 += 2;
          --v13;
        }

        while (v13);
      }

      ++v9;
      a5 = (a5 + v10);
    }

    while (v9 != a3);
  }

  return result;
}

uint64_t faiss::hammings<512ul>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        v6 = 0;
        v7 = a2;
        do
        {
          v8 = 0;
          v9 = 0uLL;
          do
          {
            v9 = vaddq_s32(v9, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v7 + v8), *(result + v8)))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v7 + v8 + 16), *(result + v8 + 16))))))));
            v8 += 32;
          }

          while (v8 != 64);
          *(a5 + 4 * i * a4 + 4 * v6++) = vaddvq_s32(v9);
          v7 += 64;
        }

        while (v6 != a4);
      }

      result += 64;
    }
  }

  return result;
}

void faiss::hammings_knn_mc(faiss *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int *a8, uint64_t *a9)
{
  v9 = __ROR8__(a6 - 4, 2);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      std::vector<int>::vector[abi:ne200100](&v10, 129 * a3);
      operator new[]();
    }

    if (v9 == 7)
    {
      std::vector<int>::vector[abi:ne200100](&v10, 257 * a3);
      operator new[]();
    }
  }

  else
  {
    if (!v9)
    {
      std::vector<int>::vector[abi:ne200100](&v10, 33 * a3);
      operator new[]();
    }

    if (v9 == 1)
    {
      std::vector<int>::vector[abi:ne200100](&v10, 65 * a3);
      operator new[]();
    }
  }

  std::vector<int>::vector[abi:ne200100](&v10, ((8 * a6) | 1) * a3);
  operator new[]();
}

void sub_1D9C3D820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::hamming_range_search(faiss *this, int8x16_t *a2, const unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6, faiss::RangeSearchResult *a7, faiss::RangeSearchResult *a8)
{
  v13 = __ROR8__(a6 - 4, 2);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      faiss::RangeSearchPartialResult::RangeSearchPartialResult(v57, a7);
      if (a3)
      {
        if (a6 != 16)
        {
          __assert_rtn("set", "hamming-inl.h", 124, "code_size == 16");
        }

        v43 = 0;
        do
        {
          v53 = *(this + v43 * a6);
          v44 = faiss::RangeSearchPartialResult::new_result(v57, v43);
          if (a4)
          {
            v45 = v44;
            v46 = 0;
            v47 = a2;
            do
            {
              v48 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*v47, v53))))));
              v49 = vadd_s32(vdup_lane_s32(v48, 1), v48).u32[0];
              if (v49 < a5)
              {
                faiss::RangeQueryResult::add(v45, v49, v46);
              }

              v47 = (v47 + a6);
              ++v46;
            }

            while (a4 != v46);
          }

          ++v43;
        }

        while (v43 != a3);
      }

      goto LABEL_54;
    }

    if (v13 == 7)
    {
      faiss::RangeSearchPartialResult::RangeSearchPartialResult(v57, a7);
      if (a3)
      {
        if (a6 != 32)
        {
          __assert_rtn("set", "hamming-inl.h", 173, "code_size == 32");
        }

        v21 = 0;
        do
        {
          v22 = (this + v21 * a6);
          v51 = *v22;
          v52 = v22[1];
          v23 = faiss::RangeSearchPartialResult::new_result(v57, v21);
          if (a4)
          {
            v24 = v23;
            v25 = 0;
            v26 = a2;
            do
            {
              v27 = vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*v26, v51))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v26[1], v52)))))));
              if (v27 < a5)
              {
                faiss::RangeQueryResult::add(v24, v27, v25);
              }

              v26 = (v26 + a6);
              ++v25;
            }

            while (a4 != v25);
          }

          ++v21;
        }

        while (v21 != a3);
      }

      goto LABEL_54;
    }
  }

  else
  {
    if (!v13)
    {
      faiss::RangeSearchPartialResult::RangeSearchPartialResult(v57, a7);
      if (a3)
      {
        if (a6 != 4)
        {
          __assert_rtn("set", "hamming-inl.h", 86, "code_size == 4");
        }

        v36 = 0;
        do
        {
          v37 = *(this + v36 * a6);
          v38 = faiss::RangeSearchPartialResult::new_result(v57, v36);
          if (a4)
          {
            v40 = v38;
            v41 = 0;
            v42 = a2;
            do
            {
              v39.i32[0] = *v42 ^ v37;
              v39 = vcnt_s8(v39);
              v39.i16[0] = vaddlv_u8(v39);
              if (v39.i32[0] < a5)
              {
                faiss::RangeQueryResult::add(v40, v39.u32[0], v41);
              }

              v42 += a6;
              ++v41;
            }

            while (a4 != v41);
          }

          ++v36;
        }

        while (v36 != a3);
      }

      goto LABEL_54;
    }

    if (v13 == 1)
    {
      faiss::RangeSearchPartialResult::RangeSearchPartialResult(v57, a7);
      if (a3)
      {
        if (a6 != 8)
        {
          __assert_rtn("set", "hamming-inl.h", 105, "code_size == 8");
        }

        v14 = 0;
        do
        {
          v15 = *(this + v14 * a6);
          v16 = faiss::RangeSearchPartialResult::new_result(v57, v14);
          if (a4)
          {
            v17 = v16;
            v18 = 0;
            v19 = a2;
            do
            {
              v20 = vcnt_s8((*v19 ^ v15));
              v20.i16[0] = vaddlv_u8(v20);
              if (v20.i32[0] < a5)
              {
                faiss::RangeQueryResult::add(v17, v20.u32[0], v18);
              }

              v19 += a6;
              ++v18;
            }

            while (a4 != v18);
          }

          ++v14;
        }

        while (v14 != a3);
      }

LABEL_54:
      faiss::RangeSearchPartialResult::finalize(v57);
      goto LABEL_55;
    }
  }

  faiss::RangeSearchPartialResult::RangeSearchPartialResult(v57, a7);
  if (a3)
  {
    v29 = 0;
    v30 = a6 - (v28 & 0xFFFFFFF8);
    do
    {
      v54 = this + v29 * a6;
      v55 = a6 / 8;
      v56 = v30;
      v31 = faiss::RangeSearchPartialResult::new_result(v57, v29);
      if (a4)
      {
        v32 = v31;
        v33 = 0;
        v34 = a2;
        do
        {
          v35 = faiss::HammingComputerDefault::hamming(&v54, v34);
          if (v35 < a5)
          {
            faiss::RangeQueryResult::add(v32, v35, v33);
          }

          v34 += a6;
          ++v33;
        }

        while (a4 != v33);
      }

      ++v29;
    }

    while (v29 != a3);
  }

  faiss::RangeSearchPartialResult::finalize(v57);
LABEL_55:
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  faiss::BufferList::~BufferList(v57);
}

void sub_1D9C3DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  faiss::RangeSearchPartialResult::~RangeSearchPartialResult(va);
  _Unwind_Resume(a1);
}

int8x16_t *faiss::hamming_count_thres(int8x16_t *this, int8x16_t *a2, const unsigned __int8 *a3, uint64_t a4, __int32 a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v8 = __ROR8__(a6 - 8, 3);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = 0;
      if (a3)
      {
        for (i = 0; i != a3; ++i)
        {
          if (a4)
          {
            v21 = a4;
            v22 = a2;
            do
            {
              v24 = *v22;
              v23 = v22[1];
              v22 += 2;
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v24, *this))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v23, this[1]))))))) <= a5)
              {
                ++v9;
              }

              --v21;
            }

            while (v21);
          }

          this += 2;
        }
      }
    }

    else
    {
      if (v8 != 7)
      {
LABEL_38:
        memset(&v30, 0, sizeof(v30));
        v26 = snprintf(0, 0, "not implemented for %zu bits", a6);
        std::string::resize(&v30, v26 + 1, 0);
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v30;
        }

        else
        {
          v27 = v30.__r_.__value_.__r.__words[0];
        }

        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v30.__r_.__value_.__l.__size_;
        }

        snprintf(v27, size, "not implemented for %zu bits", a6);
        exception = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(exception, &v30, "void faiss::hamming_count_thres(const uint8_t *, const uint8_t *, size_t, size_t, hamdis_t, size_t, size_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/hamming.cpp", 649);
      }

      v9 = 0;
      if (a3)
      {
        for (j = 0; j != a3; ++j)
        {
          if (a4)
          {
            v11 = 0;
            v12 = a2;
            do
            {
              v13 = 0;
              v14 = 0uLL;
              do
              {
                v14 = vaddq_s32(v14, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v12[v13], this[v13]))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v12[v13 + 1], this[v13 + 1])))))));
                v13 += 2;
              }

              while (v13 != 4);
              if (vaddvq_s32(v14) <= a5)
              {
                ++v9;
              }

              v12 += 4;
              ++v11;
            }

            while (v11 != a4);
          }

          this += 4;
        }
      }
    }

LABEL_37:
    *a7 = v9;
    return this;
  }

  if (!v8)
  {
    v9 = 0;
    if (a3)
    {
      for (k = 0; k != a3; ++k)
      {
        if (a4)
        {
          v16 = a4;
          v17 = a2;
          do
          {
            v18 = v17->i64[0];
            v17 = (v17 + 8);
            v19 = vcnt_s8((v18 ^ this->i64[0]));
            v19.i16[0] = vaddlv_u8(v19);
            if (v19.i32[0] <= a5)
            {
              ++v9;
            }

            --v16;
          }

          while (v16);
        }

        this = (this + 8);
      }
    }

    goto LABEL_37;
  }

  if (v8 != 1)
  {
    goto LABEL_38;
  }

  return faiss::hamming_count_thres<128ul>(this, a2, a3, a4, a5, a7);
}

void sub_1D9C3E070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int8x16_t *faiss::hamming_count_thres<128ul>(int8x16_t *result, int8x16_t *a2, uint64_t a3, uint64_t a4, __int32 a5, void *a6)
{
  v6 = 0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        v8 = a4;
        v9 = a2;
        do
        {
          v10 = *v9++;
          v11 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(v10, *result))))));
          if (vadd_s32(vdup_lane_s32(v11, 1), v11).i32[0] <= a5)
          {
            ++v6;
          }

          --v8;
        }

        while (v8);
      }

      ++result;
    }
  }

  *a6 = v6;
  return result;
}

int8x16_t *faiss::crosshamming_count_thres(int8x16_t *this, const unsigned __int8 *a2, int a3, uint64_t a4, void *a5, unint64_t *a6)
{
  v6 = __ROR8__(a4 - 8, 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {

      return faiss::crosshamming_count_thres<256ul>(this, a2, a3, a5);
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_24;
      }

      return faiss::crosshamming_count_thres<512ul>(this, a2, a3, a5);
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {

        return faiss::crosshamming_count_thres<128ul>(this, a2, a3, a5);
      }

LABEL_24:
      memset(&v18, 0, sizeof(v18));
      v14 = snprintf(0, 0, "not implemented for %zu bits", a4);
      std::string::resize(&v18, v14 + 1, 0);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v18;
      }

      else
      {
        v15 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      snprintf(v15, size, "not implemented for %zu bits", a4);
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v18, "void faiss::crosshamming_count_thres(const uint8_t *, size_t, hamdis_t, size_t, size_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/hamming.cpp", 674);
    }

    v7 = 0;
    if (a2)
    {
      v8 = 0;
      v9 = a2 - 1;
      do
      {
        if (++v8 < a2)
        {
          v10 = v9;
          v11 = 2;
          do
          {
            v12 = vcnt_s8((this->i64[v11] ^ this->i64[0]));
            v12.i16[0] = vaddlv_u8(v12);
            if (v12.i32[0] <= a3)
            {
              ++v7;
            }

            ++v11;
            --v10;
          }

          while (v10);
        }

        this = (this + 8);
        --v9;
      }

      while (v8 != a2);
    }

    *a5 = v7;
  }

  return this;
}

void sub_1D9C3E2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int8x16_t *faiss::crosshamming_count_thres<128ul>(int8x16_t *result, unint64_t a2, __int32 a3, void *a4)
{
  v4 = 0;
  if (a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      if (++v5 < a2)
      {
        v7 = 1;
        do
        {
          v8 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(result[v7], *result))))));
          if (vadd_s32(vdup_lane_s32(v8, 1), v8).i32[0] <= a3)
          {
            ++v4;
          }

          ++v7;
        }

        while (v6 != v7);
      }

      ++result;
      --v6;
    }

    while (v5 != a2);
  }

  *a4 = v4;
  return result;
}

uint64_t faiss::crosshamming_count_thres<256ul>(uint64_t result, unint64_t a2, int a3, void *a4)
{
  if (a2)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = a2 - 1;
    do
    {
      if (++v9 < a2)
      {
        v11 = v7 + 1;
        v12 = v10;
        do
        {
          result = faiss::hamming<256ul>(v7, v11);
          if (result <= a3)
          {
            ++v8;
          }

          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v7 += 2;
      --v10;
    }

    while (v9 != a2);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t faiss::crosshamming_count_thres<512ul>(uint64_t result, unint64_t a2, int a3, void *a4)
{
  v4 = 0;
  if (a2)
  {
    v5 = 0;
    do
    {
      if (++v5 < a2)
      {
        v6 = result + 16;
        v7 = v5;
        do
        {
          v8 = 0;
          v9 = 0uLL;
          do
          {
            v9 = vaddq_s32(v9, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v6 + v8), *(result + v8)))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v6 + v8 + 16), *(result + v8 + 16))))))));
            v8 += 32;
          }

          while (v8 != 64);
          if (vaddvq_s32(v9) <= a3)
          {
            ++v4;
          }

          v6 += 64;
          ++v7;
        }

        while (v7 != a2);
      }

      result += 64;
    }

    while (v5 != a2);
  }

  *a4 = v4;
  return result;
}

uint64_t faiss::match_hamming_thres(int8x16_t *this, int8x16_t *a2, const unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6, const unsigned __int8 **a7, uint64_t *a8, int *a9)
{
  v9 = __ROR8__(a6 - 8, 3);
  if (v9 > 2)
  {
    if (v9 == 3)
    {

      return faiss::match_hamming_thres<256ul>(this, a2, a3, a4, a5, a7, a8);
    }

    else
    {
      if (v9 != 7)
      {
        goto LABEL_24;
      }

      return faiss::match_hamming_thres<512ul>(this, a2, a3, a4, a5, a7, a8);
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {

        return faiss::match_hamming_thres<128ul>(this, a2, a3, a4, a5, a7, a8);
      }

LABEL_24:
      memset(&v20, 0, sizeof(v20));
      v16 = snprintf(0, 0, "not implemented for %zu bits", a6);
      std::string::resize(&v20, v16 + 1, 0);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v20;
      }

      else
      {
        v17 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      snprintf(v17, size, "not implemented for %zu bits", a6);
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v20, "size_t faiss::match_hamming_thres(const uint8_t *, const uint8_t *, size_t, size_t, hamdis_t, size_t, int64_t *, hamdis_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/hamming.cpp", 702);
    }

    v11 = 0;
    if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        if (a4)
        {
          for (j = 0; j != a4; ++j)
          {
            v14 = vcnt_s8((a2->i64[j] ^ this->i64[0]));
            v14.i16[0] = vaddlv_u8(v14);
            if (v14.i32[0] <= a5)
            {
              *a7 = i;
              a7[1] = j;
              a7 += 2;
              ++v11;
              *a8 = v14.i32[0];
              a8 = (a8 + 4);
            }
          }
        }

        this = (this + 8);
      }
    }

    return v11;
  }
}

void sub_1D9C3E6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::match_hamming_thres<128ul>(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, signed __int32 a5, void *a6, signed __int32 *a7)
{
  v7 = 0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        for (j = 0; j != a4; ++j)
        {
          v10 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(a2 + 16 * j), *a1))))));
          v11 = vadd_s32(vdup_lane_s32(v10, 1), v10).u32[0];
          if (v11 <= a5)
          {
            *a6 = i;
            a6[1] = j;
            a6 += 2;
            ++v7;
            *a7++ = v11;
          }
        }
      }

      ++a1;
    }
  }

  return v7;
}

uint64_t faiss::match_hamming_thres<256ul>(int8x16_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  if (!a3)
  {
    return 0;
  }

  v13 = 0;
  for (i = 0; i != a3; ++i)
  {
    if (a4)
    {
      v15 = 0;
      v16 = a2;
      do
      {
        v17 = faiss::hamming<256ul>(a1, v16);
        if (v17 <= a5)
        {
          *a6 = i;
          a6[1] = v15;
          a6 += 2;
          ++v13;
          *a7++ = v17;
        }

        v16 += 2;
        ++v15;
      }

      while (a4 != v15);
    }

    a1 += 2;
  }

  return v13;
}

uint64_t faiss::match_hamming_thres<512ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, int *a7)
{
  v7 = 0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        v9 = 0;
        v10 = a2;
        do
        {
          v11 = 0;
          v12 = 0uLL;
          do
          {
            v12 = vaddq_s32(v12, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v10 + v11), *(a1 + v11)))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v10 + v11 + 16), *(a1 + v11 + 16))))))));
            v11 += 32;
          }

          while (v11 != 64);
          v13 = vaddvq_s32(v12);
          if (v13 <= a5)
          {
            *a6 = i;
            a6[1] = v9;
            a6 += 2;
            ++v7;
            *a7++ = v13;
          }

          v10 += 64;
          ++v9;
        }

        while (v9 != a4);
      }

      a1 += 64;
    }
  }

  return v7;
}

void *faiss::generalized_hammings_knn_hc(void *result, uint64_t a2, int8x16_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    faiss::HeapArray<faiss::CMax<int,long long>>::heapify();
  }

  if (*result >= 1)
  {
    v10 = 0;
    v12 = result[2];
    v11 = result[3];
    v13 = result[1];
    v14 = result[1] & 0xFFFFFFFELL;
    v15 = a5 & 7;
    v16 = a5 >> 3;
    v17 = *result & 0x7FFFFFFFLL;
    v18 = 8 * (a5 >> 3);
    v19.i64[0] = 0x101010101010101;
    v19.i64[1] = 0x101010101010101;
    v20 = a2;
    do
    {
      v21 = v10 * a5;
      result = (v11 + 4 * v10 * v13);
      v22 = v12 + 8 * v10 * v13;
      if (a5 == 32)
      {
        if (!a4)
        {
          goto LABEL_85;
        }

        v55 = 0;
        v56 = (a2 + v21);
        v58 = *v56;
        v57 = v56[1];
        v59 = result - 4;
        v60 = v22 - 8;
        v61 = a3;
        while (2)
        {
          v62 = veorq_s8(v61[1], v57);
          v63 = veorq_s8(*v61, v58);
          v64 = vorrq_s8(vshrq_n_u64(v62, 1uLL), v62);
          v65 = vorrq_s8(vshrq_n_u64(v63, 1uLL), v63);
          v66 = vorrq_s8(vshrq_n_u64(v64, 2uLL), v64);
          v67 = vorrq_s8(vshrq_n_u64(v65, 2uLL), v65);
          v68 = vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(vandq_s8(vorrq_s8(vshrq_n_u64(v67, 4uLL), v67), v19))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(vandq_s8(vorrq_s8(vshrq_n_u64(v66, 4uLL), v66), v19)))))));
          if (v68 >= *result)
          {
            goto LABEL_60;
          }

          if (!v14)
          {
            v75 = 1;
            goto LABEL_59;
          }

          v69 = 3;
          v70 = 2;
          v71 = 1;
LABEL_49:
          if (v70 == v13)
          {
            v72 = *&v59[4 * v13];
LABEL_52:
            v74 = v22 - 8;
            v69 = v70;
            if (v72 < v68)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v72 = *&v59[4 * v70];
            v73 = result[v70 / 2];
            if (v72 > v73)
            {
              goto LABEL_52;
            }

            v72 = result[v70 / 2];
            v74 = v12 + 8 * v10 * v13;
            if (v73 < v68)
            {
LABEL_58:
              v75 = v71;
LABEL_59:
              *&v59[4 * v75] = v68;
              *(v60 + 8 * v75) = v55;
LABEL_60:
              v61 += 2;
              if (++v55 == a4)
              {
                goto LABEL_85;
              }

              continue;
            }
          }

          break;
        }

        *&v59[4 * v71] = v72;
        *(v60 + 8 * v71) = *(v74 + 8 * v70);
        v75 = v69;
        v70 = 2 * v69;
        v69 = (2 * v69) | 1;
        v71 = v75;
        if (v70 > v13)
        {
          goto LABEL_59;
        }

        goto LABEL_49;
      }

      if (a5 == 16)
      {
        if (!a4)
        {
          goto LABEL_85;
        }

        v38 = 0;
        v39 = *(a2 + v21);
        v40 = result - 4;
        v41 = v22 - 8;
        v42 = a3;
        while (2)
        {
          v43 = *v42++;
          v44 = veorq_s8(v43, v39);
          v45 = vorrq_s8(vshrq_n_u64(v44, 1uLL), v44);
          v46 = vorrq_s8(vshrq_n_u64(v45, 2uLL), v45);
          *v46.i8 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(vandq_s8(vorrq_s8(vshrq_n_u64(v46, 4uLL), v46), v19))))));
          v47 = vadd_s32(vdup_lane_s32(*v46.i8, 1), *v46.i8).u32[0];
          if (v47 >= *result)
          {
            goto LABEL_42;
          }

          if (!v14)
          {
            v54 = 1;
            goto LABEL_41;
          }

          v48 = 3;
          v49 = 2;
          v50 = 1;
LABEL_31:
          if (v49 == v13)
          {
            v51 = *&v40[4 * v13];
LABEL_34:
            v53 = v22 - 8;
            v48 = v49;
            if (v51 < v47)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v51 = *&v40[4 * v49];
            v52 = result[v49 / 2];
            if (v51 > v52)
            {
              goto LABEL_34;
            }

            v51 = result[v49 / 2];
            v53 = v12 + 8 * v10 * v13;
            if (v52 < v47)
            {
LABEL_40:
              v54 = v50;
LABEL_41:
              *&v40[4 * v54] = v47;
              *(v41 + 8 * v54) = v38;
LABEL_42:
              if (++v38 == a4)
              {
                goto LABEL_85;
              }

              continue;
            }
          }

          break;
        }

        *&v40[4 * v50] = v51;
        *(v41 + 8 * v50) = *(v53 + 8 * v49);
        v54 = v48;
        v49 = 2 * v48;
        v48 = (2 * v48) | 1;
        v50 = v54;
        if (v49 > v13)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }

      if (a5 != 8)
      {
        if (v15)
        {
          faiss::generalized_hammings_knn_hc();
        }

        if (!a4)
        {
          goto LABEL_85;
        }

        v76 = 0;
        v77 = result - 4;
        v78 = v22 - 8;
        v79 = a3;
        while (2)
        {
          if (v16 < 1)
          {
            v81 = 0;
          }

          else
          {
            v80 = 0;
            v81 = 0;
            do
            {
              v82 = v79->i64[v80 / 8] ^ *(v20 + v80) | ((v79->i64[v80 / 8] ^ *(v20 + v80)) >> 1);
              v83 = vcnt_s8(((v82 | (v82 >> 2) | ((v82 | (v82 >> 2)) >> 4)) & 0x101010101010101));
              v83.i16[0] = vaddlv_u8(v83);
              v81 += v83.i32[0];
              v80 += 8;
            }

            while (v18 != v80);
          }

          if (v81 >= *result)
          {
            goto LABEL_84;
          }

          if (!v14)
          {
            v90 = 1;
            goto LABEL_83;
          }

          v84 = 3;
          v85 = 2;
          v86 = 1;
LABEL_73:
          if (v85 == v13)
          {
            v87 = *&v77[4 * v13];
LABEL_76:
            v89 = v22 - 8;
            v84 = v85;
            if (v87 < v81)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v87 = *&v77[4 * v85];
            v88 = result[v85 / 2];
            if (v87 > v88)
            {
              goto LABEL_76;
            }

            v87 = result[v85 / 2];
            v89 = v12 + 8 * v10 * v13;
            if (v88 < v81)
            {
LABEL_82:
              v90 = v86;
LABEL_83:
              *&v77[4 * v90] = v81;
              *(v78 + 8 * v90) = v76;
LABEL_84:
              v79 = (v79 + a5);
              if (++v76 == a4)
              {
                goto LABEL_85;
              }

              continue;
            }
          }

          break;
        }

        *&v77[4 * v86] = v87;
        *(v78 + 8 * v86) = *(v89 + 8 * v85);
        v90 = v84;
        v85 = 2 * v84;
        v84 = (2 * v84) | 1;
        v86 = v90;
        if (v85 > v13)
        {
          goto LABEL_83;
        }

        goto LABEL_73;
      }

      if (!a4)
      {
        goto LABEL_85;
      }

      v23 = 0;
      v24 = *(a2 + v21);
      v25 = result - 4;
      v26 = v22 - 8;
      v27 = a3;
      do
      {
        v28 = *v27++;
        v29 = v28 ^ v24 | ((v28 ^ v24) >> 1) | ((v28 ^ v24 | ((v28 ^ v24) >> 1)) >> 2);
        v30 = vcnt_s8(((v29 | (v29 >> 4)) & 0x101010101010101));
        v30.i16[0] = vaddlv_u8(v30);
        if (*result <= v30.i32[0])
        {
          goto LABEL_24;
        }

        if (!v14)
        {
          v37 = 1;
          goto LABEL_23;
        }

        v31 = 3;
        v32 = 2;
        v33 = 1;
        while (1)
        {
          if (v32 == v13)
          {
            v34 = *&v25[4 * v13];
            goto LABEL_16;
          }

          v34 = *&v25[4 * v32];
          v35 = result[v32 / 2];
          if (v34 <= v35)
          {
            break;
          }

LABEL_16:
          v36 = v22 - 8;
          v31 = v32;
          if (v34 < v30.i32[0])
          {
            goto LABEL_22;
          }

LABEL_19:
          *&v25[4 * v33] = v34;
          *(v26 + 8 * v33) = *(v36 + 8 * v32);
          v37 = v31;
          v32 = 2 * v31;
          v31 = (2 * v31) | 1;
          v33 = v37;
          if (v32 > v13)
          {
            goto LABEL_23;
          }
        }

        v34 = result[v32 / 2];
        v36 = v12 + 8 * v10 * v13;
        if (v35 >= v30.i32[0])
        {
          goto LABEL_19;
        }

LABEL_22:
        v37 = v33;
LABEL_23:
        *&v25[4 * v37] = v30.i32[0];
        *(v26 + 8 * v37) = v23;
LABEL_24:
        ++v23;
      }

      while (v23 != a4);
LABEL_85:
      ++v10;
      v20 += a5;
    }

    while (v10 != v17);
  }

  return result;
}

uint64_t faiss::HammingComputerDefault::hamming(faiss::HammingComputerDefault *this, const unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *this;
  v4 = *(this + 2);
  v5 = v4;
  v6 = v4 & 7;
  if (v6 > 3)
  {
    v9 = 0;
    v10 = 0;
    if ((v4 & 7u) <= 5)
    {
      if (v6 == 4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v6 == 6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v4 & 7u) > 1)
  {
    v11 = 0;
    v12 = 0;
    if (v6 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = v4 & 7;
  v8 = 0;
  if ((v4 & 7) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v21 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v21.i16[0] = vaddlv_u8(v21);
    v7 = (v8 + v21.i32[0]);
    v6 = v2 + 1;
LABEL_12:
    v13 = __OFSUB__(v4, 8);
    v4 -= 8;
    if (v4 < 0 != v13)
    {
      break;
    }

    v14 = vcnt_s8((*&a2[8 * v6] ^ *(v3 + 8 * v6)));
    v14.i16[0] = vaddlv_u8(v14);
    v9 = v7 + v14.i32[0];
    v2 = v6 + 1;
LABEL_14:
    v15 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v15.i16[0] = vaddlv_u8(v15);
    v10 = v9 + v15.i32[0];
    ++v2;
LABEL_15:
    v16 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v16.i16[0] = vaddlv_u8(v16);
    v9 = v10 + v16.i32[0];
    ++v2;
LABEL_16:
    v17 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v17.i16[0] = vaddlv_u8(v17);
    v10 = v9 + v17.i32[0];
    ++v2;
LABEL_17:
    v18 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v18.i16[0] = vaddlv_u8(v18);
    v11 = v10 + v18.i32[0];
    ++v2;
LABEL_18:
    v19 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v19.i16[0] = vaddlv_u8(v19);
    v12 = v11 + v19.i32[0];
    ++v2;
LABEL_19:
    v20 = vcnt_s8((*&a2[8 * v2] ^ *(v3 + 8 * v2)));
    v20.i16[0] = vaddlv_u8(v20);
    v8 = v12 + v20.i32[0];
    ++v2;
  }

  v22 = *(this + 3);
  if (v22)
  {
    v23 = (v3 + 8 * v5);
    v24 = &a2[8 * v5];
    if (v22 <= 3)
    {
      if (v22 == 1)
      {
        return v7 + faiss::hamdis_tab_ham_bytes[*v24 ^ *v23];
      }

      if (v22 == 2)
      {
LABEL_37:
        LODWORD(v7) = v7 + faiss::hamdis_tab_ham_bytes[v24[1] ^ v23[1]];
        return v7 + faiss::hamdis_tab_ham_bytes[*v24 ^ *v23];
      }

      if (v22 != 3)
      {
        return v7;
      }

LABEL_36:
      LODWORD(v7) = v7 + faiss::hamdis_tab_ham_bytes[v24[2] ^ v23[2]];
      goto LABEL_37;
    }

    if (v22 <= 5)
    {
      if (v22 == 4)
      {
LABEL_35:
        LODWORD(v7) = v7 + faiss::hamdis_tab_ham_bytes[v24[3] ^ v23[3]];
        goto LABEL_36;
      }

LABEL_34:
      LODWORD(v7) = v7 + faiss::hamdis_tab_ham_bytes[v24[4] ^ v23[4]];
      goto LABEL_35;
    }

    if (v22 == 6)
    {
LABEL_33:
      LODWORD(v7) = v7 + faiss::hamdis_tab_ham_bytes[v24[5] ^ v23[5]];
      goto LABEL_34;
    }

    if (v22 == 7)
    {
      LODWORD(v7) = v7 + faiss::hamdis_tab_ham_bytes[v24[6] ^ v23[6]];
      goto LABEL_33;
    }
  }

  return v7;
}

uint64_t *faiss::HCounterState<faiss::HammingComputer4>::update_counter(uint64_t *result, _DWORD *a2, uint64_t a3, int8x8_t a4)
{
  v4 = *(result + 5);
  a4.i32[0] = *(result + 4) ^ *a2;
  v5 = vcnt_s8(a4);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0] >= v4;
  if (v5.i32[0] <= v4)
  {
    v7 = *(result + 8);
    if (v6)
    {
      v17 = *(result + 7);
      if (v17 < v7)
      {
        *(result + 7) = v17 + 1;
        v18 = *result;
        *(result[1] + 8 * (v17 + v7 * v5.i32[0])) = a3;
        *(v18 + 4 * v5.u32[0]) = v17 + 1;
      }
    }

    else
    {
      v8 = *result;
      v9 = result[1];
      v10 = *(*result + 4 * v5.u32[0]);
      *(*result + 4 * v5.u32[0]) = v10 + 1;
      *(v9 + 8 * (v10 + v7 * v5.i32[0])) = a3;
      v11 = *(result + 6) + 1;
      v12 = *(result + 8);
      *(result + 6) = v11;
      if (v11 == v12)
      {
        v13 = *(result + 5);
        v14 = v13 - 1;
        do
        {
          v15 = __OFSUB__(v13, 1);
          LODWORD(v13) = v13 - 1;
          if (v13 < 0 != v15)
          {
            break;
          }

          *(result + 5) = v13;
          v16 = *(v8 + 4 * v14);
          *(result + 6) = v11 - v16;
          *(result + 7) = v16;
          --v14;
        }

        while (!v16);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::HCounterState<faiss::HammingComputer4>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *faiss::HCounterState<faiss::HammingComputer8>::update_counter(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = vcnt_s8((result[2] ^ *a2));
  v3.i16[0] = vaddlv_u8(v3);
  v4 = *(result + 6);
  if (v4 >= v3.i32[0])
  {
    v5 = *(result + 9);
    if (v4 <= v3.i32[0])
    {
      v15 = *(result + 8);
      if (v15 < v5)
      {
        *(result + 8) = v15 + 1;
        v16 = *result;
        *(result[1] + 8 * (v15 + v5 * v3.i32[0])) = a3;
        *(v16 + 4 * v3.u32[0]) = v15 + 1;
      }
    }

    else
    {
      v6 = *result;
      v7 = result[1];
      v8 = *(*result + 4 * v3.u32[0]);
      *(*result + 4 * v3.u32[0]) = v8 + 1;
      *(v7 + 8 * (v8 + v5 * v3.i32[0])) = a3;
      v9 = *(result + 7) + 1;
      v10 = *(result + 9);
      *(result + 7) = v9;
      if (v9 == v10)
      {
        v11 = *(result + 6);
        v12 = v11 - 1;
        do
        {
          v13 = __OFSUB__(v11, 1);
          LODWORD(v11) = v11 - 1;
          if (v11 < 0 != v13)
          {
            break;
          }

          *(result + 6) = v11;
          v14 = *(v6 + 4 * v12);
          *(result + 7) = v9 - v14;
          *(result + 8) = v14;
          --v12;
        }

        while (!v14);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::HCounterState<faiss::HammingComputer8>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int8x16_t *faiss::HCounterState<faiss::HammingComputer16>::update_counter(int8x16_t *result, int8x16_t *a2, uint64_t a3)
{
  v3 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(result[1], *a2))))));
  v4 = vadd_s32(vdup_lane_s32(v3, 1), v3).u32[0];
  v5 = result[2].u32[0];
  if (v4 <= v5)
  {
    v6 = result[2].i32[3];
    if (v4 >= v5)
    {
      v16 = result[2].i32[2];
      if (v16 < v6)
      {
        result[2].i32[2] = v16 + 1;
        v17 = result->i64[0];
        *(result->i64[1] + 8 * (v16 + v6 * v4)) = a3;
        *(v17 + 4 * v4) = v16 + 1;
      }
    }

    else
    {
      v7 = result->i64[0];
      v8 = result->i64[1];
      v9 = *(result->i64[0] + 4 * v4);
      *(result->i64[0] + 4 * v4) = v9 + 1;
      *(v8 + 8 * (v9 + v6 * v4)) = a3;
      v10 = result[2].i32[1] + 1;
      v11 = result[2].i32[3];
      result[2].i32[1] = v10;
      if (v10 == v11)
      {
        v12 = result[2].u32[0];
        v13 = v12 - 1;
        do
        {
          v14 = __OFSUB__(v12, 1);
          LODWORD(v12) = v12 - 1;
          if (v12 < 0 != v14)
          {
            break;
          }

          result[2].i32[0] = v12;
          v15 = *(v7 + 4 * v13);
          result[2].i32[1] = v10 - v15;
          result[2].i32[2] = v15;
          --v13;
        }

        while (!v15);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::HCounterState<faiss::HammingComputer16>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int8x16_t *faiss::HCounterState<faiss::HammingComputer32>::update_counter(int8x16_t *result, int8x16_t *a2, uint64_t a3)
{
  v3 = vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(result[1], *a2))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(result[2], a2[1])))))));
  v4 = result[3].u32[0];
  if (v3 <= v4)
  {
    v5 = result[3].i32[3];
    if (v3 >= v4)
    {
      v15 = result[3].i32[2];
      if (v15 < v5)
      {
        result[3].i32[2] = v15 + 1;
        v16 = result->i64[0];
        *(result->i64[1] + 8 * (v15 + v5 * v3)) = a3;
        *(v16 + 4 * v3) = v15 + 1;
      }
    }

    else
    {
      v6 = result->i64[0];
      v7 = result->i64[1];
      v8 = *(result->i64[0] + 4 * v3);
      *(result->i64[0] + 4 * v3) = v8 + 1;
      *(v7 + 8 * (v8 + v5 * v3)) = a3;
      v9 = result[3].i32[1] + 1;
      v10 = result[3].i32[3];
      result[3].i32[1] = v9;
      if (v9 == v10)
      {
        v11 = result[3].u32[0];
        v12 = v11 - 1;
        do
        {
          v13 = __OFSUB__(v11, 1);
          LODWORD(v11) = v11 - 1;
          if (v11 < 0 != v13)
          {
            break;
          }

          result[3].i32[0] = v11;
          v14 = *(v6 + 4 * v12);
          result[3].i32[1] = v9 - v14;
          result[3].i32[2] = v14;
          --v12;
        }

        while (!v14);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::HCounterState<faiss::HammingComputer32>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t faiss::HCounterState<faiss::HammingComputerDefault>::update_counter(uint64_t *a1, const unsigned __int8 *a2, uint64_t a3)
{
  result = faiss::HammingComputerDefault::hamming((a1 + 2), a2);
  v6 = *(a1 + 8);
  if (result <= v6)
  {
    v7 = *(a1 + 11);
    if (result >= v6)
    {
      v16 = *(a1 + 10);
      if (v16 < v7)
      {
        *(a1 + 10) = v16 + 1;
        v17 = *a1;
        *(a1[1] + 8 * (v16 + v7 * result)) = a3;
        *(v17 + 4 * result) = v16 + 1;
      }
    }

    else
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = *(*a1 + 4 * result);
      *(*a1 + 4 * result) = v10 + 1;
      *(v9 + 8 * (v10 + v7 * result)) = a3;
      v11 = *(a1 + 9) + 1;
      LODWORD(v9) = *(a1 + 11);
      *(a1 + 9) = v11;
      if (v11 == v9)
      {
        v12 = *(a1 + 8);
        v13 = v12 - 1;
        do
        {
          v14 = __OFSUB__(v12, 1);
          LODWORD(v12) = v12 - 1;
          if (v12 < 0 != v14)
          {
            break;
          }

          *(a1 + 8) = v12;
          v15 = *(v8 + 4 * v13);
          *(a1 + 9) = v11 - v15;
          *(a1 + 10) = v15;
          --v13;
        }

        while (!v15);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::HCounterState<faiss::HammingComputerDefault>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void faiss::RangeSearchPartialResult::~RangeSearchPartialResult(faiss::RangeSearchPartialResult *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  faiss::BufferList::~BufferList(this);
}

float faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>(float *a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (!a4)
  {
    return 0.0;
  }

  if (a5 >= a3)
  {
    if (a6)
    {
      *a6 = a5;
    }

    return -3.4028e38;
  }

  if (a3 <= 2)
  {
    memset(&v34, 0, sizeof(v34));
    v29 = snprintf(0, 0, "Error: '%s' failed", "n >= 3");
    std::string::resize(&v34, v29 + 1, 0);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v34;
    }

    else
    {
      v30 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    snprintf(v30, size, "Error: '%s' failed", "n >= 3");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v34, "typename C::T faiss::partitioning::partition_fuzzy_median3(typename C::T *, typename C::TI *, size_t, size_t, size_t, size_t *) [C = faiss::CMin<float, long long>]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/partitioning.cpp", 146);
  }

  v9 = a4;
  v12 = 0;
  v13 = *a1;
  v14 = *(a1 + ((2 * a3) & 0xFFFFFFFFFFFFFFFCLL));
  v15 = &a1[a3];
  v16 = *(v15 - 1);
  if (*a1 <= v14)
  {
    v17 = *a1;
  }

  else
  {
    v17 = *(a1 + ((2 * a3) & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (*a1 <= v14)
  {
    v13 = *(a1 + ((2 * a3) & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v17 >= v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v15 - 1);
  }

  v19 = 3.4028e38;
  v20 = -3.4028e38;
  if (v13 >= v16)
  {
    v21 = v18;
  }

  else
  {
    v21 = v13;
  }

  while (2)
  {
    v22 = 0;
    v33 = 0;
    v34.__r_.__value_.__r.__words[0] = 0;
    do
    {
      v23 = a1[v22];
      if (v23 <= v21)
      {
        if (v23 != v21)
        {
          goto LABEL_21;
        }

        v24 = &v34;
      }

      else
      {
        v24 = &v33;
      }

      ++v24->__r_.__value_.__r.__words[0];
LABEL_21:
      ++v22;
    }

    while (a3 != v22);
    v25 = v33;
    if (v33 <= v9)
    {
      v19 = v21;
      if (v34.__r_.__value_.__r.__words[0] + v33 < v9)
      {
        goto LABEL_26;
      }

      v27 = v9;
    }

    else
    {
      v20 = v21;
      if (v33 <= a5)
      {
        v27 = v33;
        break;
      }

LABEL_26:
      v26 = faiss::partitioning::sample_threshold_median3<faiss::CMin<float,long long>>(a1, a3, v19, v20);
      if (v26 != v19)
      {
        v21 = v26;
        if (++v12 == 200)
        {
          v27 = 0;
          break;
        }

        continue;
      }

      v27 = 0;
    }

    break;
  }

  if ((v27 - v25) < 0)
  {
    v21 = nextafterf(v21, INFINITY);
    v27 = v9;
  }

  else
  {
    v9 = v27 - v25;
    if (v27 - v25 > v34.__r_.__value_.__r.__words[0])
    {
      faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
    }
  }

  if (v27 != faiss::partitioning::compress_array<faiss::CMin<float,long long>>(a1, a2, a3, v9, v21))
  {
    faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
  }

  if (a6)
  {
    *a6 = v27;
  }

  return v21;
}

void sub_1D9C3F98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float faiss::partitioning::partition_fuzzy_median3<faiss::CMax<float,long long>>(float *a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (!a4)
  {
    return 0.0;
  }

  if (a5 >= a3)
  {
    if (a6)
    {
      *a6 = a5;
    }

    return 3.4028e38;
  }

  if (a3 <= 2)
  {
    memset(&v34, 0, sizeof(v34));
    v29 = snprintf(0, 0, "Error: '%s' failed", "n >= 3");
    std::string::resize(&v34, v29 + 1, 0);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v34;
    }

    else
    {
      v30 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    snprintf(v30, size, "Error: '%s' failed", "n >= 3");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v34, "typename C::T faiss::partitioning::partition_fuzzy_median3(typename C::T *, typename C::TI *, size_t, size_t, size_t, size_t *) [C = faiss::CMax<float, long long>]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/partitioning.cpp", 146);
  }

  v9 = a4;
  v12 = 0;
  v13 = *a1;
  v14 = *(a1 + ((2 * a3) & 0xFFFFFFFFFFFFFFFCLL));
  v15 = &a1[a3];
  v16 = *(v15 - 1);
  if (*a1 <= v14)
  {
    v17 = *a1;
  }

  else
  {
    v17 = *(a1 + ((2 * a3) & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (*a1 <= v14)
  {
    v13 = *(a1 + ((2 * a3) & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v17 >= v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v15 - 1);
  }

  v19 = -3.4028e38;
  v20 = 3.4028e38;
  if (v13 >= v16)
  {
    v21 = v18;
  }

  else
  {
    v21 = v13;
  }

  while (2)
  {
    v22 = 0;
    v33 = 0;
    v34.__r_.__value_.__r.__words[0] = 0;
    do
    {
      v23 = a1[v22];
      if (v23 >= v21)
      {
        if (v23 != v21)
        {
          goto LABEL_21;
        }

        v24 = &v34;
      }

      else
      {
        v24 = &v33;
      }

      ++v24->__r_.__value_.__r.__words[0];
LABEL_21:
      ++v22;
    }

    while (a3 != v22);
    v25 = v33;
    if (v33 <= v9)
    {
      v19 = v21;
      if (v34.__r_.__value_.__r.__words[0] + v33 < v9)
      {
        goto LABEL_26;
      }

      v27 = v9;
    }

    else
    {
      v20 = v21;
      if (v33 <= a5)
      {
        v27 = v33;
        break;
      }

LABEL_26:
      v26 = faiss::partitioning::sample_threshold_median3<faiss::CMax<float,long long>>(a1, a3, v19, v20);
      if (v26 != v19)
      {
        v21 = v26;
        if (++v12 == 200)
        {
          v27 = 0;
          break;
        }

        continue;
      }

      v27 = 0;
    }

    break;
  }

  if ((v27 - v25) < 0)
  {
    v21 = nextafterf(v21, -INFINITY);
    v27 = v9;
  }

  else
  {
    v9 = v27 - v25;
    if (v27 - v25 > v34.__r_.__value_.__r.__words[0])
    {
      faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
    }
  }

  if (v27 != faiss::partitioning::compress_array<faiss::CMax<float,long long>>(a1, a2, a3, v9, v21))
  {
    faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
  }

  if (a6)
  {
    *a6 = v27;
  }

  return v21;
}

void sub_1D9C3FC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::partitioning::partition_fuzzy_median3<faiss::CMin<unsigned short,long long>>(unsigned __int16 *a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (!a4)
  {
    if (a6)
    {
      v16 = 0;
      *a6 = 0xFFFFLL;
      return v16;
    }

    return 0;
  }

  if (a5 >= a3)
  {
    if (a6)
    {
      v16 = 0;
      *a6 = a5;
      return v16;
    }

    return 0;
  }

  if (a3 <= 2)
  {
    memset(&v32, 0, sizeof(v32));
    v25 = snprintf(0, 0, "Error: '%s' failed", "n >= 3");
    std::string::resize(&v32, v25 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v26, size, "Error: '%s' failed", "n >= 3");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v32, "typename C::T faiss::partitioning::partition_fuzzy_median3(typename C::T *, typename C::TI *, size_t, size_t, size_t, size_t *) [C = faiss::CMin<unsigned short, long long>]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/partitioning.cpp", 146);
  }

  v8 = a4;
  v10 = 0;
  v11 = 0;
  v12 = *a1;
  v13 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  if (v12 >= v13)
  {
    v14 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v14 = *a1;
  }

  if (v12 <= v13)
  {
    v12 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  v15 = a1[a3 - 1];
  if (v14 <= v15)
  {
    LOWORD(v14) = a1[a3 - 1];
  }

  if (v12 >= v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = -1;
  while (2)
  {
    v18 = 0;
    v31 = 0;
    v32.__r_.__value_.__r.__words[0] = 0;
    do
    {
      v19 = a1[v18];
      if (v19 <= v16)
      {
        if (v19 != v16)
        {
          goto LABEL_21;
        }

        v20 = &v32;
      }

      else
      {
        v20 = &v31;
      }

      ++v20->__r_.__value_.__r.__words[0];
LABEL_21:
      ++v18;
    }

    while (a3 != v18);
    v21 = v31;
    if (v31 <= v8)
    {
      v17 = v16;
      if (v32.__r_.__value_.__r.__words[0] + v31 < v8)
      {
        goto LABEL_26;
      }

      v23 = v8;
    }

    else
    {
      v11 = v16;
      if (v31 <= a5)
      {
        v23 = v31;
        break;
      }

LABEL_26:
      v22 = faiss::partitioning::sample_threshold_median3<faiss::CMin<unsigned short,long long>>(a1, a3, v17, v11);
      if (v22 != v17)
      {
        v16 = v22;
        if (++v10 == 200)
        {
          v23 = 0;
          break;
        }

        continue;
      }

      v23 = 0;
    }

    break;
  }

  if ((v23 - v21) < 0)
  {
    ++v16;
    v23 = v8;
  }

  else
  {
    v8 = v23 - v21;
    if (v23 - v21 > v32.__r_.__value_.__r.__words[0])
    {
      faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
    }
  }

  if (v23 != faiss::partitioning::compress_array<faiss::CMin<unsigned short,long long>>(a1, a2, a3, v16, v8))
  {
    faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
  }

  if (a6)
  {
    *a6 = v23;
  }

  return v16;
}

void sub_1D9C3FF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::partitioning::partition_fuzzy_median3<faiss::CMax<unsigned short,long long>>(unsigned __int16 *a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (!a4)
  {
    v16 = 0;
    if (a6)
    {
      *a6 = 0;
    }

    return v16;
  }

  if (a5 >= a3)
  {
    if (a6)
    {
      *a6 = a5;
    }

    return -1;
  }

  if (a3 <= 2)
  {
    memset(&v32, 0, sizeof(v32));
    v25 = snprintf(0, 0, "Error: '%s' failed", "n >= 3");
    std::string::resize(&v32, v25 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v26, size, "Error: '%s' failed", "n >= 3");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v32, "typename C::T faiss::partitioning::partition_fuzzy_median3(typename C::T *, typename C::TI *, size_t, size_t, size_t, size_t *) [C = faiss::CMax<unsigned short, long long>]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/partitioning.cpp", 146);
  }

  v8 = a4;
  v10 = 0;
  v11 = 0;
  v12 = *a1;
  v13 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  if (v12 >= v13)
  {
    v14 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v14 = *a1;
  }

  if (v12 <= v13)
  {
    v12 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  v15 = a1[a3 - 1];
  if (v14 <= v15)
  {
    LOWORD(v14) = a1[a3 - 1];
  }

  if (v12 >= v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = -1;
  while (2)
  {
    v18 = 0;
    v31 = 0;
    v32.__r_.__value_.__r.__words[0] = 0;
    do
    {
      v19 = a1[v18];
      if (v19 >= v16)
      {
        if (v19 != v16)
        {
          goto LABEL_21;
        }

        v20 = &v32;
      }

      else
      {
        v20 = &v31;
      }

      ++v20->__r_.__value_.__r.__words[0];
LABEL_21:
      ++v18;
    }

    while (a3 != v18);
    v21 = v31;
    if (v31 <= v8)
    {
      v11 = v16;
      if (v32.__r_.__value_.__r.__words[0] + v31 < v8)
      {
        goto LABEL_26;
      }

      v23 = v8;
    }

    else
    {
      v17 = v16;
      if (v31 <= a5)
      {
        v23 = v31;
        break;
      }

LABEL_26:
      v22 = faiss::partitioning::sample_threshold_median3<faiss::CMax<unsigned short,long long>>(a1, a3, v11, v17);
      if (v22 != v11)
      {
        v16 = v22;
        if (++v10 == 200)
        {
          v23 = 0;
          break;
        }

        continue;
      }

      v23 = 0;
    }

    break;
  }

  if ((v23 - v21) < 0)
  {
    --v16;
    v23 = v8;
  }

  else
  {
    v8 = v23 - v21;
    if (v23 - v21 > v32.__r_.__value_.__r.__words[0])
    {
      faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
    }
  }

  if (v23 != faiss::partitioning::compress_array<faiss::CMax<unsigned short,long long>>(a1, a2, a3, v16, v8))
  {
    faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
  }

  if (a6)
  {
    *a6 = v23;
  }

  return v16;
}

void sub_1D9C40210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::partitioning::partition_fuzzy_median3<faiss::CMin<unsigned short,int>>(unsigned __int16 *a1, _DWORD *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (!a4)
  {
    if (a6)
    {
      v16 = 0;
      *a6 = 0xFFFFLL;
      return v16;
    }

    return 0;
  }

  if (a5 >= a3)
  {
    if (a6)
    {
      v16 = 0;
      *a6 = a5;
      return v16;
    }

    return 0;
  }

  if (a3 <= 2)
  {
    memset(&v32, 0, sizeof(v32));
    v25 = snprintf(0, 0, "Error: '%s' failed", "n >= 3");
    std::string::resize(&v32, v25 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v26, size, "Error: '%s' failed", "n >= 3");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v32, "typename C::T faiss::partitioning::partition_fuzzy_median3(typename C::T *, typename C::TI *, size_t, size_t, size_t, size_t *) [C = faiss::CMin<unsigned short, int>]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/partitioning.cpp", 146);
  }

  v8 = a4;
  v10 = 0;
  v11 = 0;
  v12 = *a1;
  v13 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  if (v12 >= v13)
  {
    v14 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v14 = *a1;
  }

  if (v12 <= v13)
  {
    v12 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  v15 = a1[a3 - 1];
  if (v14 <= v15)
  {
    LOWORD(v14) = a1[a3 - 1];
  }

  if (v12 >= v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = -1;
  while (2)
  {
    v18 = 0;
    v31 = 0;
    v32.__r_.__value_.__r.__words[0] = 0;
    do
    {
      v19 = a1[v18];
      if (v19 <= v16)
      {
        if (v19 != v16)
        {
          goto LABEL_21;
        }

        v20 = &v32;
      }

      else
      {
        v20 = &v31;
      }

      ++v20->__r_.__value_.__r.__words[0];
LABEL_21:
      ++v18;
    }

    while (a3 != v18);
    v21 = v31;
    if (v31 <= v8)
    {
      v17 = v16;
      if (v32.__r_.__value_.__r.__words[0] + v31 < v8)
      {
        goto LABEL_26;
      }

      v23 = v8;
    }

    else
    {
      v11 = v16;
      if (v31 <= a5)
      {
        v23 = v31;
        break;
      }

LABEL_26:
      v22 = faiss::partitioning::sample_threshold_median3<faiss::CMin<unsigned short,long long>>(a1, a3, v17, v11);
      if (v22 != v17)
      {
        v16 = v22;
        if (++v10 == 200)
        {
          v23 = 0;
          break;
        }

        continue;
      }

      v23 = 0;
    }

    break;
  }

  if ((v23 - v21) < 0)
  {
    ++v16;
    v23 = v8;
  }

  else
  {
    v8 = v23 - v21;
    if (v23 - v21 > v32.__r_.__value_.__r.__words[0])
    {
      faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
    }
  }

  if (v23 != faiss::partitioning::compress_array<faiss::CMin<unsigned short,int>>(a1, a2, a3, v16, v8))
  {
    faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
  }

  if (a6)
  {
    *a6 = v23;
  }

  return v16;
}

void sub_1D9C404E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::partitioning::partition_fuzzy_median3<faiss::CMax<unsigned short,int>>(unsigned __int16 *a1, _DWORD *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (!a4)
  {
    v16 = 0;
    if (a6)
    {
      *a6 = 0;
    }

    return v16;
  }

  if (a5 >= a3)
  {
    if (a6)
    {
      *a6 = a5;
    }

    return -1;
  }

  if (a3 <= 2)
  {
    memset(&v32, 0, sizeof(v32));
    v25 = snprintf(0, 0, "Error: '%s' failed", "n >= 3");
    std::string::resize(&v32, v25 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v26, size, "Error: '%s' failed", "n >= 3");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v32, "typename C::T faiss::partitioning::partition_fuzzy_median3(typename C::T *, typename C::TI *, size_t, size_t, size_t, size_t *) [C = faiss::CMax<unsigned short, int>]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/partitioning.cpp", 146);
  }

  v8 = a4;
  v10 = 0;
  v11 = 0;
  v12 = *a1;
  v13 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  if (v12 >= v13)
  {
    v14 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v14 = *a1;
  }

  if (v12 <= v13)
  {
    v12 = *(a1 + (a3 & 0xFFFFFFFFFFFFFFFELL));
  }

  v15 = a1[a3 - 1];
  if (v14 <= v15)
  {
    LOWORD(v14) = a1[a3 - 1];
  }

  if (v12 >= v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = -1;
  while (2)
  {
    v18 = 0;
    v31 = 0;
    v32.__r_.__value_.__r.__words[0] = 0;
    do
    {
      v19 = a1[v18];
      if (v19 >= v16)
      {
        if (v19 != v16)
        {
          goto LABEL_21;
        }

        v20 = &v32;
      }

      else
      {
        v20 = &v31;
      }

      ++v20->__r_.__value_.__r.__words[0];
LABEL_21:
      ++v18;
    }

    while (a3 != v18);
    v21 = v31;
    if (v31 <= v8)
    {
      v11 = v16;
      if (v32.__r_.__value_.__r.__words[0] + v31 < v8)
      {
        goto LABEL_26;
      }

      v23 = v8;
    }

    else
    {
      v17 = v16;
      if (v31 <= a5)
      {
        v23 = v31;
        break;
      }

LABEL_26:
      v22 = faiss::partitioning::sample_threshold_median3<faiss::CMax<unsigned short,long long>>(a1, a3, v11, v17);
      if (v22 != v11)
      {
        v16 = v22;
        if (++v10 == 200)
        {
          v23 = 0;
          break;
        }

        continue;
      }

      v23 = 0;
    }

    break;
  }

  if ((v23 - v21) < 0)
  {
    --v16;
    v23 = v8;
  }

  else
  {
    v8 = v23 - v21;
    if (v23 - v21 > v32.__r_.__value_.__r.__words[0])
    {
      faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
    }
  }

  if (v23 != faiss::partitioning::compress_array<faiss::CMax<unsigned short,int>>(a1, a2, a3, v16, v8))
  {
    faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>();
  }

  if (a6)
  {
    *a6 = v23;
  }

  return v16;
}

void sub_1D9C407AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint16x8_t *faiss::simd_partitioning::find_minimax(uint16x8_t *this, unint64_t a2, _WORD *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  if (a2 < 0x10)
  {
    v9.i64[0] = -1;
    v9.i64[1] = -1;
    v6.i16[0] = 0;
  }

  else
  {
    v5 = this + 1;
    v6 = 0uLL;
    v7.i64[0] = -1;
    v7.i64[1] = -1;
    v8 = 15;
    v9.i64[0] = -1;
    v9.i64[1] = -1;
    v10 = 0uLL;
    do
    {
      v11 = v5[-1];
      v9 = vminq_u16(v11, v9);
      v7 = vminq_u16(*v5, v7);
      v6 = vmaxq_u16(v11, v6);
      v10 = vmaxq_u16(*v5, v10);
      v5 += 2;
      v8 += 16;
    }

    while (v8 < a2);
  }

  v12 = 0;
  vars0 = v9;
  *a3 = v9.i16[0];
  *a4 = v6.i16[0];
  do
  {
    v13 = vars0.u16[v12 + 1];
    if (v13 >= *a3)
    {
      LOWORD(v13) = *a3;
    }

    *a3 = v13;
    v14 = *(&vars0 + v12 * 2 + 34);
    if (*a4 > v14)
    {
      LOWORD(v14) = *a4;
    }

    *a4 = v14;
    ++v12;
  }

  while (v12 != 15);
  v15 = a2 & 0xFFFFFFFFFFFFFFF0;
  if ((a2 & 0xFFFFFFFFFFFFFFF0) != a2)
  {
    do
    {
      v16 = this->u16[v15];
      if (v16 >= *a3)
      {
        LOWORD(v16) = *a3;
      }

      *a3 = v16;
      v17 = this->u16[v15];
      if (*a4 > v17)
      {
        LOWORD(v17) = *a4;
      }

      *a4 = v17;
      ++v15;
    }

    while (v15 < a2);
  }

  return this;
}

unsigned __int16 *faiss::simd_histogram_16(unsigned __int16 *this, const unsigned __int16 *a2, int a3, int a4, _OWORD *a5, int *a6)
{
  a5[2] = 0u;
  a5[3] = 0u;
  *a5 = 0u;
  a5[1] = 0u;
  v6 = a2;
  if (a4 < 0)
  {
    if (a2)
    {
      do
      {
        v11 = *this++;
        ++*(a5 + v11);
        --v6;
      }

      while (v6);
    }
  }

  else if (a2)
  {
    v7 = (16 << a4) + a3;
    if (v7 >= 0x10000)
    {
      LOWORD(v7) = 0;
    }

    v8 = (v7 + ~a3);
    do
    {
      v9 = *this++;
      v10 = v9 - a3;
      if (v8 >= (v9 - a3))
      {
        ++*(a5 + (v10 >> a4));
      }

      --v6;
    }

    while (v6);
  }

  return this;
}

unsigned __int16 *faiss::simd_histogram_8(unsigned __int16 *this, const unsigned __int16 *a2, unsigned int a3, int a4, _OWORD *a5, int *a6)
{
  *a5 = 0u;
  a5[1] = 0u;
  v6 = a2;
  if (a4 < 0)
  {
    if (a2)
    {
      do
      {
        v10 = *this++;
        ++*(a5 + v10);
        --v6;
      }

      while (v6);
    }
  }

  else if (a2)
  {
    do
    {
      v7 = *this++;
      v8 = v7 - a3;
      if (v7 >= a3)
      {
        v9 = v8 >> a4;
        if (v9 <= 7)
        {
          ++*(a5 + v9);
        }
      }

      --v6;
    }

    while (v6);
  }

  return this;
}

void *faiss::PartitionStats::reset(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t *faiss::PartitionStats::get_partition_stats(faiss::PartitionStats *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    faiss::PartitionStats::get_partition_stats();
  }

  return &qword_1ECB70E10;
}

float faiss::partitioning::sample_threshold_median3<faiss::CMin<float,long long>>(uint64_t a1, int a2, float result, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2;
    while (1)
    {
      v7 = *(a1 + 4 * (v4 % a2));
      if (v7 < result && v7 > a4)
      {
        *(&v11 + v5++) = v7;
        if (v5 == 3)
        {
          break;
        }
      }

      v4 += 6700417;
      if (!--v6)
      {
        if (v5)
        {
          return v11;
        }

        return result;
      }
    }

    result = v11;
    if (v11 <= v12)
    {
      v9 = v11;
    }

    else
    {
      v9 = v12;
    }

    if (v11 <= v12)
    {
      result = v12;
    }

    if (v9 >= v13)
    {
      v10 = v9;
    }

    else
    {
      v10 = v13;
    }

    if (result >= v13)
    {
      return v10;
    }
  }

  return result;
}

uint64_t faiss::partitioning::compress_array<faiss::CMin<float,long long>>(float *a1, void *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a3)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_12:
    faiss::partitioning::compress_array<faiss::CMin<float,long long>>();
  }

  result = 0;
  v7 = a1;
  v8 = a2;
  do
  {
    v9 = *v7;
    if (*v7 <= a5)
    {
      if (a4)
      {
        if (v9 == a5)
        {
          a1[result] = v9;
          a2[result++] = *v8;
          --a4;
        }
      }
    }

    else
    {
      a1[result] = v9;
      a2[result++] = *v8;
    }

    ++v8;
    ++v7;
    --a3;
  }

  while (a3);
  if (a4)
  {
    goto LABEL_12;
  }

  return result;
}

float faiss::partitioning::sample_threshold_median3<faiss::CMax<float,long long>>(uint64_t a1, int a2, float result, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2;
    while (1)
    {
      v7 = *(a1 + 4 * (v4 % a2));
      if (v7 > result && v7 < a4)
      {
        *(&v11 + v5++) = v7;
        if (v5 == 3)
        {
          break;
        }
      }

      v4 += 6700417;
      if (!--v6)
      {
        if (v5)
        {
          return v11;
        }

        return result;
      }
    }

    result = v11;
    if (v11 <= v12)
    {
      v9 = v11;
    }

    else
    {
      v9 = v12;
    }

    if (v11 <= v12)
    {
      result = v12;
    }

    if (v9 >= v13)
    {
      v10 = v9;
    }

    else
    {
      v10 = v13;
    }

    if (result >= v13)
    {
      return v10;
    }
  }

  return result;
}

uint64_t faiss::partitioning::compress_array<faiss::CMax<float,long long>>(float *a1, void *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a3)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_12:
    faiss::partitioning::compress_array<faiss::CMin<float,long long>>();
  }

  result = 0;
  v7 = a1;
  v8 = a2;
  do
  {
    v9 = *v7;
    if (*v7 >= a5)
    {
      if (a4)
      {
        if (v9 == a5)
        {
          a1[result] = v9;
          a2[result++] = *v8;
          --a4;
        }
      }
    }

    else
    {
      a1[result] = v9;
      a2[result++] = *v8;
    }

    ++v8;
    ++v7;
    --a3;
  }

  while (a3);
  if (a4)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t faiss::partitioning::sample_threshold_median3<faiss::CMin<unsigned short,long long>>(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2;
    while (1)
    {
      v7 = *(a1 + 2 * (v4 % a2));
      if (v7 < a3 && v7 > a4)
      {
        *(&v13 + v5++) = v7;
        if (v5 == 3)
        {
          break;
        }
      }

      v4 += 6700417;
      if (!--v6)
      {
        if (v5)
        {
          return v13;
        }

        return a3;
      }
    }

    v9 = v13;
    if (v13 >= v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v13 <= v14)
    {
      v9 = v14;
    }

    if (v10 <= v15)
    {
      v11 = v15;
    }

    else
    {
      v11 = v10;
    }

    if (v9 >= v15)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  return a3;
}

uint64_t faiss::partitioning::compress_array<faiss::CMin<unsigned short,long long>>(unsigned __int16 *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!a3)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }

LABEL_12:
    faiss::partitioning::compress_array<faiss::CMin<float,long long>>();
  }

  result = 0;
  v7 = a1;
  v8 = a2;
  do
  {
    v10 = *v7++;
    v9 = v10;
    if (v10 <= a4)
    {
      if (a5)
      {
        if (v9 == a4)
        {
          a1[result] = a4;
          a2[result++] = *v8;
          --a5;
        }
      }
    }

    else
    {
      a1[result] = v9;
      a2[result++] = *v8;
    }

    ++v8;
    --a3;
  }

  while (a3);
  if (a5)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t faiss::partitioning::sample_threshold_median3<faiss::CMax<unsigned short,long long>>(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2;
    while (1)
    {
      v7 = *(a1 + 2 * (v4 % a2));
      if (v7 > a3 && v7 < a4)
      {
        *(&v13 + v5++) = v7;
        if (v5 == 3)
        {
          break;
        }
      }

      v4 += 6700417;
      if (!--v6)
      {
        if (v5)
        {
          return v13;
        }

        return a3;
      }
    }

    v9 = v13;
    if (v13 >= v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v13 <= v14)
    {
      v9 = v14;
    }

    if (v10 <= v15)
    {
      v11 = v15;
    }

    else
    {
      v11 = v10;
    }

    if (v9 >= v15)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  return a3;
}

uint64_t faiss::partitioning::compress_array<faiss::CMax<unsigned short,long long>>(unsigned __int16 *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!a3)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }

LABEL_12:
    faiss::partitioning::compress_array<faiss::CMin<float,long long>>();
  }

  result = 0;
  v7 = a1;
  v8 = a2;
  do
  {
    v10 = *v7++;
    v9 = v10;
    if (v10 >= a4)
    {
      if (a5)
      {
        if (v9 == a4)
        {
          a1[result] = a4;
          a2[result++] = *v8;
          --a5;
        }
      }
    }

    else
    {
      a1[result] = v9;
      a2[result++] = *v8;
    }

    ++v8;
    --a3;
  }

  while (a3);
  if (a5)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t faiss::partitioning::compress_array<faiss::CMin<unsigned short,int>>(unsigned __int16 *a1, _DWORD *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!a3)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }

LABEL_12:
    faiss::partitioning::compress_array<faiss::CMin<float,long long>>();
  }

  result = 0;
  v7 = a1;
  v8 = a2;
  do
  {
    v10 = *v7++;
    v9 = v10;
    if (v10 <= a4)
    {
      if (a5)
      {
        if (v9 == a4)
        {
          a1[result] = a4;
          a2[result++] = *v8;
          --a5;
        }
      }
    }

    else
    {
      a1[result] = v9;
      a2[result++] = *v8;
    }

    ++v8;
    --a3;
  }

  while (a3);
  if (a5)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t faiss::partitioning::compress_array<faiss::CMax<unsigned short,int>>(unsigned __int16 *a1, _DWORD *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!a3)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }

LABEL_12:
    faiss::partitioning::compress_array<faiss::CMin<float,long long>>();
  }

  result = 0;
  v7 = a1;
  v8 = a2;
  do
  {
    v10 = *v7++;
    v9 = v10;
    if (v10 >= a4)
    {
      if (a5)
      {
        if (v9 == a4)
        {
          a1[result] = a4;
          a2[result++] = *v8;
          --a5;
        }
      }
    }

    else
    {
      a1[result] = v9;
      a2[result++] = *v8;
    }

    ++v8;
    --a3;
  }

  while (a3);
  if (a5)
  {
    goto LABEL_12;
  }

  return result;
}

void faiss::partitioning::partition_fuzzy_median3<faiss::CMin<float,long long>>()
{
  __assert_rtn("partition_fuzzy_median3", "partitioning.cpp", 206, "n_eq_1 <= n_eq");
}

{
  __assert_rtn("partition_fuzzy_median3", "partitioning.cpp", 211, "wp == q");
}

void faiss::PartitionStats::get_partition_stats()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    qword_1ECB70E10 = 0;
    unk_1ECB70E18 = 0;

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void faiss::WorkerThread::WorkerThread(faiss::WorkerThread *this)
{
  v1 = *MEMORY[0x1E69E9840];
  *(this + 1) = 850045863;
  *this = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 9) = 1018212795;
  *(this + 8) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 105) = 0u;
  faiss::WorkerThread::startThread(this);
}

void sub_1D9C41264(_Unwind_Exception *a1, atomic_ullong *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    if (!atomic_fetch_add(a2 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a2 + 16))(a2);
    }
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::~deque[abi:ne200100](v5);
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::thread::~thread(v2);
  _Unwind_Resume(a1);
}

void sub_1D9C413C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void faiss::WorkerThread::add(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 8));
  if (*(a1 + 120) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1D9C415D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::promise<BOOL>::~promise(va2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va1);
  if (!atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v3 + 16))(v3);
  }

  std::promise<BOOL>::~promise(va);
  std::mutex::unlock((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::future<BOOL>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_1D9C41704(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void faiss::WorkerThread::~WorkerThread(faiss::WorkerThread *this)
{
  faiss::WorkerThread::stop(this);
  faiss::WorkerThread::waitForThreadExit(this);
  std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::~deque[abi:ne200100](this + 16);
  std::condition_variable::~condition_variable((this + 72));
  std::mutex::~mutex((this + 8));

  std::thread::~thread(this);
}

void faiss::WorkerThread::stop(faiss::WorkerThread *this)
{
  std::mutex::lock((this + 8));
  *(this + 120) = 1;
  std::condition_variable::notify_one((this + 72));

  std::mutex::unlock((this + 8));
}

void sub_1D9C417E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::emplace_back<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  }

  *(std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a2) + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0x66));
  v14 = *v13 + 40 * (v11 % 0x66);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 40;
}

void sub_1D9C41B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  std::promise<BOOL>::~promise((v14 + 32));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void faiss::anonymous namespace::runCallback(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3);
  v4 = 1;
  std::promise<BOOL>::set_value(a2, &v4);
}

void sub_1D9C41BFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  std::promise<BOOL>::set_exception(v9, &a9);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1D9C41BE4);
}

void sub_1D9C41C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::function<void ()(void)>,std::promise<BOOL>>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1, a2);
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v4;
  std::promise<BOOL>::~promise(&v6);
  return a1;
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::pop_front(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x66uLL)) + 40 * (a1[2].i64[0] % 0x66uLL);
  std::promise<BOOL>::~promise((v2 + 32));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
  a1[2] = vaddq_s64(a1[2], xmmword_1D9C9FF20);

  return std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::promise<BOOL>::set_exception(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x1DA73F1C0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x1E69E53B0], MEMORY[0x1E69E52C8]);
}

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x66];
    v7 = *v6 + 40 * (v5 % 0x66);
    v8 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v7 != v8)
    {
      do
      {
        std::promise<BOOL>::~promise((v7 + 32));
        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
        v7 += 40;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 102;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__func<faiss::WorkerThread::WorkerThread(void)::$_0,std::allocator<faiss::WorkerThread::WorkerThread(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__assoc_state<BOOL>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1D9C423FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,faiss::WorkerThread::startThread(void)::$_0>>(const void **a1)
{
  v4 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  faiss::WorkerThread::threadMain(v4[1]);
}

void sub_1D9C42484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,faiss::WorkerThread::startThread(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,faiss::WorkerThread::startThread(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1DA73F410](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1DA73F240]();
    MEMORY[0x1DA73F410](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1DA73F410);
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1DA73F1C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x1DA73F1D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x1E69E5508] + 16);
  exception[1] = a1[1];

  return MEMORY[0x1EEE63B00](v3);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void *std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>>::emplace_back<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *&>(a1, &v10);
}

void sub_1D9C429D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>>::emplace_back<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>>::emplace_front<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *> &>::emplace_back<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *,std::allocator<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *> &>::emplace_front<std::pair<std::function<void ()(void)>,std::promise<BOOL>> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,std::promise<BOOL>>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

atomic_ullong *std::future<BOOL>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

double faiss::ClusteringParameters::ClusteringParameters(faiss::ClusteringParameters *this)
{
  *this = 0x100000019;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *&result = 0x10000000027;
  *(this + 2) = 0x10000000027;
  *(this + 6) = 1234;
  *(this + 4) = 0x8000;
  return result;
}

{
  *this = 0x100000019;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *&result = 0x10000000027;
  *(this + 2) = 0x10000000027;
  *(this + 6) = 1234;
  *(this + 4) = 0x8000;
  return result;
}

double faiss::Clustering::Clustering(faiss::Clustering *this, int a2, int a3)
{
  *(this + 1) = 0x100000019;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0x10000000027;
  *(this + 8) = 1234;
  *(this + 5) = 0x8000;
  *this = &unk_1F5537B68;
  *(this + 6) = a2;
  *(this + 7) = a3;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

{
  *(this + 1) = 0x100000019;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0x10000000027;
  *(this + 8) = 1234;
  *(this + 5) = 0x8000;
  *this = &unk_1F5537B68;
  *(this + 6) = a2;
  *(this + 7) = a3;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

double faiss::Clustering::Clustering(faiss::Clustering *this, int a2, int a3, const faiss::ClusteringParameters *a4)
{
  v4 = *a4;
  v5 = *(a4 + 4);
  *(this + 24) = *(a4 + 1);
  *(this + 8) = v4;
  *this = &unk_1F5537B68;
  *(this + 5) = v5;
  *(this + 6) = a2;
  *(this + 7) = a3;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

{
  v4 = *a4;
  v5 = *(a4 + 4);
  *(this + 24) = *(a4 + 1);
  *(this + 8) = v4;
  *this = &unk_1F5537B68;
  *(this + 5) = v5;
  *(this + 6) = a2;
  *(this + 7) = a3;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

float faiss::Clustering::post_process_centroids(faiss::Clustering *this, uint64_t a2, uint64_t a3, float *a4)
{
  if (*(this + 17) == 1)
  {
    faiss::fvec_renorm_L2(*(this + 6), *(this + 7), *(this + 8), a4);
  }

  if (*(this + 18) == 1)
  {
    v6 = *(this + 8);
    v7 = *(this + 9) - v6;
    if (v7)
    {
      v8 = v7 >> 2;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      do
      {
        result = roundf(*v6);
        *v6++ = result;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t faiss::Clustering::train_encoded(faiss::Clustering *this, unint64_t a2, const unsigned __int8 *a3, const faiss::Index *a4, faiss::Index *a5, const float *a6)
{
  v7 = *(this + 7);
  if (v7 > a2)
  {
    memset(&__p, 0, sizeof(__p));
    v31 = snprintf(0, 0, "Error: '%s' failed: Number of training points (%lld) should be at least as large as number of clusters (%zd)", "nx >= k", a2, v7);
    std::string::resize(&__p, v31 + 1, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    snprintf(p_p, size, "Error: '%s' failed: Number of training points (%lld) should be at least as large as number of clusters (%zd)", "nx >= k", a2, *(this + 7));
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &__p, "void faiss::Clustering::train_encoded(idx_t, const uint8_t *, const Index *, Index &, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Clustering.cpp", 289);
  }

  if (a4)
  {
    v12 = *(a4 + 2);
    v13 = *(this + 6);
    if (v13 != v12)
    {
      v35 = (this + 48);
      memset(&__p, 0, sizeof(__p));
      v36 = snprintf(0, 0, "Error: '%s' failed: Codec dimension %d not the same as data dimension %d", "(!codec || codec->d == d)", v12, v13);
      std::string::resize(&__p, v36 + 1, 0);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__p;
      }

      else
      {
        v37 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __p.__r_.__value_.__l.__size_;
      }

      snprintf(v37, v38, "Error: '%s' failed: Codec dimension %d not the same as data dimension %d", "(!codec || codec->d == d)", *(a4 + 2), *v35);
      v39 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v39, &__p, "void faiss::Clustering::train_encoded(idx_t, const uint8_t *, const Index *, Index &, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Clustering.cpp", 295);
    }

    v14 = (this + 48);
    v16 = (a5 + 8);
    LODWORD(v15) = *(a5 + 2);
    if (v12 == v15)
    {
      faiss::getmillisecs(this);
      (*(*a4 + 128))(a4);
      goto LABEL_11;
    }

LABEL_50:
    memset(&__p, 0, sizeof(__p));
    v40 = snprintf(0, 0, "Error: '%s' failed: Index dimension %d not the same as data dimension %d", "index.d == d", v15, v12);
    std::string::resize(&__p, v40 + 1, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &__p;
    }

    else
    {
      v41 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __p.__r_.__value_.__l.__size_;
    }

    snprintf(v41, v42, "Error: '%s' failed: Index dimension %d not the same as data dimension %d", "index.d == d", *v16, *v14);
    v43 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v43, &__p, "void faiss::Clustering::train_encoded(idx_t, const uint8_t *, const Index *, Index &, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Clustering.cpp", 301);
  }

  v17 = (this + 48);
  v12 = *(this + 6);
  v16 = (a5 + 8);
  v15 = *(a5 + 2);
  if (v12 != v15)
  {
    v14 = (this + 48);
    goto LABEL_50;
  }

  faiss::getmillisecs(this);
  v18 = *v17 * a2;
  if (v18)
  {
    v19 = a3;
    do
    {
      if ((*v19 & 0x7FFFFFFFu) >= 0x7F800000)
      {
        memset(&__p, 0, sizeof(__p));
        v27 = snprintf(0, 0, "Error: '%s' failed: input contains NaN's or Inf's", "std::isfinite(x[i])");
        std::string::resize(&__p, v27 + 1, 0);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = __p.__r_.__value_.__l.__size_;
        }

        snprintf(v28, v29, "Error: '%s' failed: input contains NaN's or Inf's", "std::isfinite(x[i])");
        v30 = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(v30, &__p, "void faiss::Clustering::train_encoded(idx_t, const uint8_t *, const Index *, Index &, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Clustering.cpp", 312);
      }

      v19 += 4;
      --v18;
    }

    while (v18);
  }

LABEL_11:
  v20 = *(this + 7);
  v21 = v20 * *(this + 7);
  if (v21 < a2)
  {
    if (*(this + 16) == 1)
    {
      printf("Sampling a subset of %zd / %lld for training\n", v21, a2);
    }

    std::vector<int>::vector[abi:ne200100](&__p, a2);
    faiss::rand_perm(__p.__r_.__value_.__l.__data_, a2, *(this + 8));
    operator new[]();
  }

  v22 = v20 * *(this + 6);
  if (v22 > a2)
  {
    fprintf(*MEMORY[0x1E69E9848], "WARNING clustering %lld points to %zd centroids: please provide at least %lld training points\n", a2, v20, v22);
  }

  v23 = *(this + 7);
  if (a2 != v23)
  {
    if (*(this + 16))
    {
      printf("Clustering %lld points in %zdD to %zd clusters, redo %d times, %d iterations\n", a2, *(this + 6), v23, *(this + 3), *(this + 2));
      if (a4)
      {
        v25 = (*(*a4 + 128))(a4);
        printf("Input data encoded in %zd bytes per vector\n", v25);
      }
    }

    operator new[]();
  }

  v24 = a2;
  if (*(this + 16))
  {
    printf("Number of training points (%lld) same as number of clusters, just copying\n", a2);
    v24 = *(this + 7);
  }

  std::vector<float>::resize((this + 64), v24 * *(this + 6));
  if (a4)
  {
    (*(*a4 + 144))(a4, a2, a3, *(this + 8));
  }

  else
  {
    memcpy(*(this + 8), a3, 4 * *(this + 6) * *(this + 7));
  }

  memset(&__p, 0, sizeof(__p));
  v47 = 0x3FF0000000000000;
  v48 = 0;
  std::vector<faiss::ClusteringIterationStats>::push_back[abi:ne200100](this + 88, &__p);
  (*(*a5 + 64))(a5);
  (*(*a5 + 24))(a5, *(this + 7), *(this + 8));
  return 0;
}

void sub_1D9C446F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a56)
  {
    operator delete(a56);
  }

  MEMORY[0x1DA73F3F0](v56, 0x1000C8052888210);
  MEMORY[0x1DA73F3F0](a43, 0x1000C8000313F17);
  if (a18)
  {
    MEMORY[0x1DA73F3F0](a18, 0x1000C8052888210);
  }

  if (a19)
  {
    MEMORY[0x1DA73F3F0](a19, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void std::vector<faiss::ClusteringIterationStats>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ClusteringIterationStats>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

float faiss::kmeans_clustering(faiss *this, unint64_t a2, uint64_t a3, const unsigned __int8 *a4, float *a5, float *a6)
{
  v16[1] = 0x100000019;
  v18 = 0;
  v19 = 0x10000000027;
  v20 = 1234;
  v21 = 0x8000;
  v16[0] = &unk_1F5537B68;
  v22 = this;
  v23 = a3;
  *__src = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = a2 * this * a3 > 0x40000000;
  faiss::IndexFlat::IndexFlat(v13, this, 1);
  v13[0] = &unk_1F5537258;
  faiss::Clustering::train_encoded(v16, a2, a4, 0, v13, 0);
  memcpy(a5, __src[0], 4 * this * a3);
  v11 = *(v26 - 40);
  v13[0] = &unk_1F5538898;
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  faiss::Index::~Index(v13);
  faiss::Clustering::~Clustering(v16);
  return v11;
}

void sub_1D9C44B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  faiss::IndexFlatL2::~IndexFlatL2(&a9);
  faiss::Clustering::~Clustering(&a17);
  _Unwind_Resume(a1);
}

double faiss::ProgressiveDimClusteringParameters::ProgressiveDimClusteringParameters(faiss::ProgressiveDimClusteringParameters *this)
{
  *(this + 2) = 0;
  *(this + 12) = 0;
  *&result = 0x10000000027;
  *(this + 2) = 0x10000000027;
  *(this + 6) = 1234;
  *(this + 4) = 0x8000;
  *(this + 10) = 10;
  *(this + 44) = 1;
  *this = 0x10000000ALL;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 12) = 0;
  *&result = 0x10000000027;
  *(this + 2) = 0x10000000027;
  *(this + 6) = 1234;
  *(this + 4) = 0x8000;
  *(this + 10) = 10;
  *(this + 44) = 1;
  *this = 0x10000000ALL;
  return result;
}

double faiss::ProgressiveDimClustering::ProgressiveDimClustering(faiss::ProgressiveDimClustering *this, int a2, int a3)
{
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0x10000000027;
  *(this + 8) = 1234;
  *(this + 5) = 0x8000;
  *(this + 12) = 10;
  *(this + 52) = 1;
  *this = &unk_1F5537B90;
  *(this + 1) = 0x10000000ALL;
  *(this + 7) = a2;
  *(this + 8) = a3;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0x10000000027;
  *(this + 8) = 1234;
  *(this + 5) = 0x8000;
  *(this + 12) = 10;
  *(this + 52) = 1;
  *this = &unk_1F5537B90;
  *(this + 1) = 0x10000000ALL;
  *(this + 7) = a2;
  *(this + 8) = a3;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

double faiss::ProgressiveDimClustering::ProgressiveDimClustering(faiss::ProgressiveDimClustering *this, int a2, int a3, const faiss::ProgressiveDimClusteringParameters *a4)
{
  v4 = *a4;
  v5 = *(a4 + 1);
  *(this + 40) = *(a4 + 2);
  *(this + 24) = v5;
  *(this + 8) = v4;
  *this = &unk_1F5537B90;
  *(this + 7) = a2;
  *(this + 8) = a3;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

{
  v4 = *a4;
  v5 = *(a4 + 1);
  *(this + 40) = *(a4 + 2);
  *(this + 24) = v5;
  *(this + 8) = v4;
  *this = &unk_1F5537B90;
  *(this + 7) = a2;
  *(this + 8) = a3;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

void faiss::ProgressiveDimClustering::train(faiss::ProgressiveDimClustering *this, int *a2, const float *a3, faiss::ProgressiveDimIndexFactory *a4)
{
  faiss::PCAMatrix::PCAMatrix(v46, *(this + 14), *(this + 14), 0.0, 0);
  memset(&v45, 0, sizeof(v45));
  if (*(this + 52) == 1)
  {
    if (*(this + 16) == 1)
    {
      puts("Training PCA transform");
    }

    faiss::PCAMatrix::train(v46, a2, a3);
  }

  v6 = *(this + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v35 = (this + 72);
    v32 = a2;
    do
    {
      v34 = v8 + 1;
      v9 = pow(*(this + 7), (v8 + 1) / v6);
      v10 = v9;
      if (*(this + 16) == 1)
      {
        printf("Progressive dim step %d: cluster in dimension %d\n", v8, v9);
      }

      v11 = (**a4)(a4, v10);
      v12 = *(this + 8);
      *&v37[8] = *(this + 8);
      v38 = *(this + 24);
      v39 = *(this + 5);
      *v37 = &unk_1F5537B68;
      v40 = v10;
      v41 = v12;
      __dst = 0u;
      v43 = 0u;
      v44 = 0u;
      v13 = 4 * v10;
      if (v7 >= 1)
      {
        std::vector<float>::resize(&__dst, v12 * v10);
        v14 = *(this + 8);
        if (v14 >= 1)
        {
          v15 = v7;
          v16 = __dst;
          v17 = *v35;
          if (v10 >= v7)
          {
            v18 = v7;
          }

          else
          {
            v18 = v10;
          }

          v19 = 4 * v18;
          v20 = 4 * v15;
          do
          {
            memcpy(v16, v17, v19);
            v17 += v20;
            v16 += v13;
            --v14;
          }

          while (v14);
        }
      }

      std::vector<float>::vector[abi:ne200100](__p, v10 * v32);
      if (v32 >= 1)
      {
        v21 = *(this + 7);
        if (v10 >= v21)
        {
          v22 = *(this + 7);
        }

        else
        {
          v22 = v10;
        }

        v23 = __p[0];
        v24 = 4 * v22;
        v25 = 4 * v21;
        v26 = a3;
        v27 = v32;
        do
        {
          memcpy(v23, v26, v24);
          v26 = (v26 + v25);
          v23 += v13;
          --v27;
        }

        while (v27);
      }

      faiss::Clustering::train_encoded(v37, v32, __p[0], 0, v11, 0);
      if (v35 != &__dst)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v35, __dst, *(&__dst + 1), (*(&__dst + 1) - __dst) >> 2);
      }

      std::vector<faiss::ClusteringIterationStats>::__insert_with_size[abi:ne200100]<std::__wrap_iter<faiss::ClusteringIterationStats*>,std::__wrap_iter<faiss::ClusteringIterationStats*>>(this + 96, *(this + 13), *(&v43 + 1), v44, 0xCCCCCCCCCCCCCCCDLL * ((v44 - *(&v43 + 1)) >> 3));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      faiss::Clustering::~Clustering(v37);
      (*(*v11 + 8))(v11);
      v6 = *(this + 12);
      v7 = v10;
      v8 = v34;
    }

    while (v34 < v6);
  }

  if (*(this + 52))
  {
    if (*(this + 16) == 1)
    {
      puts("Revert PCA transform on centroids");
    }

    std::vector<float>::vector[abi:ne200100](v37, *(this + 8) * *(this + 7));
    faiss::LinearTransform::reverse_transform(v46, *(this + 8), *(this + 9), *v37);
    v28 = *(this + 9);
    *(this + 72) = *v37;
    v29 = *&v37[16];
    v30 = *(this + 11);
    *v37 = v28;
    *&v37[16] = v30;
    *(this + 11) = v29;
    if (v28)
    {
      *&v37[8] = v28;
      operator delete(v28);
    }
  }

  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }

  v46[0] = &unk_1F5539480;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  faiss::LinearTransform::~LinearTransform(v46);
}

void sub_1D9C45244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  faiss::PCAMatrix::~PCAMatrix(&a38);
  _Unwind_Resume(a1);
}

void faiss::ProgressiveDimClustering::~ProgressiveDimClustering(faiss::ProgressiveDimClustering *this)
{
  faiss::ProgressiveDimClustering::~ProgressiveDimClustering(this);

  JUMPOUT(0x1DA73F410);
}

{
  *this = &unk_1F5537B90;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ClusteringIterationStats>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<faiss::ClusteringIterationStats>::__assign_with_size[abi:ne200100]<faiss::ClusteringIterationStats*,faiss::ClusteringIterationStats*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      std::vector<faiss::ClusteringIterationStats>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<faiss::ClusteringIterationStats>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ClusteringIterationStats>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

char *std::vector<faiss::ClusteringIterationStats>::__insert_with_size[abi:ne200100]<std::__wrap_iter<faiss::ClusteringIterationStats*>,std::__wrap_iter<faiss::ClusteringIterationStats*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 3);
    if (v12 > 0x666666666666666)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ClusteringIterationStats>>(a1, v15);
    }

    v36 = 8 * (v13 >> 3);
    v37 = 40 * a5;
    v38 = v36;
    do
    {
      v39 = *v7;
      v40 = *(v7 + 1);
      *(v38 + 32) = *(v7 + 4);
      *v38 = v39;
      *(v38 + 16) = v40;
      v38 += 40;
      v7 += 40;
      v37 -= 40;
    }

    while (v37);
    memcpy((v36 + 40 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 40 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v36;
  }

  v16 = v10 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst) >> 3)) >= a5)
  {
    v30 = 5 * a5;
    v31 = &__dst[40 * a5];
    v32 = v10 - 40 * a5;
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = *(v32 + 16);
      *(v33 + 32) = *(v32 + 32);
      *v33 = v34;
      *(v33 + 16) = v35;
      v32 += 40;
      v33 += 40;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[40 * a5], __dst, v10 - v31);
    }

    v29 = 8 * v30;
    v27 = v5;
    v28 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[40 * a5];
    v21 = v10 + v18;
    if (&v19[-40 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -40 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 16);
        *(v24 + 32) = *(v23 - v7 + 32);
        *v24 = v25;
        *(v24 + 16) = v26;
        v23 += 40;
        v22 += 40;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[40 * a5], v5, v19 - v20);
    }

    v27 = v5;
    v28 = v7;
    v29 = v10 - v5;
LABEL_28:
    memmove(v27, v28, v29);
  }

  return v5;
}

void faiss::IOReader::fileno(faiss::IOReader *this)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "IOReader does not support memory mapping");
  faiss::FaissException::FaissException(exception, v2, "virtual int faiss::IOReader::fileno()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 24);
}

void sub_1D9C45A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::IOWriter::fileno(faiss::IOWriter *this)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "IOWriter does not support memory mapping");
  faiss::FaissException::FaissException(exception, v2, "virtual int faiss::IOWriter::fileno()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 28);
}

void sub_1D9C45AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t faiss::VectorIOWriter::operator()(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 * a3;
  if (a4 * a3)
  {
    v7 = *(a1 + 32);
    v8 = (a1 + 32);
    v9 = *(a1 + 40) - v7;
    if (v9 >= v9 + v5)
    {
      if (v9 > v9 + v5)
      {
        *(a1 + 40) += v5;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 32), a4 * a3);
      v7 = *v8;
    }

    memcpy((v7 + v9), a2, v5);
  }

  return a4;
}

unint64_t faiss::VectorIOReader::operator()(void *a1, void *__dst, unint64_t a3, unint64_t a4)
{
  v4 = a1[7];
  v5 = a1[4];
  v6 = a1[5] - v5;
  v7 = v6 > v4;
  v8 = v6 - v4;
  if (!v7)
  {
    return 0;
  }

  v9 = v8 / a3;
  if (v9 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v9;
  }

  v10 = v12 * a3;
  if (v12 * a3)
  {
    memcpy(__dst, (v5 + v4), v12 * a3);
    a1[7] += v10;
  }

  return v12;
}

uint64_t faiss::FileIOReader::FileIOReader(uint64_t this, __sFILE *a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = a2;
  *this = &unk_1F5537C60;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = a2;
  *this = &unk_1F5537C60;
  *(this + 40) = 0;
  return this;
}

faiss::FileIOReader *faiss::FileIOReader::FileIOReader(faiss::FileIOReader *this, const char *a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5537C60;
  *(this + 40) = 0;
  MEMORY[0x1DA73F190](this + 8);
  v4 = fopen(a2, "rb");
  *(this + 4) = v4;
  if (!v4)
  {
    memset(&v14, 0, sizeof(v14));
    v6 = __error();
    v7 = strerror(*v6);
    v8 = snprintf(0, 0, "Error: '%s' failed: could not open %s for reading: %s", "f", a2, v7);
    v9 = &v14;
    std::string::resize(&v14, v8 + 1, 0);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    v11 = __error();
    v12 = strerror(*v11);
    snprintf(v9, size, "Error: '%s' failed: could not open %s for reading: %s", "f", a2, v12);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v14, "faiss::FileIOReader::FileIOReader(const char *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 68);
  }

  *(this + 40) = 1;
  return this;
}

void sub_1D9C45DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v20);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *v17 = v19;
  if (*(v17 + 31) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

void faiss::FileIOReader::~FileIOReader(faiss::FileIOReader *this)
{
  *this = &unk_1F5537C60;
  if (*(this + 40) == 1 && fclose(*(this + 4)))
  {
    v2 = this + 8;
    if (*(this + 31) < 0)
    {
      v2 = *v2;
    }

    v3 = *MEMORY[0x1E69E9848];
    v4 = __error();
    v5 = strerror(*v4);
    fprintf(v3, "file %s close error: %s", v2, v5);
  }

  *this = &unk_1F5537D20;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  faiss::FileIOReader::~FileIOReader(this);

  JUMPOUT(0x1DA73F410);
}

uint64_t faiss::FileIOWriter::FileIOWriter(uint64_t this, __sFILE *a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = a2;
  *this = &unk_1F5537C90;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = a2;
  *this = &unk_1F5537C90;
  *(this + 40) = 0;
  return this;
}

faiss::FileIOWriter *faiss::FileIOWriter::FileIOWriter(faiss::FileIOWriter *this, const char *a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5537C90;
  *(this + 40) = 0;
  MEMORY[0x1DA73F190](this + 8);
  v4 = fopen(a2, "wb");
  *(this + 4) = v4;
  if (!v4)
  {
    memset(&v14, 0, sizeof(v14));
    v6 = __error();
    v7 = strerror(*v6);
    v8 = snprintf(0, 0, "Error: '%s' failed: could not open %s for writing: %s", "f", a2, v7);
    v9 = &v14;
    std::string::resize(&v14, v8 + 1, 0);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    v11 = __error();
    v12 = strerror(*v11);
    snprintf(v9, size, "Error: '%s' failed: could not open %s for writing: %s", "f", a2, v12);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v14, "faiss::FileIOWriter::FileIOWriter(const char *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 98);
  }

  *(this + 40) = 1;
  return this;
}

void sub_1D9C46160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v20);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *v17 = v19;
  if (*(v17 + 31) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

void faiss::FileIOWriter::~FileIOWriter(faiss::FileIOWriter *this)
{
  *this = &unk_1F5537C90;
  if (*(this + 40) == 1 && fclose(*(this + 4)))
  {
    v2 = this + 8;
    if (*(this + 31) < 0)
    {
      v2 = *(this + 1);
    }

    v3 = *MEMORY[0x1E69E9848];
    v4 = __error();
    v5 = strerror(*v4);
    fprintf(v3, "file %s close error: %s", v2, v5);
  }

  *this = &unk_1F5537D60;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  faiss::FileIOWriter::~FileIOWriter(this);

  JUMPOUT(0x1DA73F410);
}

void sub_1D9C46280(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5537D60;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

faiss::BufferedIOReader *faiss::BufferedIOReader::BufferedIOReader(faiss::BufferedIOReader *this, faiss::IOReader *a2, uint64_t a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1F5537CC0;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  std::vector<char>::vector[abi:ne200100](this + 10, a3);
  return this;
}

void sub_1D9C463B4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5537D20;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

size_t faiss::BufferedIOReader::operator()(uint64_t a1, char *__dst, unint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  if (!(a4 * a3))
  {
    return 0;
  }

  v8 = *(a1 + 64);
  if (v4 >= *(a1 + 72) - v8)
  {
    v9 = *(a1 + 72) - v8;
  }

  else
  {
    v9 = a4 * a3;
  }

  memcpy(__dst, (*(a1 + 80) + v8), v9);
  v10 = *(a1 + 64) + v9;
  *(a1 + 64) = v10;
  v11 = v4 - v9;
  if (v11)
  {
    v12 = &__dst[v9];
    do
    {
      if (v10 != *(a1 + 72))
      {
        faiss::BufferedIOReader::operator()();
      }

      *(a1 + 64) = 0;
      v13 = (***(a1 + 32))(*(a1 + 32), *(a1 + 80), 1, *(a1 + 40));
      *(a1 + 72) = v13;
      if (!v13)
      {
        break;
      }

      *(a1 + 48) += v13;
      v10 = v11 >= v13 ? v13 : v11;
      memcpy(v12, *(a1 + 80), v10);
      *(a1 + 64) = v10;
      v9 += v10;
      v12 += v10;
      v11 -= v10;
    }

    while (v11);
  }

  *(a1 + 56) += v9;
  return v9 / a3;
}

faiss::BufferedIOWriter *faiss::BufferedIOWriter::BufferedIOWriter(faiss::BufferedIOWriter *this, faiss::IOWriter *a2, uint64_t a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1F5537CF0;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<char>::vector[abi:ne200100](this + 9, a3);
  return this;
}

void sub_1D9C46570(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5537D60;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

size_t faiss::BufferedIOWriter::operator()(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  if (!(a4 * a3))
  {
    return 0;
  }

  v8 = *(a1 + 64);
  if (v4 >= *(a1 + 40) - v8)
  {
    v9 = *(a1 + 40) - v8;
  }

  else
  {
    v9 = a4 * a3;
  }

  memcpy((*(a1 + 72) + v8), a2, v9);
  v10 = *(a1 + 64) + v9;
  *(a1 + 64) = v10;
  v11 = v4 - v9;
  if (v11)
  {
    v12 = &a2[v9];
    do
    {
      if (v10 != *(a1 + 40))
      {
        faiss::BufferedIOWriter::operator()();
      }

      v13 = 0;
      do
      {
        if (v13 >= 0x989680)
        {
          faiss::BufferedIOWriter::operator()();
        }

        v14 = (***(a1 + 32))(*(a1 + 32), *(a1 + 72) + v13, 1, v10 - v13);
        if (!v14)
        {
          memset(&v20, 0, sizeof(v20));
          v16 = snprintf(0, 0, "Error: '%s' failed", "written > 0");
          std::string::resize(&v20, v16 + 1, 0);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v20;
          }

          else
          {
            v17 = v20.__r_.__value_.__r.__words[0];
          }

          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          snprintf(v17, size, "Error: '%s' failed", "written > 0");
          exception = __cxa_allocate_exception(0x20uLL);
          faiss::FaissException::FaissException(exception, &v20, "virtual size_t faiss::BufferedIOWriter::operator()(const void *, size_t, size_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 203);
        }

        v13 += v14;
        v10 = *(a1 + 40);
      }

      while (v13 != v10);
      if (v11 >= v13)
      {
        v10 = v13;
      }

      else
      {
        v10 = v11;
      }

      memcpy(*(a1 + 72), v12, v10);
      *(a1 + 64) = v10;
      v9 += v10;
      v12 += v10;
      v11 -= v10;
    }

    while (v11);
  }

  *(a1 + 56) += v9;
  return v9 / a3;
}

void sub_1D9C4679C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::BufferedIOWriter::~BufferedIOWriter(faiss::BufferedIOWriter *this)
{
  *this = &unk_1F5537CF0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = (***(this + 4))(*(this + 4), *(this + 9) + v3, 1, v2 - v3);
      if (!v4)
      {
        memset(&v10, 0, sizeof(v10));
        v6 = snprintf(0, 0, "Error: '%s' failed", "written > 0");
        std::string::resize(&v10, v6 + 1, 0);
        if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v10;
        }

        else
        {
          v7 = v10.__r_.__value_.__r.__words[0];
        }

        if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v10.__r_.__value_.__l.__size_;
        }

        snprintf(v7, size, "Error: '%s' failed", "written > 0");
        exception = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(exception, &v10, "virtual faiss::BufferedIOWriter::~BufferedIOWriter()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 224);
      }

      v3 += v4;
      v2 = *(this + 8);
    }

    while (v3 != v2);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  *this = &unk_1F5537D60;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  faiss::BufferedIOWriter::~BufferedIOWriter(this);

  JUMPOUT(0x1DA73F410);
}

void sub_1D9C4695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v15 + 72);
  if (v18)
  {
    *(v15 + 80) = v18;
    operator delete(v18);
  }

  *v15 = &unk_1F5537D60;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::fourcc(faiss *this, const char *a2)
{
  if (strlen(this) != 4)
  {
    memset(&v8, 0, sizeof(v8));
    v4 = snprintf(0, 0, "Error: '%s' failed", "4 == strlen(sx)");
    std::string::resize(&v8, v4 + 1, 0);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    snprintf(v5, size, "Error: '%s' failed", "4 == strlen(sx)");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v8, "uint32_t faiss::fourcc(const char *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 230);
  }

  return *this;
}

void sub_1D9C46B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::fourcc(unsigned int *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) != 4)
    {
      goto LABEL_7;
    }

    a1 = *a1;
  }

  else if (v1 != 4)
  {
LABEL_7:
    memset(&v7, 0, sizeof(v7));
    v3 = snprintf(0, 0, "Error: '%s' failed", "sx.length() == 4");
    std::string::resize(&v7, v3 + 1, 0);
    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v7;
    }

    else
    {
      v4 = v7.__r_.__value_.__r.__words[0];
    }

    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v7.__r_.__value_.__l.__size_;
    }

    snprintf(v4, size, "Error: '%s' failed", "sx.length() == 4");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v7, "uint32_t faiss::fourcc(const std::string &)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/io.cpp", 236);
  }

  return *a1;
}

void sub_1D9C46C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::fourcc_inv(uint64_t this, uint64_t a2, char *a3)
{
  *a2 = this;
  *(a2 + 5) = 0;
  return this;
}

_BYTE *faiss::fourcc_inv@<X0>(faiss *this@<X0>, _BYTE *a2@<X8>)
{
  *__s = this;
  LOBYTE(vars0) = 0;
  return std::string::basic_string[abi:ne200100]<0>(a2, __s);
}

void faiss::fourcc_inv_printable(faiss *this@<X0>, std::string *a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = this;
  __str[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  for (i = 0; i != 4; ++i)
  {
    v4 = __str[i - 3];
    if ((v4 - 32) > 0x5E)
    {
      snprintf(__str, 0xAuLL, "\\x%02x", __str[i - 3]);
      std::string::append(a2, __str);
    }

    else
    {
      std::string::push_back(a2, v4);
    }
  }
}

void sub_1D9C46D8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void faiss::VectorIOWriter::~VectorIOWriter(faiss::VectorIOWriter *this)
{
  *this = &unk_1F5537DA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5537D60;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5537DA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5537D60;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::VectorIOReader::~VectorIOReader(faiss::VectorIOReader *this)
{
  *this = &unk_1F5537DE8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5537D20;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5537DE8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5537D20;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::BufferedIOReader::~BufferedIOReader(faiss::BufferedIOReader *this)
{
  *this = &unk_1F5537CC0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5537D20;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5537CC0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5537D20;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1DA73F410);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C4714C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void faiss::BufferedIOWriter::operator()()
{
  __assert_rtn("operator()", "io.cpp", 197, "b0 == bsz");
}

{
  __assert_rtn("operator()", "io.cpp", 201, "ofs < 10000000");
}

void faiss::IndexIVFFlat::IndexIVFFlat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  faiss::IndexIVF::IndexIVF(a1, a2, a3, a4, 4 * a3, a5);
}

{
  faiss::IndexIVF::IndexIVF(a1, a2, a3, a4, 4 * a3, a5);
}

void faiss::IndexIVFFlat::add_core(faiss::IndexIVFFlat *this, unint64_t a2, const float *a3, const uint64_t *a4, const uint64_t *a5)
{
  if ((*(this + 25) & 1) == 0)
  {
    memset(&v16, 0, sizeof(v16));
    v8 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&v16, v8 + 1, 0);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    snprintf(v9, size, "Error: '%s' failed", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v16, "virtual void faiss::IndexIVFFlat::add_core(idx_t, const float *, const int64_t *, const int64_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 48);
  }

  if (!a5)
  {
    memset(&v16, 0, sizeof(v16));
    v12 = snprintf(0, 0, "Error: '%s' failed", "coarse_idx");
    std::string::resize(&v16, v12 + 1, 0);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    else
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v16.__r_.__value_.__l.__size_;
    }

    snprintf(v13, v14, "Error: '%s' failed", "coarse_idx");
    v15 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v15, &v16, "virtual void faiss::IndexIVFFlat::add_core(idx_t, const float *, const int64_t *, const int64_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 49);
  }

  if (!*(this + 14))
  {
    faiss::IndexIVFFlat::add_core();
  }

  faiss::DirectMap::check_can_add(this + 40, a4);
  faiss::DirectMapAdd::DirectMapAdd(&v16, (this + 160), a2, a4);
  if (*(this + 24) == 1)
  {
    printf("IndexIVFFlat::add_core: added %lld / %lld vectors\n", 0, a2);
  }

  *(this + 2) += a2;
  faiss::DirectMapAdd::~DirectMapAdd(&v16);
}

void sub_1D9C4748C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVFFlat::encode_vectors(faiss::IndexIVFFlat *this, uint64_t a2, const float *__src, const uint64_t *a4, unsigned __int8 *__dst, char a6)
{
  if (a6)
  {
    v11 = faiss::Level1Quantizer::coarse_code_size((this + 40));
    if (a2)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        v14 = a4[v13];
        v15 = *(this + 16) + v12;
        v16 = &__dst[v15 * v13];
        if (v14 < 0)
        {
          bzero(&__dst[v15 * v13], *(this + 16) + v12);
        }

        else
        {
          v17 = &__src[v13 * *(this + 2)];
          faiss::Level1Quantizer::encode_listno(this + 40, v14, v16);
          memcpy(&v16[v12], v17, *(this + 16));
        }

        ++v13;
      }

      while (a2 != v13);
    }
  }

  else
  {
    v18 = *(this + 16) * a2;

    memcpy(__dst, __src, v18);
  }
}

uint64_t faiss::IndexIVFFlat::sa_decode(faiss::IndexIVFFlat *this, uint64_t a2, const unsigned __int8 *a3, float *a4)
{
  result = faiss::Level1Quantizer::coarse_code_size((this + 40));
  if (a2)
  {
    v9 = result;
    v10 = 0;
    v11 = &a3[result];
    do
    {
      result = memcpy(&a4[v10 * *(this + 2)], &v11[(*(this + 16) + v9) * v10], *(this + 16));
      ++v10;
    }

    while (a2 != v10);
  }

  return result;
}

void faiss::IndexIVFFlat::get_InvertedListScanner(faiss::IndexIVFFlat *this)
{
  v1 = *(this + 7);
  if (v1 != 1)
  {
    if (!v1)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v3, "metric type not supported");
    faiss::FaissException::FaissException(exception, v3, "virtual InvertedListScanner *faiss::IndexIVFFlat::get_InvertedListScanner(BOOL) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 208);
  }

  operator new();
}

void sub_1D9C47754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *faiss::IndexIVFFlat::reconstruct_from_offset(faiss::IndexIVFFlat *this, uint64_t a2, uint64_t a3, float *a4)
{
  v6 = (*(**(this + 14) + 48))(*(this + 14));
  v7 = *(this + 16);

  return memcpy(a4, v6, v7);
}