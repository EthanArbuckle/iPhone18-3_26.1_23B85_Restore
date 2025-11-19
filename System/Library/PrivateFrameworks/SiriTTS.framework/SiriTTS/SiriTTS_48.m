uint64_t stat_hmogrph_getIOBTNToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, char *a8)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  for (i = (*(a2 + 104))(a3, a4, 2, a5, &v25 + 2); ; i = (*(a2 + 120))(a3, a4, HIWORD(v25), &v25 + 2))
  {
    v16 = i;
    if ((i & 0x80000000) != 0)
    {
      break;
    }

    if (!HIWORD(v25))
    {
      goto LABEL_19;
    }

    v17 = (*(a2 + 168))(a3, a4, HIWORD(v25), 0, 1, &v23, &v25);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (v23 == 6)
    {
      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v25), 1, 1, &v24 + 2, &v25);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v25), 2, 1, &v24, &v25);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (HIWORD(v24) <= a6 && v24 + 1 >= a7)
      {
        v18 = HIWORD(v24) + 1 == a6 || HIWORD(v24) == a6;
        v19 = "I-";
        if (v18)
        {
          v19 = "B-";
        }

        *a8 = *v19;
        a8[2] = v19[2];
        v16 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v25), 4, &v22, &v25);
        if ((v16 & 0x80000000) == 0)
        {
          v20 = strncat(a8, (v22 + 1), 0x3CuLL);
          a8 += strlen(v20) - 1;
LABEL_19:
          *a8 = 0;
        }

        return v16;
      }
    }
  }

  return v16;
}

uint64_t stat_hmogrph_disambiguateWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v170 = *MEMORY[0x1E69E9840];
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  memset(__c, 0, sizeof(__c));
  v10 = (*(a2 + 104))(a3, a4, 1, 0, &v168 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_186;
  }

  v11 = (*(a2 + 184))(a3, a4, HIWORD(v168), 0, &v166);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_187;
  }

  if (v166 != 1)
  {
    goto LABEL_187;
  }

  v11 = (*(a2 + 176))(a3, a4, HIWORD(v168), 0, &v159, &v167);
  if ((v11 & 0x80000000) != 0 || v167 < 2u)
  {
    goto LABEL_187;
  }

  v12 = *(a1 + 280);
  v10 = (*(v12 + 40))(*(a5 + 104), *(a5 + 112), &v161);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_186:
    v11 = v10;
    goto LABEL_187;
  }

  if (strlen((a1 + 344)) + v161 != *(a1 + 324))
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v13, v14, v15, v16, v138);
    v11 = 2314215449;
    goto LABEL_187;
  }

  v11 = (*(a2 + 104))(a3, a4, 2, HIWORD(v168), &v168);
  if ((v11 & 0x80000000) == 0)
  {
    v17 = v168;
    if (v168)
    {
      __s = (a1 + 344);
      __s1 = 0;
      v18 = 0;
      v153 = 0;
      v145 = 0;
      v144 = 0;
      v152 = 0;
      v143 = v12;
      while (1)
      {
        v19 = (*(a2 + 168))(a3, a4, v17, 0, 1, &v162, &v167);
        if ((v19 & 0x80000000) != 0)
        {
LABEL_189:
          v11 = v19;
          goto LABEL_190;
        }

        if (v162 <= 0xA && ((1 << v162) & 0x610) != 0)
        {
          break;
        }

LABEL_28:
        v11 = (*(a2 + 120))(a3, a4, v168, &v168);
        if ((v11 & 0x80000000) == 0)
        {
          v17 = v168;
          if (v168)
          {
            continue;
          }
        }

        goto LABEL_190;
      }

      v19 = (*(*(a1 + 48) + 168))(a3, a4, v168, 1, 1, &v165, &v167);
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_189;
      }

      v19 = (*(*(a1 + 48) + 168))(a3, a4, v168, 2, 1, &v164, &v167);
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_189;
      }

      v21 = v164;
      v22 = v165;
      v23 = v164 - v165;
      if (v23 <= v152)
      {
        v29 = v165;
        v30 = v153;
      }

      else
      {
        v24 = heap_Realloc(*(*a1 + 8), v153, (v23 + 1));
        if (!v24)
        {
          goto LABEL_196;
        }

        v152 = v23;
        v29 = v165;
        v30 = v24;
      }

      strncpy(v30, (v159 + v29), v23);
      v153 = v30;
      if (v21 == v22)
      {
        *v30 = 0;
        goto LABEL_28;
      }

      if (strchr(__s, v30[(v23 - 1)]))
      {
        v31 = v23 - 1;
      }

      else
      {
        v31 = v23;
      }

      v30[v31] = 0;
      if (!v31)
      {
        goto LABEL_28;
      }

      v32 = strlen(v30);
      v33 = v32;
      __dst = v18;
      if (v32 > v145)
      {
        v34 = heap_Realloc(*(*a1 + 8), __s1, v32 + 1);
        if (v34)
        {
          __s1 = v34;
          v145 = v33;
LABEL_35:
          v146 = 0;
          v35 = 0;
          while (1)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(&v153[v35], 0);
            if (utf8_ToLower(v153, v35, __src))
            {
              if (strlen(__src) <= NextUtf8Offset)
              {
                strcpy(&__s1[v146], __src);
                v146 = strlen(__s1);
              }

              else
              {
                v145 += 5;
                v37 = heap_Realloc(*(*a1 + 8), __s1, v145 + 1);
                if (!v37)
                {
LABEL_199:
                  v11 = 2314215434;
                  goto LABEL_200;
                }

                __s1 = v37;
              }
            }

            else
            {
              strncpy(&__s1[v146], &v153[v35], NextUtf8Offset);
              v146 += NextUtf8Offset;
            }

            v35 += NextUtf8Offset;
            if (v35 >= v33)
            {
              v42 = v146;
              v30 = v153;
              goto LABEL_45;
            }
          }
        }

LABEL_196:
        v11 = 2314215434;
LABEL_197:
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v25, v26, v27, v28, v138);
LABEL_190:
        if (__s1)
        {
          heap_Free(*(*a1 + 8), __s1);
        }

        if (v153)
        {
          heap_Free(*(*a1 + 8), v153);
        }

        if (v18)
        {
          heap_Free(*(*a1 + 8), v18);
        }

        goto LABEL_187;
      }

      if (v32)
      {
        goto LABEL_35;
      }

      v42 = 0;
LABEL_45:
      __s1[v42] = 0;
      if (IsModelHomograph(__s1, *(a5 + 136)))
      {
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PRESENT: %s", v43, v44, v45, __s1);
        v50 = v168;
        HIWORD(v167) = v168;
        if (v168)
        {
          v51 = 0;
          v52 = v164;
          v53 = v165;
          LOWORD(v54) = v168;
          while (1)
          {
            IOBTNToken = (*(a2 + 136))(a3, a4, v54, &v167 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (!HIWORD(v167))
            {
              goto LABEL_67;
            }

            IOBTNToken = (*(a2 + 168))(a3, a4);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (v162 > 0xA || ((1 << v162) & 0x610) == 0)
            {
              v54 = HIWORD(v167);
            }

            else
            {
              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 1, 1, &v163 + 2, &v167);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 2, 1, &v163, &v167);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              v54 = HIWORD(v167);
              if (HIWORD(v163) == v53 && v163 == v52)
              {
                v50 = HIWORD(v167);
              }

              else
              {
                if (++v51 == (*(a1 + 320) - 1) >> 1)
                {
                  HIWORD(v167) = 0;
                  v50 = v54;
                  goto LABEL_67;
                }

                v50 = HIWORD(v167);
                v53 = HIWORD(v163);
                v52 = v163;
              }
            }

            if (!v54)
            {
              goto LABEL_67;
            }
          }

LABEL_198:
          v11 = IOBTNToken;
LABEL_201:
          v18 = __dst;
          goto LABEL_190;
        }

LABEL_67:
        v57 = *a1;
        if (!(*(a1 + 324) * *(a1 + 320)))
        {
          log_OutPublic(*(v57 + 32), "FE_HMOGRPH", 37000, 0, v46, v47, v48, v49, v138);
          v11 = 2314215449;
          goto LABEL_201;
        }

        v58 = 4 * (*(a1 + 324) * *(a1 + 320));
        v59 = heap_Alloc(*(v57 + 8), v58);
        v158 = v59;
        v18 = __dst;
        if (!v59)
        {
          goto LABEL_196;
        }

        v60 = v59;
        memset_pattern16(v59, &unk_1C37BD390, v58);
        HIWORD(v167) = v50;
        if (v50)
        {
          v140 = 0;
          v147 = 0;
          v64 = 0;
          v65 = 0;
          while (1)
          {
            IOBTNToken = (*(a2 + 168))(a3, a4, v50, 0, 1, &v162, &v167);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_198;
            }

            if (v162 <= 0xA && ((1 << v162) & 0x610) != 0)
            {
              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 1, 1, &v163 + 2, &v167);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 2, 1, &v163, &v167);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              v67 = HIWORD(v163);
              v68 = v163;
              if (HIWORD(v163) != v65 || v163 != v64)
              {
                v69 = strlen(__s);
                v70 = v69;
                if (v69)
                {
                  v71 = v161;
                  do
                  {
                    v60[v71++] = 0.0;
                    --v70;
                  }

                  while (v70);
                }

                v72 = v68 - v67;
                if (v72 <= v152)
                {
                  v74 = v153;
                }

                else
                {
                  v73 = heap_Realloc(*(*a1 + 8), v153, (v72 + 1));
                  if (!v73)
                  {
                    goto LABEL_199;
                  }

                  v152 = v72;
                  v67 = HIWORD(v163);
                  v74 = v73;
                }

                strncpy(v74, (v159 + v67), v72);
                v74[v72] = 0;
                v75 = strcmp(__s1, v74);
                v76 = v140;
                if (HIWORD(v167) == v168)
                {
                  v77 = v140;
                }

                else
                {
                  v77 = 1;
                }

                if (!v75)
                {
                  v76 = v77;
                }

                v140 = v76;
                v78 = strchr(__s, v74[(v72 - 1)]);
                if (v78)
                {
                  v82 = *(a1 + 354 + (v78 - __s)) - 48;
                  v60[v161 + v82] = 1.0;
                  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PUNC: %i", v79, v80, v81, v82);
                  v74[(v72 - 1)] = 0;
                }

                v153 = v74;
                IOBTNToken = stat_hmogrph_getIOBTNToken(a1, a2, a3, a4, HIWORD(v168), HIWORD(v163), v163, __src);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_198;
                }

                if (__src[0])
                {
                  v86 = __src;
                }

                else
                {
                  v86 = v74;
                }

                log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_WORD: %s", v83, v84, v85, v86);
                v87 = (*(v143 + 56))(*(a5 + 104), *(a5 + 112), v86, v60);
                v11 = v87;
                if ((v87 & 0x1FFF) == 0x14)
                {
                  if (*(a5 + 176))
                  {
                    v88 = *v86;
                    if ((v88 - 65) <= 0x19)
                    {
                      *v86 = v88 | 0x20;
                      LOWORD(v11) = (*(v143 + 56))(*(a5 + 104), *(a5 + 112), v86, v60);
                      *v86 = v88;
                    }
                  }

                  if ((v11 & 0x1FFF) == 0x14)
                  {
                    IOBTNToken = (*(v143 + 56))(*(a5 + 104), *(a5 + 112), a5 + 164, v60);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_198;
                    }
                  }
                }

                else if ((v87 & 0x80000000) != 0)
                {
                  goto LABEL_201;
                }

                if (HIWORD(v167) == v168)
                {
                  v147 = *(a1 + 320) >> 1;
                }

                ++v147;
                v65 = HIWORD(v163);
                v64 = v163;
                v60 += *(a1 + 324);
              }
            }

            IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v167), &v167 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_198;
            }

            if (v147 == *(a1 + 320))
            {
              HIWORD(v167) = 0;
LABEL_115:
              v89 = v140 == 1;
              v18 = __dst;
              goto LABEL_116;
            }

            v50 = HIWORD(v167);
            if (!HIWORD(v167))
            {
              goto LABEL_115;
            }
          }
        }

        v89 = 0;
LABEL_116:
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: BEGIN", v61, v62, v63, v138);
        if (*(a1 + 324) * *(a1 + 320))
        {
          v93 = 0;
          do
          {
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%f", v90, v91, v92, COERCE__INT64(v158[v93++]));
          }

          while (v93 < (*(a1 + 324) * *(a1 + 320)));
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: END", v90, v91, v92, v139);
        v94 = *(a5 + 40);
        *(*v94 + 49) = *(a5 + 128) / 100.0;
        v19 = fi_predict(v94, &v158, *(a1 + 320), &v157, v95, v96, v97, v98);
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_189;
        }

        v11 = 2314215434;
        LODWORD(__s2) = 0;
        if ((fi_shape_get_size((**(a5 + 40) + 92), &__s2) & 0x80000000) != 0)
        {
          v11 = 2314215431;
          goto LABEL_200;
        }

        if (__s2 != 1)
        {
          v11 = 2314215449;
LABEL_200:
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v38, v39, v40, v41, v138);
          goto LABEL_201;
        }

        v99 = strlen(__s1);
        v100 = v99 + 18;
        if (v99 + 18 > v144)
        {
          v101 = heap_Realloc(*(*a1 + 8), v18, (v99 + 19));
          if (!v101)
          {
            goto LABEL_197;
          }

          v144 = v100;
          v18 = v101;
        }

        strcpy(v18, "statwordhmogrph__");
        strcat(v18, __s1);
        *&__c[1] = -1;
        v19 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", v18, &__c[3], &__c[1], __c);
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_189;
        }

        if (!*&__c[1])
        {
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v102, v103, v104, v105, v138);
          v11 = 2314215444;
          goto LABEL_190;
        }

        v106 = **&__c[3];
        v107 = strchr(**&__c[3], __c[0]);
        if (v107)
        {
          *v107 = 0;
          v106 = **&__c[3];
        }

        v108 = strlen(v106);
        if (v144 < v108)
        {
          v109 = heap_Realloc(*(*a1 + 8), v18, v108 + 1);
          if (!v109)
          {
            goto LABEL_197;
          }

          v144 = v108;
          v106 = **&__c[3];
          v18 = v109;
        }

        strcpy(v18, v106);
        v30 = v153;
        __dst = v18;
        if (*v157)
        {
          HomographPhon = GetHomographPhon(*v157, v18);
          if (HomographPhon != 0 && !v89)
          {
            v131 = HomographPhon;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: %s", v110, v111, v112, HomographPhon);
            v132 = v168;
            HIWORD(v167) = v168;
            if (v168)
            {
              v114 = 0;
              v149 = v165;
              v141 = v164;
              while (1)
              {
                IOBTNToken = (*(a2 + 168))(a3, a4, v132, 0, 1, &v162, &v167);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_198;
                }

                if (v162 <= 0xA && ((1 << v162) & 0x610) != 0)
                {
                  IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 1, 1, &v163 + 2, &v167);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_198;
                  }

                  IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 2, 1, &v163, &v167);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_198;
                  }

                  if (HIWORD(v163) == v149 && v163 == v141)
                  {
                    IOBTNToken = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v167), 3, &v160, &v167);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_198;
                    }

                    v134 = strcmp(v160, v131);
                    v135 = HIWORD(v167);
                    IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v167), &v167 + 2);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_198;
                    }

                    if (!v134)
                    {
                      v114 = v135;
                    }

                    v132 = HIWORD(v167);
                    if (HIWORD(v167))
                    {
                      continue;
                    }
                  }
                }

                v30 = v153;
                goto LABEL_136;
              }
            }

            goto LABEL_185;
          }
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: <>", v110, v111, v112, v138);
      }

      v114 = 0;
LABEL_136:
      v153 = v30;
      v115 = v168;
      HIWORD(v167) = v168;
      if (v168)
      {
        v116 = v165;
        v117 = v164;
        do
        {
          IOBTNToken = (*(a2 + 168))(a3, a4, v115, 0, 1, &v162, &v167);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          if (v162 > 0xA || ((1 << v162) & 0x610) == 0)
          {
            goto LABEL_167;
          }

          IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 1, 1, &v163 + 2, &v167);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          IOBTNToken = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v167), 2, 1, &v163, &v167);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          if (HIWORD(v163) != v116 || v163 != v117)
          {
LABEL_167:
            HIWORD(v167) = 0;
            break;
          }

          v119 = HIWORD(v167);
          IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v167), &v167 + 2);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_198;
          }

          if (!v114 || v119 == v114)
          {
            LOWORD(v168) = v119;
            if (v119 == v114)
            {
              v154 = 0;
              __s2 = 0;
              IOBTNToken = (*(*(a1 + 48) + 176))(a3, a4, v114, 5, &__s2, &v167);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              IOBTNToken = (*(*(a1 + 48) + 176))(a3, a4, v168, 14, &v154, &v167);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_198;
              }

              v120 = strlen(v154);
              v121 = strlen(__s2) + v120;
              v148 = v117;
              if (v121 <= v144)
              {
                v123 = __dst;
              }

              else
              {
                v122 = heap_Realloc(*(*a1 + 8), __dst, v121 + 1);
                if (!v122)
                {
                  goto LABEL_199;
                }

                v144 = v121;
                v123 = v122;
              }

              strcpy(v123, "POS:");
              v124 = strcat(v123, __s2);
              *&v123[strlen(v124)] = 59;
              v125 = v154;
              __dst = v123;
              if (!strstr(v154, v123))
              {
                v126 = strstr(v125, "POS");
                if (v126)
                {
                  v127 = v126;
                  v128 = strncpy(__dst, v125, v126 - v125);
                  __dst[v127 - v154] = 0;
                  strcpy(&__dst[strlen(v128)], "POS:");
                  strcat(__dst, __s2);
                  v129 = strchr(v127, 59);
                  if (v129)
                  {
                    strcat(__dst, v129);
                  }

                  v130 = strlen(__dst);
                  IOBTNToken = (*(*(a1 + 48) + 160))(a3, a4, v168, 14, (v130 + 1), __dst, &v166 + 2);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_198;
                  }
                }
              }

              v117 = v148;
            }
          }

          else
          {
            IOBTNToken = (*(a2 + 192))(a3, a4, v119);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_198;
            }
          }

          v115 = HIWORD(v167);
        }

        while (HIWORD(v167));
      }

LABEL_185:
      v18 = __dst;
      goto LABEL_28;
    }
  }

LABEL_187:
  v136 = *MEMORY[0x1E69E9840];
  return v11;
}

char *IsModelHomograph(const char *a1, char *a2)
{
  v4 = strlen(a1);
  result = strstr(a2, a1);
  if (result)
  {
    if (result == a2 || *(result - 1) == 124)
    {
      return (!result[v4] || result[v4] == 124);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *GetHomographPhon(const char *a1, char *__s)
{
  v2 = __s;
  for (i = __s; ; i = v8 + 1)
  {
    v5 = strchr(i, 61);
    v6 = v5;
    if (!v5)
    {
      break;
    }

    *v5 = 0;
    v6 = v5 + 1;
    v7 = strcmp(a1, v2);
    v8 = strchr(v6, 124);
    if (!v7)
    {
      if (v8)
      {
        *v8 = 0;
      }

      return v6;
    }

    if (!v8)
    {
      return 0;
    }

    v2 = v8 + 1;
  }

  return v6;
}

char *hlp_filterWordCandIfTnHas(char *result)
{
  v1 = *(result + 28);
  if (*(result + 28))
  {
    v2 = 0;
    v3 = *(result + 6);
    do
    {
      v4 = (v3 + 16 * v2);
      v5 = v4[4];
      if (v4[4])
      {
        v6 = (*v4 + 48);
        do
        {
          result = strstr(*(v6 - 1), "poi");
          if (result)
          {
            *v6 = 1;
          }

          v6 += 14;
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t hlp_hasRcdWithGivenPOIClass(uint64_t a1, char *__s2)
{
  v2 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 48);
  while (1)
  {
    v6 = (v5 + 16 * v4);
    v7 = v6[4];
    if (v6[4])
    {
      break;
    }

LABEL_7:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v8 = (*v6 + 40);
  while (strcmp(*v8, __s2))
  {
    v8 += 7;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t hlp_filterWordCandIfTnIsNot(uint64_t result, char *__s2)
{
  v2 = *(result + 56);
  if (*(result + 56))
  {
    v4 = 0;
    v5 = *(result + 48);
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = v6[4];
      if (v6[4])
      {
        v8 = (*v6 + 48);
        do
        {
          result = strcmp(*(v8 - 1), __s2);
          if (result)
          {
            *v8 = 1;
          }

          v8 += 14;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t stat_hmogrph_hasSubWordWithGivenTn(uint64_t a1, unsigned int a2, char *__s2)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v5 = *a1;
  v6 = a2;
  v7 = *a1 + (a2 << 6);
  while (!v6 || *(v7 + 8) > *(v5 + 8) || *(v7 + 10) < *(v5 + 10) || !hlp_hasRcdWithGivenPOIClass(v5, __s2))
  {
    v5 += 64;
    --v6;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t nntn_AllInOneLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104 = *MEMORY[0x1E69E9840];
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v95 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : AllInOneLoop Begin", a6, a7, a8, v82);
  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v95) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxTNNNCallsPerSent to %d", v13, v14, v15, v95);
  }

  if (v95)
  {
    *(a1 + 872) = v95;
  }

  v16 = *(a1 + 168);
  *(*(*v16 + 16) + 32) = a1;
  v17 = setDomainsOnSentence_NNTN(a1, v9, v10, v11, v12, v13, v14, v15);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_68;
  }

  DomainDefBlockInfo = mergeDomainsOnSentence_NNTN(a1, v18, v19, v20, v21, v22, v23, v24);
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    v26 = *v16;
    *(*(*v16 + 16) + 16) = *(a1 + 304);
    *(v26 + 64) = 16;
    *(v26 + 42) = *(a1 + 312);
    v27 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v27);
    v32 = *(*a1 + 32);
    v33 = *(a1 + 184);
    if (NumberChildren)
    {
      log_OutText(v32, v33, 4, 0, "tokentn : start loop...", v28, v29, v30, v83);
      v34 = *(v27 + 80);
      v35 = *(v27 + 88);
      v96 = v34;
      v91 = v35;
      if (v34 < v35)
      {
        v36 = 0;
        do
        {
          v93 = 0;
          __s1 = 0;
          v37 = *v34;
          v38 = LDOTreeNode_ComputeAbsoluteFrom(*v34, &v93 + 1);
          DomainRange = LH_ERROR_to_VERROR(v38);
          if ((DomainRange & 0x80000000) != 0 || (v46 = LDOTreeNode_ComputeAbsoluteTo(v37, &v93), DomainRange = LH_ERROR_to_VERROR(v46), (DomainRange & 0x80000000) != 0))
          {
LABEL_64:
            DomainDefBlockInfo = DomainRange;
            goto LABEL_65;
          }

          v47 = WORD2(v93);
          v48 = v93;
          Type = LDOObject_GetType(v37, &__s1);
          DomainDefBlockInfo = LH_ERROR_to_VERROR(Type);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

          *(*v16 + 72) = 0;
          v50 = __s1;
          if (!strcmp(__s1, "TOKEN_ALPHA"))
          {
            v51 = 0;
          }

          else
          {
            v51 = v36;
          }

          if (!strcmp(v50, "TOKEN_DIGIT"))
          {
            v51 = 1;
          }

          if (!strcmp(v50, "TOKEN_PUNCT"))
          {
            v51 = 2;
          }

          if (!strcmp(v50, "TOKEN_WSPACE"))
          {
            v51 = 3;
          }

          if (!strcmp(v50, "TOKEN_DCT"))
          {
            v51 = 4;
          }

          if (!strcmp(v50, "TOKEN_USER_TN"))
          {
            v51 = 5;
          }

          if (!strcmp(v50, "TOKEN_INT_TN"))
          {
            v51 = 6;
          }

          if (!strcmp(v50, "TOKEN_CASEGENDER"))
          {
            v36 = 7;
          }

          else
          {
            v36 = v51;
          }

          if (v36 <= 2)
          {
            HIWORD(v100) = 0;
            FERuntimeData_GetActiveDomains(a1, v103, &v100 + 1, v47, v48, 0);
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v52, v53, v54, v47);
            if (HIWORD(v100))
            {
              v55 = 0;
              v56 = vceqq_s32(vdupq_n_s32(v36), xmmword_1C37BD790);
              v57 = vmovn_s32(v56);
              v57.i16[3] = vmovn_s32(vmvnq_s8(*&v56)).i16[3];
              v92 = v57;
              while (1)
              {
                LOWORD(v100) = 0;
                v102 = 0;
                v58 = *v16;
                *(v58 + 46) = 0;
                *(v58 + 44) = v47;
                *(v58 + 56) = 0;
                DomainRange = FERuntimeData_GetDomainRange(a1, v103[v55], &v101);
                if ((DomainRange & 0x80000000) != 0)
                {
                  goto LABEL_64;
                }

                v84 = *v101;
                v87 = v101[1];
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", v43, v44, v45, v55);
                *(*v16 + 46) = v101[1];
                DomainRange = FERuntimeData_GetDomainBlockIndex(a1, v103[v55], &v100, &v102);
                if ((DomainRange & 0x80000000) != 0)
                {
                  goto LABEL_64;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v100, &v99, v41, v42, v43, v44, v45);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_65;
                }

                if (v102 > *(v99 + 12))
                {
                  break;
                }

                v59 = (v99[2] + 72 * v102);
                v60 = v99[5] + 16 * v59[6];
                v88 = *(v59 + 6) + *v59;
                v89 = *(v60 + 8);
                v85 = *v99;
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", v43, v44, v45, v55);
                if (*(v60 + 8))
                {
                  v61 = *v16;
                  if (*(*v16 + 72) != 1)
                  {
                    v62 = 0;
                    v63 = 0;
                    while (1)
                    {
                      v64 = *v60 + v62;
                      *(v61 + 40) = 0;
                      v65 = v61 + 40;
                      *(v65 + 16) = v64;
                      DomainDefBlockInfo = FEData_blockData_getTokenAndRegexData_NNTN(a1, v64, (v65 - 8), v65, (v65 - 16), &v98, v44, v45);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        goto LABEL_65;
                      }

                      if ((vmaxv_u16(vcltz_s16(vshl_n_s16(vand_s8(v92, vmovn_s32(vceqq_s32(vdupq_n_s32(v98), xmmword_1C37BD7A0))), 0xFuLL))) & 1) != 0 || !v98)
                      {
                        break;
                      }

                      if (v98 == 5)
                      {
                        if ((v36 & 1) == 0)
                        {
                          break;
                        }
                      }

                      else if (v98 == 6 && v36 - 1 < 2)
                      {
                        break;
                      }

                      v90 = TRIGGERSTR[v98];
                      v86 = TOKENTSTR_0[v36];
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "rule %s (token %s, %d,%d) blocked by triggerType %s", v43, v44, v45, *(*v16 + 24));
LABEL_54:
                      if (++v63 < *(v60 + 8))
                      {
                        v62 += 24;
                        v61 = *v16;
                        if (*(*v16 + 72) != 1)
                        {
                          continue;
                        }
                      }

                      goto LABEL_56;
                    }

                    v67 = *v16;
                    v68 = *(*v16 + 16);
                    v69 = *(*v16 + 24);
                    v70 = *v68;
                    *(v70 + 82) = 0;
                    *(v70 + 40) = 0;
                    v68[2] = *(a1 + 304);
                    v68[3] = v69;
                    *(v70 + 96) = *(v67 + 56);
                    *(v70 + 104) = v100;
                    *(v70 + 106) = v102;
                    *(v68 + 26) = *(v67 + 44);
                    *(v68 + 27) = *(v67 + 46);
                    *(v68 + 11) = 0;
                    *(v68 + 12) = 0;
                    DomainDefBlockInfo = tokenizer_apply_regex_NNTN(a1, v67, &v96);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      goto LABEL_65;
                    }

                    v71 = *(*v16 + 16);
                    **(v71 + 8) = 0;
                    *(v71 + 44) = 0;
                    goto LABEL_54;
                  }
                }

LABEL_56:
                if (++v55 >= HIWORD(v100))
                {
                  goto LABEL_57;
                }
              }

              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", v42, v43, v44, v45, "domain");
              v17 = NNTNERROR(0);
LABEL_68:
              DomainDefBlockInfo = v17;
              goto LABEL_69;
            }

LABEL_57:
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v43, v44, v45, v47);
            FERuntimeData_FreeMatches(a1, 0, v72, v73, v74, v75, v76, v77);
          }

          v34 = v96 + 1;
          v96 = v34;
        }

        while (v34 < v91);
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v97) & 0x80000000) == 0 && !LH_stricmp(v97, "yes"))
      {
        DomainDefBlockInfo = nntn_write_LD_T_INPUTSPACETAG(a1);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          goto LABEL_69;
        }
      }

LABEL_65:
      FERuntimeData_FreeMatches(a1, 1, v40, v41, v42, v43, v44, v45);
      v32 = *(*a1 + 32);
      v33 = *(a1 + 184);
      v78 = "nntn : AllInOneLoop End (%x)";
      v83 = DomainDefBlockInfo;
      v79 = 4;
    }

    else
    {
      v78 = "no basic token records to process";
      v79 = 5;
    }

    log_OutText(v32, v33, v79, 0, v78, v28, v29, v30, v83);
  }

LABEL_69:
  v80 = *MEMORY[0x1E69E9840];
  return DomainDefBlockInfo;
}

uint64_t nntn_write_LD_T_INPUTSPACETAG(uint64_t a1)
{
  v2 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v3 = *(*(a1 + 264) + 16);
  v4 = *(v3 + 80);
  if (v4 >= *(v3 + 88))
  {
LABEL_25:
    if (v22)
    {
      LDO_FreeLDOLabelVector(*(a1 + 264), &v21);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      __s1 = 0;
      if (v5)
      {
        Type = LDOObject_GetType(*v5, &__s1);
        v8 = LH_ERROR_to_VERROR(Type);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
      }

      v9 = LDOTreeNode_ComputeAbsoluteFrom(*v4, &v24 + 1);
      v8 = LH_ERROR_to_VERROR(v9);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v10 = LDOTreeNode_ComputeAbsoluteTo(*v4, &v24);
      v2 = LH_ERROR_to_VERROR(v10);
      if ((v2 & 0x80000000) != 0)
      {
        return v2;
      }

      if (v5 && ((v11 = __s1, !strcmp(__s1, "TOKEN_PUNCT")) || !strcmp(v11, "TOKEN_WSPACE")))
      {
        v6 = 1;
      }

      else
      {
        v12 = LDO_ComputeOverlappingLabels(*(a1 + 264), &v24 + 1, &v24, 0, &v21);
        v2 = LH_ERROR_to_VERROR(v12);
        if ((v2 & 0x80000000) != 0)
        {
          return v2;
        }

        for (i = v22; i < v23; ++i)
        {
          v19 = 0;
          v18 = 0;
          StringAttribute = LDOObject_GetStringAttribute(*i, "TNTAG", &v18, &v19);
          v2 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          if (v18 && !strcmp(v19, "_PI1a_"))
          {
            if (v6 == 1)
            {
              v15 = "left";
            }

            else
            {
              v15 = "none";
            }

            v16 = LDOObject_SetStringAttribute(*v4, "INPUTSPACETAG", v15);
            v2 = LH_ERROR_to_VERROR(v16);
            if ((v2 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            v6 = 0;
          }
        }

        LDO_FreeLDOLabelVector(*(a1 + 264), &v21);
        v5 = v4;
      }

      if (++v4 >= *(v3 + 88))
      {
        goto LABEL_25;
      }
    }
  }

  return v2;
}

BOOL isEnglishLetter(const char *a1)
{
  v2 = strlen(a1);
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, 0, v2);
  if (*a1 & 0xDFu) - 65 < 0x1A || (WCharFromUtf8 - 192) < 0x17 || (WCharFromUtf8 - 216) < 7u || (WCharFromUtf8 - 223) < 0x18u || (WCharFromUtf8 & 0xFFF8) == 0xF8 || (WCharFromUtf8 - 256) <= 0x36 && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 328) >= 0xFFF1u && (WCharFromUtf8 & 1) != 0 || (WCharFromUtf8 - 330) <= 0x2E && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 382) >= 0xFFFBu && (WCharFromUtf8)
  {
    return 1;
  }

  v5 = (WCharFromUtf8 - 312) < 0x11;
  if (WCharFromUtf8)
  {
    v5 = (WCharFromUtf8 - 312) > 0xFFC8u;
  }

  if (v5 || (WCharFromUtf8 - 376) >= 0xFFD1u && (WCharFromUtf8 & 1) != 0)
  {
    return 1;
  }

  if ((WCharFromUtf8 - 378) <= 4)
  {
    return (WCharFromUtf8 & 1) == 0;
  }

  return WCharFromUtf8 == 383;
}

uint64_t updateLDOTreeNode_CHN(uint64_t *a1, _DWORD *a2)
{
  v99 = 0;
  v100 = 0;
  v97 = 0;
  __s1 = 0;
  v96 = 0;
  v4 = *(a1[33] + 16);
  NumberChildren = LDOTreeNode_GetNumberChildren(v4);
  *a2 = NumberChildren;
  if (!NumberChildren)
  {
    UTF8Char = 0;
    goto LABEL_123;
  }

  v6 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 156) + 1);
  v11 = *a1;
  if (!v6)
  {
    log_OutPublic(*(v11 + 32), "FE_NNTN", 37000, 0, v7, v8, v9, v10, v87);
    UTF8Char = NNTNERROR(10);
    goto LABEL_123;
  }

  v12 = v6;
  v17 = heap_Calloc(*(v11 + 8), 1, *(a1 + 156) + 1);
  v18 = *a1;
  if (!v17)
  {
LABEL_106:
    log_OutPublic(*(v18 + 32), "FE_NNTN", 37000, 0, v13, v14, v15, v16, v87);
    UTF8Char = NNTNERROR(10);
    v20 = 0;
    v80 = 0;
    goto LABEL_120;
  }

  v19 = heap_Calloc(*(v18 + 8), 1, 48 * *a2);
  if (!v19)
  {
    v18 = *a1;
    goto LABEL_106;
  }

  v20 = v19;
  v21 = *(v4 + 80);
  if (v21 >= *(v4 + 88))
  {
    UTF8Char = 0;
    goto LABEL_119;
  }

  v90 = 0;
  while (1)
  {
    if (!v21)
    {
      v86 = 6;
      goto LABEL_129;
    }

    v22 = LDOTreeNode_ComputeText(*v21, &v100);
    v23 = LH_ERROR_to_VERROR(v22);
    if ((v23 & 0x80000000) != 0 || (v24 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v100), v25 = LDOTreeNode_ComputeAbsoluteFrom(*v21, &v99 + 1), v23 = LH_ERROR_to_VERROR(v25), (v23 & 0x80000000) != 0) || (v26 = LDOTreeNode_ComputeAbsoluteTo(*v21, &v99), v23 = LH_ERROR_to_VERROR(v26), (v23 & 0x80000000) != 0))
    {
      UTF8Char = v23;
      goto LABEL_111;
    }

    __s = v24;
    v27 = v99;
    v28 = HIDWORD(v99);
    Type = LDOObject_GetType(*v21, &__s1);
    UTF8Char = LH_ERROR_to_VERROR(Type);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

    if (!strcmp(__s1, "TOKEN_ALPHA"))
    {
      UTF8Char = utf8_getUTF8Char(__s, 0, v17);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v91 = v27 - v28;
      if (v27 - v28 > strlen(v17))
      {
        break;
      }
    }

LABEL_97:
    v75 = LDOString_BorrowAllocator(v100);
    OOC_PlacementDeleteObject(v75, v100);
    if (++v21 >= *(v4 + 88))
    {
      if (!v90)
      {
        goto LABEL_119;
      }

      v76 = v90 - 1;
      v77 = v20;
      do
      {
        v78 = v76;
        v79 = LDO_ReplaceNodes(a1[33], v77, v77 + 24);
        UTF8Char = LH_ERROR_to_VERROR(v79);
        if ((UTF8Char & 0x80000000) != 0)
        {
          break;
        }

        v76 = v78 - 1;
        v77 += 48;
      }

      while (v78);
LABEL_111:
      LOWORD(v81) = v90;
      goto LABEL_112;
    }
  }

  v31 = OOCAllocator_Realloc((a1 + 28), 0, 64, &v96);
  if (v96)
  {
    goto LABEL_111;
  }

  v32 = v20;
  NextUtf8Offset = 0;
  v34 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v35 = 0;
  *v31 = *v21;
  v89 = v32;
  v36 = (v32 + 48 * v90);
  *v36 = 8;
  v36[1] = v31;
  v36[2] = v31 + 1;
  v88 = v36;
  v37 = __s;
  do
  {
    UTF8Char = utf8_getUTF8Char(v37, NextUtf8Offset, v17);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_110;
    }

    v38 = strlen(v17);
    v39 = isEnglishLetter(v17);
    if (!(v39 | v34))
    {
      v55 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v17, "TOKEN", "TOKEN_ALPHA", &v97);
      v41 = LH_ERROR_to_VERROR(v55);
      if ((v41 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v97, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v56);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v57 = v35 - v93;
      v58 = ((v35 - v93) >> 3) + 1;
      if (v58 > v94)
      {
        v59 = 2 * v94;
        if (2 * v94 >= v94 + 1000000)
        {
          v59 = v94 + 1000000;
        }

        if (v59 > v58)
        {
          v58 = v59;
        }

        if (v58 <= 8)
        {
          v58 = 8;
        }

        v94 = v58;
        v60 = OOCAllocator_Realloc((a1 + 28), v93, 8 * v58, &v96);
        if (v96)
        {
          goto LABEL_110;
        }

        v93 = v60;
        v35 = (v60 + (v57 & 0x7FFFFFFF8));
      }

      v34 = 0;
      *v35++ = v97;
      v54 = v92 + 1;
LABEL_58:
      v92 = v54;
      goto LABEL_59;
    }

    if (v34 == 1 && !v39)
    {
      v40 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v12, "TOKEN", "TOKEN_ALPHA", &v97);
      v41 = LH_ERROR_to_VERROR(v40);
      if ((v41 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v97, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v42);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v43 = ((v35 - v93) >> 3) + 1;
      if (v43 > v94)
      {
        v44 = 2 * v94;
        if (2 * v94 >= v94 + 1000000)
        {
          v44 = v94 + 1000000;
        }

        if (v44 > v43)
        {
          v43 = v44;
        }

        if (v43 <= 8)
        {
          v45 = 8;
        }

        else
        {
          v45 = v43;
        }

        v46 = OOCAllocator_Realloc((a1 + 28), v93, 8 * v45, &v96);
        if (v96)
        {
          goto LABEL_110;
        }

        v35 = (v46 + ((v35 - v93) & 0x7FFFFFFF8));
        v93 = v46;
        v94 = v45;
      }

      *v35 = v97;
      v47 = v35 + 1;
      v12[2] = 0;
      *v12 = 0;
      v48 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v17, "TOKEN", "TOKEN_ALPHA", &v97);
      v41 = LH_ERROR_to_VERROR(v48);
      if ((v41 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v97, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v49);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v50 = ((v47 - v93) >> 3) + 1;
      if (v50 > v94)
      {
        v51 = 2 * v94;
        if (2 * v94 >= v94 + 1000000)
        {
          v51 = v94 + 1000000;
        }

        if (v51 > v50)
        {
          v50 = v51;
        }

        if (v50 <= 8)
        {
          v52 = 8;
        }

        else
        {
          v52 = v50;
        }

        v53 = OOCAllocator_Realloc((a1 + 28), v93, 8 * v52, &v96);
        if (v96)
        {
          goto LABEL_110;
        }

        v47 = (v53 + ((v47 - v93) & 0x7FFFFFFF8));
        v93 = v53;
        v94 = v52;
      }

      v34 = 0;
      *v47 = v97;
      v35 = v47 + 1;
      v54 = v92 + 2;
      goto LABEL_58;
    }

    v61 = NextUtf8Offset + v38;
    v62 = !v39;
    if (v34 != 1)
    {
      v62 = 1;
    }

    if (v62)
    {
      if (!v34 && v39)
      {
        *v12 = 0;
        strcat(v12, v17);
        if (v61 == v91)
        {
          v69 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v12, "TOKEN", "TOKEN_ALPHA", &v97);
          v41 = LH_ERROR_to_VERROR(v69);
          if ((v41 & 0x80000000) != 0)
          {
LABEL_109:
            UTF8Char = v41;
LABEL_110:
            v20 = v89;
            goto LABEL_111;
          }

          LDOObject_SetU32Attribute(v97, "_TTYPE", 0);
          UTF8Char = LH_ERROR_to_VERROR(v70);
          if ((UTF8Char & 0x80000000) != 0)
          {
            goto LABEL_110;
          }

          v71 = ((v35 - v93) >> 3) + 1;
          if (v71 > v94)
          {
            v72 = 2 * v94;
            if (2 * v94 >= v94 + 1000000)
            {
              v72 = v94 + 1000000;
            }

            if (v72 > v71)
            {
              v71 = v72;
            }

            if (v71 <= 8)
            {
              v73 = 8;
            }

            else
            {
              v73 = v71;
            }

            v74 = OOCAllocator_Realloc((a1 + 28), v93, 8 * v73, &v96);
            if (v96)
            {
              goto LABEL_110;
            }

            v35 = (v74 + ((v35 - v93) & 0x7FFFFFFF8));
            v93 = v74;
            v94 = v73;
          }

          *v35++ = v97;
          ++v92;
          v12[2] = 0;
          *v12 = 0;
        }

LABEL_94:
        v34 = 1;
      }
    }

    else
    {
      strcat(v12, v17);
      if (v61 != v91)
      {
        goto LABEL_94;
      }

      v63 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v12, "TOKEN", "TOKEN_ALPHA", &v97);
      v41 = LH_ERROR_to_VERROR(v63);
      if ((v41 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      LDOObject_SetU32Attribute(v97, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v64);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v65 = ((v35 - v93) >> 3) + 1;
      if (v65 > v94)
      {
        v66 = 2 * v94;
        if (2 * v94 >= v94 + 1000000)
        {
          v66 = v94 + 1000000;
        }

        if (v66 > v65)
        {
          v65 = v66;
        }

        if (v65 <= 8)
        {
          v67 = 8;
        }

        else
        {
          v67 = v65;
        }

        v68 = OOCAllocator_Realloc((a1 + 28), v93, 8 * v67, &v96);
        if (v96)
        {
          goto LABEL_110;
        }

        v35 = (v68 + ((v35 - v93) & 0x7FFFFFFF8));
        v93 = v68;
        v94 = v67;
      }

      v34 = 0;
      *v35++ = v97;
      ++v92;
      v12[2] = 0;
      *v12 = 0;
    }

LABEL_59:
    v37 = __s;
    NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
  }

  while (NextUtf8Offset < v91);
  v88[3] = v94;
  v88[4] = v93;
  v88[5] = v35;
  if (((v35 - v93) >> 3) == v92)
  {
    v20 = v89;
    ++v90;
    goto LABEL_97;
  }

  v86 = 0;
  v20 = v89;
LABEL_129:
  LOWORD(v81) = v90;
  UTF8Char = NNTNERROR(v86);
LABEL_112:
  if (v81)
  {
    v81 = v81;
    v82 = v20 + 24;
    do
    {
      *(v82 - 24) = 0;
      v83 = *(v82 - 16);
      if (v83)
      {
        OOCAllocator_Free((a1 + 28), v83);
        *(v82 - 16) = 0;
      }

      *(v82 - 8) = 0;
      *v82 = 0;
      v84 = *(v82 + 8);
      if (v84)
      {
        OOCAllocator_Free((a1 + 28), v84);
        *(v82 + 8) = 0;
      }

      *(v82 + 16) = 0;
      v82 += 48;
      --v81;
    }

    while (v81);
  }

LABEL_119:
  v80 = 1;
LABEL_120:
  heap_Free(*(*a1 + 8), v12);
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
    if (v80)
    {
      goto LABEL_122;
    }
  }

  else if (v80)
  {
LABEL_122:
    heap_Free(*(*a1 + 8), v20);
  }

LABEL_123:
  if (v96)
  {
    return NNTNERROR(0);
  }

  return UTF8Char;
}

uint64_t applyIgtreeExpansion(uint64_t a1, __int16 *a2, const char *a3, char **a4, _DWORD *a5)
{
  v10 = heap_Alloc(*(*a1 + 8), 1024);
  if (v10)
  {
    v15 = v10;
    *v10 = 0;
    v16 = fe_nntn_IGTR(a1, a2, a3, v10, a5, v12, v13, v14);
    if (*a5 == 1)
    {
      strcpy(*a4, v15);
    }

    heap_Free(*(*a1 + 8), v15);
    return v16;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0, v11, v12, v13, v14, v18);

    return NNTNERROR(10);
  }
}

uint64_t applyNNExpansion(_DWORD *a1, __int16 *a2, char **a3)
{
  v6 = heap_Alloc(*(*a1 + 8), 1024);
  if (v6)
  {
    v11 = v6;
    *v6 = 0;
    v12 = *(*a1 + 32);
    if (a1[210])
    {
      log_OutText(v12, "FE_NNTN", 5, 0, "FI prediction enabled", v8, v9, v10, 0);
      v16 = fe_mnc_nntn_Process(a1, a2, v11);
      if ((v16 & 0x80000000) != 0)
      {
        log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "FI prediction failed", v13, v14, v15, 0);
      }

      else
      {
        strcpy(*a3, v11);
      }
    }

    else
    {
      log_OutText(v12, "FE_NNTN", 5, 0, "FI prediction is not enabled", v8, v9, v10, 0);
      v16 = 0;
    }

    heap_Free(*(*a1 + 8), v11);
    return v16;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0, v7, v8, v9, v10, v18);

    return NNTNERROR(10);
  }
}

uint64_t writeExpandFuncNameToLDO(uint64_t a1, char *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  v11 = *a4;
  v24 = a4[1];
  v25 = v11;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO Begin (%s)", a6, a7, a8, *a3);
  v12 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v25, &v24, &v26);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  LDOObject_SetU32Attribute(v26, "_TTYPE", 6);
  v13 = LH_ERROR_to_VERROR(v17);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v18 = LDOObject_SetStringAttribute(v26, "TNTAG", a2);
  v13 = LH_ERROR_to_VERROR(v18);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v19 = LDOObject_SetStringAttribute(v26, "TNFUNCTAG", *a3);
  v13 = LH_ERROR_to_VERROR(v19);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v20 = LDOObject_SetStringAttribute(v26, "NORM", "");
  v21 = LH_ERROR_to_VERROR(v20);
  if ((v21 & 0x80000000) == 0 && *(a1 + 418))
  {
    v22 = LDOObject_SetStringAttribute(v26, "LANGMAP", *(a1 + 408));
    v13 = LH_ERROR_to_VERROR(v22);
LABEL_8:
    v21 = v13;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO End (%x) ", v14, v15, v16, v21);
  return v21;
}

uint64_t sortExpansionNNTN(uint64_t *a1, uint64_t a2)
{
  v28 = 0;
  v4 = heap_Alloc(*(*a1 + 8), 256);
  *(*(a2 + 16) + 56) = v4;
  v9 = *a1;
  if (!v4)
  {
    log_OutPublic(*(v9 + 32), "FE_NNTN", 37000, 0, v5, v6, v7, v8, v27);
    v24 = NNTNERROR(10);
    v15 = 0;
    goto LABEL_23;
  }

  v10 = heap_Calloc(*(v9 + 8), 1, 8);
  v15 = v10;
  if (!v10)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0, v11, v12, v13, v14, v27);
    v23 = NNTNERROR(10);
    goto LABEL_22;
  }

  v16 = *(a2 + 16);
  v17 = *(v16 + 8);
  v18 = *(v16 + 56);
  *v10 = v18;
  v19 = *(a2 + 24);
  v20 = *(**(a2 + 16) + 96);
  v21 = **(v20 + 8);
  if (v21 == 3)
  {
    v23 = applyIgtreeExpansion(a1, v17, *(a2 + 24), v10, &v28);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (v28)
    {
      goto LABEL_21;
    }

    log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "IGtree found NOMATCH. Set user-defined func from domain def file.", v12, v13, v14, 0);
LABEL_18:
    *v15 = *(v20 + 16);
    goto LABEL_21;
  }

  if (v21 == 2)
  {
    goto LABEL_18;
  }

  if (v21 != 1)
  {
    v24 = 0;
    goto LABEL_23;
  }

  if (*(a1 + 219) >= *(a1 + 218))
  {
    strcpy(v18, "DefaultFunc");
    goto LABEL_21;
  }

  v22 = *(v20 + 16);
  if (*v22 != 48 || v22[1])
  {
    v23 = applyIgtreeExpansion(a1, v17, *(a2 + 24), v10, &v28);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (v28)
    {
LABEL_21:
      v23 = writeExpandFuncNameToLDO(a1, v19, v15, v17, v11, v12, v13, v14);
      goto LABEL_22;
    }
  }

  v23 = applyNNExpansion(a1, v17, v15);
  if ((v23 & 0x80000000) == 0)
  {
    ++*(a1 + 219);
    goto LABEL_21;
  }

LABEL_22:
  v24 = v23;
LABEL_23:
  v25 = *(*(a2 + 16) + 56);
  if (v25)
  {
    heap_Free(*(*a1 + 8), v25);
    *(*(a2 + 16) + 56) = 0;
  }

  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "sortExpansionNNTN_new : DoExpansions End (%x)", v12, v13, v14, v24);
  return v24;
}

uint64_t fe_nntn_tryLoading_NNTN_igModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v30, 0, 240);
  *v27 = 0;
  v28 = 0;
  *a4 = 0;
  *v29 = 0;
  memset(v31, 0, 128);
  v30[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v29);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v28), (Str & 0x80000000) != 0) || (__strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v31, 1, 1, *v29, 0, 0, v30, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v30, "IGTR", 1031, v27), (Str & 0x80000000) != 0))
  {
    v21 = Str;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v27, v16);
      ssftriff_reader_CloseChunk(*v27);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v27);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_NNTN", 37000, 0, v17, v18, v19, v20, v26);
      v21 = 2589990922;
    }
  }

  if (*v27)
  {
    v22 = ssftriff_reader_ObjClose(*v27, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      v21 = v21;
    }

    else
    {
      v21 = v22;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t fe_nntn_IGTR(uint64_t a1, __int16 *a2, const char *a3, char *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 936);
  __s1 = 0;
  v9 = *(a1 + 944);
  if (!v9)
  {
    log_OutText(*(v8 + 32), "FE_NNTN", 0, 0, "IGTree model for nntn does not exist", a6, a7, a8, v56);
    return 0;
  }

  v15 = 2589990922;
  v16 = heap_Calloc(*(v8 + 8), 1, 8 * *(v9 + 1296) - 8);
  if (v16)
  {
    v17 = v16;
    v18 = *(v9 + 1296);
    if (v18 != 1)
    {
      v62 = a2;
      v19 = v16;
      v20 = (v18 - 1);
      while (1)
      {
        v21 = heap_Calloc(*(v8 + 8), 1, 65);
        *v19 = v21;
        if (!v21)
        {
          break;
        }

        *v21 = 61;
        ++v19;
        if (!--v20)
        {
          v18 = *(v9 + 1296);
          v15 = 2589990922;
          a2 = v62;
          goto LABEL_8;
        }
      }

      log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v22, v23, v24, v25, v56);
      v15 = 2589990922;
      goto LABEL_67;
    }

LABEL_8:
    __s = *(a1 + 304);
    v61 = *(a1 + 312);
    v26 = *(v9 + 1312);
    v27 = heap_Calloc(*(v8 + 8), 1, 2048);
    if (v27)
    {
      v59 = v18;
      v32 = v18 != 0;
      v33 = v18 - 1;
      if (v33 != 0 && v32)
      {
        v57 = a5;
        __dst = v27;
        v63 = a2;
        v34 = 0;
        while (strcmp(*(v26 + v34), "token"))
        {
          v34 += 8;
          if (8 * v33 == v34)
          {
            v15 = 0;
            goto LABEL_29;
          }
        }

        v39 = *a2;
        if ((v39 & 0x8000000000000000) == 0 && ((v40 = a2[1], v40 > v39) ? (v41 = v40 <= v61) : (v41 = 0), v41))
        {
          strncpy(__dst, &__s[v39], (v40 - v39));
        }

        else
        {
          *__dst = 61;
        }

        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 3, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
LABEL_66:
          heap_Free(*(v8 + 8), __dst);
          goto LABEL_67;
        }

LABEL_29:
        v42 = 0;
        if (v33 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v33;
        }

        v44 = 8 * v43;
        while (strcmp(*(v26 + v42), "lchar"))
        {
          v42 += 8;
          if (v44 == v42)
          {
            goto LABEL_37;
          }
        }

        nntn_feat_character(__s, v63, v61, -1, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 2, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_37:
        v45 = 0;
        while (strcmp(*(v26 + v45), "llchar"))
        {
          v45 += 8;
          if (v44 == v45)
          {
            goto LABEL_42;
          }
        }

        nntn_feat_character(__s, v63, v61, -2, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 1, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_42:
        v46 = 0;
        while (strcmp(*(v26 + v46), "l3char"))
        {
          v46 += 8;
          if (v44 == v46)
          {
            goto LABEL_47;
          }
        }

        nntn_feat_character(__s, v63, v61, -3, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 0, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_47:
        v47 = 0;
        while (strcmp(*(v26 + v47), "rchar"))
        {
          v47 += 8;
          if (v44 == v47)
          {
            goto LABEL_52;
          }
        }

        nntn_feat_character(__s, v63, v61, 1, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 4, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_52:
        v48 = 0;
        while (strcmp(*(v26 + v48), "rrchar"))
        {
          v48 += 8;
          if (v44 == v48)
          {
            goto LABEL_57;
          }
        }

        nntn_feat_character(__s, v63, v61, 2, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 5, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_57:
        v49 = 0;
        while (strcmp(*(v26 + v49), "r3char"))
        {
          v49 += 8;
          if (v44 == v49)
          {
            goto LABEL_62;
          }
        }

        nntn_feat_character(__s, v63, v61, 3, __dst);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 6, v17, __dst);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_62:
        v50 = a4;
        v51 = 0;
        while (strcmp(*(v26 + v51), "tnpattern"))
        {
          v51 += 8;
          if (v44 == v51)
          {
            v52 = __dst;
            goto LABEL_75;
          }
        }

        v52 = __dst;
        strcpy(__dst, a3);
        v15 = fe_nntn_IGTR_setFeature(v8, v26, v59, 7, v17, __dst);
LABEL_75:
        heap_Free(*(v8 + 8), v52);
        a5 = v57;
        a4 = v50;
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        heap_Free(*(v8 + 8), v27);
        v15 = 0;
      }

      igtree_Process(v9, v17, &__s1);
      v35 = __s1;
      if (!strcmp(__s1, "NOMATCH"))
      {
        log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "No igtree rule matched", v36, v37, v38, 0);
        *a5 = 0;
      }

      else
      {
        strcpy(a4, v35);
        *a5 = 1;
      }
    }

    else
    {
      log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v28, v29, v30, v31, v56);
    }

LABEL_67:
    if (*(v9 + 1296) != 1)
    {
      v53 = (*(v9 + 1296) - 1);
      v54 = v17;
      do
      {
        if (*v54)
        {
          heap_Free(*(v8 + 8), *v54);
          *v54 = 0;
        }

        ++v54;
        --v53;
      }

      while (v53);
    }

    heap_Free(*(v8 + 8), v17);
  }

  return v15;
}

uint64_t fe_nntn_IGTR_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_0[a3];
  v8 = (a2 - 1);
  while (strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_nntn_IGTR_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v18 = -1;
  result = fe_nntn_IGTR_isFeatureRequired(a2, a3, a4, &v18);
  if (result)
  {
    if (!*a6)
    {
      result = 0;
      **(a5 + 8 * v18) = 61;
      return result;
    }

    v10 = v18;
    if (strlen(a6) <= 0x40)
    {
      v12 = *(a5 + 8 * v18);
    }

    else
    {
      v11 = strlen(a6);
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v18), v11 + 1);
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_NNTN", 37000, 0, v13, v14, v15, v16, v17);
        return 2589990922;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t nntn_feat_character(uint64_t __s, __int16 *a2, signed int a3, int a4, _BYTE *a5)
{
  v6 = *a2;
  if (v6 < 0)
  {
    goto LABEL_6;
  }

  v8 = a2[1];
  if (v6 >= v8 || v8 > a3)
  {
    goto LABEL_6;
  }

  v10 = a4;
  v11 = __s;
  if (a4 < 0)
  {
    if (!*a2)
    {
      goto LABEL_6;
    }

    do
    {
      __s = utf8_GetPreviousUtf8Offset(v11, v6);
      v6 = __s;
      v12 = ~v10++ == 0;
    }

    while (!v12 && __s);
    goto LABEL_17;
  }

  if (a4)
  {
    v6 = v8 - 1;
    if (v8 - 1 == a3)
    {
      goto LABEL_6;
    }

    do
    {
      __s = utf8_GetNextUtf8Offset(v11, v6);
      v6 = __s;
      --v10;
    }

    while (v10 && __s != a3);
LABEL_17:
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_6:
    *a5 = 61;
    return __s;
  }

  v6 = 0;
LABEL_20:
  __s = utf8_getUTF8Char(v11, v6, a5);
  if ((__s & 0x80000000) != 0 || !*a5)
  {
    goto LABEL_6;
  }

  return __s;
}

uint64_t fe_nntn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2589990913;
  }

  result = 0;
  *a2 = &ITokenizer;
  return result;
}

uint64_t NNTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2589990919;
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

uint64_t NNTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v5 = 2589990922;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  memset(v79, 0, sizeof(v79));
  if (!a5)
  {
    v5 = 2589990919;
    goto LABEL_51;
  }

  v70 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v78);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v77);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v78 + 32), "FE_NNTN", 4, 0, "nntn : ObjOpen Begin", v12, v13, v14, v67);
      v15 = heap_Calloc(*(v78 + 8), 1, 16);
      if (!v15)
      {
        log_OutPublic(*(v78 + 32), "FE_NNTN", 21000, 0, v16, v17, v18, v19, v68);
LABEL_49:
        v61 = *(v78 + 32);
        v62 = "nntn : ObjOpen End (%x)";
        v68 = v5;
        v63 = 4;
LABEL_50:
        log_OutText(v61, "FE_NNTN", v63, 0, v62, v25, v26, v27, v68);
        goto LABEL_51;
      }

      v20 = v15;
      *v15 = 0;
      *(v15 + 8) = 0;
      v21 = heap_Calloc(*(v78 + 8), 1, 968);
      if (!v21)
      {
LABEL_48:
        NNTN_loc_ObjClose(v78, v20, v22, v23, v24, v25, v26, v27);
        goto LABEL_49;
      }

      v28 = v21;
      *v20 = v21;
      v69 = v20;
      *(v20 + 8) = 58765;
      v29 = v78;
      *v21 = v78;
      *(v21 + 8) = a3;
      v30 = v77;
      *(v21 + 16) = a4;
      *(v21 + 24) = v30;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 96) = 0;
      v31 = (v21 + 96);
      *(v21 + 120) = 0;
      v32 = (v21 + 120);
      *(v21 + 104) = 0;
      *(v21 + 128) = 0;
      *(v21 + 152) = 0;
      *(v21 + 160) = 0;
      *(v21 + 176) = 0;
      *(v21 + 184) = "FE_NNTN";
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
      *(v21 + 856) = 0;
      *(v21 + 888) = 0;
      *(v21 + 280) = 32;
      if ((paramc_ParamGetUInt(*(v29 + 40), "tokentninitstrlen", &v73 + 1) & 0x80000000) == 0)
      {
        *(v28 + 280) = WORD2(v73);
      }

      *(v28 + 282) = 5;
      if ((paramc_ParamGetUInt(*(v78 + 40), "tokentnmaxpcreframeblocks", &v73 + 1) & 0x80000000) == 0)
      {
        *(v28 + 282) = WORD2(v73);
      }

      *(v28 + 284) = 20;
      if ((paramc_ParamGetUInt(*(v78 + 40), "tokentnnumframesinblock", &v73 + 1) & 0x80000000) == 0)
      {
        *(v28 + 284) = WORD2(v73);
      }

      v33 = nuance_pcre_ObjOpen(a3, a4, v28 + 136);
      if ((v33 & 0x80000000) != 0)
      {
        v60 = v33;
        log_OutPublic(*(*v28 + 32), *(v28 + 184), 24021, 0, v34, v35, v36, v37, v68);
        v5 = v60;
LABEL_47:
        v20 = v69;
        goto LABEL_48;
      }

      Object = addIdentifier2List(v28, "x");
      if ((Object & 0x80000000) == 0)
      {
        if ((objc_GetObject(*(v78 + 48), "FE_DCTLKP", &v75) & 0x80000000) != 0)
        {
          v66 = 24022;
        }

        else
        {
          v43 = v75;
          *(v28 + 88) = *(v75 + 8);
          *v31 = *(v43 + 16);
          if ((objc_GetObject(*(v78 + 48), "FE_DEPES", &v74) & 0x80000000) == 0)
          {
            v44 = v74;
            *(v28 + 112) = *(v74 + 8);
            *v32 = *(v44 + 16);
            Object = objc_GetObject(*(v78 + 48), "LINGDB", &v76);
            if ((Object & 0x80000000) == 0)
            {
              *(v28 + 64) = *(v76 + 8);
              IDStrings = FEData_ObjOpen_NNTN(a3, a4, v28, v23, v24, v25, v26, v27);
              v20 = v69;
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FERuntimeData_ObjOpen(v28, v46, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FEFunctionMap_ObjOpen(v28, v47, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = tokenizer_NNTN_ObjOpen(v28, v48, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = textnormalizer_ObjOpen(v28, v49, v22, v23, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = createIDStrings(v28);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              if (!*(v28 + 336))
              {
                goto LABEL_57;
              }

              v50 = 0;
              do
              {
                log_OutText(*(*v28 + 32), *(v28 + 184), 5, 0, "nntn : identifier=%s", v25, v26, v27, *(*(v28 + 344) + 8 * v50++));
                v52 = *(v28 + 336);
              }

              while (v50 < v52);
              if (!*(v28 + 336))
              {
LABEL_57:
                log_OutPublic(*(*v28 + 32), "FE_NNTN", 24024, 0, v24, v25, v26, v27, v68);
                v5 = 2589990912;
                goto LABEL_48;
              }

              IDStrings = FEData_blockData_loadDataFiles_NNTN(v28, v52, *(v28 + 344), v51, v24, v25, v26, v27);
              if ((IDStrings & 0x80000000) != 0 || (IDStrings = getFECFGInfo(v28), (IDStrings & 0x80000000) != 0))
              {
LABEL_56:
                v5 = IDStrings;
                goto LABEL_48;
              }

              v53 = *v28;
              *(v28 + 848) = *v28;
              *(v28 + 876) = 0;
              if (!*(v28 + 840))
              {
                goto LABEL_35;
              }

              Object = nn_word_lkp_GetInterface(1u, &v70);
              if ((Object & 0x80000000) == 0)
              {
                *(v28 + 888) = v70;
                *(v28 + 896) = safeh_GetNullHandle();
                *(v28 + 904) = v54;
                *(v28 + 912) = safeh_GetNullHandle();
                *(v28 + 920) = v55;
                Object = (*(v70 + 16))(*(v28 + 896), *(v28 + 904), "nntn", a3, a4, v28 + 912);
                if ((Object & 0x80000000) == 0)
                {
                  inited = fi_model_getBrokerString_0(*v28, v79);
                  if ((inited & 0x80000000) == 0)
                  {
                    v56 = fi_init(a3, a4, a1, a2, &v72, 0, v79, "FINN", 1, 0);
                    if ((v56 & 0x80000000) != 0)
                    {
                      v5 = v56;
                      v61 = *(*v28 + 32);
                      v62 = "create FI model failed";
                      goto LABEL_61;
                    }

                    *(v28 + 856) = v72;
                    v53 = *v28;
LABEL_35:
                    *(v28 + 936) = v53;
                    if (!*(v28 + 928))
                    {
LABEL_38:
                      *(v28 + 192) = heap_Alloc;
                      *(v28 + 200) = heap_Calloc;
                      *(v28 + 208) = heap_Realloc;
                      *(v28 + 216) = heap_Free;
                      v58 = OOCAllocator_Con(v28 + 224, (v28 + 192), *(v53 + 8));
                      v5 = LH_ERROR_to_VERROR(v58);
                      if ((v5 & 0x80000000) == 0)
                      {
                        *(v28 + 264) = 0;
                        v20 = v69;
                        if (*(v28 + 840))
                        {
                          v5 = load_lua_code(v28, &v73);
                          if ((v5 & 0x80000000) != 0)
                          {
                            goto LABEL_48;
                          }
                        }

LABEL_55:
                        *a5 = v20;
                        *(a5 + 8) = 58764;
                        goto LABEL_49;
                      }

                      log_OutPublic(*(*v28 + 32), "FE_NNTN", 24024, 0, v59, v25, v26, v27, v68);
                      goto LABEL_47;
                    }

                    v57 = fe_nntn_tryLoading_NNTN_igModel(a3, a4, v53, &v71);
                    if ((v57 & 0x80000000) == 0)
                    {
                      *(v28 + 944) = v71;
                      v53 = *v28;
                      goto LABEL_38;
                    }

                    v5 = v57;
                    v61 = *(*v28 + 32);
                    v62 = "create Igtree model failed";
LABEL_61:
                    v63 = 5;
                    goto LABEL_50;
                  }

                  goto LABEL_42;
                }
              }
            }

            goto LABEL_46;
          }

          v66 = 24023;
        }

        v20 = v69;
        log_OutPublic(*(*v28 + 32), *(v28 + 184), v66, 0, v39, v40, v41, v42, v68);
        v5 = 0;
        goto LABEL_55;
      }

LABEL_46:
      v5 = Object;
      goto LABEL_47;
    }
  }

LABEL_42:
  v5 = inited;
LABEL_51:
  v64 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t NNTN_ObjClose(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v9 = *a1;
    v10 = *(*a1 + 888);
    if (v10)
    {
      (*(v10 + 24))(*(v9 + 912), *(v9 + 920));
      *(v9 + 888) = 0;
    }

    if (*(v9 + 840))
    {
      v3 = *(v9 + 856);
      if (v3)
      {
        fi_deinit(*v9, *(v9 + 24), v3);
        *(v9 + 856) = 0;
      }

      if (*(v9 + 864) || *(v9 + 868))
      {
        *(v9 + 864) = 0;
      }
    }

    if (*(v9 + 928))
    {
      v11 = *(v9 + 944);
      if (v11)
      {
        igtree_Deinit(*v9, v11, v3, v4, v5, v6, v7, v8);
        heap_Free(*(*v9 + 8), *(v9 + 944));
        *(v9 + 944) = 0;
      }
    }

    v12 = *(v9 + 272);
    if (v12)
    {
      OOC_PlacementDeleteObject(v9 + 224, v12);
      *(v9 + 272) = 0;
    }

    kaldi::nnet1::Component::IsUpdatable((v9 + 224));
    v13 = *(v9 + 184);
    log_OutText(*(*v9 + 32), v13, 4, 0, "nntn : ObjClose Begin", v14, v15, v16, v36);
    v17 = *v9;
    v25 = FEData_blockData_unloadDataFiles(v9, v18, v19, v20, v21, v22, v23, v24);
    NNTN_loc_ObjClose(v17, a1, v26, v27, v28, v29, v30, v31);
    log_OutText(*(v17 + 32), v13, 4, 0, "nntn : ObjClose End (%x)", v32, v33, v34, v25);
    return v25;
  }
}

uint64_t NNTN_ObjReopen(uint64_t *a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = 0;
  memset(v41, 0, sizeof(v41));
  v37 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0)
  {
    v40 = 0;
    if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
    {
      v3 = *a1;
      v4 = *(v3 + 344);
      if (v4)
      {
        if (*(v3 + 336))
        {
          v5 = 0;
          do
          {
            heap_Free(*(*v3 + 8), *(*(v3 + 344) + 8 * v5));
            *(*(v3 + 344) + 8 * v5++) = 0;
          }

          while (v5 < *(v3 + 336));
          v4 = *(v3 + 344);
        }

        heap_Free(*(*v3 + 8), v4);
        *(v3 + 344) = 0;
        *(v3 + 336) = 0;
        *(v3 + 352) = 0;
        *(v3 + 608) = 257;
      }

      IDStrings = addIdentifier2List(v3, "x");
      if ((IDStrings & 0x80000000) == 0)
      {
        IDStrings = createIDStrings(v3);
        if ((IDStrings & 0x80000000) == 0)
        {
          if (!*(v3 + 344))
          {
            DataFiles_NNTN = 6;
            goto LABEL_53;
          }

          if (*(v3 + 336))
          {
            v13 = 0;
            do
            {
              log_OutText(*(*v3 + 32), *(v3 + 184), 5, 0, "nntn : identifier=%s", v10, v11, v12, *(*(v3 + 344) + 8 * v13++));
            }

            while (v13 < *(v3 + 336));
          }

          v14 = *(v3 + 888);
          if (v14)
          {
            v40 = *(v3 + 888);
            (*(v14 + 24))(*(v3 + 912), *(v3 + 920));
            *(v3 + 888) = 0;
          }

          if (*(v3 + 840))
          {
            v7 = *(v3 + 856);
            if (v7)
            {
              fi_deinit(*v3, *(v3 + 24), v7);
              *(v3 + 856) = 0;
            }

            if (*(v3 + 864) || *(v3 + 868))
            {
              *(v3 + 864) = 0;
            }
          }

          if (*(v3 + 928))
          {
            v15 = *(v3 + 944);
            if (v15)
            {
              igtree_Deinit(*v3, v15, v7, v8, v9, v10, v11, v12);
              heap_Free(*(*v3 + 8), *(v3 + 944));
              *(v3 + 944) = 0;
            }

            if (*(v3 + 936))
            {
              *(v3 + 936) = 0;
            }
          }

          v16 = *(v3 + 288);
          if (v16)
          {
            heap_Free(*(*v3 + 8), v16);
            *(v3 + 288) = 0;
          }

          IDStrings = FEData_blockData_unloadUnusedDataFiles(v3, *(v3 + 336), *(v3 + 344), v8, v9, v10, v11, v12);
          if ((IDStrings & 0x80000000) == 0)
          {
            IDStrings = getFECFGInfo(v3);
            if ((IDStrings & 0x80000000) == 0)
            {
              if (!*(v3 + 336))
              {
                log_OutPublic(*(*v3 + 32), "FE_NNTN", 24024, 0, v18, v19, v20, v21, v36);
                DataFiles_NNTN = 2589990912;
                goto LABEL_53;
              }

              DataFiles_NNTN = FEData_blockData_loadDataFiles_NNTN(v3, *(v3 + 336), *(v3 + 344), v17, v18, v19, v20, v21);
              if ((DataFiles_NNTN & 0x80000000) != 0)
              {
                goto LABEL_50;
              }

              v23 = *v3;
              *(v3 + 848) = *v3;
              if (!*(v3 + 840))
              {
                goto LABEL_40;
              }

              IDStrings = nn_word_lkp_GetInterface(1u, &v40);
              if ((IDStrings & 0x80000000) == 0)
              {
                *(v3 + 888) = v40;
                *(v3 + 896) = safeh_GetNullHandle();
                *(v3 + 904) = v24;
                *(v3 + 912) = safeh_GetNullHandle();
                *(v3 + 920) = v25;
                IDStrings = (*(v40 + 16))(*(v3 + 896), *(v3 + 904), "nntn", *(v3 + 8), *(v3 + 16), v3 + 912);
                if ((IDStrings & 0x80000000) == 0)
                {
                  BrokerString_0 = fi_model_getBrokerString_0(*v3, v41);
                  if ((BrokerString_0 & 0x80000000) != 0)
                  {
                    DataFiles_NNTN = BrokerString_0;
                    goto LABEL_53;
                  }

                  DataFiles_NNTN = fi_init(*(v3 + 8), *(v3 + 16), *(v3 + 32), *(v3 + 40), &v39, 0, v41, "FINN", 1, 0);
                  if ((DataFiles_NNTN & 0x80000000) != 0)
                  {
                    v34 = *(*v3 + 32);
                    v35 = "create FI model failed";
                    goto LABEL_59;
                  }

                  *(v3 + 856) = v39;
                  v23 = *v3;
LABEL_40:
                  *(v3 + 936) = v23;
                  if (!*(v3 + 928))
                  {
LABEL_43:
                    if (*(v3 + 840))
                    {
                      DataFiles_NNTN = load_lua_code(v3, &v37);
                      if ((DataFiles_NNTN & 0x80000000) != 0)
                      {
LABEL_50:
                        v32 = *(v3 + 272);
                        if (v32)
                        {
                          OOC_PlacementDeleteObject(v3 + 224, v32);
                          *(v3 + 272) = 0;
                        }

                        kaldi::nnet1::Component::IsUpdatable((v3 + 224));
                      }
                    }

LABEL_53:
                    v33 = *MEMORY[0x1E69E9840];
                    return DataFiles_NNTN;
                  }

                  DataFiles_NNTN = fe_nntn_tryLoading_NNTN_igModel(*(v3 + 8), *(v3 + 16), v23, &v38);
                  if ((DataFiles_NNTN & 0x80000000) == 0)
                  {
                    *(v3 + 944) = v38;
                    goto LABEL_43;
                  }

                  v34 = *(*v3 + 32);
                  v35 = "create Igtree model failed";
LABEL_59:
                  log_OutText(v34, "FE_NNTN", 5, 0, v35, v27, v28, v29, v36);
                  goto LABEL_53;
                }
              }
            }
          }
        }
      }

      DataFiles_NNTN = IDStrings;
      goto LABEL_50;
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessStart(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v6 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "nntn : ProcessStart Begin", v3, v4, v5, v17);
    if (*(v6 + 336))
    {
      v15 = nuance_pcre_Init(*(v6 + 136), *(v6 + 144), *(v6 + 282), *(v6 + 284));
      if ((v15 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v6 + 32), *(v6 + 184), 24051, 0, v11, v12, v13, v14, v18);
      }

      log_OutText(*(*v6 + 32), *(v6 + 184), 4, 0, "nntn : ProcessStart End (%x)", v12, v13, v14, v15);
    }

    else
    {
      log_OutPublic(*(*v6 + 32), "FE_NNTN", 24024, 0, v7, v8, v9, v10, v18);
      return 2589990912;
    }

    return v15;
  }
}

uint64_t NNTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v12 = *a1;
    log_OutText((*v12)[4], v12[23], 4, 0, "NNTN : Process Begin", v9, v10, v11, v51);
    v12[9] = a3;
    *(v12 + 20) = a4;
    *(v12 + 219) = 0;
    *(v12 + 137) = log_GetLogLevel((*v12)[4]) > 4;
    v12[33] = 0;
    v13 = LingDBHasSentence(v12[8], v12[9], v12[10], &v55);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    if (!v55)
    {
      goto LABEL_48;
    }

    inited = initLDO((v12 + 28), v12 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = importFromLingDB(*v12, v12[8], v12[9], v12[10], v12 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v13 = 2589990922;
    v15 = LDO_ComputeText(v12[33], &v54);
    if ((LH_ERROR_to_VERROR(v15) & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    v12[38] = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v54);
    *(v12 + 156) = LHString_Length(v54);
    log_OutText((*v12)[4], v12[23], 5, 0, "<LOGFE> processing sentence : _%s_", v16, v17, v18, v12[38]);
    v19 = heap_Calloc((*v12)[1], 1, *(v12 + 156) + 1);
    v12[69] = v19;
    if (!v19)
    {
      goto LABEL_54;
    }

    *(v12 + 157) = 1;
    if (*(v12 + 156))
    {
      v20 = 0;
      while (utf8_strchr(g_szSpace, v12[38] + v20))
      {
        v20 += utf8_determineUTF8CharLength(*(v12[38] + v20));
        v21 = *(v12 + 156);
        if (v21 <= v20)
        {
          goto LABEL_18;
        }
      }

      v21 = *(v12 + 156);
LABEL_18:
      if (v21 > v20)
      {
        do
        {
          v20 = v20;
          if (utf8_strchr(g_szSpace, v12[38] + v20))
          {
            ++*(v12 + 157);
            for (i = *(v12[38] + v20); ; i = *(v12[38] + v20))
            {
              v20 += utf8_determineUTF8CharLength(i);
              if (*(v12 + 156) <= v20 || !utf8_strchr(g_szSpace, v12[38] + v20))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v20) = v20 + utf8_determineUTF8CharLength(*(v12[38] + v20));
          }
        }

        while (*(v12 + 156) > v20);
      }
    }

    inited = initStrRes(v12, (v12 + 49));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 51));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 61));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 70));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 72));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 74));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v12, (v12 + 63));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initAlignmentData(v12);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initMatchList(v12);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initSolutionList(v12);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v24 = heap_Calloc((*v12)[1], 1, 40);
    v12[40] = v24;
    v29 = *v12;
    if (v24)
    {
      v30 = heap_Calloc(*(v29 + 8), 1, 48);
      v12[41] = v30;
      if (v30)
      {
        if (*(v12 + 238) == 1)
        {
          inited = updateLDOTreeNode_CHN(v12, &v53);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_53;
          }

          if (!v53)
          {
            *a5 = 1;
            goto LABEL_53;
          }
        }

        inited = nntn_AllInOneLoop(v12, v31, v32, v33, v25, v26, v27, v28);
        if ((inited & 0x80000000) == 0)
        {
          v37 = v12[34];
          if (!v37)
          {
            log_OutText((*v12)[4], v12[23], 0, 0, "NNTN : error - pLuaVMLDO is NULL", v34, v35, v36, v52);
            v13 = 2589990918;
            goto LABEL_54;
          }

          v38 = LuaVMLDO_RunFunction(v37, "run", v12[33]);
          inited = LH_ERROR_to_VERROR(v38);
          if ((inited & 0x80000000) == 0)
          {
            if (*(v12 + 137) != 1 || (inited = dumpTokenRecordsInLingDB(v12, "At End of Processing", 1, v39, v40, v41, v42, v43), (inited & 0x80000000) == 0))
            {
              inited = exportToLingDB(*v12, v12[8], v12[9], v12[10], (v12 + 28), v12[33], 1, 1);
              if ((inited & 0x80000000) == 0)
              {
                v13 = replaceBasicTokensWithTokenIntTnInLingDB(*v12, v12[8], v12[9], v12[10], v12[33], v12[23]);
                if ((v13 & 0x80000000) != 0)
                {
LABEL_54:
                  if (v54)
                  {
                    OOC_PlacementDeleteObject((v12 + 28), v54);
                    v54 = 0;
                  }

                  v44 = v12[33];
                  if (v44)
                  {
                    deinitLDO((v12 + 28), v44);
                    v12[33] = 0;
                  }

                  v45 = v12[69];
                  if (v45)
                  {
                    heap_Free((*v12)[1], v45);
                    v12[69] = 0;
                  }

                  clearStrRes(*v12, (v12 + 49));
                  clearStrRes(*v12, (v12 + 51));
                  clearStrRes(*v12, (v12 + 61));
                  clearStrRes(*v12, (v12 + 70));
                  clearStrRes(*v12, (v12 + 72));
                  clearStrRes(*v12, (v12 + 74));
                  clearStrRes(*v12, (v12 + 63));
                  freeAlignmentData(v12);
                  freeMatchList(v12);
                  freeSolutionList(v12);
                  v49 = v12[40];
                  if (v49)
                  {
                    heap_Free((*v12)[1], v49);
                    v12[40] = 0;
                  }

                  v50 = v12[41];
                  if (v50)
                  {
                    heap_Free((*v12)[1], v50);
                    v12[41] = 0;
                  }

                  log_OutText((*v12)[4], v12[23], 4, 0, "nntn : Process End (%x)", v46, v47, v48, v13);
                  return v13;
                }

LABEL_48:
                *a5 = 1;
                goto LABEL_54;
              }
            }
          }
        }

LABEL_53:
        v13 = inited;
        goto LABEL_54;
      }

      v29 = *v12;
    }

    log_OutPublic(*(v29 + 32), v12[23], 24048, 0, v25, v26, v27, v28, v52);
    goto LABEL_54;
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessEnd(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v6 = *a1;
    log_OutText(*(*v6 + 32), *(v6 + 184), 4, 0, "nntn : ProcessEnd Begin", v3, v4, v5, v12);
    v7 = nuance_pcre_DeInit(*(v6 + 136), *(v6 + 144));
    log_OutText(*(*v6 + 32), *(v6 + 184), 4, 0, "nntn : ProcessEnd End (%x)", v8, v9, v10, v7);
    return 0;
  }
}

uint64_t addIdentifier2List(uint64_t a1, char *__s2)
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
    v17 = 2589990922;
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

uint64_t createIDStrings(_BYTE *a1)
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
    if (*v18 == 6840675)
    {
      __s2[1] = 110;
    }

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

        result = addIdentifier2List(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List(a1, v18);
          if ((result & 0x80000000) == 0)
          {
            result = addIdentifier2List(a1, v16);
          }
        }
      }

      else
      {
        result = 2589990912;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getFECFGInfo(uint64_t a1)
{
  v2 = 2589991940;
  v37 = -1;
  __c_1 = 0;
  __c = 0;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v37, &__c) & 0x80000000) != 0)
  {
    return 2589990912;
  }

  if (v37 == 1 && __c_1 != 0)
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

  v37 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v37, &__c) & 0x80000000) != 0)
  {
    return 2589990912;
  }

  if (v37 == 1 && __c_1)
  {
    v6 = *__c_1;
    v7 = strchr(*__c_1, __c);
    if (v7)
    {
      *v7 = 0;
      v6 = *__c_1;
    }

    *(a1 + 609) = atoi(v6);
  }

  v37 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_step", &__c_1, &v37, &__c) & 0x80000000) == 0)
  {
    v8 = v37;
    if (v37)
    {
      *(a1 + 864) = 0;
      if (v8 == 1 && __c_1)
      {
        v9 = *__c_1;
        v10 = strchr(*__c_1, __c);
        if (v10)
        {
          *v10 = 0;
          v9 = *__c_1;
        }

        *(a1 + 864) = LH_atou(v9);
      }

      v37 = -1;
      if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_vect", &__c_1, &v37, &__c) & 0x80000000) == 0)
      {
        v11 = v37;
        if (v37)
        {
          *(a1 + 868) = 0;
          if (v11 == 1 && __c_1)
          {
            v12 = *__c_1;
            v13 = strchr(*__c_1, __c);
            if (v13)
            {
              *v13 = 0;
              v12 = *__c_1;
            }

            *(a1 + 868) = LH_atou(v12);
          }

          v37 = -1;
          if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_max", &__c_1, &v37, &__c) & 0x80000000) == 0)
          {
            v14 = v37;
            if (v37)
            {
              *(a1 + 872) = 0;
              if (v14 == 1 && __c_1)
              {
                v15 = *__c_1;
                v16 = strchr(*__c_1, __c);
                if (v16)
                {
                  *v16 = 0;
                  v15 = *__c_1;
                }

                *(a1 + 872) = LH_atou(v15);
              }

              *(a1 + 880) = 0;
              v37 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_window_option", &__c_1, &v37, &__c) & 0x80000000) != 0 || (v20 = v37) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "Load nntn_window_option from CFG failed, use default 0.", v17, v18, v19, v34);
                v20 = v37;
              }

              if (v20 == 1 && __c_1)
              {
                v21 = *__c_1;
                v22 = strchr(*__c_1, __c);
                if (v22)
                {
                  *v22 = 0;
                  v21 = *__c_1;
                }

                *(a1 + 880) = LH_atou(v21);
              }

              v37 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN", &__c_1, &v37, &__c) & 0x80000000) == 0 && v37)
              {
                if (v37 == 1 && __c_1)
                {
                  v23 = *__c_1;
                  v24 = strchr(*__c_1, __c);
                  if (v24)
                  {
                    *v24 = 0;
                    v23 = *__c_1;
                  }

                  if (!strcmp(v23, "yes"))
                  {
                    *(a1 + 840) = 1;
                  }
                }

                v37 = -1;
                if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN_IGTree", &__c_1, &v37, &__c) & 0x80000000) == 0 && v37)
                {
                  if (v37 == 1 && __c_1)
                  {
                    v25 = *__c_1;
                    v26 = strchr(*__c_1, __c);
                    if (v26)
                    {
                      *v26 = 0;
                      v25 = *__c_1;
                    }

                    if (!strcmp(v25, "yes"))
                    {
                      *(a1 + 928) = 1;
                    }
                  }

                  v37 = -1;
                  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_one_char_per_node", &__c_1, &v37, &__c) & 0x80000000) == 0 && v37)
                  {
                    if (v37 == 1 && __c_1)
                    {
                      v27 = *__c_1;
                      v28 = strchr(*__c_1, __c);
                      if (v28)
                      {
                        *v28 = 0;
                        v27 = *__c_1;
                      }

                      if (!strcmp(v27, "yes"))
                      {
                        *(a1 + 952) = 1;
                      }
                    }

                    v37 = -1;
                    v29 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_feat_focus", &__c_1, &v37, &__c);
                    if ((v29 & 0x80000000) == 0 && v37)
                    {
                      v30 = v29;
                      if (v37 == 1 && __c_1)
                      {
                        v31 = *__c_1;
                        v32 = strchr(*__c_1, __c);
                        if (v32)
                        {
                          *v32 = 0;
                          v31 = *__c_1;
                        }

                        if (!strcmp(v31, "yes"))
                        {
                          *(a1 + 956) = 1;
                        }
                      }

                      return v30;
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

  return v2;
}

uint64_t fi_model_getBrokerString_0(uint64_t a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *v7 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      result = brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, a2, 0x100uLL);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t load_lua_code(uint64_t a1, _DWORD *a2)
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
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con(a1 + 224, a1 + 224, *(a1 + 8), *(a1 + 16), hlp_lua_log_callback_1, (a1 + 272)), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
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

uint64_t NNTN_loc_ObjClose(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    log_OutText(*(result + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose Begin", a6, a7, a8, v72);
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
      v21 = tokenizer_NNTN_ObjClose(*a2, v13, v14, v15, v16, v17, v18, v19);
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

      v40 = FEData_ObjClose_NNTN(v20, v32, v33, v34, v35, v36, v37, v38);
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

      v63 = *(v20 + 344);
      if (v63)
      {
        if (*(v20 + 336))
        {
          v64 = 0;
          do
          {
            heap_Free(*(v9 + 8), *(*(v20 + 344) + 8 * v64));
            *(*(v20 + 344) + 8 * v64++) = 0;
          }

          while (v64 < *(v20 + 336));
          v63 = *(v20 + 344);
        }

        heap_Free(*(v9 + 8), v63);
      }

      v65 = *(v20 + 288);
      if (v65)
      {
        heap_Free(*(v9 + 8), v65);
      }

      v66 = *(v20 + 888);
      if (v66)
      {
        v12 = (*(v66 + 24))(*(v20 + 912), *(v20 + 920));
        *(v20 + 888) = 0;
      }

      if (*(v20 + 840))
      {
        v57 = *(v20 + 856);
        if (v57)
        {
          v12 = fi_deinit(*v20, *(v20 + 24), v57);
          *(v20 + 856) = 0;
        }

        if (*(v20 + 864) || *(v20 + 868))
        {
          *(v20 + 864) = 0;
        }
      }

      if (*(v20 + 928))
      {
        v67 = *(v20 + 944);
        if (v67)
        {
          igtree_Deinit(*v20, v67, v57, v58, v59, v60, v61, v62);
          heap_Free(*(*v20 + 8), *(v20 + 944));
          *(v20 + 944) = 0;
        }

        if (*(v20 + 936))
        {
          *(v20 + 936) = 0;
        }
      }

      v68 = *(v20 + 272);
      if (v68)
      {
        OOC_PlacementDeleteObject(v20 + 224, v68);
        *(v20 + 272) = 0;
      }

      kaldi::nnet1::Component::IsUpdatable((v20 + 224));
      heap_Free(*(v9 + 8), v20);
    }

    heap_Free(*(v9 + 8), a2);
    return log_OutText(*(v9 + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose End (%x)", v69, v70, v71, v12);
  }

  return result;
}

uint64_t setDomainsOnSentence_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN Begin", a6, a7, a8, v80);
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1, v9, v10, v11, v12, v13);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v95, &v93, 0, v14, v15);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : %d block(s) to search in", v17, v18, v19, v93);
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
              *(v26[5] + 16 * v29[6] + 8);
              v84 = *(v26 + 2);
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : domain[%d,%d,%s,type=%d] marker %s%s %s", v22, v23, v24, i);
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

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN End (%x)", v22, v23, v24, DomainDefBlockInfo);
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

    return NNTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence_NNTN(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN Begin", a6, a7, a8, v38);
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
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Remove duplicate domain %d,%d RANGE %d,%d ?", v12, v13, v14, 1);
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
          if (*(*(v43 + 40) + 16 * v22[6] + 8) && *(v49 + 2) == 1)
          {
            v23 = v49[1];
            v39 = *v49;
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d ?", v12, v13, v14, *(v22 + 6) + *v22);
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
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", v32, v33, v34, v31);
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
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN End (%x)", v12, v13, v14, v17);
    v37 = *MEMORY[0x1E69E9840];
    return v17;
  }

  else
  {
    v35 = *MEMORY[0x1E69E9840];

    return NNTNERROR(7);
  }
}

uint64_t stat_mnctn_seq2rule(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4)
{
  v8 = *a2;
  v64 = 0;
  v62 = 0;
  v9 = a2[5];
  v10 = (*(v9 + 40))(a2[8], a2[9], &v64);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = heap_Calloc(*(v8 + 8), 1, 8);
  if (!v11)
  {
    v34 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v12, v13, v14, v15, v55);
    return v34;
  }

  v16 = v11;
  v17 = heap_Calloc(*(v8 + 8), 1, 2048);
  if (!v17)
  {
    v34 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v18, v19, v20, v21, v55);
    v35 = *(v8 + 8);
    v36 = v16;
    goto LABEL_51;
  }

  v22 = v17;
  v23 = *(a2 + 5);
  if (*(a1 + 956) == 1)
  {
    ++v23;
  }

  v24 = heap_Alloc(*(v8 + 8), 4 * (v23 * *(a2 + 4)));
  v63 = v24;
  if (!v24)
  {
    v34 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0, v25, v26, v27, v28, v55);
    goto LABEL_50;
  }

  v29 = *a3;
  __dst = a4;
  v60 = v24;
  if (*(a2 + 8) == 1)
  {
    v30 = *(a2 + 4);
    v31 = a3[1] - v29;
    if (v30 == v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30 - v31;
    }

    v56 = ((v32 & 1) + v32) >> 1;
    v33 = -v56;
  }

  else
  {
    v31 = a3[1] - v29;
    LOWORD(v56) = 7;
    LOWORD(v33) = -7;
  }

  strncpy(v22, (*(a1 + 304) + v29), (v31 + 1));
  v41 = 0;
  v59 = 0;
  v42 = 0;
  v22[a3[1] - *a3] = 0;
LABEL_18:
  v43 = v41;
  while (1)
  {
    v44 = *(a2 + 4);
    if (v44 <= v43)
    {
      break;
    }

    if ((v33 & 0x8000) != 0)
    {
      nnGetChar(*(a1 + 304), a3, v33, v16);
      LOWORD(v33) = v33 + 1;
      if (*v16)
      {
        v61 = v42;
LABEL_35:
        v48 = *(a1 + 956);
        v49 = 0.0;
        goto LABEL_36;
      }
    }

    else
    {
      v61 = v42;
      if (v59)
      {
        if (v56 < 1)
        {
          strcpy(v16, "</s>");
        }

        else
        {
          nnGetChar(*(a1 + 304), a3, (8 - v56), v16);
          if (!*v16)
          {
            strcpy(v16, "</s>");
          }

          LOWORD(v56) = v56 - 1;
        }

        goto LABEL_35;
      }

      v58 = v9;
      if ((v42 & 0x8000) == 0)
      {
        v45 = v42;
        if (v42)
        {
          NextUtf8Offset = 0;
          while (NextUtf8Offset != strlen(v22))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v22, NextUtf8Offset);
            v47 = v45--;
            if (v47 <= 1)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          NextUtf8Offset = 0;
LABEL_31:
          if ((utf8_getUTF8Char(v22, NextUtf8Offset, v16) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      *v16 = 0;
LABEL_33:
      v42 = v61 + 1;
      v59 = 1;
      v9 = v58;
      if (*v16)
      {
        ++v61;
        v59 = 0;
        v48 = *(a1 + 956);
        v49 = 1.0;
LABEL_36:
        if (v48 == 1)
        {
          *v60 = v49;
          v50 = v60 + 1;
        }

        else
        {
          v50 = v60;
        }

        if (((*(v9 + 56))(a2[8], a2[9], v16, v50) & 0x1FFF) == 0x14)
        {
          log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "No embedding vector for character %s . Fall back!", v38, v39, v40, v16);
          strcpy(v16, "</s>");
          (*(v9 + 56))(a2[8], a2[9], v16, v50);
        }

        v41 = v43 + 1;
        v60 = &v50[v64];
        v42 = v61;
        goto LABEL_18;
      }
    }
  }

  v34 = fi_predict(a2[1], &v63, v44, &v62, v37, v38, v39, v40);
  if ((v34 & 0x80000000) != 0)
  {
    log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "FIhmogrph Prediction Failed", v51, v52, v53, 0);
  }

  else
  {
    strcpy(__dst, *v62);
  }

LABEL_50:
  heap_Free(*(v8 + 8), v16);
  v35 = *(v8 + 8);
  v36 = v22;
LABEL_51:
  heap_Free(v35, v36);
  return v34;
}

uint64_t nnGetChar(uint64_t __s, __int16 *a2, int a3, _BYTE *a4)
{
  NextUtf8Offset = *a2;
  if ((NextUtf8Offset & 0x80000000) == 0)
  {
    v6 = a2[1];
    if (NextUtf8Offset < v6)
    {
      v7 = a3;
      v8 = __s;
      if ((a3 & 0x80000000) == 0)
      {
        if (a3)
        {
          NextUtf8Offset = v6 - 1;
          while (1)
          {
            __s = strlen(v8);
            if (NextUtf8Offset == __s)
            {
              goto LABEL_16;
            }

            NextUtf8Offset = utf8_GetNextUtf8Offset(v8, NextUtf8Offset);
            v9 = v7--;
            if (v9 <= 1)
            {
              goto LABEL_15;
            }
          }
        }

        NextUtf8Offset = 0;
LABEL_15:
        __s = utf8_getUTF8Char(v8, NextUtf8Offset, a4);
        if ((__s & 0x80000000) == 0)
        {
          return __s;
        }

        goto LABEL_16;
      }

      if (*a2)
      {
        do
        {
          __s = utf8_GetPreviousUtf8Offset(v8, NextUtf8Offset);
          NextUtf8Offset = __s;
          v10 = ~v7 == 0;
          LOWORD(v7) = v7 + 1;
        }

        while (!v10 && __s);
        if (!v7)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  *a4 = 0;
  return __s;
}

uint64_t FEData_ObjOpen_NNTN(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    FEData_ObjClose_NNTN(a3, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0, v12, v13, v14, v15, v28);

  return NNTNERROR(10);
}

uint64_t FEData_ObjClose_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    return NNTNERROR(8);
  }
}

uint64_t FEData_blockData_ObjClose_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1[19] + 16);
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (v9)
  {
    log_OutText(v10, v11, 4, 0, "blockData : ObjClose Begin", a6, a7, a8, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjClose End (%x)", v12, v13, v14, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v16);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v12 = v11[6] + 32 * *(*a2 + 4);
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

uint64_t FEData_blockData_loadDataFiles_NNTN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v116 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 152);
  v113 = 0;
  memset(v115, 0, 128);
  memset(v114, 0, sizeof(v114));
  v112 = 0;
  v110 = 0;
  v111 = 0;
  *v109 = 0;
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = *(*a1 + 32);
    v12 = *(v8 + 184);
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

    if ((paramc_ParamGetStr(*(v17 + 40), "langcode", v109) & 0x80000000) != 0)
    {
      *v109 = "";
    }

    if ((paramc_ParamGetStr(*(*v8 + 40), "fecfg", &v110) & 0x80000000) == 0)
    {
      strcpy(v114, "nntokentn/");
      v20 = *(a3 + 8 * *(v8 + 352));
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v21 = brokeraux_ComposeBrokerString(*v8, v114, 1, 1, *v109, 0, 0, v115, 0x80uLL);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v22 = *(v8 + 40);
      RsrcHandleForThisApi = getRsrcHandleForThisApi(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 32));
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v24, 2, v115, "TOKN", 1031, &v113) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v113, "CFIG", 0, &v112, &v111);
        v38 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) == 0 || v38 == 20)
        {
          if (v38 == 20)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
          }

          else
          {
            v40 = *v111;
            if (*v111)
            {
              if (v40 == 3)
              {
                v40 = 0;
                v39 = v111[1] == 1;
                v41 = 1;
              }

              else
              {
                v39 = v111[1] == 1;
                if (v40 == 1)
                {
                  v40 = 0;
                  v41 = 0;
                }

                else
                {
                  v41 = 0;
                  v40 = v111[2] == 1;
                }
              }
            }

            else
            {
              v39 = 0;
              v41 = *v111;
            }

            Chunk = ssftriff_reader_CloseChunk(v113);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          Chunk = ssftriff_reader_FindChunk(v113, "FILE", 0, &v112, &v111);
          if ((Chunk & 0x80000000) == 0)
          {
            *v10 = *v111;
            Chunk = ssftriff_reader_CloseChunk(v113);
            if ((Chunk & 0x80000000) == 0)
            {
              __strcpy_chk();
              DataBlockFromFileRefCnt = readDataBlockFromFileRefCnt(v8, v113, v39, v40, v41, v115);
              if ((DataBlockFromFileRefCnt & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v113, v43, v44, v45, v34, v35, v36, v37);
                v113 = 0;
                v53 = *v10;
                if (*v10)
                {
                  v97 = DataBlockFromFileRefCnt;
                  v98 = v8;
                  v54 = 0;
                  v55 = 0;
                  v106 = v10;
                  do
                  {
                    v56 = *(*(*(v10 + 17) + 8) + 8 * v54);
                    if (v56)
                    {
                      v57 = *(v56 + 16);
                      if (v57)
                      {
                        v58 = 0;
                        v107 = *(*(*(v10 + 17) + 8) + 8 * v54);
                        while (v58 < *(v57 + 24))
                        {
                          v59 = (*(v57 + 16) + 72 * v58);
                          if (*(v59 + 16) == 1)
                          {
                            if (*(v98 + 288))
                            {
                              v56 = v107;
                              if (strcmp(*(v98 + 288), (*(v59 + 6) + *v59)))
                              {
                                log_OutPublic(*(*v98 + 32), *(v98 + 184), 24053, "%s%s%s%s", v49, v50, v51, v52, "first assigned");
                                goto LABEL_105;
                              }
                            }

                            else
                            {
                              v60 = strlen((*(v59 + 6) + *v59));
                              v61 = heap_Calloc(*(*v98 + 8), 1, (v60 + 1));
                              *(v98 + 288) = v61;
                              if (!v61)
                              {
                                log_OutPublic(*(*v98 + 32), *(v98 + 184), 24048, 0, v62, v63, v64, v65, v96);
                                v21 = 10;
                                goto LABEL_23;
                              }

                              strcpy(v61, (*(v59 + 6) + *v59));
                              *(v98 + 296) = v54;
                              *(v98 + 298) = v58;
                              v56 = v107;
                            }
                          }

                          v99 = v58;
                          if (*(v59 + 2) == 1)
                          {
                            v66 = *(v56 + 16);
                            v102 = *(v66 + 48);
                            if (*(v66 + 48))
                            {
                              v67 = 0;
                              v100 = *(v66 + 40);
                              while (1)
                              {
                                v104 = v67;
                                v68 = v100 + 16 * v67;
                                v69 = *(v68 + 8);
                                if (*(v68 + 8))
                                {
                                  v70 = 0;
                                  v71 = *v10;
                                  do
                                  {
                                    if (v71)
                                    {
                                      v72 = 0;
                                      v73 = *(*(v10 + 17) + 8);
                                      while (1)
                                      {
                                        v74 = *(v73 + 8 * v72);
                                        if (*v74 != 1 && *v74 != 4)
                                        {
                                          if (*(v66 + 50))
                                          {
                                            v76 = *(*v68 + 24 * v70);
                                            if (*(v66 + 50) > *v76 && !strcmp(**(v74 + 8), *(*(v66 + 56) + 8 * *v76)))
                                            {
                                              break;
                                            }
                                          }
                                        }

                                        if (v71 == ++v72)
                                        {
                                          v55 = 0;
                                          goto LABEL_65;
                                        }
                                      }

                                      v76[1] = v72;
                                      v55 = 1;
LABEL_65:
                                      v10 = v106;
                                      v56 = v107;
                                    }

                                    else
                                    {
                                      v55 = 0;
                                    }

                                    ++v70;
                                  }

                                  while (v70 != v69);
                                }

                                if (!v55)
                                {
                                  break;
                                }

                                v67 = v104 + 1;
                                v55 = 1;
                                if (v104 + 1 == v102)
                                {
                                  goto LABEL_70;
                                }
                              }

                              log_OutPublic(*(*v98 + 32), *(v98 + 184), 24045, 0, v49, v50, v51, v52, v96);
                              DataBlockFromFileRefCnt = v97;
                              goto LABEL_110;
                            }
                          }

LABEL_70:
                          v58 = v99 + 1;
                          v57 = *(v56 + 16);
                          if (!v57)
                          {
                            break;
                          }
                        }
                      }

                      v53 = *v10;
                    }

                    if (v53)
                    {
                      v77 = 0;
                      v101 = v53;
                      v103 = *(*(v10 + 17) + 8);
                      for (i = v53; i != v77; v87 = i)
                      {
                        v78 = *(v103 + 8 * v77);
                        if (v78)
                        {
                          v79 = *(v78 + 24);
                          if (v79)
                          {
                            v80 = *(v79 + 16);
                            if (*(v79 + 16))
                            {
                              v81 = 0;
                              v108 = *(v79 + 8);
                              do
                              {
                                if (v56)
                                {
                                  v82 = *(v56 + 16);
                                  if (v82)
                                  {
                                    v83 = *(v82 + 24);
                                    if (*(v82 + 24))
                                    {
                                      v84 = *(v108 + 8 * v81);
                                      v85 = *(v82 + 16);
                                      v86 = *v84;
                                      do
                                      {
                                        if (!strcmp(v86, (*(v85 + 6) + *v85)))
                                        {
                                          *(v84 + 10) = v54;
                                        }

                                        v85 += 36;
                                        --v83;
                                      }

                                      while (v83);
                                    }
                                  }
                                }

                                ++v81;
                              }

                              while (v81 != v80);
                            }
                          }
                        }

                        ++v77;
                      }

                      v10 = v106;
                      v53 = v101;
                    }

                    else
                    {
                      v87 = 0;
                    }

                    ++v54;
                  }

                  while (v54 < v87);
                  v8 = v98;
                  DataBlockFromFileRefCnt = v97;
                  if (v53)
                  {
                    for (j = 0; j < v53; ++j)
                    {
                      v89 = *(*(*(v10 + 17) + 8) + 8 * j);
                      if (v89)
                      {
                        v90 = *(v89 + 16);
                        if (v90)
                        {
                          v91 = 0;
                          v92 = -1;
                          do
                          {
                            if (++v92 >= *(v90 + 24))
                            {
                              break;
                            }

                            v93 = *(v90 + 16) + v91;
                            if (*(v93 + 40) && (!*(v93 + 8) || !*(v90 + 48)))
                            {
                              log_OutPublic(*(*v98 + 32), *(v98 + 184), 24062, 0, v49, v50, v51, v52, v96);
                            }

                            v91 += 72;
                            v90 = *(v89 + 16);
                          }

                          while (v90);
                        }

                        v53 = *v10;
                      }
                    }
                  }
                }

                if (!*(v8 + 288))
                {
                  log_OutPublic(*(*v8 + 32), *(v8 + 184), 24054, 0, v49, v50, v51, v52, v96);
LABEL_105:
                  v21 = 0;
                  goto LABEL_23;
                }

LABEL_108:
                if (v113)
                {
                  ssftriff_reader_ObjClose(v113, v46, v47, v48, v49, v50, v51, v52);
                }

                goto LABEL_110;
              }

LABEL_107:
              log_OutPublic(*(*v8 + 32), *(v8 + 184), 24052, 0, v34, v35, v36, v37, v96);
              goto LABEL_108;
            }
          }
        }

LABEL_106:
        DataBlockFromFileRefCnt = Chunk;
        goto LABEL_107;
      }
    }

    strcpy(v114, "nntokentn/");
    v25 = *(a3 + 8 * *(v8 + 352));
    __strcat_chk();
    v21 = brokeraux_ComposeBrokerString(*v8, v114, 1, 1, *v109, 0, 0, v115, 0x80uLL);
    if ((v21 & 0x80000000) == 0)
    {
      v26 = *(v8 + 40);
      v27 = getRsrcHandleForThisApi(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 32));
      if ((ssftriff_reader_ObjOpen(v27, v28, 0, v115, "TOKN", 1031, &v113) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*v8 + 32), *(v8 + 184), 24057, "%s%s", v29, v30, v31, v32, "Missing broker header file");
      v21 = 3;
    }

LABEL_23:
    DataBlockFromFileRefCnt = FEDATA_ERROR(v21);
LABEL_110:
    v94 = *MEMORY[0x1E69E9840];
    return DataBlockFromFileRefCnt;
  }

  v11 = *(*a1 + 32);
  v12 = *(v8 + 184);
  v13 = 24055;
LABEL_5:
  log_OutPublic(v11, v12, v13, 0, a5, a6, a7, a8, v95);
  v14 = *MEMORY[0x1E69E9840];
  v15 = 7;
LABEL_6:

  return FEDATA_ERROR(v15);
}

uint64_t readDataBlockFromFileRefCnt(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v22);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v21);
    if ((result & 0x80000000) == 0)
    {
      v16[0] = a1;
      v16[1] = a2;
      v17 = a3;
      v18 = a4;
      LODWORD(v19) = a5;
      v14 = v21;
      v13 = v22;
      __s1 = 0;
      if ((paramc_ParamGetStr(*(v22 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !strcmp(__s1, "internal"))
      {
        v13 = v14;
      }

      result = objc_GetAddRefCountedObject(*(v13 + 48), a6, readDataBlockFromFile_ObjcLoad, readDataBlockFromFile_ObjcClose, v16, &v20);
      if ((result & 0x80000000) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v20 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v15;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 20);
  v10 = *(a5 + 24);
  v11 = *(*(*a5 + 152) + 16);
  v12 = heap_Calloc(*(**a5 + 8), 1, 16);
  *(a4 + 32) = v12;
  v17 = *v6;
  if (!v12)
  {
LABEL_141:
    log_OutPublic(*(v17 + 32), v6[23], 24048, 0, v13, v14, v15, v16, v169);
    v29 = FEDATA_ERROR(10);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_142:
      log_OutPublic(*(*v6 + 32), v6[23], 24052, 0, v164, v165, v166, v167, v170);
    }

    return v29;
  }

  *(*(a4 + 32) + 8) = heap_Calloc(*(v17 + 8), 1, (8 * *v11) | 1);
  v18 = *(a4 + 32);
  if (!*(v18 + 8))
  {
LABEL_140:
    v17 = *v6;
    goto LABEL_141;
  }

  v178 = v11;
  v19 = *v11;
  *v18 = v19;
  if (v19)
  {
    v175 = v10;
    v176 = v8;
    v177 = v9;
    v20 = 0;
    v21 = v178;
    while (1)
    {
      *(*(*(a4 + 32) + 8) + 8 * v20) = heap_Calloc(*(*v6 + 8), 1, 48);
      v22 = *(*(*(a4 + 32) + 8) + 8 * v20);
      if (!v22)
      {
        goto LABEL_140;
      }

      *v180 = 0;
      v181 = 0;
      v179 = 0;
      Chunk = ssftriff_reader_FindChunk(v7, "HEAD", 1, &v181 + 1, v180);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_94:
        v29 = Chunk;
LABEL_95:
        v42 = 0;
LABEL_96:
        log_OutPublic(*(*v6 + 32), v6[23], 24052, 0, v24, v25, v26, v27, v169);
        goto LABEL_97;
      }

      LODWORD(v181) = 0;
      v28 = **v180;
      LODWORD(v181) = 2;
      *v22 = v28;
      v29 = ssftriff_reader_CloseChunk(v7);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_95;
      }

      v30 = *v22;
      if ((*v22 - 3) <= 2)
      {
        v31 = heap_Calloc(*(*v6 + 8), 1, 24);
        *(v22 + 24) = v31;
        if (!v31)
        {
          goto LABEL_102;
        }

        Chunk = ssftriff_reader_FindChunk(v7, "REMP", 1, &v181 + 1, v180);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        LODWORD(v181) = 0;
        v33 = *v180;
        v34 = **v180;
        LODWORD(v181) = 2;
        v35 = *(v22 + 24);
        *v35 = v34;
        if (!v34)
        {
          v134 = v181;
          *(v35 + 16) = *(v33 + v181);
          LODWORD(v181) = v134 + 2;
          if (*(*(v22 + 24) + 16))
          {
            v135 = heap_Calloc(*(*v6 + 8), 1, 8 * *(*(v22 + 24) + 16));
            v140 = *(v22 + 24);
            *(v140 + 8) = v135;
            if (!v135)
            {
              log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v136, v137, v138, v139, v169);
              *(*(v22 + 24) + 16) = 0;
              goto LABEL_129;
            }

            if (*(v140 + 16))
            {
              v141 = 0;
              while (1)
              {
                *(*(*(v22 + 24) + 8) + 8 * v141) = heap_Calloc(*(*v6 + 8), 1, 24);
                v142 = *(v22 + 24);
                if (!*(*(v142 + 8) + 8 * v141))
                {
                  goto LABEL_127;
                }

                if (++v141 >= *(v142 + 16))
                {
                  v21 = v178;
                  if (!*(v142 + 16))
                  {
                    break;
                  }

                  v143 = 0;
                  while (1)
                  {
                    v171 = v143;
                    v144 = *(*(v142 + 8) + 8 * v143);
                    v145 = *(*v180 + v181);
                    LODWORD(v181) = v181 + 2;
                    v146 = v145 + 1;
                    v147 = heap_Calloc(*(*v6 + 8), 1, (v145 + 1));
                    *v144 = v147;
                    if (!v147)
                    {
                      goto LABEL_127;
                    }

                    v174 = v144;
                    v179 = v146;
                    v29 = ssftriff_reader_ReadStringZ(v7, *v180, HIDWORD(v181), v181, v147, &v179);
                    v42 = 1;
                    if ((v29 & 0x80000000) != 0 || v179 != v146)
                    {
                      goto LABEL_104;
                    }

                    v148 = v181 + v146;
                    LODWORD(v181) = v148;
                    v149 = *v180;
                    v150 = v174;
                    *(v174 + 4) = *(*v180 + v148);
                    LODWORD(v181) = v148 + 2;
                    *(v174 + 5) = *(v149 + v148 + 2);
                    LODWORD(v181) = v148 + 4;
                    v151 = *(v149 + v148 + 4);
                    *(v174 + 6) = v151;
                    LODWORD(v181) = v148 + 6;
                    if (v151)
                    {
                      v152 = heap_Calloc(*(*v6 + 8), 1, 8 * v151);
                      v174[2] = v152;
                      if (!v152)
                      {
                        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v153, v154, v155, v156, v169);
                        *(v174 + 6) = 0;
                        goto LABEL_129;
                      }

                      if (*(v174 + 6))
                      {
                        v157 = 0;
                        v158 = v181;
                        do
                        {
                          v159 = *(*v180 + v158);
                          LODWORD(v181) = v158 + 2;
                          v160 = v159 + 1;
                          *(v150[2] + 8 * v157) = heap_Calloc(*(*v6 + 8), 1, (v159 + 1));
                          v24 = *(v150[2] + 8 * v157);
                          if (!v24)
                          {
                            goto LABEL_127;
                          }

                          v179 = v160;
                          v29 = ssftriff_reader_ReadStringZ(v7, *v180, HIDWORD(v181), v181, v24, &v179);
                          v42 = 1;
                          if ((v29 & 0x80000000) != 0 || v179 != v160)
                          {
                            goto LABEL_104;
                          }

                          v158 = v181 + v160;
                          LODWORD(v181) = v158;
                          ++v157;
                          v150 = v174;
                        }

                        while (v157 < *(v174 + 6));
                      }
                    }

                    v143 = v171 + 1;
                    v142 = *(v22 + 24);
                    v21 = v178;
                    if (v171 + 1 >= *(v142 + 16))
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
        v29 = ssftriff_reader_CloseChunk(v7);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v30 = *v22;
      }

      if (v30 <= 5 && ((1 << v30) & 0x2D) != 0)
      {
        v36 = heap_Calloc(*(*v6 + 8), 1, 72);
        *(v22 + 8) = v36;
        if (!v36)
        {
          goto LABEL_102;
        }

        v30 = *v22;
      }

      if (v30 <= 5 && ((1 << v30) & 0x36) != 0)
      {
        v37 = heap_Calloc(*(*v6 + 8), 1, 64);
        *(v22 + 16) = v37;
        if (!v37)
        {
LABEL_102:
          log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v32, v25, v26, v27, v169);
          v133 = FEDATA_ERROR(10);
          goto LABEL_103;
        }

        v30 = *v22;
      }

      if (v30 <= 5 && ((1 << v30) & 0x2D) != 0)
      {
        Chunk = ssftriff_reader_FindChunk(v7, "TDAT", 1, &v181 + 1, v180);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        LODWORD(v181) = 0;
        v38 = *v180;
        *(v22 + 40) = *v180;
        LOWORD(v38) = *v38;
        LODWORD(v181) = 2;
        v39 = v38 + 1;
        v40 = heap_Calloc(*(*v6 + 8), 1, (v38 + 1));
        **(v22 + 8) = v40;
        if (!v40)
        {
          goto LABEL_127;
        }

        v179 = v39;
        v29 = ssftriff_reader_ReadStringZ(v7, *v180, HIDWORD(v181), v181, v40, &v179);
        v42 = 1;
        if ((v29 & 0x80000000) != 0 || v179 != v39)
        {
          goto LABEL_104;
        }

        v43 = v181 + v39;
        LODWORD(v181) = v43;
        v44 = *v180;
        *(*(v22 + 8) + 8) = *(*v180 + v43);
        LODWORD(v181) = v43 + 2;
        *(*(v22 + 8) + 12) = *(v44 + v43 + 2);
        LODWORD(v181) = v43 + 4;
        v45 = *(v44 + v43 + 4);
        LODWORD(v181) = v43 + 8;
        v46 = *(v44 + v43 + 8);
        v47 = v43 + 12;
        v48 = *(v22 + 8);
        *(v48 + 16) = v47;
        *(v48 + 24) = v44 + v47;
        LODWORD(v181) = v45 + v47;
        v49 = (v45 + v47 + *(v44 + (v45 + v47)) + 4);
        *(v48 + 40) = v49;
        *(v48 + 32) = v44 + v49;
        LODWORD(v181) = v49 + v46;
        if (*(v48 + 8))
        {
          v50 = heap_Calloc(*(*v6 + 8), 1, 32 * *(v48 + 8));
          v48 = *(v22 + 8);
          *(v48 + 48) = v50;
          if (!v50)
          {
            goto LABEL_131;
          }

          if (*(v48 + 8))
          {
            v51 = 0;
            v52 = 0;
            while (1)
            {
              v53 = *(v48 + 48) + v51;
              v54 = *v180;
              v55 = *(*v180 + v181);
              LODWORD(v181) = v181 + 2;
              *v53 = v55;
              *(v53 + 4) = *(v54 + v181);
              LODWORD(v181) = v181 + 2;
              *(v53 + 6) = *(*v180 + v181);
              LODWORD(v181) = v181 + 2;
              LODWORD(v54) = *(*v180 + v181);
              *(v53 + 24) = v54;
              LODWORD(v181) = v181 + 2;
              *(v53 + 26) = *(*v180 + v181);
              LODWORD(v181) = v181 + 2;
              *(v53 + 28) = *(*v180 + v181);
              LODWORD(v181) = v181 + 2;
              *(v53 + 8) = 0;
              if (v54)
              {
                v56 = heap_Calloc(*(*v6 + 8), 1, 56);
                v57 = v56;
                *(v53 + 8) = v56;
                if (!v56)
                {
                  goto LABEL_133;
                }

                *v56 = &StaticIntPointers;
                *(v56 + 24) = 0;
                *(v56 + 16) = 0;
                *(v56 + 40) = 0;
                *(v56 + 48) = 0;
                *(v56 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v56, *v180, &v181, HIDWORD(v181));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              *(v53 + 16) = 0;
              if (*(v53 + 26))
              {
                v59 = heap_Calloc(*(*v6 + 8), 1, 56);
                v57 = v59;
                *(v53 + 16) = v59;
                if (!v59)
                {
LABEL_133:
                  v161 = *(*v6 + 32);
                  v162 = v6[23];
                  goto LABEL_128;
                }

                *v59 = &StaticIntPointers;
                *(v59 + 24) = 0;
                *(v59 + 16) = 0;
                *(v59 + 40) = 0;
                *(v59 + 48) = 0;
                *(v59 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v59, *v180, &v181, HIDWORD(v181));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              ++v52;
              v48 = *(v22 + 8);
              v51 += 32;
              if (v52 >= *(v48 + 8))
              {
                goto LABEL_39;
              }
            }

            v29 = FunctionDataFromBinaryFile;
            v42 = 1;
            v21 = v178;
            goto LABEL_96;
          }
        }

LABEL_39:
        v60 = *(v48 + 12);
        v21 = v178;
        if (v60)
        {
          v61 = heap_Calloc(*(*v6 + 8), 1, 16 * v60);
          v62 = *(v22 + 8);
          *(v62 + 64) = v61;
          if (!v61)
          {
            goto LABEL_127;
          }

          if (*(v62 + 12))
          {
            v63 = 0;
            v64 = 0;
            do
            {
              v65 = *(v62 + 64);
              if (v176 == 1)
              {
                *(v65 + v63 + 4) = *(*v180 + v181);
                v66 = v181 + 4;
                LODWORD(v181) = v181 + 4;
                v67 = *v180;
              }

              else
              {
                v67 = *v180;
                v68 = *(*v180 + v181);
                LODWORD(v181) = v181 + 2;
                *(v65 + v63 + 4) = v68;
                v66 = v181;
              }

              v69 = v65 + v63;
              *(v69 + 8) = *(v67 + v66);
              LODWORD(v181) = v181 + 2;
              *(v69 + 10) = *(*v180 + v181);
              LODWORD(v181) = v181 + 2;
              *v69 = *(*v180 + v181);
              v70 = v181;
              LODWORD(v181) = v181 + 2;
              v71 = *(*v180 + v181);
              LODWORD(v181) = v70 + 4;
              *(v69 + 12) = v71;
              ++v64;
              v62 = *(v22 + 8);
              v63 += 16;
            }

            while (v64 < *(v62 + 12));
          }
        }

        v72 = ssftriff_reader_DetachChunkData(v7, (v22 + 32), v180, v41, v24, v25, v26, v27);
        if ((v72 & 0x80000000) != 0)
        {
          v29 = v72;
          v42 = 1;
          goto LABEL_96;
        }

        v73 = *v180;
        *(v22 + 40) = *v180;
        v74 = *(v22 + 8);
        v75 = v73 + *(v74 + 16);
        v76 = v73 + *(v74 + 40);
        *(v74 + 24) = v75;
        *(v74 + 32) = v76;
        v29 = ssftriff_reader_CloseChunk(v7);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v30 = *v22;
      }

      if (v30 > 5 || ((1 << v30) & 0x36) == 0)
      {
        goto LABEL_100;
      }

      Chunk = ssftriff_reader_FindChunk(v7, "DDAT", 1, &v181 + 1, v180);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      LODWORD(v181) = 0;
      v77 = **v180;
      LODWORD(v181) = 2;
      v78 = v77 + 1;
      v79 = heap_Calloc(*(*v6 + 8), 1, (v77 + 1));
      **(v22 + 16) = v79;
      if (!v79)
      {
        goto LABEL_127;
      }

      v179 = v78;
      v29 = ssftriff_reader_ReadStringZ(v7, *v180, HIDWORD(v181), v181, v79, &v179);
      v42 = 1;
      if ((v29 & 0x80000000) == 0 && v179 == v78)
      {
        v80 = v181 + v78;
        LODWORD(v181) = v80;
        v81 = *v180;
        v82 = *(*v180 + v80);
        LODWORD(v181) = v80 + 2;
        v83 = *(v22 + 16);
        *(v83 + 8) = v82;
        *(v83 + 24) = *(v81 + v80 + 2);
        LODWORD(v181) = v80 + 4;
        *(*(v22 + 16) + 50) = *(v81 + v80 + 4);
        LODWORD(v181) = v80 + 6;
        v84 = *(v22 + 16);
        *(v84 + 56) = 0;
        if (*(v84 + 50))
        {
          v85 = heap_Calloc(*(*v6 + 8), 1, 8 * *(v84 + 50));
          v84 = *(v22 + 16);
          *(v84 + 56) = v85;
          if (v85)
          {
            if (*(v84 + 50))
            {
              v86 = 0;
              v87 = v181;
              while (1)
              {
                v88 = *(*v180 + v87);
                LODWORD(v181) = v87 + 2;
                v89 = v88 + 1;
                *(*(*(v22 + 16) + 56) + 8 * v86) = heap_Calloc(*(*v6 + 8), 1, (v88 + 1));
                v24 = *(*(*(v22 + 16) + 56) + 8 * v86);
                if (!v24)
                {
                  goto LABEL_127;
                }

                v90 = v89;
                v179 = v89;
                v29 = ssftriff_reader_ReadStringZ(v7, *v180, HIDWORD(v181), v181, v24, &v179);
                v42 = 1;
                if ((v29 & 0x80000000) != 0 || v179 != v90)
                {
                  goto LABEL_104;
                }

                v87 = v181 + v90;
                LODWORD(v181) = v181 + v90;
                ++v86;
                v84 = *(v22 + 16);
                if (v86 >= *(v84 + 50))
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
LABEL_64:
          if (!*(v84 + 24))
          {
            goto LABEL_75;
          }

          v91 = heap_Calloc(*(*v6 + 8), 1, 72 * *(v84 + 24));
          v84 = *(v22 + 16);
          *(v84 + 16) = v91;
          if (v91)
          {
            if (*(v84 + 24))
            {
              v92 = 0;
              v93 = 0;
              while (1)
              {
                v94 = *(v84 + 16);
                v95 = *(*v180 + v181);
                LODWORD(v181) = v181 + 2;
                v172 = v94;
                v96 = v94 + v92;
                *(v94 + v92 + 56) = v95;
                v97 = heap_Calloc(*(*v6 + 8), 1, v95 + 1);
                *(v96 + 48) = v97;
                if (!v97)
                {
                  break;
                }

                memcpy(v97, (*v180 + v181), v95);
                *(*(v96 + 48) + v95) = 0;
                LODWORD(v181) = v181 + *(v96 + 56);
                *v96 = *(*v180 + v181);
                LODWORD(v181) = v181 + 2;
                *(v96 + 2) = *(*v180 + v181);
                v98 = v181;
                LODWORD(v181) = v181 + 2;
                v99 = *v180;
                v100 = *(*v180 + v181);
                LODWORD(v181) = v98 + 4;
                *(v96 + 60) = v100;
                v101 = *(v99 + v181);
                LODWORD(v181) = v181 + 2;
                *(v96 + 64) = v101;
                v102 = *(v99 + v181);
                LODWORD(v181) = v181 + 2;
                *(v96 + 8) = v102;
                if (v102 == 1)
                {
                  v103 = v172 + v92;
                  *(v103 + 4) = *(v99 + v181);
                  LODWORD(v181) = v181 + 2;
                  *(v103 + 12) = *(*v180 + v181);
                  LODWORD(v181) = v181 + 2;
                }

                if (!v177)
                {
                  v104 = *(*v180 + v181);
                  *(v172 + v92 + 40) = v104;
                  v105 = v181;
                  LODWORD(v181) = v181 + 2;
                  if (v104)
                  {
                    LODWORD(v181) = v105 + 4 * (v104 - 1) + 6;
                  }
                }

                ++v93;
                v84 = *(v22 + 16);
                v92 += 72;
                if (v93 >= *(v84 + 24))
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
LABEL_75:
              v106 = v181;
              *(v84 + 48) = *(*v180 + v181);
              LODWORD(v181) = v106 + 2;
              v107 = *(v22 + 16);
              v108 = *(v107 + 48);
              if (!*(v107 + 48))
              {
                goto LABEL_93;
              }

              *(v107 + 40) = 0;
              v109 = heap_Calloc(*(v6[3] + 8), 1, 16 * v108);
              v110 = *(v22 + 16);
              *(v110 + 40) = v109;
              if (v109)
              {
                if (!*(v110 + 48))
                {
LABEL_93:
                  v133 = ssftriff_reader_CloseChunk(v7);
LABEL_103:
                  v29 = v133;
                  v42 = 0;
                  goto LABEL_104;
                }

                v111 = 0;
                while (1)
                {
                  v173 = v111;
                  v112 = *(v110 + 40) + 16 * v111;
                  v113 = *(*v180 + v181);
                  *(v112 + 8) = v113;
                  LODWORD(v181) = v181 + 2;
                  *v112 = 0;
                  v114 = heap_Calloc(*(*v6 + 8), 1, 24 * v113);
                  *v112 = v114;
                  if (!v114)
                  {
                    break;
                  }

                  if (*(v112 + 8))
                  {
                    v115 = 0;
                    for (i = 0; i < *(v112 + 8); ++i)
                    {
                      *(*v112 + v115) = 0;
                      v117 = heap_Calloc(*(*v6 + 8), 1, 12);
                      *(*v112 + v115) = v117;
                      if (!v117)
                      {
                        goto LABEL_127;
                      }

                      v117[1] = 0;
                      v118 = *v180;
                      v119 = v181;
                      if (v177)
                      {
                        v120 = *(*v180 + v181);
                        LODWORD(v181) = v181 + 1;
                        v121 = v181;
                        *v117 = v120;
                        v122 = *(v118 + v121);
                        LODWORD(v181) = v119 + 2;
                        v117[2] = v122;
                      }

                      else
                      {
                        *v117 = *(*v180 + v181);
                        v123 = v181;
                        LODWORD(v181) = v181 + 2;
                        *(*(*v112 + v115) + 4) = *(*v180 + v181);
                        LODWORD(v181) = v123 + 4;
                        if (v175 == 1)
                        {
                          *(*v112 + v115 + 8) = 0;
                          v124 = heap_Calloc(*(*v6 + 8), 1, 2);
                          *(*v112 + v115 + 8) = v124;
                          if (!v124)
                          {
                            goto LABEL_127;
                          }

                          *v124 = *(*v180 + v181);
                          v125 = v181;
                          LODWORD(v181) = v181 + 2;
                          v126 = *(*v180 + v181);
                          LODWORD(v181) = v125 + 4;
                          v127 = v126 + 1;
                          v128 = heap_Calloc(*(*v6 + 8), 1, (v126 + 1));
                          *(*v112 + v115 + 16) = v128;
                          if (!v128)
                          {
                            log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v129, v130, v131, v132, v169);
                            v163 = 10;
                            goto LABEL_138;
                          }

                          v179 = v127;
                          if ((ssftriff_reader_ReadStringZ(v7, *v180, HIDWORD(v181), v181, v128, &v179) & 0x80000000) != 0 || v179 != v127)
                          {
                            v163 = 0;
LABEL_138:
                            v29 = FEDATA_ERROR(v163);
                            v21 = v178;
                            if ((v29 & 0x80000000) == 0)
                            {
                              goto LABEL_100;
                            }

                            goto LABEL_139;
                          }

                          LODWORD(v181) = v181 + v127;
                        }
                      }

                      v115 += 24;
                    }
                  }

                  v111 = v173 + 1;
                  v110 = *(v22 + 16);
                  if (v173 + 1 >= *(v110 + 48))
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

LABEL_127:
            v161 = *(*v6 + 32);
            v162 = v6[23];
            v57 = 0;
LABEL_128:
            log_OutPublic(v161, v162, 24048, v57, v24, v25, v26, v27, v169);
LABEL_129:
            v29 = FEDATA_ERROR(10);
            v42 = 1;
            goto LABEL_104;
          }
        }

LABEL_131:
        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v24, v25, v26, v27, v169);
        v29 = FEDATA_ERROR(10);
      }

LABEL_104:
      v21 = v178;
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

LABEL_97:
      if (v42)
      {
        ssftriff_reader_CloseChunk(v7);
      }

      if ((v29 & 0x80000000) != 0)
      {
LABEL_139:
        *(*(*(a4 + 32) + 8) + 8 * v20) = 0;
        log_OutPublic(*(*v6 + 32), v6[23], 24044, 0, v24, v25, v26, v27, v169);
        goto LABEL_142;
      }

LABEL_100:
      log_OutText(*(*v6 + 32), v6[23], 4, 0, "loaded data block %d", v25, v26, v27, v20);
      v20 = v20 + 1;
      if (v20 >= *v21)
      {
        return v29;
      }
    }
  }

  return 0;
}

uint64_t readDataBlockFromFile_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v58 = 0;
  inited = InitRsrcFunction(a1, a2, &v58);
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
          v57 = inited;
          v14 = 0;
          v56 = v3;
          while (1)
          {
            v15 = *(*(v3 + 1) + 8 * v14);
            if (v15)
            {
              v17 = (v15 + 32);
              v16 = *(v15 + 32);
              if (v16)
              {
                v57 = ssftriff_reader_ReleaseChunkData(v16, v12, v5, v6, v7, v8, v9, v10);
                if ((v57 & 0x80000000) != 0)
                {
                  return v57;
                }

                *v17 = 0;
                *(v15 + 40) = 0;
              }

              v18 = v58;
              v20 = *(v15 + 8);
              v19 = *(v15 + 16);
              v21 = *(v15 + 24);
              if (v20)
              {
                if (*v15 <= 5u && ((1 << *v15) & 0x2D) != 0)
                {
                  heap_Free(*(v58 + 8), *v20);
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
                      v3 = v56;
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
                        v35 = *(v19 + 16) + v33;
                        heap_Free(*(v18 + 8), *(v35 + 48));
                        *(v35 + 48) = 0;
                        v36 = *(v35 + 16);
                        if (v36)
                        {
                          heap_Free(*(v18 + 8), v36);
                          *(v35 + 16) = 0;
                        }

                        ++v34;
                        v33 += 72;
                      }

                      while (v34 < *(v19 + 24));
                    }

                    v37 = *(v19 + 40);
                    v3 = v56;
                    if (v37)
                    {
                      v38 = *(v19 + 48);
                      if (v38)
                      {
                        for (i = 0; i < v38; ++i)
                        {
                          v40 = *(v19 + 40) + 16 * i;
                          v41 = *v40;
                          if (*v40)
                          {
                            if (*(v40 + 8))
                            {
                              v42 = 0;
                              v43 = 0;
                              do
                              {
                                heap_Free(*(v18 + 8), *(v41 + v42));
                                v44 = (*v40 + v42);
                                *v44 = 0;
                                heap_Free(*(v18 + 8), v44[1]);
                                v45 = *v40 + v42;
                                *(v45 + 8) = 0;
                                heap_Free(*(v18 + 8), *(v45 + 16));
                                v41 = *v40;
                                *(*v40 + v42 + 16) = 0;
                                ++v43;
                                v42 += 24;
                              }

                              while (v43 < *(v40 + 8));
                            }

                            heap_Free(*(v18 + 8), v41);
                            *v40 = 0;
                            v38 = *(v19 + 48);
                          }
                        }

                        v37 = *(v19 + 40);
                        v3 = v56;
                      }

                      heap_Free(*(v18 + 8), v37);
                      *(v19 + 40) = 0;
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
                v46 = *(v21 + 8);
                if (v46)
                {
                  v47 = *(v21 + 16);
                  if (v47)
                  {
                    for (j = 0; j < v47; ++j)
                    {
                      v49 = *(v21 + 8);
                      v50 = *(v49 + 8 * j);
                      if (v50)
                      {
                        if (*v50)
                        {
                          heap_Free(*(v18 + 8), *v50);
                          v49 = *(v21 + 8);
                          **(v49 + 8 * j) = 0;
                          v50 = *(v49 + 8 * j);
                        }

                        v51 = *(v50 + 16);
                        if (v51)
                        {
                          if (*(v50 + 12))
                          {
                            v52 = 0;
                            do
                            {
                              v53 = *(*(v50 + 16) + 8 * v52);
                              if (v53)
                              {
                                heap_Free(*(v18 + 8), v53);
                                *(*(*(*(v21 + 8) + 8 * j) + 16) + 8 * v52) = 0;
                                v49 = *(v21 + 8);
                              }

                              ++v52;
                              v50 = *(v49 + 8 * j);
                            }

                            while (v52 < *(v50 + 12));
                            v51 = *(v50 + 16);
                          }

                          heap_Free(*(v18 + 8), v51);
                          v54 = *(v21 + 8);
                          *(*(v54 + 8 * j) + 16) = 0;
                          v50 = *(v54 + 8 * j);
                        }

                        *(v50 + 12) = 0;
                        heap_Free(*(v18 + 8), v50);
                        *(*(v21 + 8) + 8 * j) = 0;
                        v47 = *(v21 + 16);
                      }
                    }

                    v46 = *(v21 + 8);
                  }

                  heap_Free(*(v18 + 8), v46);
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
              v11 = v57;
              break;
            }
          }
        }

        heap_Free(*(v58 + 8), v12);
        heap_Free(*(v58 + 8), v3);
      }
    }
  }

  return v11;
}

uint64_t partialMatchFoundInBasicToken_NNTN(uint64_t result, __int16 *a2)
{
  v16 = 0;
  if (result)
  {
    v2 = result;
    v3 = *(*(result + 264) + 16);
    for (i = *(v3 + 80); i < *(v3 + 88); ++i)
    {
      __s1 = 0;
      v6 = LDOTreeNode_ComputeAbsoluteFrom(*i, &v16 + 1);
      if ((LH_ERROR_to_VERROR(v6) & 0x80000000) != 0)
      {
        break;
      }

      v7 = LDOTreeNode_ComputeAbsoluteTo(*i, &v16);
      if ((LH_ERROR_to_VERROR(v7) & 0x80000000) != 0)
      {
        break;
      }

      Type = LDOObject_GetType(*i, &__s1);
      if ((LH_ERROR_to_VERROR(Type) & 0x80000000) != 0)
      {
        break;
      }

      v9 = __s1;
      if (!strcmp(__s1, "TOKEN_ALPHA") || !strcmp(v9, "TOKEN_DIGIT") || !strcmp(v9, "TOKEN_PUNCT") || !strcmp(v9, "TOKEN_WSPACE"))
      {
        v13 = *a2;
        if (__PAIR64__(v16, SWORD2(v16)) != __PAIR64__(a2[1], v13))
        {
          if (SWORD2(v16) >= v13)
          {
            v14 = a2[1];
          }

          else
          {
            v14 = a2[1];
            if (v13 < v16)
            {
              goto LABEL_20;
            }
          }

          if (SWORD2(v16) < v14 && v14 < v16)
          {
LABEL_20:
            log_OutText(*(*v2 + 32), v2[23], 5, 0, "Regex match %d,%d bisects basic token %d,%d", v10, v11, v12, v13);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t tokenizer_apply_regex_NNTN(uint64_t *a1, uint64_t a2, size_t **a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 44);
  v31 = 0;
  v7 = nuance_pcre_exec(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v6, *(a2 + 64), &v32, 100);
  v11 = v33;
  if (v33 > *(a2 + 46))
  {
    goto LABEL_9;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v12 = nuance_pcre_ErrorToLhError(v7);
    if (v12 >> 20 == 2213)
    {
      v14 = v12;
      if ((v12 & 0x1FFF) == 0xA)
      {
        v15 = 11002;
        goto LABEL_23;
      }

      if ((v12 & 0x1FFF) != 0x14)
      {
        v15 = 11027;
LABEL_23:
        v30 = *(a2 + 24);
        log_OutPublic(*(*a1 + 32), a1[23], v15, "%s%x%s%s", v13, v8, v9, v10, "lhError");
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v11 = v33;
  }

  v16 = v32;
  v17 = *(a2 + 16);
  v18 = *(v17 + 8);
  *v18 = v32;
  v18[1] = v11;
  if (!(v16 | v11))
  {
LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  if (*(v17 + 44) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", v8, v9, v10, *(a2 + 24));
  }

  else if (partialMatchFoundInBasicToken_NNTN(a1, v18) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", v24, v25, v26, *(a2 + 24));
    goto LABEL_9;
  }

  *(**(a2 + 16) + 96) = *(a2 + 56);
  v27 = sortExpansionNNTN(a1, a2);
  if ((v27 & 0x80000000) != 0)
  {
    v14 = v27;
    goto LABEL_24;
  }

  v19 = 0;
  *(a2 + 72) = 1;
LABEL_10:
  v20 = LDOTreeNode_ComputeAbsoluteTo(**a3, &v31);
  v21 = LH_ERROR_to_VERROR(v20);
  v14 = v21;
  if ((v19 & 1) == 0 && (v21 & 0x80000000) == 0)
  {
    do
    {
      if (v31 >= *(*(*(a2 + 16) + 8) + 2))
      {
        break;
      }

      v22 = (*a3)++;
      v23 = LDOTreeNode_ComputeAbsoluteTo(v22[1], &v31);
      v14 = LH_ERROR_to_VERROR(v23);
    }

    while ((v14 & 0x80000000) == 0);
  }

LABEL_24:
  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t tokenizer_NNTN_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen Begin", a6, a7, a8, v48);
  v9 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (v9)
  {
    v14 = v9;
    a1[21] = v9;
    v15 = heap_Calloc(*(*a1 + 8), 1, 80);
    *v14 = v15;
    v20 = *a1;
    if (v15)
    {
      v21 = heap_Calloc(*(v20 + 8), 1, 40);
      **v14 = v21;
      v20 = *a1;
      if (v21)
      {
        v22 = heap_Calloc(*(v20 + 8), 1, 64);
        *(*v14 + 16) = v22;
        v20 = *a1;
        if (v22)
        {
          v23 = heap_Calloc(*(v20 + 8), 1, 4);
          *(*(*v14 + 16) + 8) = v23;
          if (v23)
          {
            *v23 = 0;
            v24 = heap_Calloc(*(*a1 + 8), 1, 112);
            v25 = *v14;
            v26 = *(*v14 + 16);
            *v26 = v24;
            if (v24)
            {
              *(v24 + 96) = 0;
              *(v26 + 40) = 0;
              *(v26 + 48) = 0;
              *(v26 + 16) = 0;
              *(v26 + 24) = 0;
              v27 = *v25;
              *v27 |= 4uLL;
              v27[3] = v26;
              v51 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions Begin", v17, v18, v19, v49);
              Map = FEFunctionMap_GetMap(a1, &v51);
              if ((Map & 0x80000000) != 0)
              {
                v39 = Map;
              }

              else
              {
                v29 = &off_1F42D2A88;
                v30 = 8;
                do
                {
                  v31 = ssftmap_Insert(v51, *(v29 - 1), *v29);
                  if ((v31 & 0x80000000) != 0)
                  {
                    v39 = v31;
                    log_OutPublic(*(*a1 + 32), a1[23], 21011, 0, v32, v33, v34, v35, v50);
                    goto LABEL_22;
                  }

                  v29 += 2;
                  --v30;
                }

                while (v30);
                v39 = FEFunctionMap_AddFunctionMap(a1, 0, v51);
                if ((v39 & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }
              }

LABEL_22:
              ssftmap_ObjClose(v51);
LABEL_23:
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions End (%x)", v36, v37, v38, v39);
              if ((v39 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          v20 = *a1;
        }
      }
    }

    log_OutPublic(*(v20 + 32), a1[23], 24048, 0, v16, v17, v18, v19, v49);
    v39 = NNTNERROR(10);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", v45, v46, v47, v39);
      return v39;
    }

LABEL_18:
    tokenizer_loc_ObjClose(a1, v41, v42, v43, v44, v45, v46, v47);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v49);

  return NNTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose Begin", a6, a7, a8, v16);
  v10 = *v9;
  if (*v9)
  {
    v11 = v10[2];
    if (v11)
    {
      if (v11[1])
      {
        heap_Free(*(*a1 + 8), v11[1]);
        v11 = *(*v9 + 16);
        v11[1] = 0;
      }

      if (*v11)
      {
        heap_Free(*(*a1 + 8), *v11);
        v11 = *(*v9 + 16);
        *v11 = 0;
      }

      heap_Free(*(*a1 + 8), v11);
      v10 = *v9;
      *(*v9 + 16) = 0;
    }

    if (*v10)
    {
      heap_Free(*(*a1 + 8), *v10);
      v10 = *v9;
      **v9 = 0;
    }

    heap_Free(*(*a1 + 8), v10);
    *v9 = 0;
  }

  heap_Free(*(*a1 + 8), v9);
  a1[21] = 0;
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose End (%x)", v12, v13, v14, 0);
}

uint64_t tokenizer_NNTN_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjClose Begin", a6, a7, a8, v21);
    tokenizer_loc_ObjClose(a1, v10, v11, v12, v13, v14, v15, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", v17, v18, v19, 0);
    return 0;
  }

  else
  {

    return NNTNERROR(8);
  }
}

uint64_t fe_nnws_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2588942337;
  }

  result = 0;
  *a2 = &IFeNNWS;
  return result;
}

uint64_t fe_nnws_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2588942343;
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

uint64_t fe_nnws_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v5 = 2588942343;
  v50 = 0;
  v51 = 0;
  memset(v60, 0, sizeof(v60));
  if (!a5)
  {
    goto LABEL_26;
  }

  v55 = 0;
  v53 = 0uLL;
  v54 = 0uLL;
  v52 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v58);
  if ((inited & 0x80000000) != 0 || (inited = InitRsrcFunction(a3, a4, &v59), (inited & 0x80000000) != 0))
  {
    v5 = inited;
    goto LABEL_26;
  }

  v12 = heap_Calloc(*(v59 + 8), 1, 208);
  if (!v12)
  {
    log_OutPublic(*(v59 + 32), "FE_NNWS", 75000, 0, v13, v14, v15, v16, v48);
    v5 = 2588942346;
LABEL_25:
    fe_nnws_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    goto LABEL_26;
  }

  v17 = v12;
  Object = objc_GetObject(*(v59 + 48), "LINGDB", &v57);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  *(v17 + 48) = *(v57 + 8);
  Object = objc_GetObject(*(v59 + 48), "FE_DCTLKP", &v56);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  v22 = v56;
  *(v17 + 56) = *(v56 + 8);
  *(v17 + 64) = *(v22 + 16);
  *v17 = v59;
  *(v17 + 8) = a3;
  v23 = v58;
  *(v17 + 16) = a4;
  *(v17 + 24) = v23;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 104) = 0;
  Object = fe_nnws_loadCfg(v17);
  if ((Object & 0x80000000) != 0 || (*(v17 + 128) = 0, Object = nn_word_lkp_GetInterface(1u, &v52), (Object & 0x80000000) != 0))
  {
LABEL_24:
    v5 = Object;
    log_OutText(*(*v17 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjOpen Failed!", v19, v20, v21, v48);
    goto LABEL_25;
  }

  *(v17 + 128) = v52;
  *(v17 + 136) = safeh_GetNullHandle();
  *(v17 + 144) = v24;
  *(v17 + 152) = safeh_GetNullHandle();
  *(v17 + 160) = v25;
  *(v17 + 168) = safeh_GetNullHandle();
  *(v17 + 176) = v26;
  v27 = *(v17 + 136);
  v28 = *(*(v17 + 128) + 16);
  v29 = *(v17 + 144);
  v30 = *(v17 + 8);
  v31 = *(v17 + 16);
  if (*(v17 + 200))
  {
    Object = v28(v27, v29, "albert", v30, v31, v17 + 152);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    Object = v28(v27, v29, "char", v30, v31, v17 + 152);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }

    v54 = *(v17 + 152);
    *(&v53 + 1) = v52;
    Object = objc_RegisterObject(*(v59 + 48), "NNCHRLKP", &v53);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }
  }

  if (!*(v17 + 200))
  {
    Object = (*(*(v17 + 128) + 16))(*(v17 + 136), *(v17 + 144), "nnws_wlist", *(v17 + 8), *(v17 + 16), v17 + 168);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }
  }

  Object = fe_nnws_CreateBrokerString(*v17, v60);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  v32 = fi_init(a3, a4, a1, a2, &v51, 0, v60, "FINN", 1, 0);
  if ((v32 & 0x80000000) != 0)
  {
    v5 = v32;
    v46 = *(*v17 + 32);
    v47 = "create FI model failed";
LABEL_29:
    log_OutText(v46, "FE_NNWS", 5, 0, v47, v33, v34, v35, v49);
    goto LABEL_26;
  }

  *(v17 + 80) = v51;
  v36 = fe_nnws_tagInit(*v17, &v50);
  if ((v36 & 0x80000000) != 0)
  {
    v5 = v36;
    v46 = *(*v17 + 32);
    v47 = "create SBME tags failed";
    goto LABEL_29;
  }

  *(v17 + 120) = v50;
  v5 = fe_nnws_tryLoadingIGTree(*(v17 + 8), *(v17 + 16), *v17, (v17 + 184));
  if ((v5 & 0x80000000) != 0)
  {
    v43 = *(v17 + 184);
    if (v43)
    {
      igtree_Deinit(*v17, v43, v37, v38, v39, v40, v41, v42);
      heap_Free(*(*v17 + 8), *(v17 + 184));
      v5 = 0;
      *(v17 + 184) = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  *a5 = v17;
  *(a5 + 8) = 62346;
LABEL_26:
  v44 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t fe_nnws_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62346, 208);
  if ((v3 & 0x80000000) != 0)
  {
    return 2588942344;
  }

  v9 = v3;
  if (a1)
  {
    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v10 = a1[16];
    if (v10)
    {
      v9 = (*(v10 + 24))(a1[19], a1[20]);
      v11 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v9 & 0x80000000) == 0 && (v11 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v12 = a1[14];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
      a1[14] = 0;
    }

    v13 = a1[10];
    if (v13)
    {
      v9 = fi_deinit(*a1, a1[3], v13);
    }

    if (a1[15])
    {
      for (i = 0; i != 32; i += 8)
      {
        heap_Free(*(*a1 + 8), *(a1[15] + i));
        *(a1[15] + i) = 0;
      }

      heap_Free(*(*a1 + 8), a1[15]);
      a1[15] = 0;
    }

    v15 = a1[23];
    if (v15)
    {
      igtree_Deinit(*a1, v15, v13, v4, v5, v6, v7, v8);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v9;
}

uint64_t fe_nnws_ObjReopen(void *a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v4 = 2588942342;
  v40 = 0;
  memset(v45, 0, sizeof(v45));
  if ((safeh_HandleCheck(a1, a2, 62346, 208) & 0x80000000) != 0)
  {
    v4 = 2588942344;
  }

  else if (a1)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v10 = a1[16];
    if (v10)
    {
      v11 = (*(v10 + 24))(a1[19], a1[20]);
      v12 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v11 & 0x80000000) == 0 && (v12 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v13 = a1[10];
    if (v13)
    {
      Cfg = fi_deinit(*a1, a1[3], v13);
      if ((Cfg & 0x80000000) != 0)
      {
LABEL_29:
        v4 = Cfg;
LABEL_30:
        log_OutText(*(*a1 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjReopen Failed!", v7, v8, v9, v38);
        fe_nnws_ObjClose(a1, a2);
        goto LABEL_31;
      }

      a1[10] = 0;
    }

    v15 = a1[14];
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
      a1[14] = 0;
    }

    v17 = a1 + 23;
    v16 = a1[23];
    if (v16)
    {
      igtree_Deinit(*a1, v16, v13, v5, v6, v7, v8, v9);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    a1[13] = 0;
    Cfg = fe_nnws_loadCfg(a1);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    Cfg = nn_word_lkp_GetInterface(1u, &v44);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    a1[16] = v44;
    a1[17] = safeh_GetNullHandle();
    a1[18] = v18;
    a1[19] = safeh_GetNullHandle();
    a1[20] = v19;
    a1[21] = safeh_GetNullHandle();
    a1[22] = v20;
    v21 = a1[17];
    v22 = *(a1[16] + 16);
    v23 = a1[18];
    v24 = a1[1];
    v25 = a1[2];
    if (*(a1 + 50))
    {
      Cfg = v22(v21, v23, "albert", v24, v25, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      Cfg = v22(v21, v23, "char", v24, v25, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v42 = *(a1 + 19);
      *(&v41 + 1) = v44;
      Cfg = objc_RegisterObject(*(*a1 + 48), "NNCHRLKP", &v41);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    if (!*(a1 + 50))
    {
      Cfg = (*(a1[16] + 16))(a1[17], a1[18], "nnws_wlist", a1[1], a1[2], a1 + 21);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    Cfg = fe_nnws_CreateBrokerString(*a1, v45);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    v26 = fi_init(a1[1], a1[2], a1[4], a1[5], &v40, 0, v45, "FINN", 1, 0);
    if ((v26 & 0x80000000) != 0)
    {
      v4 = v26;
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "re-create FI model failed", v27, v28, v29, v39);
      goto LABEL_30;
    }

    a1[10] = v40;
    v4 = fe_nnws_tryLoadingIGTree(a1[1], a1[2], *a1, a1 + 23);
    if ((v4 & 0x80000000) != 0)
    {
      if (*v17)
      {
        igtree_Deinit(*a1, *v17, v30, v31, v32, v33, v34, v35);
        heap_Free(*(*a1 + 8), a1[23]);
        v4 = 0;
        a1[23] = 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

LABEL_31:
  v36 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t fe_nnws_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v173 = 0;
  v168 = 0;
  __s = 0;
  v5 = 2588942346;
  v167 = 0;
  v166 = 0;
  v164 = 0;
  v165 = 0;
  v163 = 0;
  *a5 = 1;
  if (!a1)
  {
    return 2588942343;
  }

  v172 = 0;
  v171 = 0;
  v170 = 0;
  v9 = log_GetLogLevel(*(*a1 + 32)) > 4;
  v10 = (*(a1[6] + 104))(a3, a4, 1, 0, &v173);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
LABEL_117:
    v12 = 0;
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 184))(a3, a4, v173, 0, &v171);
  v12 = 0;
  if ((v11 & 0x80000000) != 0 || v171 != 1)
  {
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 176))(a3, a4, v173, 0, &__s, &v172 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  if (HIWORD(v172) < 2u)
  {
    return v11;
  }

  v13 = strlen(__s);
  v14 = heap_Alloc(*(*a1 + 8), v13 + 1);
  v168 = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v15, v16, v17, v18, v146);
    v12 = 0;
LABEL_214:
    v11 = 2588942346;
    goto LABEL_118;
  }

  v19 = v14;
  v20 = strcpy(v14, __s);
  v21 = strlen(v20);
  v22 = Utf8_LengthInUtf8chars(v19, v21);
  v23 = heap_Calloc(*(*a1 + 8), v22, 56);
  v165 = v23;
  if (!v23)
  {
    goto LABEL_213;
  }

  v28 = v23;
  v29 = a1[6];
  v157 = *a1;
  v30 = v173;
  v182 = 0;
  v181 = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v178 = 0;
  v176 = 0;
  UTF8Char = (*(v29 + 176))(a3, a4, v173, 1, &v176, &v180 + 2);
  if ((UTF8Char & 0x80000000) != 0 || (UTF8Char = (*(v29 + 104))(a3, a4, 3, v30, &v180), (UTF8Char & 0x80000000) != 0))
  {
    LODWORD(v37) = 0;
LABEL_145:
    v5 = UTF8Char;
    goto LABEL_146;
  }

  v32 = v180;
  v147 = v30;
  if (v180)
  {
    while (1)
    {
      v175 = 0;
      v174 = 0;
      v33 = (*(v29 + 168))(a3, a4, v32, 0, 1, &v175, &v174);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v175 == 6)
      {
        break;
      }

      v33 = (*(v29 + 120))(a3, a4, v180, &v180);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      v32 = v180;
      if (!v180)
      {
        goto LABEL_16;
      }
    }

    v33 = (*(v29 + 168))(a3, a4, v180, 1, 1, &v177 + 4, &v174);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v33 = (*(v29 + 168))(a3, a4, v180, 2, 1, &v177, &v174);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v127 = (*(v29 + 184))(a3, a4, v180, 8, &v179 + 2);
    if ((v127 & 0x80000000) != 0)
    {
      goto LABEL_227;
    }

    if (HIWORD(v179) == 1)
    {
      v127 = (*(v29 + 168))(a3, a4, v180, 8, 1, &v182, &v174);
      if ((v127 & 0x80000000) != 0)
      {
        goto LABEL_227;
      }
    }

    else
    {
      v182 = v177 - HIDWORD(v177);
    }

    v127 = (*(v29 + 176))(a3, a4, v180, 4, &v181, &v174);
    if ((v127 & 0x80000000) != 0)
    {
LABEL_227:
      v5 = v127;
      LODWORD(v37) = 0;
      goto LABEL_146;
    }

    v128 = strcmp(v181, "_PR_");
    v34 = 0;
    v148 = v128 == 0;
  }

  else
  {
LABEL_16:
    v148 = 0;
    v34 = 1;
  }

  v35 = HIWORD(v180);
  v153 = v28;
  if (!HIWORD(v180))
  {
    LODWORD(v37) = 0;
    goto LABEL_148;
  }

  v155 = v34;
  v36 = 0;
  v160 = 0;
  v161 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 40;
  v41 = 1;
  v152 = v22;
  v162 = v29;
  do
  {
    v42 = v176;
    v43 = (v176 + 32 * v36);
    v44 = *v43;
    if (*v43 != 1)
    {
      if (v37 && (v62 = v28 + 56 * (v37 - 1), *(v62 + 36) = 0x100000001, v36 >= 2) && v44 == 99)
      {
        if (*(v43 - 8) == 1 && v43[3] == *(v43 - 5))
        {
          *(v62 + 48) = 1;
        }
      }

      else if (v44 == 0x4000)
      {
        v38 = v43[3];
      }

      goto LABEL_113;
    }

    v38 += v39;
    v45 = v43[3];
    v158 = v38;
    v150 = v40;
    v151 = v36;
    v149 = v41;
    if (v45 > v38 && v43[1] > v38)
    {
      v46 = v28 + 56 * v37;
      *(v46 + 36) = 1;
      *(v46 + 8) = v39;
      *(v46 + 12) = v39;
      *(v46 + 16) = v45 + ~v38;
      v47 = v39;
      v48 = heap_Alloc(*(v157 + 8), 4);
      *v46 = v48;
      if (!v48)
      {
LABEL_223:
        log_OutPublic(*(v157 + 32), "FE_NNWS", 75000, 0, v49, v50, v51, v52, v146);
        goto LABEL_146;
      }

      *v48 = 4673093;
      v53 = *(v46 + 16);
      v54 = (v53 + v47);
      v160 += v53;
      v161 = v54;
      v37 = (v37 + 1);
      v35 = HIWORD(v180);
      v42 = v176;
      v28 = v153;
      v40 = v150;
      v36 = v151;
      v38 = v158;
      v39 = v54;
      v29 = v162;
      v41 = v149;
    }

    v55 = v42 + 32 * v36;
    v56 = 0;
    if (v36 + 1 >= v35)
    {
LABEL_30:
      v60 = *(v42 + 16) + *(v42 + 12);
      v61 = v56 + *(v55 + 12);
    }

    else
    {
      v57 = (v42 + v40);
      v58 = v41;
      while (*(v57 - 2) != 1)
      {
        v59 = *v57;
        v57 += 8;
        if (v59 == 1)
        {
          ++v56;
        }

        if (v35 == ++v58)
        {
          goto LABEL_30;
        }
      }

      v60 = *(v42 + 32 * v58 + 12);
      v61 = v56 + *(v55 + 12);
    }

    v154 = v60 - v61;
    if (v37 >= v22)
    {
      goto LABEL_111;
    }

    v159 = 0;
    v156 = 1;
    while (1)
    {
      v63 = v39;
      if (strlen(v19) <= v160 || v159 >= v154)
      {
        break;
      }

      if (v180 && v155 == 1)
      {
        if (v63 < v177)
        {
          v155 = 1;
          goto LABEL_63;
        }

        LODWORD(v64) = v37;
        do
        {
          v33 = (*(v162 + 120))(a3, a4);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          if (!v180)
          {
            v155 = 1;
            goto LABEL_63;
          }

          v175 = 0;
          v174 = 0;
          v33 = (*(v162 + 168))(a3, a4, v180, 0, 1, &v175, &v174);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }
        }

        while (v175 != 6);
        v33 = (*(v162 + 168))(a3, a4, v180, 1, 1, &v177 + 4, &v174);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v33 = (*(v162 + 168))(a3, a4, v180, 2, 1, &v177, &v174);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v65 = (*(v162 + 184))(a3, a4, v180, 8, &v179 + 2);
        if ((v65 & 0x80000000) != 0)
        {
LABEL_235:
          v5 = v65;
LABEL_222:
          LODWORD(v37) = v64;
LABEL_146:
          v166 = v37;
          v12 = 1;
          v11 = v5;
LABEL_118:
          v89 = v168;
          if (!v168)
          {
            goto LABEL_120;
          }

LABEL_119:
          heap_Free(*(*a1 + 8), v89);
          goto LABEL_120;
        }

        if (HIWORD(v179) == 1)
        {
          v65 = (*(v162 + 168))(a3, a4, v180, 8, 1, &v182, &v174);
          v66 = v162;
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v182 = v177 - HIDWORD(v177);
          v66 = v162;
        }

        v65 = (*(v66 + 176))(a3, a4, v180, 4, &v181, &v174);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_235;
        }

        v155 = 0;
        v148 = strcmp(v181, "_PR_") == 0;
      }

LABEL_63:
      UTF8Char = utf8_getUTF8Char(v19, v161, __src);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_145;
      }

      v64 = v37;
      if (utf8_IsChineseLetter(__src))
      {
        v67 = 1;
        v68 = "ENG";
        v38 = v158;
        v39 = v63;
LABEL_68:
        v29 = v162;
        goto LABEL_69;
      }

      v39 = v63;
      v67 = 0;
      v68 = "NUM";
      if (__src[0] - 48 < 0xA)
      {
        v38 = v158;
        goto LABEL_68;
      }

      v38 = v158;
      v29 = v162;
      if ((__src[0] - 35 > 0x3C || ((1 << (__src[0] - 35)) & 0x1800000004000503) == 0) && __src[0] != 124)
      {
        v67 = (__src[0] & 0xDFu) - 65 >= 0x1A && (__src[0] - 38 > 0x1A || ((1 << (__src[0] - 38)) & 0x4000003) == 0);
        v68 = "ENG";
      }

LABEL_69:
      if (!v180 || v161 != HIDWORD(v177))
      {
        if (v67)
        {
          if (v156)
          {
            v156 = 1;
            v37 = v64;
          }

          else
          {
            v37 = v64;
            v84 = v28 + 56 * v64;
            if (**v84 == 124)
            {
              v156 = 0;
            }

            else
            {
              *(v84 + 16) = v161 - v39;
              v37 = (v64 + 1);
              v156 = 1;
              LODWORD(v39) = v161;
            }
          }

          if (__src[0] == 32)
          {
            v39 = (v39 + 1);
            ++v159;
            ++v160;
            v161 = v39;
LABEL_104:
            v22 = v152;
            goto LABEL_105;
          }

          v85 = v28 + 56 * v37;
          *(v85 + 36) = (*(v85 + 32) & 0xFFFFFFFE) == 2;
          *(v85 + 40) = 0;
          *(v85 + 8) = v39;
          *(v85 + 12) = v39;
          v86 = v39;
          LODWORD(v64) = v37;
          v76 = utf8_determineUTF8CharLength(v19[v39]);
          *(v85 + 16) = v76;
          v87 = strlen(__src);
          v88 = heap_Calloc(*(v157 + 8), 1, v87 + 1);
          *v85 = v88;
          if (!v88)
          {
LABEL_228:
            log_OutPublic(*(v157 + 32), "FE_NNWS", 75000, 0, v72, v73, v74, v75, v146);
            goto LABEL_222;
          }

          strcpy(v88, __src);
          v77 = *(v85 + 16);
          v70 = (v77 + v86);
          v64 = (v64 + 1);
          v161 = v70;
LABEL_102:
          v28 = v153;
          v38 = v158;
          v39 = v70;
          v29 = v162;
        }

        else
        {
          if (v156)
          {
            v69 = v28 + 56 * v64;
            *(v69 + 8) = v39;
            *(v69 + 12) = v39;
            *(v69 + 16) = 1;
            v70 = v39;
            v71 = heap_Calloc(*(v157 + 8), 1, 4);
            *v69 = v71;
            if (!v71)
            {
              goto LABEL_228;
            }

            v156 = 0;
            *v71 = *v68;
            v161 = v70 + 1;
            v76 = 1;
            v77 = 1;
            goto LABEL_102;
          }

          v156 = 0;
          ++v161;
          v76 = 1;
          v77 = 1;
        }

        v159 += v76;
        v160 += v77;
        v37 = v64;
        goto LABEL_104;
      }

      if (v156)
      {
        LODWORD(v37) = v64;
      }

      else
      {
        *(v28 + 56 * v64 + 16) = v161 - v39;
        LODWORD(v37) = v64 + 1;
        LODWORD(v39) = v161;
      }

      v78 = v28 + 56 * v37;
      v22 = v152;
      if (v148)
      {
        *(v78 + 32) = 5;
        if (v37)
        {
          *(v28 + 56 * (v37 - 1) + 36) = 0x100000001;
        }
      }

      else
      {
        *(v78 + 32) = 3;
      }

      v79 = v28 + 56 * v37;
      *(v79 + 8) = v39;
      *(v79 + 12) = v39;
      *(v79 + 20) = v182;
      *(v79 + 16) = v177 - v161;
      *(v79 + 36) = 1;
      v80 = v39;
      v81 = heap_Calloc(*(v157 + 8), 1, 4);
      *v79 = v81;
      if (!v81)
      {
        goto LABEL_223;
      }

      *v81 = 5068110;
      v82 = *(v79 + 16);
      v160 += v82;
      v38 = v158;
      v159 += v82;
      v83 = (v82 + v80);
      v37 = (v37 + 1);
      v155 = 1;
      v156 = 1;
      v161 = v83;
      v28 = v153;
      v39 = v83;
      v29 = v162;
LABEL_105:
      if (v37 >= v22)
      {
        goto LABEL_109;
      }
    }

    v38 = v158;
    v39 = v63;
    v29 = v162;
LABEL_109:
    if (!v156)
    {
      *(v28 + 56 * v37 + 16) = v161 - v39;
      v37 = (v37 + 1);
      v39 = v161;
    }

LABEL_111:
    v40 = v150;
    v36 = v151;
    v41 = v149;
    if (v37)
    {
      *(v28 + 56 * (v37 - 1) + 36) = 0x100000001;
    }

LABEL_113:
    ++v36;
    v35 = HIWORD(v180);
    ++v41;
    v40 += 32;
  }

  while (v36 < HIWORD(v180));
LABEL_148:
  LODWORD(v64) = v37;
  v166 = v37;
  v11 = (*(v29 + 104))(a3, a4, 3, v147, &v179);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_221:
    v5 = v11;
    goto LABEL_222;
  }

  v97 = v179;
  if (v179)
  {
    while (1)
    {
      v175 = 0;
      v174 = 0;
      v33 = (*(v29 + 168))(a3, a4, v97, 0, 1, &v175, &v174);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v175 == 5)
      {
        v33 = (*(v29 + 168))(a3, a4, v179, 1, 1, &v177 + 4, &v174);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v33 = (*(v29 + 168))(a3, a4, v179, 2, 1, &v177, &v174);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v11 = (*(v29 + 176))(a3, a4, v179, 4, &v178, &v174);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_221;
        }

        if (!strcmp(v178, "phon"))
        {
          break;
        }
      }

      v11 = (*(v29 + 120))(a3, a4, v179, &v179);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }

      v97 = v179;
      if (!v179)
      {
        goto LABEL_158;
      }
    }

    v98 = 1;
    if (!v64)
    {
      goto LABEL_230;
    }
  }

  else
  {
LABEL_158:
    v98 = 0;
    if (!v64)
    {
LABEL_230:
      v129 = 0;
      v166 = 0;
LABEL_231:
      v33 = fe_nnws_writeLDB_v2(a1, a3, a4, v173, v153, v129, __s);
      if ((v33 & 0x80000000) != 0)
      {
LABEL_257:
        v11 = v33;
      }

      else
      {
        v89 = v168;
        v130 = fe_nnws_adjustTokenRecordBND(v153, v129, v168, v173, a3, a4, a1);
        if ((v130 & 0x80000000) != 0)
        {
          goto LABEL_251;
        }

        v131 = strlen(v89);
        v11 = (*(a1[6] + 160))(a3, a4, v173, 0, (v131 + 1), v89, &v172);
        if ((v11 & 0x80000000) == 0)
        {
          log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, v89, v132, v133, v134, 0);
        }
      }

LABEL_258:
      v12 = 1;
      goto LABEL_118;
    }
  }

  v99 = 0;
  while (2)
  {
    if (v98 == 1)
    {
      v100 = (v153 + 56 * v99);
      v101 = v100[3];
      v102 = v177;
      if (v101 < HIDWORD(v177))
      {
        v103 = v153;
        goto LABEL_164;
      }

      v103 = v153;
      if (v100[4] + v101 <= v177)
      {
        v98 = 1;
        v100[11] = 1;
        goto LABEL_182;
      }
    }

    else
    {
      v103 = v153;
      v101 = *(v153 + 56 * v99 + 12);
      v102 = v177;
    }

LABEL_164:
    v104 = v103 + 56 * v99;
    if (*(v104 + 16) + v101 > v102 && v179 != 0)
    {
      while (1)
      {
        v106 = (*(v29 + 120))(a3, a4);
        v11 = v106;
        if ((v106 & 0x80000000) != 0)
        {
          goto LABEL_258;
        }

        if (!v179)
        {
          goto LABEL_184;
        }

        v175 = 0;
        v174 = 0;
        v33 = (*(v29 + 168))(a3, a4, v179, 0, 1, &v175, &v174);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        if (v175 == 5)
        {
          v33 = (*(v29 + 168))(a3, a4, v179, 1, 1, &v177 + 4, &v174);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v33 = (*(v29 + 168))(a3, a4, v179, 2, 1, &v177, &v174);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v11 = (*(v29 + 176))(a3, a4, v179, 4, &v178, &v174);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_221;
          }

          if (!strcmp(v178, "phon"))
          {
            v98 = 1;
            goto LABEL_184;
          }

          v98 = 0;
        }
      }
    }

    *(v104 + 44) = 0;
LABEL_182:
    ++v99;
LABEL_184:
    if (v99 < v64)
    {
      continue;
    }

    break;
  }

  v166 = v64;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_258;
  }

  v33 = (*(a1[16] + 40))(a1[19], a1[20], &v170);
  if ((v33 & 0x80000000) != 0)
  {
    goto LABEL_257;
  }

  v111 = *(a1 + 24);
  if (v111 != *(a1 + 25) + v170)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v107, v108, v109, v110, v146);
    v11 = 2588942361;
    goto LABEL_258;
  }

  v112 = *(a1 + 50) ? v64 + 2 : v64;
  v113 = heap_Alloc(*(*a1 + 8), 4 * (v111 * v112));
  v164 = v113;
  if (!v113)
  {
LABEL_213:
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v24, v25, v26, v27, v146);
    v12 = 1;
    goto LABEL_214;
  }

  v114 = v113;
  if (*(a1 + 50))
  {
    *v113 = 1120534528;
    v114 = &v113[v170];
  }

  v115 = 0;
  v116 = 0;
  do
  {
    if (*(a1 + 48))
    {
      v117 = (a1[16] + 64);
    }

    else
    {
      v118 = a1[16];
      if (*(a1 + 50))
      {
        v117 = (v118 + 72);
      }

      else
      {
        v117 = (v118 + 56);
      }
    }

    v11 = (*v117)(a1[19], a1[20], v165[v115], v114);
    if ((v11 & 0x1FFF) == 0x14)
    {
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "No embedding vector for character %s . Fall back!", v120, v121, v122, v165[v115]);
      if (*(a1 + 48))
      {
        v123 = (a1[16] + 64);
      }

      else
      {
        v124 = a1[16];
        if (*(a1 + 50))
        {
          v123 = (v124 + 72);
        }

        else
        {
          v123 = (v124 + 56);
        }
      }

      v11 = (*v123)(a1[19], a1[20], a1[14], v114);
    }

    v125 = &v114[v170];
    if (*(a1 + 48) || *(a1 + 50))
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }
    }

    else
    {
      fe_nnws_dynamic_feat(a1, v165, v166, v116, v125);
    }

    v114 = (v125 + 4 * *(a1 + 25));
    ++v116;
    v126 = v166;
    v115 += 7;
  }

  while (v116 < v166);
  if (*(a1 + 50))
  {
    *v114 = 1120665600;
    v135 = a1[10];
    v136 = (v126 + 2);
  }

  else
  {
    v135 = a1[10];
    v136 = v166;
  }

  v11 = fi_predict(v135, &v164, v136, &v167, v119, v120, v121, v122);
  if ((v11 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "FI Word Segmentation Prediction Failed", v137, v138, v139, 0);
    goto LABEL_258;
  }

  if (*(a1 + 50))
  {
    ++v167;
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "nnwsAddonEnable", &v163) & 0x80000000) != 0)
  {
    v140 = *(a1 + 49);
  }

  else
  {
    v140 = v163;
    *(a1 + 49) = v163;
  }

  if (v140 < 1 || (v89 = v168, v130 = fe_nnws_addon_lookup(a1, v165, v126, v168, &v167, a1[15], v140), (v130 & 0x80000000) == 0))
  {
    v141 = *a1;
    v153 = v165;
    v142 = a1[15];
    if (*(a1 + 50))
    {
      fe_nnws_adjustBMES_Edge(v141, v126, v165, v9, v142, &v167);
    }

    else
    {
      fe_nnws_adjustBMES(v141, v126, v165, v9, v142, &v167);
    }

    v33 = fe_nnws_IGTreeProcess(a1, v126, a1[15], v153, &v167, v143, v144, v145);
    if ((v33 & 0x80000000) == 0)
    {
      fe_nnws_retag_word_under_phon(&v167, &v165, &v166, a1[15]);
      v33 = fe_nnws_group(*a1, v167, &v165, &v166, &v168);
      if ((v33 & 0x80000000) == 0)
      {
        v129 = v166;
        goto LABEL_231;
      }
    }

    goto LABEL_257;
  }

LABEL_251:
  v11 = v130;
  v12 = 1;
  if (v89)
  {
    goto LABEL_119;
  }

LABEL_120:
  v90 = v165;
  if (v165)
  {
    v91 = v166;
    if (v166)
    {
      v92 = v165;
      do
      {
        if (*v92)
        {
          heap_Free(*(*a1 + 8), *v92);
          *v92 = 0;
        }

        v92 += 7;
        --v91;
      }

      while (v91);
    }

    heap_Free(*(*a1 + 8), v90);
  }

  v93 = v12 ^ 1;
  if (v11 < 0)
  {
    v93 = 1;
  }

  if ((v93 & 1) == 0)
  {
    LODWORD(v181) = 0;
    LODWORD(v178) = 0;
    LODWORD(v176) = 0;
    *__src = 0;
    LOWORD(v182) = 0;
    v11 = (*(a1[6] + 104))(a3, a4, 3, v173, __src);
    if ((v11 & 0x80000000) == 0)
    {
      while (*__src)
      {
        v94 = (*(a1[6] + 168))(a3, a4, *__src, 0, 1, &v181, &v182);
        if ((v94 & 0x80000000) != 0)
        {
          return v94;
        }

        v94 = (*(a1[6] + 168))(a3, a4, *__src, 1, 1, &v178, &v182);
        if ((v94 & 0x80000000) != 0)
        {
          return v94;
        }

        v94 = (*(a1[6] + 168))(a3, a4, *__src, 2, 1, &v176, &v182);
        if ((v94 & 0x80000000) != 0)
        {
          return v94;
        }

        if ((v181 - 7) >= 0xFFFFFFFD)
        {
          v95 = 0;
        }

        else
        {
          v95 = *__src;
        }

        v11 = (*(a1[6] + 120))(a3, a4);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        if (v95)
        {
          v11 = (*(a1[6] + 192))(a3, a4, v95);
        }
      }
    }
  }

  return v11;
}

uint64_t fe_nnws_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_loadCfg(uint64_t a1)
{
  memset(__c, 0, sizeof(__c));
  *(a1 + 192) = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_static_feat", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    v2 = **&__c[3];
    v3 = strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
      v2 = **&__c[3];
    }

    if (!strcmp(v2, "yes"))
    {
      *(a1 + 192) = 1;
    }
  }

  v4 = 2588943364;
  *&__c[1] = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_null_fea", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    *(a1 + 112) = 0;
    v5 = **&__c[3];
    v6 = strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
      v5 = **&__c[3];
    }

    v7 = strlen(v5);
    v8 = heap_Alloc(*(*a1 + 8), v7 + 1);
    *(a1 + 112) = v8;
    if (v8)
    {
      v13 = v8;
      v14 = strlen(**&__c[3]);
      strncpy(v13, **&__c[3], v14);
      *(*(a1 + 112) + strlen(**&__c[3])) = 0;
      *&__c[1] = 0;
      if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_indim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
      {
        if (*&__c[1])
        {
          *(a1 + 96) = 0;
          *(a1 + 96) = LH_atou(**&__c[3]);
          *&__c[1] = 0;
          if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_ddim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(a1 + 100) = 0;
              *(a1 + 100) = LH_atou(**&__c[3]);
              *&__c[1] = 0;
              *(a1 + 196) = 0;
              if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_force_ws", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
              {
                *(a1 + 196) = LH_atou(**&__c[3]);
              }

              *&__c[1] = 0;
              *(a1 + 200) = 0;
              v15 = (*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_albert", &__c[3], &__c[1], __c);
              v4 = 0;
              if ((v15 & 0x80000000) == 0 && *&__c[1])
              {
                v16 = v15;
                v17 = **&__c[3];
                v18 = strchr(**&__c[3], __c[0]);
                if (v18)
                {
                  *v18 = 0;
                  v17 = **&__c[3];
                }

                if (!strcmp(v17, "yes"))
                {
                  *(a1 + 200) = 1;
                }

                return v16;
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v9, v10, v11, v12, v20);
      return 2588942346;
    }
  }

  return v4;
}

uint64_t fe_nnws_CreateBrokerString(uint64_t a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *v7 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      result = brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, a2, 0x100uLL);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_nnws_tagInit(uint64_t a1, uint64_t *a2)
{
  v8 = heap_Calloc(*(a1 + 8), 4, 8);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = heap_Calloc(*(a1 + 8), 2, 1);
      *(v8 + 8 * v9) = v10;
      if (!v10)
      {
        break;
      }

      *v10 = aSbme[v9++];
      if (v9 == 4)
      {
        v15 = 0;
        goto LABEL_12;
      }
    }

    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, v11, v12, v13, v14, v19);
    for (i = 0; i != 32; i += 8)
    {
      v17 = *(v8 + i);
      if (v17)
      {
        heap_Free(*(a1 + 8), v17);
      }
    }

    v15 = 2588942346;
    heap_Free(*(a1 + 8), v8);
    v8 = 0;
  }

  else
  {
    v15 = 2588942346;
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, v4, v5, v6, v7, v19);
  }

LABEL_12:
  *a2 = v8;
  return v15;
}

uint64_t fe_nnws_tryLoadingIGTree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  *v27 = 0;
  *a4 = 0;
  BrokerString = fe_nnws_CreateBrokerString(a3, v28);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v28, "IGTR", 1031, v27), (BrokerString & 0x80000000) != 0))
  {
    v21 = BrokerString;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v27, v16);
      ssftriff_reader_CloseChunk(*v27);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v27);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_NNWS", 37000, 0, v17, v18, v19, v20, v26);
      v21 = 2588942346;
    }
  }

  if (*v27)
  {
    v22 = ssftriff_reader_ObjClose(*v27, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      v21 = v21;
    }

    else
    {
      v21 = v22;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t fe_nnws_dynamic_feat(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v67 = 0;
  v68 = 0;
  v70 = 0;
  v69 = 0;
  v10 = *(a2 + 56 * a4);
  result = strcmp(v10, "NUM");
  if (result && (result = strcmp(v10, "ENG"), result))
  {
    v64 = a5;
    v65 = a1;
    v12 = (a2 + 56 * v6 - 56);
    v13 = 8;
    v14 = 1;
    do
    {
      if (v14 < v6)
      {
        v15 = *v12;
        result = strcmp(*v12, "NUM");
        if (result)
        {
          result = strcmp(v15, "ENG");
          if (result)
          {
            *(&v67 + v13) = 1;
          }
        }
      }

      ++v14;
      v13 -= 4;
      v12 -= 7;
    }

    while (v13 != -4);
    v16 = v6 + 1;
    v17 = (a2 + 56 * v6 + 56);
    for (i = 16; i != 28; i += 4)
    {
      if (v16 < a3)
      {
        v19 = *v17;
        result = strcmp(*v17, "NUM");
        if (result)
        {
          result = strcmp(v19, "ENG");
          if (result)
          {
            *(&v67 + i) = 1;
          }
        }
      }

      ++v16;
      v17 += 7;
    }

    v20 = v68;
    if (v68 == 1)
    {
      v22 = v64;
      v21 = v65;
      if (v6)
      {
        v23 = v6 - 1;
        do
        {
          v24 = *(a2 + 56 * v23);
          __strcat_chk();
          ++v23;
        }

        while (v6 >= v23);
      }

      result = (*(v65[16] + 56))(v65[21], v65[22], &v71, v66);
      v25 = 0.0;
      if (result >= 0)
      {
        v25 = 1.0;
      }

      *v64 = v25;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22 = v64;
      v21 = v65;
      *v64 = 0.0;
    }

    v26 = v69;
    if (v69 == 1)
    {
      v27 = v6;
      do
      {
        v28 = *(a2 + 56 * v27);
        __strcat_chk();
        ++v27;
      }

      while (v6 + 2 > v27);
      result = (*(v21[16] + 56))(v21[21], v21[22], &v71, v66);
      v29 = 0.0;
      if (result >= 0)
      {
        v29 = 1.0;
      }

      v22[1] = v29;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[1] = 0.0;
    }

    v30 = v20 == 1 && HIDWORD(v67) == 1;
    v31 = v30;
    if (v30)
    {
      v32 = v6 - 2;
      if (v6 >= 2)
      {
        do
        {
          v33 = *(a2 + 56 * v32);
          __strcat_chk();
          ++v32;
        }

        while (v6 >= v32);
      }

      result = (*(v21[16] + 56))(v21[21], v21[22], &v71, v66);
      v34 = 0.0;
      if (result >= 0)
      {
        v34 = 1.0;
      }

      v22[2] = v34;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[2] = 0.0;
    }

    v35 = v20 == 1 && v26 == 1;
    v36 = v35;
    if (v35)
    {
      v37 = v6 - 1;
      if (v6 + 2 > (v6 - 1))
      {
        do
        {
          v38 = *(a2 + 56 * v37);
          __strcat_chk();
          ++v37;
        }

        while (v6 + 2 > v37);
      }

      result = (*(v21[16] + 56))(v21[21], v21[22], &v71, v66);
      v39 = 0.0;
      if (result >= 0)
      {
        v39 = 1.0;
      }

      v22[3] = v39;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[3] = 0.0;
    }

    v40 = HIDWORD(v69);
    v41 = v26 == 1 && HIDWORD(v69) == 1;
    v42 = v41;
    if (v41)
    {
      v43 = v6;
      do
      {
        v44 = *(a2 + 56 * v43);
        __strcat_chk();
        ++v43;
      }

      while (v6 + 3 > v43);
      result = (*(v65[16] + 56))(v65[21], v65[22], &v71, v66);
      v45 = 0.0;
      if (result >= 0)
      {
        v45 = 1.0;
      }

      v22 = v64;
      v64[4] = v45;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[4] = 0.0;
    }

    if (v67 == 1)
    {
      v46 = v31;
    }

    else
    {
      v46 = 0;
    }

    if (v46)
    {
      v47 = v6 - 3;
      if (v6 >= 3)
      {
        do
        {
          v48 = *(a2 + 56 * v47);
          __strcat_chk();
          ++v47;
        }

        while (v6 >= v47);
      }

      result = (*(v65[16] + 56))(v65[21], v65[22], &v71, v66);
      v49 = 0.0;
      if (result >= 0)
      {
        v49 = 1.0;
      }

      v22[5] = v49;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[5] = 0.0;
    }

    if (v26 == 1)
    {
      v50 = v31;
    }

    else
    {
      v50 = 0;
    }

    if (v50)
    {
      v51 = v6 - 2;
      if (v6 + 2 > (v6 - 2))
      {
        do
        {
          v52 = *(a2 + 56 * v51);
          __strcat_chk();
          ++v51;
        }

        while (v6 + 2 > v51);
      }

      result = (*(v65[16] + 56))(v65[21], v65[22], &v71, v66);
      v53 = 0.0;
      if (result >= 0)
      {
        v53 = 1.0;
      }

      v22[6] = v53;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[6] = 0.0;
    }

    if (v40 == 1)
    {
      v54 = v36;
    }

    else
    {
      v54 = 0;
    }

    if (v54)
    {
      v55 = v6 - 1;
      v56 = v65;
      if (v6 + 3 > (v6 - 1))
      {
        do
        {
          v57 = *(a2 + 56 * v55);
          __strcat_chk();
          ++v55;
        }

        while (v6 + 3 > v55);
      }

      result = (*(v65[16] + 56))(v65[21], v65[22], &v71, v66);
      v58 = 0.0;
      if (result >= 0)
      {
        v58 = 1.0;
      }

      v22[7] = v58;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    else
    {
      v22[7] = 0.0;
      v56 = v65;
    }

    if (v70 == 1)
    {
      v59 = v42;
    }

    else
    {
      v59 = 0;
    }

    if (v59)
    {
      v60 = v6 + 4;
      do
      {
        v61 = *(a2 + 56 * v6);
        __strcat_chk();
        ++v6;
      }

      while (v60 > v6);
      result = (*(v56[16] + 56))(v56[21], v56[22], &v71, v66);
      v62 = 0.0;
      if (result >= 0)
      {
        v62 = 1.0;
      }

      v22[8] = v62;
    }

    else
    {
      v22[8] = 0.0;
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  v63 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_nnws_addon_lookup(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, void *a6, unsigned __int16 a7)
{
  v11 = *a5;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = a7;
  v49 = a7 + 1;
  v12 = heap_Calloc(*(*a1 + 8), 1, v49);
  if (v12)
  {
    v17 = v12;
    if (a3)
    {
      v43 = v11;
      v44 = a6;
      v18 = 0;
      v45 = a6 + 3;
      v19 = 1;
      while (1)
      {
        v20 = 0;
        v48 = *(a2 + 56 * v18 + 12);
        if (a3 <= v18 + 1)
        {
          v21 = v18 + 1;
        }

        else
        {
          v21 = a3;
        }

        v47 = v21;
        LODWORD(v22) = v18;
        while (1)
        {
          v23 = a2 + 56 * v22;
          v24 = *v23;
          if (!strcmp(*v23, "NUM"))
          {
            break;
          }

          if (!strcmp(v24, "ENG"))
          {
            break;
          }

          v25 = *(v23 + 16) + v20;
          if (v25 > v50)
          {
            break;
          }

          LODWORD(v22) = v22 + 1;
          v20 += *(v23 + 16);
          if (v22 >= a3)
          {
            LODWORD(v22) = v47;
            v20 = v25;
            break;
          }
        }

        if (v18 >= v22)
        {
          v17[v20] = 0;
        }

        else
        {
          memcpy(v17, (a4 + v48), v20 + 1);
          v17[v20] = 0;
          if (v20)
          {
            v26 = (a2 - 40 + 56 * v22);
            v22 = v22;
            v27 = v22 - v18 - 3;
            while (1)
            {
              bzero(&v17[v20], v49 - v20);
              v17[v20] = 0;
              v53 = 0;
              v19 = (*(a1[7] + 232))(a1[8], a1[9], "force_ws", v17, &v52, &v53, &v51, 0);
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_47;
              }

              if (v53)
              {
                break;
              }

              if (--v22 > v18)
              {
                v28 = *v26;
                v26 -= 14;
                --v27;
                v20 -= v28;
                if (v20)
                {
                  continue;
                }
              }

              goto LABEL_22;
            }

            v29 = v44[1];
            if (v18)
            {
              v30 = v43;
              v31 = *(v43 + 8 * (v18 - 1));
              v32 = v44;
              v33 = v18 + 1;
              if (v31 == v29 || (v32 = v45, v31 == v44[2]))
              {
                *(v43 + 8 * (v18 - 1)) = *v32;
                v29 = v44[1];
              }
            }

            else
            {
              v30 = v43;
              v33 = 1;
            }

            v34 = v22 - 1;
            *(v30 + 8 * v18) = v29;
            if (v22 < a3)
            {
              v35 = *(v30 + 8 * v22);
              if (v35 == v44[2])
              {
                goto LABEL_36;
              }

              if (v35 == *v45)
              {
                v29 = *v44;
LABEL_36:
                *(v30 + 8 * v34) = v29;
              }
            }

            *(v30 + 8 * v34) = *v45;
            if (v33 < v34)
            {
              v36 = 0;
              v37 = v44[2];
              v38 = vdupq_n_s64(v27);
              v39 = v30 + 8 * v33;
              do
              {
                v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v36), xmmword_1C378AF00)));
                if (v40.i8[0])
                {
                  *(v39 + 8 * v36) = v37;
                }

                if (v40.i8[4])
                {
                  *(v39 + 8 * v36 + 8) = v37;
                }

                v36 += 2;
              }

              while (((v27 + 2) & 0x1FFFFFFFELL) != v36);
            }

            v19 = 1;
          }
        }

LABEL_22:
        if (v18 == v22)
        {
          v18 = v22 + 1;
        }

        else
        {
          v18 = v22;
        }

        if (v18 >= a3)
        {
          goto LABEL_47;
        }
      }
    }

    v19 = 1;
LABEL_47:
    heap_Free(*(*a1 + 8), v17);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v13, v14, v15, v16, v42);
    return 2588942346;
  }

  return v19;
}

uint64_t fe_nnws_adjustBMES_Edge(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t **a6)
{
  v7 = a2;
  v9 = *a6;
  v24 = *a6;
  if (a2 < 2)
  {
    goto LABEL_26;
  }

  v10 = a2 - 2;
  for (i = v9; ; ++i)
  {
    v12 = *i[1];
    if (v12 <= 0x4C)
    {
      if (v12 != 66)
      {
        if (v12 == 69)
        {
          v13 = **i;
          v14 = a5;
          if (v13 == 83)
          {
            goto LABEL_19;
          }

          v14 = a5;
          if (v13 == 69)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 2;
      if (v15 == 66)
      {
        goto LABEL_19;
      }

      v14 = a5 + 2;
LABEL_15:
      if (v15 == 77)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v12 != 77)
    {
      if (v12 != 83)
      {
        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 3;
      if (v15 == 66)
      {
LABEL_19:
        i[1] = *v14;
        goto LABEL_20;
      }

      v14 = a5 + 3;
      goto LABEL_15;
    }

    v16 = **i;
    v14 = a5 + 1;
    if (v16 == 69)
    {
      goto LABEL_19;
    }

    v14 = a5 + 1;
    if (v16 == 83)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!v10)
    {
      break;
    }

    --v10;
  }

  v17 = a5 + 3;
  if (**i == 77 || (v17 = a5, *i[1] == 66))
  {
    i[1] = *v17;
  }

LABEL_26:
  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v24);
  if (a4 == 1 && v7)
  {
    v22 = v7;
    do
    {
      v23 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS][adjustBMES_Edge] Predicted Tag: %s", v19, v20, v21, v23);
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t fe_nnws_adjustBMES(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t **a6)
{
  v7 = a2;
  v9 = *a6;
  v22 = *a6;
  if (a2)
  {
    v10 = (v9 + 1);
    for (i = a2; i; --i)
    {
      v12 = **(v10 - 1);
      if (i == 1)
      {
        v13 = a5 + 3;
        if (v12 != 77)
        {
          v13 = a5;
          if (v12 != 66)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }

      if (**(v10 - 1) > 0x4Cu)
      {
        if (v12 == 77)
        {
          v15 = **v10;
          v13 = a5 + 3;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5 + 3;
LABEL_20:
          if (v15 == 83)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v12 == 83)
        {
          v14 = **v10 | 8;
          v13 = a5 + 1;
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 == 66)
        {
          v15 = **v10;
          v13 = a5;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5;
          goto LABEL_20;
        }

        if (v12 == 69)
        {
          v14 = **v10 | 8;
          v13 = a5 + 2;
LABEL_14:
          if (v14 != 77)
          {
            goto LABEL_22;
          }

LABEL_21:
          *(v10 - 1) = *v13;
        }
      }

LABEL_22:
      ++v10;
    }
  }

  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v22);
  if (a4 == 1 && v7)
  {
    v20 = v7;
    do
    {
      v21 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS] Predicted Tag: %s", v17, v18, v19, v21);
      --v20;
    }

    while (v20);
  }

  return result;
}