uint64_t oneword_G2PLookup(uint64_t a1, const char **a2, __int16 a3, _WORD *a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13)
{
  v253 = *MEMORY[0x1E69E9840];
  v251 = a3;
  v231 = *a4;
  v250 = 0;
  v249 = 3;
  v16 = 2 * strlen(*a2);
  if (v16 >= 0x80)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 128;
  }

  v25 = heap_Calloc(*(*a1 + 8), 1, v17);
  v26 = *a1;
  if (!v25)
  {
    oneword_G2PLookup_cold_2(v26, v18, v19, v20, v21, v22, v23, v24);
  }

  v34 = heap_Calloc(*(v26 + 8), 1, (2 * v17));
  v35 = *a1;
  if (!v34)
  {
    oneword_G2PLookup_cold_2(v35, v27, v28, v29, v30, v31, v32, v33);
  }

  v43 = heap_Calloc(*(v35 + 8), 1, v17);
  v44 = *a1;
  if (!v43)
  {
    oneword_G2PLookup_cold_2(v44, v36, v37, v38, v39, v40, v41, v42);
  }

  v52 = heap_Calloc(*(v44 + 8), 1, v17);
  v53 = *a1;
  if (!v52)
  {
    oneword_G2PLookup_cold_2(v53, v45, v46, v47, v48, v49, v50, v51);
  }

  v61 = heap_Calloc(*(v53 + 8), 1, (2 * v17));
  v62 = *a1;
  if (!v61)
  {
    oneword_G2PLookup_cold_2(v62, v54, v55, v56, v57, v58, v59, v60);
  }

  v70 = heap_Calloc(*(v62 + 8), 1, v17);
  v71 = *a1;
  if (!v70)
  {
    oneword_G2PLookup_cold_2(v71, v63, v64, v65, v66, v67, v68, v69);
  }

  v79 = heap_Calloc(*(v71 + 8), 1, v17);
  v80 = *a1;
  __dst = v79;
  if (!v79)
  {
    oneword_G2PLookup_cold_2(v80, v72, v73, v74, v75, v76, v77, v78);
  }

  v81 = heap_Calloc(*(v80 + 8), 1, v17 >> 1);
  if (!v81)
  {
    oneword_G2PLookup_cold_1(a1, v82, v83, v84, v85, v86, v87, v88);
  }

  v89 = v81;
  v248 = 0;
  v247 = a3 - 1;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v232 = *(a1 + 2192) != 0;
  v90 = strlen(*a2);
  v91 = heap_Calloc(*(*a1 + 8), 1, v90 + 1);
  v96 = *a1;
  if (!v91)
  {
    v104 = 2310021130;
    log_OutPublic(*(v96 + 32), "FE_ONEWORD", 34000, 0, v92, v93, v94, v95, v201);
    goto LABEL_316;
  }

  v234 = v91;
  v97 = heap_Calloc(*(v96 + 8), 1, 25016);
  if (!v97)
  {
    v104 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v98, v99, v100, v101, v201);
    goto LABEL_315;
  }

  v230 = v97;
  MdeSettings = mosynt_ResetMosyntWS(*(a1 + 48), v97);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_310;
  }

  *v25 = 0;
  *v34 = 0;
  *v43 = 0;
  *v52 = 0;
  *v61 = 0;
  *v70 = 0;
  *(a1 + 2172) = 0;
  if (strcmp(a5, (a1 + 300)))
  {
    MdeSettings = oneword_GetMdeSettings(a1);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    __strcpy_chk();
  }

  __src = v43;
  v228 = v34;
  v229 = v89;
  v103 = (*(*(a1 + 56) + 168))(a6, a7, *a8, 0, 1, &v249 + 4, &v250 + 2);
  if ((v103 & 0x80000000) != 0)
  {
LABEL_311:
    v104 = v103;
    goto LABEL_312;
  }

  v104 = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, SHIDWORD(v249), *a8, &v245);
  if ((v104 & 0x80000000) != 0)
  {
LABEL_312:
    v89 = v229;
    goto LABEL_313;
  }

  if ((HIDWORD(v249) - 5) <= 2)
  {
    while (1)
    {
      v104 = (*(*(a1 + 56) + 120))(a6, a7, *a8, a8);
      if ((v104 & 0x80000000) != 0)
      {
        break;
      }

      v89 = v229;
      if (!*a8)
      {
        goto LABEL_314;
      }

      v104 = (*(*(a1 + 56) + 168))(a6, a7, *a8, 0, 1, &v249 + 4, &v250 + 2);
      if ((v104 & 0x80000000) != 0)
      {
        goto LABEL_314;
      }

      if ((HIDWORD(v249) - 5) > 2)
      {
        goto LABEL_25;
      }
    }

LABEL_324:
    v89 = v229;
    goto LABEL_314;
  }

LABEL_25:
  v105 = a8;
  if (*(a1 + 2168) != 1)
  {
    goto LABEL_29;
  }

  v106 = *(a1 + 2072);
  if (v106 != 1)
  {
    if (v106 || *(a1 + 2136))
    {
      goto LABEL_29;
    }

LABEL_321:
    v108 = 0;
    v107 = 1;
    goto LABEL_30;
  }

  if (*(a1 + 2136))
  {
    goto LABEL_321;
  }

LABEL_29:
  v107 = 0;
  v108 = 1;
LABEL_30:
  LOWORD(v109) = *a8;
  if (!*a8)
  {
    goto LABEL_314;
  }

  if (v246 >= *a4)
  {
    LOWORD(v224) = 0;
    goto LABEL_318;
  }

  v215 = v108;
  v216 = v107;
  v217 = 0;
  v224 = 0;
  v214 = a1 + 1228;
  v213 = (a1 + 160);
  v211 = (a1 + 176);
  v212 = (a1 + 168);
  v209 = (a1 + 192);
  v210 = (a1 + 184);
  v207 = (a1 + 208);
  v208 = (a1 + 200);
  v206 = (a1 + 216);
  v218 = -1;
  v225 = 3;
  v219 = 1;
  while (1)
  {
    v243 = 0;
    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v109, &v250);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    v243 = v250;
    if (v250)
    {
      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_310;
      }

      v110 = v249;
      v111 = v250;
    }

    else
    {
      v111 = 0;
      v110 = 3;
      LODWORD(v249) = 3;
    }

    MdeSettings = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, v110, v111, &v245);
    if ((MdeSettings & 0x80000000) != 0)
    {
LABEL_310:
      v104 = MdeSettings;
      goto LABEL_314;
    }

    if ((v249 - 5) <= 2)
    {
      break;
    }

LABEL_48:
    MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 1, 1, &v251, &v250 + 2);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    v116 = v251;
    v117 = v247;
    if (v251 < v247)
    {
LABEL_50:
      v118 = a8;
      goto LABEL_51;
    }

    v118 = a8;
    if (HIDWORD(v249) != 3 && v225 == 3)
    {
      v218 = *a8;
      v220 = v251;
      if (oneword_GetWord(*(a1 + 224) + v251, *a2, v25))
      {
        if (!v250 || !strcmp(a5, "prompt") || !strcmp(a5, "internal-nuance-system-norm"))
        {
          v120 = v220;
        }

        else
        {
          strcpy(v34, v25);
          MdeSettings = oneword_GetMultiWordLen(a1, v34, a5, v89, &v248);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          v120 = v251;
          v117 = v247;
          v202 = v248;
          if (v248 && v251 > v247)
          {
            for (i = 0; i < v202 && v251 > v247; ++i)
            {
              *&v252[0] = 0;
              v242 = 0;
              v121 = v217;
              if (v217)
              {
                v243 = v217;
              }

              else
              {
                v121 = v243;
                if (!v243)
                {
                  v217 = 0;
                  goto LABEL_89;
                }
              }

              if (*(v89 + i))
              {
                v203 = 0;
                do
                {
                  MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v121, 0, 1, &v242, &v250 + 2);
                  if ((MdeSettings & 0x80000000) != 0)
                  {
                    goto LABEL_310;
                  }

                  if (v242 == 3)
                  {
                    ++v203;
                  }

                  else if (v242 == 5)
                  {
                    v241 = 0;
                    v122 = a7;
                    v123 = a6;
                    (*(*(a1 + 56) + 184))(a6, a7, v243, 9, &v241);
                    if (v241)
                    {
                      __s2 = 0;
                      (*(*(a1 + 56) + 176))(a6, a7, v243, 9, &__s2, &v250 + 2);
                      if (__s2 && strcmp("lid", __s2))
                      {
                        v43 = __src;
                        v34 = v228;
                        break;
                      }

                      v122 = a7;
                      v123 = a6;
                    }

                    v112 = (*(*(a1 + 56) + 176))(v123, v122, v243, 4, v252, &v250 + 2);
                    if ((v112 & 0x80000000) != 0)
                    {
                      goto LABEL_322;
                    }

                    v124 = *&v252[0];
                    v43 = __src;
                    v34 = v228;
                    if (!strcmp(*&v252[0], "phon") || !strcmp(v124, "prompt") || !strcmp(v124, "internal-nuance-system-norm"))
                    {
                      *(v89 + i) = v203;
                      break;
                    }

                    v217 = v243;
                  }

                  MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v243, &v243);
                  if ((MdeSettings & 0x80000000) != 0)
                  {
                    goto LABEL_310;
                  }

                  v121 = v243;
                }

                while (v243 && v203 < *(v89 + i));
              }

LABEL_89:
              if (oneword_GetMultiWord((*(a1 + 224) + v251), *a2, v34, *(v89 + i)))
              {
                strcpy(v61, v34);
                if (((*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a5, v61, 256) & 0x80000000) == 0)
                {
                  MdeSettings = oneword_Lookup(a1, v230, a2, v61, v34, a5, v245, v251, *a8, a6, a7, &v247, 0, a13, v232);
                  if ((MdeSettings & 0x80000000) != 0)
                  {
                    goto LABEL_310;
                  }

                  v125 = v217;
                  if (v247 > *a4)
                  {
                    v126 = v247;
LABEL_94:
                    *a4 = v126;
                    v187 = v126 > v231;
                    v127 = v224;
                    if (!v187)
                    {
                      v127 = v125;
                    }

                    v224 = v127;
                    goto LABEL_108;
                  }

                  if (*(a1 + 2000) && *v61)
                  {
                    v128 = 0;
                    v129 = 0;
                    v130 = 0;
                    do
                    {
                      if (v61[v128] == 95)
                      {
                        v61[v128] = 32;
                        v129 = 1;
                      }

                      v128 = ++v130;
                    }

                    while (strlen(v61) > v130);
                    if (v129)
                    {
                      v103 = oneword_Lookup(a1, v230, a2, v61, v228, a5, v245, v251, *a8, a6, a7, &v247, 0, a13, v232);
                      if ((v103 & 0x80000000) != 0)
                      {
                        goto LABEL_311;
                      }

                      if (v247 > *a4)
                      {
                        v126 = v247;
                        v34 = v228;
                        v89 = v229;
                        v43 = __src;
                        v125 = v217;
                        goto LABEL_94;
                      }
                    }

                    v34 = v228;
                    v89 = v229;
                    v43 = __src;
                  }
                }
              }

LABEL_108:
              v120 = v251;
              v117 = v247;
            }
          }
        }

        if (v120 >= v117)
        {
          MdeSettings = oneword_Lookup(a1, v230, a2, v25, v25, a5, v245, v120, *a8, a6, a7, &v247, 0, a13, v232);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          LOWORD(v117) = v247;
          v222 = v251;
          if (oneword_isInputBetweenPOIMrk(a9, *a11, v251, v247))
          {
            LOWORD(__s2) = 0;
            v120 = v222;
            if (v222 < v117)
            {
              do
              {
                v223 = v120;
                v131 = &(*a2)[v120];
                v204 = *(a1 + 224);
                if (utf8_IsChineseLetter(&v131[v204]))
                {
                  v132 = utf8_determineUTF8CharLength(v131[v204]);
                  v120 = v223 + v132;
                  LOWORD(__s2) = v223 + v132;
                  if (v251 != v223 || v247 > v120)
                  {
                    memset(v252, 0, sizeof(v252));
                    v205 = v223 + v132;
                    __strncpy_chk();
                    MdeSettings = oneword_Lookup(a1, v230, a2, v252, v252, a5, v245, v223, *a8, a6, a7, &__s2, 0, a13, v232);
                    v120 = v205;
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_310;
                    }
                  }
                }

                else
                {
                  v120 = v223 + 1;
                }

                LOWORD(v117) = v247;
              }

              while (v247 > v120);
              LOWORD(v120) = v251;
            }
          }

          else
          {
            LOWORD(v120) = v222;
          }
        }

        if (v120 >= v117)
        {
          strcpy(v52, v25);
          if (((*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a5, v52, 128) & 0x80000000) == 0)
          {
            if (strcmp(v25, v52))
            {
              MdeSettings = oneword_Lookup(a1, v230, a2, v52, v25, a5, v245, v251, *a8, a6, a7, &v247, 0, a13, v232);
              if ((MdeSettings & 0x80000000) != 0)
              {
                goto LABEL_310;
              }
            }
          }
        }
      }

      v116 = v251;
      LOWORD(v117) = v247;
      if (v251 >= v247)
      {
        v118 = a8;
        if (!*(a1 + 292))
        {
          v219 = 0;
          goto LABEL_138;
        }

        LOWORD(v252[0]) = 0;
        MdeSettings = oneword_NonDctDpsMde(a1, v251, v25, a5, *a8, v252, a6, a7);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        if (LOWORD(v252[0]))
        {
          LODWORD(v249) = 0;
          LOWORD(v250) = v252[0];
        }

        v219 = 0;
        v116 = v251;
        LOWORD(v117) = v247;
      }

      else
      {
        v219 = 0;
      }

      v118 = a8;
    }

LABEL_138:
    if (v116 < v117 || v225 == 3 && v249 == 3)
    {
      if (v116 < v117 || v225 != 3 || v249 != 3)
      {
        goto LABEL_51;
      }

      if (HIDWORD(v249))
      {
        if (HIDWORD(v249) <= 2)
        {
          LOWORD(v252[0]) = 0;
          LOWORD(__s2) = 0;
          v133 = v118;
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", v113, v114, v115, v25);
          v247 = v251 + strlen(v25);
          HIDWORD(v249) = 4;
          MdeSettings = (*(*(a1 + 56) + 88))(a6, a7, *v133, v133);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 0, 1, &v249 + 4, v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 1, 1, &v251, v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 2, 1, &v247, v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 3, 1, "", v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 5, 2, "*", v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 6, 2, "*", v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          LOWORD(__s2) = 1;
          v104 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 7, 1, &__s2, v252);
          if ((v104 & 0x80000000) != 0)
          {
            goto LABEL_324;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 9, 1, "", v252);
          v118 = a8;
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }
        }

        goto LABEL_51;
      }

      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *v118, 2, 1, &v246, &v250 + 2);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_310;
      }

      v141 = *(a1 + 224);
      v142 = v141 + v251;
      v143 = (v246 + v141) - (v141 + v251);
      if (v143 >= 128)
      {
        v144 = 128;
      }

      else
      {
        v144 = v143;
      }

      strncpy(v43, &(*a2)[v142], v144);
      v43[v144] = 0;
      *(a1 + 2172) = 0;
      strcpy(v70, v43);
      v145 = a5;
      v146 = (*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), a5, v70, 128);
      v118 = a8;
      if (v146 < 0)
      {
LABEL_180:
        v153 = *(a1 + 2168);
        LOWORD(v154) = v251;
        v155 = v247;
      }

      else
      {
        if (*(a1 + 2192))
        {
          LODWORD(v252[0]) = 0;
          v148 = strcmp(v25, v43) == 0;
          MdeSettings = mde_MosyntMorphAna(a1, v230, v70, v43, a5, v251, *a8, v149, a6, a7, &v247, v148, v252);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          if (LODWORD(v252[0]) == 1)
          {
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD WGRAM %s", v150, v151, v152, v43);
          }

          v145 = a5;
          v118 = a8;
          goto LABEL_180;
        }

        if (*(a1 + 2168) == 1 && !strstr(a5, "latin") && (!v215 || strcmp(a5, "prompt") && strcmp(a5, "internal-nuance-system-norm")))
        {
          strcpy(__dst, v43);
          if (((*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a5, __dst, 128) & 0x80000000) != 0)
          {
            strcpy(__dst, __src);
          }

          v103 = crf_mde_seg_label(*a1, *a2, a1 + 2016, __dst, v251, *(a1 + 224), &v247, a8, *(a1 + 56), a6, a7, *(a1 + 80), *(a1 + 64), *(a1 + 72), *(a1 + 1224), v214, *(a1 + 556), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), a5, v213, v212, v211, v210, v209, v208, v207, v206, *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 1208), 0);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v34 = v228;
          v89 = v229;
          v43 = __src;
          v145 = a5;
          if (v251 < v247)
          {
            *(a1 + 2172) = 1;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", v194, v195, v147, __src);
          }
        }

        LOWORD(v154) = v251;
        v155 = v247;
        v118 = a8;
        if (v251 >= v247 && *(a1 + 296))
        {
          v103 = oneword_DpsMde(a1, v70, v43, "g2p", v145, v251, *a8, v147, a6, a7, &v247);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v154 = v251;
          v155 = v247;
          if (v154 >= v247)
          {
            v118 = a8;
            v34 = v228;
            v89 = v229;
            v43 = __src;
          }

          else
          {
            v43 = __src;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MDE %s", v154, v169, v170, __src);
            LOWORD(v154) = v251;
            v155 = v247;
            v118 = a8;
            v34 = v228;
            v89 = v229;
          }

          v145 = a5;
        }

        v153 = *(a1 + 2168);
        if (!v153)
        {
          if (v154 >= v155)
          {
            v103 = mde_Main(a1, v70, v43, v145, v154, *v118, a6, a7, &v247);
            if ((v103 & 0x80000000) != 0)
            {
              goto LABEL_311;
            }

            v145 = a5;
            v118 = a8;
            v34 = v228;
            v89 = v229;
            v43 = __src;
            if (v251 < v247)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE %s", v196, v197, v198, __src);
              v118 = a8;
            }
          }

          goto LABEL_180;
        }
      }

      v187 = v154 < v155;
      v156 = v219;
      if (!v187)
      {
        v156 = 1;
      }

      v219 = v156;
      if (v153 == 1)
      {
        v157 = v216;
        if (v216)
        {
          v158 = strstr(v145, "latin");
          v157 = v216;
          v118 = a8;
          if (v158)
          {
LABEL_189:
            if (!strstr(v145, "latin"))
            {
              goto LABEL_50;
            }

            v159 = 1;
            v118 = a8;
            goto LABEL_224;
          }
        }

        MdeSettings = oneword_joinTokens(a1, a6, a7, v218, v118, v157);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        v153 = *(a1 + 2168);
        v145 = a5;
        v118 = a8;
        if (v153 == 1)
        {
          if (v216)
          {
            goto LABEL_189;
          }

          v159 = 1;
LABEL_224:
          v171 = oneword_ProcessNTokens(a1, v230, a2, v145, a6, a7, v218, *v118, a9, a10, a11, a12, v219, v159, v159);
          v118 = a8;
          if ((v171 & 0x80000000) != 0)
          {
            v104 = v171;
            goto LABEL_324;
          }

          goto LABEL_51;
        }
      }

      if (v153)
      {
        goto LABEL_51;
      }

      v159 = 0;
      goto LABEL_224;
    }

    if (HIDWORD(v249) < 2 || HIDWORD(v249) == 2 && *(a1 + 936) == 1)
    {
      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *v118, 2, 1, &v246, &v250 + 2);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_310;
      }

      v134 = *(a1 + 224);
      v135 = v134 + v251;
      v136 = (v246 + v134) - (v134 + v251);
      if (v136 >= 128)
      {
        v137 = 128;
      }

      else
      {
        v137 = v136;
      }

      strncpy(v43, &(*a2)[v135], v137);
      v43[v137] = 0;
      *(a1 + 2172) = 0;
      strcpy(v70, v43);
      if (((*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), a5, v70, 128) & 0x80000000) != 0)
      {
        strcpy(v70, v43);
      }

      else if (strcmp(v52, v70))
      {
        MdeSettings = oneword_Lookup(a1, v230, a2, v70, v43, a5, v245, v251, *a8, a6, a7, &v247, 1, a13, v232);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        if (v247 > v251)
        {
          *&v252[0] = 0;
          LOWORD(__s2) = 0;
          v103 = (*(*(a1 + 56) + 136))(a6, a7, *a8, &__s2);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 176))(a6, a7, __s2, 3, v252, &v250 + 2);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          oneword_ReplaceUnderscoreWithDot(*&v252[0]);
          v43 = __src;
          v34 = v228;
        }
      }

      v160 = v251;
      if (v251 >= v247)
      {
        v118 = a8;
        if (HIDWORD(v249) == 1)
        {
          LOWORD(v252[0]) = 0;
          LOWORD(__s2) = 0;
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", v138, v139, v140, v25);
          v247 = v251 + strlen(v43);
          HIDWORD(v249) = 4;
          v103 = (*(*(a1 + 56) + 88))(a6, a7, *a8, a8);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 0, 1, &v249 + 4, v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 1, 1, &v251, v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 2, 1, &v247, v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 3, 1, "", v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 5, 2, "*", v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 6, 2, "*", v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          LOWORD(__s2) = 1;
          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 7, 1, &__s2, v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 9, 1, "", v252);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v103 = (*(*(a1 + 56) + 120))(a6, a7, *a8);
          v118 = a8;
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }
        }

        else if (!HIDWORD(v249))
        {
          if (*(a1 + 2192))
          {
            LODWORD(v252[0]) = 0;
            v161 = strlen(v25);
            v162 = strlen(v43);
            v164 = v161;
            if (v161 < 2u)
            {
              v168 = 0;
            }

            else
            {
              LOWORD(__s2) = v25[v161 - 1];
              v165 = v162;
              v166 = v164;
              v167 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &__s2);
              v164 = v166;
              v188 = v167 == 0;
              v162 = v165;
              v168 = !v188;
              v160 = v251;
            }

            v181 = v168 & (v162 == v164 - 1);
            if (v164 == v162)
            {
              v181 = 1;
            }

            MdeSettings = mde_MosyntMorphAna(a1, v230, v70, v43, a5, v160, *a8, v163, a6, a7, &v247, v181, v252);
            v118 = a8;
            v89 = v229;
            if ((MdeSettings & 0x80000000) != 0)
            {
              goto LABEL_310;
            }
          }

          else
          {
            if (*(a1 + 2168) == 1 && !strstr(a5, "latin") && (!v215 || strcmp(a5, "prompt") && strcmp(a5, "internal-nuance-system-norm")))
            {
              strcpy(__dst, v43);
              if (((*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a5, __dst, 128) & 0x80000000) != 0)
              {
                strcpy(__dst, __src);
              }

              v103 = crf_mde_seg_label(*a1, *a2, a1 + 2016, __dst, v251, *(a1 + 224), &v247, a8, *(a1 + 56), a6, a7, *(a1 + 80), *(a1 + 64), *(a1 + 72), *(a1 + 1224), v214, *(a1 + 556), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), a5, v213, v212, v211, v210, v209, v208, v207, v206, *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 1208), 1);
              if ((v103 & 0x80000000) != 0)
              {
                goto LABEL_311;
              }

              if (v251 < v247)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", v172, v173, v140, __src);
                *(a1 + 2172) = 1;
              }

              v43 = __src;
              if (!*(a1 + 2068))
              {
                if (*(a1 + 2172))
                {
                  v174 = (*(*(a1 + 56) + 120))(a6, a7, *a8);
                  if ((v174 & 0x80000000) != 0)
                  {
                    v104 = v174;
                    v34 = v228;
                    v89 = v229;
                    goto LABEL_314;
                  }
                }
              }
            }

            if (v251 >= v247 && *(a1 + 296))
            {
              v103 = oneword_DpsMde(a1, v70, v43, "g2p", a5, v251, *a8, v140, a6, a7, &v247);
              if ((v103 & 0x80000000) != 0)
              {
                goto LABEL_311;
              }

              v43 = __src;
              if (v251 < v247)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MAIN %s", v175, v176, v177, __src);
              }
            }

            v118 = a8;
            v34 = v228;
            v89 = v229;
            if (!*(a1 + 2168) && v251 >= v247)
            {
              v103 = mde_Main(a1, v70, v43, a5, v251, *a8, a6, a7, &v247);
              if ((v103 & 0x80000000) != 0)
              {
                goto LABEL_311;
              }

              v118 = a8;
              v34 = v228;
              v89 = v229;
              v43 = __src;
              if (v251 < v247)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE MAIN %s", v178, v179, v180, __src);
                v118 = a8;
              }
            }
          }
        }

        v182 = v219;
        if (v251 >= v247)
        {
          v182 = 1;
        }

        v219 = v182;
      }

      else
      {
        v118 = a8;
      }
    }

    if ((v218 & 0x8000) == 0)
    {
      if (HIDWORD(v249) == 3 || v249 != 3)
      {
LABEL_282:
        if (*(a1 + 2168) != 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v218, 1, 1, &v246 + 2, &v250 + 2);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        v183 = v234;
        *v234 = 0;
        if (v246 > HIWORD(v246))
        {
          v183 = strncpy(v234, &(*a2)[*(a1 + 224) + HIWORD(v246)], v246 - HIWORD(v246));
          v183[v246 - HIWORD(v246)] = 0;
        }

        if (*(a1 + 936) && utf8_IsChineseLetter(v183))
        {
          v184 = *(a1 + 224);
          ChineseUTFCharNum = utf8_GetChineseUTFCharNum(*a2, (v246 + v184));
          v185 = ChineseUTFCharNum - utf8_GetChineseUTFCharNum(*a2, (*(a1 + 224) + HIWORD(v246)));
          while (1)
          {
            v186 = (*a2)[v246 + v184];
            if (v186 == 32)
            {
              break;
            }

            v187 = v186 == 95 || v184 > 5;
            v188 = v187 || v186 == 0;
            if (v188)
            {
              break;
            }

            ++v184;
          }

          MdeSettings = oneword_SkipCrosstoken(a1, a6, a7, a5, v185, SHIWORD(v246), v246 + v184 - *(a1 + 224), v218, *a8);
          v118 = a8;
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          goto LABEL_282;
        }

        v189 = *(a1 + 2168);
        v118 = a8;
        if (!v189)
        {
          goto LABEL_278;
        }

        if (v189 != 1)
        {
          goto LABEL_51;
        }

        if (!v216 || (v190 = strstr(a5, "latin"), v118 = a8, v190))
        {
LABEL_278:
          v191 = v118;
          v103 = oneword_ProcessNTokens(a1, v230, a2, a5, a6, a7, v218, *v118, a9, a10, a11, a12, v219, *(a1 + 2172), v189);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *v191, 2, 1, &v246, &v250 + 2);
          v118 = v191;
          v34 = v228;
          v89 = v229;
          v43 = __src;
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          goto LABEL_282;
        }
      }

      if (HIDWORD(v249) != 3 && v249 == 3 || v247 == *a4)
      {
        v192 = v216;
        if (v216 && (v193 = strstr(a5, "latin"), v192 = v216, v118 = a8, !v193) || v215 && *(a1 + 2172))
        {
          v103 = oneword_joinTokens(a1, a6, a7, v218, v118, v192);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          *(a1 + 2172) = 0;
          v118 = a8;
        }

        v43 = __src;
        v34 = v228;
      }
    }

LABEL_51:
    v119 = v118;
    v104 = (*(*(a1 + 56) + 168))(a6, a7, *v118, 2, 1, &v246, &v250 + 2);
    if ((v104 & 0x80000000) != 0)
    {
      goto LABEL_324;
    }

    v109 = v250;
    *v119 = v250;
    v225 = HIDWORD(v249);
    HIDWORD(v249) = v249;
    v105 = v119;
    if (!v109)
    {
      v89 = v229;
LABEL_318:
      if (v224)
      {
        *v105 = v224;
      }

      goto LABEL_314;
    }

    v89 = v229;
    if (v246 >= *a4)
    {
      goto LABEL_318;
    }
  }

  while (1)
  {
    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v250, &v250);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    if (!v250)
    {
      LODWORD(v249) = 3;
      goto LABEL_48;
    }

    v112 = (*(*(a1 + 56) + 168))(a6, a7);
    if ((v112 & 0x80000000) != 0)
    {
      break;
    }

    v112 = (*(*(a1 + 56) + 168))(a6, a7, v250, 1, 1, &v244 + 2, &v250 + 2);
    if ((v112 & 0x80000000) != 0)
    {
      break;
    }

    v112 = (*(*(a1 + 56) + 168))(a6, a7, v250, 2, 1, &v244, &v250 + 2);
    if ((v112 & 0x80000000) != 0)
    {
      break;
    }

    v43 = __src;
    v34 = v228;
    if ((v249 - 5) >= 3)
    {
      goto LABEL_48;
    }
  }

LABEL_322:
  v104 = v112;
LABEL_313:
  v43 = __src;
  v34 = v228;
LABEL_314:
  heap_Free(*(*a1 + 8), v230);
LABEL_315:
  heap_Free(*(*a1 + 8), v234);
LABEL_316:
  heap_Free(*(*a1 + 8), v25);
  heap_Free(*(*a1 + 8), v34);
  heap_Free(*(*a1 + 8), v43);
  heap_Free(*(*a1 + 8), v52);
  heap_Free(*(*a1 + 8), v61);
  heap_Free(*(*a1 + 8), v70);
  heap_Free(*(*a1 + 8), __dst);
  heap_Free(*(*a1 + 8), v89);
  v199 = *MEMORY[0x1E69E9840];
  return v104;
}

uint64_t oneword_GetMdeSettings(uint64_t a1)
{
  v24[33] = *MEMORY[0x1E69E9840];
  __c[0] = 0;
  v2 = (a1 + 282);
  *(a1 + 282) = 0x10000000;
  *(a1 + 286) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *&__c[3] = 0;
  strcpy(v24, "mdeminwrdlen_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
    goto LABEL_3;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeminwrdlen", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_3:
    v4 = **&__c[3];
    v5 = strchr(**&__c[3], __c[0]);
    if (v5)
    {
      *v5 = 0;
      v4 = **&__c[3];
    }

    *v2 = atoi(v4);
  }

  strcpy(v24, "mdemaxwrdlen_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
    goto LABEL_8;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxwrdlen", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_8:
    v6 = **&__c[3];
    v7 = strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
      v6 = **&__c[3];
    }

    *(a1 + 283) = atoi(v6);
  }

  strcpy(v24, "mdemaxnrmorph_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
    goto LABEL_13;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxnrmorph", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_13:
    v8 = **&__c[3];
    v9 = strchr(**&__c[3], __c[0]);
    if (v9)
    {
      *v9 = 0;
      v8 = **&__c[3];
    }

    *(a1 + 285) = atoi(v8);
  }

  strcpy(v24, "mdefirstletter_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
    goto LABEL_18;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdefirstletter", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_18:
    v10 = **&__c[3];
    v11 = strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
      v10 = **&__c[3];
    }

    *(a1 + 284) = strcmp(v10, "upper") == 0;
  }

  strcpy(v24, "mdetype_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
    goto LABEL_23;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdetype", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_23:
    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    if (!strcmp(v12, "stemafx"))
    {
      *(a1 + 286) = 1;
    }
  }

  strcpy(v24, "mdeemptyafx_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
    goto LABEL_43;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeemptyafx", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_43:
    v14 = **&__c[3];
    v15 = strchr(**&__c[3], __c[0]);
    if (v15)
    {
      *v15 = 0;
      v14 = **&__c[3];
    }

    *(a1 + 288) = strcmp(v14, "yes") == 0;
  }

  strcpy(v24, "mdenondctdps_");
  __strcat_chk();
  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  if (*&__c[1])
  {
LABEL_48:
    v16 = **&__c[3];
    v17 = strchr(**&__c[3], __c[0]);
    if (v17)
    {
      *v17 = 0;
      v16 = **&__c[3];
    }

    *(a1 + 292) = strcmp(v16, "yes") == 0;
    goto LABEL_51;
  }

  *&__c[1] = -1;
  v3 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdenondctdps", &__c[3], &__c[1], __c);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_64:
    v18 = v3;
    goto LABEL_65;
  }

  if (*&__c[1])
  {
    goto LABEL_48;
  }

LABEL_51:
  v24[0] = 0x5F73706465646DLL;
  __strcat_chk();
  *&__c[1] = -1;
  v18 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v18 & 0x80000000) == 0)
  {
    if (*&__c[1] || (*&__c[1] = -1, v18 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdedps", &__c[3], &__c[1], __c), (v18 & 0x80000000) == 0) && *&__c[1])
    {
      v19 = **&__c[3];
      v20 = strchr(**&__c[3], __c[0]);
      if (v20)
      {
        *v20 = 0;
        v19 = **&__c[3];
      }

      *(a1 + 296) = strcmp(v19, "yes") == 0;
    }
  }

LABEL_65:
  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t oneword_read_LD_W_INPUTSPACETAG(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  if (a4 != 6)
  {
    return 0;
  }

  v16 = v6;
  v17 = v7;
  v15 = 0;
  *a6 = 0;
  v13 = (*(*(a1 + 56) + 184))(a2, a3, a5, 19, &v15);
  result = 0;
  if ((v13 & 0x80000000) == 0 && v15 == 1)
  {
    return (*(*(a1 + 56) + 176))(a2, a3, a5, 19, a6, &v15);
  }

  return result;
}

uint64_t oneword_GetWord(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  while (1)
  {
    v4 = *(a2 + a1);
    v5 = v4 > 0x20 || ((1 << v4) & 0x100002601) == 0;
    if (!v5 || v4 == 95)
    {
      break;
    }

    ++a1;
    *(a3 + v3++) = v4;
    if (v3 == 127)
    {
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  *(a3 + v3) = 0;
  return result;
}

uint64_t oneword_GetMultiWordLen(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, _BYTE *a5)
{
  v14 = 0;
  v13 = 0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  v7 = (*(a1[10] + 120))(a1[8], a1[9], a2, 255, "femwg2p", a3, &v14, &v13);
  if ((v7 & 0x80000000) == 0)
  {
    *a5 = 0;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v9 = LH_atou(*(v14 + 8 * i));
        if (v9 <= 0x3F)
        {
          v10 = *a5;
          *a5 = v10 + 1;
          *(a4 + v10) = v9;
        }
      }

      v11 = *a5;
    }

    else
    {
      v11 = 0;
    }

    ssft_qsort(a4, v11, 1, compare_0);
  }

  return v7;
}

BOOL oneword_GetMultiWord(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + a1);
  while (v7)
  {
    *(a3 + v4) = v7;
    if (v4 == 255)
    {
      return 0;
    }

    LOWORD(a1) = a1 + 1;
    v8 = (a2 + a1);
    v7 = *v8;
    v9 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (!v9 || v7 == 95)
    {
      v10 = *(v8 - 1);
      v11 = v10 == 95 ? v5 : v5 + 1;
      v12 = v10 > 0x20;
      v13 = (1 << v10) & 0x100002600;
      if (v12 || v13 == 0)
      {
        v5 = v11;
      }
    }

    ++v4;
    ++v6;
    if (a4 <= v5)
    {
      v16 = a1;
      goto LABEL_24;
    }
  }

  v16 = a1;
  v6 = v4;
LABEL_24:
  *(a3 + v6) = 0;
  if (!*(a2 + v16))
  {
    v17 = *(a2 + v16 - 1);
    if ((v17 > 0x20 || ((1 << v17) & 0x100002600) == 0) && v17 != 95)
    {
      LOBYTE(v5) = v5 + 1;
    }
  }

  return a4 == v5;
}

uint64_t oneword_Lookup(_DWORD *a1, char *a2, void *a3, unsigned __int8 *a4, const char *a5, char *a6, const char *a7, unsigned __int16 a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, unsigned __int16 *a12, int a13, int a14, int a15)
{
  v174 = a8;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 4;
  v169 = 0;
  v168 = 0;
  v167 = 1;
  v166 = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "sysdctlookup", &v168) & 0x80000000) == 0 && *v168 == 110 && v168[1] == 111 && !v168[2])
  {
    return 0;
  }

  v164 = a13;
  if (a13)
  {
    if (a1[69])
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", v21, v22, v23, a4);
  if (a1[306])
  {
    strcpy(__s1, "g2p");
    v25 = a1 + 3 * *a4;
    __strcat_chk();
    v26 = (*(*(a1 + 10) + 232))(*(a1 + 8), *(a1 + 9), __s1, a4, &v173, &v172, &v171, &v166);
  }

  else
  {
    v26 = (*(*(a1 + 10) + 240))(*(a1 + 8), *(a1 + 9), "g2p", a4, &v173, &v172, &v171, *(a1 + 556), &v166);
  }

  v24 = v26;
  if ((v26 & 0x80000000) == 0)
  {
    v27 = "ADDONDCT";
    if (!v166)
    {
      v27 = "OTHER";
    }

    v153 = v27;
    if (v172)
    {
      v150 = a3;
      v28 = 0;
      v154 = 0;
      v29 = a2 + 10000;
      v163 = a10;
      v160 = a12;
      v149 = a2 + 5000;
      v30 = a15;
      v144 = a14;
      if (v166)
      {
        v31 = 9;
      }

      else
      {
        v31 = 6;
      }

      v148 = v31;
      v147 = a7;
      v151 = a5;
      v152 = a6;
      v155 = a11;
      v146 = a15;
      while (1)
      {
        if (v164 && a1[235] && v174 < *v160)
        {
          goto LABEL_173;
        }

        v32 = strncpy(v29, *(v173 + 8 * v28), 0x1387uLL);
        a2[14999] = 0;
        v33 = strchr(v32, v171);
        if (v33)
        {
          *v33 = 0;
          v157 = v33 + 1;
          v37 = strchr(v33 + 1, v171);
          v38 = v37;
          if (!v37 || (*v37 = 0, v38 = v37 + 1, (v39 = strchr(v37 + 1, v171)) == 0))
          {
            v159 = 0;
LABEL_32:
            v158 = 0;
LABEL_33:
            v156 = 0;
            v43 = 0;
LABEL_34:
            __s = 0;
            goto LABEL_36;
          }

          *v39 = 0;
          v159 = v39 + 1;
          v40 = strchr(v39 + 1, v171);
          if (!v40)
          {
            goto LABEL_32;
          }

          *v40 = 0;
          v158 = v40 + 1;
          v41 = strchr(v40 + 1, v171);
          if (!v41)
          {
            goto LABEL_33;
          }

          *v41 = 0;
          v156 = v41 + 1;
          v42 = strchr(v41 + 1, v171);
          v43 = v42;
          if (!v42)
          {
            goto LABEL_34;
          }

          *v42 = 0;
          v43 = v42 + 1;
          v44 = strchr(v42 + 1, v171);
          if (!v44)
          {
            goto LABEL_34;
          }

          *v44 = 0;
          __s = v44 + 1;
          v45 = strchr(v44 + 1, v171);
          if (v45)
          {
            *v45 = 0;
          }
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v156 = 0;
          v157 = 0;
          v43 = 0;
          __s = 0;
          v38 = 0;
        }

LABEL_36:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v34, v35, v36, v29);
        if (!strcmp(a6, "name"))
        {
          if (v38 && *v38)
          {
            if ((v49 = strstr(v38, a6)) == 0 || (v50 = v49, v51 = strlen(a6), v50 != v38) && *(v50 - 1) != 44 || v50[v51] && v50[v51] != 44)
            {
LABEL_81:
              v52 = *(*a1 + 32);
              v53 = "G2P Domain validation not OK";
              goto LABEL_159;
            }
          }
        }

        else if (v38 && *v38 && !strstr(v38, a6))
        {
          goto LABEL_81;
        }

        if (v30 && v43 && (*v43 != 48 || v43[1]))
        {
          v52 = *(*a1 + 32);
          v53 = "MDE validation not OK";
          goto LABEL_159;
        }

        if (!a1[301] || !__s)
        {
          if (!v164)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        }

        if (strchr(__s, 33))
        {
          __s[3] = 0;
          if (!v164)
          {
            goto LABEL_69;
          }

LABEL_152:
          v132 = strstr(a6, __s);
          if (!v132 || (v133 = v132, (v134 = strlen(__s)) != 0) && v133[v134])
          {
            v135 = strstr(*(a1 + 152), a6);
            if (LH_stricmp(__s, *(a1 + 151)) || !v135 || v135[strlen(a6)] != 124)
            {
              v52 = *(*a1 + 32);
              v142 = __s;
              v53 = "Token lookup: G2P Language %s validation not OK";
LABEL_159:
              log_OutText(v52, "FE_ONEWORD", 5, 0, v53, v46, v47, v48, v142);
LABEL_160:
              v29 = a2 + 10000;
              goto LABEL_161;
            }
          }

LABEL_59:
          if (a1[235])
          {
            if (!__s || !*__s || strlen(__s) >= 4)
            {
              v54 = *(a1 + 151);
            }

            __strcpy_chk();
            v29 = a2 + 10000;
            if (*(a1 + 272) && strncmp(__s1, a1 + 272, 2uLL) || strstr(a6, "latin") && !strcmp(__s1, *(a1 + 151)))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK", v55, v56, v57, __s);
              if (*(a1 + 272))
              {
                v90 = strncmp(__s1, a1 + 272, 2uLL);
                v91 = v154;
                if (v90)
                {
                  v91 = 1;
                }

                v154 = v91;
              }

              goto LABEL_161;
            }

            __strcpy_chk();
            v154 = 0;
          }

          goto LABEL_69;
        }

        v84 = strstr(a6, __s);
        v85 = v84;
        if (v144)
        {
          if (v164)
          {
            goto LABEL_152;
          }

          if (!v84 || (v86 = strlen(__s)) != 0 && v85[v86])
          {
            if (LH_stricmp(__s, *(a1 + 151)))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK", v87, v88, v89, __s);
              goto LABEL_160;
            }
          }
        }

        else
        {
          if (v164)
          {
            goto LABEL_152;
          }

          if (!v84 || (v136 = strlen(__s)) != 0 && v85[v136])
          {
            v137 = strstr(*(a1 + 152), a6);
            if (LH_stricmp(__s, *(a1 + 151)) || !v137 || v137[strlen(a6)] != 124)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "User lang lookup: G2P Language %s validation not OK", v138, v139, v140, __s);
              goto LABEL_160;
            }
          }
        }

LABEL_69:
        *v160 = v174 + strlen(a5);
        v58 = (*(*(a1 + 7) + 88))(v163, v155, a9, &a9);
        if ((v58 & 0x80000000) != 0)
        {
          return v58;
        }

        v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 0, 1, &v170, &v169);
        v59 = a2 + 10000;
        if ((v58 & 0x80000000) != 0)
        {
          return v58;
        }

        v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 1, 1, &v174, &v169);
        if ((v58 & 0x80000000) != 0)
        {
          return v58;
        }

        v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 2, 1, v160, &v169);
        if ((v58 & 0x80000000) != 0)
        {
          return v58;
        }

        if (a7)
        {
          v60 = strlen(a7);
          v59 = a2 + 10000;
          v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 19, (v60 + 1), a7, &v169);
          if ((v58 & 0x80000000) != 0)
          {
            return v58;
          }
        }

        v61 = strchr(v59, 18);
        v62 = v61;
        if (!v61)
        {
          v62 = &v59[strlen(v59)];
        }

        v63 = *(a1 + 112);
        v64 = (*v150 + v174 + v63);
        v65 = *v150 + *v160 + v63;
        v145 = a1[569];
        v66 = *(*a1 + 32);
        v175[0] = 0;
        v67 = oneword_CountPhoneticWords(v59, v62);
        log_OutText(v66, "FE_ONEWORD", 5, 0, "Number of orthographic words: %d", v68, v69, v70, 0);
        v71 = oneword_CountOrthographicWords(v64, v65, 0x23u, 0x23u);
        log_OutText(v66, "FE_ONEWORD", 5, 0, "Number of phonetic words:     %d", v72, v73, v74, v67);
        if (!v67)
        {
          v82 = v66;
          v83 = "No phonetic words found: returning";
LABEL_95:
          log_OutText(v82, "FE_ONEWORD", 5, 0, v83, v75, v76, v77, v143);
          goto LABEL_105;
        }

        if (!v71)
        {
          v82 = v66;
          v83 = "No orthographic words found: returning";
          goto LABEL_95;
        }

        if (v67 == 1)
        {
          v175[0] = v71 - 1;
          oneword_ReplaceCharactersInOrthography(v64, v65, 0x21u, 45, v175);
          v78 = v64;
          v79 = v65;
          v80 = 5;
          v81 = 45;
LABEL_104:
          oneword_ReplaceCharactersInOrthography(v78, v79, v80, v81, v175);
          goto LABEL_105;
        }

        if (utf8_BelongsToSet(0x24u, v64, 0, v65 - v64))
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v64, v65 - v64);
          if (PreviousUtf8Offset)
          {
            if (utf8_BelongsToSet(0x24u, v64, PreviousUtf8Offset, v65 - v64))
            {
              log_OutText(v66, "FE_ONEWORD", 5, 0, "Orthography starts and ends with underscore or hyphen: no replacement made", v93, v94, v95, v143);
              v59 = a2 + 10000;
              goto LABEL_105;
            }
          }
        }

        if (v145)
        {
          *__s1 = v65 - v64;
          oneword_ReplaceCharactersInOrthography(v64, v65, 5u, 95, __s1);
        }

        v59 = a2 + 10000;
        if (v71 < v67)
        {
          v175[0] = v67 - v71;
          v78 = v64;
          v79 = v65;
          v80 = 34;
          v81 = 95;
          goto LABEL_104;
        }

LABEL_105:
        v96 = oneword_CountOrthographicWords(v64, v65, 0x23u, 0x23u);
        log_OutText(v66, "FE_ONEWORD", 5, 0, "Number of orthographic words after adjustment: %d", v97, v98, v99, v96);
        log_OutText(v66, "FE_ONEWORD", 5, 0, "Number of phonetic words after adjustment:     %d", v100, v101, v102, v67);
        a6 = v152;
        if (v61)
        {
          *v61 = 0;
          v103 = v61 + 1;
          if (a1[548])
          {
            v104 = v103;
            v103 = a2 + 5000;
            v58 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v104, v149, 0x1388u);
            if ((v58 & 0x80000000) != 0)
            {
              return v58;
            }
          }

          v105 = strlen(v103);
          v59 = a2 + 10000;
          v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 11, (v105 + 1), v103, &v169);
          if ((v58 & 0x80000000) != 0)
          {
            return v58;
          }
        }

        if (a1[548])
        {
          v106 = v59;
          v59 = a2 + 5000;
          v58 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v106, v149, 0x1388u);
          if ((v58 & 0x80000000) != 0)
          {
            return v58;
          }
        }

        v107 = strlen(v59);
        v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 3, (v107 + 1), v59, &v169);
        if ((v58 & 0x80000000) != 0)
        {
          return v58;
        }

        if (v159)
        {
          if (*v159)
          {
            v108 = (strlen(v159) + 1);
            v109 = v163;
            v110 = v155;
            v111 = a9;
            v112 = v159;
          }

          else
          {
            v109 = v163;
            v110 = v155;
            v111 = a9;
            v108 = 2;
            v112 = "*";
          }

          v58 = (*(*(a1 + 7) + 160))(v109, v110, v111, 5, v108, v112, &v169);
          if ((v58 & 0x80000000) != 0)
          {
            return v58;
          }
        }

        if (v158)
        {
          if (*v158)
          {
            v113 = (strlen(v158) + 1);
            v114 = v163;
            v115 = v155;
            v116 = a9;
            v117 = v158;
          }

          else
          {
            v114 = v163;
            v115 = v155;
            v116 = a9;
            v113 = 2;
            v117 = "*";
          }

          v58 = (*(*(a1 + 7) + 160))(v114, v115, v116, 6, v113, v117, &v169);
          if ((v58 & 0x80000000) != 0)
          {
            return v58;
          }
        }

        if (v157)
        {
          v118 = strlen(v157);
          v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 4, (v118 + 1), v157, &v169);
          if ((v58 & 0x80000000) != 0)
          {
            return v58;
          }
        }

        if (v156)
        {
          v119 = atoi(v156);
        }

        else
        {
          v119 = 1;
        }

        v29 = a2 + 10000;
        v167 = v119;
        if (__s)
        {
          v120 = strstr(v152, __s);
          v121 = *__s;
          v122 = strlen(__s);
          v24 = (*(*(a1 + 7) + 160))(v163, v155, a9, 9, (v122 + 1), __s, &v169);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Language tag is %s", v123, v124, v125, __s);
          v126 = *(a1 + 152);
          if (v126)
          {
            v127 = strstr(v126, v152);
          }

          else
          {
            v127 = 0;
          }

          if (a1[301])
          {
            if (v120 && ((v128 = strlen(__s)) == 0 || !v120[v128]) || !LH_stricmp(__s, *(a1 + 151)) && v127 && v127[strlen(v152)] == 124)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Increasing priority to %d", v129, v130, v131, ++v167);
            }
          }

          v29 = a2 + 10000;
        }

        else
        {
          v24 = (*(*(a1 + 7) + 160))(v163, v155, a9, 9, 1, "", &v169);
          v121 = 0;
        }

        if ((v24 & 0x80000000) != 0)
        {
          return v24;
        }

        v58 = (*(*(a1 + 7) + 160))(v163, v155, a9, 7, 1, &v167, &v169);
        if ((v58 & 0x80000000) != 0)
        {
          return v58;
        }

        v24 = (*(*(a1 + 7) + 160))(v163, v155, a9, 21, v148, v153, &v169);
        if ((v24 & 0x80000000) != 0)
        {
          return v24;
        }

        if (v172 == 1)
        {
          v30 = v146;
          if (v121)
          {
            a1[233] = v121 == 101;
          }
        }

        else
        {
          v30 = v146;
        }

        a5 = v151;
        a7 = v147;
LABEL_161:
        if (++v28 >= v172)
        {
          goto LABEL_173;
        }
      }
    }

    v154 = 0;
LABEL_173:
    a1[69] = v154;
  }

  return v24;
}

uint64_t oneword_isInputBetweenPOIMrk(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2;
  for (i = (a1 + 12); ; i += 16)
  {
    v10 = *(i - 3);
    if (v10 == 55)
    {
      if (!strstr(*(i + 6), "POI"))
      {
        v7 = v7;
        goto LABEL_14;
      }

      v6 = *i;
LABEL_12:
      v7 = 1;
      goto LABEL_14;
    }

    if (v7)
    {
      if (v10 != 56 || !strstr(*(i + 6), "POI"))
      {
        goto LABEL_12;
      }

      if (v6 <= a3 && *i >= a4)
      {
        break;
      }
    }

    v7 = 0;
LABEL_14:
    if (!--v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t oneword_ProcessNTokens(uint64_t a1, uint64_t a2, const char **a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13, int a14, int a15)
{
  v313 = *MEMORY[0x1E69E9840];
  v308 = a7;
  v307 = 0;
  v299 = 1;
  v298 = 32;
  v297 = 0;
  v23 = heap_Calloc(*(*a1 + 8), 1, 2248);
  if (v23)
  {
    v28 = v23;
    v306 = 0;
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v301 = 0;
    __src = 0;
    v300 = 0;
    v296 = 0;
    v295 = 0;
    v310[0] = 0;
    strcpy(__s, "acronym_detection");
    v286 = strlen(__s);
    v289 = v28;
    if (*(a1 + 560) == 1)
    {
      v29 = strchr(a4, 95);
      if (v29)
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = a4;
      }

      v31 = *v30;
    }

    else
    {
      v30 = 0;
      v31 = 32;
    }

    memset(v311, 0, sizeof(v311));
    started = (*(*(a1 + 56) + 168))(a5, a6, a7, 1, 1, &v303 + 2, &v305 + 2);
    if ((started & 0x80000000) != 0)
    {
      goto LABEL_492;
    }

    HIWORD(v304) = HIWORD(v303);
    v34 = v308;
    if (v308)
    {
      do
      {
        v307 = v34;
        started = (*(*(a1 + 56) + 136))(a5, a6, v34, &v308);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }

        if (!v308)
        {
          break;
        }

        started = (*(*(a1 + 56) + 168))(a5, a6);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }

        v34 = v308;
      }

      while (HIWORD(v304) == HIWORD(v303) && v308 != 0);
    }

    v36 = *(a1 + 240);
    v308 = v307;
    *v36 = 0;
    **(a1 + 248) = 0;
    **(a1 + 256) = 0;
    **(a1 + 264) = 0;
    v284 = (a1 + 240);
    started = (*(*(a1 + 56) + 168))(a5, a6, a8, 2, 1, &v303, &v305 + 2);
    if ((started & 0x80000000) != 0)
    {
      goto LABEL_492;
    }

    v281 = v30;
    v37 = (v303 - HIWORD(v303));
    v38 = (4 * v37 + 200);
    v282 = (a1 + 192);
    if (v38 > *(a1 + 192))
    {
      v39 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (4 * v37 + 200));
      if (!v39)
      {
        goto LABEL_427;
      }

      *(a1 + 160) = v39;
      *(a1 + 192) = v38;
    }

    v280 = (a1 + 200);
    if (v38 > *(a1 + 200))
    {
      v44 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (4 * v37 + 200));
      if (!v44)
      {
        goto LABEL_427;
      }

      *(a1 + 168) = v44;
      *(a1 + 200) = v38;
    }

    v278 = (a1 + 208);
    if (v38 > *(a1 + 208))
    {
      v45 = heap_Realloc(*(*a1 + 8), *(a1 + 176), (4 * v37 + 200));
      if (!v45)
      {
        goto LABEL_427;
      }

      *(a1 + 176) = v45;
      *(a1 + 208) = v38;
    }

    v279 = (a1 + 160);
    **(a1 + 160) = 0;
    v307 = v308;
    v46 = HIWORD(v303);
    v47 = v303;
    __s1 = a4;
    v267 = v31;
    if (HIWORD(v303) >= v303)
    {
      v50 = 0;
      v49 = 0;
    }

    else
    {
      v48 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*a3)[*(a1 + 224) + HIWORD(v303)]);
      v46 = HIWORD(v303);
      v49 = 0;
      if (v48)
      {
        while (1)
        {
          v50 = utf8_determineUTF8CharLength((*a3)[*(a1 + 224) + (v49 + v46)]) + v49;
          v46 = HIWORD(v303);
          v49 = v50;
          v51 = HIWORD(v303) + v50;
          v47 = v303;
          if (v51 >= v303)
          {
            break;
          }

          v52 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*a3)[*(a1 + 224) + v51]);
          v46 = HIWORD(v303);
          if (!v52)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v50 = 0;
LABEL_36:
        v47 = v303;
      }
    }

    v53 = v46 + v50;
    HIWORD(v303) = v46 + v50;
    v54 = (v46 + v50);
    v55 = v47;
    if (v47 > v53)
    {
      while ((*a3)[*(a1 + 224) - 1 + v47] < -64)
      {
        v55 = --v47;
        if (v47 <= v54)
        {
          goto LABEL_42;
        }
      }

      v55 = v47;
    }

LABEL_42:
    v266 = (a1 + 256);
    if (v55 > v54)
    {
      v56 = v47;
      do
      {
        v57 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*a3)[v56 - 1 + *(a1 + 224)]);
        v53 = HIWORD(v303);
        if (!v57)
        {
          break;
        }

        LOWORD(v303) = --v56;
        v58 = v56;
        if (v56 > HIWORD(v303))
        {
          while ((*a3)[*(a1 + 224) - 1 + v56] < -64)
          {
            v58 = --v56;
            if (v56 <= HIWORD(v303))
            {
              goto LABEL_50;
            }
          }

          v58 = v56;
        }

LABEL_50:
        ;
      }

      while (v58 > HIWORD(v303));
    }

    v268 = v49;
    v285 = a8;
    v59 = 0;
    v275 = 0;
    v273 = v37 + 100;
    v272 = (a1 + 168);
    v271 = (a1 + 176);
    v60 = 1;
    v61 = 1;
LABEL_52:
    v62 = v307;
    if (v307 == v285)
    {
      goto LABEL_124;
    }

    v63 = v61 == 0;
    while (1)
    {
      started = (*(*(a1 + 56) + 168))(a5, a6, v62, 0, 1, &v306, &v305 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      if (!v306)
      {
        if (v63)
        {
          started = (*(*(a1 + 56) + 168))(a5, a6, v307, 1, 1, &v304 + 2, &v305 + 2);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          DepesLayersForWordAndPOS = 2310021130;
          v66 = HIWORD(v304) - v53;
          if (v66 >= 1 && !dynamic_strncat(v279, &(*a3)[v53 + *(a1 + 224)], v66, v282, *(*a1 + 8)) || *(a1 + 292) && !dynamic_strcat(v279, "+", v282, *(*a1 + 8)))
          {
            goto LABEL_493;
          }

          v61 = 0;
          v53 = HIWORD(v304);
        }

        else
        {
          v61 = 0;
        }

LABEL_119:
        DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, v307, &v307);
        if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
        {
          goto LABEL_493;
        }

        goto LABEL_52;
      }

      if (*(a1 + 276))
      {
        goto LABEL_118;
      }

      if (v306 != 8 && v306 != 4)
      {
        goto LABEL_118;
      }

      started = (*(*(a1 + 56) + 168))(a5, a6, v307, 1, 1, &v304 + 2, &v305 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      started = (*(*(a1 + 56) + 168))(a5, a6, v307, 2, 1, &v304, &v305 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      started = (*(*(a1 + 56) + 168))(a5, a6, v307, 7, 1, &v299, &v305 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      if (a15 && !*(a1 + 2068))
      {
        v299 = ~v299;
      }

      if (v304 != v53)
      {
        break;
      }

      if (!v59 || *(a1 + 2192))
      {
        goto LABEL_118;
      }

      if (v299 >= v60)
      {
        if (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068)))
        {
          started = (*(*(a1 + 56) + 192))(a5, a6, v311[v59 - 1]);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }
        }

        v72 = v311[v59 - 1];
        v73 = v307;
        if (v308 == v72)
        {
          v308 = v307;
        }

        if (*(a1 + 280) == v72)
        {
          *(a1 + 280) = v307;
        }

        v311[v59 - 1] = v73;
        if (a15 && !*(a1 + 2068))
        {
          v60 = v299;
        }

LABEL_118:
        v61 = 1;
        goto LABEL_119;
      }

      v65 = v307;
      started = (*(*(a1 + 56) + 120))(a5, a6, v307, &v307);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      if (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068)))
      {
        started = (*(*(a1 + 56) + 192))(a5, a6, v65);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }
      }

      if (a15 && !*(a1 + 2068))
      {
        v299 = v60;
      }

      v63 = 0;
      v62 = v307;
      if (v307 == v285)
      {
        v61 = 1;
LABEL_124:
        v77 = (*(*(a1 + 56) + 168))(a5, a6, v285, 0, 1, &v306, &v305 + 2);
        v78 = v281;
        if ((v77 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        if (v306 | v61)
        {
          goto LABEL_126;
        }

        v77 = (*(*(a1 + 56) + 168))(a5, a6, v307, 1, 1, &v304 + 2, &v305 + 2);
        if ((v77 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        DepesLayersForWordAndPOS = 2310021130;
        v89 = HIWORD(v304) - v53;
        if (v89 >= 1 && !dynamic_strncat(v279, &(*a3)[v53 + *(a1 + 224)], v89, v282, *(*a1 + 8)) || *(a1 + 292) && !dynamic_strcat(v279, "+", v282, *(*a1 + 8)))
        {
          goto LABEL_493;
        }

        v53 = HIWORD(v304);
        v78 = v281;
LABEL_126:
        v79 = v303 - v53;
        if (v79 >= 1 && !dynamic_strncat(v279, &(*a3)[v53 + *(a1 + 224)], v79, v282, *(*a1 + 8)))
        {
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_493;
        }

        if (!a13)
        {
          v90 = *v279;
          v91 = strlen(*v279);
          if (v91 - 128 >= 0xFFFFFFFFFFFFFF7FLL)
          {
            DepesLayersForWordAndPOS = v77;
            v92 = *(a1 + 232);
          }

          else
          {
            v92 = heap_Realloc(*(*a1 + 8), *(a1 + 232), (v91 + 1));
            if (!v92)
            {
              goto LABEL_427;
            }

            DepesLayersForWordAndPOS = v77;
            *(a1 + 232) = v92;
            v90 = *(a1 + 160);
          }

          strcpy(v92, v90);
          v93 = 0;
          v99 = strlen(*v279) + 1;
          goto LABEL_154;
        }

        v251 = *(a1 + 160);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v74, v75, v76, __s);
        v80 = strlen(*(a1 + 160));
        started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v80);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }

        if (strcmp(__s1, "normal") && strlen(__s1) + v286 + 2 <= 0x7F)
        {
          __strcat_chk();
          __strcat_chk();
        }

        if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
        {
          __s[v286] = 0;
          started = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }
        }

        v77 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v300);
        if ((v77 & 0x80000000) != 0)
        {
LABEL_145:
          DepesLayersForWordAndPOS = v77;
          goto LABEL_493;
        }

        __src[v300] = 0;
        v81 = strlen(__src);
        v82 = strlen(*(a1 + 160));
        v83 = count_inserted_oneword_bytes(__src);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v84, v85, v86, __s);
        if (v300 > 0x7FuLL)
        {
          v87 = heap_Realloc(*(*a1 + 8), *(a1 + 232), v300 + 1);
          if (v87)
          {
            v88 = v81;
            DepesLayersForWordAndPOS = v77;
            *(a1 + 232) = v87;
            goto LABEL_153;
          }

LABEL_427:
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_428;
        }

        v88 = v81;
        DepesLayersForWordAndPOS = v77;
        v87 = *(a1 + 232);
LABEL_153:
        v93 = (v88 - (v83 + v82)) & ~((v88 - (v83 + v82)) >> 31);
        strcpy(v87, __src);
        v99 = v300;
LABEL_154:
        v100 = __s1;
        if (v99)
        {
          v101 = 0;
          v258 = 0;
          v259 = v99 - 2;
          v256 = 0;
          v257 = -v99;
          v262 = 0;
          v263 = 0;
          v274 = v99;
          while (1)
          {
            v269 = v93;
            v102 = *(a1 + 232);
            v276 = v101;
            v103 = (v102 + v101);
            v104 = *v103;
            v287 = v101;
            if (v104 != 226 || *(v103 + 1) != 134 || *(v103 + 2) != 149)
            {
              break;
            }

            if (!strcmp(__s1, "prompt") || !strcmp(__s1, "internal-nuance-system-norm"))
            {
              v109 = 1;
              goto LABEL_169;
            }

            v105 = v101 + 3;
            v106 = v101 + 3;
            if ((v101 + 3) < v274)
            {
              v107 = -v105;
              v108 = (v102 + v105);
              while (*v108 != 226 || v108[1] != 134 || v108[2] != 149)
              {
                --v107;
                ++v108;
                if (v257 == v107)
                {
                  v106 = v274;
                  goto LABEL_363;
                }
              }

              v106 = -v107;
            }

LABEL_363:
            v288 = v106;
            v185 = v106;
            v265 = *(v102 + v106);
            *(v102 + v106) = 0;
            v186 = *(a1 + 232) + v101;
            v187 = strlen((v186 + 3));
            started = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), __s1, v186 + 3, (v187 + 1));
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            strcpy(*(a1 + 160), (*(a1 + 232) + v101 + 3));
            strcpy(__s, "spell_acronym");
            v188 = strlen(__s);
            v255 = *(a1 + 160);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v189, v190, v191, __s);
            v192 = strlen(*(a1 + 160));
            started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v192);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            if (strcmp(__s1, "normal") && strlen(__s1) + v188 + 2 <= 0x7F)
            {
              __strcat_chk();
              __strcat_chk();
            }

            if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
            {
              __s[v188] = 0;
              started = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }
            }

            started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v300);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            __src[v300] = 0;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v193, v194, v195, __s);
            v196 = strlen(__src);
            v197 = strlen(*(a1 + 160));
            *(*(a1 + 232) + v185) = v265;
            v198 = (v269 + v196 - v197);
            v199 = *a3;
            v277 = v198;
            if (v198 <= 0)
            {
              v201 = v198 + 1;
            }

            else
            {
              v200 = strlen(v199);
              v201 = v198 + 1;
              v202 = heap_Realloc(*(*a1 + 8), v199, (v201 + v200));
              if (!v202)
              {
                goto LABEL_427;
              }

              v199 = v202;
              *a3 = v202;
            }

            v203 = *(a1 + 224);
            v204 = (HIWORD(v303) + *(a1 + 224) + strlen(__src));
            if (v204 > (v201 + strlen(v199)))
            {
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0, v205, v206, v207, v208, v250);
              DepesLayersForWordAndPOS = 2310021127;
              goto LABEL_493;
            }

            v209 = *(a1 + 224);
            v210 = HIWORD(v303) - v269 + strlen(*v279);
            LOWORD(v303) = v210;
            v211 = v285;
            if (v277 < 1)
            {
              if (v277 < 0)
              {
                v216 = v210 + v209;
                v217 = (v210 + v209);
                if (v217 <= strlen(v199))
                {
                  do
                  {
                    v199[v217 + v277] = v199[v216++];
                    v217 = v216;
                    v199 = *a3;
                  }

                  while (v216 <= strlen(*a3));
                  LOWORD(v209) = *(a1 + 224);
                }

                v211 = v285;
              }

              v214 = a10;
            }

            else
            {
              v212 = strlen(v199);
              v213 = v203 + v210;
              v214 = a10;
              if (v213 <= v212)
              {
                v215 = v212;
                do
                {
                  (*a3)[v215 + v277] = (*a3)[v212--];
                  v215 = v212;
                }

                while (*(a1 + 224) + v303 <= v212);
                LOWORD(v209) = *(a1 + 224);
                v199 = *a3;
              }
            }

            v218 = strlen(__src);
            memcpy(&v199[HIWORD(v303) + v209], __src, v218);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Normalizing to: %s", v219, v220, v221, *a3);
            HIWORD(v303) += strlen(*(a1 + 160));
            v222 = *v214;
            if (v222 < *a11)
            {
              v223 = v303;
              v224 = (a9 + 12 + 32 * v222);
              do
              {
                if (v223 <= (*v224 - a12))
                {
                  break;
                }

                *v224 += *(a1 + 224);
                v224 += 8;
                *v214 = ++v222;
              }

              while (v222 < *a11);
            }

            LOWORD(v294[0]) = 0;
            LOWORD(v293) = 0;
            LOWORD(v292) = 0;
            LOWORD(v291) = 0;
            if (*(a1 + 2272) == 1)
            {
              started = hlp_RemoveMNCRecords(a1, a5, a6, a3, v308, v211, v277);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }
            }

            started = (*(*(a1 + 56) + 104))(a5, a6, 1, 0, &v291);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            started = (*(*(a1 + 56) + 104))(a5, a6, 2, v291, &v292);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            while (v292 != *(a1 + 280))
            {
              started = (*(*(a1 + 56) + 168))(a5, a6);
              if ((started & 0x80000000) == 0)
              {
                if (v293 - *(a1 + 224) >= v303)
                {
                  LOWORD(v293) = v293 + v277;
                }

                started = (*(*(a1 + 56) + 160))(a5, a6, v292, 2, 1, &v293, &v305);
                if ((started & 0x80000000) == 0)
                {
                  started = (*(*(a1 + 56) + 120))(a5, a6, v292, &v292);
                  if ((started & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_492;
            }

            if (v292)
            {
LABEL_403:
              started = (*(*(a1 + 56) + 168))(a5, a6);
              if ((started & 0x80000000) == 0)
              {
                goto LABEL_404;
              }

              goto LABEL_492;
            }

LABEL_404:
            while (LOWORD(v294[0]) < v303 && *(a1 + 280))
            {
              started = (*(*(a1 + 56) + 168))(a5, a6);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              if ((v306 & 0xFFFFFFFC) == 4 || (v306 - 9) <= 1)
              {
                started = (*(*(a1 + 56) + 168))(a5, a6, *(a1 + 280), 2, 1, &v293, &v305 + 2);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                v229 = *(a1 + 224);
                LOWORD(v294[0]) += v229;
                v230 = v277;
                if (v293 < v303)
                {
                  v230 = 0;
                }

                LOWORD(v293) = v293 + v229 + v230;
                started = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 1, 1, v294, &v305);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                started = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 2, 1, &v293, &v305);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }
              }

              started = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              if (*(a1 + 280))
              {
                started = (*(*(a1 + 56) + 168))(a5, a6);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                if (LOWORD(v294[0]) >= v303)
                {
                  while (*(a1 + 280))
                  {
                    started = (*(*(a1 + 56) + 168))(a5, a6);
                    if ((started & 0x80000000) != 0)
                    {
                      goto LABEL_492;
                    }

                    if (v306 != 17)
                    {
                      break;
                    }

                    DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
                    if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                    {
                      goto LABEL_493;
                    }
                  }

                  goto LABEL_403;
                }
              }
            }

            *(a1 + 224) += v277;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD SPELLACRONYM %s", v225, v226, v227, *(a1 + 232));
            DepesLayersForWordAndPOS = oneword_TranscribeAcronym(a1, __s1, __src, &v298, v310);
            if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
            {
              goto LABEL_493;
            }

            WORD2(v256) += v277;
            LODWORD(v256) = 1;
            v100 = __s1;
            v78 = v281;
            v113 = v288;
            v93 = v269;
LABEL_341:
            v101 = v113 + utf8_determineUTF8CharLength(*(*(a1 + 232) + v113));
            if (v101 >= v274)
            {
              v244 = v258 == 0;
              v245 = WORD2(v256);
              v246 = v256 != 0;
              v247 = v263;
              goto LABEL_430;
            }
          }

          v109 = 0;
LABEL_169:
          v110 = *(a1 + 2192);
          if (v110 && *(a1 + 2248))
          {
LABEL_178:
            if (v104 == 194 && *(v103 + 1) == 167)
            {
              v111 = 2;
LABEL_221:
              v113 = v287 + 1;
              if (v274 <= (v287 + 1))
              {
                v127 = (v287 + 1);
              }

              else
              {
                v127 = v274;
              }

              if ((v287 + 1) < v274)
              {
                do
                {
                  v128 = v113;
                  v129 = (v102 + v113);
                  v130 = *v129;
                  if (v130 == 226)
                  {
                    if (v129[1] == 134 && v129[2] == 149)
                    {
                      goto LABEL_233;
                    }
                  }

                  else if (v130 == 194 && v129[1] == 167)
                  {
                    goto LABEL_233;
                  }

                  ++v113;
                }

                while (v113 < v274);
              }

              v128 = v127;
              v113 = v127;
LABEL_233:
              *(v102 + v128) = 0;
              strncpy(__dst, (*(a1 + 232) + v276 + v111), 0x7FuLL);
              __dst[128] = 0;
              started = (*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), "normal", __dst, 128);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), v289);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_WordAnalysis(*(a1 + 48));
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_SkipToFirstOptimalReading(*(a1 + 48), v289);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_GetReading(*(a1 + 48), v289, 0, &v297, (a2 + 15000), 5000, (a2 + 5000), 5000, &v296);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_SubstAllSubstrOcc((a2 + 5000), "~", "¡", (a2 + 10000), 5000);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              __strcpy_chk();
              if (v297)
              {
                *(a2 + 15000) = 0;
                *(a2 + 20000) = 42;
                v298 = 32;
                started = oneword_AppendPhon(a1, (a2 + 5000), (a2 + 15000), a2 + 20000, 32, 1);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }
              }

              started = mosynt_FinishWordAnalysis(*(a1 + 48), v289);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              DepesLayersForWordAndPOS = mosynt_ResetMosyntWS(*(a1 + 48), a2);
              v78 = v281;
              v100 = __s1;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_493;
              }

              v93 = 0;
              HIWORD(v303) += strlen(*v279);
              goto LABEL_341;
            }

            if (v109 && (!strcmp(__s1, "prompt") || !strcmp(__s1, "internal-nuance-system-norm")))
            {
              v111 = 3;
              goto LABEL_221;
            }

            goto LABEL_184;
          }

          if ((v104 != 194 || *(v103 + 1) != 167) && (!v109 || strcmp(__s1, "prompt") && strcmp(__s1, "internal-nuance-system-norm")))
          {
            if (v110 && *(a1 + 2248))
            {
              goto LABEL_178;
            }

LABEL_184:
            if (v104 == 226 && *(v103 + 1) == 151 && *(v103 + 2) == 132)
            {
              v293 = 0;
              *v294 = 0;
              v291 = 0;
              v292 = 0;
              v290 = 4;
              v112 = v287 + 3;
              v113 = v287 + 3;
              v78 = v281;
              if ((v287 + 3) < v274)
              {
                v114 = HIWORD(v303);
                v115 = -v112;
                v116 = (v102 + v112);
                while (*v116 != 226 || v116[1] != 151 || v116[2] != 132)
                {
                  HIWORD(v303) = ++v114;
                  --v115;
                  ++v116;
                  if (v257 == v115)
                  {
                    v113 = v274;
                    goto LABEL_345;
                  }
                }

                v113 = -v115;
              }

LABEL_345:
              v179 = v311[v263];
              started = (*(*(a1 + 56) + 176))(a5, a6, v179, 3, v294, &v305 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = (*(*(a1 + 56) + 176))(a5, a6, v179, 5, &v293, &v305 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = (*(*(a1 + 56) + 176))(a5, a6, v179, 6, &v292, &v305 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = (*(*(a1 + 56) + 168))(a5, a6, v179, 0, 1, &v290, &v305 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              if ((v263 & 0x80) != 0)
              {
                DepesLayersForWordAndPOS = 2310021632;
                goto LABEL_493;
              }

              DepesLayersForWordAndPOS = (*(*(a1 + 56) + 176))(a5, a6, v179, 9, &v291, &v305 + 2);
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_493;
              }

              strncpy(v310, v291, 0x14uLL);
              if (v310[0])
              {
                v180 = v310[0];
              }

              else
              {
                v180 = 32;
              }

              v298 = v180;
              v100 = __s1;
              if (v290 == 4)
              {
                if (**v294 != 95 || *(*v294 + 1))
                {
                  v182 = v292;
                  v181 = v293;
                  v183 = a1;
                  v184 = 1;
                  goto LABEL_359;
                }
              }

              else
              {
                v182 = v292;
                v181 = v293;
                v183 = a1;
                v184 = 0;
LABEL_359:
                started = oneword_AppendPhon(v183, *v294, v181, v182, v180, v184);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                DepesLayersForWordAndPOS = 0;
              }

              v93 = 0;
              ++v263;
              goto LABEL_341;
            }

            utf8_ToLower(v103, 0, v294);
            started = oneword_AppendPhon(a1, v294, "", "", 32, 0);
            v78 = v281;
            v113 = v287;
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            v93 = 0;
            DepesLayersForWordAndPOS = 0;
            HIWORD(v303) += utf8_determineUTF8CharLength(*(*(a1 + 232) + v276));
LABEL_340:
            v100 = __s1;
            goto LABEL_341;
          }

          v293 = 0;
          *v294 = 0;
          v113 = v287;
          if (*v103 == 194)
          {
            v117 = 2;
            if (*(v103 + 1) != 167)
            {
              v117 = 3;
            }
          }

          else
          {
            v117 = 3;
          }

          v118 = v287 + 1;
          if (v274 <= (v287 + 1))
          {
            v119 = (v287 + 1);
          }

          else
          {
            v119 = v274;
          }

          if ((v287 + 1) < v274)
          {
            do
            {
              v120 = v113;
              v113 = v118;
              v121 = v118;
              v122 = (v102 + v118);
              v123 = *v122;
              if (v123 == 226)
              {
                if (v122[1] == 134 && v122[2] == 149)
                {
                  goto LABEL_213;
                }
              }

              else if (v123 == 194 && v122[1] == 167)
              {
                goto LABEL_213;
              }

              v118 = v113 + 1;
            }

            while ((v113 + 1) < v274);
          }

          v120 = v119 - 1;
          LOBYTE(v123) = *(v102 + v119);
          v121 = v119;
          v113 = v119;
LABEL_213:
          *(v102 + v121) = 0;
          v261 = v121;
          v260 = v123;
          v264 = v120;
          if (*(a1 + 2004))
          {
            v124 = *a11;
            if (v124 >= 2)
            {
              v125 = v124 - 1;
              v126 = (a9 + 56);
              while (*(v126 - 6) != 58 || *(v126 - 3) + v268 - *(a9 + 12) != HIWORD(v303))
              {
                v126 += 4;
                if (!--v125)
                {
                  goto LABEL_247;
                }
              }

              v262 = *v126;
            }

LABEL_247:
            v132 = v276 + v117;
            DepesLayersForWordAndPOS = getDepesLayersForWordAndPOS(a1, __s1, (*(a1 + 232) + v276 + v117), v262);
            v131 = (*(a1 + 232) + v132);
          }

          else
          {
            DepesLayersForWordAndPOS = mde_stemafx_Main(a1, __s1, (*(a1 + 232) + v276 + v117), v94, v95, v96, v97, v98);
            v131 = *(a1 + 160);
          }

          HIWORD(v303) += strlen(v131);
          if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
          {
            goto LABEL_493;
          }

          strcpy(__s, "one_word");
          v270 = strlen(__s);
          v252 = *(a1 + 160);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v133, v134, v135, __s);
          v136 = strlen(*(a1 + 160));
          started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v136);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          v253 = *(a1 + 168);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v137, v138, v139, __s);
          v140 = strlen(*(a1 + 168));
          started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 2, *(a1 + 168), v140);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          v254 = *(a1 + 176);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v141, v142, v143, __s);
          v144 = strlen(*(a1 + 176));
          started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 3, *(a1 + 176), v144);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          v145 = __s1;
          if (strcmp(__s1, "normal") && (ssftmap_FindReadOnly(*(a1 + 568), __s1, &v293) & 0x80000000) == 0)
          {
            if (!v287 && v259 == v113)
            {
              started = (*(*(a1 + 56) + 88))(a5, a6, v308, &v307);
              v78 = v281;
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = dt_Main(a1, v307, a5, a6, *(v293 + 16), __s1);
              DepesLayersForWordAndPOS = (started & 0x1FFF) == 0x10A ? 0 : started;
              v146 = v267;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              v258 = 1;
LABEL_267:
              v148 = (*(a1 + 232) + v276);
              if (*v148 == 194 && v148[1] == 167)
              {
                oneword_ReplaceUnderscoreWithDot(*v284);
                DepesLayersForWordAndPOS = 0;
              }

              if (*(a1 + 560))
              {
                if (v78)
                {
                  v298 = v146;
                  v149 = v78;
                  goto LABEL_294;
                }
              }

              else
              {
                v149 = __s1;
                v298 = *__s1;
LABEL_294:
                strncpy(v310, v149, 0x14uLL);
              }

LABEL_301:
              v113 = v264 + 2;
LABEL_339:
              v93 = 0;
              goto LABEL_340;
            }

            v147 = dt_Main(a1, 0, a5, a6, *(v293 + 16), __s1);
            if ((v147 & 0x1FFF) == 0x10A)
            {
              DepesLayersForWordAndPOS = 0;
LABEL_266:
              v146 = v267;
              v78 = v281;
              goto LABEL_267;
            }

            v145 = __s1;
            if ((v147 & 0x80000000) == 0)
            {
              DepesLayersForWordAndPOS = v147;
              goto LABEL_266;
            }
          }

          if (strcmp(v145, "normal"))
          {
            if (strlen(v145) + v270 + 2 <= 0x7F)
            {
              __strcat_chk();
              __strcat_chk();
              if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) == 0)
              {
                if (*(a1 + 560))
                {
                  if (v281)
                  {
                    v298 = v267;
                    strncpy(v310, v281, 0x14uLL);
                  }
                }

                else
                {
                  v298 = *__s1;
                  strncpy(v310, __s1, 0x14uLL);
                }

                goto LABEL_309;
              }
            }
          }

          LODWORD(v292) = 0;
          if (*(a1 + 928) && strlen(__s1) >= 2 && !strchr(__s1, 95))
          {
            started = oneword_Lid(a1, &v292);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            if (v292)
            {
              __s[v270] = 0;
LABEL_307:
              __strcat_chk();
              v298 = 101;
              strcpy(v310, "e");
LABEL_308:
              started = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

LABEL_309:
              started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v300);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              __src[v300] = 0;
              started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v301, &v300);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              *(v301 + v300) = 0;
              started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 4, v294, &v300);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              *(*v294 + v300) = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v153, v154, v155, __s);
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O3: %s", v156, v157, v158, __s);
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O5: %s", v159, v160, v161, __s);
              v162 = __src;
              if (strlen(__src))
              {
                v166 = 0;
                do
                {
                  v167 = &v162[v166];
                  v168 = *v167;
                  if (v168 == 194)
                  {
                    if (v167[1] == 161)
                    {
                      v170 = strlen(v167 + 2);
                      memmove(v167 + 1, v167 + 2, v170 + 1);
                      __src[v166] = 126;
                    }
                  }

                  else if (v168 == 126)
                  {
                    v169 = strlen(v167 + 1);
                    memmove(v167, v167 + 1, (v169 + 1));
                    --v166;
                  }

                  ++v166;
                  v162 = __src;
                }

                while (strlen(__src) > v166);
              }

              v171 = 0;
              *(*(a1 + 232) + v261) = v260;
              v172 = v301;
              while (1)
              {
                v173 = v171;
                v174 = *(v301 + v171);
                if (v174 != 32 && v174 != 126)
                {
                  break;
                }

                ++v171;
              }

              if (*(v301 + v171))
              {
                while (v174 != 32 && v174 != 126)
                {
                  LOBYTE(v174) = *(v301 + ++v171);
                }

                *(v301 + v171) = 0;
                v172 = v301;
              }

              v175 = 0;
              v176 = *v294;
              while (1)
              {
                v177 = v175;
                v178 = *(*v294 + v175);
                if (v178 != 32 && v178 != 126)
                {
                  break;
                }

                ++v175;
              }

              if (*(*v294 + v175))
              {
                while (v178 != 32 && v178 != 126)
                {
                  LOBYTE(v178) = *(*v294 + ++v175);
                }

                *(*v294 + v175) = 0;
                v176 = *v294;
              }

              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD ONEWORDGRAMMAR %s", v163, v164, v165, *(a1 + 232));
              started = oneword_AppendPhon(a1, __src, (v172 + v173), &v176[v177], v298, 1);
              DepesLayersForWordAndPOS = 0;
              v78 = v281;
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              goto LABEL_339;
            }
          }

          if ((ssftmap_FindReadOnly(*(a1 + 568), "normal", &v293) & 0x80000000) == 0)
          {
            if (!v287 && v259 == v113)
            {
              started = (*(*(a1 + 56) + 88))(a5, a6, v308, &v307);
              v78 = v281;
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = dt_Main(a1, v307, a5, a6, *(v293 + 16), __s1);
              DepesLayersForWordAndPOS = (started & 0x1FFF) == 0x10A ? 0 : started;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              v258 = 1;
              goto LABEL_298;
            }

            v150 = dt_Main(a1, 0, a5, a6, *(v293 + 16), __s1);
            if ((v150 & 0x1FFF) == 0x10A)
            {
              DepesLayersForWordAndPOS = 0;
LABEL_297:
              v78 = v281;
LABEL_298:
              v151 = (*(a1 + 232) + v276);
              if (*v151 == 194 && v151[1] == 167)
              {
                oneword_ReplaceUnderscoreWithDot(*v284);
                DepesLayersForWordAndPOS = 0;
              }

              goto LABEL_301;
            }

            if ((v150 & 0x80000000) == 0)
            {
              DepesLayersForWordAndPOS = v150;
              goto LABEL_297;
            }
          }

          v152 = v292;
          __s[v270] = 0;
          if (v152)
          {
            goto LABEL_307;
          }

          goto LABEL_308;
        }

        v245 = 0;
        v247 = 0;
        v246 = 0;
        v244 = 1;
LABEL_430:
        if (v298 == 32)
        {
          v231 = 0;
        }

        else
        {
          v231 = v298;
        }

        *(a1 + 272) = 0;
        *(a1 + 276) = 0;
        if (*(a1 + 2172) == 1 && (*(a1 + 2068) == 1 || !v247))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s", v96, v231, v98, "skipping crosstoken grammar");
          goto LABEL_493;
        }

        if (v244)
        {
          started = oneword_crosstoken(*a1, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), v100, v231, v267, v78, v310, *(a1 + 2176), v279, v272, v271, (a1 + 184), v282, v280, v278, (a1 + 216), v284, (a1 + 248), v266, (a1 + 264));
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          started = (*(*(a1 + 56) + 88))(a5, a6, v308, &v307);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }
        }

        else
        {
          *(*(a1 + 248) + 1) = 0;
          *(*v266 + 1) = 0;
        }

        started = (*(*(a1 + 56) + 168))(a5, a6, v308, 0, 1, &v306, &v305 + 2);
        if ((started & 0x80000000) == 0)
        {
          started = (*(*(a1 + 56) + 168))(a5, a6, v308, 1, 1, &v304 + 2, &v305 + 2);
          if ((started & 0x80000000) == 0)
          {
            if (v306 != 4 && v246)
            {
              HIWORD(v304) = HIWORD(v304) - v245 + *(a1 + 224);
            }

            started = (*(*(a1 + 56) + 160))(a5, a6, v307, 1, 1, &v304 + 2, &v305);
            if ((started & 0x80000000) == 0)
            {
              v306 = 9;
              started = (*(*(a1 + 56) + 160))(a5, a6, v307, 0, 1, &v306, &v305);
              if ((started & 0x80000000) == 0)
              {
                started = (*(*(a1 + 56) + 168))(a5, a6, v285, 2, 1, &v304, &v305 + 2);
                if ((started & 0x80000000) == 0)
                {
                  v233 = v304;
                  if (v246)
                  {
                    v233 = v304 - v245 + *(a1 + 224);
                  }

                  LOWORD(v304) = v233 + v245;
                  started = (*(*(a1 + 56) + 160))(a5, a6, v307, 2, 1, &v304, &v305);
                  if ((started & 0x80000000) == 0)
                  {
                    v234 = strlen(*(a1 + 240));
                    started = (*(*(a1 + 56) + 160))(a5, a6, v307, 3, (v234 + 1), *(a1 + 240), &v305);
                    if ((started & 0x80000000) == 0)
                    {
                      v235 = strlen(*(a1 + 248));
                      started = (*(*(a1 + 56) + 160))(a5, a6, v307, 5, (v235 + 1), *(a1 + 248), &v305);
                      if ((started & 0x80000000) == 0)
                      {
                        v236 = strlen(*(a1 + 256));
                        started = (*(*(a1 + 56) + 160))(a5, a6, v307, 6, (v236 + 1), *(a1 + 256), &v305);
                        if ((started & 0x80000000) == 0)
                        {
                          if (a15 && !*(a1 + 2068) && v299 >= 2u)
                          {
                            v299 = ~v299;
                          }

                          started = (*(*(a1 + 56) + 160))(a5, a6, v307, 7, 1, &v299, &v305);
                          if ((started & 0x80000000) == 0)
                          {
                            if (*(a1 + 1204))
                            {
                              if (*v310 == 1836216174 && *&v310[3] == 7102829)
                              {
                                v238 = *(a1 + 1208);
                                __strcpy_chk();
                                for (i = 0; i != 3; ++i)
                                {
                                  v310[i] = ssft_tolower(v310[i]);
                                }
                              }
                            }

                            v240 = strlen(v310);
                            DepesLayersForWordAndPOS = (*(*(a1 + 56) + 160))(a5, a6, v307, 9, (v240 + 1), v310, &v305);
                            if ((DepesLayersForWordAndPOS & 0x80000000) == 0)
                            {
                              if (v247)
                              {
                                v241 = v311;
                                while (1)
                                {
                                  v243 = *v241++;
                                  v242 = v243;
                                  if (*(a1 + 280) == v243)
                                  {
                                    DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6);
                                    if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                    {
                                      break;
                                    }
                                  }

                                  if (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068)))
                                  {
                                    DepesLayersForWordAndPOS = (*(*(a1 + 56) + 192))(a5, a6, v242);
                                    if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                    {
                                      break;
                                    }
                                  }

                                  if (!--v247)
                                  {
                                    goto LABEL_487;
                                  }
                                }
                              }

                              else
                              {
LABEL_487:
                                if (HIWORD(v304) == v304 && (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068))))
                                {
                                  started = (*(*(a1 + 56) + 192))(a5, a6, v307);
                                  goto LABEL_492;
                                }
                              }
                            }

                            goto LABEL_493;
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

LABEL_492:
        DepesLayersForWordAndPOS = started;
        goto LABEL_493;
      }
    }

    DepesLayersForWordAndPOS = 2310021130;
    if ((v59 & 0x80) != 0)
    {
      DepesLayersForWordAndPOS = 2310021632;
      goto LABEL_493;
    }

    v60 = v299;
    v311[v59] = v307;
    v67 = HIWORD(v304) - v53;
    if (v67 < 1 || dynamic_strncat(v279, &(*a3)[v53 + *(a1 + 224)], v67, v282, *(*a1 + 8)))
    {
      v68 = v273 + 300 * v275;
      if (v68 <= *v282)
      {
        goto LABEL_97;
      }

      v69 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v273 + 300 * v275);
      if (!v69)
      {
        goto LABEL_428;
      }

      *v279 = v69;
      *v282 = v68;
LABEL_97:
      if (v68 > *v280)
      {
        v70 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v68);
        if (v70)
        {
          *v272 = v70;
          *v280 = v68;
          goto LABEL_100;
        }

LABEL_428:
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v40, v41, v42, v43, v250);
        goto LABEL_493;
      }

LABEL_100:
      if (v68 > *v278)
      {
        v71 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v68);
        if (!v71)
        {
          goto LABEL_428;
        }

        *v271 = v71;
        *v278 = v68;
      }

      if (!dynamic_strcat(v279, "◄", v282, *(*a1 + 8)) || !dynamic_strncat(v279, &(*a3)[HIWORD(v304) + *(a1 + 224)], v304 - HIWORD(v304), v282, *(*a1 + 8)) || !dynamic_strcat(v279, "◄", v282, *(*a1 + 8)))
      {
        goto LABEL_493;
      }

      ++v59;
      v275 += 2;
      v61 = 1;
      v53 = v304;
      goto LABEL_119;
    }

LABEL_493:
    heap_Free(*(*a1 + 8), v289);
  }

  else
  {
    DepesLayersForWordAndPOS = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v24, v25, v26, v27, v250);
  }

  v248 = *MEMORY[0x1E69E9840];
  return DepesLayersForWordAndPOS;
}

uint64_t oneword_joinTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v8 = a4;
  v29 = a4;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v12 = *a5;
  v22 = 0;
  result = (*(*(a1 + 56) + 168))(a2, a3, a4, 1, 1, &v22, &v27 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v23 = v22;
  if (v8)
  {
    while (1)
    {
      v14 = v8;
      result = (*(*(a1 + 56) + 136))(a2, a3, v8, &v29);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!v29)
      {
        goto LABEL_13;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LOWORD(v8) = v29;
      if (v23 != v22 || v29 == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v14 = 0;
LABEL_13:
  v29 = v14;
  if (v12 == v14)
  {
    result = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v28, &v27 + 2);
    if ((result & 0x80000000) == 0 && v28 == 8)
    {
      v28 = 9;
      return (*(*(a1 + 56) + 160))(a2, a3, v29, 0, 1, &v28, &v27);
    }

    return result;
  }

  LOWORD(v16) = 0;
  v24 = v14;
  while (1)
  {
    v17 = *(*(a1 + 56) + 168);
    if (v24 == v12)
    {
      break;
    }

    result = v17(a2, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v28 == 8 || v28 == 4)
    {
      if (v16)
      {
        if (v26 == HIWORD(v25))
        {
          result = (*(*(a1 + 56) + 192))(a2, a3, v16);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v19 = v24;
          if (*(a1 + 280) == v16)
          {
            *(a1 + 280) = v24;
          }

          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v19, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (a6)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        else
        {
          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v26) = HIWORD(v25);
        }

        LOWORD(v26) = v25;
        LOWORD(v16) = v24;
      }

      else
      {
        v16 = v24;
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v26 + 2, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 168))(a2, a3, v16, 2, 1, &v26, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    result = (*(*(a1 + 56) + 120))(a2, a3, v24, &v24);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v24, 0, 1, &v28, &v27 + 2);
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    return result;
  }

  result = (v17)(a2, a3, v12, 0, 1, &v28, &v27 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (v28 != 8 && v28 != 4)
    {
      if (!v16)
      {
        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      goto LABEL_69;
    }

    if (v16)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v26 == HIWORD(v25))
      {
        result = (*(*(a1 + 56) + 192))(a2, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v21 = v24;
        if (*(a1 + 280) == v16)
        {
          *(a1 + 280) = v24;
        }

        v28 = 9;
        result = (*(*(a1 + 56) + 160))(a2, a3, v21, 0, 1, &v28, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!a6)
        {
LABEL_70:
          *a5 = v24;
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
LABEL_69:
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      v28 = 9;
    }

    result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
    goto LABEL_69;
  }

  return result;
}

uint64_t count_inserted_oneword_bytes(const char *a1)
{
  if (a1)
  {
    v2 = strlen(a1);
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = &a1[v5];
        v7 = *v6;
        if (v7 == 194)
        {
          break;
        }

        if (v7 == 226 && *(v6 + 1) == 134)
        {
          v8 = 3;
          v9 = 149;
          v10 = 2;
LABEL_9:
          if (v9 == v6[v10])
          {
            v11 = v8;
          }

          else
          {
            v11 = 0;
          }

          v4 += v11;
        }

        v5 += utf8_determineUTF8CharLength(v7);
        if (v5 >= v3)
        {
          return v4;
        }
      }

      v8 = 2;
      v9 = 167;
      v10 = 1;
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{

  return log_OutPublic(a1, a2, 34000, 0, a5, a6, a7, a8, a9);
}

uint64_t printNode(int a1, const char **a2, char *a3, _WORD *a4, void *a5, uint64_t a6, unsigned __int16 *a7, int a8)
{
  if (!a1)
  {
    return 0;
  }

  sprintf(a3, "[%3d] ", a8);
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = *(a7 + 1);
  if (v15 == 2)
  {
    v16 = *a6;
    v17 = "(T) ";
  }

  else
  {
    if (v15 != 1)
    {
      goto LABEL_9;
    }

    v16 = *a6;
    v17 = "(S) ";
  }

  v14 = add2Str(v16, a2, a4, v17);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

LABEL_9:
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  sprintf(a3, "NODE <%3d,%3d > ", *a7, a7[1]);
  v18 = add2Str(*a6, a2, a4, a3);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *a7;
    if (v19 < a7[1])
    {
      v20 = 224 * v19;
      do
      {
        v14 = add2Str(*a6, a2, a4, *(*(*a5 + v20 + 16) + 8 * *(a6 + 16)));
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        if (*(*a5 + v20 + 72) != 255)
        {
          sprintf(a3, "_%d", *(*a5 + v20 + 72));
          v14 = add2Str(*a6, a2, a4, a3);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v18 = add2Str(*a6, a2, a4, " ");
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        ++v19;
        v20 += 224;
      }

      while (v19 < a7[1]);
    }

    if (!FLOATSUR_GT_INT(a7 + 4, 0, 0) || (sprintf(a3, "phraseWeight=%d.%d ", a7[4], a7[5]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
    {
      if (!FLOATSUR_GT_INT(a7 + 6, 0, 0) || (sprintf(a3, "bndWeight=%d.%d ", a7[6], a7[7]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
      {
        if (!FLOATSUR_GT_INT(a7 + 8, 0, 0) || (sprintf(a3, "bndValue=%d.%d ", a7[8], a7[9]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
        {
          v24 = *(a7 + 5);
          if (v24 > 2)
          {
            if (v24 == 4)
            {
              v25 = "bndType=S ";
            }

            else
            {
              if (v24 != 3)
              {
                goto LABEL_35;
              }

              v25 = "bndType=W ";
            }
          }

          else
          {
            if (!v24)
            {
LABEL_36:
              if (*(a7 + 6) != 1 || (sprintf(a3, "bProcessed=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
              {
                if (*(a7 + 7) != 1 || (sprintf(a3, "bBndBefore=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
                {
                  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s", v21, v22, v23, *a2);
                  **a2 = 0;
                }
              }

              return v18;
            }

            if (v24 != 1)
            {
LABEL_35:
              v18 = add2Str(*a6, a2, a4, a3);
              if ((v18 & 0x80000000) != 0)
              {
                return v18;
              }

              goto LABEL_36;
            }

            v25 = "bndType=U ";
          }

          *a3 = *v25;
          *(a3 + 7) = *(v25 + 7);
          goto LABEL_35;
        }
      }
    }
  }

  return v18;
}

uint64_t printLevel(uint64_t result, const char **a2, char *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v14 = result;
    log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "Level dump : %s", a6, a7, a8, a8);
    if (*(a7 + 8))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        result = printNode(v14, a2, a3, a4, a5, a6, (*a7 + v15), v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < *(a7 + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t printAsString(int a1, const char **a2, char *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  **a2 = 0;
  if (*(a7 + 8))
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a7;
      v17 = (*a7 + 32 * v14);
      v18 = *v17;
      if (v18 < v17[1])
      {
        v19 = 224 * v18;
        do
        {
          v20 = *a5 + v19;
          if (!*(v20 + 220))
          {
            v21 = add2Str(*a6, a2, a4, *(*(v20 + 16) + 8 * *(a6 + 16)));
            if ((v21 & 0x80000000) != 0)
            {
              return v21;
            }

            if (*(*a5 + v19 + 72) != 255)
            {
              sprintf(a3, "_%d", *(*a5 + v19 + 72));
              v21 = add2Str(*a6, a2, a4, a3);
              if ((v21 & 0x80000000) != 0)
              {
                return v21;
              }
            }

            v15 = add2Str(*a6, a2, a4, " ");
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v16 = *a7;
          }

          ++v18;
          v19 += 224;
        }

        while (v18 < *(v16 + 32 * v14 + 2));
      }

      v22 = *(v16 + 32 * v14 + 20);
      if (v22 == 4)
      {
        break;
      }

      if (v22 == 3)
      {
        v23 = *a6;
        v24 = a2;
        v25 = a4;
        v26 = "| ";
        goto LABEL_17;
      }

LABEL_18:
      if (++v14 >= *(a7 + 8))
      {
        goto LABEL_22;
      }
    }

    v23 = *a6;
    v24 = a2;
    v25 = a4;
    v26 = "|| ";
LABEL_17:
    v15 = add2Str(v23, v24, v25, v26);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    goto LABEL_18;
  }

  v15 = 0;
LABEL_22:
  v28 = *a2;
  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s%s", a6, a7, a8, a8);
  **a2 = 0;
  return v15;
}

unsigned __int16 *removeNode(unsigned __int16 *result, unsigned int a2)
{
  v2 = result;
  v3 = a2 + 1;
  v4 = result[4];
  if (v4 != v3)
  {
    result = memmove((*result + 32 * a2), (*result + 32 * v3), 32 * (v4 - v3));
    LOWORD(v4) = v2[4];
  }

  v2[4] = v4 - 1;
  return result;
}

uint64_t addNode(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, unsigned int a6)
{
  NodeMem = getNodeMem(a1, a6, a2, 1u);
  if ((NodeMem & 0x80000000) == 0)
  {
    v11 = *a2 + 32 * *(a2 + 8);
    *v11 = a3;
    *(v11 + 2) = a4;
    *(v11 + 4) = a5;
    FLOATSUR_SET_INT((v11 + 8), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 12), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 16), 0, 0);
    v12 = *(a2 + 8);
    v13 = *a2 + 32 * v12;
    *(v13 + 24) = 0;
    *(v13 + 20) = 0;
    *(a2 + 8) = v12 + 1;
  }

  return NodeMem;
}

uint64_t getNodeMem(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (!*a3)
  {
    if (a4 <= a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4;
    }

    v14 = v13 + a2;
    v15 = heap_Calloc(*(a1 + 8), 1, (32 * (v13 + a2)) | 1);
    *a3 = v15;
    if (v15)
    {
      v12 = 0;
      *(a3 + 10) = v14;
      return v12;
    }

LABEL_11:
    v12 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v8, v9, v10, v11, v17);
    return v12;
  }

  v6 = *(a3 + 10);
  if (*(a3 + 8) + a4 <= v6)
  {
    return 0;
  }

  v7 = heap_Realloc(*(a1 + 8), *a3, 32 * v6 + 321);
  if (!v7)
  {
    goto LABEL_11;
  }

  v12 = 0;
  *a3 = v7;
  *(a3 + 10) += 10;
  return v12;
}

uint64_t addLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = getNodeMem(a1, a4, a2, *(a3 + 8));
  if ((result & 0x80000000) == 0)
  {
    v7 = *(a2 + 8);
    if (*(a3 + 8))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (*a2 + 32 * v7);
        v11 = (*a3 + v8);
        v12 = v11[1];
        *v10 = *v11;
        v10[1] = v12;
        ++v9;
        ++v7;
        v13 = *(a3 + 8);
        v8 += 32;
      }

      while (v9 < v13);
      LOWORD(v7) = *(a2 + 8);
    }

    else
    {
      LOWORD(v13) = 0;
    }

    *(a2 + 8) = v7 + v13;
  }

  return result;
}

uint64_t createLevel0ProsodicStructure(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel0ProsodicStructure()", a6, a7, a8, 0);
  v30 = 0;
  v12 = a1 + 336;
  LOWORD(v13) = a1[340];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = a1 + 15;
    v17 = a1 + 16;
    do
    {
      v18 = v15;
      v19 = *(*v12 + 224 * v15 + 56);
      if (v19)
      {
        v20 = v19 + 32 * *v16;
        if (*v20 == 1)
        {
          v28 = *(v20 + 10);
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get phrasing for token (%d,%d)", v9, v10, v11, v14);
          result = getPhrasingForToken(a1, &v30, v15);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = addLevel(*a1, (a1 + 360), &v30, a1[340]);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v22 = a1 + 15;
          if (v30)
          {
            heap_Free(*(*a1 + 8), v30);
            v30 = 0;
            LODWORD(v31) = 0;
            v22 = a1 + 15;
          }

          goto LABEL_11;
        }

        v23 = v19 + 32 * *v17;
        if (*v23 == 1)
        {
          v29 = *(v23 + 10) + 1;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "add syntactic node (%d,%d)", v9, v10, v11, *(v23 + 8));
          v24 = *(*(a1 + 84) + 224 * v15 + 56) + 32 * a1[16];
          result = addNode(*a1, (a1 + 360), *(v24 + 8), *(v24 + 10) + 1, 1, a1[340]);
          v22 = a1 + 16;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_11:
          v15 = *(*(*v12 + 224 * v15 + 56) + 32 * *v22 + 10) + 1;
          goto LABEL_21;
        }
      }

      v25 = v15;
      if (v15 < v13)
      {
        v26 = (*v12 + 224 * v15 + 56);
        while (1)
        {
          v27 = *v26;
          if (*v26)
          {
            if (*(v27 + 32 * *v16) == 1 || *(v27 + 32 * *v17) == 1)
            {
              break;
            }
          }

          ++v18;
          v26 += 28;
          if (v13 == v18)
          {
            v15 = v13;
            goto LABEL_20;
          }
        }

        v15 = v18;
      }

LABEL_20:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "handle in between node (%d,%d)", v9, v10, v11, v14);
      result = addNode(*a1, (a1 + 360), v25, v15, 1, a1[340]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_21:
      v14 = v15;
      v13 = a1[340];
    }

    while (v15 < v13);
  }

  return printLevel(*(a1 + 277), a1 + 136, *(a1 + 137), a1 + 552, a1 + 84, (a1 + 4), (a1 + 360), "LEVEL0");
}

uint64_t checkStructure(uint64_t a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO checkStructure()", a6, a7, a8, 0);
  v13 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v14 = 0;
  for (i = *a2; ; i += 16)
  {
    v16 = v14 + 1;
    if (v14 + 1 < v13 && i[1] != i[16])
    {
      break;
    }

    if (*(i + 1) == 1)
    {
      v17 = *(*(a1 + 672) + 224 * *i + 56);
      if (!v17 || !*(v17 + 32 * *(a1 + 32)))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "WARNING : wordindex=%d starts node %d but syntactic phrase doesnt start here", v10, v11, v12, *i);
        return 0;
      }
    }

    ++v14;
    if (v13 == v16)
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "nodeindex=%d and %d do not follow in sequence", v10, v11, v12, v14);
  return 2315264000;
}

uint64_t createLevel1ProsodicStructure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, 12);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel1ProsodicStructure()", a6, a7, a8, 0);
  if (!*(a1 + 728))
  {
    v15 = 0;
    v32 = 0;
LABEL_27:
    v33 = *(a1 + 680);
    if (v15 != v33)
    {
      memset(v41 + 4, 0, 28);
      LOWORD(v41[0]) = v15;
      WORD1(v41[0]) = v33;
      *(v41 + 4) = *(*(a1 + 720) + 32 * v32 + 4);
      FLOATSUR_SET_INT((v41 | 0xC), 50, 0);
      DWORD1(v41[1]) = 1;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding end node", v34, v35, v36, 0);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, v41, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = getNodeMem(*a1, *(a1 + 728), a1 + 736, 1u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v37 = (*(a1 + 736) + 32 * *(a1 + 744));
      v38 = v41[1];
      *v37 = v41[0];
      v37[1] = v38;
      ++*(a1 + 744);
    }

    return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "LEVEL1");
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v9, v10, v11, v13);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 720) + 32 * v12), v12);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    memset(v41, 0, sizeof(v41));
    LOWORD(v41[0]) = v15;
    v17 = *(a1 + 720);
    v18 = (v17 + 32 * v12);
    WORD1(v41[0]) = v18[1];
    v19 = *(v18 + 1);
    DWORD1(v41[0]) = v19;
    DWORD1(v41[1]) = 1;
    v20 = v13 + 1;
    if (v20 != *(a1 + 728))
    {
      if (v19 == 2)
      {
        if (v15 != *v18)
        {
          memset(v41, 0, sizeof(v41));
          LOWORD(v41[0]) = v15;
          WORD1(v41[0]) = *v18;
          DWORD1(v41[0]) = 1;
          DWORD1(v41[1]) = 1;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding (S) node before this token node", v9, v10, v11, 0);
          result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, v41, 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = getNodeMem(*a1, *(a1 + 728), a1 + 736, 1u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v21 = (*(a1 + 736) + 32 * *(a1 + 744));
          v22 = v41[1];
          *v21 = v41[0];
          v21[1] = v22;
          ++*(a1 + 744);
          v17 = *(a1 + 720);
        }

        v23 = (v17 + 32 * v12);
        v24 = v23[1];
        v41[0] = *v23;
        v41[1] = v24;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  token node - copy verbatim", v9, v10, v11, 0);
LABEL_20:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding new node", v25, v26, v27, 0);
        result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, v41, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = getNodeMem(*a1, *(a1 + 728), a1 + 736, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v30 = (*(a1 + 736) + 32 * *(a1 + 744));
        v31 = v41[1];
        *v30 = v41[0];
        v30[1] = v31;
        ++*(a1 + 744);
        v15 = WORD1(v41[0]);
        v14 = v20;
      }

      else
      {
        v39 = 0;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply general rules on WordIdx %d", v9, v10, v11, *v18);
        v28 = 0;
        v29 = 0;
        WORD2(v40[0]) = *(*(a1 + 720) + 32 * v12);
        LODWORD(v40[0]) = 4;
        *(v40 + 6) = 0;
        while (!HIDWORD(v39))
        {
          if (v29 >= *(a1 + 168))
          {
            goto LABEL_23;
          }

          result = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(a1 + 160) + v28), v40, &v39 + 1, &v39);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v39) == 1)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general rule %d FIRED -> set bndWeight = %d.%d", v25, v26, v27, v29);
          }

          ++v29;
          v28 += 32;
        }

        if (HIDWORD(v39) == 1)
        {
          HIDWORD(v41[0]) = v39;
          goto LABEL_20;
        }

LABEL_23:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  no rules fire", v25, v26, v27, 0);
      }
    }

    v13 = ++v12;
    if (v12 >= *(a1 + 728))
    {
      v32 = v14;
      goto LABEL_27;
    }
  }
}

uint64_t setLevel1StructureWeights(uint64_t a1)
{
  v94 = 0;
  v93 = 0;
  v92 = 0uLL;
  v2 = isStrSetting(a1 + 8, "PHRASE_WEIGHT_ALG", "AVERAGE");
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1StructureWeights(bApplyWeighting=%d)", v3, v4, v5, 0);
  v9 = (a1 + 736);
  if (!*(a1 + 744))
  {
    return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET PHRASEWEIGHT");
  }

  v10 = 0;
  while (1)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v6, v7, v8, v10);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 736) + 32 * v10), v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = (*v9 + 32 * v10);
    if (*(v12 + 1) == 2)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "skip token node", v6, v7, v8, 0);
    }

    else
    {
      v13 = *(*(a1 + 672) + 224 * *v12 + 56);
      if (v13 && *(v13 + 32 * *(a1 + 32)) == 1)
      {
        v90 = v2;
        v91 = 0;
        FLOATSUR_SET_INT(&v91 + 2, 0, 0);
        FLOATSUR_SET_INT(&v91, 0, 0);
        v17 = (*v9 + 32 * v10);
        v18 = *v17;
        if (v18 < v17[1])
        {
          do
          {
            FLOATSUR_PLUS_INT(&v91, &v91, *(*(a1 + 672) + 224 * v18 + 24), 0);
            v85 = *(*(a1 + 672) + 224 * v18 + 24);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : nodeSyllableWeight=%d.%d (word[%d].nsyll=%d)", v19, v20, v21, v18);
            v22 = 0;
            v23 = 0;
            v94 = 0;
            do
            {
              if (v23 >= *(a1 + 216))
              {
                break;
              }

              WORD2(v92) = v18;
              LODWORD(v92) = 1;
              *(&v92 + 6) = 0;
              result = matchMMAPREGEX2NUM_TRule((a1 + 8), a1 + 672, (*(a1 + 208) + v22), &v92, &v94, &v91 + 2, v15, v16);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v24 = v94;
              if (v94 == 1)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : pos weight rule %d FIRED nodePOSWeight=%d.%d", v14, v15, v16, v18);
                v24 = v94;
              }

              ++v23;
              v22 += 10;
            }

            while (!v24);
            ++v18;
          }

          while (v18 < *(*v9 + 32 * v10 + 2));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodePOSWeight = %d.%d", v14, v15, v16, WORD2(v91));
        if (v2)
        {
          FLOATSUR_TIMES(&v91 + 2, &v91 + 2, (a1 + 200));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodePOSWeight = %d.%d", v25, v26, v27, WORD2(v91));
        v31 = 0;
        v32 = 0;
        v94 = 0;
        do
        {
          if (v32 >= *(a1 + 240))
          {
            break;
          }

          matchMAPNUMNUM_TRule(*(a1 + 232) + v31, &v91, &v94);
          v33 = v94;
          if (v94 == 1)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  syll weight rule %d FIRED nodeSyllableWeight=%d.%d", v28, v29, v30, v32);
            v33 = v94;
          }

          ++v32;
          v31 += 12;
        }

        while (!v33);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodeSyllableWeight = %d.%d", v28, v29, v30, v91);
        if (v2)
        {
          FLOATSUR_TIMES(&v91, &v91, (a1 + 224));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodeSyllableWeight = %d.%d", v34, v35, v36, v91);
        if (*(a1 + 256))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply %d gen weight rules", v37, v38, v39, *(a1 + 256));
          v40 = heap_Calloc(*(*a1 + 8), 1, (4 * *(a1 + 256)) | 1);
          if (!v40)
          {
            log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v41, v37, v38, v39, v75);
            return 2315264010;
          }

          v42 = v40;
          v43 = *(a1 + 736);
          v46 = (v43 + 32 * v10);
          v44 = *v46;
          v45 = v46[1];
          LODWORD(v46) = *(a1 + 256);
          if (v44 < v45)
          {
            v47 = *(a1 + 256);
            do
            {
              if (v47)
              {
                v48 = 0;
                v89 = v44;
                while (2)
                {
                  v94 = 0;
                  WORD2(v92) = v44;
                  LODWORD(v92) = 4;
                  *(&v92 + 6) = 0;
                  v49 = *(*(a1 + 248) + 12 * v48 + 8);
                  v50 = 32 * v49;
                  do
                  {
                    if (v49 >= *(*(a1 + 248) + 12 * v48 + 10))
                    {
                      break;
                    }

                    if ((matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(a1 + 264) + v50), &v92, &v94, &v93) & 0x80000000) != 0)
                    {
                      heap_Free(*(*a1 + 8), v42);
                      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET PHRASEWEIGHT");
                    }

                    v51 = v94;
                    if (v94 == 1)
                    {
                      *(v42 + 4 * v48) = v93;
                      v51 = v94;
                      if (v94 == 1)
                      {
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general weight rule %d FIRED genRuleValues[%d]=%d.%d", v37, v38, v39, v49);
                        v51 = v94;
                      }
                    }

                    ++v49;
                    v50 += 32;
                  }

                  while (!v51);
                  v46 = *(a1 + 256);
                  ++v48;
                  LOWORD(v44) = v89;
                  if (v48 < v46)
                  {
                    continue;
                  }

                  break;
                }

                v43 = *v9;
                v47 = *(a1 + 256);
                v2 = v90;
              }

              LOWORD(v44) = *(*(*(a1 + 672) + 224 * v44 + 56) + 32 * *(a1 + 32) + 10) + 1;
            }

            while (*(v43 + 32 * v10 + 2) > v44);
          }

          if (v46)
          {
            v52 = 0;
            v53 = 4;
            v54 = v42;
            do
            {
              v76 = *v54;
              v81 = v54[1];
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted genRuleValues[%d]  = %d.%d", v37, v38, v39, v52);
              if (v2)
              {
                FLOATSUR_TIMES(v54, v54, (*(a1 + 248) + v53));
              }

              v77 = *v54;
              v82 = v54[1];
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted genRuleValues[%d]  = %d.%d", v55, v56, v57, v52++);
              v54 += 2;
              v53 += 12;
            }

            while (v52 < *(a1 + 256));
          }
        }

        else
        {
          v42 = 0;
        }

        v58 = *(a1 + 736) + 32 * v10;
        v78 = *(v58 + 10);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  compute final phraseweight = %d.%d", v37, v38, v39, *(v58 + 8));
        FLOATSUR_PLUS(&v92 + 6, &v91 + 2, &v91);
        v59 = (*(a1 + 736) + 32 * v10 + 8);
        FLOATSUR_PLUS(v59, v59, &v92 + 6);
        v60 = *(a1 + 736) + 32 * v10;
        v86 = *(v60 + 8);
        v88 = *(v60 + 10);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted nodePOSWeight(%d.%d) and nodeSyllableWeight(%d.%d) -> %d.%d", v61, v62, v63, WORD2(v91));
        if (*(a1 + 256))
        {
          v67 = 0;
          v68 = v42;
          do
          {
            v69 = (*(a1 + 736) + 32 * v10 + 8);
            FLOATSUR_PLUS(v69, v69, v68);
            v70 = *(a1 + 736) + 32 * v10;
            v84 = *(v70 + 8);
            v87 = *(v70 + 10);
            v79 = *v68;
            v83 = v68[1];
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted genRuleValues[%d](%d.%d) -> %d.%d", v71, v72, v73, v67++);
            v68 += 2;
          }

          while (v67 < *(a1 + 256));
        }

        v74 = *(a1 + 736) + 32 * v10;
        v80 = *(v74 + 10);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  final phraseweight = %d.%d", v64, v65, v66, *(v74 + 8));
        if (v42)
        {
          heap_Free(*(*a1 + 8), v42);
        }
      }
    }

    if (++v10 >= *(a1 + 744))
    {
      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET PHRASEWEIGHT");
    }
  }
}

uint64_t setLevel1Boundaries(uint64_t a1)
{
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  FLOATSUR_PLUS(&v61 + 2, (a1 + 396), (a1 + 400));
  FLOATSUR_PLUS(&v63, (a1 + 392), &v61 + 2);
  v53 = *(a1 + 384);
  v51 = *(a1 + 388);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1Boundaries(threshold_bnd_val_weak=%d threshold_weak_frag=%d threshold_bnd_val_strong=%d)", v2, v3, v4, *(a1 + 380));
  getLowestBnd(a1, &v62);
  v5 = v62;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "START lowestBnd : node %d", v6, v7, v8, v62);
  if (HIDWORD(v62) == 1 && FLOATSUR_LT((*(a1 + 736) + 32 * v5 + 12), (a1 + 376)))
  {
    v12 = 0;
    v13 = (a1 + 736);
    v14 = v5;
    while (1)
    {
      v15 = v14;
      v16 = *(a1 + 736) + 32 * v5;
      v54 = *(v16 + 12);
      v56 = *(v16 + 14);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "LOOP[%d] lowestBnd : node %d (bndWeight=%d.%d)", v9, v10, v11, v12);
      FLOATSUR_SET(&v59 + 1, (*(a1 + 736) + 32 * v5 + 8));
      FLOATSUR_SET_INT(&v59, 0, 0);
      v17 = v15 + 1;
      if (v17 < *(a1 + 744))
      {
        FLOATSUR_SET(&v59, (*v13 + 32 * v17 + 8));
      }

      FLOATSUR_SET(&v58, (*(a1 + 736) + 32 * v5 + 12));
      FLOATSUR_TIMES(&v61 + 2, &v59 + 2, (a1 + 392));
      FLOATSUR_TIMES(&v61, &v59, (a1 + 396));
      FLOATSUR_TIMES(&v60 + 2, &v58, (a1 + 400));
      FLOATSUR_PLUS(&v60, &v61 + 2, &v61);
      FLOATSUR_PLUS(&v60, &v60, &v60 + 2);
      FLOATSUR_DIV(&v61 + 2, &v60, &v63);
      FLOATSUR_TIMES_INT(&v58 + 1, &v61 + 2, 0xAu, 0);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted mean bndVal = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", v18, v19, v20, WORD2(v58));
      if (!FLOATSUR_LT(&v58 + 2, (a1 + 380)) && !FLOATSUR_LT(&v59 + 2, (a1 + 388)) && !FLOATSUR_LT(&v59, (a1 + 388)))
      {
        break;
      }

      v55 = *(a1 + 388);
      v57 = *(a1 + 390);
      v52 = *(a1 + 382);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  [bnd_val < threshold_weak(%d.%d) or one thisphraseWeight or nextphraseWeight < threshold_weak_frag(%d.%d)] remove node (merge %d and %d)", v21, v22, v23, *(a1 + 380));
      if (v17 == *(a1 + 744))
      {
        goto LABEL_10;
      }

      v27 = (*v13 + 32 * v5);
      *(*v13 + 32 * (v15 + 1)) = *v27;
      FLOATSUR_PLUS(v27 + 20, v27 + 20, v27 + 4);
      removeNode((a1 + 736), v15);
LABEL_12:
      getLowestBnd(a1, &v62);
      v5 = v62;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "END LOOP lowestBnd : node %d", v28, v29, v30, v62);
      if (HIDWORD(v62) != 1)
      {
        goto LABEL_23;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "ITERATION %d", v31, v32, v33, v12);
      result = printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "ITER");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (FLOATSUR_EQUAL_INT((*v13 + 32 * v5 + 12), 0, 0))
      {
        *(*(a1 + 736) + 32 * v5 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", v35, v36, v37, 0);
      }

      ++v12;
      v38 = FLOATSUR_LT((*v13 + 32 * v5 + 12), (a1 + 376));
      v14 = v5;
      if (!v38)
      {
        goto LABEL_23;
      }
    }

    if (FLOATSUR_LT(&v58 + 2, (a1 + 384)))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set WEAK BND", v39, v40, v41, 0);
      v42 = *(a1 + 736) + 32 * v5;
      v43 = 3;
    }

    else
    {
      if (!FLOATSUR_GTOREQUAL(&v58 + 2, (a1 + 384)))
      {
LABEL_10:
        *(*(a1 + 736) + 32 * v5 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", v24, v25, v26, 0);
        goto LABEL_12;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set STRONG BND", v24, v25, v26, 0);
      v42 = *(a1 + 736) + 32 * v5;
      v43 = 4;
    }

    *(v42 + 20) = v43;
    *(v42 + 16) = HIDWORD(v58);
    goto LABEL_10;
  }

LABEL_23:
  if (*(a1 + 744))
  {
    v44 = 0;
    v45 = *(a1 + 736);
    v46 = 20;
    do
    {
      if (*(v45 + v46) <= 1u)
      {
        v47 = FLOATSUR_GT((v45 + v46 - 8), (a1 + 376));
        v45 = *(a1 + 736);
        if (v47)
        {
          *(v45 + v46) = 4;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set node %d STRONG BND", v48, v49, v50, v44);
          v45 = *(a1 + 736);
        }
      }

      *(*(a1 + 672) + 224 * *(v45 + v46 - 18) - 151) = *(v45 + v46);
      ++v44;
      v46 += 32;
    }

    while (v44 < *(a1 + 744));
  }

  return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET BOUNDARIES");
}

uint64_t getLowestBnd(uint64_t result, unsigned __int16 *a2)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v2 = *(result + 744);
  if (*(result + 744))
  {
    v4 = result;
    v5 = 0;
    for (i = 24; *(*(result + 736) + i) == 1; i += 32)
    {
      if (v2 == ++v5)
      {
        return result;
      }
    }

    v7 = v5;
    *a2 = v5;
    *(a2 + 1) = 1;
    v8 = v5;
    if (v2 > v5)
    {
      v9 = i - 24;
      v8 = v5;
      do
      {
        v10 = *(v4 + 736);
        if (*(v10 + v9 + 20) == 1)
        {
          if ((result = FLOATSUR_LT((v10 + v9 + 12), (v10 + 32 * *a2 + 12)), v11 = *(v4 + 736), result) && !*(v11 + v9 + 24) || (result = FLOATSUR_LT_INT((v11 + v9 + 12), 0, 0), result))
          {
            v8 = v5;
            *a2 = v5;
            *(a2 + 1) = 1;
          }
        }

        ++v5;
        v2 = *(v4 + 744);
        v9 += 32;
      }

      while (v5 < v2);
    }

    if (v8 == v7 && v8 < v2 && !*(*(v4 + 736) + i))
    {
      *a2 = v7;
      *(a2 + 1) = 1;
    }
  }

  return result;
}

uint64_t getProsodicStructure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  result = createLevel0ProsodicStructure(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    result = checkStructure(a1, (a1 + 720), v10, v11, v12, v13, v14, v15);
    if ((result & 0x80000000) == 0)
    {
      if (*(a1 + 928))
      {
        result = simplifiedTokenPhrasing(*a1, (a1 + 720), (a1 + 672), (a1 + 8));
        if ((result & 0x80000000) == 0)
        {
          v23 = *a1;

          return threePassIgtreePhrasing(v23, a1 + 720, (a1 + 672), a1 + 8, (a1 + 752));
        }
      }

      else if (*(a1 + 816))
      {
        result = simplifiedTokenPhrasing(*a1, (a1 + 720), (a1 + 672), (a1 + 8));
        if ((result & 0x80000000) == 0)
        {
          v24 = *a1;

          return twoPassIgtreePhrasing(v24, a1 + 720, (a1 + 672), a1 + 8, (a1 + 752));
        }
      }

      else if (*(a1 + 760))
      {
        result = simplifiedTokenPhrasing(*a1, (a1 + 720), (a1 + 672), (a1 + 8));
        if ((result & 0x80000000) == 0)
        {
          v25 = *a1;

          return singlePassIgtreePhrasing(v25, a1 + 720, (a1 + 672), a1 + 8, (a1 + 752));
        }
      }

      else
      {
        result = createLevel1ProsodicStructure(a1, v16, v17, v18, v19, v20, v21, v22);
        if ((result & 0x80000000) == 0)
        {
          result = checkStructure(a1, (a1 + 736), v26, v27, v28, v29, v30, v31);
          if ((result & 0x80000000) == 0)
          {
            result = setLevel1StructureWeights(a1);
            if ((result & 0x80000000) == 0)
            {

              return setLevel1Boundaries(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

double freeProsodicStructure(void *a1)
{
  v2 = a1[90];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[90] = 0;
  }

  v3 = a1[92];
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
  }

  result = 0.0;
  *(a1 + 45) = 0u;
  *(a1 + 46) = 0u;
  return result;
}

uint64_t getPwPredict(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7)
{
  v7 = *a5;
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = result;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v15 = v9;
      v17 = 0.0;
      do
      {
        v16 = a2 + 28 * (v10 + v8);
        if (v17 < *(v16 + 4 * v13))
        {
          v17 = *(v16 + 4 * v13);
          v14 = v13;
        }

        ++v13;
      }

      while (v13 != 7);
      if (a3 > v10 && v8 == *(a4 + 2 * v10))
      {
        v18 = 0;
        v14 = 0;
        v19 = v10 + 1;
        v20 = a2 + 28 * (v10 + v11);
        v21 = 0.0;
        do
        {
          if (v21 < *(v20 + 4 * v18))
          {
            v21 = *(v20 + 4 * v18);
            v14 = v18;
          }

          ++v18;
        }

        while (v18 != 7);
        result = 0;
        v10 = v19;
      }

      else
      {
        result = 1;
      }

      v22 = *(a7 + 4 * v8);
      v23 = v22 == 1 || v14 == 0;
      if (v23 || v14 == 3)
      {
        break;
      }

      v25 = (v7 + 2 * v8);
      *v25 = 0;
      if ((result & 1) == 0)
      {
        v26 = 1;
LABEL_30:
        *v25 = 1;
        v9 = (v15 + v26);
        goto LABEL_31;
      }

      v9 = v15;
LABEL_31:
      ++v8;
      ++v11;
      if (v8 == v12)
      {
        goto LABEL_34;
      }
    }

    v9 = (v15 + 1);
    *(v7 + 2 * v8) = 1;
    if (!v8)
    {
      goto LABEL_31;
    }

    if (v22 != 1)
    {
      goto LABEL_31;
    }

    v25 = (v7 + 2 * (v8 - 1));
    result = *v25;
    if (*v25)
    {
      goto LABEL_31;
    }

    v26 = 2;
    goto LABEL_30;
  }

  v12 = 0;
  LOWORD(v9) = 0;
LABEL_34:
  v27 = v7 + 2 * v12;
  if (*(v27 - 2) != 1)
  {
    LOWORD(v9) = v9 + 1;
    *(v27 - 2) = 1;
  }

  *a6 = v9;
  return result;
}

uint64_t storeResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, _WORD *a7, _DWORD *a8, unsigned __int8 a9, const char **a10)
{
  v53 = *a6;
  if (!a3)
  {
LABEL_51:
    result = 0;
    *a6 = v53;
    return result;
  }

  v11 = 0;
  v51 = 0;
  v12 = 0;
  v52 = 0;
  v13 = a2 + 64;
  if (a9)
  {
    v14 = a10 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  v48 = v15;
  v46 = a3;
  v47 = a2;
  while (1)
  {
    v16 = a2 + 40 * v11;
    if (v48)
    {
LABEL_13:
      v20 = (a4 + 2 * v11);
      v21 = *v20;
      v22 = 1;
      if (*v20)
      {
        v23 = a8;
        v24 = v53;
        v25 = v51;
        if (v21 == 1)
        {
          goto LABEL_32;
        }

        if (!*a8)
        {
          goto LABEL_50;
        }

        goto LABEL_16;
      }

      v23 = a8;
      v24 = v53;
      v25 = v51;
    }

    else
    {
      v17 = *v16;
      v19 = a9;
      v18 = a10;
      while (!strstr(v17, *v18))
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_13;
        }
      }

      v22 = 0;
      v20 = (a4 + 2 * v11);
      v25 = v51;
      if (*v20)
      {
        v23 = a8;
        v24 = v53;
        goto LABEL_32;
      }

      LOBYTE(v21) = 1;
      v23 = a8;
      v24 = v53;
    }

    if (!*v23 || v25 >= *(v23 + 2))
    {
      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_31:
      ++v12;
      goto LABEL_50;
    }

    if (*(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

LABEL_16:
    if (v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v22) = 1;
      goto LABEL_32;
    }

LABEL_50:
    ++v11;
    v13 += 40;
    a2 = v47;
    if (v11 == v46)
    {
      goto LABEL_51;
    }
  }

  LOBYTE(v22) = 0;
LABEL_32:
  v26 = v12 + 1;
  *(v24 + 184 * v52 + 8) = v26;
  if (*v23 && v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
  {
    if (!*v20)
    {
      v27 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v27)
      {
        return 2315264010;
      }

      v24 = v27;
      v28 = v27 + 184 * *a7;
      *(v28 + 176) = 0;
      *(v28 + 144) = 0u;
      *(v28 + 160) = 0u;
      *(v28 + 112) = 0u;
      *(v28 + 128) = 0u;
      *(v28 + 80) = 0u;
      *(v28 + 96) = 0u;
      *(v28 + 48) = 0u;
      *(v28 + 64) = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *v28 = 0u;
      ++*a7;
      *v20 = 1;
      v25 = v51;
    }

    ++v25;
  }

  v29 = v24 + 184 * v52;
  v53 = v24;
  v51 = v25;
  if (*(a5 + 2 * v11) == 1)
  {
    *(v29 + 72) = 1;
  }

  else
  {
    *(v29 + 72) = 0;
    if ((v22 & 1) == 0 && !*v20)
    {
      v30 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v30)
      {
        return 2315264010;
      }

      v53 = v30;
      v31 = v30 + 184 * *a7;
      *(v31 + 176) = 0;
      *(v31 + 144) = 0u;
      *(v31 + 160) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *v31 = 0u;
      ++*a7;
    }
  }

  v32 = v26;
  v33 = 2 * v26;
  v34 = heap_Alloc(*(a1 + 8), v33);
  v38 = (v53 + 184 * v52);
  *v38 = v34;
  if (v34)
  {
    v38[7] = "";
    if (v26)
    {
      v39 = 0;
      v40 = (v13 - 40 * v32);
      do
      {
        v41 = *v40;
        v40 += 20;
        *(*v38 + v39) = v41;
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw:%d , tid=%d", v35, v36, v37, v52);
        v39 += 2;
      }

      while (v33 != v39);
    }

    v12 = 0;
    ++v52;
    goto LABEL_50;
  }

  return 2315264010;
}

uint64_t storePwResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v22 = *a5;
  v13 = a2 + 64;
  v14 = a3;
  while (*(a4 + 2 * v9) != 1)
  {
    if (*(a4 + 2 * v9))
    {
      if (!*a6)
      {
        goto LABEL_21;
      }
    }

    else if (!*a6 || *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v11;
      goto LABEL_21;
    }

    if (*(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      break;
    }

LABEL_21:
    ++v9;
    v13 += 40;
    if (v9 == v14)
    {
      return 0;
    }
  }

  v15 = v11 + 1;
  v16 = v22 + 184 * v12;
  *(v16 + 8) = v15;
  v17 = v15;
  v18 = heap_Alloc(*(a1 + 8), 2 * v15);
  *v16 = v18;
  if (v18)
  {
    *(v16 + 56) = "";
    if (v17)
    {
      v19 = (v13 - 40 * v17);
      do
      {
        v20 = *v19;
        v19 += 20;
        *v18++ = v20;
        --v17;
      }

      while (v17);
    }

    if (*a6 && *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v10;
    }

    v11 = 0;
    ++v12;
    goto LABEL_21;
  }

  return 2315264010;
}

uint64_t pw_nn_process(uint64_t a1, uint64_t ****a2, uint64_t *a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7, void *a8, int a9, _DWORD *a10, unsigned __int8 a11, const char **a12, int a13)
{
  v70 = 0;
  v78[0] = *a5;
  v77 = 0;
  v20 = 2315264010;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v21 = 2 * a4;
  v22 = heap_Alloc(*(a1 + 8), v21);
  v76 = v22;
  if (!v22)
  {
    v28 = 0;
    v24 = 0;
    goto LABEL_48;
  }

  v23 = v22;
  v66 = a2;
  v24 = heap_Alloc(*(a1 + 8), v21);
  if (!v24)
  {
    goto LABEL_28;
  }

  v65 = a6;
  v67 = a3;
  v64 = a5;
  if (a4)
  {
    v25 = 0;
    v26 = 0;
    v27 = v67;
    do
    {
      if (checkAttachedPunc(*v27))
      {
        *(v24 + 2 * v26++) = v25;
      }

      ++v25;
      v27 += 5;
    }

    while (a4 != v25);
  }

  else
  {
    v26 = 0;
  }

  v29 = heap_Calloc(*(a1 + 8), a4, 4);
  v71 = v29;
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *(a1 + 8);
  if (a9 != 1)
  {
    v74 = heap_Calloc(v31, (100 * a4), 4);
    if (!v74)
    {
      v28 = 0;
      v20 = 2315264010;
      goto LABEL_50;
    }

    Embedding = getEmbedding(a1, a7, a8, a9, a4, v67, v26, v24, &v74, &v71, a13);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    Embedding = fi_predict(v66[1], &v74, a4, &v75, v44, v45, v46, v47);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    getPwPredict(a4, v75, v26, v24, &v76, &v77, v30);
    v48 = v77;
    *a6 = v77;
    v49 = heap_Calloc(*(a1 + 8), v48, 184);
    v78[0] = v49;
    if (!v49)
    {
      goto LABEL_29;
    }

    v50 = v49;
    Embedding = storePwResult(a1, v67, a4, v23, v78, a10);
    if ((Embedding & 0x80000000) != 0)
    {
LABEL_30:
      v28 = 0;
      v20 = Embedding;
      goto LABEL_48;
    }

    v72 = heap_Calloc(*(a1 + 8), 100 * v48, 4);
    if (!v72)
    {
      goto LABEL_29;
    }

    if (v66[1])
    {
      v20 = fi_predict(*v66, &v72, v48, &v75, v51, v52, v53, v54);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_28:
        v28 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v48)
    {
      v58 = 0;
      for (i = 0; i != v48; ++i)
      {
        v60 = 0;
        v61 = 0;
        v62 = 0.0;
        do
        {
          if (v62 < *(v75 + v58 + 4 * v60))
          {
            v62 = *(v75 + v58 + 4 * v60);
            v61 = v60;
          }

          ++v60;
        }

        while (v60 != 4);
        *(v50 + 184 * i + 72) = v61 == 3 || v61 == 0 || v48 - 1 == i;
        v58 += 16;
      }
    }

    if (v72)
    {
      heap_Free(*(a1 + 8), v72);
      v28 = 0;
      v72 = 0;
    }

    else
    {
      v28 = 0;
    }

    v56 = v64;
LABEL_77:
    *v56 = v50;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_53:
    heap_Free(*(a1 + 8), v28);
    goto LABEL_54;
  }

  v32 = heap_Alloc(v31, v21);
  v73 = v32;
  if (!v32)
  {
LABEL_29:
    v28 = 0;
    v20 = 2315264010;
    goto LABEL_48;
  }

  v33 = v32;
  v34 = *(a1 + 8);
  if (a13)
  {
    v28 = 0;
    v74 = heap_Calloc(v34, 100 * (a4 + v26), 4);
    v35 = v26;
    v36 = v67;
    if (v74)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v28 = heap_Alloc(v34, v21);
    v70 = v28;
    if (v28)
    {
      v36 = v67;
      v37 = getcharNum(a4, v67, &v71, &v77 + 1, v26, v24, &v70);
      if ((v37 & 0x80000000) != 0)
      {
LABEL_44:
        v20 = v37;
        goto LABEL_47;
      }

      v35 = HIWORD(v77);
      v74 = heap_Calloc(*(a1 + 8), HIWORD(v77) + 2, 4);
      if (v74)
      {
LABEL_16:
        v37 = getEmbedding(a1, a7, a8, 1, a4, v36, v26, v24, &v74, &v71, a13);
        if ((v37 & 0x80000000) == 0)
        {
          if (a4 == 1)
          {
            v42 = 1;
            *v23 = 1;
            v69 = v33;
            *v33 = 1;
            LOWORD(v77) = 1;
            if (v74)
            {
              heap_Free(*(a1 + 8), v74);
              v74 = 0;
              v42 = 1;
            }

LABEL_41:
            v20 = 2315264010;
            v56 = v64;
            *v65 = v42;
            v78[0] = heap_Calloc(*(a1 + 8), v42, 184);
            if (v78[0])
            {
              v20 = storeResult(a1, v36, a4, v23, v69, v78, &v77, a10, a11, a12);
              if ((v20 & 0x80000000) == 0)
              {
                *v65 = v77;
                heap_Free(*(a1 + 8), v69);
                v73 = 0;
                v50 = v78[0];
                goto LABEL_77;
              }

              v33 = v69;
            }

            else
            {
              v33 = v69;
            }

            goto LABEL_47;
          }

          if (a13)
          {
            v55 = a4;
          }

          else
          {
            v55 = 2;
          }

          v37 = fi_predict(*v66, &v74, v55 + v35, &v75, v38, v39, v40, v41);
          if ((v37 & 0x80000000) == 0)
          {
            v69 = v33;
            getJointResult(&v76, &v73, a4, v26, v24, &v77, v75, v71, a13, v28);
            v42 = v77;
            goto LABEL_41;
          }
        }

        goto LABEL_44;
      }
    }
  }

  v20 = 2315264010;
LABEL_47:
  heap_Free(*(a1 + 8), v33);
LABEL_48:
  if (v74)
  {
    heap_Free(*(a1 + 8), v74);
  }

LABEL_50:
  if (v72)
  {
    heap_Free(*(a1 + 8), v72);
  }

  if (v28)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  if (v71)
  {
    heap_Free(*(a1 + 8), v71);
  }

  heap_Free(*(a1 + 8), v76);
  return v20;
}

uint64_t getcharNum(unsigned int a1, uint64_t *a2, uint64_t *a3, _WORD *a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  v23 = 0;
  v22 = 0;
  v7 = *a3;
  if (a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a7;
    v15 = a1;
    do
    {
      UTF8Char = utf8_getUTF8Char(*a2, 0, &v22);
      if ((UTF8Char & 0x80000000) != 0)
      {
        break;
      }

      if (utf8_IsChineseLetter(&v22))
      {
        v17 = Utf8_Utf8NbrOfSymbols(*a2) - 1;
        *(v14 + 2 * v11) = v17;
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
        }
      }

      else
      {
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
          v18 = Utf8_Utf8NbrOfSymbols(*a2);
          v17 = 1;
          if (v18 >= 3)
          {
            *(v7 + 4 * v11) = 1;
            v17 = 2;
          }
        }

        else
        {
          v17 = 1;
          *(v7 + 4 * v11) = 1;
        }

        *(v14 + 2 * v11) = v17;
      }

      v12 += v17;
      ++v11;
      a2 += 5;
    }

    while (v15 != v11);
  }

  else
  {
    v12 = 0;
    UTF8Char = 0;
  }

  *a3 = v7;
  *a4 = v12;
  return UTF8Char;
}

uint64_t getEmbedding(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned __int32 **a9, uint64_t *a10, int a11)
{
  v104 = *MEMORY[0x1E69E9840];
  v100 = 0;
  if (!a4)
  {
    result = 0;
    goto LABEL_108;
  }

  v14 = a3;
  v15 = a2;
  v96 = *a10;
  v101 = 0;
  v17 = *a9;
  result = (*(a2 + 40))(*a3, a3[1], &v101 + 4);
  if ((result & 0x80000000) == 0)
  {
    if (a11)
    {
      result = (*(v15 + 40))(v14[2], v14[3], &v101);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_108;
      }

      if (HIDWORD(v101) != v101)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", v19, v20, v21, "ERROR: word embedding and character embedding do not have same dimension");
        result = 2315264000;
        goto LABEL_108;
      }
    }

    else
    {
      *v17 = 1120534528;
      v17 += HIDWORD(v101);
    }

    if (!a5)
    {
LABEL_106:
      if (!a11)
      {
        *v17 = 1120665600;
      }

      goto LABEL_108;
    }

    v22 = 0;
    v23 = 0;
    v94 = a5;
    v95 = a8;
    v24 = 0;
    v87 = a7;
    v83 = v14;
    v86 = a1;
    v97 = v15;
    while (1)
    {
      v99 = *(a6 + 40 * v22);
      v25 = strlen(v99);
      v26 = 0;
      if (a7 && v24 < a7)
      {
        if (v22 == *(v95 + 2 * v24))
        {
          v27 = a1;
          v28 = v24;
          v29 = v25;
          if (v25 == 3 && (*__s = 0, v30 = 3, v31 = 1, utf8_Utf8ToUtf32_Tolerant(v99, 3u, &__s[4], 1u, __s), *&__s[4] == 8230))
          {
            v32 = 0;
          }

          else
          {
            v31 = 0;
            v100 = v99[v29 - 1];
            v30 = v29 - 1;
            v99[(v29 - 1)] = 0;
            v32 = 1;
          }

          *(a6 + 40 * v22 + 36) = 1;
          v33 = v30;
          v24 = (v28 + 1);
          v23 = v31;
          v25 = v33;
          v26 = v32;
          a1 = v27;
          a7 = v87;
        }

        else
        {
          v26 = 0;
          v23 = 0;
        }
      }

      if (a11)
      {
        break;
      }

      v93 = v24;
      v61 = HIDWORD(v101);
      v62 = *(v96 + 4 * v22);
      v64 = *v14;
      v63 = v14[1];
      __s[8] = 0;
      *&__s[4] = 0;
      if (v62)
      {
        v65 = v25;
        *v17 = 1065353216;
        v17 += v61;
        if (v26)
        {
          v66 = v61;
          result = (*(v15 + 72))(v64, v63, &v100, v17);
          if ((result & 0x80000000) != 0)
          {
            result = 0;
            *v17 = 1120403456;
          }

          v17 += v66;
        }

        else
        {
          result = 0;
        }
      }

      else
      {
        v91 = HIDWORD(v101);
        v65 = v25;
        *__s = Utf8_Utf8NbrOfSymbols(v99) - 1;
        checkremoveNormalSym(v99, __s, 0x5Fu);
        checkremoveNormalSym(v99, __s, 0x2Du);
        v67 = *__s;
        if (v26 | *__s)
        {
          v89 = v26;
          v85 = v65;
          if (*__s)
          {
            v68 = 0;
            v69 = 0;
            while (1)
            {
              v70 = v68;
              result = utf8_getUTF8Char(v99, v68, &__s[4]);
              if ((result & 0x80000000) != 0)
              {
                goto LABEL_108;
              }

              v71 = strlen(&__s[4]);
              v72 = v15;
              v73 = v71;
              result = (*(v72 + 72))(v64, v63, &__s[4], v17);
              if ((result & 0x80000000) != 0)
              {
                result = 0;
                *v17 = 1120403456;
              }

              v68 = v70 + v73;
              ++v69;
              v17 += v91;
              v15 = v97;
              if (v69 >= v67)
              {
                goto LABEL_68;
              }
            }
          }

          result = 0;
LABEL_68:
          if (v89)
          {
            result = (*(v15 + 72))(v64, v63, &v100, v17);
            a7 = v87;
            v14 = v83;
            v65 = v85;
            if ((result & 0x80000000) != 0)
            {
              result = 0;
              *v17 = 1120403456;
            }

            v17 += v91;
          }

          else
          {
            a7 = v87;
            v14 = v83;
            v65 = v85;
          }
        }

        else
        {
          result = 0;
          *v17 = 1120403456;
          a7 = v87;
        }
      }

      a1 = v86;
      v24 = v93;
      if (v93 && !v23 && v22 == *(v95 + 2 * (v93 - 1)))
      {
        v99[v65] = 0;
      }

LABEL_97:
      if (++v22 == v94)
      {
        goto LABEL_106;
      }
    }

    v34 = v25;
    *(v96 + 4 * v22) = 0;
    result = (*(v15 + 56))(v14[2], v14[3], v99, v17);
    if (*v17 != 0.0 || result == 0)
    {
LABEL_86:
      if (v24 && !v23 && v22 == *(v95 + 2 * (v24 - 1)))
      {
        v99[v34] = 0;
      }

      v17 += HIDWORD(v101);
      if (v26)
      {
        result = (*(v15 + 56))(v14[2], v14[3], &v100, v17);
        if (*v17 == 0.0 && result != 0)
        {
          v76.n128_u32[0] = *v17;
          result = (*(v15 + 56))(v14[2], v14[3], "</s>", v17, v76);
        }

        v17 += HIDWORD(v101);
      }

      goto LABEL_97;
    }

    v88 = v26;
    v36 = HIDWORD(v101);
    v90 = v14[1];
    v92 = *v14;
    v37 = v14[3];
    v81 = v14[2];
    v103 = 0;
    *&__s[4] = 0;
    v38 = heap_Calloc(*(a1 + 8), HIDWORD(v101), 4);
    if (v38)
    {
      v43 = v38;
      v80 = v37;
      v84 = v34;
      v82 = v23;
      v44 = Utf8_Utf8NbrOfSymbols(v99);
      *__s = v44 - 1;
      if (v44 == 1)
      {
LABEL_63:
        a1 = v86;
        heap_Free(*(v86 + 8), v43);
        a7 = v87;
        v15 = v97;
        v23 = v82;
        v34 = v84;
      }

      else
      {
        checkremoveNormalSym(v99, __s, 0x5Fu);
        checkremoveNormalSym(v99, __s, 0x2Du);
        v45 = *__s;
        if (*__s)
        {
          v46 = 0;
          v47 = 0;
          while (1)
          {
            v48 = v46;
            UTF8Char = utf8_getUTF8Char(v99, v46, &__s[4]);
            if (UTF8Char < 0)
            {
              goto LABEL_63;
            }

            v50 = UTF8Char;
            v51 = v24;
            v52 = strlen(&__s[4]);
            if (!utf8_IsChineseLetter(&__s[4]))
            {
              break;
            }

            if (v45 == 1)
            {
              v53 = 115;
            }

            else if (v47)
            {
              v53 = 109;
            }

            else
            {
              v53 = 98;
            }

            __s[v52 + 4] = v53;
            __s[strlen(&__s[4]) + 4] = 0;
            v54 = (*(v97 + 56))(v92, v90, &__s[4], v43);
            if (*v43 == 0.0 && v54 != 0)
            {
              v55.n128_u32[0] = *v43;
              v50 = (*(v97 + 56))(v81, v80, "</s>", v17, v55);
LABEL_80:
              v24 = v51;
LABEL_81:
              v15 = v97;
              *(v96 + 4 * v22) = 0;
              goto LABEL_82;
            }

            v50 = v54;
            if (!v36)
            {
              goto LABEL_80;
            }

            v57 = 0;
            v46 = v48 + v52;
            LOBYTE(v58) = 1;
            do
            {
              v59 = *&v43[v57];
              v58 = v58 & (v59 == 0.0);
              *&v17[v57] = *&v17[v57] + (v59 / v45);
              ++v57;
            }

            while (v36 > v57);
            if (++v47 >= v45)
            {
              v60 = 1;
            }

            else
            {
              v60 = v58;
            }

            v24 = v51;
            if (v60 == 1)
            {
              goto LABEL_81;
            }
          }

          if (strlen(&__s[4]) == 1)
          {
            a7 = v87;
            v34 = v84;
            a1 = v86;
            v15 = v97;
            if (__s[4] - 48 < 0xA)
            {
              v74 = 0;
              v75 = "NUM";
              goto LABEL_101;
            }

            if ((__s[4] & 0xDFu) - 65 >= 0x1A)
            {
              v74 = 0;
            }

            else
            {
              v74 = 1;
              v75 = "ENG";
LABEL_101:
              v50 = (*(v15 + 56))(v81, v80, v75, v17);
            }

            *(v96 + 4 * v22) = v74;
            v24 = v51;
            v23 = v82;
            goto LABEL_83;
          }

          v74 = 0;
          v75 = "</s>";
          a7 = v87;
          v34 = v84;
          a1 = v86;
          v15 = v97;
          goto LABEL_101;
        }

        v15 = v97;
        v50 = (*(v97 + 56))(v81, v37, "</s>", v17);
LABEL_82:
        a7 = v87;
        a1 = v86;
        v23 = v82;
        v34 = v84;
LABEL_83:
        heap_Free(*(a1 + 8), v43);
        if (!v50)
        {
          result = 0;
          v14 = v83;
          goto LABEL_85;
        }
      }
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v39, v40, v41, v42, v79);
      v15 = v97;
    }

    v14 = v83;
    result = (*(v15 + 56))(v83[2], v83[3], "</s>", v17);
LABEL_85:
    v26 = v88;
    goto LABEL_86;
  }

LABEL_108:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t getJointResult(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v11 = *result;
  v12 = *a2;
  if (a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = a3;
    while (1)
    {
      if (a9)
      {
        v20 = 0;
        LODWORD(result) = 0;
        v22 = 0.0;
        do
        {
          v21 = a7 + 28 * (v16 + v15);
          if (v22 >= *(v21 + 4 * v20))
          {
            result = result;
          }

          else
          {
            v22 = *(v21 + 4 * v20);
            result = v20;
          }

          ++v20;
        }

        while (v20 != 7);
        if (a4 > v16 && v15 == *(a5 + 2 * v16))
        {
          v23 = 0;
          LODWORD(result) = 0;
          v24 = (v16 + 1);
          v26 = 0.0;
          do
          {
            v25 = a7 + 28 * (v16 + v18);
            if (v26 >= *(v25 + 4 * v23))
            {
              result = result;
            }

            else
            {
              v26 = *(v25 + 4 * v23);
              result = v23;
            }

            ++v23;
          }

          while (v23 != 7);
          v27 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        *v33 = 0;
        v17 += *(a10 + 2 * v15);
        v33[0] = **(a7 + 8 * v17);
        v32 = v18;
        result = atoi(v33);
        v18 = v32;
      }

      v27 = *(a8 + 4 * v15) == 1;
      if (*(a8 + 4 * v15) == 1 || (result - 3) <= 3u)
      {
        v24 = v16;
LABEL_23:
        ++*a6;
        *(v11 + 2 * v15) = 1;
        if (v15 && v27 && !*(v11 + 2 * (v15 - 1)))
        {
          *(v11 + 2 * (v15 - 1)) = 1;
          ++*a6;
        }

        *(v12 + 2 * v15) = (result & 0xFFFD) == 4;
        goto LABEL_31;
      }

      *(v11 + 2 * v15) = 0;
      *(v12 + 2 * v15) = 0;
      v24 = v16;
LABEL_31:
      ++v15;
      ++v18;
      v16 = v24;
      if (v15 == v19)
      {
        v29 = v19 - 1;
        goto LABEL_34;
      }
    }
  }

  v29 = -1;
LABEL_34:
  if (*(v11 + 2 * v29) != 1)
  {
    ++*a6;
    *(v11 + 2 * v29) = 1;
  }

  if (*(v12 + 2 * v29) != 1)
  {
    *(v12 + 2 * v29) = 1;
  }

  return result;
}

uint64_t load_pw_cfg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    goto LABEL_8;
  }

  v10 = **&__c[3];
  v11 = strchr(**&__c[3], __c[0]);
  if (v11)
  {
    *v11 = 0;
    v10 = **&__c[3];
  }

  if (*v10 == 110 && v10[1] == 111)
  {
    v12 = v10[2] != 0;
  }

  else
  {
LABEL_8:
    v12 = 1;
  }

  *(a4 + 8) = v12;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    a4[36] = 0;
  }

  else
  {
    v13 = **&__c[3];
    v14 = strchr(**&__c[3], __c[0]);
    if (v14)
    {
      *v14 = 0;
      v13 = **&__c[3];
    }

    strcpy(a4 + 36, v13);
  }

  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v15 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_auxiliarywords", &__c[3], &__c[1], __c);
  if ((v15 & 0x80000000) != 0)
  {
    v20 = -1979703276;
  }

  else
  {
    v16 = v15;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      goto LABEL_23;
    }

    v17 = strlen(**&__c[3]);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(**&__c[3], v17);
    *a4 = ChineseUTFCharNum;
    v19 = heap_Alloc(*(a5 + 8), 8 * ChineseUTFCharNum);
    *(a4 + 1) = v19;
    v20 = -1979703286;
    if (v19)
    {
      if (*a4)
      {
        v21 = 0;
        v22 = **&__c[3];
        while (1)
        {
          v23 = utf8_determineUTF8CharLength(*v22);
          *(*(a4 + 1) + 8 * v21) = heap_Calloc(*(a5 + 8), 1, v23 + 1);
          v24 = *(a4 + 1);
          v25 = *(v24 + 8 * v21);
          if (!v25)
          {
            break;
          }

          memcpy(v25, v22, v23);
          *(*(*(a4 + 1) + 8 * v21) + v23) = 0;
          v22 += v23;
          if (++v21 >= *a4)
          {
            goto LABEL_23;
          }
        }

        heap_Free(*(a5 + 8), v24);
        v20 = -1979703286;
        goto LABEL_26;
      }

LABEL_23:
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  LODWORD(v16) = v20;
LABEL_27:
  *(a4 + 1) = 0;
  if (v16 == -1979703286)
  {
    v16 = 2315264010;
  }

  else
  {
    v16 = 0;
  }

LABEL_30:
  a4[16] = 0;
  *(a4 + 3) = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v26 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_custermizedchar", &__c[3], &__c[1], __c);
  if (v26 < 0)
  {
    v27 = -1979703276;
  }

  else
  {
    v27 = v26;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      a4[16] = 0;
      goto LABEL_41;
    }

    *(**&__c[3] + strlen(**&__c[3]) - 1) = 0;
    v28 = Utf8_Utf8NbrOfSymbols(**&__c[3]);
    a4[16] = v28 - 1;
    v29 = heap_Alloc(*(a5 + 8), 8 * (v28 - 1));
    *(a4 + 3) = v29;
    if (v29)
    {
      if (!a4[16])
      {
        goto LABEL_42;
      }

      v30 = 0;
      v31 = **&__c[3];
      while (1)
      {
        v32 = utf8_determineUTF8CharLength(*v31);
        *(*(a4 + 3) + 8 * v30) = heap_Calloc(*(a5 + 8), 1, v32 + 1);
        v33 = *(a4 + 3);
        v34 = *(v33 + 8 * v30);
        if (!v34)
        {
          break;
        }

        memcpy(v34, v31, v32);
        *(*(*(a4 + 3) + 8 * v30) + v32) = 0;
        v31 += v32;
        if (++v30 >= a4[16])
        {
          goto LABEL_42;
        }
      }

      heap_Free(*(a5 + 8), v33);
      v27 = -1979703286;
LABEL_41:
      *(a4 + 3) = 0;
LABEL_42:
      if (!v27)
      {
        return v16;
      }

      goto LABEL_45;
    }

    v27 = -1979703286;
  }

LABEL_45:
  *(a4 + 3) = 0;
  if (v27 == -1979703286)
  {
    return 2315264010;
  }

  else
  {
    return v16;
  }
}

void *freePwTids(void *result, uint64_t a2)
{
  v2 = *(a2 + 1064);
  if (v2)
  {
    v4 = *(a2 + 1072);
    if (*(a2 + 1072))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = heap_Free(v5[1], v8);
          v2 = *(a2 + 1064);
          *(v2 + v6) = 0;
          v4 = *(a2 + 1072);
        }

        ++v7;
        v6 += 184;
      }

      while (v7 < v4);
    }
  }

  return result;
}

void *freePWInfo(void *result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 1064);
  if (v3)
  {
    v5 = result;
    v7 = *(v3 + 184 * a3 + 40);
    if (v7)
    {
      result = heap_Free(result[1], v7);
      v3 = *(a2 + 1064);
    }

    v8 = *(v3 + 184 * a3 + 24);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      v3 = *(a2 + 1064);
    }

    v9 = v3 + 184 * a3;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
  }

  return result;
}

uint64_t pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t ****a6, uint64_t a7, void *a8, int a9, void *a10, uint64_t a11, int a12, int a13)
{
  v305 = *MEMORY[0x1E69E9840];
  v298 = 0;
  v299 = 0;
  v297 = 0;
  v296 = 0;
  v293 = "";
  v294 = 0;
  v292 = 0;
  v289 = 0;
  v287 = 0;
  v288 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  BYTE2(v280[1]) = 0;
  strcpy(v280, "latin");
  v304 = 0u;
  v303 = 0u;
  v302 = 0u;
  v301 = 0u;
  v278 = 0;
  v279 = 0;
  v13 = 2315264007;
  if (a3)
  {
    v14 = a4;
    if (a4)
    {
      v15 = a5;
      if (a5)
      {
        if (a6 && a7 && a8)
        {
          v18 = a3;
          bzero(v285, 0x404uLL);
          *(v15 + 1088) = 0;
          *(v15 + 1064) = 0;
          if (*(v15 + 1098) != 1)
          {
            v13 = 0;
            goto LABEL_180;
          }

          v295 = 0;
          v291 = 0;
          v290 = 0;
          v266 = (v15 + 1088);
          v13 = (*(v18 + 176))(a1, a2, *(v15 + 1096), 0);
          if ((v13 & 0x80000000) == 0 && HIWORD(v299) >= 2u)
          {
            v21 = *(v15 + 1096);
            *v300 = 0;
            LODWORD(v277) = 0;
            *__s1 = 0;
            LOWORD(v274) = 0;
            LOWORD(v273) = 0;
            v271 = a2;
            v22 = (*(v18 + 104))(a1, a2, 2, v21, v300);
            v23 = v22;
            v270 = v18;
            v267 = a1;
            if ((v22 & 0x80000000) == 0)
            {
              v24 = *v300;
              if (*v300)
              {
                v263 = v15;
                v25 = 0;
                while (1)
                {
                  v26 = (*(v18 + 168))(a1, v271, v24, 0, 1, &v277, __s1);
                  if ((v26 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (v277 > 0xA || ((1 << v277) & 0x610) == 0)
                  {
                    v31 = 0;
                    v30 = *v300;
                    v32 = v271;
                  }

                  else
                  {
                    v26 = (*(v18 + 168))(a1, v271, *v300, 1, 1, &v274, __s1);
                    if ((v26 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v26 = (*(v18 + 168))(a1, v271, *v300, 2, 1, &v273, __s1);
                    if ((v26 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v29 = v274 > v25 || v25 < v273;
                    v30 = *v300;
                    if (v29)
                    {
                      v25 = v273;
                      v31 = 0;
                    }

                    else
                    {
                      v31 = *v300;
                    }

                    v32 = v271;
                    a1 = v267;
                  }

                  v26 = (*(v270 + 120))(a1, v32, v30, v300);
                  if ((v26 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (v31)
                  {
                    log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "%s", v33, v34, v35, "Dropping nested word record");
                    v26 = (*(v270 + 192))(a1, v271, v31);
                    if ((v26 & 0x80000000) != 0)
                    {
                      break;
                    }
                  }

                  v24 = *v300;
                  v18 = v270;
                  if (!*v300)
                  {
                    goto LABEL_38;
                  }
                }

                v23 = v26;
                v47 = 0;
                v108 = 0;
                v66 = 0;
                v107 = 0;
LABEL_137:
                v15 = v263;
                goto LABEL_144;
              }
            }

            if ((v22 & 0x80000000) != 0)
            {
              v47 = 0;
              v108 = 0;
              v66 = 0;
              v107 = 0;
              goto LABEL_144;
            }

LABEL_38:
            v36 = (*(v18 + 104))(a1, v271, 2, *(v15 + 1096), &v299);
            v13 = v36;
            if ((v36 & 0x80000000) != 0)
            {
              v47 = 0;
              v108 = 0;
              v107 = 0;
              v23 = v36;
              v66 = 0;
              goto LABEL_144;
            }

            v40 = v299;
            if (!v299)
            {
              goto LABEL_140;
            }

            v262 = v14;
            v260 = 0;
            v41 = 0;
            v265 = 0;
            v264 = 0;
            v23 = -1979703286;
            v256 = (v15 + 1064);
            while (1)
            {
              v42 = (*(v270 + 120))(a1, v271, v40, &v298 + 2);
              if ((v42 & 0x80000000) != 0)
              {
                break;
              }

              v43 = (*(v270 + 168))(a1, v271, v299, 0, 1, &v295, &v299 + 2);
              v13 = v43;
              if ((v43 & 0x80000000) != 0)
              {
                v108 = 0;
                v107 = 0;
                v23 = v43;
                v66 = 0;
                goto LABEL_143;
              }

              v44 = v295;
              if (v295 > 0xA || ((1 << v295) & 0x610) == 0)
              {
                a1 = v267;
              }

              else
              {
                v46 = (*(v270 + 168))(v267, v271, v299, 1, 1, &v298, &v299 + 2);
                if ((v46 & 0x80000000) != 0)
                {
                  goto LABEL_181;
                }

                v13 = (*(v270 + 168))(v267, v271, v299, 2, 1, &v297 + 2, &v299 + 2);
                if ((v13 & 0x80000000) != 0)
                {
                  goto LABEL_180;
                }

                a1 = v267;
                if (!v298 || v264 + 1 == v298 && HIWORD(v297) > v298)
                {
                  ++v265;
                  v264 = HIWORD(v297);
                }

                v44 = v295;
              }

              if (v44 == 5)
              {
                v13 = (*(v270 + 176))(a1, v271, v299, 4, &v288, &v299 + 2);
                if ((v13 & 0x80000000) != 0)
                {
                  goto LABEL_180;
                }

                if (HIWORD(v299))
                {
                  if (!strncmp(v288, "prompt", HIWORD(v299)))
                  {
                    ++v41;
                    if (v260 <= 0x7F)
                    {
                      v46 = (*(v270 + 168))(a1, v271, v299, 1, 1, &v298, &v299 + 2);
                      if ((v46 & 0x80000000) != 0)
                      {
LABEL_181:
                        v13 = v46;
                        goto LABEL_180;
                      }

                      v13 = (*(v270 + 168))(a1, v271, v299, 2, 1, &v297 + 2, &v299 + 2);
                      if ((v13 & 0x80000000) != 0)
                      {
                        goto LABEL_180;
                      }

                      v285[v260] = v298;
                      v285[v286 + 128] = HIWORD(v297);
                      v260 = ++v286;
                      a1 = v267;
                    }
                  }
                }
              }

              v40 = HIWORD(v298);
              LOWORD(v299) = HIWORD(v298);
              if (!HIWORD(v298))
              {
                if (v41 >= 0x81u)
                {
                  log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v37, v38, v39, v41);
                }

                v47 = v265;
                if (v265)
                {
                  v263 = v15;
                  v48 = v265;
                  v49 = heap_Calloc(*(v262 + 8), v265, 40);
                  if (!v49)
                  {
                    log_OutPublic(*(v262 + 32), "FE_PHRASING", 37000, 0, v50, v51, v52, v53, v247);
                    v108 = 0;
                    v66 = 0;
                    v107 = 0;
                    v14 = v262;
                    goto LABEL_137;
                  }

                  v261 = v49;
                  v54 = (v49 + 8);
                  do
                  {
                    v55 = heap_Calloc(*(v262 + 8), 128, 1);
                    *(v54 - 1) = v55;
                    if (!v55)
                    {
                      log_OutPublic(*(v262 + 32), "FE_PHRASING", 37000, 0, v56, v57, v58, v59, v247);
                      v66 = 0;
                      v107 = 0;
                      v14 = v262;
                      goto LABEL_185;
                    }

                    v60 = heap_Calloc(*(v262 + 8), 1, 64);
                    *v54 = v60;
                    if (!v60)
                    {
                      v14 = v262;
                      log_OutPublic(*(v262 + 32), "FE_PHRASING", 37000, 0, v61, v62, v63, v64, v247);
                      v66 = 0;
                      v107 = 0;
                      goto LABEL_185;
                    }

                    v54 += 5;
                    --v48;
                  }

                  while (v48);
                  v15 = v263;
                  v65 = (*(v270 + 104))(a1, v271, 2, *(v263 + 548), &v299);
                  if ((v65 & 0x80000000) != 0)
                  {
                    v66 = 0;
                    v107 = 0;
                  }

                  else
                  {
                    v65 = (*(v270 + 176))(a1, v271, *(v263 + 548), 0, v266, &v299 + 2);
                    v66 = 0;
                    if ((v65 & 0x80000000) == 0 && HIWORD(v299) >= 2u)
                    {
                      v67 = v299;
                      v68 = v267;
                      if (v299)
                      {
                        v257 = 0;
                        v69 = 0;
                        while (1)
                        {
                          v70 = (*(v270 + 120))(v68, v271, v67, &v298 + 2);
                          if ((v70 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v70 = (*(v270 + 168))(v68, v271, v299, 0, 1, &v295, &v299 + 2);
                          if ((v70 & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v295 > 0xA || ((1 << v295) & 0x610) == 0)
                          {
                            v68 = v267;
                          }

                          else
                          {
                            v70 = (*(v270 + 168))(v267, v271, v299, 1, 1, &v298, &v299 + 2);
                            if ((v70 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v70 = (*(v270 + 168))(v267, v271, v299, 2, 1, &v297 + 2, &v299 + 2);
                            if ((v70 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v68 = v267;
                            if (!v298 || v69 + 1 == v298 && HIWORD(v297) > v298)
                            {
                              v72 = (*(v270 + 176))(v267, v271, v299, 3, &v287, &v299 + 2);
                              if ((v72 & 0x80000000) != 0)
                              {
                                v66 = 0;
                                v107 = 0;
                                v23 = v72;
                                goto LABEL_419;
                              }

                              v73 = v287;
                              v74 = &v261[5 * v257];
                              if (strstr(v287, "comma"))
                              {
                                *(v74 + 13) = 11;
                              }

                              else
                              {
                                *(v74 + 13) = 1;
                                v75 = strchr(v73, 46);
                                v292 = v75;
                                if (v75)
                                {
                                  v76 = 1;
                                  do
                                  {
                                    v77 = v75 + 1;
                                    v292 = v77;
                                    *(v74 + 13) = ++v76;
                                    v75 = strchr(v77, 46);
                                    v292 = v75;
                                  }

                                  while (v75);
                                }
                              }

                              v78 = v298;
                              if (v298 >= HIWORD(v297))
                              {
                                v84 = 1;
                              }

                              else
                              {
                                v79 = 0;
                                do
                                {
                                  IsChineseLetter = utf8_IsChineseLetter(&(*v266)[v78]);
                                  v81 = (*v266)[v78];
                                  if (v81 > 0x3E || ((1 << v81) & 0x4C00510000000000) == 0)
                                  {
                                    v83 = 1;
                                  }

                                  else
                                  {
                                    v83 = v79;
                                  }

                                  if (!IsChineseLetter)
                                  {
                                    v79 = v83;
                                  }

                                  v78 += utf8_determineUTF8CharLength((*v266)[v78]);
                                }

                                while (v78 < HIWORD(v297));
                                v84 = v79 == 0;
                              }

                              v85 = &v261[5 * v257];
                              *(v85 + 12) = v299;
                              if (!a12)
                              {
                                TNmarker = (*(v270 + 176))(v267, v271);
                                if ((TNmarker & 0x80000000) != 0)
                                {
                                  goto LABEL_134;
                                }

                                if (!hlp_NLUStrFind(v293, "POS", &v291, &v290))
                                {
                                  v66 = 0;
                                  v107 = 0;
                                  v23 = -1979703296;
LABEL_419:
                                  v14 = v262;
LABEL_192:
                                  v15 = v263;
LABEL_193:
                                  v47 = v265;
LABEL_186:
                                  v108 = v261;
                                  goto LABEL_144;
                                }

                                *v85[1] = 0;
                                if (v84)
                                {
                                  strncat(v85[1], v291, v290);
                                }

                                else
                                {
                                  *(v85[1] + strlen(v85[1])) = 7237486;
                                }

                                v68 = v267;
                              }

                              if (((*(v270 + 184))(v68, v271, v299, 9, &v299 + 2) & 0x80000000) == 0 && HIWORD(v299) == 1)
                              {
                                TNmarker = (*(v270 + 176))(v68, v271, v299, 9, v85 + 2, &v299 + 2);
                                if ((TNmarker & 0x80000000) != 0)
                                {
                                  goto LABEL_134;
                                }
                              }

                              v87 = HIWORD(v297);
                              v88 = v298;
                              v89 = HIWORD(v297) - v298;
                              v90 = *v85;
                              if (v89 >= 128)
                              {
                                v91 = heap_Realloc(*(v262 + 8), *v85, (v89 + 1));
                                *v85 = v91;
                                if (!v91)
                                {
                                  v14 = v262;
                                  log_OutPublic(*(v262 + 32), "FE_PHRASING", 37000, 0, v92, v93, v94, v95, v247);
                                  v66 = 0;
                                  v107 = 0;
                                  goto LABEL_192;
                                }

                                v90 = v91;
                                v88 = v298;
                                v87 = HIWORD(v297);
                              }

                              memcpy(v90, &(*v266)[v88], v87 - v88);
                              *(*v85 - v298 + HIWORD(v297)) = 0;
                              v69 = HIWORD(v297);
                              *(v85 + 7) = v298;
                              *(v85 + 8) = v69;
                              ++v257;
                              v47 = v265;
                            }
                          }

                          v67 = HIWORD(v298);
                          LOWORD(v299) = HIWORD(v298);
                          if (!HIWORD(v298))
                          {
                            goto LABEL_123;
                          }
                        }

                        v66 = 0;
                        v107 = 0;
                        v23 = v70;
                        v14 = v262;
LABEL_185:
                        v15 = v263;
                        goto LABEL_186;
                      }

LABEL_123:
                      v14 = v262;
                      word_separating_markers = pw_get_word_separating_markers(v270, v262, v68, v271, *(v263 + 548), &v284, &v283);
                      if ((word_separating_markers & 0x80000000) != 0)
                      {
                        v66 = 0;
                        v107 = 0;
                        v23 = word_separating_markers;
                        goto LABEL_192;
                      }

                      v100 = v283;
                      log_OutText(*(v262 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v97, v98, v99, v283);
                      if (v100)
                      {
                        v104 = 0;
                        v105 = v284;
                        do
                        {
                          log_OutText(*(v262 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v101, v102, v103, v105[v104++]);
                        }

                        while (v100 > v104);
                      }

                      TNmarker = getTNmarker(*(v263 + 548), v262, v270, v267, v271, &v279);
                      if ((TNmarker & 0x80000000) != 0 || (v106 = v279, *a10 = v279, *(v263 + 536) = 0, *(v263 + 133) = 0, TNmarker = pw_nn_process(v262, a6, v261, v265, &v282, &v297, a7, a8, a9, v106, v263[16], *(v263 + 3), a13), (TNmarker & 0x80000000) != 0) || (paramc_ParamGetStr(*(v262 + 40), "spaceInPYT", &v294) & 0x80000000) == 0 && !LH_stricmp(v294, "yes") && (TNmarker = pw_PYT_process(v270, v267, v271, v262, v261, v265, v284, v100, &v282, &v297), (TNmarker & 0x80000000) != 0))
                      {
LABEL_134:
                        v66 = 0;
                        v107 = 0;
                        v23 = TNmarker;
                      }

                      else
                      {
                        v269 = (v263 + 1072);
                        if (*(v263 + 8) == 1)
                        {
                          TNmarker = pw_group_csc(v262, v285, v261, v265, v263 + 36, v282, v297, v256, v269, *v263, *(v263 + 1));
                          if ((TNmarker & 0x80000000) != 0)
                          {
                            goto LABEL_134;
                          }
                        }

                        else
                        {
                          *v269 = v297;
                          *v256 = v282;
                          v282 = 0;
                          LOWORD(v297) = 0;
                        }

                        v120 = pw_respect_word_separating_markers(v270, v262, v267, v271, *(v263 + 548), v256, v269);
                        if ((v120 & 0x80000000) != 0 || a11 && (v120 = pw_igtree_process(v262, v261, v256, v269, v265, a11), (v120 & 0x80000000) != 0))
                        {
                          v66 = 0;
                          v107 = 0;
                          v23 = v120;
                        }

                        else
                        {
                          if (!*v266)
                          {
                            v14 = v262;
                            v15 = v263;
                            freePwTids(v262, v263);
                            v66 = 0;
                            v107 = 0;
                            v23 = v120;
                            goto LABEL_193;
                          }

                          __s = heap_Calloc(*(v262 + 8), 1024, 1);
                          if (__s)
                          {
                            v107 = heap_Calloc(*(v262 + 8), 64, 1);
                            if (!v107)
                            {
                              goto LABEL_423;
                            }

                            v121 = strlen(*(v263 + 136));
                            v122 = heap_Calloc(*(v262 + 8), *(v263 + 536), v121 + 2);
                            *(v263 + 135) = v122;
                            if (!v122)
                            {
                              goto LABEL_423;
                            }

                            if (*v269)
                            {
                              v126 = 0;
                              v127 = 0;
                              v249 = 64;
                              v251 = 1024;
                              while (1)
                              {
                                v258 = v127;
                                v128 = (*v256 + 184 * v127);
                                if (*(v128 + 4) == 1)
                                {
                                  break;
                                }

                                if (!*(v128 + 4))
                                {
                                  v14 = v262;
                                  log_OutText(*(v262 + 32), "FE_PHRASING", 5, 0, "Error: the prosody word should has at least one lexical word", v123, v124, v125, v248);
LABEL_424:
                                  v15 = v263;
                                  v47 = v265;
                                  v108 = v261;
                                  v66 = __s;
LABEL_144:
                                  if (v278)
                                  {
                                    heap_Free(*(v14 + 8), v278);
                                    v278 = 0;
                                  }

                                  if ((v23 & 0x80000000) != 0)
                                  {
                                    v109 = v279;
                                    if (v279)
                                    {
                                      v110 = *(v279 + 8);
                                      if (v110)
                                      {
                                        heap_Free(*(v14 + 8), v110);
                                      }

                                      *(v109 + 8) = 0;
                                      heap_Free(*(v14 + 8), v109);
                                      v279 = 0;
                                    }

                                    freePwTids(v14, v15);
                                  }

                                  if (v284)
                                  {
                                    heap_Free(*(v14 + 8), v284);
                                  }

                                  if (v108)
                                  {
                                    if (v47)
                                    {
                                      v111 = v47;
                                      v112 = (v108 + 8);
                                      do
                                      {
                                        v113 = *(v112 - 1);
                                        if (v113)
                                        {
                                          heap_Free(*(v14 + 8), v113);
                                          *(v112 - 1) = 0;
                                        }

                                        if (*v112)
                                        {
                                          heap_Free(*(v14 + 8), *v112);
                                          *v112 = 0;
                                        }

                                        v112 += 5;
                                        --v111;
                                      }

                                      while (v111);
                                    }

                                    heap_Free(*(v14 + 8), v108);
                                  }

                                  v114 = v282;
                                  if (v282)
                                  {
                                    v115 = v297;
                                    if (v297)
                                    {
                                      v116 = v282;
                                      do
                                      {
                                        if (*v116)
                                        {
                                          heap_Free(*(v14 + 8), *v116);
                                          *v116 = 0;
                                        }

                                        v116 += 23;
                                        --v115;
                                      }

                                      while (v115);
                                    }

                                    heap_Free(*(v14 + 8), v114);
                                    v282 = 0;
                                  }

                                  if (v66)
                                  {
                                    heap_Free(*(v14 + 8), v66);
                                  }

                                  if (v107)
                                  {
                                    heap_Free(*(v14 + 8), v107);
                                  }

                                  if (v297)
                                  {
                                    v117 = 0;
                                  }

                                  else
                                  {
                                    v117 = v23 == -1979703288;
                                  }

                                  if (v117)
                                  {
                                    v13 = 0;
                                  }

                                  else
                                  {
                                    v13 = v23;
                                  }

                                  goto LABEL_180;
                                }

                                v277 = 0;
                                v129 = strlen(*v266);
                                bzero(__s, 0x400uLL);
                                *(v107 + 32) = 0u;
                                *(v107 + 48) = 0u;
                                *v107 = 0u;
                                *(v107 + 16) = 0u;
                                v304 = 0u;
                                v303 = 0u;
                                v302 = 0u;
                                v301 = 0u;
                                v130 = *v256;
                                v131 = *v256 + 184 * v258;
                                if (*(v131 + 8))
                                {
                                  v132 = 0;
                                  v133 = 0;
                                  v254 = 1;
                                  while (1)
                                  {
                                    v134 = (*(v270 + 168))(v267, v271, *(*v131 + 2 * v132), 1, 1, &v298, &v299 + 2);
                                    if ((v134 & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    v134 = (*(v270 + 168))(v267, v271, *(*(*v256 + 184 * v258) + 2 * v132), 2, 1, &v297 + 2, &v299 + 2);
                                    if ((v134 & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    v134 = (*(v270 + 176))(v267, v271, *(*(*v256 + 184 * v258) + 2 * v132), 3, &v287, &v299 + 2);
                                    if ((v134 & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    if (a12 && ((*(v270 + 184))(v267, v271, v299, 14, &v289), v289 != 1))
                                    {
                                      v252 = 0;
                                      v253 = 1;
                                    }

                                    else
                                    {
                                      v134 = (*(v270 + 176))(v267, v271, *(*(*v256 + 184 * v258) + 2 * v132), 14, &v293, &v299 + 2);
                                      if ((v134 & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v253 = 0;
                                      v252 = 1;
                                    }

                                    if (!v132)
                                    {
                                      *(*v256 + 184 * v258 + 16) = v298;
                                    }

                                    if ((v253 & 1) == 0)
                                    {
                                      v135 = *(v262 + 8);
                                      v136 = strlen(v293);
                                      v137 = v136;
                                      if (v278)
                                      {
                                        v138 = strlen(v278);
                                        v139 = heap_Realloc(v135, v278, v137 + v138 + 2);
                                        if (!v139)
                                        {
                                          goto LABEL_423;
                                        }

                                        v140 = v139;
                                        v278 = v139;
                                        *&v139[strlen(v139)] = 59;
                                        strcat(v140, v293);
                                      }

                                      else
                                      {
                                        v141 = heap_Alloc(v135, v136 + 1);
                                        v278 = v141;
                                        if (!v141)
                                        {
                                          goto LABEL_423;
                                        }

                                        strcpy(v141, v293);
                                      }
                                    }

                                    if (v254)
                                    {
                                      v254 = 0;
                                      v250 = 1;
                                      if (((*(v270 + 184))(v267, v271, *(*(*v256 + 184 * v258) + 2 * v132), 10, &v289) & 0x80000000) == 0 && v289 == 1)
                                      {
                                        v134 = (*(v270 + 176))(v267, v271, *(*(*v256 + 184 * v258) + 2 * v132), 10, &v277, &v299 + 2);
                                        if ((v134 & 0x80000000) != 0)
                                        {
                                          break;
                                        }

                                        v250 = 0;
                                        v254 = 1;
                                      }
                                    }

                                    else
                                    {
                                      v254 = 0;
                                      v250 = 1;
                                    }

                                    v142 = v287;
                                    if (v132)
                                    {
                                      v143 = strlen(__s);
                                      if (v143 + strlen(v287) + 1 > v251)
                                      {
                                        v144 = heap_Realloc(*(v262 + 8), __s, (v251 + 1024));
                                        if (!v144)
                                        {
                                          goto LABEL_423;
                                        }

                                        __s = v144;
                                        v251 += 1024;
                                      }

                                      (*v266)[v298 - 1] = 45;
                                      v142 = v287;
                                      if (*v287)
                                      {
                                        *&__s[strlen(__s)] = 46;
                                        v142 = v287;
                                      }

                                      v145 = *(*(*v256 + 184 * v258) + 2 * v132);
                                      v146 = strstr(v142, "{SEP");
                                      v292 = v146;
                                      if (v146)
                                      {
                                        v292 = v146 + 4;
                                        v146[4] += v133;
                                        v142 = v287;
                                      }
                                    }

                                    else
                                    {
                                      v145 = 0;
                                    }

                                    strcat(__s, v142);
                                    if ((v253 & 1) == 0 && hlp_NLUStrFind(v293, "POS", &v291, &v290))
                                    {
                                      if (strlen(v107) + v290 + 2 > v249)
                                      {
                                        v147 = heap_Realloc(*(v262 + 8), v107, (v249 + 64) + 1);
                                        if (!v147)
                                        {
                                          goto LABEL_423;
                                        }

                                        v107 = v147;
                                        v249 += 64;
                                      }

                                      if (*v107)
                                      {
                                        *(v107 + strlen(v107)) = 45;
                                      }

                                      strncat(v107, v291, v290);
                                    }

                                    v148 = v254;
                                    if (!v277)
                                    {
                                      v148 = 0;
                                    }

                                    if (v148 == 1)
                                    {
                                      __strcat_chk();
                                    }

                                    v149 = v287;
                                    if (v287)
                                    {
                                      do
                                      {
                                        v150 = v149;
                                        v151 = v133;
                                        v133 = 0;
                                        v292 = strstr(v149, "{SEP");
                                        v149 = v292 + 1;
                                      }

                                      while (v292);
                                      for (i = v150; ; i = v153 + 1)
                                      {
                                        v153 = strchr(i, 46);
                                        v292 = v153;
                                        if (!v153)
                                        {
                                          break;
                                        }

                                        ++v151;
                                      }
                                    }

                                    else
                                    {
                                      v151 = v133;
                                    }

                                    if (v145)
                                    {
                                      v134 = (*(v270 + 192))(v267, v271, v145);
                                      if ((v134 & 0x80000000) != 0)
                                      {
                                        break;
                                      }
                                    }

                                    v133 = v151 + 1;
                                    ++v132;
                                    v130 = *v256;
                                    v131 = *v256 + 184 * v258;
                                    if (v132 >= *(v131 + 8))
                                    {
                                      goto LABEL_271;
                                    }
                                  }

LABEL_422:
                                  v23 = v134;
                                  goto LABEL_423;
                                }

                                v250 = 0;
                                v252 = v126;
LABEL_271:
                                if (v252)
                                {
                                  v134 = pw_merge_NLU(v262, &v278);
                                  if ((v134 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v130 = *v256;
                                }

                                if (*(v263 + 8) == 1)
                                {
                                  pw_split_csc_pw(v130 + 184 * v258, __s);
                                  v130 = *v256;
                                }

                                v134 = (*(v270 + 160))(v267, v271, **(v130 + 184 * v258), 2, 1, &v297 + 2, &v296);
                                if ((v134 & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                v156 = v258 + v258 * v129;
                                v157 = HIWORD(v297);
                                v158 = *(v263 + 133) + 184 * v258;
                                *(v158 + 18) = HIWORD(v297);
                                v159 = *(v158 + 16);
                                v160 = (v157 - v159);
                                memcpy((*(v263 + 135) + v156), (*(v263 + 136) + v159), v160);
                                *(*(v263 + 135) + v156 + v160) = 0;
                                v161 = (*(v263 + 133) + 184 * v258);
                                v161[7] = (*(v263 + 135) + v156);
                                v162 = **v161;
                                v163 = strlen(__s);
                                v134 = (*(v270 + 160))(v267, v271, v162, 3, (v163 + 1), __s, &v296);
                                if ((v134 & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                v164 = strlen(__s);
                                v165 = heap_Alloc(*(v262 + 8), v164 + 1);
                                *(*v256 + 184 * v258 + 24) = v165;
                                if (!v165)
                                {
                                  goto LABEL_423;
                                }

                                strcpy(v165, __s);
                                if (v252)
                                {
                                  v166 = v278;
                                  hlp_NLUStrRemoveKeyVal(v278, "POS");
                                  hlp_NLUStrSet(v166, "POS", v107);
                                  v167 = v278;
                                  v168 = strlen(v278);
                                  (*(v270 + 160))(v267, v271, **(*v256 + 184 * v258), 14, (v168 + 1), v278, &v296);
                                  v169 = strlen(v167);
                                  v170 = heap_Alloc(*(v262 + 8), v169 + 1);
                                  *(*v256 + 184 * v258 + 40) = v170;
                                  if (!v170)
                                  {
                                    goto LABEL_423;
                                  }

                                  strcpy(v170, v167);
                                  v293 = "";
                                  if (v167)
                                  {
                                    heap_Free(*(v262 + 8), v167);
                                    v278 = 0;
                                  }
                                }

                                if ((v250 & 1) == 0)
                                {
                                  v171 = strlen(&v301);
                                  v134 = (*(v270 + 160))(v267, v271, **(*v256 + 184 * v258), 10, (v171 + 1), &v301, &v296);
                                  if ((v134 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }
                                }

LABEL_295:
                                v127 = v258 + 1;
                                v126 = v252;
                                if (*v269 <= (v258 + 1))
                                {
                                  goto LABEL_296;
                                }
                              }

                              v154 = strlen(*v266);
                              v134 = (*(v270 + 168))(v267, v271, **v128, 1, 1, v128 + 2, &v299 + 2);
                              if ((v134 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v134 = (*(v270 + 168))(v267, v271, **(*v256 + 184 * v258), 2, 1, *v256 + 184 * v258 + 18, &v299 + 2);
                              if ((v134 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v134 = (*(v270 + 176))(v267, v271, **(*v256 + 184 * v258), 3, &v287, &v299 + 2);
                              if ((v134 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              if (a12)
                              {
                                v134 = (*(v270 + 184))(v267, v271, v299, 14, &v289);
                                v252 = v289;
                                if (!v289)
                                {
                                  goto LABEL_269;
                                }

                                if (v289 != 1)
                                {
                                  if ((v134 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v252 = v126;
                                  if (!v126)
                                  {
LABEL_269:
                                    v252 = 0;
                                    v293 = 0;
                                    v155 = 1;
LABEL_289:
                                    v172 = v258 + v258 * v154;
                                    v173 = *(v263 + 133) + 184 * v258;
                                    v174 = *(v173 + 18);
                                    v175 = *(v173 + 16);
                                    v176 = (v174 - v175);
                                    memcpy((*(v263 + 135) + v172), (*(v263 + 136) + v175), v176);
                                    *(*(v263 + 135) + v172 + v176) = 0;
                                    v177 = *(v263 + 133);
                                    *(v177 + 184 * v258 + 56) = *(v263 + 135) + v172;
                                    if (v155)
                                    {
                                      *(v177 + 184 * v258 + 40) = 0;
                                    }

                                    else
                                    {
                                      v178 = strlen(v293);
                                      v179 = heap_Alloc(*(v262 + 8), v178 + 1);
                                      *(*v256 + 184 * v258 + 40) = v179;
                                      if (!v179)
                                      {
                                        goto LABEL_423;
                                      }

                                      strcpy(v179, v293);
                                    }

                                    v180 = strlen(v287);
                                    v181 = heap_Alloc(*(v262 + 8), v180 + 1);
                                    *(*v256 + 184 * v258 + 24) = v181;
                                    if (!v181)
                                    {
                                      goto LABEL_423;
                                    }

                                    strcpy(v181, v287);
                                    goto LABEL_295;
                                  }
                                }
                              }

                              else
                              {
                                v252 = 1;
                              }

                              v134 = (*(v270 + 176))(v267, v271, **(*v256 + 184 * v258), 14, &v293, &v299 + 2);
                              if ((v134 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v155 = 0;
                              goto LABEL_289;
                            }

LABEL_296:
                            freePwTids(v262, v263);
                            *(v263 + 537) = *(v263 + 536);
                            v23 = (*(v270 + 104))(v267, v271, 2, *(v263 + 548), &v299);
                            if ((v23 & 0x80000000) != 0)
                            {
                              goto LABEL_423;
                            }

                            bzero(__s, 0x400uLL);
                            *(v107 + 32) = 0u;
                            *(v107 + 48) = 0u;
                            *v107 = 0u;
                            *(v107 + 16) = 0u;
                            v304 = 0u;
                            v303 = 0u;
                            v302 = 0u;
                            v301 = 0u;
                            HIWORD(v298) = 0;
                            v182 = v299;
                            if (!v299)
                            {
LABEL_423:
                              v14 = v262;
                              goto LABEL_424;
                            }

                            v183 = 0;
                            LOWORD(v259) = 0;
                            v184 = 0;
                            while (2)
                            {
                              v134 = (*(v270 + 120))(v267, v271, v182, &v298 + 2);
                              if ((v134 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v23 = (*(v270 + 168))(v267, v271, v299, 0, 1, &v295, &v299 + 2);
                              if ((v23 & 0x80000000) != 0)
                              {
                                goto LABEL_423;
                              }

                              if (v295 <= 0xA && ((1 << v295) & 0x610) != 0)
                              {
                                v186 = *v256;
                                v187 = *v256 + 184 * v183;
                                *(v187 + 36) = v295;
                                LOWORD(v298) = *(v187 + 16);
                                v188 = *(v187 + 18);
                                HIWORD(v297) = v188;
                                if (v298)
                                {
                                  if (v184 + 1 != v298 || v188 <= v298)
                                  {
                                    goto LABEL_396;
                                  }
                                }

                                v277 = 0;
                                v190 = v186 + 184 * v183;
                                v287 = *(v190 + 24);
                                v293 = 0;
                                v293 = *(v190 + 40);
                                if (((*(v270 + 184))(v267, v271, v299, 10, &v289) & 0x80000000) == 0 && v289 == 1)
                                {
                                  v23 = (*(v270 + 176))(v267, v271, v299, 10, &v277, &v299 + 2);
                                  if ((v23 & 0x80000000) != 0)
                                  {
                                    goto LABEL_423;
                                  }
                                }

                                if (HIWORD(v297) - v298 > 5)
                                {
                                  v191 = 0;
LABEL_344:
                                  if (checkAttachedPunc(*(*v256 + 184 * v183 + 56)))
                                  {
                                    LOBYTE(v281) = 0;
                                  }

                                  else
                                  {
                                    v210 = &(*v266)[HIWORD(v297)];
                                    v211 = *(v210 - 1);
                                    LOWORD(v281) = *(v210 - 3);
                                    HIWORD(v281) = v211;
                                  }

                                  goto LABEL_347;
                                }

                                *v300 = 0;
                                v276 = 0;
                                *__s1 = 0;
                                v192 = HIWORD(v297) - v298;
                                v193 = *v266;
                                __memcpy_chk();
                                v300[v192] = 0;
                                if (utf8_IsChineseLetter(v300))
                                {
                                  v194 = v283;
                                  if (v283)
                                  {
                                    v195 = v284;
                                    do
                                    {
                                      v196 = *v195++;
                                      if (v196 == v298)
                                      {
                                        goto LABEL_341;
                                      }
                                    }

                                    while (--v194);
                                  }

                                  if (*v279 && *(v279 + 4))
                                  {
                                    v197 = *(v279 + 8);
                                    v198 = *(v279 + 4) - 1;
                                    do
                                    {
                                      v200 = *v197++;
                                      v199 = v200;
                                      if (v200 == HIWORD(v297))
                                      {
                                        goto LABEL_341;
                                      }
                                    }

                                    while (v199 <= HIWORD(v297) && v198-- != 0);
                                  }

                                  if (strstr(v287, "11") && utf8_IsChineseLetter(&v281))
                                  {
LABEL_332:
                                    v191 = 1;
                                  }

                                  else
                                  {
                                    v274 = 0;
                                    v202 = strlen(v300);
                                    v272 = 0;
                                    v273 = 0;
                                    utf8_Utf8ToUtf32_Tolerant(v300, v202, &v274, 1u, &v273);
                                    v203 = v273;
                                    if (v202 <= 3)
                                    {
                                      v203 = 0;
                                    }

                                    utf8_Utf32ToUtf8(&v274, 1, __s1, v202 - v203, &v272);
                                    __s1[v272] = 0;
                                    v191 = *v263;
                                    if (*v263)
                                    {
                                      v204 = 0;
                                      do
                                      {
                                        if (!strcmp(__s1, *(*(v263 + 1) + 8 * v204)))
                                        {
                                          if (utf8_IsChineseLetter(&v281))
                                          {
                                            goto LABEL_332;
                                          }

                                          LOBYTE(v191) = *v263;
                                        }

                                        ++v204;
                                      }

                                      while (v204 < v191);
                                      goto LABEL_341;
                                    }
                                  }
                                }

                                else
                                {
LABEL_341:
                                  v191 = 0;
                                }

                                v205 = HIWORD(v297) - v298;
                                if (HIWORD(v297) - v298 > 2)
                                {
                                  goto LABEL_344;
                                }

                                v206 = *v266;
                                __memcpy_chk();
                                *(&v281 + v205) = 0;
LABEL_347:
                                if (v191)
                                {
                                  if (v259)
                                  {
                                    *v300 = 0;
                                    v23 = pw_check_if_glue_forbidden(v270, v267, v271, *(v263 + 548), v259, v299, v300);
                                    v191 = *v300 == 0;
                                    if ((v23 & 0x80000000) != 0)
                                    {
                                      goto LABEL_423;
                                    }
                                  }
                                }

                                if (v293)
                                {
                                  hlp_NLUStrFind(v293, "POS", &v291, &v290);
                                  if (v277 && (v212 = strlen(&v301), v212 + strlen(v277) - 63 < 0xFFFFFFFFFFFFFFC0) || v291 && (v213 = strlen(v107), v213 + strlen(v291) - 62 < 0xFFFFFFFFFFFFFFC0) || v287 && (v214 = strlen(__s), v214 + strlen(v287) - 1022 <= 0xFFFFFFFFFFFFFBFFLL))
                                  {
                                    log_OutText(*(v262 + 32), "FE_PHRASING", 5, 0, "skip the merging due to the length limit of prosodic word", v207, v208, v209, v248);
                                    goto LABEL_377;
                                  }
                                }

                                else
                                {
                                  v290 = 0;
                                  v291 = 0;
                                }

                                if (v191 && v259 && (v280[0] == 1769234796 ? (v215 = LOWORD(v280[1]) == 110) : (v215 = 0), !v215))
                                {
                                  log_OutText(*(v262 + 32), "FE_PHRASING", 5, 0, "merge special auxiliary word and neutral tone cases", v207, v208, v209, v248);
                                  (*v266)[v298 - 1] = 45;
                                  *&__s[strlen(__s)] = 46;
                                  v216 = v287;
                                  if (v287)
                                  {
                                    v217 = strlen(v287);
                                    v218 = strlen(__s) + v217;
                                    if (v218 >= 0x401)
                                    {
                                      v219 = heap_Realloc(*(v262 + 8), __s, v218 + 1);
                                      if (!v219)
                                      {
                                        goto LABEL_427;
                                      }

                                      v216 = v287;
                                      __s = v219;
                                    }

                                    strcat(__s, v216);
                                  }

                                  if (v293)
                                  {
                                    if (v290)
                                    {
                                      *(v107 + strlen(v107)) = 45;
                                      if (v291)
                                      {
                                        strncat(v107, v291, v290);
                                      }
                                    }
                                  }

                                  if (v277 && v301)
                                  {
                                    __strcat_chk();
                                  }

                                  else
                                  {
                                    LOBYTE(v301) = 0;
                                  }

                                  v134 = (*(v270 + 192))(v267, v271, v299);
                                  if ((v134 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v134 = (*(v270 + 160))(v267, v271, v259, 2, 1, &v297 + 2, &v296);
                                  if ((v134 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v225 = strlen(__s);
                                  v23 = (*(v270 + 160))(v267, v271, v259, 3, (v225 + 1), __s, &v296);
                                  if ((v23 & 0x80000000) != 0)
                                  {
                                    goto LABEL_423;
                                  }

                                  if (v293)
                                  {
                                    v226 = v183 - 1;
                                    v227 = strlen(*(*v256 + 184 * v226 + 40));
                                    v228 = strlen(v107);
                                    v229 = heap_Realloc(*(v262 + 8), *(*v256 + 184 * v226 + 40), v227 + v228 + 5);
                                    *(*v256 + 184 * v226 + 40) = v229;
                                    if (!v229)
                                    {
                                      log_OutPublic(*(v262 + 32), "FE_PHRASING", 37000, 0, v230, v231, v232, v233, v248);
LABEL_427:
                                      v23 = -1979703286;
                                      goto LABEL_423;
                                    }

                                    *(v229 + v227) = 0;
                                    hlp_NLUStrSet(*(*v256 + 184 * v226 + 40), "POS", v107);
                                    v234 = strlen(v293);
                                    v23 = (*(v270 + 160))(v267, v271, v259, 14, (v234 + 1), v293, &v296);
                                    if ((v23 & 0x80000000) != 0)
                                    {
                                      goto LABEL_423;
                                    }

                                    v293 = "";
                                  }

                                  v235 = *v256;
                                  v236 = v183 - 1;
                                  *(*v256 + 184 * v236 + 18) = HIWORD(v297);
                                  v237 = *(v235 + 184 * v183 + 24);
                                  v238 = strlen(__s);
                                  v239 = heap_Realloc(*(v262 + 8), v237, v238 + 1);
                                  *(*v256 + 184 * v183 + 24) = v239;
                                  strcpy(v239, __s);
                                  v240 = *v256;
                                  v241 = *v256 + 184 * v236;
                                  v243 = *(v241 + 72);
                                  v242 = (v241 + 72);
                                  if (v243)
                                  {
                                    v244 = 1;
                                  }

                                  else
                                  {
                                    v244 = *(v240 + 184 * v183 + 72) != 0;
                                  }

                                  *v242 = v244;
                                  *(*(v240 + 184 * v236 + 56) + strlen(*(v240 + 184 * v236 + 56))) = 45;
                                  strcat(*(*(v263 + 133) + 184 * v236 + 56), *(*(v263 + 133) + 184 * v183 + 56));
                                  --*(v263 + 536);
                                  freePWInfo(v262, v263, v183);
                                  v245 = *(v263 + 536);
                                  if (v183 != v245)
                                  {
                                    memmove((*v256 + 184 * v183), (*v256 + 184 * v183 + 184), 184 * (v245 - v183));
                                  }

                                  --v183;
                                  if (v301)
                                  {
                                    v246 = strlen(&v301);
                                    v23 = (*(v270 + 160))(v267, v271, v259, 10, (v246 + 1), &v301, &v296);
                                    if ((v23 & 0x80000000) != 0)
                                    {
                                      goto LABEL_423;
                                    }
                                  }
                                }

                                else
                                {
LABEL_377:
                                  v220 = v287;
                                  if (v287)
                                  {
                                    v221 = strlen(v287);
                                    if (v221 >= 0x401)
                                    {
                                      v222 = v221;
                                      v223 = strlen(__s);
                                      if (v222 > v223)
                                      {
                                        v224 = heap_Realloc(*(v262 + 8), __s, v222 + v223 + 1);
                                        if (!v224)
                                        {
                                          goto LABEL_427;
                                        }

                                        v220 = v287;
                                        __s = v224;
                                      }
                                    }

                                    strcpy(__s, v220);
                                  }

                                  *v107 = 0;
                                  if (v290 && v291)
                                  {
                                    strncat(v107, v291, v290);
                                  }

                                  if (v277)
                                  {
                                    __strcpy_chk();
                                  }

                                  else
                                  {
                                    LOBYTE(v301) = 0;
                                  }

                                  v259 = v299;
                                  if (((*(v270 + 184))(v267, v271) & 0x80000000) != 0 || HIWORD(v299) != 1)
                                  {
                                    strcpy(v280, "latin");
                                  }

                                  else
                                  {
                                    v23 = (*(v270 + 176))(v267, v271, v259, 9, &v292, &v299 + 2);
                                    if ((v23 & 0x80000000) != 0 || strlen(v292) > 6)
                                    {
                                      goto LABEL_423;
                                    }

                                    __strcpy_chk();
                                  }
                                }

                                v184 = HIWORD(v297);
LABEL_396:
                                if (*v269 <= ++v183)
                                {
                                  goto LABEL_423;
                                }
                              }

                              v182 = HIWORD(v298);
                              LOWORD(v299) = HIWORD(v298);
                              if (!HIWORD(v298))
                              {
                                goto LABEL_423;
                              }

                              continue;
                            }
                          }

                          v66 = 0;
                          v107 = 0;
                        }
                      }

                      v14 = v262;
                      goto LABEL_192;
                    }

                    v107 = 0;
                  }

                  v23 = v65;
                  v108 = v261;
                  v14 = v262;
                  goto LABEL_144;
                }

LABEL_140:
                log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: no lexicon word", v37, v38, v39, v247);
                goto LABEL_180;
              }
            }

            v108 = 0;
            v66 = 0;
            v107 = 0;
            v23 = v42;
LABEL_143:
            v47 = v265;
            goto LABEL_144;
          }
        }
      }
    }
  }

LABEL_180:
  v118 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t pw_get_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v32 = 0;
  v31 = 0;
  v13 = (*(a1 + 176))(a3, a4, a5, 1, &v31, &v32);
  if ((v13 & 0x80000000) != 0)
  {
LABEL_18:
    if (*a6)
    {
      heap_Free(*(a2 + 8), *a6);
      *a6 = 0;
    }

    return v13;
  }

  if (!v32)
  {
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Warning: no marker in lingdb.", v10, v11, v12, v31);
    return v13;
  }

  v14 = heap_Calloc(*(a2 + 8), v32, 4);
  *a6 = v14;
  if (!v14)
  {
    goto LABEL_17;
  }

  *a7 = 0;
  v19 = v32;
  if (v32)
  {
    v20 = 0;
    v21 = v31;
    v22 = v32;
    v23 = v31;
    v24 = v31;
    do
    {
      v25 = *v24;
      v24 += 8;
      v26 = (1 << v25) & 0x3C0010124001140;
      if (v25 <= 0x39 && v26 != 0)
      {
        *(v14 + 4 * v20) = *(v23 + 12) - *(v21 + 12);
        v20 = *a7 + 1;
        *a7 = v20;
      }

      v23 = v24;
      --v22;
    }

    while (v22);
    v28 = v20 + 1;
  }

  else
  {
    v28 = 1;
  }

  if (v28 > v19)
  {
    v29 = heap_Realloc(*(a2 + 8), v14, 4 * v28);
    *a6 = v29;
    if (!v29)
    {
LABEL_17:
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v31);
      v13 = 2315264010;
      goto LABEL_18;
    }
  }

  return v13;
}

uint64_t getTNmarker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = 2315264010;
  v31 = 0;
  v30 = 0;
  v13 = heap_Alloc(*(a2 + 8), 24);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_31;
  }

  *v13 = 0;
  *(v13 + 4) = 0;
  *(v13 + 8) = 0;
  v15 = (*(a3 + 176))(a4, a5, a1, 1, &v30, &v31);
  v16 = v15;
  if ((v15 & 0x80000000) != 0)
  {
    v12 = v15;
  }

  else
  {
    v17 = v31;
    if (v31)
    {
      v18 = v30;
      do
      {
        if (*v18 == 34 || *v18 == 70 && v18[6] >= 3u)
        {
          if (!*v14)
          {
            *v14 = 1;
          }

          ++*(v14 + 4);
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if (!*v14)
    {
LABEL_24:
      v12 = v16;
      goto LABEL_31;
    }

    v19 = heap_Alloc(*(a2 + 8), 4 * *(v14 + 4));
    *(v14 + 8) = v19;
    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = heap_Alloc(*(a2 + 8), 2 * *(v14 + 4));
    *(v14 + 16) = v20;
    if (v20)
    {
      if (v31)
      {
        v21 = 0;
        v22 = 0;
        v23 = v30 + 3;
        while (1)
        {
          v24 = *(v23 - 3);
          if (v24 == 34)
          {
            LOWORD(v26) = 0;
            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
          }

          else
          {
            if (v24 != 70 || v23[3] < 3u)
            {
              goto LABEL_23;
            }

            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
            v26 = v23[3];
          }

          *(v20 + 2 * v25) = v26;
          ++v22;
LABEL_23:
          ++v21;
          v23 += 8;
          if (v21 >= v31)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_24;
    }
  }

  v27 = *(v14 + 8);
  if (v27)
  {
    heap_Free(*(a2 + 8), v27);
    *(v14 + 8) = 0;
  }

LABEL_28:
  v28 = *(v14 + 16);
  if (v28)
  {
    heap_Free(*(a2 + 8), v28);
    *(v14 + 16) = 0;
  }

  heap_Free(*(a2 + 8), v14);
  v14 = 0;
LABEL_31:
  *a6 = v14;
  return v12;
}

uint64_t pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v10 = *a9;
  v11 = *a10;
  v140 = 0;
  v12 = a6;
  v139 = 0;
  v138 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v129 = (a5 + 24);
    v131 = a8;
    v16 = 1;
    while (1)
    {
      v17 = (v10 + 184 * v14);
      if (*(v17 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v18 = **v17;
      v139 = 0;
      v13 = (*(a1 + 184))(a2, a3, v18, 9, &v139);
      if ((v13 & 0x80000000) == 0 && v139 == 1)
      {
        v13 = (*(a1 + 176))(a2, a3, v18, 9, &v140, &v139);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_76:
          heap_Free(*(a4 + 8), v10);
          return v13;
        }
      }

      if (!v140 || !strcmp(v140, "mnc!"))
      {
        v20 = 0;
        if (v12)
        {
          v21 = v129;
          while (1)
          {
            v22 = *v21;
            v21 += 20;
            if (v22 == **v17)
            {
              break;
            }

            if (v12 == ++v20)
            {
              LODWORD(v20) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v20) = v20;
        }

LABEL_16:
        if (a8)
        {
          v23 = *(a5 + 40 * v20 + 28);
          v24 = a7;
          v25 = v131;
          while (1)
          {
            v26 = *v24++;
            if (v26 == v23)
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v16 != 1)
          {
            v139 = 0;
            v138 = 0;
            v13 = (*(a1 + 184))(a2, a3, v18, 19, &v139);
            v16 = 0;
            v19 = 1;
            if ((v13 & 0x80000000) == 0 && v139 == 1)
            {
              v13 = (*(a1 + 176))(a2, a3, v18, 19, &v138, &v139);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v16 = 0;
              v19 = strcmp(v138, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v16 = 0;
        v19 = 1;
      }

      else
      {
LABEL_9:
        v19 = 1;
        v16 = 1;
      }

LABEL_26:
      v15 += v19;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v27 = a4;
  v28 = heap_Calloc(*(a4 + 8), v15, 184);
  if (v28)
  {
    *a10 = v15;
    *a9 = v28;
    if (v11)
    {
      v130 = v28;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v128 = v11;
      while (1)
      {
        v37 = (v10 + 184 * v34);
        if (*(v37 + 4) < 2u)
        {
          v132 = v35;
          v50 = **v37;
          v139 = 0;
          if (((*(a1 + 184))(a2, a3, v50, 9, &v139) & 0x80000000) == 0 && v139 == 1)
          {
            v54 = (*(a1 + 176))(a2, a3, v50, 9, &v140, &v139);
            if ((v54 & 0x80000000) != 0)
            {
              v13 = v54;
              goto LABEL_76;
            }
          }

          if (v140 && strcmp(v140, "mnc!"))
          {
            v55 = v10;
            v27 = a4;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v51, v52, v53, v33);
            v45 = pw_copy_pw(a4, v37, v130 + 184 * v132, v56, v57, v58, v59, v60);
            v49 = v128;
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v61, v62, v63, v33);
            v64 = (v132 + 1);
            v36 = 1;
            goto LABEL_68;
          }

          v49 = v128;
          v65 = 0;
          if (v12)
          {
            v66 = (a5 + 24);
            while (1)
            {
              v67 = *v66;
              v66 += 20;
              if (v67 == **v37)
              {
                break;
              }

              if (v12 == ++v65)
              {
                LODWORD(v65) = v12;
                goto LABEL_48;
              }
            }

            LODWORD(v65) = v65;
          }

LABEL_48:
          if (a8)
          {
            v68 = *(a5 + 40 * v65 + 28);
            v69 = a7;
            v70 = a8;
            while (1)
            {
              v71 = *v69++;
              if (v71 == v68)
              {
                break;
              }

              if (!--v70)
              {
                goto LABEL_52;
              }
            }

            if (v36 == 1)
            {
LABEL_63:
              v55 = v10;
              v27 = a4;
              v105 = v132;
              v106 = v132;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v51, v52, v53, v33);
            }

            else
            {
              v55 = v10;
              v27 = a4;
              v105 = v132;
              v106 = v132;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].", v51, v52, v53, v33);
            }

LABEL_66:
            v45 = pw_copy_pw(v27, v37, v130 + 184 * v106, v107, v108, v109, v110, v111);
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v112, v113, v114, v33);
            v36 = 0;
            v64 = (v105 + 1);
LABEL_68:
            v35 = v64;
            v10 = v55;
            goto LABEL_69;
          }

LABEL_52:
          if (v36 == 1)
          {
            goto LABEL_63;
          }

          v139 = 0;
          v138 = 0;
          if (((*(a1 + 184))(a2, a3, v50, 19, &v139) & 0x80000000) != 0 || v139 != 1)
          {
            v55 = v10;
            v27 = a4;
            v105 = v132;
            v106 = v132;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].", v72, v73, v74, v33);
            goto LABEL_66;
          }

          v45 = (*(a1 + 176))(a2, a3, v50, 19, &v138, &v139);
          if ((v45 & 0x80000000) != 0)
          {
            return v45;
          }

          v75 = (v10 + 184 * v34);
          v79 = strcmp(v138, "left");
          v27 = a4;
          v80 = *(a4 + 32);
          if (v79)
          {
            v81 = v132 - 1;
            log_OutText(v80, "FE_PHRASING", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v76, v77, v78, v33);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "pPWIn[%d] is: ", v82, v83, v84, v33);
            v85 = pw_show_pw(a4, v37);
            if ((v85 & 0x80000000) != 0)
            {
              v13 = v85;
              break;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Before merge, pPWOut[%d] is: ", v86, v87, v88, v81);
            v89 = v130 + 184 * v81;
            v90 = pw_show_pw(a4, v89);
            if ((v90 & 0x80000000) != 0)
            {
              v13 = v90;
              break;
            }

            v91 = *(v89 + 8) + 1;
            *(v89 + 8) = v91;
            v92 = heap_Realloc(*(a4 + 8), *v89, 2 * v91);
            *v89 = v92;
            if (!v92)
            {
              v13 = 2315264010;
              log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v93, v94, v95, v96, v125);
              return v13;
            }

            v97 = *v75;
            *(v92 + 2 * *(v89 + 8) - 2) = **v75;
            heap_Free(*(a4 + 8), v97);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "After merge, pPWOut[%d] is: ", v98, v99, v100, v81);
            v101 = pw_show_pw(a4, v89);
            if ((v101 & 0x80000000) != 0)
            {
              v13 = v101;
              goto LABEL_76;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v102, v103, v104, v33);
            v36 = 0;
            v27 = a4;
            v35 = v132;
          }

          else
          {
            log_OutText(v80, "FE_PHRASING", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v76, v77, v78, v33);
            v45 = pw_copy_pw(a4, v37, v130 + 184 * v132, v115, v116, v117, v118, v119);
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v120, v121, v122, v33);
            v36 = 0;
            v35 = (v132 + 1);
          }
        }

        else
        {
          v38 = v35;
          v39 = v35;
          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
          v45 = pw_copy_pw(v27, v37, v130 + 184 * v39, v40, v41, v42, v43, v44);
          if ((v45 & 0x80000000) != 0)
          {
            return v45;
          }

          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v46, v47, v48, v33);
          v36 = 1;
          v49 = v128;
          v35 = (v38 + 1);
        }

LABEL_69:
        v33 = ++v34;
        if (v33 >= v49)
        {
          v13 = 0;
          break;
        }
      }
    }
  }

  else
  {
    v13 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v124);
  }

  if (v10)
  {
    goto LABEL_76;
  }

  return v13;
}