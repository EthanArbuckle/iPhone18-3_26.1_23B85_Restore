uint64_t updateTokenDomainLanguageTags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v324 = 0;
  v325[0] = 0;
  v323 = 0;
  v322 = 0;
  v321 = 0;
  LogLevel = log_GetLogLevel(*(*a1 + 32));
  v320 = 0;
  v319 = 0;
  v318 = -1;
  v317 = 0;
  v316 = 0;
  v14 = (*(a1[3] + 152))(a2, a3, 3, a4, &v316);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v316)
  {
    if (LogLevel < 5)
    {
      return v14;
    }

    v33 = *(*a1 + 32);
    v34 = "no tokens to process for langmaps";
LABEL_38:
    log_OutText(v33, "FE_PUNCSPTN", 5, 0, v34, v11, v12, v13, v265);
    return v14;
  }

  v14 = (*(a1[3] + 104))(a2, a3, 3, a4, v325 + 2);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_22:
    v26 = 0;
LABEL_23:
    LOWORD(v28) = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v15 = HIWORD(v325[0]);
  if (!HIWORD(v325[0]))
  {
    goto LABEL_37;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    if (v17)
    {
      v17 = 1;
    }

    else
    {
      v14 = (*(a1[3] + 168))(a2, a3, v15, 0, 1, &v320, v325);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_40;
      }

      v15 = HIWORD(v325[0]);
      if (v320 == 6)
      {
        v14 = (*(a1[3] + 184))(a2, a3, HIWORD(v325[0]), 6, &v324 + 2);
        if ((v14 & 0x80000000) != 0)
        {
LABEL_40:
          v26 = 0;
          LOWORD(v28) = 0;
          v29 = 0;
          v30 = 0;
          v322 = v16;
          goto LABEL_24;
        }

        v17 = HIWORD(v324) == 1;
        v15 = HIWORD(v325[0]);
      }

      else
      {
        v17 = 0;
      }
    }

    ++v16;
    v18 = (*(a1[3] + 120))(a2, a3, v15, v325 + 2);
    v15 = HIWORD(v325[0]);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = HIWORD(v325[0]) == 0;
    }
  }

  while (!v19);
  v322 = v16;
  if (!v17)
  {
LABEL_37:
    v33 = *(*a1 + 32);
    v34 = "No LangMaps to process";
    goto LABEL_38;
  }

  v20 = strlen(a5);
  if (LogLevel < 5)
  {
    v26 = 0;
  }

  else
  {
    v21 = heap_Calloc(*(*a1 + 8), 1, v20 + 2);
    v26 = v21;
    if (!v21)
    {
      v14 = 2311069706;
      v38 = *a1;
      goto LABEL_56;
    }

    strcpy(v21, a5);
    dumpLingDB(a1, a2, a3, a4, a5, v26, "lingdb at start of langmap expansion", v27);
  }

  v309 = v20;
  v36 = v20 + 1;
  v37 = heap_Calloc(*(*a1 + 8), 1, v36);
  v38 = *a1;
  if (!v37)
  {
    v14 = 2311069706;
LABEL_56:
    log_OutPublic(*(v38 + 32), "FE_PUNCSPTN", 33000, 0, v22, v23, v24, v25, v265);
    goto LABEL_23;
  }

  v313 = v37;
  v39 = heap_Calloc(*(v38 + 8), 1, 2 * v36);
  v44 = *a1;
  if (!v39)
  {
    v14 = 2311069706;
    log_OutPublic(*(v44 + 32), "FE_PUNCSPTN", 33000, 0, v40, v41, v42, v43, v265);
    LOWORD(v28) = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_128;
  }

  v307 = v39;
  v45 = heap_Calloc(*(v44 + 8), 1, 4 * v36);
  v50 = *a1;
  v306 = v45;
  if (!v45 || (v323 = heap_Calloc(*(v50 + 8), 1, 28 * v16 + 28), v50 = *a1, !v323))
  {
    v14 = 2311069706;
    log_OutPublic(*(v50 + 32), "FE_PUNCSPTN", 33000, 0, v46, v47, v48, v49, v265);
    LOWORD(v28) = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_126;
  }

  v300 = LogLevel;
  v30 = heap_Calloc(*(v50 + 8), 1, 48);
  v55 = *a1;
  if (!v30)
  {
    v14 = 2311069706;
    log_OutPublic(*(v55 + 32), "FE_PUNCSPTN", 33000, 0, v51, v52, v53, v54, v265);
    LOWORD(v28) = 0;
    v29 = 0;
    goto LABEL_126;
  }

  __s = a5;
  v29 = heap_Calloc(*(v55 + 8), 1, 1024);
  if (!v29)
  {
    goto LABEL_124;
  }

  v318 = -1;
  v60 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "normal", &v319, &v318, &v317);
  if ((v60 & 0x80000000) != 0)
  {
    v14 = v60;
LABEL_125:
    LOWORD(v28) = 0;
    goto LABEL_126;
  }

  if (v318)
  {
    v61 = *v319;
    v62 = strchr(*v319, v317);
    if (v62)
    {
      *v62 = 0;
      v61 = *v319;
    }
  }

  else
  {
    v61 = "normal";
  }

  v63 = strlen(v61);
  v64 = heap_Calloc(*(*a1 + 8), 1, (v63 + 1));
  if (!v64)
  {
LABEL_124:
    v14 = 2311069706;
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v56, v57, v58, v59, v265);
    goto LABEL_125;
  }

  *v30 = strcpy(v64, v61);
  v65 = (*(a1[3] + 104))(a2, a3, 3, a4, v325 + 2);
  if ((v65 & 0x80000000) != 0)
  {
    v14 = v65;
    LOWORD(v28) = 1;
    goto LABEL_126;
  }

  v322 = 0;
  v69 = HIWORD(v325[0]);
  v70 = 0;
  if (!HIWORD(v325[0]))
  {
    LOWORD(v28) = 1;
LABEL_131:
    LOWORD(v295) = v28;
    v298 = v70;
    if (v300 < 5)
    {
      __dstb = v323;
      v14 = modifyTokenLangMaps(a1, a2, a3, v323, v70, __s);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_126;
      }
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before processing", v66, v67, v68, v265);
      __dstb = v323;
      dumpTokDB(a1, a2, a3, v323, v70, v30);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v119, v120, v121, __s);
      v14 = modifyTokenLangMaps(a1, a2, a3, __dstb, v70, __s);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_126;
      }

      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after langmap realign", v122, v123, v124, v266);
      dumpTokDB(a1, a2, a3, __dstb, v70, v30);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v125, v126, v127, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v128, v129, v130, v313);
    }

    v134 = v70;
    if (v70)
    {
      v135 = 0;
      v136 = __dstb;
      while (1)
      {
        v137 = &v136[28 * v135];
        if (*(v137 + 3) != 3 && *(v137 + 2) == 6)
        {
          v291 = v135;
          v14 = (*(a1[3] + 184))(a2, a3, *v137, 6, &v324 + 2);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_339;
          }

          v134 = v298;
          v136 = __dstb;
          if (HIWORD(v324) == 1)
          {
            v14 = (*(a1[3] + 176))(a2, a3, *v137, 6, &v321, v325);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_339;
            }

            v138 = strlen(v321);
            v139 = heap_Calloc(*(*a1 + 8), 1, v138 + 1);
            if (!v139)
            {
LABEL_335:
              v14 = 2311069706;
              goto LABEL_338;
            }

            v140 = v139;
            strcpy(v139, v321);
            v141 = *&__dstb[28 * v291 + 2];
            v142 = *(v137 + 2);
            if (v141 < v142)
            {
              v143 = *v140;
              v144 = &v140[v141];
              do
              {
                if (v144[-*(v137 + 1)] != 32)
                {
                  v143 = v144[-*(v137 + 1)];
                }

                if (v143 != 32)
                {
                  v313[v141] = v143;
                  LOWORD(v142) = *(v137 + 2);
                }

                ++v144;
                ++v141;
              }

              while (v141 < v142);
            }

            v145 = *v137;
            heap_Free(*(*a1 + 8), v140);
            v136 = __dstb;
            v135 = 0;
            v134 = v298;
            while (*&__dstb[28 * v135] != v145)
            {
              if (++v135 >= v298)
              {
                v135 = v298;
                break;
              }
            }
          }
        }

        if (++v135 >= v134)
        {
          goto LABEL_158;
        }
      }
    }

    v136 = __dstb;
LABEL_158:
    if (v300 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after inserting langMaps", v131, v132, v133, v265);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v146, v147, v148, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v149, v150, v151, v313);
      v136 = __dstb;
      v134 = v298;
    }

    if (v134)
    {
      v152 = 0;
      v153 = v134;
      v154 = v136 + 36;
      v155 = 2;
      v156 = v309;
      v292 = v134;
      do
      {
        v157 = &v136[28 * v152];
        if (*(v157 + 2) != 6 || *(v157 + 5))
        {
          goto LABEL_201;
        }

        v158 = *(v157 + 2);
        v159 = v158;
        v160 = v158;
        if (v156 > v158)
        {
          v160 = *(v157 + 2);
          do
          {
            if (__s[v160] == 32)
            {
              break;
            }

            ++v160;
          }

          while (v156 > v160);
          v159 = v160;
        }

        if (__s[v160] == 32 && v156 > v159)
        {
          do
          {
            if (__s[v160] != 32)
            {
              break;
            }

            ++v160;
          }

          while (v156 > v160);
          v159 = v160;
        }

        if (v156 < v159)
        {
          goto LABEL_201;
        }

        v283 = v155;
        *__ca = v154;
        if (v158 != v160)
        {
          v278 = &v136[28 * v152];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting pTokDB[%d].to %d -> %d, as not end of word (u16SentLen=%d)", v131, v132, v133, v152);
          v157 = v278;
          v153 = v292;
          v136 = __dstb;
        }

        if (v152 + 1 >= v153)
        {
          goto LABEL_194;
        }

        v162 = v283;
        for (i = *__ca; ; i += 28)
        {
          v164 = *(i - 3);
          v165 = v160 <= v164 || *i != 6 || *(i + 1) == 3 || v307[v160] == v307[v164];
          if (v162 >= v153)
          {
            if (!v165)
            {
              goto LABEL_199;
            }

            goto LABEL_194;
          }

          if (v160 <= *(i + 11))
          {
            break;
          }

          if (!v165)
          {
            goto LABEL_199;
          }

LABEL_191:
          ++v162;
        }

        if (*(i + 7) != 6 && v165)
        {
          goto LABEL_191;
        }

        if (!v165)
        {
LABEL_199:
          v170 = &v136[28 * v162];
          v268 = *(v170 + 1);
          v270 = *(v170 + 2);
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", v131, v132, v133, *v170);
          v153 = v292;
          v136 = __dstb;
          v156 = v309;
          goto LABEL_200;
        }

LABEL_194:
        v166 = &v136[28 * v152];
        v167 = *(v166 + 2);
        if (v167 < v160)
        {
          v168 = &v313[v167];
          v169 = v160 - v167;
          do
          {
            *v168++ = v313[*&v136[28 * v152 + 2]];
            --v169;
          }

          while (v169);
        }

        *(v166 + 2) = v160;
        v267 = *(v157 + 1);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", v131, v132, v133, *v157);
        v136 = __dstb;
        v156 = v309;
        v153 = v292;
LABEL_200:
        v155 = v283;
        v154 = *__ca;
LABEL_201:
        ++v152;
        v154 += 28;
        ++v155;
      }

      while (v152 != v153);
      v171 = 0;
      while (1)
      {
        v172 = &v136[28 * v171];
        if (*(v172 + 2) != 6)
        {
          goto LABEL_236;
        }

        v173 = *(v172 + 1);
        v174 = *(v172 + 1);
        if (v173 >= 1)
        {
          break;
        }

        if (v173 < 0)
        {
          goto LABEL_236;
        }

LABEL_210:
        if (*__s == 32)
        {
          v175 = 0;
          v176 = 0;
LABEL_212:
          if ((v175 + 1) != v173)
          {
            v310 = &v136[28 * v171];
            __cd = v175 + 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v131, v132, v133, v174);
            v181 = __cd;
            goto LABEL_219;
          }

          if (!v175)
          {
            goto LABEL_218;
          }

          goto LABEL_236;
        }

        if (*(v172 + 1))
        {
          v176 = 0;
LABEL_218:
          v310 = &v136[28 * v171];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v131, v132, v133, v174);
          v181 = 0;
LABEL_219:
          v182 = 0;
          v183 = &__dstb[28 * v171];
          v186 = *(v183 + 1);
          v184 = (v183 + 2);
          v185 = v186;
          do
          {
            v187 = &__dstb[28 * v182];
            v188 = *(v187 + 1);
            if (v188 > v185)
            {
              break;
            }

            if (v171 != v182)
            {
              v189 = *(v187 + 2);
              if (v188 <= v181 && v189 == 6)
              {
                if (*(v187 + 2) > v181)
                {
                  goto LABEL_238;
                }
              }

              else if (v189 == 5 && *(v187 + 3) != 3 && v307[v176] != v307[v188])
              {
LABEL_238:
                v269 = *(v187 + 1);
                v272 = *(v187 + 2);
                log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", v178, v179, v180, *v187);
                v136 = __dstb;
                v153 = v292;
                goto LABEL_236;
              }
            }

            ++v182;
          }

          while (v182 < v298);
          if (v185 > v181)
          {
            v191 = v313[v185];
            v192 = v181;
            do
            {
              v313[v192++] = v191;
            }

            while (v192 < *v184);
          }

          *v184 = v181;
          v271 = *(v310 + 2);
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", v178, v179, v180, *v310);
          v136 = __dstb;
          v153 = v292;
        }

LABEL_236:
        if (++v171 == v153)
        {
          goto LABEL_239;
        }
      }

      v175 = *(v172 + 1);
      while (1)
      {
        v176 = v175;
        if (__s[v175] == 32)
        {
          goto LABEL_212;
        }

        v177 = v175--;
        if (v177 <= 1)
        {
          goto LABEL_210;
        }
      }
    }

LABEL_239:
    if (v300 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Adjusting End Check", v131, v132, v133, v265);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v193, v194, v195, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v196, v197, v198, v313);
    }

    v199 = strlen(__s);
    v204 = v199;
    v205 = v313;
    v206 = v298;
    v293 = v199;
    v311 = v199;
    if (v199)
    {
      v207 = 0;
      v208 = 0;
      v209 = *v313;
      do
      {
        v210 = v205[v208];
        if (v210 == v209 || __s[v208] != 32)
        {
          ++v208;
          v209 = v210;
        }

        else
        {
          v211 = 0;
          v212 = v208;
          do
          {
            v213 = v212;
            v214 = v211;
            if (++v212 >= v199)
            {
              break;
            }

            if (v205[v212] != v210)
            {
              break;
            }

            ++v211;
          }

          while (__s[v212] == 32);
          if (v209 != 80)
          {
            __cb = v209;
            v276 = v208;
            v279 = &v205[v208];
            v284 = v213;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Append region %d..%d to previous %c region", v201, v202, v203, v207);
            v213 = v284;
            v209 = __cb;
            v199 = v293;
            v206 = v298;
            v205 = v313;
            if (v276 < v212)
            {
              memset(v279, __cb, v214 + 1);
              v213 = v284;
              v209 = __cb;
              v199 = v293;
              v206 = v298;
              v205 = v313;
            }
          }

          v208 = v213 + 2;
          v204 = v311;
        }

        v207 = v208;
      }

      while (v204 > v208);
    }

    if (v300 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Region Check", v201, v202, v203, v265);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v215, v216, v217, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v218, v219, v220, v313);
      v204 = v311;
      v206 = v298;
      v205 = v313;
    }

    if (v206)
    {
      v221 = v206;
      v222 = (__dstb + 16);
      do
      {
        if (*(v222 - 2) == 5)
        {
          v223 = strcmp(v30[*v222], "phon");
          v204 = v311;
          v205 = v313;
          if (v223)
          {
            *(v222 - 1) = 3;
          }
        }

        v222 += 14;
        --v221;
      }

      while (v221);
    }

    if (v204)
    {
      v224 = 0;
      v225 = v307;
      v226 = *v307;
      v227 = *v205;
      v228 = v293;
      do
      {
        if (v204 <= v224)
        {
          v229 = v224;
        }

        else
        {
          v229 = v224;
          while (v205[v229] == v227 && v225[v229] == v226)
          {
            v229 = (v229 + 1);
            if (v204 <= v229)
            {
              v230 = 0;
              goto LABEL_273;
            }
          }

          v230 = 1;
LABEL_273:
          if (v229 != v224)
          {
            v315 = 0;
            v314 = 0;
            v200 = v205[v224];
            if (v200 != 80)
            {
              __dstd = v230;
              v231 = v226;
              insertDomainAndLang(a1, &v323, &v322, v225[v224], v200, *(v306 + 4 * v224), v224, v229, v30, &v315 + 1, &v315, &v314);
              LOBYTE(v230) = __dstd;
              v226 = v231;
              v204 = v311;
              v205 = v313;
              v14 = v232;
              v228 = v293;
              v225 = v307;
            }

            if ((v230 & 1) == 0)
            {
              goto LABEL_285;
            }

LABEL_279:
            if (v225[v229] != v226 || v205[v229] != v227)
            {
              v227 = v205[v229];
            }

            v226 = v225[v229];
            goto LABEL_285;
          }

          if (v230)
          {
            goto LABEL_279;
          }
        }

LABEL_285:
        v224 = v229;
      }

      while (v229 < v228);
    }

    if (v300 <= 4)
    {
      v234 = v322;
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before update lingdb", v201, v202, v203, v265);
      v234 = v322;
      dumpTokDB(a1, a2, a3, v323, v322, v30);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v235, v236, v237, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v238, v239, v240, v313);
    }

    if (!v234)
    {
LABEL_331:
      if (v300 >= 5)
      {
        dumpLingDB(a1, a2, a3, a4, __s, v26, "lingdb at end of langmap expansion", v203);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v259, v260, v261, v313);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v262, v263, v264, __s);
      }

      goto LABEL_339;
    }

    v241 = 0;
    v242 = v323;
    __dstc = v234;
    v312 = v323;
    __cc = v234;
    while (1)
    {
      v243 = (v242 + 28 * v241);
      v244 = *(v243 + 3);
      if (v244 == 1)
      {
        break;
      }

      if (v244 == 3)
      {
        if (*v243)
        {
          v246 = (*(a1[3] + 192))(a2, a3);
          goto LABEL_304;
        }
      }

      else if (v244 == 2)
      {
        v245 = v241;
        v299 = v242 + 28 * v241;
        do
        {
          if (--v245 < 0)
          {
            for (j = v241 + 1; v234 > j; ++j)
            {
              v248 = v242 + 28 * j;
              if (*(v248 + 12) != 3 && *v248)
              {
                v76 = (*(a1[3] + 88))(a2, a3);
                goto LABEL_299;
              }
            }

            v76 = (*(a1[3] + 72))(a2, a3, 3, a4, v325 + 2);
            if ((v76 & 0x80000000) != 0)
            {
              goto LABEL_333;
            }

            goto LABEL_312;
          }
        }

        while (*(v242 + 28 * v245 + 12) == 3);
        if (!*(v242 + 28 * v245))
        {
          log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33004, 0, v200, v243, v202, v203, v265);
          v14 = 2311069696;
          goto LABEL_339;
        }

        v76 = (*(a1[3] + 80))(a2, a3);
LABEL_299:
        if ((v76 & 0x80000000) != 0)
        {
LABEL_333:
          v14 = v76;
          goto LABEL_339;
        }

LABEL_312:
        v76 = (*(a1[3] + 160))(a2, a3, HIWORD(v325[0]), 0, 1, v312 + 28 * v241 + 8, &v324);
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_333;
        }

        v294 = v312 + 28 * v241;
        v76 = (*(a1[3] + 160))(a2, a3, HIWORD(v325[0]), 1, 1, v294 + 2, &v324);
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_333;
        }

        v76 = (*(a1[3] + 160))(a2, a3, HIWORD(v325[0]), 2, 1, v312 + 28 * v241 + 4, &v324);
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_333;
        }

        *v299 = HIWORD(v325[0]);
        if (*(v312 + 28 * v241 + 24))
        {
          v76 = (*(a1[3] + 160))(a2, a3);
          if ((v76 & 0x80000000) != 0)
          {
            goto LABEL_333;
          }
        }

        v249 = strlen(v30[v307[*(v294 + 2)]]);
        v250 = heap_Calloc(*(*a1 + 8), 1, (v249 + 7) + 1);
        if (!v250)
        {
          goto LABEL_335;
        }

        v251 = v250;
        if (v307[*(v299 + 2)])
        {
          strcpy(v250, v30[v307[*(v299 + 2)]]);
          v252 = v312 + 28 * v241;
          v254 = *(v252 + 18);
          v253 = (v252 + 18);
          if (v254 != 78)
          {
            *&v251[strlen(v251)] = 95;
            v255 = *(v29 + 8 * *v253);
            if (v255)
            {
              strcat(v251, v255);
            }

            else
            {
              strcat(v251, "latin");
            }
          }

LABEL_329:
          v258 = strlen(v251);
          v14 = (*(a1[3] + 160))(a2, a3, HIWORD(v325[0]), 4, (v258 + 1), v251, &v324);
          heap_Free(*(*a1 + 8), v251);
          v234 = __cc;
          v242 = v312;
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_339;
          }

          goto LABEL_330;
        }

        v256 = *(v299 + 18);
        if (v256 == 78)
        {
          v257 = *v30;
        }

        else
        {
          v257 = *(v29 + 8 * v256);
          if (!v257)
          {
            strcpy(v250, "latin");
            goto LABEL_329;
          }
        }

        strcpy(v250, v257);
        goto LABEL_329;
      }

LABEL_330:
      if (++v241 == __dstc)
      {
        goto LABEL_331;
      }
    }

    v246 = (*(a1[3] + 160))(a2, a3, *v243, 2, 1, v243 + 2, &v324);
LABEL_304:
    v242 = v312;
    v14 = v246;
    if ((v246 & 0x80000000) != 0)
    {
      goto LABEL_339;
    }

    goto LABEL_330;
  }

  v14 = 2311069706;
  v274 = v20;
  v275 = 5;
  v71 = v323;
  v28 = 1;
  while (1)
  {
    v296 = v70;
    v72 = v71 + 28 * v70;
    *v72 = v69;
    *(v72 + 12) = 0;
    *(v72 + 16) = 0;
    v277 = (v72 + 16);
    *(v72 + 18) = 32;
    *__c = v72;
    v290 = (v72 + 18);
    *(v72 + 24) = 0;
    v280 = (v72 + 24);
    *(v72 + 20) = 0;
    v73 = v71;
    v74 = (*(a1[3] + 168))(a2, a3, HIWORD(v325[0]), 1, 1, v72 + 2, v325);
    if ((v74 & 0x80000000) != 0 || (v74 = (*(a1[3] + 168))(a2, a3, HIWORD(v325[0]), 2, 1, &v73[28 * v296 + 4], v325), (v74 & 0x80000000) != 0))
    {
      v14 = v74;
      goto LABEL_126;
    }

    v295 = v28;
    __dst = v73;
    v75 = &v73[28 * v296];
    v76 = (*(a1[3] + 168))(a2, a3, HIWORD(v325[0]), 0, 1, v75 + 8, v325);
    if ((v76 & 0x80000000) != 0)
    {
      goto LABEL_333;
    }

    if (*(v75 + 2) == 5)
    {
      break;
    }

    v95 = v322;
LABEL_118:
    v28 = v295;
    v70 = v95 + 1;
    v322 = v95 + 1;
    v117 = (*(a1[3] + 120))(a2, a3, HIWORD(v325[0]), v325 + 2);
    v69 = HIWORD(v325[0]);
    if (v117)
    {
      v118 = 1;
    }

    else
    {
      v118 = HIWORD(v325[0]) == 0;
    }

    v71 = __dst;
    if (v118)
    {
      goto LABEL_131;
    }
  }

  HIWORD(v315) = 0;
  if (((*(a1[3] + 184))(a2, a3, HIWORD(v325[0]), 6, &v315 + 2) & 0x80000000) == 0 && HIWORD(v315) == 1)
  {
    *v280 = 1;
  }

  v76 = (*(a1[3] + 176))(a2, a3, HIWORD(v325[0]), 4, &v321, v325);
  if ((v76 & 0x80000000) != 0)
  {
    goto LABEL_333;
  }

  v77 = a1[16];
  if (!v77)
  {
    goto LABEL_339;
  }

  v78 = v321;
  v281 = strstr(v77, v321);
  v79 = strlen(v78);
  v80 = strlen(*v30);
  v81 = *(*a1 + 8);
  if (v80 <= v79)
  {
    v82 = v79 + 1;
  }

  else
  {
    v82 = (v80 + 1);
  }

  __dsta = heap_Calloc(*(*a1 + 8), 1, v82);
  if (!__dsta)
  {
    goto LABEL_338;
  }

  v87 = v321;
  if (strcmp(v321, "phon") && strcmp(v87, "internal-nuance-system-norm") && strcmp(v87, "prompt") && (!strcmp(v87, "latin") || (!v281 || v281[strlen(v87)] != 124) && !strchr(v87, 95)))
  {
    strcpy(__dsta, *v30);
    v98 = __toupper(*v321);
    *v290 = v98;
    *(v29 + 8 * v98) = v321;
LABEL_93:
    v92 = v313;
    goto LABEL_94;
  }

  strcpy(__dsta, v87);
  *v290 = 78;
  v91 = v79;
  v92 = v313;
  if (!v79)
  {
    goto LABEL_94;
  }

  if (*v321 == 95)
  {
    LODWORD(v93) = 0;
    v94 = 0;
LABEL_91:
    v273 = v93 + 1;
    v282 = v91;
    v97 = __toupper(v321[v273]);
    *v290 = v97;
    *(v29 + 8 * v97) = &v321[v273];
    bzero(&__dsta[v94], v282 - v93);
    goto LABEL_93;
  }

  LODWORD(v93) = 0;
  v96 = v79;
  while (1)
  {
    v93 = v93 + 1;
    if (v93 >= v96)
    {
      break;
    }

    v94 = v93;
    if (v321[v93] == 95)
    {
      goto LABEL_91;
    }
  }

LABEL_94:
  v99 = *(*__c + 4);
  if (v99 > v274)
  {
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 0, 0, "Conflicting depes rules in fe_puncsptn - possible FE data error", v88, v89, v90, v265);
    heap_Free(*(*a1 + 8), __dsta);
    v14 = 2311069962;
    goto LABEL_339;
  }

  v100 = *(*__c + 2);
  v101 = v295;
  if (v100 < v99)
  {
    v102 = *(*__c + 18);
    do
    {
      v92[v100++] = v102;
    }

    while (v100 < *(*__c + 4));
  }

  if (v295)
  {
    v103 = 0;
    while (LH_stricmp(v30[v103], __dsta))
    {
      if (v295 == ++v103)
      {
        v104 = v306;
        v101 = v295;
        v105 = v296;
        goto LABEL_106;
      }
    }

    *v277 = v103;
    heap_Free(*(*a1 + 8), __dsta);
    __dsta = 0;
    v101 = v295;
  }

  else
  {
    LOWORD(v103) = 0;
  }

  v104 = v306;
  v105 = v296;
  if (v103 != v101)
  {
    v107 = v323;
    v108 = v322;
LABEL_112:
    v110 = (v107 + 28 * v108);
    v111 = v110[1];
    LODWORD(v112) = v110[2];
    if (v111 < v112)
    {
      v113 = v110[8];
      v114 = *(v107 + 28 * v108 + 24);
      do
      {
        v307[v111] = v113;
        *(v104 + 4 * v111++) = v114;
        v112 = v110[2];
      }

      while (v111 < v112);
    }

    __dst = v107;
    v297 = v108;
    v115 = strcmp(v30[v110[8]], "phon");
    v95 = v297;
    if (!v115)
    {
      v116 = v110[1];
      if (v116 < v112)
      {
        do
        {
          v313[v116++] = 80;
        }

        while (v116 < *&__dst[28 * v297 + 4]);
      }
    }

    goto LABEL_118;
  }

LABEL_106:
  v106 = v275;
  if (v101 < v275)
  {
    v30[v101] = __dsta;
    v107 = v323;
    *&v323[28 * v105 + 16] = v101;
LABEL_111:
    v275 = v106;
    v108 = v322;
    *(v107 + 28 * v322 + 16) = v101;
    v295 = (v101 + 1);
    goto LABEL_112;
  }

  v109 = heap_Realloc(*(*a1 + 8), v30, 8 * v275 + 48);
  if (v109)
  {
    v106 = (v275 + 5);
    v104 = v306;
    *(v109 + 8 * v101) = __dsta;
    v107 = v323;
    v30 = v109;
    goto LABEL_111;
  }

  if (__dsta)
  {
    heap_Free(*(*a1 + 8), __dsta);
  }

LABEL_338:
  log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v83, v84, v85, v86, v265);
LABEL_339:
  LOWORD(v28) = v295;
LABEL_126:
  heap_Free(*(*a1 + 8), v307);
  if (v306)
  {
    heap_Free(*(*a1 + 8), v306);
  }

LABEL_128:
  heap_Free(*(*a1 + 8), v313);
LABEL_24:
  if (v323)
  {
    heap_Free(*(*a1 + 8), v323);
    v323 = 0;
    v322 = 0;
  }

  if (v30)
  {
    if (v28)
    {
      v31 = v28;
      v32 = v30;
      do
      {
        heap_Free(*(*a1 + 8), *v32);
        *v32++ = 0;
        --v31;
      }

      while (v31);
    }

    heap_Free(*(*a1 + 8), v30);
  }

  if (v29)
  {
    heap_Free(*(*a1 + 8), v29);
  }

  if (v26)
  {
    heap_Free(*(*a1 + 8), v26);
  }

  return v14;
}

uint64_t hlp_AdjustMarkersToWordBoundaries(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = result;
    v4 = *(a2 + 12);
    v5 = (a2 + 44);
    v6 = a3 - 1;
    do
    {
      result = hlp_PositionToWordBoundary(v3, *v5 - v4);
      *v5 = result + v4;
      v5 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t hlp_AdjustUserTnToWordBoundaries(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  result = (*(a4 + 104))(a2, a3, 1, 0, &v13 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a4 + 152))(a2, a3, 3, HIWORD(v13), &v9);
    if ((result & 0x80000000) == 0)
    {
      if (v9)
      {
        for (result = (*(a4 + 104))(a2, a3, 3, HIWORD(v13), &v13); (result & 0x80000000) == 0; result = (*(a4 + 120))(a2, a3, v13, &v13))
        {
          if (!v13)
          {
            break;
          }

          result = (*(a4 + 168))(a2, a3, v13, 0, 1, &v10, &v12 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v10 == 5)
          {
            result = (*(a4 + 168))(a2, a3, v13, 1, 1, &v12, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            LOWORD(v12) = hlp_PositionToWordBoundary(a1, v12);
            result = (*(a4 + 160))(a2, a3, v13, 1, 1, &v12, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a4 + 168))(a2, a3, v13, 2, 1, &v11, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v11 = hlp_PositionToWordBoundary(a1, v11);
            result = (*(a4 + 160))(a2, a3, v13, 2, 1, &v11, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UpdateLingDBTokensForDeletion(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  result = (*(a3 + 104))(a1, a2, 1, 0, &v14 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 152))(a1, a2, 3, HIWORD(v14), &v12);
    if ((result & 0x80000000) == 0)
    {
      if (v12)
      {
        result = (*(a3 + 104))(a1, a2, 3, HIWORD(v14), &v14);
        if ((result & 0x80000000) == 0)
        {
          while (v14)
          {
            result = (*(a3 + 168))(a1, a2, v14, 1, 1, &v13, &v13 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (v13 > a4)
            {
              LOWORD(v13) = v13 - 1;
              result = (*(a3 + 160))(a1, a2, v14, 1, 1, &v13, &v13 + 2);
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            result = (*(a3 + 168))(a1, a2, v14, 2, 1, &v12 + 2, &v13 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v9 = HIWORD(v12);
            if (HIWORD(v12) > a4)
            {
              --HIWORD(v12);
              result = (*(a3 + 160))(a1, a2, v14, 2, 1, &v12 + 2, &v13 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v9 = HIWORD(v12);
            }

            if (v13 == v9)
            {
              v11 = 0;
              result = (*(a3 + 168))(a1, a2, v14, 0, 1, &v11, &v13 + 2);
              if (v11 == 5)
              {
                v10 = v14;
              }

              else
              {
                v10 = 0;
              }

              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            else
            {
              v10 = 0;
            }

            result = (*(a3 + 120))(a1, a2);
            if ((result & 0x80000000) == 0)
            {
              if (!v10)
              {
                continue;
              }

              result = (*(a3 + 192))(a1, a2, v10);
              if ((result & 0x80000000) == 0)
              {
                continue;
              }
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UpdateMarkersForDeletion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (result + 16);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(result + 12);
      if (*v4)
      {
        v8 = v5 - v7;
        if (v5 >= v7 && v8 <= a3 && v5 + v6 > v7 && v5 + v6 - v7 > a3)
        {
          *v4 = v6 - 1;
        }
      }

      else
      {
        v8 = v5 - v7;
      }

      if (v5 > v7 && v8 > a3)
      {
        *(v4 - 1) = v5 - 1;
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

size_t hlp_AdjustPuncMarkers(const char *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = *(a2 + 12);
  result = strlen(a1);
  if (v3)
  {
    v8 = result;
    v3 = v3;
    v9 = (a2 + 12);
    do
    {
      v10 = *v9 - v6;
      if (*v9 != v6 && v10 < v8 && a1[v10 - 1] != 32)
      {
        result = a1[v10];
        if (result != 32)
        {
          result = utf8_determineUTF8CharLength(result);
          if (a1[result + v10] == 32 && *(v9 - 3) != 99)
          {
            *v9 += result;
          }
        }
      }

      v9 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fe_puncsptn_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2311069704;
  }
}

uint64_t fe_puncsptn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2311069697;
  }

  result = 0;
  *a2 = &IFePuncsptn;
  return result;
}

uint64_t dumpLingDB(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s", a6, a7, a8, a7);
  result = (*(a1[3] + 104))(a2, a3, 3, a4, &v31 + 2);
  if ((result & 0x80000000) == 0)
  {
    for (i = HIWORD(v31); HIWORD(v31); i = HIWORD(v31))
    {
      result = (*(a1[3] + 168))(a2, a3, i, 1, 1, &v31, &v29);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v31), 2, 1, &v30, &v29);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v31), 0, 1, &v28, &v29);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v28 - 5 <= 1)
      {
        result = (*(a1[3] + 176))(a2, a3, HIWORD(v31), 4, &v25, &v29);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v28 == 6)
        {
          result = (*(a1[3] + 176))(a2, a3, HIWORD(v31), 3, &v24, &v29);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (((*(a1[3] + 184))(a2, a3, HIWORD(v31), 6, &v27 + 2) & 0x80000000) == 0 && HIWORD(v27) == 1)
          {
            result = (*(a1[3] + 176))(a2, a3, HIWORD(v31), 6, &v26, &v27);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      v16 = v30;
      strncpy(a6, (a5 + v31), v30 - v31);
      a6[v16 - v31] = 0;
      if (v28 > 4)
      {
        if (v28 == 5)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d ESC(%-9s) %s", v17, v18, v19, HIWORD(v31));
        }

        else if (v28 == 6)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s %s", v17, v18, v19, HIWORD(v31));
        }
      }

      else
      {
        v23 = 0;
        (*(a1[3] + 264))(a2, a3, v28, &v23);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s", v20, v21, v22, HIWORD(v31));
      }

      result = (*(a1[3] + 120))(a2, a3, HIWORD(v31), &v31 + 2);
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t dumpTokDB(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a5)
  {
    v9 = result;
    v10 = 0;
    v11 = a5;
    v12 = a4 + 12;
    do
    {
      v30 = 0;
      (*(v9[3] + 264))(a2, a3, *(v12 - 4), &v30);
      v16 = *(*v9 + 32);
      v17 = *(v12 - 12);
      if (*(v12 - 4) == 5)
      {
        v18 = *v12 - 1;
        if (v18 <= 2)
        {
          v19 = off_1E81A4680[v18];
        }

        v29 = *(v12 + 6);
        v28 = *(a6 + 8 * *(v12 + 4));
        v24 = *(v12 - 10);
        v26 = *(v12 - 8);
        v22 = *(v12 - 12);
        result = log_OutText(v16, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s %s %c %s", v13, v14, v15, v10);
      }

      else
      {
        v20 = *v12 - 1;
        if (v20 <= 2)
        {
          v21 = off_1E81A4680[v20];
        }

        v27 = *(v12 - 8);
        v23 = *(v12 - 12);
        v25 = *(v12 - 10);
        result = log_OutText(v16, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s", v13, v14, v15, v10);
      }

      ++v10;
      v12 += 28;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t modifyTokenLangMaps(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v49 = 0;
  __src = 0;
  __s = 0;
  v46 = 0;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = a5;
    v45 = a5;
    while (1)
    {
      v14 = (a4 + 28 * v11);
      if (*(v14 + 2) == 6)
      {
        v12 = (*(a1[3] + 184))(a2, a3, *v14, 6, &v49);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (v49 == 1)
        {
          v15 = (*(a1[3] + 176))(a2, a3, *v14, 6, &__s, &v46);
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v12 = (*(a1[3] + 176))(a2, a3, *v14, 3, &__src, &v46);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (v11)
          {
            v19 = 0;
            while (1)
            {
              v20 = a4 + 28 * v19;
              if (*(v20 + 8) == 5 && v14[1] >= *(v20 + 2))
              {
                v21 = v14[2];
                v22 = *(v20 + 4);
                if (v21 < v22)
                {
                  v23 = v14[2];
                  while (*(a6 + v23) == 32)
                  {
                    if (v22 == ++v23)
                    {
                      LODWORD(v23) = *(v20 + 4);
                      goto LABEL_18;
                    }
                  }

                  LODWORD(v23) = v23;
LABEL_18:
                  if (v23 != v21 && v23 == v22)
                  {
                    break;
                  }
                }
              }

              if (++v19 == v11)
              {
                v13 = v45;
                goto LABEL_22;
              }
            }

            *(v14 + 5) = 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "spaced region found...adjust token end from %d to %d", v16, v17, v18, v21);
            v25 = *(v20 + 4);
            v24 = (v20 + 4);
            v43 = (v25 + strlen(__s) - v14[2]) + 1;
            v26 = heap_Calloc(*(*a1 + 8), 1, v43);
            if (!v26)
            {
              log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v27, v28, v29, v30, v42);
              return 2311069706;
            }

            v31 = v26;
            v32 = strcpy(v26, __s);
            strncat(v32, (a6 + v14[2]), *v24 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_LANGMAP field from %s to %s", v33, v34, v35, __s);
            __dst = v31;
            v36 = (*(a1[3] + 160))(a2, a3, *v14, 6, v43, v31, &v46);
            if ((v36 & 0x80000000) != 0)
            {
              goto LABEL_34;
            }

            v12 = 2311069696;
            if (v46 != v43)
            {
              goto LABEL_35;
            }

            strcpy(__dst, __src);
            strncat(__dst, (a6 + v14[2]), *v24 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_NORM field from %s to %s", v37, v38, v39, __src);
            v36 = (*(a1[3] + 160))(a2, a3, *v14, 3, v43, __dst, &v46);
            if ((v36 & 0x80000000) != 0)
            {
LABEL_34:
              v12 = v36;
LABEL_35:
              v40 = __dst;
LABEL_36:
              heap_Free(*(*a1 + 8), v40);
              return v12;
            }

            v40 = __dst;
            if (v46 != v43)
            {
              goto LABEL_36;
            }

            heap_Free(*(*a1 + 8), __dst);
            v14[2] = *v24;
            v12 = (*(a1[3] + 160))(a2, a3, *v14, 2, 1, v24, &v46);
            v13 = v45;
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }
          }
        }
      }

LABEL_22:
      if (++v11 == v13)
      {
        return v12;
      }
    }
  }

  return 0;
}

double insertDomainAndLang(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, char a5, int a6, uint64_t a7, __int16 a8, uint64_t a9, __int16 *a10, __int16 *a11, _WORD *a12)
{
  v19 = *a2;
  v20 = *a3;
  if (*a3)
  {
    v21 = 0;
    v22 = (v19 + 40);
    while (1)
    {
      if (*(v22 - 7) != 3)
      {
        v23 = *(v22 - 19);
        if (v23 > a7)
        {
          goto LABEL_14;
        }

        if (v23 == a7)
        {
          break;
        }
      }

      ++v21;
      v22 += 7;
      if (v20 == v21)
      {
        v24 = 0;
        LOWORD(v21) = *a3;
        goto LABEL_16;
      }
    }

    if (v21 + 1 < v20)
    {
      while (*(v22 - 5) == a7 && *v22 != 3)
      {
        v24 = v21 + 1;
        v25 = v21 + 2;
        v22 += 7;
        LOWORD(v21) = v21 + 1;
        if (v25 >= v20)
        {
          LOWORD(v21) = v24;
          goto LABEL_16;
        }
      }

LABEL_14:
      v24 = v21;
      goto LABEL_16;
    }

    v24 = *a3;
  }

  else
  {
    LOWORD(v21) = 0;
    v24 = 0;
  }

LABEL_16:
  v26 = heap_Realloc(*(*a1 + 8), v19, 28 * *a3 + 56);
  if (v26)
  {
    v31 = v26;
    *a2 = v26;
    v32 = *(*a1 + 32);
    v33 = *(a9 + 8 * a4);
    if (*a3 == v21)
    {
      log_OutText(v32, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] at end", v28, v29, v30, a7);
      v34 = v21;
      v35 = a6;
    }

    else
    {
      v34 = v24;
      v37 = (v31 + 28 * v24);
      v48 = *v37;
      log_OutText(v32, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] before rec %d", v28, v29, v30, a7);
      if ((*a3 + 1) > v24)
      {
        v38 = (*a3 + 1) + 0xFFFFFFFFLL;
        v39 = (v31 + 28 * (*a3 + 1));
        v40 = (*a3 + 1) - 1;
        do
        {
          v41 = (v31 + 28 * v38);
          v42 = *v41;
          *(v39 + 12) = *(v41 + 12);
          *v39 = v42;
          v39 = (v39 - 28);
          --v38;
        }

        while (v24 < v40--);
      }

      *v37 = 0;
      *(v37 + 1) = 0;
      *(v37 + 6) = 0;
      *(v37 + 2) = 0;
      v44 = *a10;
      v35 = a6;
      if (v44 >= v24)
      {
        *a10 = v44 + 1;
      }

      v45 = *a11;
      if (v45 >= v24)
      {
        *a11 = v45 + 1;
      }

      LOWORD(v21) = v24;
    }

    v46 = v31 + 28 * v34;
    *v46 = 0;
    *(v46 + 2) = a7;
    *(v46 + 4) = a8;
    *(v46 + 16) = a4;
    *(v46 + 18) = a5;
    *&result = 0x200000005;
    *(v46 + 8) = 0x200000005;
    *(v46 + 24) = v35;
    *a12 = v21;
    ++*a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v27, v28, v29, v30, v47);
  }

  return result;
}

uint64_t ToNorm(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *a1;
  if (v2 != 32 && v2 < 0x41 || (*a1 - 91) < 6u)
  {
    return 1;
  }

  if (v2 < 0x7B || ((result = 1, v7 = v1 - 130, v8 = v7 > 8, v9 = (1 << v7) & 0x149, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10))
  {
    v11 = a1[1];
    if (!v11)
    {
      return 0;
    }

    v12 = a1 + 2;
    result = 1;
    while (v11 > 0x40u || v11 == 32)
    {
      if ((v11 - 65) > 0x19u)
      {
        if ((v11 - 91) < 6u)
        {
          return 1;
        }

        if (v11 > 0x7Au)
        {
          v13 = v11 - 130;
          if (v13 > 8 || ((1 << v13) & 0x149) == 0)
          {
            return result;
          }
        }
      }

      else if (*(v12 - 2) != 32)
      {
        return 1;
      }

      v14 = *v12++;
      v11 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t hlp_updateBytePositions(unsigned int a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, _WORD *a5, _WORD *a6)
{
  *a5 = Utf8_LengthInBytes(a2, a1);
  if (a1)
  {
    v10 = 0;
    v11 = a1;
    do
    {
      v12 = *a3++;
      v10 += v12;
      --v11;
    }

    while (v11);
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  result = Utf8_LengthInBytes(a4, v13);
  *a6 = result;
  return result;
}

uint64_t hlp_updateMarkerPosition(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, int a6, _DWORD *a7)
{
  v13 = Utf8_LengthInUtf8chars(a1, *a7 - a4);
  if (a5)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v15 += *(a2 + v14);
      if (v13 < v15)
      {
        break;
      }

      if (a5 == ++v14)
      {
        goto LABEL_7;
      }
    }

    LOWORD(a5) = v14;
  }

LABEL_7:
  result = Utf8_LengthInBytes(a3, a5);
  *a7 = a6 + a4 + result;
  return result;
}

uint64_t hlp_PositionToWordBoundary(const char *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = strlen(a1);
  v5 = v4 - v2;
  if (v4 > v2)
  {
    v2 = v2;
    while (1)
    {
      v6 = a1[v2];
      if (a1[v2])
      {
        if (v6 != 32 && v6 != 95)
        {
          break;
        }
      }

      ++v2;
      if (!--v5)
      {
        LODWORD(v2) = v4;
        break;
      }
    }
  }

  if (!v2)
  {
    return 0;
  }

  result = v2;
  do
  {
    v8 = a1[result];
    if (v8 <= 0x2B)
    {
      if (v8 != 32)
      {
        return result;
      }
    }

    else if (v8 != 95)
    {
      return result;
    }

    --result;
  }

  while (result);
  return result;
}

uint64_t fe_puncsptn_v2_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v38 = 0;
  v39 = 0;
  v5 = 2702188551;
  v37 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v39);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v39[6], "LINGDB", &v38);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v39[6], "FE_DCTLKP", &v37);
    if ((Object & 0x80000000) != 0)
    {
      v36 = Object;
      objc_ReleaseObject(v39[6], "LINGDB");
      return v36;
    }

    v11 = heap_Alloc(v39[1], 176);
    if (!v11)
    {
      log_OutPublic(v39[4], "FE_PUNCSPTN_V2", 76000, 0, v12, v13, v14, v15, v37);
      objc_ReleaseObject(v39[6], "LINGDB");
      objc_ReleaseObject(v39[6], "FE_DCTLKP");
      return 2702188554;
    }

    v16 = v11;
    *v11 = v39;
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    *(v11 + 24) = *(v38 + 8);
    v17 = v37;
    v18 = *(v37 + 8);
    *(v11 + 48) = v18;
    v19 = *(v17 + 16);
    *(v11 + 160) = 0;
    v20 = (v11 + 160);
    *(v11 + 32) = v19;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    *(v11 + 144) = 0;
    *(v11 + 168) = "FE_PUNCSPTN_V2";
    v40 = 0;
    v21 = (*(v18 + 88))(*(v11 + 32), *(v11 + 40), &v40 + 4, &v40);
    if ((v21 & 0x80000000) != 0 || (v21 = loc_reload_statpunc_data(v16, v22, v23, v24, v25, v26, v27, v28), (v21 & 0x80000000) != 0))
    {
      v5 = v21;
    }

    else
    {
      *(v16 + 72) = heap_Alloc;
      *(v16 + 80) = heap_Calloc;
      *(v16 + 88) = heap_Realloc;
      *(v16 + 96) = heap_Free;
      v29 = OOCAllocator_Con(v16 + 104, (v16 + 72), *(*v16 + 8));
      v30 = LH_ERROR_to_VERROR(v29);
      if ((v30 & 0x80000000) != 0)
      {
        v5 = v30;
        log_OutPublic(v39[4], "FE_PUNCSPTN_V2", 76002, 0, v31, v32, v33, v34, v37);
      }

      else
      {
        v5 = puncsptn_v2_reload_lua_code(*(v16 + 8), *(v16 + 16), *(v16 + 168), v16 + 104, v20, (v16 + 152));
        if ((v5 & 0x80000000) == 0)
        {
          *a5 = v16;
          *(a5 + 8) = 73449;
          return v5;
        }
      }
    }

    loc_cleanup_on_close(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v5;
}

uint64_t loc_reload_statpunc_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  v25 = 0;
  loc_deallocate_statpunc_v2_data(a1, a2, a3, a4, a5, a6, a7, a8);
  v26 = 0;
  IGTree = (*(*(a1 + 48) + 96))(*(a1 + 32), *(a1 + 40), "fecfg", "statpunc", &v25, &v26, &v27);
  if ((IGTree & 0x80000000) == 0 && v26)
  {
    v10 = heap_Alloc(*(*a1 + 8), 48 * v26);
    *(a1 + 56) = v10;
    if (v10)
    {
      if (v26)
      {
        for (i = 0; i < v26; ++i)
        {
          v16 = strchr(*(v25 + 8 * i), 124);
          if (v16)
          {
            *v16 = 0;
            v17 = v16 + 1;
            v18 = *(a1 + 56);
            v19 = *(a1 + 64);
            __strcpy_chk();
            v20 = strchr(v17, 124);
            if (v20)
            {
              *v20 = 0;
              v21 = v20 + 1;
              v22 = *(a1 + 56) + 48 * *(a1 + 64);
              __strcpy_chk();
              v23 = strchr(v21, 124);
              if (v23)
              {
                *v23 = 0;
                IGTree = statpunc_v2_readIGTree(*(a1 + 8), *(a1 + 16), *a1, v21, *(a1 + 56) + 48 * *(a1 + 64));
                if ((IGTree & 0x80000000) != 0)
                {
                  return IGTree;
                }

                ++*(a1 + 64);
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v11, v12, v13, v14, v25);
      return 2702188554;
    }
  }

  return IGTree;
}

uint64_t loc_cleanup_on_close(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((v3 & 0x80000000) != 0)
  {
    return 2702188552;
  }

  v11 = v3;
  if (a1)
  {
    loc_deallocate_statpunc_v2_data(a1, v4, v5, v6, v7, v8, v9, v10);
    luavmldoutil_destroy_lua_vm((a1 + 13), a1 + 20);
    kaldi::nnet1::Component::IsUpdatable((a1 + 13));
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
  }

  return v11;
}

uint64_t fe_puncsptn_v2_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((result & 0x80000000) != 0)
  {
    return 2702188552;
  }

  if (a1)
  {
    v11 = 0;
    result = (*(*(a1 + 48) + 88))(*(a1 + 32), *(a1 + 40), &v11 + 4, &v11);
    if ((result & 0x80000000) == 0)
    {
      result = loc_reload_statpunc_data(a1, v4, v5, v6, v7, v8, v9, v10);
      if ((result & 0x80000000) == 0)
      {
        return puncsptn_v2_reload_lua_code(*(a1 + 8), *(a1 + 16), *(a1 + 168), a1 + 104, (a1 + 160), (a1 + 152));
      }
    }
  }

  return result;
}

uint64_t fe_puncsptn_v2_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v24 = 0;
  if ((safeh_HandleCheck(a1, a2, 73449, 176) & 0x80000000) != 0)
  {
    return 2702188552;
  }

  *a5 = 1;
  v12 = LingDBHasSentence(*(a1 + 24), a3, a4, &v24);
  if ((v12 & 0x80000000) == 0)
  {
    if (v24 == 1)
    {
      inited = initLDO(a1 + 104, (a1 + 144));
      if ((inited & 0x80000000) != 0)
      {
LABEL_14:
        v12 = inited;
        goto LABEL_18;
      }

      v12 = importFromLingDB(*a1, *(a1 + 24), a3, a4, (a1 + 144));
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_18;
      }

      if (*(a1 + 144))
      {
        if (*(a1 + 64))
        {
          v14 = 0;
          v15 = 0;
          while (1)
          {
            inited = statpunc_v2_Process(*a1, *(a1 + 144), a1 + 104, *(a1 + 56) + v14);
            if ((inited & 0x80000000) != 0)
            {
              break;
            }

            ++v15;
            v14 += 48;
            if (v15 >= *(a1 + 64))
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (*(a1 + 152) != 1 || (log_OutText(*(*a1 + 32), *(a1 + 168), 5, 0, "Lua code available: process LDO with Lua code", v9, v10, v11, 0), inited = puncsptn_v2_process_ldo_with_lua(*a1, *(a1 + 168), *(a1 + 144), a1 + 104, *(a1 + 160), v16, v17, v18), (inited & 0x80000000) == 0))
          {
            inited = exportToLingDB(*a1, *(a1 + 24), a3, a4, a1 + 104, *(a1 + 144), 0, 0);
          }
        }

        goto LABEL_14;
      }

      v19 = *(*a1 + 32);
      v20 = *(a1 + 168);
      v21 = "Imported LDO is NULL, returning";
    }

    else
    {
      v19 = *(*a1 + 32);
      v20 = *(a1 + 168);
      v21 = "LingDB has no sentence, returning";
    }

    log_OutText(v19, v20, 5, 0, v21, v9, v10, v11, 0);
  }

LABEL_18:
  v22 = *(a1 + 144);
  if (v22)
  {
    deinitLDO(a1 + 104, v22);
    *(a1 + 144) = 0;
  }

  return v12;
}

uint64_t fe_puncsptn_v2_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2702188545;
  }

  result = 0;
  *a2 = &IFePuncsptnV2;
  return result;
}

uint64_t *loc_deallocate_statpunc_v2_data(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = result[7];
  if (*(result + 32))
  {
    v10 = 0;
    v11 = 8;
    do
    {
      statpunc_freeIGTree(*v8, *(v9 + v11), a3, a4, a5, a6, a7, a8);
      v9 = v8[7];
      *(v9 + v11) = 0;
      ++v10;
      v11 += 48;
    }

    while (v10 < *(v8 + 32));
    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    result = heap_Free(*(*v8 + 8), v9);
    v8[7] = 0;
  }

  *(v8 + 32) = 0;
  return result;
}

uint64_t loc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = strchr(*(a1 + 16), 124);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        *v12 = 0;
        v14 = strstr(a3, v10);
        if (v14)
        {
          if (v14 < a4)
          {
            v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "left");
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }
        }

        *v12 = 124;
        v10 = v12 + 1;
        v12 = strchr(v12 + 1, 124);
      }

      while (v12);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      v13 = 0;
      do
      {
        *v17 = 0;
        if (strstr(a3, v15) > a4)
        {
          v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "right");
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = strchr(v17 + 1, 124);
      }

      while (v17);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v18 = a4;
  if (a4 > a3)
  {
    v18 = a4;
    while (*v18 != 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (v18 > a3)
  {
    while (*v18 == 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  v19 = *v18;
  if (strchr(*(a1 + 40), v19))
  {
    v20 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v19, 0xBuLL))
    {
      goto LABEL_30;
    }

    v20 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "lwordendchar", a6, v20);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

LABEL_30:
    ;
  }

  do
  {
    v24 = *i++;
    v23 = v24;
  }

  while (v24 == 32);
  v25 = *(a1 + 40);
  if (strchr(v25, v23))
  {
    v26 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v23, 0xBuLL))
    {
      goto LABEL_40;
    }

    v26 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "rwordbegchar", a6, v26);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = *(a1 + 40);
LABEL_40:
  if (a4 <= a3)
  {
    goto LABEL_47;
  }

  v27 = *(a4 - 1);
  if (strchr(v25, v27))
  {
    v28 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v27, 0xBuLL))
    {
      goto LABEL_47;
    }

    v28 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "lchar", a6, v28);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = *(a1 + 40);
LABEL_47:
  v29 = a4[1];
  if (strchr(v25, v29))
  {
    v30 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v29, 0xBuLL))
    {
      goto LABEL_53;
    }

    v30 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "rchar", a6, v30);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = *(a1 + 40);
LABEL_53:
  if (a4 == a3)
  {
    goto LABEL_59;
  }

  v31 = a4 - 1;
  v32 = a4 - 1;
  do
  {
    v33 = *v32--;
    v34 = strchr(v25, v33);
    if (v31 <= a3)
    {
      break;
    }

    v31 = v32;
  }

  while (v34);
  if (v32 + 1 == a3 && v34)
  {
LABEL_59:
    v35 = a4 + 1;
    v36 = "isolated";
    do
    {
      v38 = *v35++;
      v37 = v38;
      if (!v38)
      {
        goto LABEL_70;
      }
    }

    while (strchr(v25, v37));
    if (!strcmp(a5, a1))
    {
      v36 = "start";
      goto LABEL_70;
    }
  }

  else
  {
    v39 = a4 + 1;
    while (1)
    {
      v41 = *v39++;
      v40 = v41;
      if (!v41)
      {
        break;
      }

      if (!strchr(v25, v40))
      {
        goto LABEL_72;
      }
    }

    if (!strcmp(a5, (a1 + 4)))
    {
      v36 = "end";
LABEL_70:
      v21 = loc_setFeature(*(a1 + 8), a2, "sentpos", a6, v36);
      if ((v21 & 0x80000000) == 0)
      {
        v25 = *(a1 + 40);
        goto LABEL_72;
      }

      return v21;
    }
  }

LABEL_72:
  if (!bstartword(v25, a3, a4))
  {
    v57 = a4 + 1;
    do
    {
      v59 = *v57++;
      v58 = v59;
      if (!v59)
      {
        goto LABEL_103;
      }
    }

    while (strchr(v25, v58));
    if ((v58 & 0xFFFFFFDF) == 0)
    {
LABEL_103:
      if (!strcmp(a5, (a1 + 4)))
      {
        v54 = "pos";
        v55 = "end";
LABEL_95:
        v56 = *(a1 + 8);
        goto LABEL_96;
      }
    }

    return 0;
  }

  v42 = 1;
  do
  {
    v43 = a4[v42];
    if (!a4[v42])
    {
      goto LABEL_94;
    }
  }

  while (strchr(v25, a4[v42++]));
  if ((v43 & 0xFFFFFFDF) == 0)
  {
LABEL_94:
    v54 = "pos";
    v55 = "isolated";
    goto LABEL_95;
  }

  if (strcmp(a5, a1))
  {
    return 0;
  }

  v13 = loc_setFeature(*(a1 + 8), a2, "pos", a6, "start");
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v45 = strstr(a4 + 1, (a1 + 4));
  if (!v45)
  {
    return v13;
  }

  v46 = v45;
  v47 = *(a1 + 40);
  if (bstartword(v47, a3, v45))
  {
    return v13;
  }

  v48 = 1;
  while (1)
  {
    v49 = v46[v48];
    if (!v46[v48])
    {
      break;
    }

    if (!strchr(v47, v46[v48++]))
    {
      if ((v49 & 0xFFFFFFDF) != 0)
      {
        return v13;
      }

      break;
    }
  }

  if (v46 <= a4)
  {
    v51 = 0;
  }

  else
  {
    v51 = 0;
    do
    {
      if (*a4 == 32)
      {
        ++v51;
        do
        {
          v52 = *++a4;
        }

        while (v52 == 32);
      }

      ++a4;
    }

    while (a4 < v46);
  }

  if (*(a1 + 32) > v51)
  {
    v54 = "dist2end";
    v55 = "short";
    goto LABEL_95;
  }

  v56 = *(a1 + 8);
  v54 = "dist2end";
  if (*(a1 + 34) <= v51)
  {
    v55 = "long";
  }

  else
  {
    v55 = "medium";
  }

LABEL_96:

  return loc_setFeature(v56, a2, v54, a6, v55);
}

uint64_t loc_insertMarker(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v53 = 0;
  v52 = 0;
  v50 = 0;
  __s = 0;
  v5 = *(a1 + 32);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  if (v7 >= v6)
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
LABEL_16:
    if (v7 >= v6)
    {
LABEL_28:
      if (v9)
      {
        HIDWORD(v53) = LDOLabel_GetAbsoluteFrom(v9);
        v41 = *(v9 + 96);
        v40 = *(v9 + 100);
        v42 = LDO_AddLabelOnSubstring(a1, "MARKER", "MARKER_NLU", &v53 + 1, &v53 + 1, &v50);
        v25 = LH_ERROR_to_VERROR(v42);
        if ((v25 & 0x80000000) == 0)
        {
          v43 = LDOLabel_SetReferenceFrom(v50, v41);
          v25 = LH_ERROR_to_VERROR(v43);
          if ((v25 & 0x80000000) == 0)
          {
            v44 = LDOLabel_SetReferenceTo(v50, v40);
            v25 = LH_ERROR_to_VERROR(v44);
            if ((v25 & 0x80000000) == 0)
            {
              v45 = LDOObject_SetStringAttribute(v50, "STRARGS", a4);
              v25 = LH_ERROR_to_VERROR(v45);
              if ((v25 & 0x80000000) == 0)
              {
                LDOObject_SetU32Attribute(v50, "_MTYPE", 51);
                return LH_ERROR_to_VERROR(v46);
              }
            }
          }
        }

        return v25;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *v7;
        U32Attribute = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v52, &v53);
        v13 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v52 == 1)
        {
          v23 = v53;
          HIDWORD(v53) = LDOLabel_GetAbsoluteFrom(v21);
          if (v23 == 51 && HIDWORD(v53) == v10)
          {
            v20 = 1;
            v19 = v21;
          }
        }

        if (++v7 >= *(*(a1 + 32) + 32))
        {
          if (!v20)
          {
            goto LABEL_28;
          }

          StringAttribute = LDOObject_GetStringAttribute(v19, "STRARGS", &v52, &__s);
          v25 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v25 & 0x80000000) == 0)
          {
            if (v52)
            {
              v30 = strlen(a4);
              v31 = strlen(__s);
              v32 = heap_Alloc(*(a2 + 8), (v30 + v31 + 2));
              if (v32)
              {
                v37 = v32;
                v38 = strcpy(v32, __s);
                *&v37[strlen(v38)] = 59;
                strcat(v37, a4);
                v39 = LDOObject_SetStringAttribute(v19, "STRARGS", v37);
                v13 = LH_ERROR_to_VERROR(v39);
                heap_Free(*(a2 + 8), v37);
              }

              else
              {
                log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0, v33, v34, v35, v36, a2);
                return 2702188554;
              }
            }

            else
            {
              v13 = 2702188544;
              log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76003, 0, v26, v27, v28, v29, a2);
            }

            return v13;
          }

          return v25;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *v7;
      v12 = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v52, &v53);
      v13 = LH_ERROR_to_VERROR(v12);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (v52 == 1)
      {
        v14 = v53;
        AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v11);
        HIDWORD(v53) = AbsoluteFrom;
        if (v14 == 1 && AbsoluteFrom <= a3)
        {
          v10 = AbsoluteFrom;
          v9 = v11;
        }
      }

      ++v7;
      v18 = *(a1 + 32);
      v6 = *(v18 + 32);
      if (v7 >= v6)
      {
        v7 = *(v18 + 24);
        goto LABEL_16;
      }
    }
  }

  return v13;
}

uint64_t statpunc_v2_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  *v33 = 0;
  *v34 = 0;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v34);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  strcpy(v36, "statpunc_");
  __strcat_chk();
  v10 = brokeraux_ComposeBrokerString(a3, v36, 0, 1, *v34, 0, 0, v35, 0x100uLL);
  if (v10 < 0)
  {
    v23 = v10 | 0xA1102000;
    goto LABEL_24;
  }

  Str = ssftriff_reader_ObjOpen(a1, a2, 2, v35, "IGTR", 1031, v33);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  v11 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v11;
  if (!v11)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN_V2", 76000, 0, v12, v13, v14, v15, v32);
    v23 = 2702188554;
    goto LABEL_24;
  }

  Str = igtree_Init(a1, a2, *v33, v11);
  if ((Str & 0x80000000) != 0)
  {
LABEL_21:
    v23 = Str;
  }

  else
  {
    v23 = ssftriff_reader_ObjClose(*v33, v16, v17, v18, v19, v20, v21, v22);
    if ((v23 & 0x80000000) == 0)
    {
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 32) = 393219;
      *(a5 + 40) = ":;.!?()[]{}#',-<>";
      v24 = *(a5 + 8);
      v25 = *(v24 + 1336);
      if (v25)
      {
        v26 = 0;
        v27 = *(v24 + 1328);
        do
        {
          v28 = (v27 + 16 * v26);
          v29 = *v28;
          if (!strcmp(*v28, "leftcollocation"))
          {
            *(a5 + 16) = v28[1];
          }

          else if (!strcmp(v29, "rightcollocation"))
          {
            *(a5 + 24) = v28[1];
          }

          else if (!strcmp(v29, "dist2endmaxshort"))
          {
            *(a5 + 32) = atoi(v28[1]);
          }

          else if (!strcmp(v29, "dist2endminlong"))
          {
            *(a5 + 34) = atoi(v28[1]);
          }

          else if (!strcmp(v29, "punctuation"))
          {
            *(a5 + 40) = v28[1];
          }

          ++v26;
        }

        while (v25 > v26);
      }
    }
  }

LABEL_24:
  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t statpunc_v2_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v55 = *MEMORY[0x1E69E9840];
  v52 = 0;
  __src = 0;
  v51 = 0;
  v8 = LDO_ComputeText(a2, &v51);
  inserted = LH_ERROR_to_VERROR(v8);
  if ((inserted & 0x80000000) == 0)
  {
    v10 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v51);
    v11 = statpunc_Strpunc(v10, a4, (a4 + 4), &v52);
    if (v11)
    {
      v12 = 0;
      do
      {
        ++v12;
        v11 = statpunc_Strpunc(v11 + 1, a4, (a4 + 4), &v52);
      }

      while (v11);
      if (v12)
      {
        v13 = statpunc_Strpunc(v10, a4, (a4 + 4), &v52);
        if (v13)
        {
          v17 = v13;
          v48 = a3;
          v49 = v10;
          v50 = 0;
          v18 = 0;
          while (1)
          {
            if (!v18)
            {
              log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", v14, v15, v16, v10);
              v18 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a4 + 8) + 1296) - 8);
              if (!v18)
              {
                inserted = 2702188554;
                log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v19, v20, v21, v22, v47);
                goto LABEL_39;
              }
            }

            v23 = *(a4 + 8);
            if (*(v23 + 1296) != 1)
            {
              v24 = v6;
              v25 = 0;
              v26 = 8 * (*(v23 + 1296) - 1) - 8;
              do
              {
                if (!v18[v25 / 8])
                {
                  v27 = heap_Calloc(*(a1 + 8), 1, 65);
                  v18[v25 / 8] = v27;
                  if (!v27)
                  {
                    inserted = 2702188554;
                    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v28, v29, v30, v31, v47);
                    goto LABEL_33;
                  }
                }

                v32 = loc_setFeature(v23, a1, *(*(v23 + 1312) + v25), v18, "_");
                inserted = v32;
                if ((v32 & 0x80000000) != 0)
                {
                  break;
                }

                v33 = v26 == v25;
                v25 += 8;
              }

              while (!v33);
              v6 = v24;
              v10 = v49;
              if ((v32 & 0x80000000) != 0)
              {
                goto LABEL_33;
              }
            }

            Features = loc_extractFeatures(a4, a1, v10, v17, v52, v18);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            v35 = v50;
            if (v50)
            {
              Features = loc_setFeature(*(a4 + 8), a1, "startpred", v18, v50);
              if ((Features & 0x80000000) != 0)
              {
                break;
              }
            }

            Features = igtree_Process(*(a4 + 8), v18, &__src);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            if (!strcmp(*v18, "start"))
            {
              v35 = __src;
            }

            v50 = v35;
            v36 = *(a4 + 8);
            strncpy(__dst, __src, 0x100uLL);
            __dst[255] = 0;
            if (*(v36 + 1296) >= 2u)
            {
              v40 = 0;
              do
              {
                v41 = strlen(v18[v40]);
                if (v41 + strlen(__dst) + 2 > 0xFF)
                {
                  break;
                }

                __strcat_chk();
                v42 = v18[v40];
                __strcat_chk();
                ++v40;
              }

              while (*(v36 + 1296) - 1 > v40);
            }

            log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", v37, v38, v39, __dst);
            inserted = loc_insertMarker(v6, a1, (v17 - v10), __src);
            if ((inserted & 0x80000000) == 0)
            {
              v17 = statpunc_Strpunc(v17 + 1, a4, (a4 + 4), &v52);
              if (v17)
              {
                continue;
              }
            }

            goto LABEL_33;
          }

          inserted = Features;
LABEL_33:
          if (*(*(a4 + 8) + 1296) != 1)
          {
            v43 = (*(*(a4 + 8) + 1296) - 1);
            v44 = v18;
            do
            {
              if (*v44)
              {
                heap_Free(*(a1 + 8), *v44);
              }

              ++v44;
              --v43;
            }

            while (v43);
          }

          heap_Free(*(a1 + 8), v18);
LABEL_39:
          a3 = v48;
        }
      }
    }
  }

  if (v51)
  {
    OOC_PlacementDeleteObject(a3, v51);
  }

  v45 = *MEMORY[0x1E69E9840];
  return inserted;
}

uint64_t loc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 1296);
  if (v6 < 2)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(a1 + 1312);
  v13 = (v6 - 1);
  while (1)
  {
    v14 = v11;
    if (!strcmp(__s1, *(v12 + 8 * v11)))
    {
      break;
    }

    v11 = v14 + 1;
    if (v13 <= (v14 + 1))
    {
      return 0;
    }
  }

  if (!*a5)
  {
    result = 0;
    **(a4 + 8 * v14) = 95;
    return result;
  }

  if (strlen(a5) <= 0x40)
  {
    v17 = *(a4 + 8 * v14);
    goto LABEL_13;
  }

  v16 = strlen(a5);
  v17 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v14), v16 + 1);
  if (v17)
  {
    *(a4 + 8 * v14) = v17;
LABEL_13:
    strcpy(v17, a5);
    return 0;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0, v18, v19, v20, v21, v5);
  return 2702188554;
}

uint64_t puncsptn_v2_dump_ldo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v7 = LDO_ToString(a3, &v18);
  v11 = LH_ERROR_to_VERROR(v7);
  if ((v11 & 0x80000000) != 0)
  {
    v16 = "Call to MSG_LDO_ToString failed, returning";
  }

  else
  {
    log_OutText(a1, a2, 5, 0, "LDO contents: begin", v8, v9, v10, 0);
    v12 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v18);
    log_OutText(a1, a2, 5, 0, "%s", v13, v14, v15, v12);
    v16 = "LDO contents: end";
  }

  log_OutText(a1, a2, 5, 0, v16, v8, v9, v10, 0);
  if (v18)
  {
    OOC_PlacementDeleteObject(a4, v18);
  }

  return v11;
}

uint64_t puncsptn_v2_process_ldo_with_lua(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(a1 + 32), a2, 5, 0, "LDO before calling %s in LuaVM", a6, a7, a8, "runPuncsptnV2");
  v13 = puncsptn_v2_dump_ldo(*(a1 + 32), a2, a3, a4);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = LuaVMLDO_RunFunction(a5, "runPuncsptnV2", a3);
  v19 = LH_ERROR_to_VERROR(v14);
  v20 = *(a1 + 32);
  if ((v19 & 0x80000000) != 0)
  {
    log_OutPublic(v20, a2, 76002, 0, v15, v16, v17, v18, v23);
    return v19;
  }

  log_OutText(v20, a2, 5, 0, "LDO after calling %s in LuaVM", v16, v17, v18, "runPuncsptnV2");
  v21 = *(a1 + 32);

  return puncsptn_v2_dump_ldo(v21, a2, a3, a4);
}

uint64_t puncsptn_v2_reload_lua_code(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v27 = 0;
  *a6 = 0;
  inited = InitRsrcFunction(a1, a2, &v27);
  if ((inited & 0x80000000) != 0)
  {
    v17 = inited;
  }

  else
  {
    if (*a5)
    {
      OOC_PlacementDeleteObject(a4, *a5);
      *a5 = 0;
    }

    IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, 0, a6);
    v17 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
    if ((v17 & 0x80000000) == 0)
    {
      if (*a6 != 1)
      {
        v23 = *(v27 + 32);
        goto LABEL_13;
      }

      *a6 = 0;
      v18 = PNEW_LuaVMLDO_Con(a4, a4, a1, a2, puncsptn_v2_hlp_lua_log_callback, a5);
      v19 = LH_ERROR_to_VERROR(v18);
      if ((v19 & 0x80000000) != 0)
      {
        v17 = v19;
        v25 = "Unable to create LuaVM";
      }

      else
      {
        ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*a5, 0);
        v21 = LH_ERROR_to_VERROR(ScriptFromRIFF);
        if ((v21 & 0x80000000) != 0)
        {
          v17 = v21;
          v25 = "Unable to load Lua code from RIFF";
        }

        else
        {
          IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(*a5, "runPuncsptnV2", a6);
          v17 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
          if ((v17 & 0x80000000) == 0)
          {
            v23 = *(v27 + 32);
            if (*a6 == 1)
            {
              v24 = "Lua code found and loaded";
              goto LABEL_14;
            }

LABEL_13:
            v24 = "No Lua code found";
LABEL_14:
            log_OutText(v23, a3, 5, 0, v24, v14, v15, v16, 0);
            if (*a6)
            {
              return v17;
            }

            goto LABEL_20;
          }

          v25 = "Unable to determine if Lua entry point function is present";
        }
      }

      log_OutText(*(v27 + 32), a3, 5, 0, v25, v14, v15, v16, 0);
    }
  }

LABEL_20:
  if (*a5)
  {
    OOC_PlacementDeleteObject(a4, *a5);
    *a5 = 0;
  }

  return v17;
}

uint64_t initSolutionList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 48);
  *(a1 + 360) = v2;
  if (v2)
  {
    *(a1 + 368) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v3, v4, v5, v6, v8);

    return TOKENTNERROR(10);
  }
}

void *freeSolutionList(void *result)
{
  v1 = result;
  v2 = result[45];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[45] = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t resetSolutionList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 368) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 360), 12 * a2 + 12);
  if (v4)
  {
    *(a1 + 360) = v4;
    *(a1 + 368) = v3;
LABEL_7:
    *(a1 + 370) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v5, v6, v7, v8, v10);

  return TOKENTNERROR(10);
}

uint64_t initMatchList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 32);
  *(a1 + 376) = v2;
  if (v2)
  {
    *(a1 + 384) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v3, v4, v5, v6, v8);

    return TOKENTNERROR(10);
  }
}

void *freeMatchList(void *result)
{
  v1 = result;
  v2 = result[47];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[47] = 0;
  }

  *(v1 + 96) = 0;
  return result;
}

uint64_t resetMatchList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 384) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 376), 8 * a2 + 8);
  if (v4)
  {
    *(a1 + 376) = v4;
    *(a1 + 384) = v3;
LABEL_7:
    *(a1 + 386) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v5, v6, v7, v8, v10);

  return TOKENTNERROR(10);
}

uint64_t initAlignmentData(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2);
  *(a1 + 536) = v2;
  if (v2 && (*(a1 + 544) = 0, v7 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2), (*(a1 + 520) = v7) != 0))
  {
    *(a1 + 528) = 0;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v3, v4, v5, v6, v9);

    return TOKENTNERROR(10);
  }
}

void *freeAlignmentData(void *result)
{
  v1 = result;
  v2 = result[67];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[67] = 0;
  }

  *(v1 + 272) = 0;
  v3 = v1[65];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[65] = 0;
  }

  *(v1 + 264) = 0;
  return result;
}

uint64_t resetAlignmentData(uint64_t result)
{
  *(result + 528) = 0;
  *(result + 544) = 0;
  return result;
}

uint64_t initStrRes(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  *(a2 + 12) = v4;
  v5 = heap_Calloc(*(*a1 + 8), 1, v4);
  *a2 = v5;
  if (v5)
  {
    *v5 = 0;
    *(a2 + 8) = *(a2 + 12);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v6, v7, v8, v9, v11);

    return TOKENTNERROR(10);
  }
}

uint64_t resetStrRes(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  if (*(a2 + 8) <= v3)
  {
    result = 0;
  }

  else
  {
    result = reallocStrRes(a1, a2, v3);
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 10) = 0;
  }

  return result;
}

uint64_t reallocStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 8) = v3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v7, v8, v9, v10, v12);

    return TOKENTNERROR(10);
  }
}

uint64_t growStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8) <= a3)
  {
    return reallocStrRes(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void *clearStrRes(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = *a2;
    if (*a2)
    {
      result = heap_Free(result[1], v3);
      *a2 = 0;
    }
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t add2StringV2(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = v6;
  v8 = *(a2 + 8);
  if (*(a2 + 10) + v6 >= v8)
  {
    result = reallocStrRes(a1, a2, (v8 + v6));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  strcat(*a2, __s);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV3(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  if (!*(a3 + 10))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (*(a2 + 10) + v3 >= v6)
  {
    result = reallocStrRes(a1, a2, (v6 + v3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  strcat(*a2, *a3);
  result = 0;
  *(a2 + 10) += *(a3 + 10);
  return result;
}

uint64_t add2StringV4(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v7 = a4 - a3;
  if (*(a2 + 10) + (a4 - a3) >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (*(a2 + 10) + a4 - a3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  strncat(*a2, (a1[38] + a3), v7);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV5(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = *(a2 + 10);
  if (v7 + v6 + 1 >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (v7 + v6 + 1));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *(a2 + 10);
    if (!*(a2 + 10))
    {
      **a2 = 0;
      v7 = *(a2 + 10);
    }
  }

  memcpy((*a2 + v7), __s, v6);
  result = 0;
  *(*a2 + *(a2 + 10) + v6) = 0;
  *(a2 + 10) += v6 + 1;
  return result;
}

uint64_t TOK_IS_PUNCT(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = utf8_determineUTF8CharLength(*a1);
  __strncpy_chk();
  v5[v1] = 0;
  v2 = strlen(v5);
  result = utf8_BelongsToSet(0xAu, v5, 0, v2);
  if (result != 1)
  {
    result = utf8_BelongsToSet(0xBu, v5, 0, v2);
    if (result != 1)
    {
      result = utf8_BelongsToSet(0xCu, v5, 0, v2);
      if (result != 1)
      {
        result = utf8_BelongsToSet(0xDu, v5, 0, v2) == 1;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TOK_IS_ALPHANUM(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = utf8_determineUTF8CharLength(*a1);
  __strncpy_chk();
  v5[v1] = 0;
  v2 = strlen(v5);
  if (utf8_strchr(g_szSpace_0, v5) || (result = utf8_BelongsToSet(9u, v5, 0, v2), result != 1))
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TOK_COUNT_SP_WORDS(const char *a1)
{
  if (a1 && (v2 = strlen(a1)) != 0)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (utf8_strchr(g_szSpace_0, &a1[v3]))
      {
        while (v3 < v2 && utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }

      else
      {
        ++v4;
        while (v3 < v2 && !utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }
    }

    while (v3 < v2);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t tokenRecordReadFieldLD_T_FROMPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 1, &v14 + 2);
  v11 = 24031;
  if ((v6 & 0x80000000) == 0 && HIWORD(v14) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 1, 1, a3, &v14);
    if (v14 == 1)
    {
      return 0;
    }

    v11 = 24030;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v11, 0, v7, v8, v9, v10, v13);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TOPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 2, &v14 + 2);
  v11 = 24030;
  if ((v6 & 0x80000000) == 0 && HIWORD(v14) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 2, 1, a3, &v14);
    if (v14 == 1)
    {
      return 0;
    }

    v11 = 24031;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v11, 0, v7, v8, v9, v10, v13);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TYPE(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 0, &v13 + 2);
  result = 0;
  if ((v6 & 0x80000000) == 0 && HIWORD(v13) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 0, 1, a3, &v13);
    result = 0;
    if (v13 != 1)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24032, 0, v8, v9, v10, v11, v12);
      return TOKENTNERROR(0);
    }
  }

  return result;
}

uint64_t tokenRecordReadFieldLD_T_TNTAG(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 4, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 4, 32, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordReadFieldLD_T_LANGMAP(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 6, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 6, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordDirectReadFieldLD_T_NORM(void *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 3, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 3, a3, &v7);
  }

  return 0;
}

uint64_t dumpTokenRecordsInLingDB(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!a1[38])
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v26);
LABEL_6:
    v9 = *MEMORY[0x1E69E9840];

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    strcpy(v35, "<LOGFE> ");
  }

  else
  {
    v35[0] = 0;
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB : Begin : %s", a6, a7, a8, v35);
  FieldLD_T_FROMPOS = (*(a1[8] + 104))(a1[9], a1[10], 1, 0, &v34 + 2);
  if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
  {
LABEL_31:
    FieldLD_T_TYPE = FieldLD_T_FROMPOS;
  }

  else
  {
    FieldLD_T_TYPE = (*(a1[8] + 104))(a1[9], a1[10], 3, HIWORD(v34), &v34);
    if (!FieldLD_T_TYPE)
    {
      v16 = v34;
      if (v34)
      {
        while (1)
        {
          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_FROMPOS(a1, v16, &v30 + 2);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_TOPOS(a1, v34, &v30);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_TYPE = tokenRecordReadFieldLD_T_TYPE(a1, v34, &v31);
          if ((FieldLD_T_TYPE & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          if (v31 - 5 <= 1)
          {
            tokenRecordReadFieldLD_T_TNTAG(a1, v34, v36);
            if (v31 == 6)
            {
              tokenRecordDirectReadFieldLD_T_NORM(a1, v34, &v32);
              tokenRecordReadFieldLD_T_LANGMAP(a1, v34, &v33);
            }

            FieldLD_T_TYPE = 0;
          }

          if (v30 < HIWORD(v30))
          {
            break;
          }

          if (v30 > *(a1 + 156))
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", v17, v12, v13, v14, "toPos=");
            goto LABEL_36;
          }

          strncpy(a1[69], (a1[38] + HIWORD(v30)), v30 - HIWORD(v30));
          *(a1[69] - HIWORD(v30) + v30) = 0;
          if (v31 > 4)
          {
            if (v31 == 5)
            {
              v28 = a1[69];
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d ESC(%-9s) %s ", v18, v19, v20, v35);
            }

            else if (v31 == 6)
            {
              v24 = a1[69];
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s %s langMap=%s", v18, v19, v20, v35);
            }
          }

          else
          {
            v29 = 0;
            (*(a1[8] + 264))(a1[9], a1[10], v31, &v29);
            v27 = a1[69];
            log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s", v21, v22, v23, v35);
          }

          if (!(*(a1[8] + 120))(a1[9], a1[10], v34, &v34))
          {
            v16 = v34;
            if (v34)
            {
              continue;
            }
          }

          goto LABEL_32;
        }

        log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", v17, v12, v13, v14, "fromPos=");
LABEL_36:
        FieldLD_T_TYPE = TOKENTNERROR(0);
        goto LABEL_33;
      }
    }
  }

LABEL_32:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB End (%x)", v12, v13, v14, v35);
LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
  return FieldLD_T_TYPE;
}

uint64_t dumpTokenLDO(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v49 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v42);
LABEL_6:
    v9 = *MEMORY[0x1E69E9840];

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    strcpy(v50, "<LOGFE> ");
  }

  else
  {
    v50[0] = 0;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO : Begin : %s", a6, a7, a8, v50);
  v11 = *(*(a1 + 264) + 16);
  LDOObject_GetCategory(v11, &v49);
  v12 = 0;
  v13 = *(v11 + 80);
  v14 = *(v11 + 88);
  if (v13 >= v14)
  {
LABEL_14:
    LDO_GetLabels(*(a1 + 264), &v46);
    v26 = v46.n128_u64[1];
    v27 = v47;
    if (v46.n128_u64[1] >= v47)
    {
LABEL_29:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO End (%x)", v23, v24, v25, v50);
    }

    else
    {
      while (1)
      {
        v45 = 0;
        v46.n128_u64[0] = 0;
        v48 = 0;
        v43 = 0;
        v44 = 0;
        U32Attribute = LDOObject_GetU32Attribute(*v26, "_TTYPE", &v43, &v43 + 1);
        v12 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v12 & 0x80000000) != 0)
        {
          break;
        }

        if (v43 == 1 && HIDWORD(v43) == 6)
        {
          LDOLabel_GetAbsoluteFrom(*v26);
          LDOLabel_GetAbsoluteTo(*v26);
          StringAttribute = LDOObject_GetStringAttribute(*v26, "TNTAG", &v43, &v46);
          v31 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v31 & 0x80000000) != 0 || (v32 = LDOObject_GetStringAttribute(*v26, "NORM", &v43, &v48), v31 = LH_ERROR_to_VERROR(v32), (v31 & 0x80000000) != 0))
          {
            v12 = v31;
            break;
          }

          v33 = LDOObject_GetStringAttribute(*v26, "REGEXSUBMATCHES", &v43, &v45);
          v12 = LH_ERROR_to_VERROR(v33);
          if ((v12 & 0x80000000) != 0)
          {
            break;
          }

          if (*(a1 + 960) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s", v34, v35, v36, v50);
          }

          else
          {
            v37 = LDOObject_GetStringAttribute(*v26, "DCTMATCHES", &v43, &v44);
            v12 = LH_ERROR_to_VERROR(v37);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s DCTMATCHES=%s", v38, v39, v40, v50);
          }
        }

        if (++v26 >= v27)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v15 = 0;
    while (1)
    {
      v46.n128_u64[0] = 0;
      v48 = 0;
      LODWORD(v45) = 0;
      LODWORD(v44) = 0;
      LDOObject_GetType(*v13, &v46);
      v16 = LDOTreeNode_ComputeText(*v13, &v48);
      v12 = LH_ERROR_to_VERROR(v16);
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      ++v15;
      LDOTreeNode_ComputeAbsoluteFrom(*v13, &v45);
      v17 = *v13++;
      LDOTreeNode_ComputeAbsoluteTo(v17, &v44);
      v18 = *(*a1 + 32);
      v19 = *(a1 + 184);
      fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v48);
      log_OutText(v18, v19, 4, 0, "%sToken[%d] %d,%d : %s %s", v20, v21, v22, v50);
      OOC_PlacementDeleteObject(a1 + 224, v48);
      if (v13 >= v14)
      {
        goto LABEL_14;
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t saveExpansionInLDO(uint64_t a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, unsigned __int16 *a8)
{
  v42 = 0;
  v8 = *a8;
  v40 = a8[1];
  v41 = v8;
  if (a1)
  {
    v9 = a7;
    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB Begin (%s)", a6, a7, a8, a3);
    v16 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v41, &v40, &v42);
    v17 = LH_ERROR_to_VERROR(v16);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    LDOObject_SetU32Attribute(v42, "_TTYPE", 6);
    v17 = LH_ERROR_to_VERROR(v21);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v22 = LDOObject_SetStringAttribute(v42, "TNTAG", a2);
    v17 = LH_ERROR_to_VERROR(v22);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v23 = LDOObject_SetStringAttribute(v42, "NORM", (a3 + v9));
    v24 = LH_ERROR_to_VERROR(v23);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (a6)
    {
      v25 = LDOObject_SetStringAttribute(v42, "PATTERN", a6);
      v24 = LH_ERROR_to_VERROR(v25);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a4)
    {
      v26 = LDOObject_SetStringAttribute(v42, "REGEXSUBMATCHES", a4);
      v24 = LH_ERROR_to_VERROR(v26);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a5)
    {
      v27 = LDOObject_SetStringAttribute(v42, "DCTMATCHES", a5);
      v24 = LH_ERROR_to_VERROR(v27);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    v28 = *(a1 + 544);
    if (v28 >= 2)
    {
      LDOObject_SetU32Attribute(v42, "_MRKRD", v28);
      v17 = LH_ERROR_to_VERROR(v29);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v30 = heap_Calloc(*(*a1 + 8), *(a1 + 544), 4);
      if (!v30)
      {
        v24 = 10;
        goto LABEL_22;
      }

      v31 = v30;
      v32 = *(a1 + 544);
      if (*(a1 + 544))
      {
        v33 = *(a1 + 520);
        v34 = *(a1 + 544);
        v35 = v30;
        do
        {
          v36 = *v33++;
          *v35++ = v36;
          --v34;
        }

        while (v34);
      }

      v37 = LDOObject_SetListU32Attribute(v42, "_MRK", v30, v32);
      v24 = LH_ERROR_to_VERROR(v37);
      heap_Free(*(*a1 + 8), v31);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (!*(a1 + 418))
    {
LABEL_22:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB End (%x) ", v18, v19, v20, v24);
      return v24;
    }

    v38 = LDOObject_SetStringAttribute(v42, "LANGMAP", (*(a1 + 408) + v9));
    v17 = LH_ERROR_to_VERROR(v38);
LABEL_21:
    v24 = v17;
    goto LABEL_22;
  }

  return TOKENTNERROR(7);
}

uint64_t setDomainsOnSentence(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence Begin", a6, a7, a8, v80);
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1, v9, v10, v11, v12, v13);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v95, &v93, 0, v14, v15);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : %d block(s) to search in", v17, v18, v19, v93);
      if (v93)
      {
        for (i = 0; i < v93; ++i)
        {
          FEData_blockData_newGetDomainDefBlockInfo(a1, v95[i], &v92, v20, v21, v22, v23, v24);
          v26 = v92;
          if (*(v92 + 12))
          {
            v27 = 0;
            v28 = 0;
            do
            {
              v29 = (v26[2] + v27);
              v30 = *v26;
              v31 = *(v29 + 6) + *v29;
              *(v29 + 15);
              *(v26[4] + 16 * v29[6] + 8);
              v84 = *(v26 + 2);
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : domain[%d,%d,%s,type=%d] marker %s%s %s", v22, v23, v24, i);
              ++v28;
              v26 = v92;
              v27 += 72;
            }

            while (v28 < *(v92 + 12));
          }
        }

        v32 = *(a1[33] + 32);
        v33 = *(v32 + 24);
        if (v33 < *(v32 + 32))
        {
          do
          {
            __s2 = 0;
            v89 = 0;
            StringAttribute = LDOObject_GetStringAttribute(*v33, "TNTAG", &v89, &__s2);
            DomainDefBlockInfo = LH_ERROR_to_VERROR(StringAttribute);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              goto LABEL_43;
            }

            if (v89)
            {
              v88 = 0;
              v87 = 0;
              AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v33);
              v85 = v33;
              AbsoluteTo = LDOLabel_GetAbsoluteTo(*v33);
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing DB token %s %d,%d", v37, v38, v39, __s2);
              if (v93)
              {
                v42 = 0;
                v86 = AbsoluteFrom;
                do
                {
                  FEData_blockData_newGetDomainDefBlockInfo(a1, v95[v42], &v92, v40, v41, v22, v23, v24);
                  IsRemappable = FEData_blockData_IsRemappable(a1, __s2, &v88, &v87 + 1, &v87, v43, v44, v45);
                  v91 = 0;
                  v47 = __s2;
                  if (IsRemappable == 1)
                  {
                    log_OutText(*(*a1 + 32), a1[23], 5, 0, "domain %s is remappable to %s", v22, v23, v24, __s2);
                    v48 = HIWORD(v87);
                    v49 = v87;
                    DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v87, &v91, v50, v51, v52, v53, v54);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      goto LABEL_43;
                    }

                    v59 = v91;
                    if (v91)
                    {
                      goto LABEL_24;
                    }

                    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%s", v55, v56, v57, v58, "skipping undefined remapped domain:");
                  }

                  else
                  {
                    v59 = v92;
                    v60 = *(v92 + 12);
                    if (*(v92 + 12))
                    {
                      v61 = 0;
                      v62 = v92[2];
                      while (strcmp((*(v62 + 6) + *v62), v47))
                      {
                        ++v61;
                        v62 += 36;
                        if (v60 == v61)
                        {
                          goto LABEL_35;
                        }
                      }

                      v49 = v95[v42];
                      v91 = v59;
                      v48 = v61;
LABEL_24:
                      v63 = v59[2];
                      DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v94);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        goto LABEL_43;
                      }

                      v67 = (v63 + 72 * v48);
                      v68 = v94;
                      *(v94 + 6) = v49;
                      *(v68 + 4) = v48;
                      *v68 = v86;
                      *(v68 + 2) = AbsoluteTo;
                      *(v68 + 8) = 1;
                      v82 = *(v67 + 6) + *v67;
                      log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set Active Domain[%s:%s] range %d,%d", v64, v65, v66, *v91);
                      if (!strcmp((*(v67 + 6) + *v67), a1[36]) || *(v67 + 15) == 1)
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "normal domain OR was remapped to EscNormal - set additional domains, if any", v22, v23, v24, v81);
                        v69 = v92;
                        if (*(v92 + 12))
                        {
                          v70 = 0;
                          v71 = 48;
                          do
                          {
                            if (v48 != v70)
                            {
                              v72 = v69[2];
                              if (!strcmp((*(v72 + v71) + *(v72 + v71 - 48)), a1[36]) || *(v72 + v71 + 12) == 1)
                              {
                                DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v94);
                                if ((DomainDefBlockInfo & 0x80000000) != 0)
                                {
                                  goto LABEL_43;
                                }

                                v76 = v94;
                                *(v94 + 6) = v95[v42];
                                *(v76 + 4) = v70;
                                *v76 = v86;
                                *(v76 + 2) = AbsoluteTo;
                                *(v76 + 8) = 1;
                                v83 = *(v72 + v71) + *(v72 + v71 - 48);
                                log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set (as mapped to normal) Active Domain[%s:%s] range %d,%d", v73, v74, v75, *v92);
                                v69 = v92;
                              }
                            }

                            ++v70;
                            v71 += 72;
                          }

                          while (v70 < *(v69 + 12));
                        }
                      }
                    }
                  }

LABEL_35:
                  ++v42;
                }

                while (v42 < v93);
              }

              v33 = v85;
            }

            ++v33;
          }

          while (v33 < *(*(a1[33] + 32) + 32));
        }

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence End (%x)", v22, v23, v24, DomainDefBlockInfo);
      }

      else
      {
        DomainDefBlockInfo = 0;
      }
    }

LABEL_43:
    v79 = *MEMORY[0x1E69E9840];
    return DomainDefBlockInfo;
  }

  else
  {
    v77 = *MEMORY[0x1E69E9840];

    return TOKENTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence Begin", a6, a7, a8, v38);
    v47 = 0;
    FERuntimeData_GetActiveDomains(a1, v50, &v47, 0, *(a1 + 156), 1);
    if (v47)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        FERuntimeData_GetDomainRange(a1, v50[v9], &v49);
        DomainBlockIndex = FERuntimeData_GetDomainBlockIndex(a1, v50[v9++], &v46, &v45 + 1);
        v15 = v47;
        v16 = v10;
        if (v9 < v47)
        {
          while (1)
          {
            FERuntimeData_GetDomainRange(a1, v50[v16], &v48);
            v17 = FERuntimeData_GetDomainBlockIndex(a1, v50[v16], &v45, &v44);
            if (*(v48 + 2) == 1 && v45 == v46 && v44 == HIWORD(v45) && *v49 == *v48 && v49[1] == v48[1])
            {
              *(v48 + 2) = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Remove duplicate domain %d,%d RANGE %d,%d ?", v12, v13, v14, 1);
            }

            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v16;
            v15 = v47;
            if (v16 >= v47)
            {
              goto LABEL_15;
            }
          }
        }

        v17 = DomainBlockIndex;
LABEL_15:
        ++v10;
      }

      while (v9 < v15);
      if (v15)
      {
        v18 = 0;
        while (1)
        {
          FERuntimeData_GetDomainRange(a1, v50[v18], &v49);
          DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v50[v18], &v46, &v45 + 1);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v46, &v43, v20, v21, v12, v13, v14);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          v22 = (*(v43 + 16) + 72 * HIWORD(v45));
          if (*(*(v43 + 32) + 16 * v22[6] + 8) && *(v49 + 2) == 1)
          {
            v23 = v49[1];
            v39 = *v49;
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d ?", v12, v13, v14, *(v22 + 6) + *v22);
            if (v18 < v47)
            {
              v24 = v18;
              do
              {
                FERuntimeData_GetDomainRange(a1, v50[v24], &v48);
                DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v50[v24], &v45, &v44);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v45, &v42, v25, v26, v12, v13, v14);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                v28 = v48;
                v27 = v49;
                if (v48 != v49 && *(v48 + 2) == 1)
                {
                  v29 = *v48;
                  if (v29 == v23 || v29 == *v49 && v48[1] == v49[1])
                  {
                    v30 = (*(v42 + 16) + 72 * v44);
                    v31 = (*(v22 + 6) + *v22);
                    if (!strcmp(v31, (*(v30 + 6) + *v30)))
                    {
                      v23 = v28[1];
                      v40 = v27[1];
                      v41 = *v27;
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", v32, v33, v34, v31);
                      *(v48 + 2) = 0;
                    }
                  }
                }
              }

              while (++v24 < v47);
            }

            if (v49[1] != v23)
            {
              DomainDefBlockInfo = FERuntimeData_UpdateDomainRange(a1, v18, v23);
              if ((DomainDefBlockInfo & 0x80000000) != 0)
              {
                goto LABEL_43;
              }
            }
          }

          if (++v18 >= v47)
          {
            goto LABEL_42;
          }
        }
      }

      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_42:
    DomainDefBlockInfo = FERuntimeData_PruneAndDumpActiveDomains(a1);
LABEL_43:
    v17 = DomainDefBlockInfo;
LABEL_44:
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence End (%x)", v12, v13, v14, v17);
    v37 = *MEMORY[0x1E69E9840];
    return v17;
  }

  else
  {
    v35 = *MEMORY[0x1E69E9840];

    return TOKENTNERROR(7);
  }
}

uint64_t tokentn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2304778241;
  }

  result = 0;
  *a2 = &ITokenizer_0;
  return result;
}

uint64_t tokenTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2304778247;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t tokenTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v5 = 2304778250;
  v56 = 0;
  v57 = 0;
  if (!a5)
  {
    return 2304778247;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v61);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v60);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v61 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen Begin", v12, v13, v14, v54);
      v15 = heap_Calloc(*(v61 + 8), 1, 16);
      if (!v15)
      {
        log_OutPublic(*(v61 + 32), "TOKENTN", 21000, 0, v16, v17, v18, v19, v55);
LABEL_43:
        log_OutText(*(v61 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen End (%x)", v25, v26, v27, v5);
        return v5;
      }

      v20 = v15;
      *v15 = 0;
      *(v15 + 8) = 0;
      v21 = heap_Calloc(*(v61 + 8), 1, 968);
      if (v21)
      {
        v28 = v21;
        *v20 = v21;
        *(v20 + 8) = 58765;
        v29 = v61;
        *v21 = v61;
        *(v21 + 8) = a3;
        v30 = v60;
        *(v21 + 16) = a4;
        *(v21 + 24) = v30;
        *(v21 + 96) = 0;
        v31 = (v21 + 96);
        *(v21 + 32) = a1;
        *(v21 + 40) = a2;
        *(v21 + 104) = 0;
        *(v21 + 120) = 0;
        v32 = (v21 + 120);
        *(v21 + 128) = 0;
        *(v21 + 152) = 0;
        *(v21 + 160) = 0;
        *(v21 + 176) = 0;
        *(v21 + 184) = "TOKENTN";
        *(v21 + 336) = 0;
        *(v21 + 344) = 0;
        *(v21 + 352) = 0;
        *(v21 + 548) = 0;
        *(v21 + 552) = 0;
        *(v21 + 520) = 0;
        *(v21 + 528) = 0;
        *(v21 + 536) = 0;
        *(v21 + 544) = 0;
        *(v21 + 288) = 0;
        *(v21 + 296) = 0;
        *(v21 + 608) = 257;
        v33 = (v21 + 612);
        *(v21 + 612) = 0;
        *(v21 + 960) = 0;
        *(v21 + 280) = 32;
        if ((paramc_ParamGetUInt(*(v29 + 40), "tokentninitstrlen", &v56 + 1) & 0x80000000) == 0)
        {
          *(v28 + 280) = WORD2(v56);
        }

        *(v28 + 282) = 5;
        if ((paramc_ParamGetUInt(*(v61 + 40), "tokentnmaxpcreframeblocks", &v56 + 1) & 0x80000000) == 0)
        {
          *(v28 + 282) = WORD2(v56);
        }

        *(v28 + 284) = 20;
        if ((paramc_ParamGetUInt(*(v61 + 40), "tokentnnumframesinblock", &v56 + 1) & 0x80000000) == 0)
        {
          *(v28 + 284) = WORD2(v56);
        }

        v34 = nuance_pcre_ObjOpen(a3, a4, v28 + 136);
        if ((v34 & 0x80000000) != 0)
        {
          v52 = v34;
          log_OutPublic(*(*v28 + 32), *(v28 + 184), 24021, 0, v35, v36, v37, v38, v55);
          v5 = v52;
        }

        else
        {
          Object = addIdentifier2List_0(v28, "x");
          if ((Object & 0x80000000) == 0)
          {
            if ((objc_GetObject(*(v61 + 48), "FE_DCTLKP", &v58) & 0x80000000) != 0)
            {
              v5 = 0;
              v51 = 24022;
              goto LABEL_47;
            }

            v40 = v58;
            *(v28 + 88) = *(v58 + 8);
            *v31 = *(v40 + 16);
            if ((objc_GetObject(*(v61 + 48), "FE_DEPES", &v57) & 0x80000000) != 0)
            {
              v5 = 0;
              v51 = 24023;
              goto LABEL_47;
            }

            v41 = v57;
            *(v28 + 112) = *(v57 + 8);
            *v32 = *(v41 + 16);
            Object = objc_GetObject(*(v61 + 48), "LINGDB", &v59);
            if ((Object & 0x80000000) == 0)
            {
              *(v28 + 64) = *(v59 + 8);
              Object = FEData_ObjOpen(a3, a4, v28, v23, v24, v25, v26, v27);
              if ((Object & 0x80000000) == 0)
              {
                Object = FERuntimeData_ObjOpen(v28, v42, v22, v23, v24, v25, v26, v27);
                if ((Object & 0x80000000) == 0)
                {
                  Object = FEFunctionMap_ObjOpen(v28, v43, v22, v23, v24, v25, v26, v27);
                  if ((Object & 0x80000000) == 0)
                  {
                    Object = tokenizer_ObjOpen(v28, v44, v22, v23, v24, v25, v26, v27);
                    if ((Object & 0x80000000) == 0)
                    {
                      Object = textnormalizer_ObjOpen(v28, v45, v22, v23, v24, v25, v26, v27);
                      if ((Object & 0x80000000) == 0)
                      {
                        Object = createIDStrings_0(v28);
                        if ((Object & 0x80000000) == 0)
                        {
                          if (!*(v28 + 336))
                          {
                            goto LABEL_49;
                          }

                          v46 = 0;
                          do
                          {
                            log_OutText(*(*v28 + 32), *(v28 + 184), 5, 0, "tokentn : identifier=%s", v25, v26, v27, *(*(v28 + 344) + 8 * v46++));
                            v47 = *(v28 + 336);
                          }

                          while (v46 < v47);
                          if (!*(v28 + 336))
                          {
LABEL_49:
                            log_OutPublic(*(*v28 + 32), "TOKENTN", 24024, 0, v24, v25, v26, v27, v55);
                            v5 = 2304778240;
                            goto LABEL_42;
                          }

                          Object = FEData_blockData_loadDataFiles(v28, v47, *(v28 + 344), (v28 + 616), v24, v25, v26, v27);
                          if ((Object & 0x80000000) == 0)
                          {
                            Object = getFECFGInfo_0(v28);
                            if ((Object & 0x80000000) == 0)
                            {
                              Object = nn_tn_checkIfActive(a3, a4, v61, *(v28 + 184), v33);
                              if ((Object & 0x80000000) == 0)
                              {
                                if (*v33 != 1 || (Object = nn_tn_Load(a3, a4, *(v28 + 32), *(v28 + 40), v61, *(v28 + 184), *(v28 + 88), v27, *(v28 + 96), *(v28 + 104), (v28 + 640)), (Object & 0x80000000) == 0))
                                {
                                  *(v28 + 192) = heap_Alloc;
                                  *(v28 + 200) = heap_Calloc;
                                  *(v28 + 208) = heap_Realloc;
                                  *(v28 + 216) = heap_Free;
                                  v48 = OOCAllocator_Con(v28 + 224, (v28 + 192), *(*v28 + 8));
                                  v5 = LH_ERROR_to_VERROR(v48);
                                  if ((v5 & 0x80000000) != 0)
                                  {
                                    log_OutPublic(*(*v28 + 32), "TOKENTN", 24024, 0, v49, v25, v26, v27, v55);
                                  }

                                  else
                                  {
                                    *(v28 + 264) = 0;
                                    if (*(v28 + 616) != 1)
                                    {
LABEL_48:
                                      *a5 = v20;
                                      *(a5 + 8) = 58764;
                                      goto LABEL_43;
                                    }

                                    v50 = load_lua_code_0(v28, &v56);
                                    v5 = v50;
                                    if ((v50 & 0x80000000) == 0 && !v56)
                                    {
                                      v51 = 24071;
LABEL_47:
                                      log_OutPublic(*(*v28 + 32), *(v28 + 184), v51, 0, v24, v25, v26, v27, v55);
                                      goto LABEL_48;
                                    }

                                    if ((v50 & 0x80000000) == 0)
                                    {
                                      goto LABEL_48;
                                    }
                                  }

                                  goto LABEL_42;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v5 = Object;
        }
      }

LABEL_42:
      tokenTN_loc_ObjClose(v61, v20, v22, v23, v24, v25, v26, v27);
      goto LABEL_43;
    }
  }

  return inited;
}

uint64_t tokenTN_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v7 = *a1;
    v8 = *(*a1 + 184);
    log_OutText(*(**a1 + 32), v8, 4, 0, "tokentn : ObjClose Begin", v4, v5, v6, v28);
    v9 = *v7;
    v3 = FEData_blockData_unloadDataFiles(v7, v10, v11, v12, v13, v14, v15, v16);
    v17 = v7[34];
    if (v17)
    {
      OOC_PlacementDeleteObject((v7 + 28), v17);
      v7[34] = 0;
    }

    kaldi::nnet1::Component::IsUpdatable((v7 + 28));
    tokenTN_loc_ObjClose(v9, a1, v18, v19, v20, v21, v22, v23);
    log_OutText(*(v9 + 32), v8, 4, 0, "tokentn : ObjClose End (%x)", v24, v25, v26, v3);
  }

  return v3;
}

uint64_t tokenTN_ObjReopen(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  v32 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = *(v4 + 344);
    if (v5)
    {
      if (*(v4 + 336))
      {
        v6 = 0;
        do
        {
          heap_Free(*(*v4 + 8), *(*(v4 + 344) + 8 * v6));
          *(*(v4 + 344) + 8 * v6++) = 0;
        }

        while (v6 < *(v4 + 336));
        v5 = *(v4 + 344);
      }

      heap_Free(*(*v4 + 8), v5);
      *(v4 + 344) = 0;
      *(v4 + 336) = 0;
      *(v4 + 352) = 0;
      *(v4 + 608) = 257;
    }

    IDStrings_0 = addIdentifier2List_0(v4, "x");
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    IDStrings_0 = createIDStrings_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    if (!*(v4 + 344))
    {
      return 6;
    }

    if (*(v4 + 336))
    {
      v11 = 0;
      do
      {
        log_OutText(*(*v4 + 32), *(v4 + 184), 5, 0, "tokentn : identifier=%s", v8, v9, v10, *(*(v4 + 344) + 8 * v11++));
      }

      while (v11 < *(v4 + 336));
    }

    IDStrings_0 = getFECFGInfo_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    v17 = *(v4 + 288);
    if (v17)
    {
      heap_Free(*(*v4 + 8), v17);
      *(v4 + 288) = 0;
    }

    IDStrings_0 = FEData_blockData_unloadUnusedDataFiles(v4, *(v4 + 336), *(v4 + 344), v12, v13, v14, v15, v16);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    *(v4 + 960) = 0;
    v22 = *(v4 + 336);
    if (!*(v4 + 336))
    {
      log_OutPublic(*(*v4 + 32), "TOKENTN", 24024, 0, v18, v19, v20, v21, v31);
      return 2304778240;
    }

    *(v4 + 616) = 0;
    IDStrings_0 = FEData_blockData_loadDataFiles(v4, v22, *(v4 + 344), (v4 + 616), v18, v19, v20, v21);
    if ((IDStrings_0 & 0x80000000) != 0 || *(v4 + 612) == 1 && (IDStrings_0 = nn_tn_UnLoad(*v4, *(v4 + 24), v4 + 640), (IDStrings_0 & 0x80000000) != 0))
    {
LABEL_30:
      v3 = IDStrings_0;
    }

    else
    {
      *(v4 + 612) = 0;
      v3 = nn_tn_checkIfActive(*(v4 + 8), *(v4 + 16), *v4, *(v4 + 184), (v4 + 612));
      if ((v3 & 0x80000000) == 0)
      {
        if (*(v4 + 612) != 1 || (v3 = nn_tn_Load(*(v4 + 8), *(v4 + 16), *(v4 + 32), *(v4 + 40), *v4, *(v4 + 184), *(v4 + 88), v23, *(v4 + 96), *(v4 + 104), (v4 + 640)), (v3 & 0x80000000) == 0))
        {
          if (*(v4 + 616) != 1)
          {
            return v3;
          }

          v24 = load_lua_code_0(v4, &v32);
          v3 = v24;
          if ((v24 & 0x80000000) == 0 && !v32)
          {
            log_OutPublic(*(*v4 + 32), *(v4 + 184), 24071, 0, v25, v26, v27, v28, v31);
            return v3;
          }

          if ((v24 & 0x80000000) == 0)
          {
            return v3;
          }
        }
      }
    }

    v29 = *(v4 + 272);
    if (v29)
    {
      OOC_PlacementDeleteObject(v4 + 224, v29);
      *(v4 + 272) = 0;
    }

    kaldi::nnet1::Component::IsUpdatable((v4 + 224));
  }

  return v3;
}

uint64_t tokenTN_ProcessStart(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v7 = *a1;
    log_OutText(*(*v7 + 32), *(v7 + 184), 4, 0, "tokentn : ProcessStart Begin", v4, v5, v6, v17);
    if (*(v7 + 336))
    {
      v3 = nuance_pcre_Init(*(v7 + 136), *(v7 + 144), *(v7 + 282), *(v7 + 284));
      if ((v3 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v7 + 32), *(v7 + 184), 24051, 0, v12, v13, v14, v15, v18);
      }

      log_OutText(*(*v7 + 32), *(v7 + 184), 4, 0, "tokentn : ProcessStart End (%x)", v13, v14, v15, v3);
    }

    else
    {
      log_OutPublic(*(*v7 + 32), "TOKENTN", 24024, 0, v8, v9, v10, v11, v18);
      return 2304778240;
    }
  }

  return v3;
}

uint64_t tokenTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v52 = 0;
  v51 = 0;
  matched = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0)
  {
    return matched;
  }

  if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {
    return matched;
  }

  v13 = *a1;
  log_OutText((*v13)[4], v13[23], 4, 0, "tokentn : Process Begin", v10, v11, v12, v49);
  v13[9] = a3;
  *(v13 + 20) = a4;
  *(v13 + 137) = log_GetLogLevel((*v13)[4]) > 4;
  v13[33] = 0;
  matched = LingDBHasSentence(v13[8], v13[9], v13[10], &v52);
  if ((matched & 0x80000000) != 0)
  {
    return matched;
  }

  if (!v52)
  {
    goto LABEL_32;
  }

  inited = initLDO((v13 + 28), v13 + 33);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  matched = importFromLingDB(*v13, v13[8], v13[9], v13[10], v13 + 33);
  if ((matched & 0x80000000) == 0)
  {
    v15 = v13[33];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = LDO_ComputeText(v15, &v51);
    matched = LH_ERROR_to_VERROR(v16);
    if ((matched & 0x80000000) == 0)
    {
      v13[38] = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v51);
      *(v13 + 156) = LHString_Length(v51);
      if (!v13[38])
      {
        goto LABEL_18;
      }

      log_OutText((*v13)[4], v13[23], 5, 0, "<LOGFE> processing sentence : _%s_", v19, v20, v21, v13[38]);
      inited = tokenTN_init_ProcessData(v13);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      if (*(v13 + 240) == 1 && *(v13 + 154) == 1)
      {
        inited = tokentn_AllInOneLoop(v13, 1);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        if (*(v13 + 137) == 1)
        {
          inited = dumpTokenLDO(v13, "At End of btok Processing", 1, v22, v23, v24, v25, v26);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }
      }

      inited = tokentn_AllInOneLoop(v13, 0);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      matched = clearBTokMatchList(v13);
      if ((matched & 0x80000000) == 0)
      {
LABEL_18:
        v27 = v13[33];
        if (v27)
        {
          if (*(v13 + 154) != 1 || (v28 = v13[34]) == 0)
          {
LABEL_27:
            v35 = v13[33];
            if (v35)
            {
              matched = exportToLingDB(*v13, v13[8], v13[9], v13[10], (v13 + 28), v35, 1, 0);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }

              if (v13[38])
              {
                if (*(v13 + 137) == 1)
                {
                  matched = dumpTokenRecordsInLingDB(v13, "LINGDB At End of Processing", 1, v36, v37, v38, v39, v40);
                  if ((matched & 0x80000000) != 0)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }

            goto LABEL_32;
          }

          if (*(v13 + 137) != 1)
          {
LABEL_24:
            v29 = LuaVMLDO_RunFunction(v28, "run", v27);
            matched = LH_ERROR_to_VERROR(v29);
            if ((matched & 0x80000000) != 0)
            {
              log_OutPublic((*v13)[4], v13[23], 24072, 0, v31, v32, v33, v34, v50);
              goto LABEL_34;
            }

            if (*(v13 + 137) == 1)
            {
              matched = dumpTokenLDO(v13, "At End of Processing; after Lua", 1, v30, v31, v32, v33, v34);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_27;
          }

          inited = dumpTokenLDO(v13, "At End of Processing; before Lua", 1, v17, v18, v19, v20, v21);
          if ((inited & 0x80000000) == 0)
          {
            v27 = v13[33];
            v28 = v13[34];
            goto LABEL_24;
          }

LABEL_33:
          matched = inited;
          goto LABEL_34;
        }

LABEL_32:
        *a5 = 1;
      }
    }
  }

LABEL_34:
  if (v51)
  {
    OOC_PlacementDeleteObject((v13 + 28), v51);
    v51 = 0;
  }

  v41 = v13[33];
  if (v41)
  {
    deinitLDO((v13 + 28), v41);
    v13[33] = 0;
  }

  v42 = v13[69];
  if (v42)
  {
    heap_Free((*v13)[1], v42);
    v13[69] = 0;
  }

  clearStrRes(*v13, (v13 + 49));
  clearStrRes(*v13, (v13 + 51));
  clearStrRes(*v13, (v13 + 61));
  clearStrRes(*v13, (v13 + 70));
  clearStrRes(*v13, (v13 + 72));
  clearStrRes(*v13, (v13 + 74));
  clearStrRes(*v13, (v13 + 63));
  clearStrRes(*v13, (v13 + 53));
  clearStrRes(*v13, (v13 + 59));
  clearStrRes(*v13, (v13 + 55));
  clearStrRes(*v13, (v13 + 57));
  freeAlignmentData(v13);
  freeMatchList(v13);
  freeSolutionList(v13);
  v46 = v13[40];
  if (v46)
  {
    heap_Free((*v13)[1], v46);
    v13[40] = 0;
  }

  v47 = v13[41];
  if (v47)
  {
    heap_Free((*v13)[1], v47);
    v13[41] = 0;
  }

  log_OutText((*v13)[4], v13[23], 4, 0, "tokentn : Process End (%x)", v43, v44, v45, matched);
  return matched;
}

uint64_t tokenTN_ProcessEnd(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v7 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "tokentn : ProcessEnd Begin", v4, v5, v6, v13);
    v8 = nuance_pcre_DeInit(*(v7 + 136), *(v7 + 144));
    log_OutText(*(*v7 + 32), *(v7 + 184), 4, 0, "tokentn : ProcessEnd End (%x)", v9, v10, v11, v8);
    return 0;
  }

  return v3;
}

uint64_t addIdentifier2List_0(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 336);
  if (*(a1 + 336))
  {
    v5 = *(a1 + 344);
    v6 = *(a1 + 336);
    v7 = v5;
    do
    {
      if (v5 && !strcmp(*v7, __s2))
      {
        return 0;
      }

      ++v7;
      --v6;
    }

    while (v6);
    v8 = heap_Realloc(*(*a1 + 8), *(a1 + 344), 8 * v4 + 8);
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v8 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (!v8)
  {
LABEL_11:
    v17 = 2304778250;
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v9, v10, v11, v12, v19);
    return v17;
  }

LABEL_9:
  *(a1 + 344) = v8;
  v13 = strlen(__s2);
  v14 = heap_Calloc(*(*a1 + 8), 1, (v13 + 1));
  v15 = *(a1 + 336);
  *(*(a1 + 344) + 8 * v15) = v14;
  v16 = *(*(a1 + 344) + 8 * v15);
  if (!v16)
  {
    goto LABEL_11;
  }

  strcpy(v16, __s2);
  v17 = 0;
  ++*(a1 + 336);
  return v17;
}

uint64_t createIDStrings_0(_BYTE *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  __s = 0;
  *__s2 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  result = paramc_ParamGet(*(*a1 + 40), "langcode", &__s, 0);
  if ((result & 0x80000000) == 0)
  {
    v3 = __s;
    if (*__s)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v3[v4];
        v18[v4] = v6;
        __s2[v4] = v6;
        v4 = ++v5;
      }

      while (strlen(v3) > v5);
    }

    strcpy(&__s2[2], "x");
    v18[3] = 0;
    result = paramc_ParamGet(*(*a1 + 40), "voice", &__s, 0);
    if ((result & 0x80000000) == 0)
    {
      v7 = __s;
      v8 = strlen(__s);
      if (v8 <= 0x1A)
      {
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v16[v9] = v7[v9];
            v9 = ++v10;
            v8 = strlen(v7);
          }

          while (v8 > v10);
        }

        v16[v8] = 0;
        if (strlen(__s2) >= 1)
        {
          v11 = 0;
          do
          {
            __s2[v11] = ssft_tolower(__s2[v11]);
            ++v11;
          }

          while (strlen(__s2) > v11);
        }

        if (strlen(v18) >= 1)
        {
          v12 = 0;
          do
          {
            v18[v12] = ssft_tolower(v18[v12]);
            ++v12;
          }

          while (strlen(v18) > v12);
        }

        if (strlen(v16) >= 1)
        {
          v13 = 0;
          do
          {
            v16[v13] = ssft_tolower(v16[v13]);
            ++v13;
          }

          while (strlen(v16) > v13);
        }

        result = addIdentifier2List_0(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List_0(a1, v18);
          if ((result & 0x80000000) == 0)
          {
            result = addIdentifier2List_0(a1, v16);
          }
        }
      }

      else
      {
        result = 2304778240;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getFECFGInfo_0(uint64_t a1)
{
  v2 = 2304778240;
  v13 = -1;
  __c_1 = 0;
  __c = 0;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v13, &__c) & 0x80000000) == 0)
  {
    if (v13 == 1 && __c_1 != 0)
    {
      v4 = *__c_1;
      v5 = strchr(*__c_1, __c);
      if (v5)
      {
        *v5 = 0;
        v4 = *__c_1;
      }

      *(a1 + 608) = atoi(v4);
    }

    v13 = -1;
    v6 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v13, &__c);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = v6;
      if (v13 == 1 && __c_1)
      {
        v8 = *__c_1;
        v9 = strchr(*__c_1, __c);
        if (v9)
        {
          *v9 = 0;
          v8 = *__c_1;
        }

        *(a1 + 609) = atoi(v8);
      }

      return v7;
    }
  }

  return v2;
}

uint64_t load_lua_code_0(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 272);
  if (v4)
  {
    OOC_PlacementDeleteObject(a1 + 224, v4);
    *(a1 + 272) = 0;
  }

  kaldi::nnet1::Component::IsUpdatable((a1 + 224));
  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(*(a1 + 8), *(a1 + 16), 0, a2);
  v6 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  if ((v6 & 0x80000000) == 0)
  {
    if (*a2 != 1)
    {
      return v6;
    }

    *a2 = 0;
    v7 = OOCAllocator_Con(a1 + 224, (a1 + 192), *(*a1 + 8));
    v8 = LH_ERROR_to_VERROR(v7);
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con(a1 + 224, a1 + 224, *(a1 + 8), *(a1 + 16), hlp_lua_log_callback_3, (a1 + 272)), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
    {
      v6 = v8;
    }

    else
    {
      ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*(a1 + 272), 0);
      v6 = LH_ERROR_to_VERROR(ScriptFromRIFF);
      if ((v6 & 0x80000000) == 0)
      {
        *a2 = 1;
        return v6;
      }
    }
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    OOC_PlacementDeleteObject(a1 + 224, v11);
    *(a1 + 272) = 0;
  }

  kaldi::nnet1::Component::IsUpdatable((a1 + 224));
  return v6;
}

uint64_t tokenTN_loc_ObjClose(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    log_OutText(*(result + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose Begin", a6, a7, a8, v64);
    NullHandle = safeh_GetNullHandle();
    v12 = 0;
    if (!safeh_HandlesEqual(*a2, a2[1], NullHandle, v11))
    {
      result = safeh_HandleCheck(*a2, a2[1], 58765, 968);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LODWORD(v12) = result;
      v20 = *a2;
      v21 = tokenizer_ObjClose(*a2, v13, v14, v15, v16, v17, v18, v19);
      if (v21 < 0)
      {
        LODWORD(v12) = v21;
      }

      v29 = textnormalizer_ObjClose(v20, v22, v23, v24, v25, v26, v27, v28);
      if (v29 < 0)
      {
        LODWORD(v12) = v29;
      }

      v30 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(v20 + 136), *(v20 + 144), v30, v31))
      {
        v39 = nuance_pcre_ObjClose(*(v20 + 136), *(v20 + 144));
        if (v39 < 0)
        {
          LODWORD(v12) = v39;
        }
      }

      v40 = FEData_ObjClose(v20, v32, v33, v34, v35, v36, v37, v38);
      if (v40 < 0)
      {
        LODWORD(v12) = v40;
      }

      *(v20 + 152) = 0;
      v48 = FERuntimeData_ObjClose(v20, v41, v42, v43, v44, v45, v46, v47);
      if (v48 < 0)
      {
        LODWORD(v12) = v48;
      }

      *(v20 + 176) = 0;
      v56 = FEFunctionMap_ObjClose(v20, v49, v50, v51, v52, v53, v54, v55);
      if (v56 >= 0)
      {
        v12 = v12;
      }

      else
      {
        v12 = v56;
      }

      *(v20 + 160) = 0;
      if (*(v20 + 88))
      {
        objc_ReleaseObject(*(v9 + 48), "FE_DCTLKP");
      }

      if (*(v20 + 112))
      {
        objc_ReleaseObject(*(v9 + 48), "FE_DEPES");
      }

      if (*(v20 + 64))
      {
        objc_ReleaseObject(*(v9 + 48), "LINGDB");
      }

      v57 = *(v20 + 344);
      if (v57)
      {
        if (*(v20 + 336))
        {
          v58 = 0;
          do
          {
            heap_Free(*(v9 + 8), *(*(v20 + 344) + 8 * v58));
            *(*(v20 + 344) + 8 * v58++) = 0;
          }

          while (v58 < *(v20 + 336));
          v57 = *(v20 + 344);
        }

        heap_Free(*(v9 + 8), v57);
      }

      v59 = *(v20 + 288);
      if (v59)
      {
        heap_Free(*(v9 + 8), v59);
      }

      if (*(v20 + 612) == 1)
      {
        v60 = nn_tn_UnLoad(*v20, *(v20 + 24), v20 + 640);
        if (v60 >= 0)
        {
          v12 = v12;
        }

        else
        {
          v12 = v60;
        }
      }

      heap_Free(*(v9 + 8), v20);
    }

    heap_Free(*(v9 + 8), a2);
    return log_OutText(*(v9 + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose End (%x)", v61, v62, v63, v12);
  }

  return result;
}

uint64_t tokenTN_init_ProcessData(uint64_t a1)
{
  v2 = 2304778250;
  v3 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 312) + 1);
  *(a1 + 552) = v3;
  if (v3)
  {
    *(a1 + 314) = 1;
    if (*(a1 + 312))
    {
      v4 = 0;
      while (utf8_strchr(g_szSpace_1, (*(a1 + 304) + v4)))
      {
        v4 += utf8_determineUTF8CharLength(*(*(a1 + 304) + v4));
        v5 = *(a1 + 312);
        if (v5 <= v4)
        {
          goto LABEL_8;
        }
      }

      v5 = *(a1 + 312);
LABEL_8:
      if (v5 > v4)
      {
        do
        {
          v4 = v4;
          if (utf8_strchr(g_szSpace_1, (*(a1 + 304) + v4)))
          {
            ++*(a1 + 314);
            for (i = *(*(a1 + 304) + v4); ; i = *(*(a1 + 304) + v4))
            {
              v4 += utf8_determineUTF8CharLength(i);
              if (*(a1 + 312) <= v4 || !utf8_strchr(g_szSpace_1, (*(a1 + 304) + v4)))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v4) = v4 + utf8_determineUTF8CharLength(*(*(a1 + 304) + v4));
          }
        }

        while (*(a1 + 312) > v4);
      }
    }

    inited = initStrRes(a1, a1 + 392);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 408);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 488);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 560);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 576);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 592);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 504);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 424);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 472);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 440);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 456);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initAlignmentData(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initMatchList(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v2 = initSolutionList(a1);
    if ((v2 & 0x80000000) == 0)
    {
      v8 = heap_Calloc(*(*a1 + 8), 1, 40);
      *(a1 + 320) = v8;
      v13 = *a1;
      if (!v8)
      {
LABEL_33:
        log_OutPublic(*(v13 + 32), *(a1 + 184), 24048, 0, v9, v10, v11, v12, v16);
        return 2304778250;
      }

      v14 = heap_Calloc(*(v13 + 8), 1, 48);
      *(a1 + 328) = v14;
      if (!v14)
      {
        v13 = *a1;
        goto LABEL_33;
      }
    }
  }

  return v2;
}

BOOL filteredTriggerType(int a1, unsigned int a2)
{
  if (!a1 || a1 == 1 && a2 == 2 || a1 == 2 && a2 == 1 || a1 == 3 && !a2 || a1 == 4 && a2 < 2)
  {
    return 1;
  }

  if (a1 == 6)
  {
    if (a2 - 1 < 2)
    {
      return 1;
    }
  }

  else if (a1 == 5)
  {
    return (a2 & 0xFFFFFFFD) == 0;
  }

  return 0;
}

uint64_t tokentn_ApplyOneRule(uint64_t *a1, uint64_t *a2, int a3, unsigned int a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  if (!filteredTriggerType(a3, a4))
  {
    v22 = *(*a1 + 32);
    v23 = a1[23];
    v24 = *(*a2 + 24);
    v33 = TOKENTSTR_1[a4];
    v34 = TRIGGERSTR_0[a3];
    v26 = "rule %s (token %s, %d,%d) blocked by triggerType %s";
    goto LABEL_8;
  }

  if (*(a1 + 240) == 1 && blockedByBtok(a1, a5, a6, v17, v18, v19, v20, v21) == 1)
  {
    v22 = *(*a1 + 32);
    v23 = a1[23];
    v24 = *(*a2 + 24);
    v25 = TOKENTSTR_1[a4];
    v26 = "rule %s (token %s, %d,%d) blocked by prior btok";
LABEL_8:
    log_OutText(v22, v23, 5, 0, v26, v19, v20, v21, v24);
    return 0;
  }

  v27 = *a2;
  v28 = *(*a2 + 8);
  v29 = *v28;
  *(v29 + 82) = 0;
  *(v29 + 40) = 0;
  v30 = *(v27 + 24);
  v28[2] = a1[38];
  v28[3] = v30;
  *(v29 + 88) = *(v27 + 48);
  *(v29 + 104) = a7;
  *(v29 + 106) = a8;
  *(v28 + 20) = *(v27 + 40);
  *(v28 + 26) = *(v27 + 44);
  *(v28 + 27) = *(v27 + 46);
  *(v28 + 11) = 0;
  *(v28 + 12) = 0;
  result = tokenizer_apply_regex_LongestMatch(a1, v27, v16, v17, v18, v19, v20, v21);
  if ((result & 0x80000000) == 0)
  {
    v32 = *(*a2 + 8);
    **(v32 + 8) = 0;
    *(v32 + 44) = 0;
  }

  return result;
}

uint64_t tokentn_AllInOneLoop(uint64_t a1, uint64_t a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v110 = 0;
  bzero(v116, 0x3E8uLL);
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v7 = *(*a1 + 32);
  v8 = *(a1 + 184);
  if (*(a1 + 960) == 1)
  {
    log_OutText(v7, v8, 4, 0, "tokentn : AllInOneLoop Begin (btok=%d)", v4, v5, v6, a2);
  }

  else
  {
    log_OutText(v7, v8, 4, 0, "tokentn : AllInOneLoop Begin", v4, v5, v6, 0);
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v107) & 0x80000000) == 0)
  {
    v16 = v107;
    *(a1 + 728) = v107;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxNNCallsPerSent to %d", v13, v14, v15, v16);
  }

  *(a1 + 730) = 0;
  v17 = *(a1 + 168);
  *(*(*v17 + 8) + 32) = a1;
  v18 = setDomainsOnSentence(a1, v9, v10, v11, v12, v13, v14, v15);
  if ((v18 & 0x80000000) != 0)
  {
    v26 = v18;
    goto LABEL_69;
  }

  v26 = mergeDomainsOnSentence(a1, v19, v20, v21, v22, v23, v24, v25);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = *v17;
    *(*(*v17 + 8) + 16) = *(a1 + 304);
    *(v27 + 64) = 16;
    *(v27 + 42) = *(a1 + 312);
    v28 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v28);
    v33 = *(*a1 + 32);
    v34 = *(a1 + 184);
    if (NumberChildren)
    {
      v104 = a2;
      log_OutText(v33, v34, 4, 0, "tokentn : start loop...", v29, v30, v31, v96);
      v36 = *(v28 + 80);
      v35 = *(v28 + 88);
      if (v36 < v35)
      {
        v103 = v35;
        while (1)
        {
          v105 = 0;
          __s1 = 0;
          v37 = *v36;
          v38 = LDOTreeNode_ComputeAbsoluteFrom(*v36, &v105 + 1);
          ActiveDomains = LH_ERROR_to_VERROR(v38);
          if ((ActiveDomains & 0x80000000) != 0 || (v46 = LDOTreeNode_ComputeAbsoluteTo(v37, &v105), ActiveDomains = LH_ERROR_to_VERROR(v46), (ActiveDomains & 0x80000000) != 0))
          {
LABEL_66:
            v26 = ActiveDomains;
            goto LABEL_67;
          }

          Type = LDOObject_GetType(v37, &__s1);
          v26 = LH_ERROR_to_VERROR(Type);
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v48 = WORD2(v105);
          v49 = v105;
          v50 = __s1;
          if (!strcmp(__s1, "TOKEN_ALPHA"))
          {
            v51 = 0;
          }

          else if (!strcmp(v50, "TOKEN_DIGIT"))
          {
            v51 = 1;
          }

          else
          {
            if (strcmp(v50, "TOKEN_PUNCT"))
            {
              goto LABEL_58;
            }

            v51 = 2;
          }

          v109 = 0;
          ActiveDomains = FERuntimeData_GetActiveDomains(a1, v116, &v109, v48, v49, 0);
          if ((ActiveDomains & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v43, v44, v45, v48);
          if (v109)
          {
            for (i = 0; i < v109; ++i)
            {
              v56 = v116[i];
              v115 = 0;
              v114 = 0;
              v113 = 0;
              v112 = 0;
              v111 = 0;
              v57 = *(a1 + 168);
              v58 = *v57;
              *(v58 + 46) = 0;
              *(v58 + 44) = v48;
              *(v58 + 48) = 0;
              if ((FERuntimeData_GetDomainRange(a1, v56, &v114) & 0x80000000) == 0)
              {
                v98 = *v114;
                v100 = v114[1];
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", v52, v53, v54, i);
                *(*v57 + 46) = v114[1];
                if ((FERuntimeData_GetDomainBlockIndex(a1, v56, &v113, &v115) & 0x80000000) == 0 && (FEData_blockData_newGetDomainDefBlockInfo(a1, v113, &v112, v59, v60, v52, v53, v54) & 0x80000000) == 0)
                {
                  if (v115 <= *(v112 + 12))
                  {
                    v62 = (v112[2] + 72 * v115);
                    if (v104 == 1 && *(a1 + 960) == 1)
                    {
                      if (v62[21])
                      {
                        v63 = 0;
                        v64 = 0;
                        do
                        {
                          v65 = *(v62 + 4);
                          v66 = *v57;
                          *(v66 + 40) = 0;
                          v66 += 40;
                          v67 = v65 + v63;
                          *(v66 + 8) = v67;
                          if ((FEData_blockData_getBTokAndRegexData(a1, *(v67 + 2), *(v67 + 4), (v66 - 8), v66, (v66 - 16), &v111, v54) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v57, v111, v51, v48, v49, v113, v115) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v64;
                          v63 += 12;
                        }

                        while (v64 < v62[21]);
                      }
                    }

                    else
                    {
                      v68 = v112[4] + 16 * v62[6];
                      v101 = *(v62 + 6) + *v62;
                      v102 = *(v68 + 8);
                      v99 = *v112;
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", v52, v53, v54, i);
                      if (*(v68 + 8))
                      {
                        v69 = 0;
                        v70 = 0;
                        do
                        {
                          v71 = *v68 + v69;
                          v72 = *v57;
                          *(v72 + 40) = 0;
                          v72 += 40;
                          *(v72 + 8) = v71;
                          if ((FEData_blockData_getTokenAndRegexData(a1, v71, (v72 - 8), v72, (v72 - 16), &v111, v53, v54) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v57, v111, v51, v48, v49, v113, v115) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v70;
                          v69 += 12;
                        }

                        while (v70 < *(v68 + 8));
                      }
                    }
                  }

                  else
                  {
                    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", v61, v52, v53, v54, "domain");
                    TOKENTNERROR(0);
                  }
                }
              }
            }
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v52, v53, v54, v48);
          v26 = tokenizer_ResolveMatches(a1, v73, v74, v75, v76, v77, v78, v79);
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          if (!FERuntimeData_GetNumMatches(a1, v80, v40, v41, v42, v43, v44, v45))
          {
            break;
          }

          v26 = textnormalizer_DoExpansionActions(a1, &v110, v81, v82, v83, v84, v85, v86);
          v35 = v103;
          if ((v26 & 0x80000000) != 0)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24029, 0, v42, v43, v44, v45, v97);
            goto LABEL_67;
          }

          v87 = HIDWORD(v105);
          v88 = v110;
          if (HIDWORD(v105) >= v110)
          {
            v89 = HIDWORD(v105);
            v90 = v110;
          }

          else
          {
            ++v36;
            v89 = HIDWORD(v105);
            v90 = v110;
            while (v36 != v103)
            {
              v91 = LDOTreeNode_ComputeAbsoluteFrom(*v36, &v105 + 1);
              v26 = LH_ERROR_to_VERROR(v91);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_67;
              }

              v89 = HIDWORD(v105);
              v90 = v110;
              if (HIDWORD(v105) >= v110)
              {
                break;
              }

              ++v36;
            }
          }

          if (v89 > v90)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24063, 0, v42, v43, v44, v45, v97);
          }

          FERuntimeData_FreeMatches(a1, 0, v40, v41, v42, v43, v44, v45);
          if (v87 >= v88)
          {
            goto LABEL_58;
          }

LABEL_59:
          if (v36 >= v35)
          {
            goto LABEL_60;
          }
        }

        FERuntimeData_FreeMatches(a1, 0, v81, v82, v83, v84, v85, v86);
        v35 = v103;
LABEL_58:
        ++v36;
        goto LABEL_59;
      }

LABEL_60:
      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v108) & 0x80000000) == 0 && !LH_stricmp(v108, "yes"))
      {
        v26 = nntn_write_LD_T_INPUTSPACETAG(a1);
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_69;
        }
      }

LABEL_67:
      FERuntimeData_FreeMatches(a1, 1, v40, v41, v42, v43, v44, v45);
      v33 = *(*a1 + 32);
      v34 = *(a1 + 184);
      v92 = "tokentn : AllInOneLoop End (%x)";
      v96 = v26;
      v93 = 4;
    }

    else
    {
      v92 = "no basic token records to process";
      v93 = 5;
    }

    log_OutText(v33, v34, v93, 0, v92, v29, v30, v31, v96);
  }

LABEL_69:
  v94 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t FEData_domainDefs_ObjOpen(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (a2)
  {
    log_OutText(v10, v11, 4, 0, "domainDefs : ObjOpen Begin", a6, a7, a8, v19);
    *a2 = 0;
    v12 = heap_Calloc(*(*a1 + 8), 1, 2);
    if (v12)
    {
      *v12 = 0;
      *a2 = v12;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjOpen End (%x)", v14, v15, v16, 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v13, v14, v15, v16, v20);
    v18 = 10;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v19);
    v18 = 7;
  }

  return FEDATA_ERROR(v18);
}

uint64_t FEData_domainDefs_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1[19] + 8);
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (v9)
  {
    log_OutText(v10, v11, 4, 0, "domainDefs : ObjClose Begin", a6, a7, a8, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjClose End (%x)", v12, v13, v14, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v16);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_ObjOpen(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (a2)
  {
    log_OutText(v10, v11, 4, 0, "blockData : ObjOpen Begin", a6, a7, a8, v19);
    *a2 = 0;
    v12 = heap_Calloc(*(*a1 + 8), 1, 144);
    if (v12)
    {
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0u;
      *(v12 + 80) = 0u;
      *(v12 + 96) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *v12 = 0u;
      *v12 = 0;
      *(v12 + 136) = 0;
      *a2 = v12;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjOpen End (%x)", v14, v15, v16, 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v13, v14, v15, v16, v20);
    v18 = 10;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v19);
    v18 = 7;
  }

  return FEDATA_ERROR(v18);
}

uint64_t FEData_blockData_IsRemappable(void *a1, char *__s2, void *a3, _WORD *a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (!v8)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v20);
    return 0;
  }

  if (!*v8)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(*(v8 + 17) + 8);
  while (1)
  {
    v12 = *(*(v11 + 8 * v10) + 24);
    if (v12)
    {
      if (!*v12)
      {
        v13 = *(v12 + 16);
        if (*(v12 + 16))
        {
          break;
        }
      }
    }

LABEL_6:
    if (++v10 >= *v8)
    {
      return 0;
    }
  }

  v14 = 0;
  v24 = *(v12 + 8);
  while (1)
  {
    v15 = *(v24 + 8 * v14);
    v16 = *(v15 + 12);
    if (*(v15 + 12))
    {
      break;
    }

LABEL_14:
    if (++v14 >= v13)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
  v18 = *(v15 + 16);
  while (strcmp(*(v18 + 8 * v17), __s2))
  {
    if (++v17 >= v16)
    {
      goto LABEL_14;
    }
  }

  *a3 = *v15;
  *a4 = *(v15 + 8);
  *a5 = *(v15 + 10);
  return 1;
}

uint64_t FEData_blockData_newGetDomainDefBlockInfo(void *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 > a2)
    {
      *a3 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      return 0;
    }

    v12 = *v8;
    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    v10 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v11);
    v10 = 7;
  }

  return FEDATA_ERROR(v10);
}

uint64_t FEData_blockData_newGetDomainEntry(void *a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 <= a2)
    {
      v13 = *v8;
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    else
    {
      v9 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      if (*(v9 + 24) > a3)
      {
        *a4 = *(v9 + 16) + 72 * a3;
        return 0;
      }

      v14 = *(v9 + 24);
      log_OutPublic(*(*a1 + 32), a1[23], 24042, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    v11 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v12);
    v11 = 7;
  }

  return FEDATA_ERROR(v11);
}

uint64_t FEData_blockData_newGetPriorityList(void *a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 <= a2)
    {
      v13 = *v8;
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    else
    {
      v9 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      if (*(v9 + 48) > a3)
      {
        *a4 = *(v9 + 32) + 16 * a3;
        return 0;
      }

      v14 = *(v9 + 48);
      log_OutPublic(*(*a1 + 32), a1[23], 24043, "%s%d%s%d", a5, a6, a7, a8, "priorityListIndex");
    }

    v11 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v12);
    v11 = 7;
  }

  return FEDATA_ERROR(v11);
}

uint64_t FEData_blockData_getDomains2SearchIn(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    v11 = *v8;
    if (a6 == 1)
    {
      if (*v8)
      {
        v12 = 0;
        v13 = *(*(v8 + 17) + 8);
        do
        {
          if (*(*(v13 + 8 * v12) + 16))
          {
            v14 = *a5;
            if (v14 <= 0x1F2)
            {
              *(a4 + 2 * v14) = v12;
              ++*a5;
              v11 = *v8;
            }
          }

          ++v12;
        }

        while (v12 < v11);
      }
    }

    else if (*v8)
    {
      v18 = 0;
      v19 = *(*(v8 + 17) + 8);
      v20 = a2;
      do
      {
        v21 = *(*(v19 + 8 * v18) + 16);
        if (v21)
        {
          v22 = a2 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          v23 = 0;
          v24 = *v21;
          do
          {
            if (!strcmp(*(a3 + 8 * v23), v24))
            {
              v25 = *a5;
              if (v25 <= 0x1F2)
              {
                *(a4 + 2 * v25) = v18;
                ++*a5;
              }
            }

            ++v23;
          }

          while (v23 < v20);
          v11 = *v8;
        }

        ++v18;
      }

      while (v18 < v11);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v26);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndCheckData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v12 = *(v11 + 48) + 32 * *(a2 + 4);
    *a3 = *(v11 + 24) + *(v12 + 4);
    v13 = *(v12 + 24);
    if (a4)
    {
      *a4 = v13;
    }

    if (v13)
    {
      v14 = *(v12 + 8);
    }

    else
    {
      v14 = 0;
    }

    *a5 = v14;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenData(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    *a3 = *(v11 + 24) + *(*(v11 + 48) + 32 * *(a2 + 4) + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v12 = *(v11 + 48) + 32 * *(a2 + 4);
    *a3 = *(v11 + 24) + *(v12 + 4);
    LODWORD(v11) = *(v12 + 26);
    *a4 = v11;
    if (v11)
    {
      v13 = *(v12 + 16);
    }

    else
    {
      v13 = 0;
    }

    *a5 = v13;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v12 = v11[6] + 32 * *(a2 + 4);
    v13 = v11[8] + 16 * *(v12 + 6);
    *a4 = *(v13 + 10);
    *a6 = *(v13 + 12);
    *a3 = v11[4] + *(v13 + 4);
    *a5 = v11[3] + *(v12 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getBTokAndRegexData(void *a1, unsigned int a2, unsigned int a3, void *a4, _WORD *a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * a2) + 8);
    v12 = v11[6] + 32 * a3;
    v13 = v11[8] + 16 * *(v12 + 6);
    *a5 = *(v13 + 10);
    *a7 = *(v13 + 12);
    *a4 = v11[4] + *(v13 + 4);
    *a6 = v11[3] + *(v12 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t readDataBlockFromFileRefCntBase(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v12 = *(a1[19] + 16);
  v13 = heap_Calloc(*(*a1 + 8), 1, 16);
  *a6 = v13;
  v18 = *a1;
  if (!v13)
  {
LABEL_140:
    log_OutPublic(*(v18 + 32), a1[23], 24048, 0, v14, v15, v16, v17, v167);
    v28 = FEDATA_ERROR(10);
    if ((v28 & 0x80000000) != 0)
    {
LABEL_141:
      log_OutPublic(*(*a1 + 32), a1[23], 24052, 0, v162, v163, v164, v165, v168);
    }

    return v28;
  }

  *(*a6 + 8) = heap_Calloc(*(v18 + 8), 1, (8 * *v12) | 1);
  if (!*(*a6 + 8))
  {
LABEL_139:
    v18 = *a1;
    goto LABEL_140;
  }

  v19 = *v12;
  **a6 = v19;
  if (v19)
  {
    v172 = a4;
    v171 = a5;
    v20 = 0;
    v173 = v12;
    while (1)
    {
      *(*(*a6 + 8) + 8 * v20) = heap_Calloc(*(*a1 + 8), 1, 48);
      v21 = *(*(*a6 + 8) + 8 * v20);
      if (!v21)
      {
        goto LABEL_139;
      }

      *v175 = 0;
      v176 = 0;
      v174 = 0;
      Chunk = ssftriff_reader_FindChunk(a2, "HEAD", 1, &v176 + 1, v175);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_95:
        v28 = Chunk;
LABEL_96:
        v41 = 0;
LABEL_97:
        log_OutPublic(*(*a1 + 32), a1[23], 24052, 0, v23, v24, v25, v26, v167);
        goto LABEL_98;
      }

      LODWORD(v176) = 0;
      v27 = **v175;
      LODWORD(v176) = 2;
      *v21 = v27;
      v28 = ssftriff_reader_CloseChunk(a2);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

      v29 = *v21;
      if ((*v21 - 3) <= 2)
      {
        v30 = heap_Calloc(*(*a1 + 8), 1, 24);
        *(v21 + 24) = v30;
        if (!v30)
        {
          goto LABEL_103;
        }

        Chunk = ssftriff_reader_FindChunk(a2, "REMP", 1, &v176 + 1, v175);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        LODWORD(v176) = 0;
        v32 = *v175;
        v33 = **v175;
        LODWORD(v176) = 2;
        v34 = *(v21 + 24);
        *v34 = v33;
        if (!v33)
        {
          v133 = v176;
          *(v34 + 16) = *(v32 + v176);
          LODWORD(v176) = v133 + 2;
          if (*(*(v21 + 24) + 16))
          {
            v134 = heap_Calloc(*(*a1 + 8), 1, 8 * *(*(v21 + 24) + 16));
            v139 = *(v21 + 24);
            *(v139 + 8) = v134;
            if (!v134)
            {
              log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v135, v136, v137, v138, v167);
              *(*(v21 + 24) + 16) = 0;
              goto LABEL_130;
            }

            if (*(v139 + 16))
            {
              v140 = 0;
              while (1)
              {
                *(*(*(v21 + 24) + 8) + 8 * v140) = heap_Calloc(*(*a1 + 8), 1, 24);
                v141 = *(v21 + 24);
                if (!*(*(v141 + 8) + 8 * v140))
                {
                  goto LABEL_128;
                }

                if (++v140 >= *(v141 + 16))
                {
                  v12 = v173;
                  if (!*(v141 + 16))
                  {
                    break;
                  }

                  v142 = 0;
                  while (1)
                  {
                    v169 = v142;
                    v143 = *(*(v141 + 8) + 8 * v142);
                    v144 = *(*v175 + v176);
                    LODWORD(v176) = v176 + 2;
                    v145 = v144 + 1;
                    v146 = heap_Calloc(*(*a1 + 8), 1, (v144 + 1));
                    *v143 = v146;
                    if (!v146)
                    {
                      goto LABEL_128;
                    }

                    v170 = v143;
                    v174 = v145;
                    v28 = ssftriff_reader_ReadStringZ(a2, *v175, HIDWORD(v176), v176, v146, &v174);
                    v41 = 1;
                    if ((v28 & 0x80000000) != 0 || v174 != v145)
                    {
                      goto LABEL_105;
                    }

                    v147 = v176 + v145;
                    LODWORD(v176) = v147;
                    v148 = *v175;
                    v149 = v170;
                    *(v170 + 4) = *(*v175 + v147);
                    LODWORD(v176) = v147 + 2;
                    *(v170 + 5) = *(v148 + v147 + 2);
                    LODWORD(v176) = v147 + 4;
                    v150 = *(v148 + v147 + 4);
                    *(v170 + 6) = v150;
                    LODWORD(v176) = v147 + 6;
                    if (v150)
                    {
                      v151 = heap_Calloc(*(*a1 + 8), 1, 8 * v150);
                      v170[2] = v151;
                      if (!v151)
                      {
                        log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v152, v153, v154, v155, v167);
                        *(v170 + 6) = 0;
                        goto LABEL_130;
                      }

                      if (*(v170 + 6))
                      {
                        v156 = 0;
                        v157 = v176;
                        do
                        {
                          v158 = *(*v175 + v157);
                          LODWORD(v176) = v157 + 2;
                          v159 = v158 + 1;
                          *(v149[2] + 8 * v156) = heap_Calloc(*(*a1 + 8), 1, (v158 + 1));
                          v23 = *(v149[2] + 8 * v156);
                          if (!v23)
                          {
                            goto LABEL_128;
                          }

                          v174 = v159;
                          v28 = ssftriff_reader_ReadStringZ(a2, *v175, HIDWORD(v176), v176, v23, &v174);
                          v41 = 1;
                          if ((v28 & 0x80000000) != 0 || v174 != v159)
                          {
                            goto LABEL_105;
                          }

                          v157 = v176 + v159;
                          LODWORD(v176) = v157;
                          ++v156;
                          v149 = v170;
                        }

                        while (v156 < *(v170 + 6));
                      }
                    }

                    v142 = v169 + 1;
                    v141 = *(v21 + 24);
                    v12 = v173;
                    if (v169 + 1 >= *(v141 + 16))
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_12:
        v28 = ssftriff_reader_CloseChunk(a2);
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_96;
        }

        v29 = *v21;
      }

      if (v29 <= 5 && ((1 << v29) & 0x2D) != 0)
      {
        v35 = heap_Calloc(*(*a1 + 8), 1, 72);
        *(v21 + 8) = v35;
        if (!v35)
        {
          goto LABEL_103;
        }

        v29 = *v21;
      }

      if (v29 <= 5 && ((1 << v29) & 0x36) != 0)
      {
        v36 = heap_Calloc(*(*a1 + 8), 1, 64);
        *(v21 + 16) = v36;
        if (!v36)
        {
LABEL_103:
          log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v31, v24, v25, v26, v167);
          v132 = FEDATA_ERROR(10);
          goto LABEL_104;
        }

        v29 = *v21;
      }

      if (v29 <= 5 && ((1 << v29) & 0x2D) != 0)
      {
        Chunk = ssftriff_reader_FindChunk(a2, "TDAT", 1, &v176 + 1, v175);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        LODWORD(v176) = 0;
        v37 = *v175;
        *(v21 + 40) = *v175;
        LOWORD(v37) = *v37;
        LODWORD(v176) = 2;
        v38 = v37 + 1;
        v39 = heap_Calloc(*(*a1 + 8), 1, (v37 + 1));
        **(v21 + 8) = v39;
        if (!v39)
        {
          goto LABEL_128;
        }

        v174 = v38;
        v28 = ssftriff_reader_ReadStringZ(a2, *v175, HIDWORD(v176), v176, v39, &v174);
        v41 = 1;
        if ((v28 & 0x80000000) != 0 || v174 != v38)
        {
          goto LABEL_105;
        }

        v42 = v176 + v38;
        LODWORD(v176) = v42;
        v43 = *v175;
        *(*(v21 + 8) + 8) = *(*v175 + v42);
        LODWORD(v176) = v42 + 2;
        *(*(v21 + 8) + 12) = *(v43 + v42 + 2);
        LODWORD(v176) = v42 + 4;
        v44 = *(v43 + v42 + 4);
        LODWORD(v176) = v42 + 8;
        v45 = *(v43 + v42 + 8);
        v46 = v42 + 12;
        v47 = *(v21 + 8);
        *(v47 + 16) = v46;
        *(v47 + 24) = v43 + v46;
        LODWORD(v176) = v44 + v46;
        v48 = (v44 + v46 + *(v43 + (v44 + v46)) + 4);
        *(v47 + 40) = v48;
        *(v47 + 32) = v43 + v48;
        LODWORD(v176) = v48 + v45;
        if (*(v47 + 8))
        {
          v49 = heap_Calloc(*(*a1 + 8), 1, 32 * *(v47 + 8));
          v47 = *(v21 + 8);
          *(v47 + 48) = v49;
          if (!v49)
          {
            goto LABEL_132;
          }

          if (*(v47 + 8))
          {
            v50 = 0;
            v51 = 0;
            while (1)
            {
              v52 = *(v47 + 48) + v50;
              v53 = *v175;
              v54 = *(*v175 + v176);
              LODWORD(v176) = v176 + 2;
              *v52 = v54;
              *(v52 + 4) = *(v53 + v176);
              LODWORD(v176) = v176 + 2;
              *(v52 + 6) = *(*v175 + v176);
              LODWORD(v176) = v176 + 2;
              LODWORD(v53) = *(*v175 + v176);
              *(v52 + 24) = v53;
              LODWORD(v176) = v176 + 2;
              *(v52 + 26) = *(*v175 + v176);
              LODWORD(v176) = v176 + 2;
              *(v52 + 28) = *(*v175 + v176);
              LODWORD(v176) = v176 + 2;
              *(v52 + 8) = 0;
              if (v53)
              {
                v55 = heap_Calloc(*(*a1 + 8), 1, 56);
                v56 = v55;
                *(v52 + 8) = v55;
                if (!v55)
                {
                  goto LABEL_134;
                }

                *v55 = &StaticIntPointers_1;
                *(v55 + 24) = 0;
                *(v55 + 16) = 0;
                *(v55 + 40) = 0;
                *(v55 + 48) = 0;
                *(v55 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v55, *v175, &v176, HIDWORD(v176));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              *(v52 + 16) = 0;
              if (*(v52 + 26))
              {
                v58 = heap_Calloc(*(*a1 + 8), 1, 56);
                v56 = v58;
                *(v52 + 16) = v58;
                if (!v58)
                {
LABEL_134:
                  v160 = *(*a1 + 32);
                  v161 = a1[23];
                  goto LABEL_129;
                }

                *v58 = &StaticIntPointers_1;
                *(v58 + 24) = 0;
                *(v58 + 16) = 0;
                *(v58 + 40) = 0;
                *(v58 + 48) = 0;
                *(v58 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v58, *v175, &v176, HIDWORD(v176));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              ++v51;
              v47 = *(v21 + 8);
              v50 += 32;
              if (v51 >= *(v47 + 8))
              {
                goto LABEL_39;
              }
            }

            v28 = FunctionDataFromBinaryFile;
            v41 = 1;
            v12 = v173;
            goto LABEL_97;
          }
        }

LABEL_39:
        v59 = *(v47 + 12);
        if (v59)
        {
          v60 = heap_Calloc(*(*a1 + 8), 1, 16 * v59);
          v61 = *(v21 + 8);
          *(v61 + 64) = v60;
          if (!v60)
          {
            goto LABEL_128;
          }

          if (*(v61 + 12))
          {
            v62 = 0;
            v63 = 0;
            do
            {
              v64 = *(v61 + 64);
              if (a3 == 1)
              {
                *(v64 + v62 + 4) = *(*v175 + v176);
                v65 = v176 + 4;
                LODWORD(v176) = v176 + 4;
                v66 = *v175;
              }

              else
              {
                v66 = *v175;
                v67 = *(*v175 + v176);
                LODWORD(v176) = v176 + 2;
                *(v64 + v62 + 4) = v67;
                v65 = v176;
              }

              v68 = v64 + v62;
              *(v68 + 8) = *(v66 + v65);
              LODWORD(v176) = v176 + 2;
              *(v68 + 10) = *(*v175 + v176);
              LODWORD(v176) = v176 + 2;
              *v68 = *(*v175 + v176);
              v69 = v176;
              LODWORD(v176) = v176 + 2;
              v70 = *(*v175 + v176);
              LODWORD(v176) = v69 + 4;
              *(v68 + 12) = v70;
              ++v63;
              v61 = *(v21 + 8);
              v62 += 16;
            }

            while (v63 < *(v61 + 12));
          }
        }

        v71 = ssftriff_reader_DetachChunkData(a2, (v21 + 32), v175, v40, v23, v24, v25, v26);
        if ((v71 & 0x80000000) != 0)
        {
          v28 = v71;
          v41 = 1;
          v12 = v173;
          goto LABEL_97;
        }

        v72 = *v175;
        *(v21 + 40) = *v175;
        v73 = *(v21 + 8);
        v74 = v72 + *(v73 + 16);
        v75 = v72 + *(v73 + 40);
        *(v73 + 24) = v74;
        *(v73 + 32) = v75;
        v28 = ssftriff_reader_CloseChunk(a2);
        v12 = v173;
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_96;
        }

        v29 = *v21;
      }

      if (v29 > 5 || ((1 << v29) & 0x36) == 0)
      {
        goto LABEL_101;
      }

      Chunk = ssftriff_reader_FindChunk(a2, "DDAT", 1, &v176 + 1, v175);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_95;
      }

      LODWORD(v176) = 0;
      v76 = **v175;
      LODWORD(v176) = 2;
      v77 = v76 + 1;
      v78 = heap_Calloc(*(*a1 + 8), 1, (v76 + 1));
      **(v21 + 16) = v78;
      if (!v78)
      {
        goto LABEL_128;
      }

      v174 = v77;
      v28 = ssftriff_reader_ReadStringZ(a2, *v175, HIDWORD(v176), v176, v78, &v174);
      v41 = 1;
      if ((v28 & 0x80000000) == 0 && v174 == v77)
      {
        v79 = v176 + v77;
        LODWORD(v176) = v79;
        v80 = *v175;
        v81 = *(*v175 + v79);
        LODWORD(v176) = v79 + 2;
        v82 = *(v21 + 16);
        *(v82 + 8) = v81;
        *(v82 + 24) = *(v80 + v79 + 2);
        LODWORD(v176) = v79 + 4;
        *(*(v21 + 16) + 50) = *(v80 + v79 + 4);
        LODWORD(v176) = v79 + 6;
        v83 = *(v21 + 16);
        *(v83 + 56) = 0;
        if (*(v83 + 50))
        {
          v84 = heap_Calloc(*(*a1 + 8), 1, 8 * *(v83 + 50));
          v83 = *(v21 + 16);
          *(v83 + 56) = v84;
          v85 = v172;
          if (v84)
          {
            if (*(v83 + 50))
            {
              v86 = 0;
              v87 = v176;
              while (1)
              {
                v88 = *(*v175 + v87);
                LODWORD(v176) = v87 + 2;
                v89 = v88 + 1;
                *(*(*(v21 + 16) + 56) + 8 * v86) = heap_Calloc(*(*a1 + 8), 1, (v88 + 1));
                v23 = *(*(*(v21 + 16) + 56) + 8 * v86);
                if (!v23)
                {
                  goto LABEL_128;
                }

                v90 = v89;
                v174 = v89;
                v28 = ssftriff_reader_ReadStringZ(a2, *v175, HIDWORD(v176), v176, v23, &v174);
                v41 = 1;
                if ((v28 & 0x80000000) != 0 || v174 != v90)
                {
                  goto LABEL_105;
                }

                v87 = v176 + v90;
                LODWORD(v176) = v176 + v90;
                ++v86;
                v83 = *(v21 + 16);
                if (v86 >= *(v83 + 50))
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_65;
          }
        }

        else
        {
LABEL_64:
          v85 = v172;
LABEL_65:
          if (!*(v83 + 24))
          {
            goto LABEL_82;
          }

          v91 = heap_Calloc(*(*a1 + 8), 1, 72 * *(v83 + 24));
          v83 = *(v21 + 16);
          *(v83 + 16) = v91;
          if (v91)
          {
            if (*(v83 + 24))
            {
              v92 = 0;
              while (1)
              {
                v93 = *(*v175 + v176);
                v94 = *(v83 + 16) + 72 * v92;
                LODWORD(v176) = v176 + 2;
                *(v94 + 56) = v93;
                v95 = heap_Calloc(*(*a1 + 8), 1, v93 + 1);
                *(v94 + 48) = v95;
                if (!v95)
                {
                  break;
                }

                memcpy(v95, (*v175 + v176), v93);
                *(*(v94 + 48) + v93) = 0;
                LODWORD(v176) = v176 + *(v94 + 56);
                *v94 = *(*v175 + v176);
                LODWORD(v176) = v176 + 2;
                *(v94 + 2) = *(*v175 + v176);
                v96 = v176;
                LODWORD(v176) = v176 + 2;
                v97 = *v175;
                v98 = *(*v175 + v176);
                LODWORD(v176) = v96 + 4;
                *(v94 + 60) = v98;
                v99 = *(v97 + v176);
                LODWORD(v176) = v176 + 2;
                *(v94 + 64) = v99;
                v100 = *(v97 + v176);
                LODWORD(v176) = v176 + 2;
                *(v94 + 8) = v100;
                if (v100 == 1)
                {
                  *(v94 + 4) = *(v97 + v176);
                  LODWORD(v176) = v176 + 2;
                  *(v94 + 12) = *(*v175 + v176);
                  LODWORD(v176) = v176 + 2;
                }

                v85 = v172;
                if (!v172)
                {
                  v101 = *(*v175 + v176);
                  *(v94 + 40) = v101;
                  v102 = v176;
                  LODWORD(v176) = v176 + 2;
                  if (v101)
                  {
                    LODWORD(v176) = v102 + 4 * (v101 - 1) + 6;
                  }
                }

                if (v171 == 1)
                {
                  v103 = *(*v175 + v176);
                  *(v94 + 42) = v103;
                  LODWORD(v176) = v176 + 2;
                  if (v103)
                  {
                    v104 = heap_Calloc(*(*a1 + 8), 1, 12 * v103);
                    *(v94 + 32) = v104;
                    if (!v104)
                    {
                      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v105, v106, v107, v108, v167);
                      v28 = FEDATA_ERROR(10);
                      v12 = v173;
                      if ((v28 & 0x80000000) == 0)
                      {
                        goto LABEL_101;
                      }

                      goto LABEL_138;
                    }

                    v109 = *(v94 + 42);
                    if (*(v94 + 42))
                    {
                      v110 = *v175;
                      v111 = (v104 + 8);
                      do
                      {
                        v112 = v176;
                        v113 = *(v110 + v176);
                        LODWORD(v176) = v176 + 2;
                        v114 = v176;
                        *(v111 - 4) = v113;
                        v115 = *(v110 + v114);
                        LODWORD(v176) = v112 + 4;
                        *(v111 - 2) = v115;
                        *v111 = 1;
                        v111 += 3;
                        --v109;
                      }

                      while (v109);
                    }
                  }
                }

                ++v92;
                v83 = *(v21 + 16);
                if (v92 >= *(v83 + 24))
                {
                  goto LABEL_82;
                }
              }
            }

            else
            {
LABEL_82:
              v116 = v176;
              *(v83 + 48) = *(*v175 + v176);
              LODWORD(v176) = v116 + 2;
              if (!*(*(v21 + 16) + 48))
              {
                goto LABEL_94;
              }

              v117 = heap_Calloc(*(a1[3] + 8), 1, 16 * *(*(v21 + 16) + 48));
              v118 = *(v21 + 16);
              *(v118 + 32) = v117;
              if (v117)
              {
                if (!*(v118 + 48))
                {
LABEL_94:
                  v132 = ssftriff_reader_CloseChunk(a2);
LABEL_104:
                  v28 = v132;
                  v41 = 0;
                  goto LABEL_105;
                }

                v119 = 0;
                while (1)
                {
                  v120 = *(v118 + 32) + 16 * v119;
                  v121 = *(*v175 + v176);
                  *(v120 + 8) = v121;
                  LODWORD(v176) = v176 + 2;
                  v122 = heap_Calloc(*(*a1 + 8), 1, 12 * v121);
                  *v120 = v122;
                  if (!v122)
                  {
                    break;
                  }

                  v123 = *(v120 + 8);
                  if (v123)
                  {
                    v124 = 0;
                    for (i = 0; i < v123; ++i)
                    {
                      v126 = *v120;
                      v127 = *v120 + v124;
                      *(v127 + 2) = 0;
                      if (v85)
                      {
                        v128 = *v175;
                        v129 = v176;
                        v130 = *(*v175 + v176);
                        LODWORD(v176) = v176 + 1;
                        v131 = v176;
                        *(v127 + 2) = v130;
                        *(v127 + 4) = *(v128 + v131);
                      }

                      else
                      {
                        *(v126 + v124) = *(*v175 + v176);
                        LODWORD(v176) = v176 + 2;
                        *(*v120 + v124 + 4) = *(*v175 + v176);
                        v129 = v176;
                        v123 = *(v120 + 8);
                      }

                      LODWORD(v176) = v129 + 2;
                      v124 += 12;
                    }
                  }

                  ++v119;
                  v118 = *(v21 + 16);
                  if (v119 >= *(v118 + 48))
                  {
                    goto LABEL_94;
                  }
                }
              }
            }

LABEL_128:
            v160 = *(*a1 + 32);
            v161 = a1[23];
            v56 = 0;
LABEL_129:
            log_OutPublic(v160, v161, 24048, v56, v23, v24, v25, v26, v167);
LABEL_130:
            v28 = FEDATA_ERROR(10);
            v41 = 1;
            goto LABEL_105;
          }
        }

LABEL_132:
        log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v23, v24, v25, v26, v167);
        v28 = FEDATA_ERROR(10);
      }

LABEL_105:
      v12 = v173;
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_97;
      }

LABEL_98:
      if (v41)
      {
        ssftriff_reader_CloseChunk(a2);
      }

      if ((v28 & 0x80000000) != 0)
      {
LABEL_138:
        *(*(*a6 + 8) + 8 * v20) = 0;
        log_OutPublic(*(*a1 + 32), a1[23], 24044, 0, v23, v24, v25, v26, v167);
        goto LABEL_141;
      }

LABEL_101:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "loaded data block %d", v24, v25, v26, v20);
      v20 = v20 + 1;
      if (v20 >= *v12)
      {
        return v28;
      }
    }
  }

  return 0;
}

uint64_t readDataBlockFromFileRefCnt_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v21);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v20);
    if ((result & 0x80000000) == 0)
    {
      v15[0] = a1;
      v15[1] = a2;
      v16 = a3;
      v17 = a4;
      LODWORD(v18) = a5;
      ObjcForThisApi = getObjcForThisApi(v21, v20);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a6, readDataBlockFromFile_ObjcLoad_0, readDataBlockFromFile_ObjcClose_0, v15, &v19);
      if ((result & 0x80000000) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v19 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v14;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = readDataBlockFromFileRefCntBase(*a5, *(a5 + 8), *(a5 + 16), *(a5 + 20), *(a5 + 24), a4 + 32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v11 = *a5;
  v12 = *(a4 + 32);
  v13 = *(*(*a5 + 152) + 16);
  if (*v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(v12 + 8) + 8 * v14);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          if (*(v18 + 24))
          {
            v19 = 0;
            do
            {
              v20 = *(v18 + 16) + 72 * v19;
              if (*(v20 + 8) == 1)
              {
                v21 = *(v18 + 48);
                if (*(v18 + 48))
                {
                  v22 = 0;
                  v23 = *(v18 + 32);
                  do
                  {
                    v8 = v23 + 16 * v22;
                    v9 = *(v8 + 8);
                    if (*(v8 + 8))
                    {
                      v10 = 0;
                      do
                      {
                        if (*(v20 + 42))
                        {
                          v24 = (*v8 + 12 * v10);
                          v25 = (*(v20 + 32) + 4);
                          v26 = *(v20 + 42);
                          while (*(v25 - 2) != *v24 || *(v25 - 1) != v24[1] || *v25 != v24[2])
                          {
                            v25 += 6;
                            if (!--v26)
                            {
                              goto LABEL_21;
                            }
                          }

                          v15 = 1;
                        }

LABEL_21:
                        ++v10;
                      }

                      while (v10 != v9);
                    }

                    ++v22;
                  }

                  while (v22 != v21);
                  v16 = v23 + 16 * (v21 - 1);
                }
              }

              ++v19;
            }

            while (v19 != *(v18 + 24));
          }
        }
      }

      ++v14;
    }

    while (v14 != *v13);
    v27 = v15 == 0;
  }

  else
  {
    v16 = 0;
    v27 = 1;
  }

  v86 = v16;
  if (*(v11 + 154) && v27)
  {
    v28 = 1;
    *(v11 + 240) = 1;
  }

  else
  {
    v28 = *(v11 + 240);
  }

  log_OutText(*(*v11 + 32), v11[23], 4, 0, "btok twoloop data=%d", v8, v9, v10, v28);
  v33 = *v13;
  if (!v33)
  {
    return 0;
  }

  v34 = 0;
  v35 = 0;
  v36 = *(v12 + 8);
  v85 = v11;
  v88 = v33;
  while (1)
  {
    v37 = *(v36 + 8 * v34);
    if (!v37)
    {
      v39 = v86;
      goto LABEL_92;
    }

    v38 = *(v37 + 16);
    v39 = v86;
    if (v38)
    {
      if (*(v38 + 24))
      {
        break;
      }
    }

LABEL_92:
    v84 = v35;
    v86 = v39;
    for (i = 0; i != v88; ++i)
    {
      v67 = *(v36 + 8 * i);
      if (v67)
      {
        v68 = *(v67 + 24);
        if (v68)
        {
          v69 = *(v68 + 16);
          if (*(v68 + 16))
          {
            v70 = 0;
            v90 = *(v68 + 8);
            do
            {
              v71 = v37;
              if (v37)
              {
                v72 = *(v37 + 16);
                if (v72)
                {
                  v73 = *(v72 + 24);
                  if (*(v72 + 24))
                  {
                    v74 = *(v90 + 8 * v70);
                    v75 = *(v72 + 16);
                    v76 = *v74;
                    do
                    {
                      if (!strcmp(v76, (*(v75 + 6) + *v75)))
                      {
                        *(v74 + 10) = v34;
                      }

                      v75 += 36;
                      --v73;
                    }

                    while (v73);
                  }
                }
              }

              ++v70;
              v37 = v71;
            }

            while (v70 != v69);
          }
        }
      }

      v33 = v88;
    }

    ++v34;
    v35 = v84;
    if (v34 == v88)
    {
      return 0;
    }
  }

  v40 = 0;
  v41 = *(v38 + 16);
  v79 = *(v38 + 24);
  v80 = *(v36 + 8 * v34);
  v78 = v41;
  while (1)
  {
    v81 = v40;
    v42 = v41 + 72 * v40;
    v43 = *(v42 + 42);
    v89 = v42;
    if (*(v42 + 42))
    {
      v44 = 0;
      while (1)
      {
        v45 = 0;
        while (1)
        {
          v46 = *(v36 + 8 * v45);
          if (*v46 == 1 || *v46 == 4)
          {
            goto LABEL_46;
          }

          v48 = *(v38 + 50);
          if (!*(v38 + 50))
          {
            goto LABEL_46;
          }

          if (*(v85 + 240) != 1 || v39 == 0)
          {
            v50 = *(v42 + 32);
            goto LABEL_57;
          }

          v50 = *(v42 + 32);
          if (v48 > *(*v39 + 12 * v44))
          {
            break;
          }

LABEL_57:
          v51 = *(v50 + 12 * v44);
          if (v48 > v51)
          {
            goto LABEL_58;
          }

LABEL_46:
          if (v33 == ++v45)
          {
            goto LABEL_108;
          }
        }

        v51 = *(v50 + 12 * v44);
LABEL_58:
        v52 = v39;
        v53 = strcmp(**(v46 + 8), *(*(v38 + 56) + 8 * v51));
        v42 = v89;
        v39 = v52;
        if (v53)
        {
          goto LABEL_46;
        }

        *(v50 + 12 * v44++ + 2) = v45;
        if (v44 == v43)
        {
          v35 = 1;
          break;
        }
      }
    }

    if (*(v42 + 8) == 1)
    {
      v83 = *(v38 + 48);
      if (*(v38 + 48))
      {
        break;
      }
    }

LABEL_89:
    v37 = v80;
    v40 = v81 + 1;
    v41 = v78;
    if (v81 + 1 == v79)
    {
      goto LABEL_92;
    }
  }

  v54 = 0;
  v82 = *(v38 + 32);
  while (1)
  {
    v87 = v54;
    v39 = v82 + 16 * v54;
    v55 = *(v39 + 8);
    if (*(v39 + 8))
    {
      v56 = 0;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          v58 = *(v36 + 8 * j);
          if (*v58 != 1 && *v58 != 4)
          {
            if (*(v38 + 50))
            {
              v60 = (*v39 + 12 * v56);
              if (*(v38 + 50) > *v60)
              {
                v61 = v39;
                v62 = strcmp(**(v58 + 8), *(*(v38 + 56) + 8 * *v60));
                v39 = v61;
                if (!v62)
                {
                  v60[1] = j;
                  v35 = 1;
                  if (!v43)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_80;
                }
              }
            }
          }
        }

        v35 = 0;
        if (!v43)
        {
          goto LABEL_86;
        }

LABEL_80:
        v63 = *v39 + 12 * v56;
        v64 = (*(v89 + 32) + 4);
        v65 = v43;
        while (*(v64 - 1) != *(v63 + 2) || *v64 != *(v63 + 4))
        {
          v64 += 6;
          if (!--v65)
          {
            goto LABEL_86;
          }
        }

        *(v63 + 8) = 1;
LABEL_86:
        ++v56;
      }

      while (v56 != v55);
    }

    if (!v35)
    {
      break;
    }

    v54 = v87 + 1;
    v35 = 1;
    if (v87 + 1 == v83)
    {
      goto LABEL_89;
    }
  }

LABEL_108:
  log_OutPublic(*(*v85 + 32), v85[23], 24045, 0, v29, v30, v31, v32, v77);
  return 0;
}

uint64_t readDataBlockFromFile_ObjcClose_0(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v56 = 0;
  inited = InitRsrcFunction(a1, a2, &v56);
  v11 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v12 = *(v3 + 1);
      if (v12)
      {
        v13 = *v3;
        if (*v3)
        {
          v55 = inited;
          v14 = 0;
          v54 = v3;
          while (1)
          {
            v15 = *(*(v3 + 1) + 8 * v14);
            if (v15)
            {
              v17 = (v15 + 32);
              v16 = *(v15 + 32);
              if (v16)
              {
                v55 = ssftriff_reader_ReleaseChunkData(v16, v12, v5, v6, v7, v8, v9, v10);
                if ((v55 & 0x80000000) != 0)
                {
                  return v55;
                }

                *v17 = 0;
                *(v15 + 40) = 0;
              }

              v18 = v56;
              v20 = *(v15 + 8);
              v19 = *(v15 + 16);
              v21 = *(v15 + 24);
              if (v20)
              {
                if (*v15 <= 5u && ((1 << *v15) & 0x2D) != 0)
                {
                  heap_Free(*(v56 + 8), *v20);
                  *v20 = 0;
                  v23 = *(v20 + 48);
                  if (v23)
                  {
                    if (*(v20 + 8))
                    {
                      v24 = 0;
                      v25 = 0;
                      do
                      {
                        v26 = *(v20 + 48) + v24;
                        v27 = *(v26 + 8);
                        if (v27)
                        {
                          FEData_freeEntry(v18, v27, 1);
                          heap_Free(*(v18 + 8), *(v26 + 8));
                          *(v26 + 8) = 0;
                        }

                        v28 = *(v26 + 16);
                        if (v28)
                        {
                          FEData_freeEntry(v18, v28, 1);
                          heap_Free(*(v18 + 8), *(v26 + 16));
                          *(v26 + 16) = 0;
                        }

                        ++v25;
                        v24 += 32;
                      }

                      while (v25 < *(v20 + 8));
                      v23 = *(v20 + 48);
                      v3 = v54;
                    }

                    heap_Free(*(v18 + 8), v23);
                    *(v20 + 48) = 0;
                  }

                  v29 = *(v20 + 64);
                  if (v29)
                  {
                    heap_Free(*(v18 + 8), v29);
                    *(v20 + 64) = 0;
                  }

                  heap_Free(*(v18 + 8), *(v15 + 8));
                  *(v15 + 8) = 0;
                }
              }

              if (v19)
              {
                if (*v15 <= 5u && ((1 << *v15) & 0x36) != 0)
                {
                  if (*v19)
                  {
                    heap_Free(*(v18 + 8), *v19);
                    *v19 = 0;
                  }

                  v31 = *(v19 + 56);
                  if (v31)
                  {
                    if (*(v19 + 50))
                    {
                      v32 = 0;
                      do
                      {
                        heap_Free(*(v18 + 8), *(*(v19 + 56) + 8 * v32));
                        *(*(v19 + 56) + 8 * v32++) = 0;
                      }

                      while (v32 < *(v19 + 50));
                      v31 = *(v19 + 56);
                    }

                    heap_Free(*(v18 + 8), v31);
                    *(v19 + 56) = 0;
                  }

                  if (*(v19 + 16))
                  {
                    if (*(v19 + 24))
                    {
                      v33 = 0;
                      v34 = 0;
                      do
                      {
                        v35 = (*(v19 + 16) + v33);
                        heap_Free(*(v18 + 8), v35[6]);
                        v35[6] = 0;
                        v36 = v35[2];
                        if (v36)
                        {
                          heap_Free(*(v18 + 8), v36);
                          v35[2] = 0;
                        }

                        v37 = v35[4];
                        if (v37)
                        {
                          heap_Free(*(v18 + 8), v37);
                          v35[4] = 0;
                        }

                        ++v34;
                        v33 += 72;
                      }

                      while (v34 < *(v19 + 24));
                    }

                    v38 = *(v19 + 32);
                    v3 = v54;
                    if (v38)
                    {
                      v39 = *(v19 + 48);
                      if (v39)
                      {
                        v40 = 0;
                        for (i = 0; i < v39; ++i)
                        {
                          v42 = *(v19 + 32);
                          v43 = *(v42 + v40);
                          if (v43)
                          {
                            heap_Free(*(v18 + 8), v43);
                            *(v42 + v40) = 0;
                            v39 = *(v19 + 48);
                          }

                          v40 += 16;
                        }

                        v38 = *(v19 + 32);
                        v3 = v54;
                      }

                      heap_Free(*(v18 + 8), v38);
                      *(v19 + 32) = 0;
                    }

                    heap_Free(*(v18 + 8), *(v19 + 16));
                    *(v19 + 16) = 0;
                  }

                  heap_Free(*(v18 + 8), *(v15 + 16));
                  *(v15 + 16) = 0;
                }
              }

              if (v21)
              {
                v44 = *(v21 + 8);
                if (v44)
                {
                  v45 = *(v21 + 16);
                  if (v45)
                  {
                    for (j = 0; j < v45; ++j)
                    {
                      v47 = *(v21 + 8);
                      v48 = *(v47 + 8 * j);
                      if (v48)
                      {
                        if (*v48)
                        {
                          heap_Free(*(v18 + 8), *v48);
                          v47 = *(v21 + 8);
                          **(v47 + 8 * j) = 0;
                          v48 = *(v47 + 8 * j);
                        }

                        v49 = *(v48 + 16);
                        if (v49)
                        {
                          if (*(v48 + 12))
                          {
                            v50 = 0;
                            do
                            {
                              v51 = *(*(v48 + 16) + 8 * v50);
                              if (v51)
                              {
                                heap_Free(*(v18 + 8), v51);
                                *(*(*(*(v21 + 8) + 8 * j) + 16) + 8 * v50) = 0;
                                v47 = *(v21 + 8);
                              }

                              ++v50;
                              v48 = *(v47 + 8 * j);
                            }

                            while (v50 < *(v48 + 12));
                            v49 = *(v48 + 16);
                          }

                          heap_Free(*(v18 + 8), v49);
                          v52 = *(v21 + 8);
                          *(*(v52 + 8 * j) + 16) = 0;
                          v48 = *(v52 + 8 * j);
                        }

                        *(v48 + 12) = 0;
                        heap_Free(*(v18 + 8), v48);
                        *(*(v21 + 8) + 8 * j) = 0;
                        v45 = *(v21 + 16);
                      }
                    }

                    v44 = *(v21 + 8);
                  }

                  heap_Free(*(v18 + 8), v44);
                  *(v21 + 8) = 0;
                }

                *(v21 + 16) = 0;
                heap_Free(*(v18 + 8), v21);
              }

              if (*v17)
              {
                ssftriff_reader_ReleaseChunkData(*v17, v12, v5, v6, v7, v8, v9, v10);
                *v17 = 0;
                *(v15 + 40) = 0;
              }

              heap_Free(*(v18 + 8), v15);
              v13 = *v3;
            }

            if (++v14 >= v13)
            {
              v12 = *(v3 + 1);
              v11 = v55;
              break;
            }
          }
        }

        heap_Free(*(v56 + 8), v12);
        heap_Free(*(v56 + 8), v3);
      }
    }
  }

  return v11;
}

uint64_t FEData_blockData_loadDataFiles(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 152);
  v84 = 0;
  memset(v86, 0, 128);
  memset(v85, 0, sizeof(v85));
  v83 = 0;
  v81 = 0;
  v82 = 0;
  *v80 = 0;
  *a4 = 0;
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = *(*a1 + 32);
    v12 = *(a1 + 184);
    v13 = 24049;
    goto LABEL_5;
  }

  if (!*v10)
  {
    v17 = *a1;
    if (*(a1 + 352) > *(a1 + 336))
    {
      log_OutPublic(*(v17 + 32), *(a1 + 184), 24056, "%s%d%s%d", a5, a6, a7, a8, "invalid language identifier index");
      v18 = *MEMORY[0x1E69E9840];
      v15 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v17 + 40), "langcode", v80) & 0x80000000) != 0)
    {
      *v80 = "";
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v81) & 0x80000000) == 0)
    {
      strcpy(v85, "tokentn/");
      v21 = *(a3 + 8 * *(a1 + 352));
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v22 = brokeraux_ComposeBrokerString(*a1, v85, 1, 1, *v80, 0, 0, v86, 0x80uLL);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v23 = *(a1 + 40);
      RsrcHandleForThisApi = getRsrcHandleForThisApi(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v25, 2, v86, "TOKN", 1031, &v84) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v84, "CFIG", 0, &v83, &v82);
        v39 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) != 0 && v39 != 20)
        {
          goto LABEL_65;
        }

        if (v39 == 20)
        {
          v40 = 0;
          v41 = 0;
LABEL_32:
          Chunk = ssftriff_reader_FindChunk(v84, "FILE", 0, &v83, &v82);
          if ((Chunk & 0x80000000) == 0)
          {
            *v10 = *v82;
            Chunk = ssftriff_reader_CloseChunk(v84);
            if ((Chunk & 0x80000000) == 0)
            {
              __strcpy_chk();
              DataBlockFromFileRefCnt_0 = readDataBlockFromFileRefCnt_0(a1, v84, v40, v41, *a4, v86);
              if ((DataBlockFromFileRefCnt_0 & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v84, v44, v45, v46, v35, v36, v37, v38);
                v84 = 0;
                v54 = *v10;
                if (*v10)
                {
                  v55 = 0;
                  do
                  {
                    v56 = *(*(*(v10 + 17) + 8) + 8 * v55);
                    if (v56)
                    {
                      v57 = *(v56 + 16);
                      if (v57)
                      {
                        v58 = 0;
                        v59 = 0;
                        while (v59 < *(v57 + 24))
                        {
                          v60 = *(v57 + 16);
                          if (*(v60 + v58 + 64) == 1)
                          {
                            if (*(a1 + 288))
                            {
                              if (strcmp(*(a1 + 288), (*(v60 + v58 + 48) + *(v60 + v58))))
                              {
                                v74 = *(*a1 + 32);
                                v75 = *(a1 + 184);
                                v79 = "first assigned";
                                v76 = "%s%s%s%s";
                                v77 = 24053;
                                goto LABEL_70;
                              }
                            }

                            else
                            {
                              v61 = strlen((*(v60 + v58 + 48) + *(v60 + v58)));
                              v62 = heap_Calloc(*(*a1 + 8), 1, (v61 + 1));
                              *(a1 + 288) = v62;
                              if (!v62)
                              {
                                log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v63, v64, v65, v66, v79);
                                v22 = 10;
                                goto LABEL_23;
                              }

                              strcpy(v62, (*(v60 + v58 + 48) + *(v60 + v58)));
                              *(a1 + 296) = v55;
                              *(a1 + 298) = v59;
                            }
                          }

                          ++v59;
                          v57 = *(v56 + 16);
                          v58 += 72;
                          if (!v57)
                          {
                            break;
                          }
                        }
                      }

                      v54 = *v10;
                    }

                    ++v55;
                  }

                  while (v55 < v54);
                  if (v54)
                  {
                    for (i = 0; i < v54; ++i)
                    {
                      v68 = *(*(*(v10 + 17) + 8) + 8 * i);
                      if (v68)
                      {
                        v69 = *(v68 + 16);
                        if (v69)
                        {
                          v70 = 0;
                          v71 = -1;
                          do
                          {
                            if (++v71 >= *(v69 + 24))
                            {
                              break;
                            }

                            v72 = *(v69 + 16) + v70;
                            if (*(v72 + 40) && (!*(v72 + 8) || !*(v69 + 48)))
                            {
                              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24062, 0, v50, v51, v52, v53, v79);
                            }

                            v70 += 72;
                            v69 = *(v68 + 16);
                          }

                          while (v69);
                        }

                        v54 = *v10;
                      }
                    }
                  }
                }

                if (!*(a1 + 288))
                {
                  v74 = *(*a1 + 32);
                  v75 = *(a1 + 184);
                  v77 = 24054;
                  v76 = 0;
LABEL_70:
                  log_OutPublic(v74, v75, v77, v76, v50, v51, v52, v53, v79);
                  v22 = 0;
                  goto LABEL_23;
                }

LABEL_67:
                if (v84)
                {
                  ssftriff_reader_ObjClose(v84, v47, v48, v49, v50, v51, v52, v53);
                }

                goto LABEL_69;
              }

LABEL_66:
              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24052, 0, v35, v36, v37, v38, v79);
              goto LABEL_67;
            }
          }

LABEL_65:
          DataBlockFromFileRefCnt_0 = Chunk;
          goto LABEL_66;
        }

        v43 = *v82;
        if (*v82)
        {
          v40 = v82[1] == 1;
          if (v43 != 1)
          {
            v41 = v82[2] == 1;
            if (v43 >= 3 && v82[3] == 1)
            {
              *a4 = 1;
            }

LABEL_31:
            Chunk = ssftriff_reader_CloseChunk(v84);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

            goto LABEL_32;
          }
        }

        else
        {
          v40 = 0;
        }

        v41 = 0;
        goto LABEL_31;
      }
    }

    strcpy(v85, "tokentn/");
    v26 = *(a3 + 8 * *(a1 + 352));
    __strcat_chk();
    v22 = brokeraux_ComposeBrokerString(*a1, v85, 1, 1, *v80, 0, 0, v86, 0x80uLL);
    if ((v22 & 0x80000000) == 0)
    {
      v27 = *(a1 + 40);
      v28 = getRsrcHandleForThisApi(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
      if ((ssftriff_reader_ObjOpen(v28, v29, 0, v86, "TOKN", 1031, &v84) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24057, "%s%s", v30, v31, v32, v33, "Missing broker header file");
      v22 = 3;
    }

LABEL_23:
    DataBlockFromFileRefCnt_0 = FEDATA_ERROR(v22);
LABEL_69:
    v73 = *MEMORY[0x1E69E9840];
    return DataBlockFromFileRefCnt_0;
  }

  v11 = *(*a1 + 32);
  v12 = *(a1 + 184);
  v13 = 24055;
LABEL_5:
  log_OutPublic(v11, v12, v13, 0, a5, a6, a7, a8, v78);
  v14 = *MEMORY[0x1E69E9840];
  v15 = 7;
LABEL_6:

  return FEDATA_ERROR(v15);
}

uint64_t readDataBlockFromFileDeRefCnt(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v5);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v4);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v5, v4);
      return objc_ReleaseObject(ObjcForThisApi, *(*(a1 + 152) + 16) + 2);
    }
  }

  return result;
}

uint64_t FEData_blockData_unloadDataFiles(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1[19] + 16))
  {

    return readDataBlockFromFileDeRefCnt(a1);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_unloadUnusedDataFiles(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    result = readDataBlockFromFileDeRefCnt(a1);
    *v8 = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v10);

    return FEDATA_ERROR(7);
  }

  return result;
}

uint64_t FEData_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen Begin", a6, a7, a8, v27);
  v9 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v9)
  {
    v16 = v9;
    a3[19] = v9;
    v17 = FEData_functionData_ObjOpen(a3, v9, v10, v11, v12, v13, v14, v15);
    if ((v17 & 0x80000000) != 0 || (v17 = FEData_domainDefs_ObjOpen(a3, v16 + 1, v19, v20, v21, v22, v23, v24), (v17 & 0x80000000) != 0))
    {
      v25 = v17;
    }

    else
    {
      v25 = FEData_blockData_ObjOpen(a3, v16 + 2, v19, v20, v21, v22, v23, v24);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_8:
        log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen End (%x)", v22, v23, v24, v25);
        return v25;
      }
    }

    FEData_ObjClose(a3, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0, v12, v13, v14, v15, v28);

  return TOKENTNERROR(10);
}

uint64_t FEData_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[19];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin", a6, a7, a8, v39);
    v17 = FEData_functionData_ObjClose(a1, v10, v11, v12, v13, v14, v15, v16);
    LODWORD(v18) = v17 & (v17 >> 31);
    v26 = FEData_blockData_ObjClose_NNTN(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v26 < 0)
    {
      LODWORD(v18) = v26;
    }

    v34 = FEData_domainDefs_ObjClose(a1, v27, v28, v29, v30, v31, v32, v33);
    if (v34 >= 0)
    {
      v18 = v18;
    }

    else
    {
      v18 = v34;
    }

    heap_Free(*(*a1 + 8), v8);
    a1[19] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose End (%x)", v35, v36, v37, v18);
    return v18;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

void *FEData_freeEntry(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(a2 + 40);
    if (v6)
    {
      result = heap_Free(result[1], v6);
      *(a2 + 40) = 0;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      result = heap_Free(v5[1], v7);
      *(a2 + 32) = 0;
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      *(a2 + 48) = 0;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24);
      if (*(a2 + 24))
      {
        v11 = 0;
        do
        {
          v12 = *(a2 + 16);
          if (a3 == 1)
          {
            FEData_freeEntry(v5, *(v12 + 8 * v11), 1);
            heap_Free(v5[1], *(*(a2 + 16) + 8 * v11));
            v12 = *(a2 + 16);
            v10 = *(a2 + 24);
          }

          *(v12 + 8 * v11++) = 0;
        }

        while (v11 < v10);
        v9 = *(a2 + 16);
      }

      result = heap_Free(v5[1], v9);
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
    }
  }

  return result;
}

uint64_t freeFunctions(void **a1, unsigned __int16 *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      FEData_freeEntry(*a1, v5, 0);
      heap_Free((*a1)[1], v5);
      ++v4;
    }

    while (v4 < *a2);
  }

  v6 = *(a2 + 1);
  if (v6)
  {
    heap_Free((*a1)[1], v6);
    *(a2 + 1) = 0;
  }

  *a2 = 0;
  return 0;
}

uint64_t FEData_functionData_ObjOpen(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (a2)
  {
    log_OutText(v10, v11, 4, 0, "functionData : ObjOpen Begin", a6, a7, a8, v19);
    *a2 = 0;
    v12 = heap_Calloc(*(*a1 + 8), 1, 16);
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      *v12 = 0;
      *a2 = v12;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjOpen End (%x)", v14, v15, v16, 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v13, v14, v15, v16, v20);
    v18 = 10;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v19);
    v18 = 7;
  }

  return FEDATA_ERROR(v18);
}

uint64_t FEData_functionData_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[19];
  if (v8 && (v9 = *v8) != 0)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose Begin", a6, a7, a8, v15);
    freeFunctions(a1, v9);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose End (%x)", v11, v12, v13, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {

    return FEDATA_ERROR(8);
  }
}

uint64_t FEData_readFunctionDataFromBinaryFile(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  FunctionDataFromBinaryFile = 0;
  v49 = 0;
  v15 = *a6;
  v16 = *(a5 + v15);
  v17 = v15 + 2;
  *a6 = v15 + 2;
  if (v16 > 5)
  {
    if (v16 <= 8)
    {
      if (v16 == 6)
      {
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC74;
      }

      else
      {
        FunctionDataFromBinaryFile = 0;
        if (v16 == 7)
        {
          v18 = &unk_1C37BDC78;
        }

        else
        {
          v18 = &unk_1C37BDC7C;
        }
      }

      goto LABEL_28;
    }

    switch(v16)
    {
      case 9:
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC80;
        break;
      case 10:
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC84;
        break;
      case 11:
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC88;
        break;
      default:
        goto LABEL_29;
    }

LABEL_28:
    *a4 = v18;
    goto LABEL_29;
  }

  if (v16 <= 2)
  {
    if (v16)
    {
      FunctionDataFromBinaryFile = 0;
      if (v16 == 1)
      {
        v18 = &unk_1C37BDC60;
      }

      else
      {
        v18 = &unk_1C37BDC64;
      }
    }

    else
    {
      FunctionDataFromBinaryFile = 0;
      v18 = &StaticIntPointers_2;
    }

    goto LABEL_28;
  }

  if (v16 != 3)
  {
    FunctionDataFromBinaryFile = 0;
    if (v16 == 4)
    {
      v18 = &unk_1C37BDC6C;
    }

    else
    {
      v18 = &unk_1C37BDC70;
    }

    goto LABEL_28;
  }

  *a4 = &unk_1C37BDC68;
  v19 = *(a5 + v17);
  *a6 = v15 + 4;
  v20 = v19 + 1;
  v21 = heap_Calloc(*(a3 + 8), 1, (v19 + 1));
  *(a4 + 48) = v21;
  if (v21)
  {
    v26 = v20;
    v49 = v20;
    v27 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v21, &v49);
    if ((v27 & 0x80000000) != 0 || v49 != v20)
    {
      goto LABEL_45;
    }

    FunctionDataFromBinaryFile = v27;
    v17 = *a6 + v26;
    *a6 = v17;
LABEL_29:
    v28 = *(a5 + v17);
    v29 = v17 + 2;
    *a6 = v29;
    if (!v28)
    {
      *(a4 + 40) = 0;
      goto LABEL_35;
    }

    v30 = v28 + 1;
    v31 = heap_Calloc(*(a3 + 8), 1, (v28 + 1));
    *(a4 + 40) = v31;
    if (!v31)
    {
      goto LABEL_43;
    }

    v36 = v30;
    v49 = v30;
    v37 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v31, &v49);
    if ((v37 & 0x80000000) == 0 && v49 == v30)
    {
      FunctionDataFromBinaryFile = v37;
      v29 = *a6 + v36;
      *a6 = v29;
LABEL_35:
      *(a4 + 8) = *(a5 + v29);
      v38 = *a6;
      v39 = *a6 + 2;
      *a6 = v39;
      v40 = *(a5 + v39);
      *a6 = v38 + 4;
      *(a4 + 24) = v40;
      if (!v40)
      {
        return FunctionDataFromBinaryFile;
      }

      v41 = heap_Calloc(*(a3 + 8), 1, 8 * v40);
      *(a4 + 16) = v41;
      if (v41)
      {
        if (*(a4 + 24))
        {
          v42 = 0;
          while (1)
          {
            v43 = heap_Calloc(*(a3 + 8), 1, 56);
            if (!v43)
            {
              break;
            }

            *(*(a4 + 16) + 8 * v42) = v43;
            *v43 = &StaticIntPointers_2;
            *(v43 + 24) = 0;
            *(v43 + 16) = 0;
            *(v43 + 40) = 0;
            *(v43 + 48) = 0;
            *(v43 + 32) = 0;
            FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, a3);
            if ((FunctionDataFromBinaryFile & 0x80000000) == 0 && ++v42 < *(a4 + 24))
            {
              continue;
            }

            return FunctionDataFromBinaryFile;
          }

          v44 = *(*a1 + 32);
          v45 = a1[23];
          goto LABEL_44;
        }

        return FunctionDataFromBinaryFile;
      }

LABEL_43:
      v44 = *(*a1 + 32);
      v45 = a1[23];
LABEL_44:
      log_OutPublic(v44, v45, 24048, 0, v32, v33, v34, v35, v48);
      v46 = 10;
      return FEDATA_ERROR(v46);
    }

LABEL_45:
    v46 = 0;
    return FEDATA_ERROR(v46);
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v22, v23, v24, v25, v48);

  return FEDATA_ERROR(10);
}

uint64_t FEFunctionMap_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen Begin", a6, a7, a8, v15);
  v9 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v9)
  {
    *v9 = 0;
    v9[1] = 0;
    a1[20] = v9;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen End (%x)", v11, v12, v13, 0);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v16);

    return TOKENTNERROR(10);
  }
}

uint64_t FEFunctionMap_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[20];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose Begin", a6, a7, a8, v19);
    v13 = 0;
    v14 = *a1;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = *(v8 + 8 * v13);
      if (v17)
      {
        ssftmap_ObjClose(v17);
        *(v8 + 8 * v13) = 0;
      }

      v15 = 0;
      v13 = 1;
    }

    while ((v16 & 1) != 0);
    log_OutText(*(v14 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose End (%x)", v10, v11, v12, 0);
    heap_Free(*(*a1 + 8), v8);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t FEFunctionMap_GetMap(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 8);
  v10[0] = xmmword_1F42D3870;
  v10[1] = *off_1F42D3880;
  v11 = off_1F42D3890;
  v8 = ssftmap_ObjOpen(v3, 0, v10, a2);
  result = 0;
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24039, 0, v4, v5, v6, v7, v10[0]);
    return v8;
  }

  return result;
}

uint64_t action2FunctionMap_CopyMapKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t action2FunctionMap_CompareKeys(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t action2FunctionMap_CopyFunctionData(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t FEFunctionMap_GetFunction(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 160);
  *a4 = 0;
  ssftmap_FindReadOnly(*(v4 + 8 * a2), a3, a4);
  return 0;
}

uint64_t FERuntimeData_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen Begin", a6, a7, a8, v34);
  v9 = heap_Calloc(*(*a1 + 8), 1, 88);
  if (v9)
  {
    v14 = v9;
    a1[22] = v9;
    v15 = *(*a1 + 8);
    v36 = xmmword_1C37BDC98;
    v37 = 0;
    if (vector_ObjOpen(v15, &v36, 5, v14))
    {
      v20 = 0;
    }

    else
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v16, v17, v18, v19, v35);
      v20 = TOKENTNERROR(10);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 40) = 50;
    *(v14 + 32) = 0x8800050000;
    v29 = heap_Calloc(*(*a1 + 8), 1, 816);
    *(v14 + 24) = v29;
    if (v29)
    {
      v31 = (v29 + 16 * *(v14 + 32));
      v32 = *(v14 + 34) * *(v14 + 36) + 1;
      v31[1] = v32;
      *v31 = 0;
      v33 = heap_Calloc(*(*a1 + 8), 1, v32);
      *v31 = v33;
      if (v33)
      {
        ++*(v14 + 32);
LABEL_13:
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen End (%x)", v26, v27, v28, v20);
        return v20;
      }
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v30, v26, v27, v28, v35);
    v20 = TOKENTNERROR(10);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    FERuntimeData_ObjClose(a1, v22, v23, v24, v25, v26, v27, v28);
    goto LABEL_13;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v35);

  return TOKENTNERROR(10);
}