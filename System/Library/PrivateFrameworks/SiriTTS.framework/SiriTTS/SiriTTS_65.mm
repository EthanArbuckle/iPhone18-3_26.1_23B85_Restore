uint64_t posparser_isFeatureRequired(uint64_t a1, int a2, _WORD *a3, unsigned int a4, int a5)
{
  LOWORD(v6) = a2;
  if (a5 == 1)
  {
LABEL_2:
    *a3 = v6;
    return 1;
  }

  if (a4)
  {
    v8 = *(a1 + 1312);
    v9 = g_posparser_FeatureNames[a2];
    v10 = a4;
    v6 = 0;
    while (strcmp(*(v8 + 8 * v6), v9))
    {
      if (v10 == ++v6)
      {
        return 0;
      }
    }

    goto LABEL_2;
  }

  return 0;
}

uint64_t posparser_DumpFeatureVectorAndResult(uint64_t a1, char *a2, char **a3, char *a4, const char **a5, _DWORD *a6, unsigned int a7, int a8, unsigned __int16 a9, char *a10)
{
  __sprintf_chk(__s, 0, 6uLL, "%d", a9);
  result = posparser_add2Str(a1, a5, a6, __s);
  if ((result & 0x80000000) == 0)
  {
    result = posparser_add2Str(a1, a5, a6, " FEATUREVECTOR:");
    if ((result & 0x80000000) == 0)
    {
      result = posparser_add2Str(a1, a5, a6, a2);
      if ((result & 0x80000000) == 0)
      {
        result = posparser_add2Str(a1, a5, a6, ":");
        if ((result & 0x80000000) == 0)
        {
          __sprintf_chk(__s, 0, 6uLL, "%d", a7);
          result = posparser_add2Str(a1, a5, a6, __s);
          if ((result & 0x80000000) == 0)
          {
            result = posparser_add2Str(a1, a5, a6, ":");
            if ((result & 0x80000000) == 0)
            {
              result = posparser_add2Str(a1, a5, a6, a10);
              if ((result & 0x80000000) == 0)
              {
                if (a7)
                {
                  v19 = a7;
                  v20 = g_posparser_FeatureNames;
                  while (1)
                  {
                    if (a8 == 1)
                    {
                      result = posparser_add2Str(a1, a5, a6, *v20);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }

                      result = posparser_add2Str(a1, a5, a6, " ");
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    result = posparser_add2Str(a1, a5, a6, *a3);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = posparser_add2Str(a1, a5, a6, " ");
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    ++v20;
                    ++a3;
                    if (!--v19)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  result = posparser_add2Str(a1, a5, a6, " PREDICTED:");
                  if ((result & 0x80000000) == 0)
                  {
                    result = posparser_add2Str(a1, a5, a6, a4);
                    if ((result & 0x80000000) == 0)
                    {
                      log_OutText(*(a1 + 32), "POSPARSER", 5, 0, "%s", v21, v22, v23, *a5);
                      result = 0;
                      **a5 = 0;
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

  return result;
}

uint64_t posparser_add2Str(uint64_t a1, const char **a2, _DWORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80)
    {
      v12 = 128;
    }

    else
    {
      v12 = v8 - v9 + v11;
    }

    v13 = heap_Realloc(*(a1 + 8), v10, (v9 + v12 + 1));
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0, v14, v15, v16, v17, v19);
      return 2687508490;
    }

    v10 = v13;
    *a2 = v13;
    *a3 += v12;
  }

  if (*v10)
  {
    strcat(v10, __s);
  }

  else
  {
    strcpy(v10, __s);
  }

  return 0;
}

uint64_t posparser_setFeature(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, unsigned int a6, int a7)
{
  v37 = 0;
  result = posparser_isFeatureRequired(a1, a3, &v37, a6, a7);
  if (result)
  {
    if (!*a5)
    {
      result = 0;
      **(a4 + 8 * v37) = 61;
      return result;
    }

    v14 = v37;
    if (strlen(a5) <= 0x40)
    {
      v16 = *(a4 + 8 * v37);
    }

    else
    {
      v15 = strlen(a5);
      v16 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v37), (v15 + 1));
      if (!v16)
      {
        log_OutPublic(*(a2 + 32), "POSPARSER", 68000, 0, v17, v18, v19, v20, v36);
        return 2687508490;
      }

      *(a4 + 8 * v14) = v16;
    }

    strcpy(v16, a5);
    if (a7)
    {
      return 0;
    }

    v21 = *(a1 + 1336);
    if (!v21)
    {
      return 0;
    }

    v22 = *(a4 + 8 * v14);
    v23 = strlen(g_posparser_FeatureNames[a3]);
    v24 = 0;
    v25 = *(a1 + 1328);
    v26 = *(*(a1 + 1312) + 8 * v14);
    while (1)
    {
      v27 = v24;
      if (!strncmp(*(v25 + 16 * v24), v26, v23))
      {
        break;
      }

      v24 = v27 + 1;
      if (v21 <= (v27 + 1))
      {
        return 0;
      }
    }

    v28 = *(v25 + 16 * v27 + 8);
    v29 = strstr(v28, v22);
    if (v29)
    {
      v30 = v29;
      v31 = strlen(v22);
      v32 = strlen(v28);
      v33 = v32;
      v34 = &v28[v32];
      while (v30 != v28 || v33 != v31 && (v33 <= v31 + 1 || v30[v31] != 32))
      {
        if (v30 > v28)
        {
          v35 = &v30[v31];
          if (v34 > (v35 + 1) && *v35 == 32)
          {
            if (*(v30 - 1) == 32)
            {
              return 0;
            }
          }

          else if (v34 == v35)
          {
            return 0;
          }
        }

        v30 = strstr(&v30[v31], v22);
        if (!v30)
        {
          goto LABEL_29;
        }
      }

      return 0;
    }

LABEL_29:
    result = 0;
    *v22 = 61;
  }

  return result;
}

uint64_t posparser_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0, v7, v8, v9, v10, v12);
  return 2687508490;
}

uint64_t posparser_getIgtreeBrkStrs(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  *v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "diacritizerOOVPOS_igtree", 1, 1, *v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "diacritizerKNOWNPOS_igtree", 1, 1, *v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t getPosparserIGTreesAndDict(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8, uint64_t *a9, _DWORD *a10, uint64_t a11, _DWORD *a12)
{
  v63 = *MEMORY[0x1E69E9840];
  v59 = 0;
  *v60 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a12 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "araparsergetfv", &v58) & 0x80000000) == 0 && v58 == 1)
  {
    *a10 = 1;
  }

  v56 = -1;
  v18 = (*(a6 + 96))(a4, a5, "fecfg", "araparsermwspan", &v57, &v56, &v55);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v52 = v56;
  if (v56)
  {
    *a12 = 1;
  }

  v19 = (*(a6 + 72))(a4, a5, a11, &v59 + 4);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  if (!HIDWORD(v59))
  {
    __strcpy_chk();
    __strcat_chk();
    v20 = (*(a6 + 72))(a4, a5, v62, &v59);
    v19 = v20;
    if ((v20 & 0x80000000) != 0 || !v59)
    {
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  *a7 = 1;
  if (*a10 == 1)
  {
    *a9 = 0;
    *a8 = 0;
    *a7 = 1;
LABEL_13:
    *a12 = 1;
    goto LABEL_37;
  }

  IgtreeBrkStrs = posparser_getIgtreeBrkStrs(a1, v62, v61, 0x100uLL);
  if ((IgtreeBrkStrs & 0x80000000) != 0)
  {
    v19 = IgtreeBrkStrs;
    goto LABEL_33;
  }

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, v61, "IGTR", 1031, v60) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a9 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", v22, v23, v24, v25, "treename:");
    goto LABEL_33;
  }

  v26 = heap_Calloc(*(a1 + 8), 1, 1600);
  *a9 = v26;
  if (!v26)
  {
    goto LABEL_38;
  }

  v18 = igtree_Init(a2, a3, *v60, v26);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v18 = ssftriff_reader_ObjClose(*v60, v31, v32, v33, v34, v35, v36, v37);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, v62, "IGTR", 1031, v60) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a8 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", v38, v39, v40, v41, "treename:");
    goto LABEL_33;
  }

  v26 = heap_Calloc(*(a1 + 8), 1, 1600);
  *a8 = v26;
  if (!v26)
  {
LABEL_38:
    log_OutPublic(*(a1 + 32), "POSPARSER", 68000, v26, v27, v28, v29, v30, v51);
    v19 = 2687508490;
    goto LABEL_33;
  }

  v18 = igtree_Init(a2, a3, *v60, v26);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_28:
    v19 = v18;
    goto LABEL_33;
  }

  v19 = ssftriff_reader_ObjClose(*v60, v42, v43, v44, v45, v46, v47, v48);
  if ((v19 & 0x80000000) != 0)
  {
LABEL_33:
    if (*a8)
    {
      heap_Free(*(a1 + 8), *a8);
      *a8 = 0;
    }

    if (*a9)
    {
      heap_Free(*(a1 + 8), *a9);
      *a9 = 0;
    }

    goto LABEL_37;
  }

  if (v52 || HIDWORD(v59) == 1 || v59 == 1)
  {
    goto LABEL_13;
  }

LABEL_37:
  v49 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t freePosparserIGTrees(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  if (v11)
  {
    v12 = igtree_Deinit(a1, v11, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v12 = 0;
  }

  if (*a3)
  {
    v12 = igtree_Deinit(a1, *a3, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) == 0)
    {
      heap_Free(*(a1 + 8), *a3);
      *a3 = 0;
    }
  }

  return v12;
}

uint64_t posparser_doPatternMatching(uint64_t a1, char *__dst, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v207 = *MEMORY[0x1E69E9840];
  v202 = 0;
  v203 = 0;
  v200 = 0;
  __s2 = 0;
  if (!a5)
  {
    goto LABEL_215;
  }

  v10 = 0;
  v11 = 0;
  v188 = 0;
  v12 = 0;
  v187 = 0;
  v205 = 0;
  v204 = 0;
  while (1)
  {
    v13 = v12;
    v14 = a4 + 104 * v12;
    if (*(v14 + 32))
    {
      v168 = v10;
      v15 = a4;
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d not sent to pattern matching since found in dict", a6, a7, a8, v168);
      a4 = v15;
      v13 = *(v14 + 72);
      v12 = *(v14 + 72);
LABEL_11:
      v16 = a4 + 104 * v13;
      if (*(v16 + 32))
      {
        *(v16 + 72) = v12;
      }

      goto LABEL_13;
    }

    if (*(v14 + 88) || *(v14 + 80) || *(v14 + 84) || *(v14 + 92) || *(v14 + 12) || *(v14 + 74))
    {
      goto LABEL_11;
    }

    v172 = v8;
    v175 = a4;
    if (*(a3 + 62))
    {
      break;
    }

    v193 = __dst;
    v19 = *(v14 + 8);
    if (v19 >= *(v14 + 10))
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v21 = *(a3 + 104);
        if (v11 >= v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          v23 = a3[25];
          v24 = v11;
          v189 = v19;
          do
          {
            v25 = *(v23 + 6 * v24);
            if (v25 > *(v14 + 10))
            {
              break;
            }

            v26 = v24;
            if (v19 == v25)
            {
              if (*(a3 + 49) > v20)
              {
                v181 = v11;
                v27 = 0;
                while (1)
                {
                  v23 = a3[25];
                  if (strlen((v23 + 6 * v26 + 2)) <= v27)
                  {
                    break;
                  }

                  v28 = (v20 + 1);
                  v193[v20] = *(v23 + 6 * v26 + v27++ + 2);
                  v29 = v27 + (v20 + 1);
                  v20 = v28;
                  if (v29 >= *(a3 + 49))
                  {
                    v23 = a3[25];
                    v20 = v28;
                    break;
                  }
                }

                v21 = *(a3 + 104);
                v11 = v181;
                a4 = v175;
                v19 = v189;
              }

              v22 = *(v23 + 6 * v26 + 2);
            }

            else if (*(v14 + 8) >= v25)
            {
              v11 = v24;
            }

            v24 = v26 + 1;
          }

          while (v26 + 1 < v21);
        }

        v30 = *(a1 + v19);
        if (v30 != 65 || (v31 = v22 - 66, v31 > 0x16) || ((1 << v31) & 0x400081) == 0 || !*(a3 + 38))
        {
          if (*(a3 + 49) > v20)
          {
            v193[v20] = v30;
            v20 = (v20 + 1);
          }
        }

        ++v19;
      }

      while (v19 < *(v14 + 10));
      LODWORD(v19) = v19;
    }

    v32 = *(a3 + 104);
    v33 = v11;
    v34 = v20;
    v35 = v20;
    __dst = v193;
    v182 = v11;
    v190 = v19;
    if (v11 < v32)
    {
      while (1)
      {
        v36 = *(a3[25] + 6 * v33);
        if (v36 > *(v14 + 10))
        {
          break;
        }

        v37 = v33;
        if (v36 == v19 && *(a3 + 49) > v34)
        {
          v38 = 0;
          while (1)
          {
            v39 = a3[25];
            if (strlen((v39 + 6 * v37 + 2)) <= v38)
            {
              break;
            }

            v40 = (v34 + 1);
            v193[v34] = *(v39 + 6 * v37 + v38++ + 2);
            v41 = v38 + (v34 + 1);
            v34 = v40;
            if (v41 >= *(a3 + 49))
            {
              goto LABEL_56;
            }
          }

          v40 = v34;
LABEL_56:
          __dst = v193;
          v32 = *(a3 + 104);
          v34 = v40;
          v11 = v182;
          a4 = v175;
          LODWORD(v19) = v190;
        }

        v33 = v37 + 1;
        v35 = v34;
        if (v37 + 1 >= v32)
        {
          goto LABEL_60;
        }
      }

      v35 = v34;
    }

LABEL_60:
    v188 = v35;
    if (*(a3 + 49) != v35)
    {
      __dst[v35] = 0;
      goto LABEL_63;
    }

    LODWORD(v8) = v172;
LABEL_13:
    v10 = ++v12;
    if (v12 >= v8)
    {
      goto LABEL_211;
    }
  }

  v17 = *(v14 + 96);
  strncpy(__dst, (a1 + *(v14 + 8)), *(v14 + 10) - *(v14 + 8));
  __dst[*(v14 + 10) - *(v14 + 8)] = 0;
  if (v17)
  {
    v18 = posparser_ExtractPunctuation(a3, __dst, &v203, &v202, &__s2, &v200);
    if ((v18 & 0x80000000) != 0)
    {
      v187 = v18;
LABEL_211:
      if (v203)
      {
        heap_Free(*(*a3 + 8), v203);
      }

      v8 = v187;
      if (__s2)
      {
        heap_Free(*(*a3 + 8), __s2);
      }

      goto LABEL_215;
    }

    strcpy(__dst, *(v14 + 96));
  }

LABEL_63:
  log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d (%s) sent to pattern matching", a6, a7, a8, v10);
  v42 = 1;
  v183 = v11;
  while (2)
  {
    strcpy(v206, "diac_decomp_");
    v173 = v42;
    LH_itoa(v42, v199, 0xAu);
    __strcat_chk();
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s L1: %s", v43, v44, v45, v206);
    v46 = strlen(__dst);
    v47 = (*(a3[7] + 120))(a3[5], a3[6], 0, __dst, v46);
    if ((v47 & 0x80000000) != 0)
    {
      v8 = v47;
      goto LABEL_215;
    }

    if (((*(a3[7] + 80))(a3[5], a3[6], v206) & 0x80000000) != 0)
    {
      LODWORD(v8) = v172;
      if (v173 == 1)
      {
        v8 = 0;
        goto LABEL_215;
      }

      v187 = 0;
LABEL_190:
      if (!*(v14 + 32))
      {
        v161 = *(v14 + 24);
        if (v161)
        {
          heap_Free(*(*a3 + 8), v161);
          *(v14 + 24) = 0;
        }
      }

      if (*(a3 + 62) == 1)
      {
        a4 = v175;
        if (*(v14 + 96) && v203 | __s2)
        {
          if (*(v14 + 32))
          {
            v162 = __dst;
            v163 = 0;
            v164 = 8;
            do
            {
              if (v203)
              {
                v165 = strlen(*(*(v14 + 24) + v164));
                v11 = v183;
                memmove((*(*(v14 + 24) + v164) + v202), *(*(v14 + 24) + v164), v165 + 1);
                memcpy(*(*(v14 + 24) + v164), v203, v202);
                a4 = v175;
              }

              if (__s2)
              {
                strcat(*(*(v14 + 24) + v164), __s2);
                a4 = v175;
              }

              ++v163;
              v164 += 16;
            }

            while (v163 < *(v14 + 32));
            v188 = v163;
            LODWORD(v8) = v172;
            __dst = v162;
          }

          else
          {
            v188 = 0;
          }
        }
      }

      else
      {
        a4 = v175;
      }

      goto LABEL_11;
    }

    v48 = (*(a3[7] + 128))(a3[5], a3[6], 0, &v205, &v204);
    v8 = v48;
    if ((v48 & 0x80000000) != 0)
    {
      goto LABEL_215;
    }

    v187 = v48;
    v205[v204] = 0;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s O1: %s", v49, v50, v51, v206);
    v52 = v205;
    v53 = *v205;
    if (v53 != 91 && v53 != 47)
    {
      LODWORD(v8) = v172;
      v11 = v183;
      goto LABEL_185;
    }

    v54 = &v205[v204];
    v55 = *(v54 - 1);
    v56 = v173;
    if (*(v54 - 1) && v55 != 93 && v55 != 47)
    {
      LODWORD(v8) = v172;
      v11 = v183;
      goto LABEL_186;
    }

    v198 = 0;
    if (v205 >= v54)
    {
      v58 = 1;
      v57 = 1;
    }

    else
    {
      v57 = 1;
      v58 = 1;
      do
      {
        v59 = *v52;
        if ((v59 - 44) <= 0x31 && ((1 << (v59 - 44)) & 0x2800000000009) != 0)
        {
          v61 = v59 == 44;
          v62 = v59 == 44 ? 1 : v57;
          v58 = (v62 * v58);
          if (v61)
          {
            ++v57;
          }

          else
          {
            v57 = 1;
          }

          v63 = strchr(v52, 58);
          if (v63)
          {
            v52 = v63 - 1;
            do
            {
              v64 = v52[2];
              ++v52;
              v64 -= 44;
              v65 = v64 > 0x31;
              v66 = (1 << v64) & 0x2800000000009;
            }

            while (v65 || v66 == 0);
          }
        }

        ++v52;
      }

      while (v52 < v54);
    }

    v176 = v57;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) found", a6, a7, a8, v58);
    v71 = *a3;
    if (v58 > 0x2710)
    {
      log_OutText(*(v71 + 32), "POSPARSER", 5, 0, "More than 10000 decompositions found, invalidated the results of current depes grammar", v68, v69, v70, v169);
      LODWORD(v8) = v172;
      v11 = v183;
      goto LABEL_185;
    }

    v72 = heap_Realloc(*(v71 + 8), *(v14 + 24), 16 * (v58 + *(v14 + 32)));
    v11 = v183;
    if (v72)
    {
      *(v14 + 24) = v72;
      v8 = *(v14 + 32);
      if (!v58)
      {
        goto LABEL_102;
      }

      do
      {
        v77 = heap_Alloc(*(*a3 + 8), (v202 + v204 + v200));
        *(*(v14 + 24) + 16 * v8 + 8) = v77;
        if (!v77)
        {
          goto LABEL_206;
        }

        *v77 = 0;
        v78 = heap_Alloc(*(*a3 + 8), v204);
        *(*(v14 + 24) + 16 * v8) = v78;
        if (!v78)
        {
          log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0, v79, v74, v75, v76, v169);
          heap_Free(*(*a3 + 8), *(*(v14 + 24) + 16 * v8 + 8));
          goto LABEL_208;
        }

        *v78 = 0;
        LOWORD(v8) = v8 + 1;
      }

      while (v58 + *(v14 + 32) > v8);
      v8 = *(v14 + 32);
LABEL_102:
      v80 = v204;
      v194 = __dst;
      if (!v204)
      {
        LODWORD(v105) = 1;
        v81 = 1;
        goto LABEL_143;
      }

      v81 = 1;
      v82 = v205;
      v83 = v205;
      do
      {
        v84 = *v83;
        if ((v84 - 44) <= 0x31 && ((1 << (v84 - 44)) & 0x2800000000009) != 0)
        {
          v86 = v84 == 44;
          if (v84 == 44)
          {
            v87 = v188;
          }

          else
          {
            v87 = 0;
          }

          v188 = v87;
          if (v86)
          {
            v88 = 1;
          }

          else
          {
            v88 = v176;
          }

          v184 = v88 * v81;
          if (v86)
          {
            v89 = v176 + 1;
          }

          else
          {
            v89 = 1;
          }

          v176 = v89;
          v90 = strchr(v83, 58);
          if (v90)
          {
            v91 = v83;
            *v90 = 0;
            v92 = v90 + 1;
            while (1)
            {
              v93 = v90[1];
              if ((v93 - 44) <= 0x31 && ((1 << (v93 - 44)) & 0x2800000000009) != 0)
              {
                break;
              }

              ++v90;
            }

            v90[1] = 0;
            v95 = *(v14 + 32);
            v96 = v188 + v184;
            v174 = v90;
            if (v93 == 44)
            {
              v97 = v95 + v188;
              v98 = v96 + v95;
              if (v96 + v95 > (v95 + v188))
              {
                v99 = (v95 + v188);
                do
                {
                  v100 = 16 * (v99 + v184);
                  strcpy(*(*(v14 + 24) + v100 + 8), *(*(v14 + 24) + 16 * v97 + 8));
                  strcpy(*(*(v14 + 24) + v100), *(*(v14 + 24) + 16 * v97++));
                  v99 = v97;
                  v95 = *(v14 + 32);
                  v98 = v96 + v95;
                }

                while (v96 + v95 > v97);
              }
            }

            else
            {
              v98 = v96 + v95;
            }

            v101 = v95 + v188;
            while (v98 > v101)
            {
              v102 = v101;
              v103 = 16 * v101;
              strcat(*(*(v14 + 24) + v103 + 8), v91 + 1);
              v104 = *(*(v14 + 24) + v103);
              if (*v104)
              {
                *&v104[strlen(*(*(v14 + 24) + v103))] = 43;
                v104 = *(*(v14 + 24) + v103);
              }

              strcat(v104, v92);
              v101 = v102 + 1;
              v98 = v96 + *(v14 + 32);
            }

            v11 = v183;
            v81 = v184;
            v188 = (v184 + v188);
            v83 = v174;
            v174[1] = v93;
            v82 = v205;
            v80 = v204;
          }

          else
          {
            v81 = v184;
          }
        }

        ++v83;
      }

      while (v83 < &v82[v80]);
      v8 = *(v14 + 32);
      v105 = v81;
      if (v81)
      {
        __dst = v194;
LABEL_143:
        v106 = v8;
        v107 = v8;
        do
        {
          if (v107)
          {
            v179 = v105;
            v185 = v81;
            v108 = 0;
            v191 = v107;
            v109 = v107;
            v110 = *(v14 + 24);
            v111 = *(v110 + 16 * v107);
            v112 = (v110 + 8);
            while (strcmp(v111, *(v112 - 1)))
            {
              ++v108;
              v112 += 2;
              if (v108 >= v109)
              {
                v107 = (v191 + 1);
                v113 = v108;
                __dst = v194;
                v11 = v183;
                v81 = v185;
                goto LABEL_157;
              }
            }

            if (strcmp(*(v110 + 16 * v109 + 8), *v112))
            {
              log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:DUPLICATE:%s POS %s, different DIA %s vs %s", v114, v115, v116, v194);
            }

            v117 = (*(v14 + 24) + 16 * v109);
            v170 = *v117;
            v171 = v117[1];
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "removing duplicate %d %s,%s", v114, v115, v116, v106);
            v118 = v179;
            v119 = v179 - 1 + *(v14 + 32);
            v113 = v191;
            __dst = v194;
            if (v119 > v191)
            {
              LODWORD(v113) = v191;
              v120 = v191;
              do
              {
                v121 = 16 * (v120 + 1);
                strcpy(*(*(v14 + 24) + 16 * v113 + 8), *(*(v14 + 24) + v121 + 8));
                strcpy(*(*(v14 + 24) + 16 * v113), *(*(v14 + 24) + v121));
                v113 = (v113 + 1);
                v120 = v113;
                v119 = v179 - 1 + *(v14 + 32);
              }

              while (v119 > v113);
              v118 = v179;
            }

            heap_Free(*(*a3 + 8), *(*(v14 + 24) + 16 * v119 + 8));
            heap_Free(*(*a3 + 8), *(*(v14 + 24) + 16 * (v118 + *(v14 + 32)) - 16));
            v11 = v183;
            v81 = v185 - 1;
            v107 = v191;
          }

          else
          {
            v113 = 0;
            v107 = 1;
          }

LABEL_157:
          v106 = v107;
          v8 = *(v14 + 32);
          v105 = v81;
          v122 = v8 + v81;
        }

        while (v122 > v107);
      }

      else
      {
        v122 = v8 + v81;
        v81 = 0;
        v113 = v188;
        __dst = v194;
      }

      v177 = v113;
      v123 = v8;
      v65 = v122 > v8;
      LODWORD(v8) = v172;
      if (v65)
      {
LABEL_162:
        v186 = v81;
        v196 = 0;
        __s = 0;
        v124 = 16 * v123;
        v192 = v123;
        log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "DIA %s", v74, v75, v76, *(*(v14 + 24) + v124 + 8));
        log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "POS %s", v125, v126, v127, *(*(v14 + 24) + v124));
        if ((ssftmap_IteratorOpen(a3[32], 0, 0, &v198) & 0x80000000) != 0)
        {
          __dst = v194;
          goto LABEL_177;
        }

        if ((ssftmap_IteratorNext(v198, &v196, &__s) & 0x80000000) != 0)
        {
          __dst = v194;
          goto LABEL_176;
        }

        v180 = v105;
        while (1)
        {
          v128 = *(*(v14 + 24) + v124);
          v129 = v196;
          v130 = strstr(v128, (v196 + 1));
          if (v130)
          {
            if (*v129 == 70)
            {
              strcpy(v128, __s);
              log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FULL MAPPING POS %s", v149, v150, v151, *(*(v14 + 24) + v124));
              if (strcmp(__s, "INVALID"))
              {
LABEL_175:
                LODWORD(v8) = v172;
                __dst = v194;
                v11 = v183;
                goto LABEL_176;
              }

              v152 = v180;
              v153 = v180 - 1 + *(v14 + 32);
              v154 = v192;
              __dst = v194;
              v155 = v192;
              if (v153 > v192)
              {
                v156 = v192;
                LODWORD(v155) = v192;
                do
                {
                  v157 = 16 * (v156 + 1);
                  strcpy(*(*(v14 + 24) + 16 * v155 + 8), *(*(v14 + 24) + v157 + 8));
                  strcpy(*(*(v14 + 24) + 16 * v155), *(*(v14 + 24) + v157));
                  v155 = (v155 + 1);
                  v156 = v155;
                  v153 = v180 - 1 + *(v14 + 32);
                }

                while (v153 > v155);
                v152 = v180;
                v154 = v192;
              }

              v177 = v155;
              heap_Free(*(*a3 + 8), *(*(v14 + 24) + 16 * v153 + 8));
              heap_Free(*(*a3 + 8), *(*(v14 + 24) + 16 * (v152 + *(v14 + 32)) - 16));
              v11 = v183;
              --v186;
              LODWORD(v192) = v154 - 1;
              LODWORD(v8) = v172;
LABEL_176:
              ssftmap_IteratorClose(v198);
LABEL_177:
              v123 = (v192 + 1);
              v81 = v186;
              v105 = v186;
              v122 = *(v14 + 32) + v186;
              if (v122 <= (v192 + 1))
              {
                v113 = v177;
                break;
              }

              goto LABEL_162;
            }

            v131 = v130;
            v132 = strlen(__s);
            v133 = strlen((v129 + 1));
            v134 = strlen(v131);
            memmove(&v131[v132], &v131[v133], v134 - v133 + 1);
            v135 = strlen(__s);
            strncpy(v131, __s, v135);
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", v136, v137, v138, *(*(v14 + 24) + v124));
            v139 = v196;
            v140 = strstr(v131 + 1, (v196 + 1));
            if (v140)
            {
              v141 = v140;
              do
              {
                v142 = strlen(__s);
                v143 = strlen((v139 + 1));
                v144 = strlen(v141);
                memmove(&v141[v142], &v141[v143], v144 - v143 + 1);
                v145 = strlen(__s);
                strncpy(v141, __s, v145);
                log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", v146, v147, v148, *(*(v14 + 24) + v124));
                v139 = v196;
                v141 = strstr(v141 + 1, (v196 + 1));
              }

              while (v141);
            }
          }

          if ((ssftmap_IteratorNext(v198, &v196, &__s) & 0x80000000) != 0)
          {
            goto LABEL_175;
          }
        }
      }

      v188 = v113;
      *(v14 + 32) = v122;
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) left after invalidation step", v74, v75, v76, v105);
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) in total", v158, v159, v160, *(v14 + 32));
LABEL_185:
      v56 = v173;
LABEL_186:
      v42 = v56 + 1;
      if (v42 == 255)
      {
        goto LABEL_190;
      }

      continue;
    }

    break;
  }

LABEL_206:
  log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0, v73, v74, v75, v76, v169);
LABEL_208:
  v8 = 2687508490;
LABEL_215:
  v166 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t posparser_getPosMap(void *a1)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v2 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", "araposmap", &v10, &v9, &v11);
  if ((v2 & 0x80000000) == 0 && v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v4 = *(v10 + 8 * i);
      v5 = strchr(v4, 124);
      if (v5)
      {
        *v5 = 0;
        v6 = (v5 + 1);
        v7 = strchr(v5 + 1, 124);
        if (v7)
        {
          *v7 = 0;
          v2 = ssftmap_Insert(a1[32], v4, v6);
          if ((v2 & 0x80000000) != 0)
          {
            break;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t posparser_loc_getDictCharString(void *a1, uint64_t a2, char **a3)
{
  LOBYTE(__c) = 0;
  v17 = 0;
  v16 = -1;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v17, &v16, &__c);
  if ((v5 & 0x80000000) == 0 && v16)
  {
    v6 = *v17;
    v7 = strchr(*v17, __c);
    if (v7)
    {
      *v7 = 0;
      v6 = *v17;
    }

    v8 = strlen(v6);
    v9 = heap_Calloc(*(*a1 + 8), 1, (v8 + 1));
    if (v9)
    {
      *a3 = strcpy(v9, *v17);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v10, v11, v12, v13, v15);
      return 2687508490;
    }
  }

  return v5;
}

uint64_t posparser_loc_getPostCorrRule(void *a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(__c) = 0;
  v22 = 0;
  v21 = -1;
  *a3 = 0;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v22, &v21, &__c);
  if ((v5 & 0x80000000) == 0 && v21)
  {
    v6 = *v22;
    v7 = strchr(*v22, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      v8 = 0;
      do
      {
        v9 = strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = strlen(v6);
        v12 = heap_Calloc(*(*a1 + 8), 1, (v11 + 1));
        if (!v12)
        {
          log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v13, v14, v15, v16, v20);
          return 2687508490;
        }

        v17 = v12;
        strcpy(v12, v6);
        if (v8 > 1u)
        {
          if (v8 == 2)
          {
            if (!strcmp(v17, "ENDWORD"))
            {
              v18 = 1;
LABEL_22:
              *a3 = v18;
            }

            else if (!strcmp(v17, "IFNOTFOLLOWEDBY"))
            {
              v18 = 2;
              goto LABEL_22;
            }

LABEL_23:
            heap_Free(*(*a1 + 8), v17);
            goto LABEL_24;
          }

          if (v8 != 3)
          {
            goto LABEL_23;
          }

          *(a3 + 40) = v17;
          *(a3 + 48) = strlen(v17);
        }

        else if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_23;
          }

          *(a3 + 24) = v17;
          *(a3 + 32) = strlen(v17);
        }

        else
        {
          *(a3 + 8) = v17;
          *(a3 + 16) = strlen(v17);
        }

LABEL_24:
        ++v8;
        v6 = v10 + 1;
      }

      while (v10);
    }
  }

  return v5;
}

uint64_t posparser_loc_getEmbeddedCharRule(void *a1, uint64_t a2, char *a3)
{
  LOBYTE(__c) = 0;
  v12 = 0;
  v11 = -1;
  v4 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v12, &v11, &__c);
  if ((v4 & 0x80000000) == 0 && v11)
  {
    v5 = *v12;
    v6 = strchr(*v12, __c);
    if (v6)
    {
      *v6 = 0;
    }

    if (v5)
    {
      for (i = 0; ; ++i)
      {
        v8 = strchr(v5, 95);
        if (v8)
        {
          *v8 = 0;
        }

        v9 = a3;
        if (!i)
        {
          goto LABEL_12;
        }

        if (i == 1)
        {
          break;
        }

LABEL_13:
        v5 = v8 + 1;
        if (!v8)
        {
          return v4;
        }
      }

      v9 = a3 + 1;
LABEL_12:
      *v9 = *v5;
      goto LABEL_13;
    }
  }

  return v4;
}

size_t posparser_GetHighestPriority(size_t result, _WORD *a2, int a3)
{
  v4 = *a2;
  if (v4 >= 2)
  {
    v7 = result;
    v8 = 0;
    v5 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 8 * v8);
      result = strlen(v10);
      if (result)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v10[v12] == a3)
          {
            ++v11;
          }

          ++v12;
        }

        while (v11 <= 4u && result > v12);
        if (v11 == 5 && result > v12)
        {
          v15 = strchr(&v10[v12], a3);
          if (v15)
          {
            *v15 = 0;
            v10 = *(v7 + 8 * v8);
            v4 = *a2;
          }

          result = atoi(&v10[v12]);
          if (result > v9)
          {
            v9 = result;
            v5 = v8;
          }
        }
      }

      ++v8;
    }

    while (v8 < v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t posparserGrowStr(uint64_t a1, uint64_t *a2, unsigned int a3, _WORD *a4, __int16 a5)
{
  if (*a4 >= a3)
  {
    return 0;
  }

  v15 = v5;
  *a4 = a5 + a3;
  v8 = heap_Realloc(*(*a1 + 8), *a2, (a5 + a3) + 2);
  if (v8)
  {
    v13 = v8;
    result = 0;
    *a2 = v13;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v9, v10, v11, v12, v15);
    return 2687508490;
  }

  return result;
}

__n128 posPInsertTOKMarker(uint64_t a1, _WORD *a2, __n128 *a3)
{
  v5 = *a2;
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v6 = (a1 + 44);
    v7 = 1;
    while (1)
    {
      v8 = *v6;
      v6 += 8;
      if (a3->n128_u32[3] < v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        LOWORD(v7) = *a2;
        break;
      }
    }

    v7 = v7;
  }

  v9 = (a1 + 32 * v7);
  memmove(&v9[2], v9, 32 * (v5 - v7));
  result = a3[1];
  *v9 = *a3;
  v9[1] = result;
  ++*a2;
  return result;
}

uint64_t isMAPPINGXBI2A(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 152) == 1)
  {
    return isCharInStr(a2, "XBI");
  }

  else
  {
    return 0;
  }
}

uint64_t isCharInStr(unsigned __int8 *a1, const char *a2)
{
  v4 = Utf8_LengthInBytes(a1, 1);
  v5 = strlen(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = Utf8_LengthInBytes(&a2[v7], 1);
    v9 = v8;
    if (v8 == v4 && !strncmp(a1, &a2[v7], v8))
    {
      break;
    }

    v7 += v9;
    if (v7 >= v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t isDiacritic(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 120))
  {
    v3 = *(a1 + 120);
  }

  else
  {
    v3 = "^FNKauioR";
  }

  return isCharInStr(a2, v3);
}

uint64_t isSMSPunc(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return isCharInStr(a2, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t isPunc_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return isCharInStr(a2, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t inSMSMode(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a2 + 12);
  do
  {
    v8 = a2 + 32 * v6;
    v9 = *(a2 + 12);
    v10 = (*(v8 + 12) - v9);
    if (a1 < (*(v8 + 12) - v9))
    {
      break;
    }

    if (*v8 == 21 && (v11 = *(v8 + 24)) != 0 && !LH_stricmp(v11, "sms"))
    {
      if (a3 <= (v6 + 1))
      {
        v12 = (v6 + 1);
      }

      else
      {
        v12 = a3;
      }

      while (a3 > ++v6)
      {
        if (*(a2 + 32 * v6) == 21)
        {
          v13 = v7[8 * v6] - *v7;
          goto LABEL_17;
        }
      }

      LOWORD(v13) = *(a2 + 16);
      v6 = v12;
LABEL_17:
      if (a1 >= (*(v8 + 12) - *v7) && v13 > a1)
      {
        return 1;
      }
    }

    else
    {
      ++v6;
    }
  }

  while (a3 > v6);
  return 0;
}

uint64_t posparserInsertWordMarker(uint64_t a1, uint64_t *a2, __int16 *a3, unsigned int a4, int a5, char *__s, _WORD *a7)
{
  v8 = __s;
  v12 = *a2;
  v13 = strlen(__s);
  v17 = *a3;
  if (v17 >= 2)
  {
    v18 = (v12 + 44);
    v19 = 1;
    while (1)
    {
      v20 = *v18;
      v18 += 8;
      if (v20 - *(v12 + 12) > a4)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v21 = *a3;
        v19 = (v17 - 2) + 2;
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v21 = v19;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v21 = 1;
  v19 = 1;
  if (!a4)
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v22 = a4;
  while (v8[v22 - 1] != 32)
  {
    if (!--v22)
    {
      v22 = 0;
      break;
    }
  }

  v23 = v22;
LABEL_15:
  if (v13 <= a4)
  {
    LOWORD(v8) = a4;
    v26 = a4;
  }

  else
  {
    v24 = v8 + 1;
    v25 = v8[a4 + 1];
    LOWORD(v8) = a4;
    v26 = a4;
    if (v25 != 32)
    {
      LOWORD(v8) = a4;
      do
      {
        v8 = (v8 + 1);
        v26 = v8;
      }

      while (v13 > v8 && v8[v24] != 32);
    }
  }

  v47 = v21;
  if (v17 < 2)
  {
LABEL_27:
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004). Word start pos=%d. Word end pos=%d. This pos=%d", v14, v15, v16, v23);
    v27 = v21 - 1;
  }

  else
  {
    v27 = 1;
    while (1)
    {
      v28 = (v12 + 32 * v27);
      if (*v28 == 1 && v28[3] - *(v12 + 12) == v23)
      {
        break;
      }

      if (v17 <= ++v27)
      {
        goto LABEL_27;
      }
    }
  }

  *a7 = v27 + 1;
  v29 = (v12 + 32 * v27);
  v30 = v29[1];
  v31 = v29[2];
  v32 = v26 - a4;
  if (a4 == v8)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  v29[2] = a4 - v23;
  v29[4] = a4 - v23;
  v34 = *(v12 + 12);
  v35 = heap_Realloc(*(*a1 + 8), v12, 32 * *a3 + 32);
  if (v35)
  {
    v40 = v35;
    v41 = v30 - v32 + v31;
    v42 = a5 + a4 + v34;
    v43 = *a3;
    v44 = (v35 + 32 * v19);
    if (v43 != v47)
    {
      memmove(v44 + 8, v44, 32 * (v43 - v19));
    }

    result = 0;
    *v44 = 1;
    v44[1] = v41;
    v44[2] = v33;
    v44[3] = v42;
    v44[4] = v32;
    *(v44 + 5) = 0;
    v44[7] = 0;
    ++*a3;
    *a2 = v40;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v36, v37, v38, v39, v46);
    return 2687508490;
  }

  return result;
}

uint64_t posparser_applyEmbeddedRules(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v6 = a2 + 104 * i;
      if (!*(v6 + 88) && !*(v6 + 80) && !*(v6 + 84) && !*(v6 + 92) && !*(v6 + 12))
      {
        v7 = *(v6 + 8);
        v8 = (v7 + 1);
        v9 = *(v6 + 10);
        v10 = v8 >= a5 || v8 == 0;
        if (!v10 && v9 - 1 > v8)
        {
          v12 = v7 + 1;
          v13 = *(a1 + 184);
          v14 = v13;
          do
          {
            if (v14)
            {
              v15 = 0;
              v16 = 0;
              v17 = *(a4 + v12);
              do
              {
                v18 = *(a1 + 176);
                if (v17 == *(v18 + v15))
                {
                  v17 = *(v18 + v15 + 1);
                  *(a4 + v12) = v17;
                  v13 = *(a1 + 184);
                }

                ++v16;
                v15 += 2;
              }

              while (v16 < v13);
              v9 = *(v6 + 10);
              v14 = v13;
            }

            ++v12;
          }

          while (v12 < a5 && v9 - 1 > v12);
        }
      }
    }
  }

  return 0;
}

uint64_t setPosparserFeatureVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v92 = *MEMORY[0x1E69E9840];
  v89 = 0;
  v15 = 0;
  if (posparser_isFeatureRequired(a3, 0, &v89, a8, *(a1 + 236)) == 1)
  {
    v15 = posparser_setFeature(a3, *a1, 0, a5, a2, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_127;
    }
  }

  if (posparser_isFeatureRequired(a3, 1, &v89, a8, *(a1 + 236)) == 1)
  {
    if (a4)
    {
      v16 = a6 + 104 * (a4 - 1);
      v17 = *(v16 + 40);
      if (!v17 || strcmp(*(v16 + 40), "MULTIWORD"))
      {
        v18 = *a1;
        v19 = *(a1 + 236);
        v20 = a3;
        v21 = a5;
        v22 = v17;
        goto LABEL_19;
      }

      v23 = a4 - 1;
      if ((a4 - 1) >= -1)
      {
        v23 = -1;
      }

      v86 = v23;
      v24 = a4;
      while (1)
      {
        v25 = v24 - 1;
        if (((v24 - 1) & 0x8000) != 0)
        {
          break;
        }

        --v24;
        v26 = *(a6 + 104 * v25 + 40);
        if (!v26 || strcmp(v26, "MULTIWORD"))
        {
          goto LABEL_17;
        }
      }

      v24 = v86;
LABEL_17:
      v18 = *a1;
      v22 = *(a6 + 104 * v24 + 40);
      v19 = *(a1 + 236);
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 236);
      v22 = "SB";
    }

    v20 = a3;
    v21 = a5;
LABEL_19:
    v15 = posparser_setFeature(v20, v18, 1, v21, v22, a8, v19);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_127;
    }
  }

  if (posparser_isFeatureRequired(a3, 2, &v89, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_35;
  }

  v27 = a4 - 2;
  if (a4 < 2)
  {
    if (a4 != 1)
    {
      goto LABEL_35;
    }

    v30 = *a1;
    v31 = *(a1 + 236);
    v34 = "SB";
  }

  else
  {
    v28 = a6 + 104 * v27;
    v29 = *(v28 + 40);
    if (!v29 || strcmp(*(v28 + 40), "MULTIWORD"))
    {
      v30 = *a1;
      v31 = *(a1 + 236);
      v32 = a3;
      v33 = a5;
      v34 = v29;
      goto LABEL_34;
    }

    v35 = a4 - 2;
    if ((v27 & 0x8000) == 0)
    {
      while (1)
      {
        v36 = *(a6 + 104 * v35 + 40);
        if (!v36 || strcmp(v36, "MULTIWORD"))
        {
          break;
        }

        v37 = v35--;
        if (v37 <= 0)
        {
          v35 = -1;
          break;
        }
      }
    }

    v30 = *a1;
    v34 = *(a6 + 104 * v35 + 40);
    v31 = *(a1 + 236);
  }

  v32 = a3;
  v33 = a5;
LABEL_34:
  v15 = posparser_setFeature(v32, v30, 2, v33, v34, a8, v31);
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_127;
  }

LABEL_35:
  if (posparser_isFeatureRequired(a3, 3, &v89, a8, *(a1 + 236)) == 1)
  {
    v38 = a6 + 104 * a4;
    v39 = *(v38 + 48);
    if (!v39)
    {
      v39 = *(v38 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 3, a5, v39, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_127;
    }
  }

  v87 = a4 + 1;
  if (a4 + 1 < a7 && posparser_isFeatureRequired(a3, 4, &v89, a8, *(a1 + 236)) == 1)
  {
    v40 = a6 + 104 * v87;
    v41 = *(v40 + 48);
    if (!v41)
    {
      v41 = *(v40 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 4, a5, v41, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_127;
    }
  }

  if (posparser_isFeatureRequired(a3, 9, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 10, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 11, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 12, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 13, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 14, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 15, &v89, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 16, &v89, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_102;
  }

  v42 = strlen(a2);
  v43 = Utf8_LengthInUtf8chars(a2, v42);
  v44 = posparser_setFeature(a3, *a1, 9, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0 || (v44 = posparser_setFeature(a3, *a1, 10, a5, "=", a8, *(a1 + 236)), (v44 & 0x80000000) != 0) || (v44 = posparser_setFeature(a3, *a1, 11, a5, "=", a8, *(a1 + 236)), (v44 & 0x80000000) != 0) || (v44 = posparser_setFeature(a3, *a1, 12, a5, "=", a8, *(a1 + 236)), (v44 & 0x80000000) != 0) || (v44 = posparser_setFeature(a3, *a1, 13, a5, "=", a8, *(a1 + 236)), (v44 & 0x80000000) != 0) || (v44 = posparser_setFeature(a3, *a1, 14, a5, "=", a8, *(a1 + 236)), (v44 & 0x80000000) != 0) || (v44 = posparser_setFeature(a3, *a1, 15, a5, "=", a8, *(a1 + 236)), (v44 & 0x80000000) != 0))
  {
LABEL_126:
    v15 = v44;
    goto LABEL_127;
  }

  v15 = posparser_setFeature(a3, *a1, 16, a5, "=", a8, *(a1 + 236));
  if ((v15 & 0x80000000) == 0)
  {
    v45 = v43;
    if (v43)
    {
      v46 = v43 - 2;
      v78 = v43 != 2;
      v79 = v43 != 3;
      v81 = v43 != 4;
      v80 = v43;
      v47 = 0;
      v48 = 0;
      v83 = v45;
      while (1)
      {
        v84 = v47;
        v85 = v46;
        v82 = v48;
        if (v45 != 1 && !v48)
        {
          v90 = 0;
          v91 = 0;
          utf8_getUTF8Char(a2, 0, &v90);
          v49 = posparser_setFeature(a3, *a1, 9, a5, &v90, a8, *(a1 + 236));
          v46 = v85;
          v15 = v49;
          v50 = v81;
          v51 = v78;
          v52 = v79;
          if ((v49 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }

          goto LABEL_80;
        }

        if (v45 != 2 && v48 == 1)
        {
          break;
        }

        if (v45 != 3 && v48 == 2)
        {
          v90 = 0;
          v91 = 0;
          utf8_determineUTF8CharLength(a2[v47]);
          __strncpy_chk();
          v15 = posparser_setFeature(a3, *a1, 11, a5, &v90, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }

          v51 = 1;
          v50 = v81;
          goto LABEL_78;
        }

        if (v45 != 4)
        {
          v50 = v81;
          v51 = v78;
          v52 = v79;
          if (v48 != 3)
          {
            goto LABEL_80;
          }

          v90 = 0;
          v91 = 0;
          utf8_determineUTF8CharLength(a2[v84]);
          __strncpy_chk();
          v15 = posparser_setFeature(a3, *a1, 12, a5, &v90, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }

          v50 = 1;
          v51 = 1;
LABEL_78:
          v52 = 1;
LABEL_79:
          v46 = v85;
          goto LABEL_80;
        }

        v50 = v81;
        v51 = v78;
        v52 = v79;
LABEL_80:
        if (v83 != 1 && v46 == -1)
        {
          v90 = 0;
          v91 = 0;
          v53 = v50;
          utf8_getUTF8Char(a2, v84, &v90);
          v54 = posparser_setFeature(a3, *a1, 13, a5, &v90, a8, *(a1 + 236));
          v50 = v53;
          v46 = v85;
          v15 = v54;
          if ((v54 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }
        }

        v55 = v51 ^ 1;
        if (v46)
        {
          v55 = 1;
        }

        if (v55)
        {
          v58 = v52 ^ 1;
          if (v46 != 1)
          {
            v58 = 1;
          }

          v56 = v84;
          if (v58)
          {
            if (v46 == 2)
            {
              v59 = v50;
            }

            else
            {
              v59 = 0;
            }

            v57 = v84;
            v45 = v83;
            if (v59)
            {
              v90 = 0;
              v91 = 0;
              __strcpy_chk();
              v15 = posparser_setFeature(a3, *a1, 16, a5, &v90, a8, *(a1 + 236));
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_127;
              }

              v56 = v84;
              v57 = v84;
            }
          }

          else
          {
            v90 = 0;
            v91 = 0;
            __strcpy_chk();
            v15 = posparser_setFeature(a3, *a1, 15, a5, &v90, a8, *(a1 + 236));
            v45 = v83;
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_127;
            }

            v57 = v84;
          }
        }

        else
        {
          v90 = 0;
          v91 = 0;
          v56 = v84;
          __strcpy_chk();
          v15 = posparser_setFeature(a3, *a1, 14, a5, &v90, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }

          v57 = v84;
          v45 = v83;
        }

        v47 = utf8_determineUTF8CharLength(a2[v57]) + v56;
        v48 = v82 + 1;
        v46 = v85 - 1;
        if (v82 + 1 >= v80)
        {
          goto LABEL_102;
        }
      }

      v90 = 0;
      v91 = 0;
      utf8_determineUTF8CharLength(a2[v47]);
      __strncpy_chk();
      v15 = posparser_setFeature(a3, *a1, 10, a5, &v90, a8, *(a1 + 236));
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_127;
      }

      v51 = 1;
      v50 = v81;
      v52 = v79;
      goto LABEL_79;
    }

LABEL_102:
    if (posparser_isFeatureRequired(a3, 5, &v89, a8, *(a1 + 236)) != 1 || (a4 && (v60 = a6 + 104 * (a4 - 1), *(v60 + 12) != 1) && !*(v60 + 74) ? (v61 = *a1, v63 = *(a6 + 104 * (a4 - 1) + 56), v62 = *(a1 + 236)) : (v61 = *a1, v62 = *(a1 + 236), v63 = "="), v15 = posparser_setFeature(a3, v61, 5, a5, v63, a8, v62), (v15 & 0x80000000) == 0))
    {
      if (posparser_isFeatureRequired(a3, 6, &v89, a8, *(a1 + 236)) != 1 || (a4 >= 2 && (v64 = a6 + 104 * (a4 - 2), *(v64 + 12) != 1) && !*(v64 + 74) ? (v65 = *a1, v67 = *(a6 + 104 * (a4 - 2) + 56), v66 = *(a1 + 236)) : (v65 = *a1, v66 = *(a1 + 236), v67 = "="), v15 = posparser_setFeature(a3, v65, 6, a5, v67, a8, v66), (v15 & 0x80000000) == 0))
      {
        if (posparser_isFeatureRequired(a3, 7, &v89, a8, *(a1 + 236)) != 1 || (v87 < a7 && (v68 = a6 + 104 * v87, *(v68 + 12) != 1) && !*(v68 + 74) ? (v69 = *a1, v71 = *(a6 + 104 * v87 + 56), v70 = *(a1 + 236)) : (v69 = *a1, v70 = *(a1 + 236), v71 = "="), v15 = posparser_setFeature(a3, v69, 7, a5, v71, a8, v70), (v15 & 0x80000000) == 0))
        {
          if (posparser_isFeatureRequired(a3, 8, &v89, a8, *(a1 + 236)) == 1)
          {
            if (a4 + 2 >= a7 || (v72 = a6 + 104 * (a4 + 2), *(v72 + 12) == 1) || *(v72 + 74))
            {
              v73 = *a1;
              v74 = *(a1 + 236);
              v75 = "=";
            }

            else
            {
              v73 = *a1;
              v75 = *(a6 + 104 * (a4 + 2) + 56);
              v74 = *(a1 + 236);
            }

            v44 = posparser_setFeature(a3, v73, 8, a5, v75, a8, v74);
            goto LABEL_126;
          }
        }
      }
    }
  }

LABEL_127:
  v76 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t posparser_GetPOSAndDiacritics(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10, _DWORD *a11)
{
  v78 = 0;
  v77 = 0;
  v76 = 0;
  __s2 = 0;
  v75 = 0;
  v73 = 0;
  *a11 = 0;
  v67 = a6;
  v14 = a4 + 104 * a6;
  *(v14 + 32) = 0;
  if (a9)
  {
    v15 = 0;
    for (i = 0; i != a9; ++i)
    {
      for (j = *(a8 + 8 * i); ; j = v18 + 1)
      {
        v18 = strchr(j, 32);
        if (!v18)
        {
          break;
        }

        *(v14 + 32) = ++v15;
      }
    }

    v19 = 16 * v15;
  }

  else
  {
    v19 = 0;
  }

  v20 = heap_Calloc(*(*a1 + 8), 1, v19);
  *(v14 + 24) = v20;
  if (!v20)
  {
LABEL_59:
    v60 = 2687508490;
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v21, v22, v23, v24, v62);
    return v60;
  }

  *(v14 + 32) = 0;
  if (!a9)
  {
    v60 = 0;
LABEL_61:
    heap_Free(*(*a1 + 8), *(v14 + 24));
    *(v14 + 24) = 0;
    goto LABEL_62;
  }

  v25 = 0;
  isReconcilable = 0;
  v26 = 0;
  do
  {
    v27 = *(a8 + 8 * v25);
    v28 = strchr(v27, a10);
    if (v28)
    {
      *v28 = 0;
      v27 = *(a8 + 8 * v25);
    }

    v70 = v25;
    if (v27)
    {
      v32 = strchr(v27, 32);
      do
      {
        if (v32)
        {
          *v32 = 0;
        }

        if (v26)
        {
          if (*(a1 + 248))
          {
            if (!v76 && (v76 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0 || !__s2 && (__s2 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0)
            {
              v60 = 2687508490;
              log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v35, v36, v37, v38, v62);
              goto LABEL_62;
            }

            isReconcilable = posparser_ExtractPunctuation(a1, a5, &v76, &v75, &__s2, &v73);
            if ((isReconcilable & 0x80000000) != 0)
            {
              goto LABEL_58;
            }

            v39 = strlen(v27);
            v40 = heap_Calloc(*(*a1 + 8), 1, (v75 + v39 + v73 + 1));
            *(*(v14 + 24) + 16 * *(v14 + 32) + 8) = v40;
            if (!v40)
            {
              goto LABEL_59;
            }

            if (v76)
            {
              strcpy(v40, v76);
              v40 = *(*(v14 + 24) + 16 * *(v14 + 32) + 8);
            }

            strcat(v40, v27);
            if (__s2)
            {
              strcat(*(*(v14 + 24) + 16 * *(v14 + 32) + 8), __s2);
            }

            v44 = (*(v14 + 24) + 16 * *(v14 + 32));
            v63 = *v44;
            v65 = v44[1];
            log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "word=%s FOUND in TAG[%d] POS=%s DIA=%s", v41, v42, v43, a5);
            goto LABEL_44;
          }

          v77 = 0;
          if (a2 != 1)
          {
            goto LABEL_41;
          }

          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND %s in dict as %s - try reconcile", v29, v30, v31, a5);
          isReconcilable = posparser_isReconcilable(a1, a3, v27, *(v14 + 8), *(v14 + 104 * a7 + 10), &v77, &v78);
          if ((isReconcilable & 0x80000000) != 0)
          {
            goto LABEL_58;
          }

          if (v77)
          {
            if (v77 == 1 && v78)
            {
              posparser_PostProcess(a1, &v78);
              v48 = v78;
              v49 = strlen(v78);
              v50 = heap_Calloc(*(*a1 + 8), 1, (v49 + 1));
              *(*(v14 + 24) + 16 * *(v14 + 32) + 8) = v50;
              if (!v50)
              {
                goto LABEL_59;
              }

              strcpy(v50, v48);
              heap_Free(*(*a1 + 8), v48);
              v78 = 0;
              v54 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s(RECONCILED)";
            }

            else
            {
LABEL_41:
              v55 = strlen(v27);
              v56 = heap_Calloc(*(*a1 + 8), 1, (v55 + 1));
              *(*(v14 + 24) + 16 * *(v14 + 32) + 8) = v56;
              if (!v56)
              {
                goto LABEL_59;
              }

              strcpy(v56, v27);
              v54 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s";
            }

            v57 = (*(v14 + 24) + 16 * *(v14 + 32));
            v64 = *v57;
            v66 = v57[1];
            log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, v54, v51, v52, v53, a5);
LABEL_44:
            ++*(v14 + 32);
            if (!v32)
            {
              goto LABEL_54;
            }

            goto LABEL_45;
          }

          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL ; skip diacritic", v45, v46, v47, v27);
          heap_Free(*(*a1 + 8), *(*(v14 + 24) + 16 * *(v14 + 32)));
          *(*(v14 + 24) + 16 * *(v14 + 32)) = 0;
          if (!v32)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v33 = strlen(v27);
          v34 = heap_Calloc(*(*a1 + 8), 1, (v33 + 1));
          *(*(v14 + 24) + 16 * *(v14 + 32)) = v34;
          if (!v34)
          {
            goto LABEL_59;
          }

          strcpy(v34, v27);
          if (!v32)
          {
LABEL_54:
            ++v26;
            break;
          }
        }

LABEL_45:
        v58 = strchr(v32 + 1, 32);
        if (v26)
        {
          v59 = 0;
        }

        else
        {
          v59 = v32 + 1;
        }

        if (v58)
        {
          v27 = v32 + 1;
        }

        else
        {
          v27 = v59;
        }

        ++v26;
        v32 = v58;
      }

      while (v27);
    }

    ++v25;
  }

  while (v70 + 1 != a9);
  if (!*(v14 + 32))
  {
    v60 = isReconcilable;
    goto LABEL_61;
  }

  *(v14 + 72) = a7 + v67;
  log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND WORD %s%d,%d in  POS dict with %d POS tags", v29, v30, v31, a5);
  *a11 = 1;
LABEL_58:
  v60 = isReconcilable;
LABEL_62:
  if (v76)
  {
    heap_Free(*(*a1 + 8), v76);
  }

  if (__s2)
  {
    heap_Free(*(*a1 + 8), __s2);
  }

  return v60;
}

uint64_t posparser_isReconcilable(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, _DWORD *a6, uint64_t *a7)
{
  LODWORD(v9) = a5;
  v13 = strlen(__s);
  v107 = 3 * v13;
  *a6 = 1;
  v14 = heap_Calloc(*(*a1 + 8), 1, (3 * v13) + 1);
  v108 = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v15, v16, v17, v18, v89);
    return 2687508490;
  }

  v19 = v14;
  strcpy(v14, __s);
  v106 = v13;
  if (a4 >= v9 || !v13)
  {
    goto LABEL_129;
  }

  v20 = 0;
  v21 = 0;
  v22 = a4;
  v9 = v9;
  v102 = a6;
  v103 = v9;
  while (1)
  {
    if (v20 >= v13)
    {
      goto LABEL_21;
    }

    v23 = v108;
    while (1)
    {
      v24 = *(a1 + 120) ? *(a1 + 120) : "^FNKauioR";
      if (!isCharInStr((v23 + v20), v24))
      {
        break;
      }

      v25 = Utf8_LengthInBytes((v23 + v20), 1);
LABEL_17:
      v20 += v25;
      if (v20 >= v13)
      {
        goto LABEL_20;
      }
    }

    v26 = Utf8_LengthInBytes((a2 + v22), 1);
    if (Utf8_LengthInBytes((v23 + v20), 1) == v26 && !strncmp((a2 + v22), (v23 + v20), v26))
    {
      goto LABEL_30;
    }

    if (*(a1 + 152) != 1 || *(a2 + v22) != 65)
    {
      v25 = Utf8_LengthInBytes((v23 + v20), 1);
      if ((v25 & 0xFFFE) != 0)
      {
        goto LABEL_17;
      }

      *a6 = 0;
LABEL_20:
      v9 = v103;
      goto LABEL_21;
    }

    v27 = *(a1 + 208);
    if (v27 <= v21)
    {
LABEL_30:
      v27 = v21;
LABEL_31:
      v9 = v103;
      goto LABEL_32;
    }

    v28 = *(a1 + 200);
    v29 = v21;
    v30 = (v28 + 6 * v21);
    while (1)
    {
      v31 = *v30;
      v30 += 3;
      v32 = v22 == v31;
      if (v22 < v31)
      {
        goto LABEL_109;
      }

      if (v32)
      {
        break;
      }

      ++v29;
      LOWORD(v21) = v21 + 1;
      if (v27 == v29)
      {
        goto LABEL_31;
      }
    }

    v96 = a7;
    v105 = v20;
    if (v27 <= v29)
    {
      v99 = 0;
      v39 = v29;
    }

    else
    {
      v39 = v27;
      v40 = v29;
      v41 = v21;
      v42 = 0;
      v43 = (v28 + 6 * v41 + 2);
      while (v22 == *(v43 - 1))
      {
        v42 += strlen(v43);
        ++v40;
        v43 += 6;
        if (v40 >= v39)
        {
          v99 = v42;
          goto LABEL_80;
        }
      }

      v99 = v42;
      v39 = v40;
LABEL_80:
      a6 = v102;
    }

    v98 = v39;
    utf8_GetPreviousValidUtf8Offset(v23 + v20, &v105);
    v66 = v105 >= v20 ? v20 : v105;
    if (v66)
    {
      v67 = 1;
      a7 = v96;
      while (1)
      {
        v68 = *(a1 + 120) ? *(a1 + 120) : "^FNKauioR";
        if (!isCharInStr((v23 + v66), v68))
        {
          break;
        }

        v67 += Utf8_LengthInBytes((v23 + v66), 1);
        v105 = v66;
        a6 = v102;
        utf8_GetPreviousValidUtf8Offset(v23 + v66, &v105);
        if (v105 < v66)
        {
          v66 = v105;
        }

        if (!v66)
        {
          v69 = 0;
          goto LABEL_96;
        }
      }

      v69 = v66;
    }

    else
    {
      v69 = 0;
      v67 = 1;
      a7 = v96;
    }

LABEL_96:
    if (v99 > v67)
    {
      break;
    }

    if (v99 != v67)
    {
LABEL_109:
      v27 = v29;
      goto LABEL_31;
    }

    if (v99)
    {
      v70 = 0;
      v71 = *(a1 + 200);
      do
      {
        if (*(v71 + 6 * v70 + 2))
        {
          v72 = 0;
          v73 = 0;
          do
          {
            *(v23 + v69++) = *(v71 + 6 * v29 + 6 * v70 + v72 + 2);
            v72 = ++v73;
            v71 = *(a1 + 200);
          }

          while (strlen((v71 + 6 * v70 + 2)) > v73);
        }

        ++v70;
      }

      while (v70 != v99);
      a7 = v96;
      a6 = v102;
    }

    v9 = v103;
LABEL_108:
    v27 = v98;
LABEL_32:
    if (*a6 == 1)
    {
      v33 = *(a1 + 208);
      if (v33 > v27)
      {
        v34 = (v22 + 1);
        v35 = *(a1 + 200);
        v21 = v27;
        v36 = (v35 + 6 * v27);
        while (1)
        {
          v37 = *v36;
          v36 += 3;
          v38 = v37 == v34;
          if (v37 > v34)
          {
            goto LABEL_21;
          }

          if (v38)
          {
            break;
          }

          ++v21;
          LOWORD(v27) = v27 + 1;
          if (v33 == v21)
          {
            v21 = *(a1 + 208);
            goto LABEL_21;
          }
        }

        if (*(a1 + 120))
        {
          v44 = *(a1 + 120);
        }

        else
        {
          v44 = "^FNKauioR";
        }

        if (!isCharInStr((v35 + 6 * v21 + 2), v44))
        {
          goto LABEL_21;
        }

        if (*(a1 + 208) <= v21)
        {
          v45 = 0;
          v48 = v21;
        }

        else
        {
          v45 = 0;
          v46 = *(a1 + 200);
          v47 = v27;
          v48 = v21;
          v49 = 6 * v47;
          do
          {
            if (v22 + 1 != *(v46 + v49))
            {
              break;
            }

            v50 = *(a1 + 120) ? *(a1 + 120) : "^FNKauioR";
            if (!isCharInStr((v46 + v49 + 2), v50))
            {
              break;
            }

            v46 = *(a1 + 200);
            v45 += strlen((v46 + v49 + 2));
            ++v48;
            v49 += 6;
          }

          while (v48 < *(a1 + 208));
        }

        v100 = v48;
        v51 = v20 + 1;
        v90 = v106;
        v52 = 0;
        if (v106 > (v20 + 1))
        {
          v53 = (v20 + 1);
          v54 = &v108[v53];
          v55 = v106 - v53;
          do
          {
            if (*(a1 + 120))
            {
              v56 = *(a1 + 120);
            }

            else
            {
              v56 = "^FNKauioR";
            }

            if (!isCharInStr(v54, v56))
            {
              break;
            }

            v52 += Utf8_LengthInBytes(v54++, 1);
            --v55;
          }

          while (v55);
        }

        if (v52 < v45)
        {
          v57 = v21;
          v21 = v100;
          result = posparser_GrowAndInsert(a1, &v108, v45, v52, (v20 + 1), v57, v100, &v106, &v107);
          v9 = v103;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v20 = v45 + v20 - v52;
          goto LABEL_119;
        }

        v9 = v103;
        v59 = v100;
        if (v52 != v45)
        {
          if (v52 <= v45)
          {
            goto LABEL_119;
          }

          v74 = 0;
          v75 = 0;
          v76 = v52 - v45;
          v94 = *(a1 + 208);
          v92 = v108;
          while (v74 + v21 < v94)
          {
            v101 = (v74 + v51);
            v91 = v74;
            v77 = *(a1 + 200) + 6 * (v74 + v21);
            v78 = strlen((v77 + 2));
            v79 = v78;
            if (strncmp((v92 + v101), (v77 + 2), v78))
            {
              v9 = v103;
              v74 = v91;
              break;
            }

            v75 += v79;
            v74 = v75;
            v9 = v103;
            if (v75 >= v76)
            {
              break;
            }
          }

          if (v76 == v75)
          {
            goto LABEL_119;
          }

          v97 = a7;
          v80 = v76 - v75;
          v81 = (v76 - v75);
          v82 = v108;
          v93 = v80;
          memmove(&v108[v74 + v51], &v108[v74 + v51 + v80], v90 - v80);
          if (v81 > v75)
          {
            do
            {
              v83 = v21 + v75;
              if (v83 >= *(a1 + 208))
              {
                break;
              }

              v95 = v75;
              v84 = *(a1 + 200);
              if (*(v84 + 6 * v83 + 2))
              {
                v85 = 0;
                v86 = 0;
                do
                {
                  *(v82 + (v51 + v95) + v86) = *(v84 + 6 * v83 + v85 + 2);
                  v87 = v86 + 1;
                  v85 = (v86 + 1);
                  v84 = *(a1 + 200);
                  v88 = strlen((v84 + 6 * v83 + 2));
                  v86 = v87;
                }

                while (v88 > v87);
              }

              v75 = v95 + 1;
            }

            while ((v95 + 1) < v93);
          }

          v106 = v90 - v93;
          *(v82 + (v90 - v93)) = 0;
          a7 = v97;
          a6 = v102;
          v9 = v103;
          goto LABEL_21;
        }

        if (v100 <= v21)
        {
          v21 = v100;
LABEL_119:
          a6 = v102;
          goto LABEL_21;
        }

        v60 = v108;
        v61 = v21;
        do
        {
          if (*(a1 + 208) < v59)
          {
            break;
          }

          v62 = a7;
          v63 = *(a1 + 200);
          if (*(v63 + 6 * v61 + 2))
          {
            v64 = 0;
            v65 = 0;
            do
            {
              *(v60 + v51++) = *(v63 + 6 * v61 + v64 + 2);
              v64 = ++v65;
              v63 = *(a1 + 200);
            }

            while (strlen((v63 + 6 * v61 + 2)) > v65);
          }

          ++v61;
          v59 = v100;
          a7 = v62;
        }

        while (v61 < v100);
        v21 = v59;
        a6 = v102;
        goto LABEL_20;
      }
    }

    v21 = v27;
LABEL_21:
    if (++v22 < v9)
    {
      ++v20;
      v13 = v106;
      if (v106 > v20)
      {
        continue;
      }
    }

    v19 = v108;
LABEL_129:
    if (!*a6)
    {
      heap_Free(*(*a1 + 8), v19);
      v19 = 0;
    }

    result = 0;
    *a7 = v19;
    return result;
  }

  result = posparser_GrowAndInsert(a1, &v108, v99, v67, v20, v29, v98, &v106, &v107);
  v9 = v103;
  if ((result & 0x80000000) == 0)
  {
    v20 = v99 + v20 - v67;
    goto LABEL_108;
  }

  return result;
}

uint64_t posparser_PostProcess(uint64_t a1, const char **a2)
{
  v3 = a1;
  if (!*(a1 + 168))
  {
    if (LH_stricmp("arx", (a1 + 186)))
    {
      return 0;
    }

    v26 = *a2;
    v27 = strlen(*a2);
    if (!v27)
    {
LABEL_78:
      result = 0;
      *a2 = v26;
      return result;
    }

    v28 = v27;
    v29 = -2;
    v30 = 1;
    v31 = v27;
    while (1)
    {
      v32 = v28;
      if (v30 < v28)
      {
        v33 = &v26[v30 - 1];
        v34 = *v33;
        if (v34 > 0x68)
        {
          if (v34 == 111)
          {
            if (v26[v30] == 111)
            {
              goto LABEL_44;
            }
          }

          else if (v34 == 105 && v26[v30] == 105)
          {
LABEL_44:
            v35 = v29 + v32;
            v36 = &v26[v30];
LABEL_71:
            memmove(v33, v36, v35 + 1);
            goto LABEL_72;
          }
        }

        else if (v34 == 94)
        {
          if (v26[v30] == 94)
          {
            goto LABEL_44;
          }
        }

        else if (v34 == 97 && v26[v30] == 97)
        {
          goto LABEL_44;
        }
      }

      if (v30 + 2 == v32)
      {
        v36 = &v26[v30];
        v33 = &v26[v30 - 1];
        if (*v33 == 70 && *v36 == 65 && v26[v30 + 1] == 70)
        {
          goto LABEL_70;
        }
      }

      if (v30 < v32)
      {
        v37 = &v26[v30];
        if (v26[v30 - 1] == 73 && *v37 == 97)
        {
          if (v30 + 1 < v32 && v26[v30 + 1] == 112)
          {
            goto LABEL_74;
          }

          memmove(&v26[v30 - 1], v37, v29 + v32 + 1);
          v26[v30 - 1] = 73;
LABEL_72:
          --v31;
LABEL_73:
          v26[v31] = 0;
          goto LABEL_74;
        }
      }

      if (v30 + 1 < v32)
      {
        v33 = &v26[v30 - 1];
        v38 = *v33;
        if (v38 == 82)
        {
          if (v26[v30] != 82 || v26[v30 + 1] != 82)
          {
            goto LABEL_74;
          }

          memmove(v33, &v26[v30 + 1], v29 + v32);
          v31 -= 2;
          goto LABEL_73;
        }

        if (v38 == 97)
        {
          v36 = &v26[v30];
          v39 = v26[v30];
          if (v39 != 65)
          {
            if (v39 != 97 || v26[v30 + 1] != 73)
            {
              goto LABEL_74;
            }

LABEL_70:
            v35 = v29 + v32;
            goto LABEL_71;
          }

          v40 = v36[1];
          if (v40 == 97)
          {
            *v36 = 66;
            goto LABEL_74;
          }

          if (v40 == 70)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_74:
      v28 = v31;
      v41 = v30++ >= v31;
      --v29;
      if (v41)
      {
        goto LABEL_78;
      }
    }
  }

  v4 = *a2;
  v5 = strlen(*a2);
  if (!v5)
  {
LABEL_30:
    result = 0;
    *a2 = v4;
    return result;
  }

  v6 = 0;
  v43 = v5 + 1;
  v45 = v3;
  while (!*(v3 + 84))
  {
LABEL_21:
    if (++v6 >= v5)
    {
      goto LABEL_30;
    }
  }

  v7 = 0;
  v8 = v5;
  v46 = v5;
  v9 = v4;
  v10 = &v4[v6];
  v11 = v3[20];
  v12 = 56 * *(v3 + 84);
  while (1)
  {
    v13 = *(v11 + v7 + 16);
    v14 = v13 + v6;
    if (v14 > v8 || strncmp(v10, *(v11 + v7 + 8), *(v11 + v7 + 16)))
    {
      goto LABEL_8;
    }

    v15 = *(v11 + v7);
    if (v15 != 1)
    {
      break;
    }

    if (v14 == v8)
    {
      goto LABEL_18;
    }

LABEL_8:
    v7 += 56;
    if (v12 == v7)
    {
      v3 = v45;
      v4 = v9;
      v5 = v46;
      goto LABEL_21;
    }
  }

  if (v15 != 2)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v16 = *(v11 + v7 + 48);
  if (v14 + v16 > v8 || !strncmp((v9 + v14), *(v11 + v7 + 40), v16))
  {
    goto LABEL_8;
  }

LABEL_18:
  v17 = *(v11 + v7 + 32);
  if (v13 >= v17)
  {
    v3 = v45;
    v4 = v9;
LABEL_24:
    v23 = v13 - v17;
    if (v13 >= v17)
    {
      if (v13 > v17)
      {
        memmove(&v4[v6], &v4[v6 + v23], (v8 - (v6 + v23)));
        memcpy(&v4[v6], *(v3[20] + v7 + 24), *(v3[20] + v7 + 32));
        v5 = (v46 - v23);
      }

      else
      {
        memcpy(&v4[v6], *(v11 + v7 + 24), v17);
        v5 = v46;
      }
    }

    else
    {
      v24 = v17 - v13;
      memmove(&v4[v6 + (v17 - v13)], &v4[v6], (v8 - v6));
      memcpy(&v4[v6], *(v3[20] + v7 + 24), *(v3[20] + v7 + 32));
      v5 = (v24 + v46);
      v6 += *(v3[20] + v7 + 32);
    }

    v4[v5] = 0;
    goto LABEL_21;
  }

  v3 = v45;
  v18 = heap_Realloc(*(*v45 + 8), v9, v43 - v13 + v17);
  if (v18)
  {
    v4 = v18;
    v11 = v45[20];
    LODWORD(v13) = *(v11 + v7 + 16);
    LODWORD(v17) = *(v11 + v7 + 32);
    goto LABEL_24;
  }

  log_OutPublic(*(*v45 + 32), "POSPARSER", 68000, 0, v19, v20, v21, v22, v42);
  return 2687508490;
}

uint64_t posparser_Open(uint64_t a1, uint64_t *a2)
{
  v2 = 2687508487;
  if (a2)
  {
    v5 = heap_Calloc(*(a1 + 8), 264, 1);
    *a2 = v5;
    if (v5)
    {
      v2 = 0;
      *v5 = a1;
      *(*a2 + 80) = 0;
      v10 = *a2;
      *(v10 + 97) = 1;
      *(v10 + 98) = 1024;
      *(v10 + 88) = 0;
      v11 = *a2;
      *(v11 + 64) = 0;
      *(v11 + 68) = 1;
      *(v11 + 72) = 1;
      *(v11 + 112) = 0;
      *(*a2 + 104) = 0;
      *(*a2 + 120) = 0;
      *(*a2 + 128) = 0;
      *(*a2 + 136) = 0;
      *(*a2 + 144) = 0;
      v12 = *a2;
      *(v12 + 188) = 120;
      *(v12 + 186) = 29281;
      *(*a2 + 189) = 0;
      v13 = *a2;
      *(v13 + 152) = 0x100000001;
      *(v13 + 160) = 0;
      v14 = *a2;
      *(v14 + 168) = 0;
      *(v14 + 192) = 1;
      *(v14 + 200) = 0;
      v15 = *a2;
      *(v15 + 208) = 0;
      *(v15 + 176) = 0;
      v16 = *a2;
      *(v16 + 184) = 0;
      *(v16 + 232) = 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0, v6, v7, v8, v9, v18);
      return 2687508490;
    }
  }

  return v2;
}

void *posparser_Close(void *result)
{
  if (result)
  {
    return heap_Free(*(*result + 8), result);
  }

  return result;
}

uint64_t posparser_ExtractWords(_DWORD *a1, uint64_t a2, unsigned int a3, const char *a4, unsigned int a5, uint64_t *a6, unsigned __int16 *a7)
{
  v7 = a7;
  *a7 = 0;
  v14 = heap_Calloc(*(*a1 + 8), 1, 104 * a3 + 104);
  if (v14)
  {
    v19 = v14;
    v93 = a6;
    v20 = a3;
    v104 = a3;
    v96 = a3;
    if (a5)
    {
      v21 = a3;
      v22 = 0;
      if (v21 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = v21;
      }

      v95 = v20 - 1;
      v94 = v23 - 1;
      v105 = v7;
      do
      {
        if (a4[v22] == 32)
        {
          ++v22;
        }

        if (v22 >= a5)
        {
          v7 = v105;
        }

        else
        {
          if (v21 < 2)
          {
            v29 = 0;
            v102 = 0;
            v99 = 9999;
            v101 = 9999;
          }

          else
          {
            v24 = 2;
            v25 = 9998;
            v26 = (a2 + 44);
            v27 = 1;
            while (1)
            {
              if (*(v26 - 3) == 34)
              {
                v28 = *v26;
                if (*v26 - *(a2 + 12) == v22)
                {
                  break;
                }
              }

              ++v27;
              v26 += 8;
              --v25;
              ++v24;
              if (v20 == v27)
              {
                v102 = 0;
                v97 = 1;
                v99 = 9999;
                v101 = 9999;
                goto LABEL_26;
              }
            }

            while (*(v26 - 3) != 21 || v28 >= *v26)
            {
              --v25;
              v56 = v21 == v24++;
              v26 += 8;
              if (v56)
              {
                v27 = v27;
LABEL_21:
                v97 = 0;
                v102 = 1;
                v99 = v27;
                v101 = v27;
                goto LABEL_26;
              }
            }

            v27 = v27;
            if (!v25)
            {
              goto LABEL_21;
            }

            v97 = 0;
            v99 = (v24 - 1);
            v101 = v27;
            v102 = 1;
LABEL_26:
            v29 = 0;
            v31 = (a2 + 56);
            v30 = v95;
            do
            {
              if (*(v31 - 6) == 36 && *(v31 - 3) - *(a2 + 12) <= v22)
              {
                v32 = *v31;
                v29 = !strstr(*v31, "arw") && !strstr(v32, "arg") && !strstr(v32, "fai") && !strstr(v32, "hei") && strcmp(v32, "normal") != 0;
              }

              v31 += 4;
              --v30;
            }

            while (v30);
            v33 = v94;
            v34 = (a2 + 44);
            v21 = v96;
            do
            {
              if (*(v34 - 3) == 1 && *v34 - *(a2 + 12) == v22)
              {
                v7 = v105;
                v36 = *v105;
                v47 = *(v34 - 2);
                v35 = *(v34 - 1);
                *(v19 + 104 * v36) = v47;
                v20 = v104;
                goto LABEL_43;
              }

              v34 += 8;
              --v33;
            }

            while (v33);
            v20 = v104;
            if (!v97)
            {
              goto LABEL_42;
            }
          }

          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004), thispos=%d", v16, v17, v18, v22);
LABEL_42:
          v35 = 0;
          v7 = v105;
          v36 = *v105;
          *(v19 + 104 * v36) = 0;
LABEL_43:
          v37 = v19 + 104 * v36;
          *(v37 + 4) = v35;
          *(v37 + 8) = v22;
          *(v19 + 104 * *v7 + 74) = 0;
          *(v19 + 104 * *v7 + 76) = 0;
          *(v19 + 104 * *v7 + 72) = 9999;
          v38 = *v7;
          *(v19 + 104 * *v7 + 88) = v29;
          if (v102)
          {
            *(v19 + 104 * v38 + 74) = v101;
            *(v19 + 104 * *v7 + 76) = v99;
            v39 = (v19 + 104 * *v7);
            if (v39[37] == v39[38])
            {
              v39[5] = *(a2 + 16);
              v22 = a5;
            }

            else
            {
              v42 = *(a2 + 12);
              v43 = (*(a2 + 32 * v99 + 12) - v42);
              v39[5] = *(a2 + 32 * v99 + 12) - v42;
              v22 = *(v19 + 104 * *v7 + 10);
            }
          }

          else
          {
            while (1)
            {
              v40 = a4[v22];
              if ((v40 | 0x20) == 0x20)
              {
                break;
              }

              if (a5 < ++v22)
              {
                v40 = a4[v22];
                break;
              }
            }

            if (v40)
            {
              v41 = v22;
            }

            else
            {
              v41 = v22 + 1;
            }

            *(v19 + 104 * v38 + 10) = v41;
            v22 = v41 + 1;
          }

          if (*(v19 + 104 * *v7 + 8) != *(v19 + 104 * *v7 + 10))
          {
            v44 = *v7 + 1;
            *v7 = v44;
            if (v21 < v44)
            {
              v45 = heap_Realloc(*(*a1 + 8), v19, 104 * v44 + 104);
              if (!v45)
              {
                heap_Free(*(*a1 + 8), v19);
                goto LABEL_146;
              }

              v46 = v45 + 104 * *v7;
              *(v46 + 96) = 0;
              *(v46 + 64) = 0u;
              *(v46 + 80) = 0u;
              *(v46 + 32) = 0u;
              *(v46 + 48) = 0u;
              *v46 = 0u;
              *(v46 + 16) = 0u;
              v19 = v45;
            }
          }
        }
      }

      while (a5 > v22);
    }

    *v93 = v19;
    v48 = strlen(a4);
    v106 = *v7;
    if (*v7)
    {
      v49 = v48;
      v50 = 0;
      v98 = 0;
      v103 = v48;
      v100 = v48;
      while (1)
      {
        v51 = v19 + 104 * v50;
        *(v51 + 80) = 1;
        if (v103 >= *(v51 + 10))
        {
          v52 = *(v51 + 10);
        }

        else
        {
          v52 = v49;
        }

        v53 = *(v51 + 8);
        if (v53 >= v52)
        {
          *(v51 + 84) = 0;
          v20 = v104;
        }

        else
        {
          v54 = 0;
          v55 = 1;
          do
          {
            if (v55 != 1)
            {
              break;
            }

            if ((a4[v53 + v54] - 48) >= 0xA && ((a4[v53 + v54] | 2) == 0x2E ? (v56 = v54 == 0) : (v56 = 1), v56))
            {
              v55 = 0;
              *(v51 + 80) = 0;
            }

            else
            {
              v55 = 1;
            }

            ++v54;
          }

          while (v52 - v53 != v54);
          v57 = 0;
          *(v51 + 84) = 0;
          do
          {
            if (v57)
            {
              break;
            }

            if (isPuncClass(a1, &a4[v53]))
            {
              v58 = a1[39];
              if (v58 == 1 || !v58 && v53 == *(v51 + 8))
              {
                *(v51 + 84) = 1;
              }
            }

            ++v53;
            v57 = *(v51 + 84);
          }

          while (v52 != v53);
          if (v57 != 1)
          {
            v20 = v104;
LABEL_96:
            v49 = v100;
            goto LABEL_97;
          }

          v20 = v104;
          if (a1[62] != 1 || v52 - *(v51 + 8) < 2 || !isPuncClass(a1, &a4[v52 - 1]))
          {
            goto LABEL_96;
          }

          *(v51 + 84) = 0;
          v49 = v100;
          if (v52 - *(v51 + 8) <= 127)
          {
            v59 = heap_Calloc(*(*a1 + 8), 1, 128);
            *(v51 + 96) = v59;
            if (!v59)
            {
              goto LABEL_146;
            }

            strncpy(v59, &a4[*(v51 + 8)], v52 - *(v51 + 8));
            v49 = v100;
            *(*(v51 + 96) + v52 - *(v51 + 8)) = 0;
            v98 = (*(*(a1 + 3) + 144))(*(a1 + 1), *(a1 + 2), "normal", *(v51 + 96), 128);
            if ((v98 & 0x80000000) != 0)
            {
              return v98;
            }
          }
        }

LABEL_97:
        if (++v50 == v106)
        {
          goto LABEL_100;
        }
      }
    }

    v98 = 0;
LABEL_100:
    if (v96)
    {
      v60 = 0;
      v61 = (a2 + 32);
      v62 = (v96 - 1) + 1;
      do
      {
        v63 = (a2 + 32 * v60);
        v64 = *v63;
        if (*v63 == 21)
        {
          v73 = *(v63 + 3);
          if (v73)
          {
            if (!LH_stricmp(v73, "spell"))
            {
              LOWORD(v83) = strlen(a4);
              v84 = v62;
              v85 = v61;
              while (--v84)
              {
                v86 = v85 + 8;
                v87 = *v85;
                v85 += 8;
                if (v87 == 21)
                {
                  v83 = *(v86 - 5) - *(a2 + 12);
                  break;
                }
              }

              if (v106)
              {
                v88 = v63[3] - *(a2 + 12);
                v89 = (v19 + 92);
                v90 = v106;
                do
                {
                  if (v88 <= *(v89 - 42) && *(v89 - 41) <= v83)
                  {
                    *v89 = 1;
                  }

                  v89 += 26;
                  --v90;
                }

                while (v90);
              }

              goto LABEL_143;
            }

            v64 = *v63;
LABEL_119:
            if (v64 == 36)
            {
              v74 = *(v63 + 3);
              if (v74)
              {
                if (!LH_stricmp(v74, "latin"))
                {
                  LOWORD(v75) = strlen(a4);
                  v76 = v62;
                  v77 = v61;
                  while (--v76)
                  {
                    v78 = v77 + 8;
                    v79 = *v77;
                    v77 += 8;
                    if (v79 == 36)
                    {
                      v75 = *(v78 - 5) - *(a2 + 12);
                      break;
                    }
                  }

                  if (v106)
                  {
                    v80 = v63[3] - *(a2 + 12);
                    v81 = (v19 + 88);
                    v82 = v106;
                    do
                    {
                      if (v80 <= *(v81 - 40) && *(v81 - 39) <= v75)
                      {
                        *v81 = 1;
                      }

                      v81 += 26;
                      --v82;
                    }

                    while (v82);
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v64 != 7)
          {
            goto LABEL_119;
          }

          if (v63[6] == 60)
          {
            LOWORD(v65) = strlen(a4);
            v66 = v62;
            v67 = v61;
            while (--v66)
            {
              v68 = v67 + 8;
              v69 = *v67;
              v67 += 8;
              if (v69 == 7)
              {
                v65 = *(v68 - 5) - *(a2 + 12);
                break;
              }
            }

            if (v106)
            {
              v70 = v63[3] - *(a2 + 12);
              v71 = (v19 + 12);
              v72 = v106;
              do
              {
                if (v70 <= *(v71 - 2) && *(v71 - 1) <= v65)
                {
                  *v71 = 1;
                }

                v71 += 26;
                --v72;
              }

              while (v72);
            }
          }
        }

LABEL_143:
        ++v60;
        v61 += 8;
        --v62;
      }

      while (v60 != v20);
    }
  }

  else
  {
LABEL_146:
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v15, v16, v17, v18, v92);
    return -1607458806;
  }

  return v98;
}

void *posparser_FreeWords(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (a3)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = a2 + 104 * v5;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = *(v7 + 24);
        do
        {
          if (v11)
          {
            heap_Free(*(*v4 + 8), *(v11 + v9));
            v12 = (*(v7 + 24) + v9);
            *v12 = 0;
            heap_Free(*(*v4 + 8), v12[1]);
            v11 = *(v7 + 24);
            *(v11 + v9 + 8) = 0;
            v8 = *(v7 + 32);
          }

          ++v10;
          v9 += 16;
        }

        while (v10 < v8);
        *(v7 + 32) = 0;
      }

      v13 = *(v7 + 24);
      if (v13)
      {
        heap_Free(*(*v4 + 8), v13);
        *(v7 + 24) = 0;
      }

      v14 = *(v7 + 16);
      if (v14)
      {
        heap_Free(*(*v4 + 8), v14);
        *(v7 + 16) = 0;
      }

      v15 = *(v7 + 64);
      if (v15)
      {
        heap_Free(*(*v4 + 8), v15);
        *(v7 + 64) = 0;
      }

      v16 = *(v7 + 96);
      if (v16)
      {
        heap_Free(*(*v4 + 8), v16);
        *(v7 + 96) = 0;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  else if (!a2)
  {
    return result;
  }

  v17 = *(*v4 + 8);

  return heap_Free(v17, a2);
}

uint64_t posparser_ProcessStart(char *a1)
{
  v93 = *MEMORY[0x1E69E9840];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  __src = 0;
  DictCharString = paramc_ParamGet(*(*a1 + 40), "langcode", &__src, 0);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  strncpy(a1 + 186, __src, 3uLL);
  a1[186] = ssft_tolower(a1[186]);
  a1[187] = ssft_tolower(a1[187]);
  *(a1 + 94) = 120;
  a1[97] = 1;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermwspan", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    v5 = atoi(v3);
    v6 = v5 ? v5 : 1;
    a1[97] = v6;
  }

  else
  {
    v6 = a1[97];
  }

  *(a1 + 49) = v6 << 10;
  a1[96] = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumdicts", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (*&__c[1] && *&__c[3])
  {
    v10 = **&__c[3];
    v11 = strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
      v10 = **&__c[3];
    }

    v12 = atoi(v10);
    a1[96] = v12;
    v13 = heap_Calloc(*(*a1 + 8), 1, (8 * v12) | 1u);
    *(a1 + 11) = v13;
    v18 = *a1;
    if (!v13)
    {
      EmbeddedCharRule = 2687508490;
LABEL_136:
      log_OutPublic(*(v18 + 32), "POSPARSER", 68000, 0, v14, v15, v16, v17, v86);
      goto LABEL_126;
    }

    v19 = heap_Calloc(*(v18 + 8), 1, a1[96] + 1);
    *(a1 + 10) = v19;
    if (!v19)
    {
      goto LABEL_135;
    }

    if (a1[96])
    {
      v20 = 0;
      do
      {
        *(*(a1 + 10) + v20) = 0;
        *(*(a1 + 11) + 8 * v20++) = 0;
      }

      while (v20 < a1[96]);
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserdicname", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
      goto LABEL_98;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v25 = **&__c[3];
      v26 = strchr(**&__c[3], __c[0]);
      if (v26)
      {
        *v26 = 0;
      }

      if (v25)
      {
        v31 = 0;
        while (1)
        {
          v32 = strchr(v25, 43);
          v33 = v32;
          if (v32)
          {
            *v32 = 0;
          }

          v34 = strlen(v25);
          *(*(a1 + 11) + 8 * v31) = heap_Calloc(*(*a1 + 8), 1, (v34 + 1));
          v35 = *(*(a1 + 11) + 8 * v31);
          if (!v35)
          {
            goto LABEL_135;
          }

          strcpy(v35, v25);
          v87 = *(*(a1 + 11) + 8 * v31);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using dict[%d] %s", v36, v37, v38, v31++);
          v25 = v33 + 1;
          if (!v33)
          {
            v39 = v31;
            goto LABEL_85;
          }
        }
      }

      v39 = 0;
LABEL_85:
      if (v39 != a1[96])
      {
        v70 = *(*a1 + 32);
        v71 = "numDicts read in=";
LABEL_104:
        log_OutPublic(v70, "POSPARSER", 68003, "%s%d%s%d", v27, v28, v29, v30, v71);
        goto LABEL_99;
      }
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserngramlevel", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
LABEL_98:
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68002, "%s%s", v21, v22, v23, v24, "missing keyword:");
LABEL_99:
      EmbeddedCharRule = 2687508480;
      goto LABEL_126;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v61 = **&__c[3];
      v62 = strchr(**&__c[3], __c[0]);
      if (v62)
      {
        *v62 = 0;
      }

      if (v61)
      {
        v63 = 0;
        do
        {
          v64 = strchr(v61, 43);
          v65 = v64;
          if (v64)
          {
            *v64 = 0;
          }

          *(*(a1 + 10) + v63) = atoi(v61);
          v88 = *(*(a1 + 10) + v63);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using ngram levels[%d] %d", v66, v67, v68, v63++);
          v61 = v65 + 1;
        }

        while (v65);
        v69 = v63;
      }

      else
      {
        v69 = 0;
      }

      if (v69 != a1[96])
      {
        v70 = *(*a1 + 32);
        v71 = "ngramLevels read=";
        goto LABEL_104;
      }
    }
  }

  else
  {
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    a1[96] = 0;
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "WARNING - No ngram dicts, continuing anyway", v7, v8, v9, v86);
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "araparsermode", &__src);
  if ((Str & 0x80000000) == 0 && (Str & 0x1FFF) != 0x14)
  {
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Araparser mode : %s", v41, v42, v43, __src);
    *(a1 + 16) = 0;
    if (!LH_stricmp("dict_plus_ngrams", __src))
    {
      v44 = 0;
      goto LABEL_45;
    }

    if (!LH_stricmp("dict_only", __src))
    {
      v44 = 1;
      goto LABEL_45;
    }

    if (!LH_stricmp("ngrams_only", __src))
    {
      v44 = 2;
LABEL_45:
      *(a1 + 16) = v44;
    }
  }

  paramc_ParamRelease(*(*a1 + 40));
  __src = 0;
  DictCharString = posparser_loc_getDictCharString(a1, "araparserspacedout", a1 + 14);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparsersmspunc", a1 + 13);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass1", a1 + 16);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass2", a1 + 17);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass3", a1 + 18);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  *(a1 + 62) = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "arwpospredictiononly", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (*&__c[1])
  {
    v46 = **&__c[3];
    v47 = strchr(**&__c[3], __c[0]);
    if (v47)
    {
      *v47 = 0;
      v46 = **&__c[3];
    }

    if (*v46 == 49 && !v46[1])
    {
      *(a1 + 62) = 1;
      *(a1 + 35) = 1;
      goto LABEL_106;
    }
  }

  v48 = *(a1 + 62);
  *(a1 + 35) = 1;
  if (v48 == 1)
  {
LABEL_106:
    *&__c[1] = -1;
    EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumposdicparts", &__c[3], &__c[1], __c);
    if ((EmbeddedCharRule & 0x80000000) == 0 && *&__c[1])
    {
      v72 = **&__c[3];
      v73 = strchr(**&__c[3], __c[0]);
      if (v73)
      {
        *v73 = 0;
        v72 = **&__c[3];
      }

      *(a1 + 35) = atoi(v72);
      if (a1[97])
      {
        a1[97] = 0;
      }

      *(a1 + 49) = 2048;
    }

    goto LABEL_126;
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumparts", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    goto LABEL_126;
  }

  v49 = **&__c[3];
  v50 = strchr(**&__c[3], __c[0]);
  if (v50)
  {
    *v50 = 0;
    v49 = **&__c[3];
  }

  a1[68] = atoi(v49);
  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    goto LABEL_126;
  }

  v51 = **&__c[3];
  v52 = strchr(**&__c[3], __c[0]);
  if (v52)
  {
    *v52 = 0;
    v51 = **&__c[3];
  }

  a1[72] = atoi(v51);
  DictCharString = posparser_loc_getDictCharString(a1, "araparserdiacriticlist", a1 + 15);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermapXBI2A", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (*&__c[1])
  {
    v53 = **&__c[3];
    v54 = strchr(**&__c[3], __c[0]);
    if (v54)
    {
      *v54 = 0;
      v53 = **&__c[3];
    }

    if (!atoi(v53))
    {
      *(a1 + 38) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparseroldPuncClass", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (*&__c[1])
  {
    v55 = **&__c[3];
    v56 = strchr(**&__c[3], __c[0]);
    if (v56)
    {
      *v56 = 0;
      v55 = **&__c[3];
    }

    if (!atoi(v55))
    {
      *(a1 + 39) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumpostcorrrules", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
LABEL_125:
    EmbeddedCharRule = DictCharString;
    goto LABEL_126;
  }

  if (*&__c[1])
  {
    v57 = **&__c[3];
    v58 = strchr(**&__c[3], __c[0]);
    if (v58)
    {
      *v58 = 0;
      v57 = **&__c[3];
    }

    v59 = atoi(v57);
    v60 = v59;
    *(a1 + 84) = v59;
  }

  else
  {
    v60 = *(a1 + 84);
  }

  if (v60)
  {
    v74 = heap_Calloc(*(*a1 + 8), 1, (56 * v60) | 1);
    *(a1 + 20) = v74;
    if (!v74)
    {
      goto LABEL_135;
    }

    if (*(a1 + 84))
    {
      v75 = 0;
      v76 = 0;
      do
      {
        *&v92[24] = 0;
        *&v92[18] = 0;
        strcpy(v92, "araparserpostcorr");
        LH_itoa(v76, v89, 0xAu);
        __strcat_chk();
        DictCharString = posparser_loc_getPostCorrRule(a1, v92, *(a1 + 20) + v75);
        if ((DictCharString & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        ++v76;
        v75 += 56;
      }

      while (v76 < *(a1 + 84));
    }
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumecharrewrite", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v77 = **&__c[3];
      v78 = strchr(**&__c[3], __c[0]);
      if (v78)
      {
        *v78 = 0;
        v77 = **&__c[3];
      }

      v79 = atoi(v77);
      v80 = v79;
      *(a1 + 92) = v79;
    }

    else
    {
      v80 = *(a1 + 92);
    }

    if (v80)
    {
      v83 = heap_Calloc(*(*a1 + 8), 1, (2 * v80) | 1);
      *(a1 + 22) = v83;
      if (v83)
      {
        if (*(a1 + 92))
        {
          v84 = 0;
          v85 = 0;
          do
          {
            *&v92[30] = 0;
            *&v92[22] = 0;
            strcpy(v92, "araparserecharrewrite");
            LH_itoa(v85, v89, 0xAu);
            __strcat_chk();
            EmbeddedCharRule = posparser_loc_getEmbeddedCharRule(a1, v92, (*(a1 + 22) + v84));
            if ((EmbeddedCharRule & 0x80000000) != 0)
            {
              break;
            }

            ++v85;
            v84 += 2;
          }

          while (v85 < *(a1 + 92));
        }

        goto LABEL_126;
      }

LABEL_135:
      EmbeddedCharRule = 2687508490;
      v18 = *a1;
      goto LABEL_136;
    }
  }

LABEL_126:
  v81 = *MEMORY[0x1E69E9840];
  return EmbeddedCharRule;
}

uint64_t posparser_Process(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, const char **a8, uint64_t *a9, _WORD *a10)
{
  v10 = a8;
  v12 = a1;
  v13 = a10;
  v735 = *MEMORY[0x1E69E9840];
  v14 = *a9;
  v15 = *a10;
  v16 = *a8;
  __dst = heap_Calloc(*(*a1 + 8), 1, a1[49] + 1);
  if (!__dst)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v17, v18, v19, v20, v620);
    *a10 = v15;
    *v10 = v16;
    *a9 = v14;
    goto LABEL_851;
  }

  v720 = *(v12 + 49);
  v712 = v12;
  v696 = v14;
  v698 = v15;
  v707 = v16;
  if (a6 == 1)
  {
    *__s = 0;
    LOWORD(v723) = -1;
    LOBYTE(__c[0]) = 0;
    *__s2 = 0;
    *__src = 0;
    v21 = a5;
    v22 = a4;
  }

  else
  {
    v21 = a5;
    v22 = a4;
    if (*(v12 + 16) > 1u)
    {
      goto LABEL_270;
    }

    *__s = 0;
    LOWORD(v723) = -1;
    LOBYTE(__c[0]) = 0;
    if (!a6)
    {
      strcpy(__s1, "tn");
      v23 = *(v12 + 72);
      goto LABEL_8;
    }
  }

  strcpy(__s1, "isolatedword");
  v23 = 1;
LABEL_8:
  v692 = v23;
  v24 = __dst;
  if (!v21)
  {
    goto LABEL_86;
  }

  v679 = v10;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  POSAndDiacritics = 0;
  v28.i64[0] = 0x100000001;
  v28.i64[1] = 0x100000001;
  do
  {
    LODWORD(v727) = 0;
    v29 = *(v12 + 97);
    v30 = v27;
    v31 = v22 + 104 * v27;
    v708 = v27;
    v703 = v27;
    while (1)
    {
      v32 = v25 + v29;
      if (v32 >= v21)
      {
LABEL_29:
        v33 = 0;
LABEL_30:
        v48 = -1;
        goto LABEL_31;
      }

      if (v32 >= v30)
      {
        v34 = 0;
        v35 = 0uLL;
        v36 = v27;
        do
        {
          v37 = (v22 + 104 * v36);
          if (v37[4].i16[5])
          {
            v34 = 1;
          }

          v38 = vceqq_s32(v37[5], v28);
          v35 = vsubq_s32(vbicq_s8(v35, v38), v38);
          ++v36;
        }

        while (v32 >= v36);
        v39 = vmovn_s32(vtstq_s32(v35, v35));
        v39.i16[0] = vmaxv_u16(v39);
        v33 = (v34 == 0) & (v39.i32[0] ^ 1);
      }

      else
      {
        v33 = 1;
      }

      if (!*(v12 + 62))
      {
        if (*(v12 + 104))
        {
          v26 = 0;
          v51 = 0;
          do
          {
            if (v26)
            {
              break;
            }

            v52 = *(v12[25] + 3 * v51);
            if (v52 > *(v22 + 104 * v32 + 10))
            {
              break;
            }

            v53 = *(v31 + 8);
            v26 = v52 >= v53;
            if (v52 < v53)
            {
              ++v51;
            }
          }

          while (*(v12 + 104) > v51);
        }

        else
        {
          v26 = 0;
        }
      }

      if (!v33)
      {
        goto LABEL_30;
      }

      v40 = v22 + 104 * v32;
      v42 = *(v40 + 10);
      v41 = (v40 + 10);
      v43 = *(v31 + 8);
      v44 = v42 - v43;
      if (v44 >= *(v12 + 49))
      {
        goto LABEL_29;
      }

      strncpy(v24, &v16[v43], v44);
      v24[*v41 - *(v31 + 8)] = 0;
      if (*(v12 + 92))
      {
        posparser_undoEmbeddedRules(v12, v24);
      }

      if (*(v12 + 58) == 1)
      {
        v45 = *(v12 + 35);
        if (v45 == 1)
        {
          LOWORD(v723) = -1;
          if (*(v12 + 62) == 1 && (v46 = *(v31 + 96)) != 0)
          {
            v47 = (v12[3][12])(v12[1], v12[2], v12 + 30, v46, __s, &v723, __c);
          }

          else
          {
            v47 = (v12[3][12])(v12[1], v12[2], v12 + 30, v24, __s, &v723, __c);
          }
        }

        else
        {
          LOWORD(v723) = 0;
          if (*(v12 + 62) == 1 && (v64 = *(v31 + 96)) != 0)
          {
            v47 = (v12[3][19])(v12[1], v12[2], v12 + 30, v64, __s, &v723, __c, v45);
          }

          else
          {
            v47 = (v12[3][19])(v12[1], v12[2], v12 + 30, v24, __s, &v723, __c, v45);
          }
        }

        v28.i64[0] = 0x100000001;
        v28.i64[1] = 0x100000001;
        if ((v47 & 0x80000000) != 0)
        {
          POSAndDiacritics = v47;
LABEL_84:
          *a10 = v15;
          *v679 = v16;
          *a9 = v696;
          goto LABEL_850;
        }

        v33 = v723;
        if (!v723)
        {
          POSAndDiacritics = v47;
          v48 = -1;
          v21 = a5;
          v22 = a4;
          v27 = v708;
          goto LABEL_65;
        }

        POSAndDiacritics = posparser_GetPOSAndDiacritics(v12, v26, v16, a4, v24, v708, v29, *__s, v723, __c[0], &v727);
        if ((POSAndDiacritics & 0x80000000) != 0)
        {
          goto LABEL_84;
        }

        v33 = v727;
        if (v727)
        {
          v48 = 0;
        }

        else
        {
          v48 = -1;
        }

        goto LABEL_63;
      }

      LOWORD(v723) = 0;
      POSAndDiacritics = (v12[3][19])(v12[1], v12[2], __s1, v24, __s, &v723, __c, v692);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        goto LABEL_84;
      }

      v33 = v723;
      if (!v723)
      {
        v48 = -1;
LABEL_63:
        v21 = a5;
        v22 = a4;
        goto LABEL_64;
      }

      posparser_GetHighestPriority(*__s, &v723, LOBYTE(__c[0]));
      v54 = *__s;
      v55 = v723;
      v56 = strchr(*(*__s + 8 * v723), LOBYTE(__c[0]));
      if (v56)
      {
        *v56 = 0;
        v54 = *__s;
        v55 = v723;
      }

      *__s2 = 0;
      *__src = 0;
      if (!v26)
      {
        goto LABEL_78;
      }

      v60 = *(v54 + 8 * v55);
      v12 = v712;
      log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "FOUND %s in dict as %s - try reconcile", v57, v58, v59, __dst);
      v16 = v707;
      POSAndDiacritics = posparser_isReconcilable(v712, v707, *(*__s + 8 * v723), *(v31 + 8), *v41, __s2, __src);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        v24 = __dst;
        goto LABEL_84;
      }

      if (*__s2)
      {
        break;
      }

      log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL", v61, v62, v63, *(*__s + 8 * v723));
      v33 = 0;
      v26 = 1;
      v48 = -1;
      v21 = a5;
      v22 = a4;
      v24 = __dst;
LABEL_64:
      v27 = v708;
      v28.i64[0] = 0x100000001;
      v28.i64[1] = 0x100000001;
LABEL_65:
      v30 = v703;
LABEL_31:
      v49 = v48 + v29;
      v29 = (v48 + v29);
      v50 = v29 >= 0;
      if (v49 < 0 || v33)
      {
        v65 = v33 == 1;
        goto LABEL_68;
      }
    }

    if (*__s2 == 1 && *__src)
    {
      posparser_PostProcess(v712, __src);
      v68 = *__src;
      v69 = strlen(*__src);
      v70 = heap_Calloc(*(*v712 + 8), 1, (v69 + 1));
      *(v31 + 16) = v70;
      v24 = __dst;
      if (v70)
      {
        strcpy(v70, v68);
        heap_Free(*(*v712 + 8), v68);
        *__src = 0;
        v26 = 1;
        goto LABEL_80;
      }

LABEL_181:
      POSAndDiacritics = -1607458806;
      log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v71, v72, v73, v74, v620);
      goto LABEL_84;
    }

    v54 = *__s;
    v55 = v723;
LABEL_78:
    v78 = *(v54 + 8 * v55);
    v12 = v712;
    v79 = strlen(v78);
    v80 = heap_Calloc(*(*v712 + 8), 1, (v79 + 1));
    *(v31 + 16) = v80;
    v16 = v707;
    v24 = __dst;
    if (!v80)
    {
      goto LABEL_181;
    }

    strcpy(v80, *(*__s + 8 * v723));
LABEL_80:
    *(v31 + 72) = v32;
    v627 = *(v31 + 16);
    log_OutText((*v12)[4], "POSPARSER", 5, 0, "FOUND in dict pWordDefs[%d]=%s", v75, v76, v77, v25);
    v65 = 1;
    LODWORD(v727) = 1;
    v50 = (v29 & 0x8000u) == 0;
    v21 = a5;
    v22 = a4;
    v27 = v708;
    v28.i64[0] = 0x100000001;
    v28.i64[1] = 0x100000001;
LABEL_68:
    if (v50 && v65)
    {
      v66 = v29;
    }

    else
    {
      v66 = 0;
    }

    v67 = v27 + v66;
    v27 = v67 + 1;
    v25 = (v67 + 1);
  }

  while (v25 < v21);
  v10 = v679;
  v13 = a10;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    v110 = a9;
    v14 = v696;
    goto LABEL_849;
  }

LABEL_86:
  v14 = v696;
  if (*(v12 + 58) != 1)
  {
    goto LABEL_270;
  }

  v81 = v21;
  v24 = __dst;
  v82 = posparser_doPatternMatching(v16, __dst, v12, v22, v21, v18, v19, v20);
  if ((v82 & 0x80000000) != 0)
  {
    POSAndDiacritics = v82;
    goto LABEL_848;
  }

  __s1[0] = 0;
  *__s = 0;
  *__src = 0;
  log_OutText((*v12)[4], "POSPARSER", 5, 0, "posparser_doPOSDisambiguation()", v83, v84, v85, 0);
  v89 = a4;
  if (v81)
  {
    v90 = 0;
    v91 = 0;
    LOWORD(v92) = 0;
    do
    {
      v93 = v89 + 104 * v90;
      v94 = *(v93 + 32);
      if (v94 <= v92)
      {
        v92 = v92;
      }

      else
      {
        v92 = *(v93 + 32);
      }

      if (*(v93 + 32))
      {
        v95 = *(v93 + 24);
        do
        {
          v96 = *v95;
          v95 += 2;
          v97 = strlen(v96);
          if (v97 > v91)
          {
            v91 = v97;
          }

          --v94;
        }

        while (v94);
      }

      ++v90;
      v89 = a4;
    }

    while (v90 != v81);
    v98 = (v91 + 1);
    if (v92)
    {
      v99 = heap_Calloc((*v12)[1], 1, (v91 + 1) * v92);
      v89 = a4;
      v104 = v99;
      if (!v99)
      {
        v105 = 0;
        v106 = 0;
        v107 = 17;
        v108 = 17;
        v13 = a10;
        v14 = v696;
        goto LABEL_102;
      }
    }

    else
    {
      v104 = 0;
    }

    v111 = 0;
    while (1)
    {
      v112 = v89 + 104 * v111;
      v113 = heap_Calloc((*v12)[1], 1, *(v112 + 10) - *(v112 + 8) + 1);
      *(v112 + 56) = v113;
      if (!v113)
      {
        break;
      }

      strncpy(v113, (v707 + *(v112 + 8)), *(v112 + 10) - *(v112 + 8));
      *(*(v112 + 56) - *(v112 + 8) + *(v112 + 10)) = 0;
      v115 = *(v112 + 32);
      if (*(v112 + 32))
      {
        v116 = 0;
        v117 = *(v112 + 24);
        v118 = *(v112 + 32);
        do
        {
          v119 = *v117;
          v117 += 2;
          v116 += strlen(v119) + 2;
          --v118;
        }

        while (v118);
        *(v112 + 48) = 0;
        if (v116)
        {
          v12 = v712;
          v120 = heap_Calloc(*(*v712 + 8), 1, (v115 + v116 + 1));
          *(v112 + 48) = v120;
          v15 = v698;
          if (!v120)
          {
            break;
          }

          if (v104)
          {
            if (*(v112 + 32))
            {
              v121 = 0;
              v122 = 0;
              v123 = v104;
              do
              {
                v124 = strcpy(v123, *(*(v112 + 24) + v121));
                ++v122;
                v125 = *(v112 + 32);
                v121 += 16;
                v123 = &v124[v98];
              }

              while (v122 < v125);
            }

            else
            {
              v125 = 0;
            }

            ssft_qsort(v104, v125, v98, string_cmp_1);
            strcpy(*(v112 + 48), v104);
            if (*(v112 + 32) >= 2u)
            {
              v126 = &v104[v98];
              v127 = 1;
              do
              {
                *(*(v112 + 48) + strlen(*(v112 + 48))) = 47;
                strcat(*(v112 + 48), v126);
                ++v127;
                v126 += v98;
              }

              while (v127 < *(v112 + 32));
            }
          }
        }
      }

      else
      {
        *(v112 + 48) = 0;
      }

      ++v111;
      v12 = v712;
      v15 = v698;
      v89 = a4;
      if (v111 == v81)
      {
        POSAndDiacritics = 0;
        v128 = 1;
        goto LABEL_126;
      }
    }

    POSAndDiacritics = -1607458806;
    log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v114, v86, v87, v88, v621);
    v128 = 0;
LABEL_126:
    v13 = a10;
    v14 = v696;
    if (v104)
    {
      heap_Free((*v12)[1], v104);
    }

    if (!v128)
    {
      v709 = 0;
      v106 = 0;
      v693 = 17;
      v108 = 17;
      goto LABEL_230;
    }
  }

  if (*(v12 + 59))
  {
    v107 = 17;
    v108 = 17;
  }

  else
  {
    v107 = *(v12[28] + 1296) - 1;
    v108 = *(v12[27] + 1296) - 1;
  }

  log_OutText((*v12)[4], "POSPARSER", 5, 0, "FEATUREVECTOR:NEWSENT", v86, v87, v88, v621);
  v106 = heap_Calloc((*v12)[1], 1, 8 * v107);
  v109 = *v12;
  v693 = v107;
  if (!v106)
  {
    v105 = 0;
    goto LABEL_178;
  }

  inited = posparser_initFeatureVector(v109, v106, v107);
  if ((inited & 0x80000000) != 0)
  {
    POSAndDiacritics = inited;
    v709 = 0;
    goto LABEL_230;
  }

  v105 = heap_Calloc((*v12)[1], 1, 8 * v108);
  v109 = *v12;
  if (!v105)
  {
LABEL_178:
    v709 = v105;
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(v109 + 32), "POSPARSER", 68000, 0, v100, v101, v102, v103, v621);
    goto LABEL_230;
  }

  POSAndDiacritics = posparser_initFeatureVector(v109, v105, v108);
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    v709 = v105;
    goto LABEL_230;
  }

  *__src = 128;
  v130 = heap_Calloc((*v12)[1], 1, 129);
  *__s = v130;
  if (!v130)
  {
LABEL_102:
    v693 = v107;
    v109 = *v12;
    goto LABEL_178;
  }

  v131 = v130;
  *v130 = 0;
  v704 = v108;
  v709 = v105;
  if (!a5)
  {
    v181 = v106;
    goto LABEL_231;
  }

  v132 = 0;
  v133 = a4;
  do
  {
    v134 = *(a4 + 104 * v132 + 72);
    if (v134 != 9999 && v134 != v132)
    {
      if (v134 > v132)
      {
        v135 = v132 + 1;
        do
        {
          *(a4 + 104 * v135++ + 40) = "MULTIWORD";
        }

        while (v134 >= v135);
      }

      v132 = v134;
    }

    ++v132;
  }

  while (a5 > v132);
  v690 = v106;
  v680 = v10;
  v136 = 0;
  while (2)
  {
    v137 = v133 + 104 * v136;
    v138 = *(v137 + 8);
    v139 = *(v137 + 10) - v138;
    if (v139 > *(v12 + 49))
    {
      LOWORD(v139) = *(v12 + 49);
    }

    strncpy(__dst, (v707 + v138), v139)[v139] = 0;
    if (!*(v137 + 32))
    {
      if (*(v137 + 80) == 1)
      {
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "DIGITCLASS  :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = &szPOSDIGITCLASS;
      }

      else if (*(v137 + 84) == 1)
      {
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "PUNCTCLASS  :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = "PUNCT";
      }

      else if (*(v137 + 12) == 1)
      {
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "DIACRITIZED :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = "DIACRITIZED";
      }

      else if (*(v137 + 88) == 1)
      {
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "LATIN       :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = "LATIN";
      }

      else if (*(v137 + 92) == 1)
      {
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "SPELLMODE   :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = "SPELLMODE";
      }

      else if (*(v137 + 74))
      {
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "PHONETIC    :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = "PHONETIC";
      }

      else
      {
        v152 = *(v137 + 40);
        if (v152 && !strcmp(v152, "MULTIWORD"))
        {
          log_OutText((*v12)[4], "POSPARSER", 5, 0, "MULTIWORD   :             : word[%2d] %10s", v140, v141, v142, v136);
          goto LABEL_173;
        }

        log_OutText((*v12)[4], "POSPARSER", 5, 0, "OOV         :             : word[%2d] %10s", v140, v141, v142, v136);
        v144 = "OOV";
      }

      *(v137 + 40) = v144;
LABEL_173:
      v148 = v12;
      goto LABEL_174;
    }

    if (*(v137 + 32) == 1)
    {
      v143 = *(v137 + 24);
      v650 = *v143;
      v662 = v143[1];
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "KNOWN       : UNAMBIGUOUS : word[%2d] %10s : POS=%s DIA=%s", v140, v141, v142, v136);
      goto LABEL_173;
    }

    log_OutText((*v12)[4], "POSPARSER", 5, 0, "KNOWN       : AMBIGUOUS   : word[%2d] %10s : ", v140, v141, v142, v136);
    v148 = v12;
    if (*(v137 + 32))
    {
      v149 = 0;
      v150 = 0;
      do
      {
        v151 = (*(v137 + 24) + v149);
        v628 = v151[1];
        log_OutText((*v148)[4], "POSPARSER", 5, 0, "                                                  POS=%s DIA=%s", v145, v146, v147, *v151);
        ++v150;
        v149 += 16;
      }

      while (v150 < *(v137 + 32));
    }

LABEL_174:
    ++v136;
    v12 = v148;
    v133 = a4;
    if (v136 != a5)
    {
      continue;
    }

    break;
  }

  v153 = 0;
  v154 = 0;
  v15 = v698;
  while (2)
  {
    v155 = v133 + 104 * v154;
    if (*(v155 + 72) == 9999)
    {
      v156 = v154;
    }

    else
    {
      v156 = *(v155 + 72);
    }

    v157 = *(v155 + 8);
    v158 = *(v133 + 104 * v156 + 10) - v157;
    if (v158 > *(v12 + 49))
    {
      LOWORD(v158) = *(v12 + 49);
    }

    strncpy(__dst, (v707 + v157), v158)[v158] = 0;
    log_OutText((*v12)[4], "POSPARSER", 5, 0, "Doing word[%2d] %10s", v159, v160, v161, v153);
    if (*(v155 + 32))
    {
      if (*(v155 + 32) == 1)
      {
        if (*(v12 + 59) == 1)
        {
          v651 = **(v155 + 24);
          log_OutText((*v12)[4], "POSPARSER", 5, 0, "%d FEATUREVECTOR:UNAMBIGUOUS:0:%s %s", v86, v87, v88, v153);
        }

        v162 = 0;
        goto LABEL_212;
      }

      v163 = setPosparserFeatureVector(v12, __dst, v12[28], v154, v690, a4, a5, v107);
      if ((v163 & 0x80000000) != 0)
      {
        goto LABEL_227;
      }

      v164 = *(v12 + 59);
      if (v164)
      {
        v165 = "DUMMY";
        __s1[0] = "DUMMY";
      }

      else
      {
        v163 = igtree_Process(v12[28], v690, __s1);
        if ((v163 & 0x80000000) != 0)
        {
LABEL_227:
          POSAndDiacritics = v163;
LABEL_228:
          v10 = v680;
          v13 = a10;
          goto LABEL_229;
        }

        v165 = __s1[0];
        v164 = *(v12 + 59);
      }

      POSAndDiacritics = posparser_DumpFeatureVectorAndResult(*v12, "KNOWN", v690, v165, __s, __src, v107, v164, v154, __dst);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        goto LABEL_228;
      }

      v162 = *(v155 + 32);
      if (*(v155 + 32))
      {
        v166 = 0;
        v167 = 0;
        v168 = __s1[0];
        v169 = *(v155 + 24);
        do
        {
          v170 = *v169;
          v169 += 2;
          if (!strcmp(v168, v170))
          {
            v167 = v166;
          }

          ++v166;
        }

        while (v162 != v166);
        v162 = v167;
        v10 = v680;
        v12 = v712;
        v15 = v698;
      }

      else
      {
LABEL_212:
        v10 = v680;
      }

      v171 = strlen(*(*(v155 + 24) + 16 * v162 + 8));
      v172 = heap_Calloc((*v12)[1], 1, (v171 + 1));
      *(v155 + 16) = v172;
      if (!v172)
      {
        goto LABEL_226;
      }

      strcpy(v172, *(*(v155 + 24) + 16 * v162 + 8));
      *(v155 + 40) = *(*(v155 + 24) + 16 * v162);
LABEL_215:
      v133 = a4;
      v154 = v156 + 1;
      v153 = (v156 + 1);
      if (v153 >= a5)
      {
        goto LABEL_228;
      }

      continue;
    }

    break;
  }

  if (*(v155 + 80) || *(v155 + 84) || *(v155 + 12) || *(v155 + 88) || *(v155 + 92) || *(v155 + 74))
  {
    if (*(v12 + 59) == 1)
    {
      v652 = *(v155 + 40);
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "%d FEATUREVECTOR:DUMMY:0:%s %s", v86, v87, v88, v153);
    }

    goto LABEL_215;
  }

  POSAndDiacritics = setPosparserFeatureVector(v12, __dst, v12[27], v154, v105, a4, a5, v704);
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    goto LABEL_864;
  }

  v177 = *(v712 + 236);
  if (v177)
  {
    v178 = "DUMMY";
    __s1[0] = "DUMMY";
  }

  else
  {
    POSAndDiacritics = igtree_Process(*(v712 + 216), v105, __s1);
    if ((POSAndDiacritics & 0x80000000) != 0)
    {
      goto LABEL_864;
    }

    v178 = __s1[0];
    v177 = *(v712 + 236);
  }

  POSAndDiacritics = posparser_DumpFeatureVectorAndResult(*v712, "OOV", v105, v178, __s, __src, v704, v177, v154, __dst);
  if ((POSAndDiacritics & 0x80000000) == 0)
  {
    v12 = v712;
    v179 = strlen(__s1[0]);
    v180 = heap_Calloc(*(*v712 + 8), 1, (v179 + 1));
    *(v155 + 40) = v180;
    v10 = v680;
    v15 = v698;
    v107 = v693;
    if (!v180)
    {
LABEL_226:
      POSAndDiacritics = -1607458806;
      log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v173, v174, v175, v176, v622);
      v110 = a9;
      v13 = a10;
      v16 = v707;
      v14 = v696;
      goto LABEL_773;
    }

    strcpy(v180, __s1[0]);
    goto LABEL_215;
  }

LABEL_864:
  v10 = v680;
  v12 = v712;
  v13 = a10;
  v15 = v698;
LABEL_229:
  v14 = v696;
  v106 = v690;
  v108 = v704;
LABEL_230:
  v704 = v108;
  v181 = v106;
  v131 = *__s;
  if (*__s)
  {
LABEL_231:
    heap_Free((*v12)[1], v131);
    *__s = 0;
    *__src = 0;
  }

  log_OutText((*v12)[4], "POSPARSER", 5, 0, "POS Disambiguation results:", v86, v87, v88, 0);
  if (a5)
  {
    v185 = 0;
    v186 = a5;
    v187 = a4 + 56;
    do
    {
      if (*(v187 - 24))
      {
        v653 = *(v187 - 16);
        v663 = *(v187 - 40);
        v629 = *v187;
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : %s", v182, v183, v184, v185);
      }

      else
      {
        if (*(v187 - 16) && !strcmp(*(v187 - 16), "MULTIWORD"))
        {
          v631 = *v187;
          log_OutText((*v12)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : ", v182, v183, v184, v185);
        }

        else if (*(v187 + 24) || *(v187 + 28) || *(v187 - 44) || *(v187 + 32) || *(v187 + 36) || *(v187 + 18))
        {
          v630 = *v187;
          log_OutText((*v12)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : NON DICT WORD", v182, v183, v184, v185);
        }

        else
        {
          v632 = *v187;
          log_OutText((*v12)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : OOV NON DICT WORD", v182, v183, v184, v185);
        }

        v14 = v696;
      }

      ++v185;
      v187 += 104;
    }

    while (a5 != v185);
    v188 = a4 + 48;
    v15 = v698;
    do
    {
      if (!*(v188 + 32) && !*(v188 + 36) && !*(v188 - 36) && !*(v188 + 40) && !*(v188 + 44) && !*(v188 + 26) && !*(v188 - 16))
      {
        v189 = *(v188 - 8);
        if (!v189 || strcmp(*(v188 - 8), "MULTIWORD"))
        {
          heap_Free((*v12)[1], v189);
          *(v188 - 8) = 0;
        }
      }

      v190 = *(v188 + 8);
      if (v190)
      {
        heap_Free((*v12)[1], v190);
        *(v188 + 8) = 0;
      }

      if (*v188)
      {
        heap_Free((*v12)[1], *v188);
        *v188 = 0;
      }

      v188 += 104;
      --v186;
    }

    while (v186);
  }

  if (v709)
  {
    statcomp_freeFeatureVector(*v12, v709, v704);
    heap_Free((*v12)[1], v709);
  }

  v16 = v707;
  if (v181)
  {
    statcomp_freeFeatureVector(*v12, v181, v693);
    heap_Free((*v12)[1], v181);
  }

  LODWORD(v21) = a5;
  v22 = a4;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    goto LABEL_772;
  }

LABEL_270:
  if ((*(v12 + 16) | 2) != 2)
  {
LABEL_670:
    v24 = __dst;
    goto LABEL_671;
  }

  v722 = 0;
  v724 = -65536;
  *__c = __dst;
  v191 = strlen(v16);
  v192 = v12[10];
  if (!v192 || (v723 = 0, !*v192))
  {
    LODWORD(v21) = a5;
    v22 = a4;
    goto LABEL_670;
  }

  v193 = v191;
  bzero(__s1, 0x5A0uLL);
  v733 = 0u;
  memset(v734, 0, sizeof(v734));
  *__s = 0u;
  v677 = heap_Calloc((*v12)[1], 1, 252);
  if (!v677)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v194, v195, v196, v197, v620);
    v677 = 0;
    v667 = 0;
    goto LABEL_834;
  }

  LOWORD(v724) = 0;
  *__dst = 0;
  if (!v193)
  {
    v667 = 0;
    POSAndDiacritics = 0;
    goto LABEL_834;
  }

  v198 = 0;
  POSAndDiacritics = 0;
  v199 = 0;
  v200 = 0;
  v667 = 0;
  v668 = 0;
  v201 = 0;
  v669 = 20;
  v694 = v193;
  while (2)
  {
    v728 = 0;
    v727 = 0;
    __dsta = v201;
    v705 = v199;
    v685 = v198;
    if (*(v12 + 48) != 1)
    {
      v710 = v200;
LABEL_309:
      LOWORD(v203) = 0;
      v204 = 0;
LABEL_310:
      v633 = v16[v199];
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM DOING [%d] %c", v195, v196, v197, v198);
      v223 = 0;
      v687 = 0;
      v224 = v204 == 1;
      goto LABEL_311;
    }

    if (!*(v12 + 104))
    {
      v710 = 0;
      goto LABEL_309;
    }

    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v206 = v198 + 1;
    while (!v205)
    {
      v207 = v12[25] + 6 * v202;
      v208 = *v207;
      if (v208 > v199)
      {
        break;
      }

      if (v208 == v199 && *(v12 + 38) == 1 && (v209 = v202, v210 = isCharInStr(v207 + 2, "XBI"), LOWORD(v199) = v705, v202 = v209, v210))
      {
        v211 = v209 + 1;
        v205 = 1;
        if (v209 + 1 < *(v12 + 104) && v206 < v694 && (v212 = v12[25] + 6 * v211, v206 == *v212))
        {
          if (v12[15])
          {
            v213 = v12[15];
          }

          else
          {
            v213 = "^FNKauioR";
          }

          if (isCharInStr(v212 + 2, v213))
          {
            v214 = 6 * v211 + 6;
            while (1)
            {
              v215 = v12[25] + v214;
              __strcat_chk();
              v216 = v12[25];
              v203 += strlen(&v216[v214 - 4]);
              if (++v211 >= *(v12 + 104) || v206 != *&v216[v214])
              {
                break;
              }

              v217 = &v216[v214];
              if (v12[15])
              {
                v218 = v12[15];
              }

              else
              {
                v218 = "^FNKauioR";
              }

              v205 = 1;
              v214 += 6;
              v14 = v696;
              if (!isCharInStr(v217 + 2, v218))
              {
                goto LABEL_304;
              }
            }

            v205 = 1;
LABEL_304:
            v204 = 1;
          }

          else
          {
            v205 = 1;
          }

          LOWORD(v199) = v705;
          v16 = v707;
          v202 = v209;
        }

        else
        {
          v16 = v707;
        }
      }

      else
      {
        v205 = 0;
        ++v202;
      }

      v219 = *(v12 + 104);
      if (v202 >= v219)
      {
        goto LABEL_336;
      }
    }

    v219 = 1;
LABEL_336:
    v687 = v205 != 0;
    if (v205)
    {
      v237 = v12[25];
      if (v204 == 1)
      {
        goto LABEL_338;
      }

      v710 = v202;
      v636 = v16[v199];
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite diacritic=%s", v195, v196, v197, v685);
      v223 = 0;
      v224 = 0;
      v687 = 1;
LABEL_311:
      v201 = __dsta;
      goto LABEL_312;
    }

    if (!v219 || v206 >= v694)
    {
      v710 = 0;
      v198 = v685;
      goto LABEL_310;
    }

    v202 = 0;
    v238 = 0;
    do
    {
      if (v238)
      {
        break;
      }

      v239 = v12[25] + 6 * v202;
      v240 = *v239;
      if (v206 < v240)
      {
        break;
      }

      if (v206 == v240 && (v12[15] ? (v241 = v12[15]) : (v241 = "^FNKauioR"), v242 = v202, v243 = isCharInStr(v239 + 2, v241), LOWORD(v199) = v705, v202 = v242, v243))
      {
        if (v242 < *(v12 + 104) && (v244 = v12[25] + 6 * v242, v206 == *v244))
        {
          v245 = v12[15] ? v12[15] : "^FNKauioR";
          if (isCharInStr(v244 + 2, v245))
          {
            v246 = v242;
            v247 = 6 * v242 + 6;
            while (1)
            {
              v248 = v12[25] + v247;
              __strcat_chk();
              v249 = v12[25];
              v203 += strlen(&v249[v247 - 4]);
              if (++v246 >= *(v12 + 104) || v206 != *&v249[v247])
              {
                break;
              }

              if (*(v712 + 120))
              {
                v250 = *(v712 + 120);
              }

              else
              {
                v250 = "^FNKauioR";
              }

              v251 = isCharInStr(&v249[v247 + 2], v250);
              v238 = 1;
              v247 += 6;
              v12 = v712;
              if (!v251)
              {
                goto LABEL_367;
              }
            }

            v238 = 1;
LABEL_367:
            v16 = v707;
            v14 = v696;
          }

          else
          {
            v238 = 0;
          }

          v202 = v242;
          LOWORD(v199) = v705;
        }

        else
        {
          v238 = 0;
        }
      }

      else
      {
        v238 = 0;
        ++v202;
      }
    }

    while (v202 < *(v12 + 104));
    v198 = v685;
    if (!v238)
    {
      v710 = v202;
      goto LABEL_310;
    }

    if (v204 != 1)
    {
      v710 = v202;
      v638 = v16[v199];
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM DOING [%d] %c vowel diacritic=%s", v195, v196, v197, v685);
      v224 = 0;
      v687 = 0;
      v223 = 1;
      goto LABEL_311;
    }

    v252 = v12[25];
LABEL_338:
    v201 = __dsta;
    v223 = v205 == 0;
    v710 = v202;
    v635 = v16[v199];
    log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite+vowel diacritic=%s%s", v195, v196, v197, v685);
    v224 = 1;
LABEL_312:
    if (a5 <= v201)
    {
LABEL_317:
      v227 = 0;
    }

    else
    {
      v225 = v201;
      while (1)
      {
        v226 = a4 + 104 * v225;
        if (*(v226 + 8) <= v705 && *(v226 + 10) > v705)
        {
          break;
        }

        v225 = (v225 + 1);
        if (a5 <= v225)
        {
          goto LABEL_317;
        }
      }

      v228 = v225;
      v232 = a4 + 104 * v225;
      if (*(v232 + 72) != 9999 && *(v232 + 8) == v705)
      {
        LODWORD(v201) = v225;
        goto LABEL_329;
      }

      v227 = 1;
      v201 = v225;
    }

    v228 = v201;
    v229 = a4 + 104 * v201;
    if (*(v229 + 12) == 1 || *(v229 + 74) || *(v229 + 16))
    {
LABEL_329:
      v233 = (a4 + 104 * v228);
      v234 = v233 + 5;
      if (v233[36] != 9999)
      {
        v234 = (a4 + 104 * v233[36] + 10);
      }

      v235 = *v234;
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM SKIPPING %d-%d as dict word exists, is vowelled, is phonetic or pre-diacritized", v220, v221, v222, v233[4]);
      v201 = (v201 + 1);
      **__c = 0;
      goto LABEL_332;
    }

    __dstb = v201;
    if ((v227 & 1) == 0)
    {
      v253 = v705;
      v254 = v16[v705];
LABEL_377:
      v670 = &v16[v253];
      if (v254 != 32)
      {
        v664 = a4 + 104 * v201;
        goto LABEL_384;
      }

      log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM SKIPPING space", v220, v221, v222, v623);
      v15 = v698;
      v236 = v694;
LABEL_664:
      v199 = v705 + Utf8_LengthInBytes(v670, 1);
      goto LABEL_333;
    }

    if ((*(v229 + 80) == 1 || *(v229 + 84) == 1) && *(v229 + 8) == v705)
    {
      v230 = (*v12)[4];
      v624 = v685;
      v634 = *(v229 + 10);
      v231 = "NGRAM SKIPPING %d-%d as digit/punctuation class";
      goto LABEL_407;
    }

    if (*(v229 + 88) == 1 && *(v229 + 8) == v705)
    {
      v230 = (*v12)[4];
      v624 = v685;
      v637 = *(v229 + 10);
      v231 = "NGRAM SKIPPING %d-%d as latin";
      goto LABEL_407;
    }

    if (*(v229 + 92) == 1 && *(v229 + 8) == v705)
    {
      v230 = (*v12)[4];
      v624 = v685;
      v639 = *(v229 + 10);
      v231 = "NGRAM SKIPPING %d-%d as in spell mode";
      goto LABEL_407;
    }

    v277 = &v16[v705];
    v254 = *v277;
    if (v254 != 194)
    {
      v253 = v705;
      goto LABEL_377;
    }

    v670 = &v16[v705];
    if (*(v277 + 1) == 167 && *(v229 + 8) == v705)
    {
      v230 = (*v12)[4];
      v624 = v685;
      v640 = *(v229 + 10);
      v231 = "NGRAM SKIPPING %d-%d as phonetic";
LABEL_407:
      log_OutText(v230, "POSPARSER", 5, 0, v231, v220, v221, v222, v624);
      v235 = *(a4 + 104 * v201 + 10);
LABEL_332:
      v15 = v698;
      v236 = v694;
      v199 = v235 + 1;
LABEL_333:
      v200 = v710;
      v198 = v199;
      if (v236 <= v199)
      {
        goto LABEL_834;
      }

      continue;
    }

    break;
  }

  v664 = a4 + 104 * v201;
LABEL_384:
  log_OutText((*v12)[4], "POSPARSER", 5, 0, "NGRAM PROCESSING [%d] %c", v220, v221, v222, v685);
  bzero(v677, 12 * v669 + 12);
  LOWORD(v724) = 0;
  v681 = v10;
  if (!v687 || !v224)
  {
    v264 = Utf8_LengthInBytes(v670, 1);
    v265 = v264;
    if (v223)
    {
      if ((v264 & 0xFFFE) != 0)
      {
        v266 = v264;
      }

      else
      {
        v266 = 1;
      }

      __strncpy_chk();
      if (v203)
      {
        v270 = v203;
        v271 = v265;
        if ((v265 & 0xFFFE) == 0)
        {
          v271 = 1;
        }

        v272 = &v677[v271];
        v273 = &v727;
        do
        {
          v274 = *v273++;
          v272[12 * v724] = v274;
          ++v272;
          --v270;
        }

        while (v270);
      }

      v677[12 * v724 + v266 + v203] = 0;
      *&v677[12 * v724 + 10] = 20000;
      v275 = *(*v712 + 32);
      v276 = &v677[12 * v724];
    }

    else
    {
      if (v264)
      {
        LOWORD(v266) = v264;
      }

      else
      {
        LOWORD(v266) = 1;
      }

      __strncpy_chk();
      v677[12 * v724 + v266] = 0;
      v278 = &v677[12 * v724];
      if (!v687)
      {
        *(v278 + 5) = 0;
        v643 = *&v677[12 * v724 + 10];
        log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "(dia) ADD SOLUTION %s(%u)", v267, v268, v269, &v677[12 * v724]);
        goto LABEL_419;
      }

      *(v278 + 5) = 20000;
      v275 = *(*v712 + 32);
      v276 = &v677[12 * v724];
    }

    v641 = *(v276 + 10);
    log_OutText(v275, "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)", v267, v268, v269, v276);
LABEL_419:
    v15 = v698;
    v283 = __dstb;
    v284 = 0;
    LOWORD(v666) = v266 - 1;
    LOWORD(v724) = v724 + 1;
LABEL_420:
    if (v284 >= *(v712 + 96))
    {
      goto LABEL_571;
    }

    v285 = v712;
    while (1)
    {
      v286 = *(*v285 + 32);
      v287 = v285[11];
      if (v284)
      {
        v644 = v287[v284];
        log_OutText(v286, "POSPARSER", 5, 0, "!!BACKING OFF TO DICT %d=%s", v279, v280, v281, v284);
      }

      else
      {
        v645 = *v287;
        log_OutText(v286, "POSPARSER", 5, 0, "!!USING DICT %d=%s", v279, v280, v281, 0);
      }

      v285 = v712;
      v288 = *(*(v712 + 80) + v284);
      if (*(*(v712 + 80) + v284))
      {
        break;
      }

      if (++v284 >= *(v712 + 96))
      {
LABEL_571:
        v666 = v666;
        v282 = v724;
        v10 = v681;
        v12 = v712;
        goto LABEL_572;
      }
    }

    v665 = 0;
LABEL_429:
    v714 = v288;
    v733 = 0u;
    memset(v734, 0, sizeof(v734));
    *__s = 0u;
    v289 = *(*(v712 + 80) + v284);
    __memset_chk();
    if ((v705 & 0x8000) != 0)
    {
      v308 = 0;
      LOWORD(v293) = 0;
    }

    else
    {
      v293 = 0;
      v294 = 0;
      v295 = v714;
      v296 = v283;
      LOWORD(v283) = v705;
      v297 = a4;
      do
      {
        v298 = v295--;
        v299 = v298 - 1;
        while ((v296 & 0x8000) == 0)
        {
          v300 = v296;
          v301 = (a4 + 10 + 104 * v296);
          while (*(v301 - 1) > v283 || *v301 <= v283)
          {
            v301 -= 52;
            v316 = v300-- <= 0;
            if (v316)
            {
              goto LABEL_446;
            }
          }

          v296 = v300;
          v302 = v297 + 104 * v300;
          if (*(v302 + 80) == 1)
          {
            if (*(v302 + 8) == v283)
            {
              PunctClassChar = "α";
LABEL_454:
              __strcpy_chk();
              insertString(__src, __s, PunctClassChar, v295);
              ++v293;
              goto LABEL_450;
            }
          }

          else
          {
            if (*(v302 + 84) != 1)
            {
              break;
            }

            if (*(v302 + 8) == v283)
            {
              PunctClassChar = getPunctClassChar(v712, v16[v283]);
              goto LABEL_454;
            }
          }

          LOWORD(v283) = v283 - 1;
          if ((v283 & 0x8000) != 0)
          {
            goto LABEL_455;
          }
        }

LABEL_446:
        CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v16, v283);
        v304 = &v16[CurrentUtf8Offset];
        v305 = Utf8_LengthInBytes(v304, 1);
        if ((v305 & 0xFFFE) != 0)
        {
          v306 = v305;
          __strcpy_chk();
          insertStringPart(__src, __s, v304, v295, v306);
          v293 = v293 + v306 - 1;
        }

        else
        {
          __s[v299] = *v304;
        }

        LOWORD(v283) = CurrentUtf8Offset;
        v16 = v707;
LABEL_450:
        ++v294;
        if (!v295)
        {
          break;
        }

        LODWORD(v283) = (v283 - 1);
        v297 = a4;
      }

      while ((v283 & 0x80000000) == 0);
LABEL_455:
      v308 = v294;
      v14 = v696;
      v15 = v698;
      v283 = __dstb;
    }

    for (i = 0; i != 14; ++i)
    {
      if (__s[i] != 64)
      {
        break;
      }
    }

    v310 = i + v308;
    if (v310 != v714 || ((v311 = *(*(v712 + 80) + v284), v312 = i + 1, v310 != v311) ? (v313 = v312 >= v311) : (v313 = 1), v313))
    {
      log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM IGNORING szUnVoweledNgramStr = %s", v290, v291, v292, __s);
      goto LABEL_569;
    }

    v314 = Utf8_LengthInBytes(v670, 1);
    v315 = v705 + v314;
    v316 = v311 == v714 || v694 <= (v705 + v314);
    v317 = a5;
    v318 = a4;
    if (v316)
    {
      goto LABEL_470;
    }

    v333 = 0;
    v334 = 0;
    v671 = (v311 - v714);
    v335 = v283;
LABEL_483:
    if (v694 <= v315)
    {
      goto LABEL_470;
    }

    v336 = v315;
    v337 = v293 + v714 + v333;
    while (1)
    {
      if (v317 <= v335)
      {
        goto LABEL_499;
      }

      v338 = v335;
      while (1)
      {
        v339 = v318 + 104 * v338;
        if (*(v339 + 8) <= v315 && *(v339 + 10) > v315)
        {
          break;
        }

        v338 = (v338 + 1);
        if (v317 <= v338)
        {
          goto LABEL_499;
        }
      }

      v340 = v318 + 104 * v338;
      if (*(v340 + 80) == 1)
      {
        v341 = v694;
        if (v336 == *(v340 + 8))
        {
          __strcpy_chk();
          v342 = (v337 + v334);
          v343 = "α";
LABEL_507:
          insertString(__src, __s, v343, v342);
          v317 = a5;
          ++v334;
          v335 = v338;
          goto LABEL_503;
        }
      }

      else
      {
        v341 = v694;
        if (*(v340 + 84) != 1)
        {
          v335 = v338;
LABEL_499:
          v344 = (v707 + v315);
          v345 = Utf8_LengthInBytes(v344, 1);
          if ((v345 & 0xFFFE) != 0)
          {
            v346 = v345;
            __strcpy_chk();
            insertStringPart(__src, __s, v344, (v337 + v334), v346);
            v334 += v346 - 1;
            v315 += v346 - 1;
          }

          else
          {
            __s[v714 + v293 + v333 + v334] = *v344;
          }

          v317 = a5;
LABEL_503:
          v283 = __dstb;
          ++v333;
          v318 = a4;
          if (v333 >= v671 || (++v315, v694 <= v315))
          {
LABEL_470:
            v16 = v707;
            if (__s[0] == 32)
            {
              __strcpy_chk();
              insertString(__src, __s, "Φ", 0);
            }

            v14 = v696;
            v15 = v698;
            if (__s[strlen(__s) - 1] == 32)
            {
              __strcpy_chk();
              v322 = strlen(__s);
              insertString(__src, __s, "Φ", (v322 - 1));
            }

            log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM useLetterNum = %d szUnVoweledNgramStr = %s", v319, v320, v321, v714);
            if (v668)
            {
              v323 = v668;
              while (1)
              {
                v324 = &__s1[9 * (v323 - 1)];
                if (!strcmp(v324, __s))
                {
                  break;
                }

                if (!--v323)
                {
                  goto LABEL_478;
                }
              }

              v646 = v324[8];
              log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM FOUND %s in cache, cachedDictStr = %s", v325, v326, v327, __s);
              v348 = v324[8];
              if (!strcmp(v348, "FAIL_DICT_LOOKUP"))
              {
                HIWORD(v724) = 0;
                log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS (CACHED)", v349, v350, v351, __s);
                v283 = __dstb;
              }

              else
              {
                if (v667)
                {
                  v352 = strlen(v348);
                  if (v352 > strlen(v667))
                  {
                    v353 = heap_Realloc(*(*v712 + 8), v667, (v352 + 1));
                    if (v353)
                    {
                      v348 = v324[8];
                      goto LABEL_518;
                    }

                    POSAndDiacritics = -1607458806;
                    v12 = v712;
                    log_OutPublic(*(*v712 + 32), "POSPARSER", 68000, 0, v354, v355, v356, v357, v625);
LABEL_863:
                    v10 = v681;
LABEL_858:
                    v16 = v707;
                    goto LABEL_834;
                  }

                  v353 = v667;
LABEL_518:
                  v363 = v348;
                }

                else
                {
                  v358 = strlen(v348);
                  v353 = heap_Calloc(*(*v712 + 8), 1, (v358 + 1));
                  if (!v353)
                  {
                    POSAndDiacritics = -1607458806;
                    v12 = v712;
                    log_OutPublic(*(*v712 + 32), "POSPARSER", 68000, 0, v359, v360, v361, v362, v625);
                    v667 = 0;
                    goto LABEL_863;
                  }

                  v363 = v324[8];
                }

                v667 = strcpy(v353, v363);
                v332 = v667;
                v283 = __dstb;
LABEL_520:
                v364 = v665;
                if (strcmp(v332, "FAIL_DICT_LOOKUP"))
                {
                  v364 = 1;
                }

                if (HIWORD(v724))
                {
                  v365 = v668;
                  v366 = v724;
                  if (v668 >= 0x14u && v724 <= 4u)
                  {
                    heap_Free(*(*v712 + 8), v730);
                    v730 = 0;
                    v283 = __dstb;
                    __memmove_chk();
                    v365 = (v668 - 1);
                  }

                  if (v365 <= 0x13u && v366 <= 4)
                  {
                    __strcpy_chk();
                    v367 = strlen(v332);
                    v368 = heap_Calloc(*(*v712 + 8), 1, (v367 + 1));
                    __s1[9 * v365 + 8] = v368;
                    if (!v368)
                    {
                      v396 = v677;
LABEL_857:
                      v677 = v396;
                      POSAndDiacritics = -1607458806;
                      v12 = v712;
                      log_OutPublic(*(*v712 + 32), "POSPARSER", 68000, 0, v369, v370, v371, v372, v625);
                      v10 = v681;
                      v15 = v698;
                      goto LABEL_858;
                    }

                    strcpy(v368, v332);
                    v365 = (v365 + 1);
                    v283 = __dstb;
                  }
                }

                else
                {
                  v365 = v668;
                }

                v668 = v365;
                v665 = v364;
                if (v332 != "FAIL_DICT_LOOKUP")
                {
                  v373 = strchr(v332, v722);
                  if (v373)
                  {
                    v374 = v373;
                    *v373 = 0;
                    v375 = atoi(v332);
                    while (1)
                    {
                      v376 = v374 + 1;
                      if (v374[1] == v722)
                      {
                        break;
                      }

                      v377 = strchr(v374 + 1, v722);
                      v378 = v377;
                      if (v377)
                      {
                        *v377 = 0;
                      }

                      v379 = strlen(v374 + 1);
                      v380 = 0;
                      if (v714 != 1 && v379)
                      {
                        v381 = 1;
                        v382 = v714 - 1;
                        do
                        {
                          v382 -= v374[v381] == 59;
                          v383 = v381 + 1;
                          if (v382)
                          {
                            v384 = v381 >= v379;
                          }

                          else
                          {
                            v384 = 1;
                          }

                          ++v381;
                        }

                        while (!v384);
                        v380 = v383 - 1;
                      }

                      v385 = &v376[v380];
                      v386 = strchr(&v376[v380], 59);
                      if (v386)
                      {
                        *v386 = 0;
                      }

                      v726 = 0;
                      *__s2 = 0;
                      v387 = Utf8_LengthInBytes(v670, 1);
                      if (*v385 == 226 && v385[1] == 136 && v385[2] == 154)
                      {
                        __strcpy_chk();
                      }

                      else
                      {
                        if ((v387 & 0xFFFE) != 0)
                        {
                          v391 = v387;
                        }

                        else
                        {
                          v391 = 1;
                        }

                        __strncpy_chk();
                        LOWORD(v666) = v391 - 1;
                        __strcat_chk();
                      }

                      log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "ADD SOLUTION %s(%u)", v388, v389, v390, __s2);
                      v392 = v724;
                      v393 = v677;
                      v394 = v724;
                      if (v724)
                      {
                        while (strcmp(v393, __s2))
                        {
                          v393 += 12;
                          if (!--v394)
                          {
                            goto LABEL_559;
                          }
                        }

                        v400 = (v393 + 10);
                        v399 = v375;
                        v14 = v696;
                      }

                      else
                      {
LABEL_559:
                        v395 = v669;
                        if (v392 <= v669)
                        {
                          v14 = v696;
                          v398 = v677;
                        }

                        else
                        {
                          v669 += 10;
                          v396 = v677;
                          v397 = heap_Realloc(*(*v712 + 8), v677, 12 * (v395 + 10) + 12);
                          v14 = v696;
                          if (!v397)
                          {
                            goto LABEL_857;
                          }

                          v398 = v397;
                        }

                        __strcpy_chk();
                        v677 = v398;
                        *&v398[12 * v724 + 10] = v375;
                        v399 = 1;
                        v400 = &v724;
                      }

                      *v400 += v399;
                      v374 = v378;
                      v283 = __dstb;
                      if (!v378)
                      {
                        goto LABEL_568;
                      }
                    }

                    v14 = v696;
                  }
                }

LABEL_568:
                v15 = v698;
                v16 = v707;
              }
            }

            else
            {
LABEL_478:
              HIWORD(v724) = -1;
              v328 = (*(*(v712 + 24) + 152))(*(v712 + 8), *(v712 + 16), *(*(v712 + 88) + 8 * v284), __s, &v723, &v724 + 2, &v722, *(v712 + 68));
              if ((v328 & 0x80000000) != 0)
              {
                POSAndDiacritics = v328;
                v10 = v681;
                v12 = v712;
                goto LABEL_834;
              }

              if (!HIWORD(v724))
              {
                HIWORD(v724) = 1;
                log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS", v329, v330, v331, __s);
                v332 = "FAIL_DICT_LOOKUP";
                goto LABEL_520;
              }

              v332 = *v723;
              log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s SUCCEEDS %s", v329, v330, v331, __s);
              if (v332)
              {
                goto LABEL_520;
              }
            }

LABEL_569:
            v288 = (v714 - 1);
            if (v714 == 1)
            {
              ++v284;
              if (v665)
              {
                goto LABEL_571;
              }

              goto LABEL_420;
            }

            goto LABEL_429;
          }

          goto LABEL_483;
        }

        if (v336 == *(v340 + 8))
        {
          v347 = getPunctClassChar(v712, *(v707 + v315));
          __strcpy_chk();
          v342 = (v337 + v334);
          v343 = v347;
          goto LABEL_507;
        }
      }

      v336 = ++v315;
      v335 = v338;
      v283 = __dstb;
      if (v341 <= v315)
      {
        goto LABEL_470;
      }
    }
  }

  v255 = v12[25] + 6 * v710;
  __strcpy_chk();
  if (v203)
  {
    v259 = v677 + 1;
    v260 = &v727;
    v261 = v203;
    do
    {
      v262 = *v260++;
      v259[12 * v724] = v262;
      ++v259;
      --v261;
    }

    while (v261);
    v263 = v203 + 1;
  }

  else
  {
    v263 = 1;
  }

  v15 = v698;
  v677[12 * v724 + v263] = 0;
  *&v677[12 * v724 + 10] = 20000;
  v642 = *&v677[12 * v724 + 10];
  log_OutText((*v12)[4], "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)", v256, v257, v258, &v677[12 * v724]);
  v666 = 0;
  v282 = v724 + 1;
  LOWORD(v724) = v724 + 1;
LABEL_572:
  if (v687)
  {
    if (v282)
    {
      v401 = 0;
      v672 = 0;
      v686 = 0;
      v688 = 0;
      v402 = v677;
      do
      {
        v403 = &v402[12 * v401];
        v715 = strlen(v403);
        if (v715)
        {
          v674 = v401;
          v404 = 0;
          v405 = 0;
          v406 = strlen(v12[25] + 6 * v710 + 2);
          do
          {
            v407 = Utf8_LengthInBytes(&v403[v405], 1);
            v408 = Utf8_LengthInBytes((*(v712 + 200) + 6 * v710 + v404 + 2), 1);
            if (v408 == v407 && v406 > v404)
            {
              v410 = v408;
              if (!strncmp(&v403[v405], (*(v712 + 200) + 6 * v710 + v404 + 2), v407))
              {
                v411 = *(v403 + 5);
                if (v411 >= v686)
                {
                  v412 = v674;
                }

                else
                {
                  v412 = v688;
                }

                v688 = v412;
                if (v411 <= v686)
                {
                  LOWORD(v411) = v686;
                }

                v686 = v411;
                v404 += v410;
                v672 = 1;
              }
            }

            v405 += v407;
          }

          while (v405 < v715);
          v282 = v724;
          v10 = v681;
          v12 = v712;
          v14 = v696;
          v15 = v698;
          v401 = v674;
        }

        ++v401;
        v402 = v677;
      }

      while (v401 < v282);
      v413 = v282 == 0;
      if (v672)
      {
        v16 = v707;
        goto LABEL_651;
      }

      v16 = v707;
    }

    else
    {
      v282 = 0;
      v686 = 0;
      v688 = 0;
      v413 = 1;
    }

    log_OutText((*v12)[4], "POSPARSER", 5, 0, "NO SOLUTION CONTAINING DIACRITIC %s - see if solution with vowel", v279, v280, v281, v12[25] + 6 * v710 + 2);
    if (v413)
    {
      v427 = 0;
LABEL_621:
      if (*(v12 + 38) == 1 && ((v428 = v12[25] + 6 * v710, v431 = *(v428 + 2), v429 = v428 + 2, v430 = v431, v431 == 88) || v430 == 66) && !*(v429 + 1))
      {
        v432 = v677;
        v677[12 * v427] = 65;
        v677[12 * v724 + 1] = 0;
      }

      else
      {
        v432 = v677;
        __strcpy_chk();
      }

      *&v432[12 * v724 + 10] = 0;
      v418 = v724;
      LOWORD(v724) = v724 + 1;
      v655 = *&v432[12 * v418 + 10];
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "BACKUP NGRAM SOLUTION[%d] %s %d", v279, v280, v281, v418);
    }

    else
    {
      v433 = 0;
      v434 = 0;
      while (2)
      {
        v673 = v434;
        while (1)
        {
          v435 = v12[15] ? v12[15] : "^FNKauioR";
          v675 = strlen(v435);
          if (v675)
          {
            break;
          }

LABEL_641:
          if (++v433 >= v282)
          {
            if (v673)
            {
              goto LABEL_651;
            }

            v427 = v282;
            goto LABEL_621;
          }
        }

        v436 = &v677[12 * v433];
        v437 = strlen(v436);
        v438 = 0;
        while (1)
        {
          v439 = Utf8_LengthInBytes(&v435[v438], 1);
          if (v437)
          {
            break;
          }

LABEL_639:
          v438 += v439;
          if (v438 >= v675)
          {
            v282 = v724;
            v10 = v681;
            v12 = v712;
            v14 = v696;
            v15 = v698;
            v16 = v707;
            goto LABEL_641;
          }
        }

        v440 = 0;
        while (1)
        {
          v441 = Utf8_LengthInBytes(&v436[v440], 1);
          v442 = v441;
          if (v441 == v439 && !strncmp(&v435[v438], &v436[v440], v441))
          {
            break;
          }

          v440 += v442;
          if (v440 >= v437)
          {
            goto LABEL_639;
          }
        }

        v443 = *&v677[12 * v433 + 10];
        if (v443 >= v686)
        {
          v444 = v433;
        }

        else
        {
          v444 = v688;
        }

        v688 = v444;
        if (v443 <= v686)
        {
          LOWORD(v443) = v686;
        }

        v686 = v443;
        ++v433;
        v434 = 1;
        v282 = v724;
        v10 = v681;
        v12 = v712;
        v14 = v696;
        v15 = v698;
        v16 = v707;
        if (v433 < v724)
        {
          continue;
        }

        break;
      }

LABEL_651:
      LOWORD(v418) = v688;
      v656 = *&v677[12 * v688 + 10];
      log_OutText((*v12)[4], "POSPARSER", 5, 0, "FORCE NGRAM SOLUTION[%d] %s %d", v279, v280, v281, v688);
    }
  }

  else if (v282)
  {
    v414 = 0;
    v415 = 0;
    v416 = 0;
    v417 = 0;
    LOWORD(v418) = 0;
LABEL_596:
    v419 = &v677[12 * v414];
    v420 = v414;
    do
    {
      v654 = *(v419 + 5);
      log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM SOLUTION[%d] %s %d", v279, v280, v281, v420);
      v421 = *(v419 + 5);
      if (v421 == 20000)
      {
        v414 = v420 + 1;
        v422 = v724;
        v416 = 1;
        v415 = v420;
        if (v420 + 1 < v724)
        {
          goto LABEL_596;
        }

        v415 = v420;
        v15 = v698;
        v16 = v707;
        goto LABEL_607;
      }

      v419 += 12;
      if (v421 >= v417)
      {
        LOWORD(v418) = v420;
      }

      if (v421 > v417)
      {
        v417 = v421;
      }

      ++v420;
      v422 = v724;
    }

    while (v420 < v724);
    v15 = v698;
    v16 = v707;
    if ((v416 & 1) == 0)
    {
      goto LABEL_652;
    }

LABEL_607:
    if (v422)
    {
      v423 = v677;
      v424 = strlen(&v677[12 * v415]);
      v425 = 0;
      v426 = 0;
      do
      {
        if (!memcmp(v423, &v677[12 * v415], v424) && strlen(v423) > v424)
        {
          LOWORD(v418) = v425;
          v426 = 1;
        }

        ++v425;
        v423 += 12;
      }

      while (v422 != v425);
      if (!v426)
      {
        LOWORD(v418) = v415;
      }

      v10 = v681;
      v14 = v696;
      v15 = v698;
      v16 = v707;
    }

    else
    {
      LOWORD(v418) = v415;
    }
  }

  else
  {
    LOWORD(v418) = 0;
  }

LABEL_652:
  v12 = v712;
  v445 = &v677[12 * v418];
  v657 = *(v445 + 5);
  log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "NGRAM SELECTED SOLUTION[%d] %s %d", v279, v280, v281, v418);
  v446 = strlen(*__c);
  v447 = strlen(v445);
  v448 = posparserGrowStr(v712, __c, (v447 + v446 + 1), &v720, 0);
  if ((v448 & 0x80000000) != 0)
  {
    POSAndDiacritics = v448;
    goto LABEL_834;
  }

  strcat(*__c, v445);
  v449 = *(v664 + 10);
  if (v685 + v666 + 1 != v449)
  {
    POSAndDiacritics = 0;
    v466 = a4;
    v201 = __dstb;
    v467 = v705;
    v236 = v694;
LABEL_661:
    if (*v670 == 32 && *(v466 + 104 * v201 + 8) > v467)
    {
      **__c = 0;
    }

    goto LABEL_664;
  }

  v450 = *__c;
  v451 = strlen(*__c);
  v452 = v451;
  v453 = *(v664 + 8);
  if (v449 - v453 == v451 && !memcmp(*__c, &v16[v453], v451))
  {
    log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s (unchanged)", v454, v455, v456, v450);
    POSAndDiacritics = 0;
    v462 = __dstb;
    v236 = v694;
LABEL_659:
    v201 = (v462 + 1);
    *v450 = 0;
    v466 = a4;
    v467 = v705;
    goto LABEL_661;
  }

  v457 = heap_Calloc(*(*v712 + 8), 1, (v452 + 1));
  *(v664 + 64) = v457;
  v236 = v694;
  if (!v457)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(*v712 + 32), "POSPARSER", 68000, 0, v458, v459, v460, v461, v620);
    goto LABEL_834;
  }

  v462 = __dstb;
  POSAndDiacritics = posparser_PostProcess(v712, __c);
  if ((POSAndDiacritics & 0x80000000) == 0)
  {
    v450 = *__c;
    strcpy(*(v664 + 64), *__c);
    log_OutText(*(*v712 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s", v463, v464, v465, *(v664 + 64));
    goto LABEL_659;
  }

LABEL_834:
  for (j = 8; j != 188; j += 9)
  {
    v617 = __s1[j];
    if (v617)
    {
      heap_Free((*v12)[1], v617);
      __s1[j] = 0;
    }
  }

  if (v667)
  {
    heap_Free((*v12)[1], v667);
  }

  v13 = a10;
  if (v677)
  {
    heap_Free((*v12)[1], v677);
  }

  v24 = *__c;
  LODWORD(v21) = a5;
  v22 = a4;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    goto LABEL_848;
  }

LABEL_671:
  if (v21)
  {
    v468 = 0;
    v469 = v21;
    do
    {
      v470 = v22 + 104 * v468;
      if (*(v470 + 74))
      {
        v471 = 0;
        v472 = v14;
        v473 = *(v470 + 74);
        do
        {
          v474 = *v472;
          v472 += 8;
          if (v474 == 1)
          {
            ++v471;
          }

          --v473;
        }

        while (v473);
        *(v470 + 74) -= v471;
      }

      if (*(v470 + 76))
      {
        v475 = 0;
        v476 = v14;
        v477 = *(v470 + 76);
        do
        {
          v478 = *v476;
          v476 += 8;
          if (v478 == 1)
          {
            ++v475;
          }

          --v477;
        }

        while (v477);
        *(v470 + 76) -= v475;
      }

      ++v468;
    }

    while (v468 != v469);
  }

  __dst = v24;
  if (v15)
  {
    v479 = 0;
    v480 = 0;
    do
    {
      v481 = (v14 + 32 * v480);
      if (*v481 == 1)
      {
        v482 = (v479 + 1);
        if (v15 > v482)
        {
          memmove(v481, (v14 + 32 * v482), 32 * (v15 - v482));
        }

        v15 = (v15 - 1);
      }

      else
      {
        ++v480;
      }

      v479 = v480;
    }

    while (v480 < v15);
  }

  if (*(v12 + 62) == 1)
  {
    v483 = 32 * v15 + (a5 << 6) + 32;
  }

  else
  {
    v483 = 32 * (v15 + a5) + 32;
  }

  v691 = heap_Realloc((*v12)[1], v14, v483);
  if (!v691)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v484, v485, v486, v487, v620);
    goto LABEL_772;
  }

  __s1[0] = v16;
  v488 = __dst;
  *__s = __dst;
  LOWORD(v727) = strlen(v16);
  if (!a5)
  {
    v584 = v16;
    v14 = v691;
    goto LABEL_775;
  }

  v682 = v10;
  v490 = 0;
  v491 = 0;
  v695 = 0;
  v689 = 0;
  v492 = a4;
  v14 = v691;
  v676 = 0;
  while (2)
  {
    v493 = v492 + 104 * v491;
    LODWORD(v489) = *v493;
    v716 = v489;
    v494 = *(v493 + 8);
    v711 = *(v493 + 4);
    v706 = *(v14 + 12);
    v697 = v494;
    if (*(v493 + 12) != 1)
    {
      if (*(v493 + 72) == 9999)
      {
        v503 = *(v493 + 64);
        if (!v503)
        {
          v505 = posparserGrowStr(v12, __s, (*(v493 + 10) - v494), &v720, 0);
          v488 = *__s;
          if ((v505 & 0x80000000) == 0)
          {
            v496 = __s1[0];
            strncpy(*__s, &__s1[0][*(v493 + 8)], *(v493 + 10) - *(v493 + 8));
            v488[*(v493 + 10) - *(v493 + 8)] = 0;
            v661 = *(v493 + 10);
            v649 = *(v493 + 8);
            log_OutText((*v12)[4], "POSPARSER", 5, 0, "PROCESSING word [%d] %d,%d %s", v576, v577, v578, v490);
            goto LABEL_703;
          }

LABEL_845:
          LODWORD(v586) = v505;
          v10 = v682;
          goto LABEL_846;
        }

        v504 = strlen(v503);
        v505 = posparserGrowStr(v12, __s, v504, &v720, 0);
        v488 = *__s;
        if (v505 < 0)
        {
          goto LABEL_845;
        }

        strcpy(*__s, *(v493 + 64));
        v659 = *(v493 + 10);
        v648 = *(v493 + 8);
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "PROCESSING ngram word [%d] %d,%d %s", v506, v507, v508, v490);
        v500 = strlen(v488) - *(v493 + 10) + *(v493 + 8);
        posparser_undoEmbeddedRules(v12, v488);
        v501 = 1;
        v496 = __s1[0];
        v502 = v491;
        v509 = v491;
      }

      else
      {
        v510 = strlen(*(v493 + 16));
        v495 = posparserGrowStr(v12, __s, v510, &v720, 0);
        v488 = *__s;
        if (v495 < 0)
        {
LABEL_831:
          LODWORD(v586) = v495;
          v10 = v682;
          goto LABEL_847;
        }

        strcpy(*__s, *(v493 + 16));
        v511 = v15;
        v512 = *(a4 + 104 * *(v493 + 72) + 10);
        v496 = __s1[0];
        v513 = strlen(__s1[0]);
        if (v513 < v512)
        {
          LOWORD(v512) = v513;
        }

        v660 = *(v493 + 8);
        log_OutText((*v12)[4], "POSPARSER", 5, 0, "PROCESSING dict word [%d-%d] %d,%d %s", v514, v515, v516, v490);
        v517 = strlen(v488) - v512;
        v15 = v511;
        v500 = v517 + *(v493 + 8);
        v502 = *(v493 + 72);
        v501 = 1;
        v509 = v502;
      }

      v695 = v509;
      v689 = v491;
      goto LABEL_713;
    }

    v495 = posparserGrowStr(v12, __s, (*(v493 + 10) - v494), &v720, 0);
    v488 = *__s;
    if (v495 < 0)
    {
      goto LABEL_831;
    }

    v496 = __s1[0];
    strncpy(*__s, &__s1[0][*(v493 + 8)], *(v493 + 10) - *(v493 + 8));
    v488[*(v493 + 10) - *(v493 + 8)] = 0;
    v658 = *(v493 + 10);
    v647 = *(v493 + 8);
    log_OutText((*v12)[4], "POSPARSER", 5, 0, "PROCESSING VOWELLED word [%d] %d,%d %s", v497, v498, v499, v490);
LABEL_703:
    v500 = 0;
    v501 = 0;
    v502 = v491;
LABEL_713:
    v518 = v500 + strlen(v496);
    v519 = posparserGrowStr(v12, __s1, v518, &v727, 64);
    if (v519 < 0)
    {
      LODWORD(v586) = v519;
      v10 = v682;
      v14 = v691;
      v13 = a10;
      goto LABEL_847;
    }

    v520 = v488;
    if (v500 << 16)
    {
      v699 = v15;
      v521 = v500;
      v522 = a4 + 104 * v695;
      v525 = *(v522 + 10);
      v524 = (v522 + 10);
      v523 = v525;
      v526 = __s1[0];
      v527 = strlen(__s1[0]);
      if (v527 > v525)
      {
        memmove(&__s1[0][v523 + v500], &__s1[0][v523], v527 - v523);
      }

      v528 = a4 + 104 * v689;
      v530 = *(v528 + 8);
      v529 = (v528 + 8);
      v531 = strlen(v520);
      memcpy(&v526[v530], v520, v531);
      v526[v518] = 0;
      *v524 += v500;
      v532 = a5;
      if (a5 > (v695 + 1))
      {
        v533 = (v695 + 1) + 1;
        v534 = (a4 + 10 + 104 * (v695 + 1));
        do
        {
          *(v534 - 1) += v500;
          *v534 += v500;
          v534 += 52;
        }

        while (a5 != v533++);
      }

      v15 = v699;
      v12 = v712;
      v536 = v691;
      v13 = a10;
      v16 = v707;
      v492 = a4;
      if (v699 >= 2u)
      {
        v537 = *(v691 + 12);
        v538 = *v529;
        v539 = v699 - 1;
        v540 = (v691 + 44);
        do
        {
          v541 = (*v540 - v537);
          if (v541 >= v538)
          {
            v542 = *v540 + v521;
            if (v541 < v523)
            {
              v542 = v537 + v538;
            }

            *v540 = v542;
          }

          v540 += 8;
          --v539;
        }

        while (v539);
      }
    }

    else
    {
      v536 = v691;
      v13 = a10;
      v16 = v707;
      v532 = a5;
      v492 = a4;
      if (v501)
      {
        v543 = strlen(v488);
        v536 = v691;
        memcpy(&__s1[0][*(a4 + 104 * v689 + 8)], v488, v543);
        v492 = a4;
        v532 = a5;
      }
    }

    v544 = v706 + v697;
    v545 = v492 + 104 * v502;
    v546 = *(v545 + 74);
    if (*(v545 + 74))
    {
      v547 = v536 + 32 * v546;
      LODWORD(v546) = *(v547 + 12) - v544;
      *(v547 + 12) = v544;
    }

    if (*(v545 + 76))
    {
      v548 = v536 + 32 * *(v545 + 76);
      *(v548 + 12) += v546;
    }

    v488 = v520;
    if (v711)
    {
      if (v15 < 2u)
      {
        LOWORD(v550) = 1;
      }

      else
      {
        v549 = (v691 + 44);
        v550 = 1;
        while (1)
        {
          v551 = *v549;
          v549 += 8;
          if (v544 < v551)
          {
            break;
          }

          if (v15 == ++v550)
          {
            LOWORD(v550) = v15;
            break;
          }
        }
      }

      v552 = v716;
      DWORD1(v552) = v711;
      v717 = v552;
      v553 = (a4 + 76);
      v554 = a5;
      do
      {
        v555 = *(v553 - 1);
        if (v555 >= v550)
        {
          *(v553 - 1) = v555 + 1;
        }

        v556 = *v553;
        if (v556 >= v550)
        {
          *v553 = v556 + 1;
        }

        v553 += 52;
        --v554;
      }

      while (v554);
      v14 = v536;
      v557 = (v536 + 32 * v550);
      memmove(v557 + 8, v557, 32 * (v15 - v550));
      *v557 = 1;
      v489 = v717;
      *(v557 + 1) = v717;
      v557[3] = v544;
      v15 = (v15 + 1);
      *(v557 + 2) = 0;
      *(v557 + 3) = v676;
      v532 = a5;
      v492 = a4;
    }

    else
    {
      v14 = v536;
    }

    if (*(v12 + 62) == 1)
    {
      v558 = *(v545 + 40);
      if (!v558)
      {
        v532 = a5;
        goto LABEL_769;
      }

      v559 = v502;
      v560 = *v545;
      v561 = v14;
      v562 = *(v14 + 12);
      v563 = *(v545 + 8);
      v564 = strlen(v558);
      v565 = heap_Calloc((*v12)[1], 1, (v564 + 1));
      if (v565)
      {
        v570 = v565;
        v571 = v562 + v563;
        strcpy(v565, *(v545 + 40));
        if (v15 < 2u)
        {
          LOWORD(v573) = 1;
          v16 = v707;
          v574 = v561;
        }

        else
        {
          v572 = (v691 + 44);
          v573 = 1;
          v16 = v707;
          v574 = v561;
          while (1)
          {
            v575 = *v572;
            v572 += 8;
            if (v571 < v575)
            {
              break;
            }

            if (v15 == ++v573)
            {
              LOWORD(v573) = v15;
              break;
            }
          }
        }

        v579 = (v574 + 32 * v573);
        memmove(v579 + 8, v579, 32 * (v15 - v573));
        *v579 = 58;
        *(v579 + 1) = v560;
        v579[3] = v571;
        v580 = (a4 + 76);
        v581 = a5;
        *(v579 + 2) = 0;
        *(v579 + 3) = v570;
        v532 = a5;
        v492 = a4;
        do
        {
          v582 = *(v580 - 1);
          if (v582 >= v573)
          {
            *(v580 - 1) = v582 + 1;
          }

          v583 = *v580;
          if (v583 >= v573)
          {
            *v580 = v583 + 1;
          }

          v580 += 52;
          --v581;
        }

        while (v581);
        v676 = v570;
        v15 = (v15 + 1);
        v14 = v561;
        v502 = v559;
        v13 = a10;
        goto LABEL_769;
      }

      log_OutPublic((*v12)[4], "POSPARSER", 68000, 0, v566, v567, v568, v569, v626);
      LODWORD(v586) = -1607458806;
      v10 = v682;
LABEL_846:
      v13 = a10;
LABEL_847:
      POSAndDiacritics = v586;
      v16 = __s1[0];
      v24 = v488;
LABEL_848:
      v110 = a9;
      goto LABEL_849;
    }

LABEL_769:
    v491 = v502 + 1;
    v490 = (v502 + 1);
    if (v490 < v532)
    {
      continue;
    }

    break;
  }

  v584 = __s1[0];
  v10 = v682;
LABEL_775:
  v585 = strlen(v584);
  LODWORD(v586) = 0;
  *(v14 + 16) = v585;
  if (*(v12 + 62) != 1 || v15 < 2u)
  {
    goto LABEL_847;
  }

  v587 = 0;
  v588 = (v14 + 88);
  v589 = 2;
  v590 = 1;
  while (2)
  {
    v591 = (v14 + 32 * v590);
    if (*v591 == 59 && v591[6] == 5)
    {
      if (v590 + 1 >= v15)
      {
        goto LABEL_790;
      }

      v592 = v588;
      v593 = v589;
      while (*(v592 - 6) != 59 || *v592 != 5)
      {
        ++v593;
        v592 += 8;
        if (v15 == v593)
        {
          goto LABEL_790;
        }
      }

      v594 = (v14 + 32 * v593);
      if (*v594 != 59 || v594[6] != 5)
      {
LABEL_790:
        v596 = *(v14 + 12) + v585;
        v595 = v591[3];
        goto LABEL_791;
      }

      v595 = v591[3];
      v596 = v594[3];
      if (v591[4] + v595 < v596)
      {
LABEL_791:
        v591[4] = v596 - v595;
      }

      v587 = 1;
    }

    ++v590;
    ++v589;
    v588 += 8;
    if (v590 != v15)
    {
      continue;
    }

    break;
  }

  v597 = v15 - 1;
  v598 = (v14 + 44);
  do
  {
    if (*(v598 - 3) == 59)
    {
      *v598 -= *(v14 + 12);
    }

    v598 += 8;
    --v597;
  }

  while (v597);
  if (v587 != 1)
  {
    LODWORD(v586) = 0;
    goto LABEL_847;
  }

  *__s2 = 0;
  LOWORD(v723) = 0;
  LOWORD(__c[0]) = 0;
  v724 = 0;
  *__src = 0;
  v586 = (v12[4][13])(a2, a3, 3, a7, __s2);
  if ((v586 & 0x80000000) != 0)
  {
    goto LABEL_853;
  }

  v599 = *__s2;
  if (!*__s2)
  {
LABEL_821:
    v611 = 1;
    v612 = 1;
    do
    {
      v613 = v586;
      v614 = (v14 + 32 * v612);
      if (*v614 == 59)
      {
        v615 = (v611 + 1);
        if (v15 > v615)
        {
          memmove(v614, (v14 + 32 * v615), 32 * (v15 - v615));
        }

        LOWORD(v15) = v15 - 1;
      }

      else
      {
        ++v612;
      }

      v586 = v613;
      v611 = v612;
    }

    while (v612 < v15);
    goto LABEL_847;
  }

  LOWORD(v600) = 1;
  while (1)
  {
    v601 = (v12[4][21])(a2, a3, v599, 1, 1, &v723, &v724 + 2);
    if (v601 < 0 || (v601 = (v12[4][21])(a2, a3, *__s2, 2, 1, __c, &v724 + 2), v601 < 0) || (v601 = (v12[4][21])(a2, a3, *__s2, 0, 1, __src, &v724 + 2), v601 < 0))
    {
      LODWORD(v586) = v601;
      v14 = v691;
      goto LABEL_853;
    }

    if (v600 >= v15)
    {
      v604 = a2;
      v603 = a3;
    }

    else
    {
      v600 = v600;
      v602 = (v691 + 32 * v600);
      v604 = a2;
      v603 = a3;
      while (1)
      {
        v605 = *v602;
        v602 += 8;
        if (v605 == 59)
        {
          break;
        }

        if (v15 == ++v600)
        {
          LOWORD(v600) = v15;
          break;
        }
      }
    }

    v14 = v691;
    v606 = (v691 + 32 * v600);
    if (*v606 == 59)
    {
      v607 = v723;
      if (v606[1] == v723)
      {
        v608 = LOWORD(__c[0]);
        if (v606[2] == LOWORD(__c[0]))
        {
          if (v606[3] != v723)
          {
            LOWORD(v723) = v606[3];
            v609 = (v12[4][20])(v604, v603, *__s2, 1, 1, &v723, &v724);
            if (v609 < 0)
            {
              break;
            }

            v608 = LOWORD(__c[0]);
            v607 = v606[3];
            v604 = a2;
            v603 = a3;
          }

          v610 = v606[4] + v607;
          if (v610 != v608)
          {
            LOWORD(__c[0]) = v610;
            v609 = (v12[4][20])(v604, v603, *__s2, 2, 1, __c, &v724);
            v604 = a2;
            v603 = a3;
            if (v609 < 0)
            {
              break;
            }
          }
        }
      }
    }

    v586 = (v12[4][15])(v604, v603, *__s2, __s2);
    if ((v586 & 0x80000000) != 0)
    {
      goto LABEL_853;
    }

    LOWORD(v600) = v600 + 1;
    v599 = *__s2;
    if (!*__s2)
    {
      goto LABEL_821;
    }
  }

  LODWORD(v586) = v609;
LABEL_853:
  POSAndDiacritics = v586;
LABEL_772:
  v110 = a9;
LABEL_773:
  v24 = __dst;
LABEL_849:
  *v13 = v15;
  *v10 = v16;
  *v110 = v14;
  if (v24)
  {
LABEL_850:
    heap_Free((*v12)[1], v24);
  }

LABEL_851:
  v618 = *MEMORY[0x1E69E9840];
  return POSAndDiacritics;
}

void *posparser_ProcessEnd(void *result)
{
  v1 = result;
  v2 = *(result + 96);
  if (*(result + 96))
  {
    v3 = 0;
    do
    {
      v4 = *(v1[11] + 8 * v3);
      if (v4)
      {
        result = heap_Free(*(*v1 + 8), v4);
        *(v1[11] + 8 * v3) = 0;
        v2 = *(v1 + 96);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v5 = v1[11];
  if (v5)
  {
    result = heap_Free(*(*v1 + 8), v5);
    v1[11] = 0;
  }

  v6 = v1[10];
  if (v6)
  {
    result = heap_Free(*(*v1 + 8), v6);
    v1[10] = 0;
  }

  v7 = v1[14];
  if (v7)
  {
    result = heap_Free(*(*v1 + 8), v7);
    v1[14] = 0;
  }

  v8 = v1[13];
  if (v8)
  {
    result = heap_Free(*(*v1 + 8), v8);
    v1[13] = 0;
  }

  v9 = v1[15];
  if (v9)
  {
    result = heap_Free(*(*v1 + 8), v9);
    v1[15] = 0;
  }

  v10 = v1[16];
  if (v10)
  {
    result = heap_Free(*(*v1 + 8), v10);
    v1[16] = 0;
  }

  v11 = v1[17];
  if (v11)
  {
    result = heap_Free(*(*v1 + 8), v11);
    v1[17] = 0;
  }

  v12 = v1[18];
  if (v12)
  {
    result = heap_Free(*(*v1 + 8), v12);
    v1[18] = 0;
  }

  v13 = v1[20];
  if (*(v1 + 84))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      heap_Free(*(*v1 + 8), *(v13 + v14 + 8));
      v16 = v1[20] + v14;
      *(v16 + 8) = 0;
      heap_Free(*(*v1 + 8), *(v16 + 24));
      v13 = v1[20];
      *(v13 + v14 + 24) = 0;
      if (*(v13 + v14 + 40))
      {
        heap_Free(*(*v1 + 8), *(v13 + v14 + 40));
        v13 = v1[20];
        *(v13 + v14 + 40) = 0;
      }

      ++v15;
      v14 += 56;
    }

    while (v15 < *(v1 + 84));
    *(v1 + 84) = 0;
  }

  else if (!v13)
  {
    goto LABEL_30;
  }

  result = heap_Free(*(*v1 + 8), v13);
  v1[20] = 0;
LABEL_30:
  v17 = v1[22];
  if (v17)
  {
    result = heap_Free(*(*v1 + 8), v17);
    v1[22] = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t posparser_GrowAndInsert(void *a1, uint64_t *a2, __int16 a3, __int16 a4, unsigned int a5, int a6, unsigned int a7, unsigned __int16 *a8, _WORD *a9)
{
  LODWORD(v11) = a6;
  v15 = *a2;
  v16 = a3 - a4;
  v17 = *a8;
  v18 = *a9;
  if (v17 + (a3 - a4) <= v18)
  {
    v31 = a2;
    v32 = a8;
  }

  else
  {
    *a9 = v18 + 10;
    v19 = heap_Realloc(*(*a1 + 8), v15, (v18 + 10) + 1);
    if (!v19)
    {
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v20, v21, v22, v23, v29);
      return 2687508490;
    }

    v15 = v19;
    v31 = a2;
    v32 = a8;
    v17 = *a8;
  }

  v30 = v16;
  memmove((v15 + a5 + v16), (v15 + a5), (v17 - a5));
  if (v11 < a7)
  {
    v11 = v11;
    v24 = a1[25];
    do
    {
      if (*(v24 + 6 * v11 + 2))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          *(v15 + a5++) = *(v24 + 6 * v11 + v25 + 2);
          v25 = ++v26;
          v24 = a1[25];
        }

        while (strlen((v24 + 6 * v11 + 2)) > v26);
      }

      ++v11;
    }

    while (v11 != a7);
  }

  result = 0;
  v28 = *v32 + v30;
  *v32 = v28;
  *(v15 + v28) = 0;
  *v31 = v15;
  return result;
}

BOOL isPuncClass(void *a1, unsigned __int8 *a2)
{
  v4 = a1[16];
  if (!v4)
  {
    v4 = ".!?";
  }

  if (isCharInStr(a2, v4))
  {
    return 1;
  }

  v5 = a1[17];
  if (!v5)
  {
    v5 = ",:;";
  }

  if (isCharInStr(a2, v5))
  {
    return 1;
  }

  v6 = a1[18];
  if (!v6)
  {
    v6 = &puncClass3;
  }

  return isCharInStr(a2, v6) != 0;
}

size_t posparser_undoEmbeddedRules(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result >= 3u)
  {
    v5 = *(a1 + 184);
    v6 = 1;
    v7 = v5;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = __s[v6];
        do
        {
          v11 = *(a1 + 176);
          if (v10 == *(v11 + v8 + 1))
          {
            v10 = *(v11 + v8);
            __s[v6] = v10;
            v5 = *(a1 + 184);
          }

          ++v9;
          v8 += 2;
          v7 = v5;
        }

        while (v9 < v5);
      }

      ++v6;
    }

    while (v6 != result - 1);
  }

  return result;
}

char *insertString(char *__src, char *__dst, const char *a3, int a4)
{
  strcpy(__dst, __src);
  v8 = &__dst[a4];
  v9 = strlen(a3);
  strncpy(v8, a3, v9);
  v10 = &v8[strlen(a3)];

  return strcpy(v10, &__src[a4 + 1]);
}

void *getPunctClassChar(uint64_t a1, int __c)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    if (strchr(v4, __c))
    {
      return &PUNCCLASS1CHAR;
    }
  }

  else if (memchr(".!?", __c, 4uLL))
  {
    return &PUNCCLASS1CHAR;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    if (strchr(v6, __c))
    {
      return &PUNCCLASS2CHAR;
    }
  }

  else if (memchr(",:;", __c, 4uLL))
  {
    return &PUNCCLASS2CHAR;
  }

  return &PUNCCLASS3CHAR;
}

char *insertStringPart(char *__src, char *__dst, const char *a3, int a4, unsigned int a5)
{
  strcpy(__dst, __src);
  v10 = &strncpy(&__dst[a4], a3, a5)[a5];

  return strcpy(v10, &__src[a4 + 1]);
}

uint64_t sparray_get(uint64_t a1, int a2)
{
  _32 = kh_get_32(a1, a2);
  if (_32 == *(a1 + 8))
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 40) + 4 * _32);
  }
}

uint64_t sparray_set(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    result = kh_put_32(result, a2, &v5);
    if (v5 == 1)
    {
      *(*(v4 + 40) + 4 * result) = a3;
    }
  }

  return result;
}

uint64_t qrk_new(uint64_t a1, uint64_t *a2)
{
  v4 = heap_Alloc(*(a1 + 8), 32);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 128;
    v6 = heap_Calloc(*(a1 + 8), 8, 128);
    result = 0;
    *(v5 + 8) = v6;
    *a2 = v5;
    if (v6)
    {
      return result;
    }

    v8 = *(v5 + 8);
    if (v8)
    {
      heap_Free(*(a1 + 8), v8);
    }

    heap_Free(*(a1 + 8), v5);
  }

  *a2 = 0;
  return 2585796618;
}

void *qrk_free(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v50 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = result;
    v7 = *v2;
    if (*v2 && *(v2 + 20))
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v49 = 0;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = 1;
      v17 = v7;
      do
      {
        v9 = v8 - 1;
        v10 = *(&v17 + v8 - 1);
        if (v10)
        {
          if (!v4)
          {
            v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
            heap_Free(v6[1], *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
            v12 = v6[1];
            v10 = v13;
            goto LABEL_10;
          }
        }

        else
        {
          v11 = *(v10 + 8);
          *(&v17 + v9) = *v10;
          v9 = v8 + 1;
          *(&v17 + v8) = v11;
          if (!v4)
          {
            v12 = v6[1];
LABEL_10:
            heap_Free(v12, v10);
          }
        }

        v8 = v9;
      }

      while (v9);
    }

    if (v4)
    {
      heap_Free(v6[1], *v5);
      heap_Free(v6[1], **(v5 + 8));
    }

    heap_Free(v6[1], *(v5 + 8));
    v14 = v6[1];
    v15 = *MEMORY[0x1E69E9840];

    return heap_Free(v14, v5);
  }

  else
  {
    v16 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t qrk_str2id(uint64_t a1, uint64_t *a2, char *__s, unsigned int *a4, unsigned int a5)
{
  if (!a5)
  {
    a5 = strlen(__s);
  }

  v9 = a5;
  if (*(a2 + 5))
  {
    for (i = *a2; (i & 1) == 0; i = *(i + ((((v12 | *(i + 20)) + 1) >> 5) & 8)))
    {
      v11 = *(i + 16);
      if (v11 >= a5)
      {
        v12 = 0;
      }

      else
      {
        v12 = __s[v11];
      }
    }

    v13 = (i & 0xFFFFFFFFFFFFFFFELL);
    v14 = *((i & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (a5)
    {
      v15 = 0;
      while (__s[v15] == *(v14 + v15))
      {
        if (a5 == ++v15)
        {
          LODWORD(v15) = a5;
          goto LABEL_20;
        }
      }
    }

    else
    {
      LODWORD(v15) = 0;
    }

    if (v15 == a5)
    {
LABEL_20:
      v21 = *(v14 + a5);
      if (!*(v14 + a5))
      {
        v20 = *v13;
        goto LABEL_25;
      }
    }

    else
    {
      v21 = *(v14 + v15) ^ __s[v15];
    }

    if (*(a2 + 4) == 1)
    {
LABEL_24:
      v20 = -1;
      goto LABEL_25;
    }

    do
    {
      v23 = v21;
      v21 &= v21 - 1;
    }

    while (v21);
    v16 = 2585796618;
    v24 = *(v14 + v15);
    v25 = heap_Alloc(*(a1 + 8), 24);
    if (v25)
    {
      v39 = v25;
      v26 = heap_Alloc(*(a1 + 8), 16);
      if (v26)
      {
        v27 = v26;
        v28 = heap_Alloc(*(a1 + 8), (v9 + 1));
        *(v27 + 8) = v28;
        if (v28)
        {
          v29 = v24 | ~v23;
          v30 = ~v23;
          v31 = (v29 + 1) >> 8;
          memcpy(v28, __s, (v9 + 1));
          *(*(v27 + 8) + v9) = 0;
          v20 = *(a2 + 5);
          v32 = *(a2 + 6);
          *(a2 + 5) = v20 + 1;
          *v27 = v20;
          v33 = v39;
          *(v39 + 16) = v15;
          *(v39 + 20) = v30;
          *(v39 + 8 * (v31 ^ 1)) = v27 | 1;
          if (v20 == v32)
          {
            v34 = v20 + (v20 >> 1);
            *(a2 + 6) = v34;
            v35 = heap_Realloc(*(a1 + 8), a2[1], 8 * v34);
            if (!v35)
            {
              return v16;
            }

            a2[1] = v35;
            v20 = *v27;
            v33 = v39;
          }

          else
          {
            v35 = a2[1];
          }

          *(v35 + 8 * v20) = v27;
          while (1)
          {
            v36 = *a2;
            if (*a2)
            {
              break;
            }

            v37 = *(v36 + 16);
            if (v37 > v15 || v37 == v15 && *(v36 + 20) > v30)
            {
              break;
            }

            if (v37 >= v9)
            {
              v38 = 0;
            }

            else
            {
              v38 = __s[v37];
            }

            a2 = (v36 + ((((v38 | *(v36 + 20)) + 1) >> 5) & 8));
          }

          *(v33 + 8 * v31) = v36;
          *a2 = v33;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    if (*(a2 + 4) == 1)
    {
      goto LABEL_24;
    }

    v16 = 2585796618;
    v17 = heap_Alloc(*(a1 + 8), 16);
    if (v17)
    {
      v18 = v17;
      v19 = heap_Alloc(*(a1 + 8), (v9 + 1));
      *(v18 + 8) = v19;
      if (v19)
      {
        memcpy(v19, __s, (v9 + 1));
        v20 = 0;
        *(*(v18 + 8) + v9) = 0;
        *v18 = 0;
        *a2 = v18 | 1;
        *a2[1] = v18;
        *(a2 + 5) = 1;
LABEL_25:
        v16 = 0;
        *a4 = v20;
      }
    }
  }

  return v16;
}

uint64_t qrk_id2str(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 20) <= a3)
  {
    wapiti_fatal(*(a1 + 32), "invalid identifier");
  }

  return *(*(*(a2 + 8) + 8 * a3) + 8);
}

uint64_t qrk_lock(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
}

uint64_t qp_new(uint64_t a1, uint64_t *a2)
{
  v4 = heap_Alloc(*(a1 + 8), 32);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    *(v4 + 16) = xmmword_1C37BE740;
    v6 = heap_Calloc(*(a1 + 8), 8, 128);
    *(v5 + 8) = v6;
    *a2 = v5;
    if (v6)
    {
      return 0;
    }

    v8 = *(v5 + 8);
    if (v8)
    {
      heap_Free(*(a1 + 8), v8);
    }

    heap_Free(*(a1 + 8), v5);
  }

  *a2 = 0;
  return 2585796618;
}

_DWORD *twigoffmax(_DWORD *result, _DWORD *a2, uint64_t a3, int a4)
{
  v4 = (((*(a3 + 8) & (a4 - 1)) >> 1) & 0x5555) + (*(a3 + 8) & (a4 - 1) & 0x5555);
  v5 = (((((v4 >> 2) & 0x33333333) + (v4 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v4 >> 2) & 0x33333333) + (v4 & 0x33333333)) & 0xF0F0F0F);
  *result = (v5 & 0xF) + (v5 >> 8);
  v6 = (((((*(a3 + 8) >> 1) & 0x5555) + (*(a3 + 8) & 0x5555u)) >> 2) & 0x33333333) + ((((*(a3 + 8) >> 1) & 0x5555) + (*(a3 + 8) & 0x5555)) & 0x33333333);
  *a2 = ((((v6 >> 4) & 0xFFFFFF0F) + (v6 & 0xF0F0F0F)) & 0xF) + ((((v6 >> 4) & 0xFFFFFF0F) + (v6 & 0xF0F0F0F)) >> 8);
  return result;
}

void *qp_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      if (!*v4 || (heap_Free(result[1], *v4), (v4 = *a2) != 0))
      {
        heap_Free(v3[1], v4);
      }
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      heap_Free(v3[1], *v5);
      heap_Free(v3[1], *(a2 + 8));
    }

    v6 = v3[1];

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t qp_str2id(uint64_t a1, uint64_t a2, char *__s, int *a4, unsigned int a5)
{
  v5 = a5;
  if (!a5)
  {
    v5 = strlen(__s);
  }

  v10 = *a2;
  if (!*a2)
  {
    if (*(a2 + 16) != 1)
    {
      v26 = 2585796618;
      v27 = heap_Calloc(*(a1 + 8), *(a2 + 24), 8);
      *(a2 + 8) = v27;
      if (v27)
      {
        v28 = heap_Alloc(*(a1 + 8), 16);
        if (v28)
        {
          v29 = v28;
          v30 = heap_Alloc(*(a1 + 8), v5 + 1);
          *(v29 + 8) = v30;
          if (v30)
          {
            memcpy(v30, __s, v5 + 1);
            v26 = 0;
            *(*(v29 + 8) + v5) = 0;
            *v29 = 0;
            *a2 = v29 | 1;
            **(a2 + 8) = v29;
            *(a2 + 20) = 1;
            *a4 = 0;
          }
        }
      }

      return v26;
    }

    goto LABEL_31;
  }

  for (; (v10 & 1) == 0; v10 = *(*v10 + 8 * v18))
  {
    v11 = *(v10 + 12);
    if (v11 >= v5)
    {
      v13 = *(v10 + 8);
      v15 = 1;
    }

    else
    {
      v12 = __s[v11];
      v13 = *(v10 + 8);
      if ((v13 & 0x10000) != 0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v15 = 1 << ((((v14 + 254) ^ 0xF) & v12) >> (8 - 4 * v14));
    }

    if ((v15 & v13) != 0)
    {
      v16 = (((v13 & (v15 - 1)) >> 1) & 0x5555) + (v13 & (v15 - 1) & 0x5555);
      v17 = (((((v16 >> 2) & 0x33333333) + (v16 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v16 >> 2) & 0x33333333) + (v16 & 0x33333333)) & 0xF0F0F0F);
      v18 = (v17 & 0xF) + (v17 >> 8);
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = v10 & 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    v20 = *(v19 + 8);
    if (*__s == *v20)
    {
      v21 = 0;
      v22 = v20 + 1;
      do
      {
        if (v5 - 1 == v21)
        {
          goto LABEL_26;
        }

        v23 = __s[v21 + 1];
        v24 = v22[v21++];
      }

      while (v23 == v24);
      v25 = v21 < v5;
    }

    else
    {
      LODWORD(v21) = 0;
      v25 = 1;
    }

    if (*(a2 + 16) == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (!*(*(v19 + 8) + v5))
  {
    v26 = 0;
    v31 = *v19;
    goto LABEL_39;
  }

  if (*(a2 + 16) == 1)
  {
LABEL_31:
    v26 = 0;
    v31 = -1;
LABEL_39:
    *a4 = v31;
    return v26;
  }

  v25 = 0;
  LODWORD(v21) = v5;
LABEL_32:
  v26 = 2585796618;
  v32 = heap_Alloc(*(a1 + 8), 16);
  if (!v32)
  {
    return v26;
  }

  v33 = v32;
  v34 = heap_Calloc(*(a1 + 8), 3, 8);
  if (!v34)
  {
    return v26;
  }

  v91 = v34;
  v35 = heap_Alloc(*(a1 + 8), v5 + 1);
  *(v33 + 8) = v35;
  if (!v35)
  {
    goto LABEL_41;
  }

  memcpy(v35, __s, v5 + 1);
  *(*(v33 + 8) + v5) = 0;
  v36 = *(a2 + 20);
  *(a2 + 20) = v36 + 1;
  *v33 = v36;
  *a4 = v36;
  v37 = *v33;
  if (*v33 != *(a2 + 24))
  {
    v39 = *(a2 + 8);
    v41 = v91;
    v40 = v25;
    goto LABEL_44;
  }

  v38 = v37 + (v37 >> 1);
  *(a2 + 24) = v38;
  v39 = heap_Realloc(*(a1 + 8), *(a2 + 8), 8 * v38);
  v40 = v25;
  if (!v39)
  {
LABEL_41:
    v26 = 0;
    goto LABEL_42;
  }

  *(a2 + 8) = v39;
  v37 = *v33;
  v41 = v91;
LABEL_44:
  *(v39 + 8 * v37) = v33;
  if (v40)
  {
    v44 = *(v19 + 8);
    v45 = strlen(v44);
    v46 = __s[v21];
    if (v45 <= v21)
    {
      v48 = 1;
      v49 = 1 << (__s[v21] >> 4);
      v47 = v44[v21];
    }

    else
    {
      v47 = v44[v21];
      if ((v47 ^ v46) >= 0x10)
      {
        v48 = 1;
      }

      else
      {
        v48 = 2;
      }

      v49 = 1 << ((((v48 + 254) ^ 0xF) & v46) >> (8 - 4 * v48));
    }

    v41 = v91;
  }

  else
  {
    v47 = *(*(v19 + 8) + v21);
    v49 = 1;
    v48 = 1;
  }

  v50 = v33 | 1;
  *v41 = v33 | 1;
  v51 = *a2;
  v41[2] = 0;
  if (v51)
  {
    v90 = 0;
    v61 = v49;
LABEL_76:
    v62 = 0;
    v41[1] = v51;
    v63 = 1;
    do
    {
      v64 = *(a1 + 8);
      if (v63)
      {
        v62 = heap_Calloc(v64, 1, 16);
        if (!v62)
        {
          return v26;
        }
      }

      else
      {
        heap_Free(v64, v62);
        v62 = 0;
      }

      v63 = v62 == 0;
    }

    while (!v62 || (v62 & 1) != 0);
    v65 = v91[2];
    v66 = 1 << ((((v48 + 254) ^ 0xF) & v47) >> (8 - 4 * v48));
    if (!v47)
    {
      v66 = 1;
    }

    v67 = ((v48 << 16) - 0x10000) | v61;
    *(v62 + 8) = v66 | v67;
    *(v62 + 12) = v21;
    v68 = v61 - 1;
    v69 = ((((v66 | v67) & v68) >> 1) & 0x5555) + ((v66 | v67) & v68 & 0x5555);
    v70 = (((((v69 >> 2) & 0x33333333) + (v69 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v69 >> 2) & 0x33333333) + (v69 & 0x33333333)) & 0xF0F0F0F);
    v71 = (v70 & 0xF) + (v70 >> 8) + 1;
    v72 = v66 - 1;
    v73 = (((v72 & v67) >> 1) & 0x5555) + (v72 & v67 & 0x5555);
    v74 = (((((v73 >> 2) & 0x33333333) + (v73 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v73 >> 2) & 0x33333333) + (v73 & 0x33333333)) & 0xF0F0F0F);
    v75 = (v74 & 0xF) + (v74 >> 8);
    if (v71 <= v75 + 1)
    {
      v76 = v75 + 1;
    }

    else
    {
      v76 = v71;
    }

    if (v76 <= 2)
    {
      v77 = 2;
    }

    else
    {
      v77 = v76;
    }

    v78 = heap_Calloc(*(a1 + 8), v77, 8);
    v43 = v91;
    *v62 = v78;
    if (v78)
    {
      v26 = 0;
      v79 = *(v62 + 8);
      v80 = (((v79 & v68) >> 1) & 0x5555) + (v79 & v68 & 0x5555);
      v81 = (((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) & 0xF0F0F0F);
      *(v78 + 8 * ((v81 & 0xF) + (v81 >> 8))) = *v91;
      v82 = (((v79 & v72) >> 1) & 0x5555) + (v79 & v72 & 0x5555);
      v83 = (((((v82 >> 2) & 0x33333333) + (v82 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v82 >> 2) & 0x33333333) + (v82 & 0x33333333)) & 0xF0F0F0F);
      *(*v62 + 8 * ((v83 & 0xF) + (v83 >> 8))) = v91[1];
      v84 = (v65 + 8 * v90);
      if (!v65)
      {
        v84 = a2;
      }

      *v84 = v62;
    }

    goto LABEL_95;
  }

  v52 = 0;
  while (1)
  {
    v53 = *(v51 + 12);
    if (v53 >= v5)
    {
      v55 = 1;
    }

    else
    {
      v54 = (*(v51 + 10) & 1) != 0 ? 2 : 1;
      v55 = 1 << ((((v54 + 254) ^ 0xF) & __s[v53]) >> (8 - 4 * v54));
    }

    if (v53 == v21)
    {
      break;
    }

    if (v53 > v21)
    {
      goto LABEL_74;
    }

    v56 = *(v51 + 8);
LABEL_70:
    v58 = *v51;
    v41[2] = *v51;
    if ((v55 & v56) != 0)
    {
      v59 = (((v56 & (v55 - 1)) >> 1) & 0x5555) + (v56 & (v55 - 1) & 0x5555);
      v60 = (((((v59 >> 2) & 0x33333333) + (v59 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v59 >> 2) & 0x33333333) + (v59 & 0x33333333)) & 0xF0F0F0F);
      v52 = (v60 & 0xF) + (v60 >> 8);
    }

    else
    {
      v52 = 0;
    }

    v51 = *(v58 + 8 * v52);
    if (v51)
    {
LABEL_74:
      v61 = v49;
      v90 = v52;
      goto LABEL_76;
    }
  }

  v56 = *(v51 + 8);
  if ((v56 & 0x10000) != 0)
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  if (v48 != v57)
  {
    if (v48 < v57)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  v92 = 0;
  v85 = v49;
  twigoffmax(&v92 + 1, &v92, v51, v49);
  v86 = v92;
  v87 = heap_Realloc(*(a1 + 8), *v51, 8 * (v92 + 1));
  if (v87)
  {
    v88 = v87;
    v89 = (v87 + 8 * HIDWORD(v92));
    memmove(v89 + 1, v89, 8 * (v86 - HIDWORD(v92)));
    v26 = 0;
    *v89 = v50;
    *v51 = v88;
    *(v51 + 8) |= v85;
  }

LABEL_42:
  v43 = v91;
LABEL_95:
  heap_Free(*(a1 + 8), v43);
  return v26;
}

uint64_t rdr_new(uint64_t a1, int a2, void *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 64);
  if (v6)
  {
    v7 = v6;
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 32) = 0;
    *(v6 + 20) = 0;
    *(v6 + 12) = 0;
    v8 = qrk_new(a1, (v6 + 40));
    if ((v8 & 0x80000000) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = qrk_new(a1, v7 + 6);
      if ((v9 & 0x80000000) == 0)
      {
        v7[7] = 0;
LABEL_16:
        *a3 = v7;
        return v9;
      }
    }

    v10 = v7[5];
    if (v10)
    {
      if (*(v10 + 8))
      {
        heap_Free(*(a1 + 8), *(v10 + 8));
        v10 = v7[5];
      }

      heap_Free(*(a1 + 8), v10);
    }

    v11 = v7[6];
    if (v11)
    {
      if (*(v11 + 8))
      {
        heap_Free(*(a1 + 8), *(v11 + 8));
        v11 = v7[6];
      }

      heap_Free(*(a1 + 8), v11);
    }

    heap_Free(*(a1 + 8), v7);
    v7 = 0;
    goto LABEL_16;
  }

  return 2585796618;
}

uint64_t rdr_new_qp(uint64_t a1, int a2, void *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 64);
  if (v6)
  {
    v7 = v6;
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 32) = 0;
    *(v6 + 20) = 0;
    *(v6 + 12) = 0;
    v8 = qp_new(a1, (v6 + 40));
    if ((v8 & 0x80000000) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = qp_new(a1, v7 + 6);
      if ((v9 & 0x80000000) == 0)
      {
        v7[7] = 0;
LABEL_16:
        *a3 = v7;
        return v9;
      }
    }

    v10 = v7[5];
    if (v10)
    {
      if (*(v10 + 8))
      {
        heap_Free(*(a1 + 8), *(v10 + 8));
        v10 = v7[5];
      }

      heap_Free(*(a1 + 8), v10);
    }

    v11 = v7[6];
    if (v11)
    {
      if (*(v11 + 8))
      {
        heap_Free(*(a1 + 8), *(v11 + 8));
        v11 = v7[6];
      }

      heap_Free(*(a1 + 8), v11);
    }

    heap_Free(*(a1 + 8), v7);
    v7 = 0;
    goto LABEL_16;
  }

  return 2585796618;
}

void *rdr_free(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = 0;
      do
      {
        pat_free(v2, *(*(a1 + 32) + 8 * v4++));
      }

      while (v4 < *(a1 + 24));
      v3 = *(a1 + 32);
    }

    heap_Free(*(v2 + 8), v3);
  }

  v5 = *(a1 + 40);
  qrk_free(v2);
  v6 = *(a1 + 48);
  qrk_free(v2);
  wapiti_rules_unload(v2, *(a1 + 56));
  v7 = *(v2 + 8);

  return heap_Free(v7, a1);
}

void *rdr_free_qp(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = 0;
      do
      {
        pat_free(v2, *(*(a1 + 32) + 8 * v4++));
      }

      while (v4 < *(a1 + 24));
      v3 = *(a1 + 32);
    }

    heap_Free(*(v2 + 8), v3);
  }

  qp_free(v2, *(a1 + 40));
  qp_free(v2, *(a1 + 48));
  wapiti_rules_unload(v2, *(a1 + 56));
  v5 = *(v2 + 8);

  return heap_Free(v5, a1);
}

void *rdr_freeraw(uint64_t a1, unsigned int *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a2 + 1) + 8 * v4++));
    }

    while (v4 < *a2);
  }

  heap_Free(*(a1 + 8), *(a2 + 1));
  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}

void *rdr_freeseq(uint64_t a1, uint64_t a2)
{
  heap_Free(*(a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}