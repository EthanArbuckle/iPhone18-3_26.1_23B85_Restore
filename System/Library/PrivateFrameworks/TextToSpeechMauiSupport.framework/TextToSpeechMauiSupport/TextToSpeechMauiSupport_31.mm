uint64_t fe_pos_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 2240);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2313166856;
  }
}

uint64_t fe_pos_LoadMosyntData(_WORD *a1, uint64_t a2, uint64_t a3)
{
  __s1 = 0;
  result = com_mosynt_GetCfgParamVal(*(a3 + 112), *(a3 + 120), *(a3 + 128), "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((result & 0x80000000) == 0)
  {
    v7 = cstdlib_strcmp(__s1, "yes") == 0;
    result = kbsymtab_LoadData(a1, a2, *(a3 + 32), *(a3 + 40), (a3 + 152), v7);
    if ((result & 0x80000000) == 0)
    {
      result = fst_LoadData(a1, a2, (a3 + 168));
      if ((result & 0x80000000) == 0)
      {
        return sgram_LoadData(a1, a2, (a3 + 160));
      }
    }
  }

  return result;
}

uint64_t fe_pos_UnloadMosyntData(uint64_t a1)
{
  if (*(a1 + 152))
  {
    v2 = kbsymtab_UnloadData(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 152));
    *(a1 + 152) = 0;
    v3 = v2 & (v2 >> 31);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 160))
  {
    v4 = sgram_UnloadData(*(a1 + 8), *(a1 + 16), (a1 + 160));
    *(a1 + 160) = 0;
    if (v4 >= 0 || v3 <= -1)
    {
      v3 = v3;
    }

    else
    {
      v3 = v4;
    }
  }

  if (*(a1 + 168))
  {
    v6 = fst_UnloadData(*(a1 + 8), *(a1 + 16), (a1 + 168));
    *(a1 + 168) = 0;
    if (v6 >= 0 || v3 <= -1)
    {
      return v3;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t statcomp_getDctInfo(void *a1, const char *a2, uint64_t a3, void *a4, unsigned __int8 *a5, _DWORD *a6)
{
  v16 = 0;
  v15 = 0;
  *a6 = 0;
  v10 = (*(a1[50] + 96))(a1[48], a1[49], "compounds_feature_info", a3, &v16, &v15, a5);
  if ((v10 & 0x80000000) == 0 && v15)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(v16 + 8 * v11);
      v13 = cstdlib_strchr(v12, *a5);
      if (v13)
      {
        if (!cstdlib_strncmp(v12, a2, (v13 - v12)))
        {
          break;
        }
      }

      if (++v11 >= v15)
      {
        return v10;
      }
    }

    *a4 = *(v16 + 8 * v11);
    *a6 = 1;
  }

  return v10;
}

uint64_t statcomp_getSyllCount(const char *a1)
{
  if (a1)
  {
    v1 = a1;
    if (cstdlib_strlen(a1) && cstdlib_strcmp(v1, "."))
    {
      v2 = cstdlib_strlen(v1);
      v3 = 1;
      v4 = v2;
      if (v2)
      {
        do
        {
          v5 = *v1++;
          if (v5 == 46)
          {
            ++v3;
          }

          --v4;
        }

        while (v4);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t setStatCOMPFeatureVector(unsigned int a1, uint64_t *a2, unsigned int a3, __int16 a4, uint64_t a5)
{
  v9 = a2[22];
  v10 = a2[23];
  v57 = *(a2[24] + 8 * a1);
  v58 = *(a2[21] + 8 * a1);
  v11 = a2[19];
  v12 = a2[20];
  v61 = 0;
  v56 = *(v10 + 8 * a1);
  __s = 0;
  v59 = 0;
  v13 = (a4 - a3 + 1);
  v18 = heap_Calloc(*(*a2 + 8), 1, 8 * v13 + 8);
  v19 = *a2;
  if (!v18)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v54 = v11;
  v20 = heap_Calloc(*(v19 + 8), 1, 8 * v13 + 8);
  if (!v20)
  {
LABEL_11:
    v19 = *a2;
LABEL_13:
    log_OutPublic(*(v19 + 32), "FE_POS", 35000, 0, v14, v15, v16, v17, v47);
    DctInfo = 2313166858;
    goto LABEL_14;
  }

  if (v13)
  {
    v51 = v9;
    v52 = v12;
    v21 = 0;
    v53 = a1;
    v22 = 96 * a3;
    v23 = v13 - 1;
    while (1)
    {
      v24 = heap_Calloc(*(*a2 + 8), 1, (*(a2[54] + v22 + 2) - *(a2[54] + v22)) + 1);
      v18[v21] = v24;
      if (!v24)
      {
        goto LABEL_11;
      }

      cstdlib_strncpy(v24, (a2[60] + *(a2[54] + v22)), *(a2[54] + v22 + 2) - *(a2[54] + v22));
      v18[v21][*(a2[54] + v22 + 2) - *(a2[54] + v22)] = 0;
      v25 = cstdlib_strlen(*(a2[54] + v22 + 56));
      v26 = heap_Calloc(*(*a2 + 8), 1, v25 + 1);
      v20[v21] = v26;
      if (!v26)
      {
        goto LABEL_11;
      }

      cstdlib_strcpy(v26, *(a2[54] + v22 + 56));
      if (v23 == v21)
      {
        v27 = (*(a2[50] + 144))(a2[48], a2[49], "normal", v18[v21], 128);
        if ((v27 & 0x80000000) != 0)
        {
          DctInfo = v27;
          goto LABEL_14;
        }

        if (v23 == v21)
        {
          v30 = 0;
          v49 = v13;
          v50 = v54 + 20 * a1;
          v48 = a5;
          while (1)
          {
            v31 = *(v50 + 2 * v30);
            DctInfo = statcomp_getDctInfo(a2, *(v52 + 8 * v53), v18[v30], &__s, &v61, &v59);
            if ((DctInfo & 0x80000000) != 0)
            {
              goto LABEL_14;
            }

            v55 = v30;
            if (v59 == 1)
            {
              v32 = __s;
              v33 = v61;
              v34 = *(*(v51 + 8 * v53) + 8);
              v35 = cstdlib_strchr(__s, v61);
              v36 = v32;
              if (v35)
              {
                *v35 = 0;
                v36 = v35 + 1;
              }

              if (v34)
              {
                v37 = v56;
                do
                {
                  v38 = cstdlib_strchr(v36, v33);
                  if (v38)
                  {
                    *v38++ = 0;
                  }

                  *v37++ = v36 - v32;
                  v36 = v38;
                  --v34;
                }

                while (v34);
              }
            }

            if (*(v58 + 1296) >= 2u)
            {
              break;
            }

            v13 = v49;
LABEL_42:
            v30 = v55 + 1;
            if (v55 + 1 == v13)
            {
              goto LABEL_14;
            }
          }

          v39 = 0;
          v40 = v59;
          v41 = __s;
          v13 = v49;
          while (2)
          {
            v42 = v39;
            if (cstdlib_strcmp(*(v48 + 8 * v39), "=") || (v43 = (*v57 + 12 * v42), *v43 != v31) || *(v43 + 1))
            {
              if (v40 == 1)
              {
                v44 = (*v57 + 12 * v42);
                if (*v44 == v31)
                {
                  v45 = *(v44 + 1);
                  if (v45 == 2 || v45 == 1)
                  {
                    v46 = statcomp_setFeature(v58, *a2, v42, v48, &v41[v56[v44[4]]]);
LABEL_38:
                    DctInfo = v46;
                    if ((v46 & 0x80000000) != 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }
              }

              v39 = v42 + 1;
              if (*(v58 + 1296) - 1 <= (v42 + 1))
              {
                goto LABEL_42;
              }

              continue;
            }

            break;
          }

          v46 = statcomp_setDynamicFeature(*a2, v58, v43[4], v42, v48, v18, v20, v49, v55);
          goto LABEL_38;
        }
      }

      v22 += 96;
      ++v21;
    }
  }

  DctInfo = 0;
LABEL_14:
  freeWordList(*(*a2 + 8), v13, v18);
  freeWordList(*(*a2 + 8), v13, v20);
  return DctInfo;
}

void *freeWordList(void *result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *(a3 + 8 * v6);
      if (v8)
      {
        heap_Free(v5, v8);
        *(a3 + 8 * v7) = 0;
      }

      v6 = v7 + 1;
    }

    while (a2 >= (v7 + 1));

    return heap_Free(v5, a3);
  }

  return result;
}

uint64_t statcomp_useStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  result = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || *&__c[3] == 0)
    {
      return 0;
    }

    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (cstdlib_strcmp(**&__c[3], "YES") && cstdlib_strcmp(**&__c[3], "yes"))
    {
      return 0;
    }

    else
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t statcomp_processUserMarkup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v67 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v67), 0, &v66 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v66) == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v67), 0, &v62, &v66);
    if ((v9 & 0x80000000) == 0 && v66 >= 2u)
    {
      *(a4 + 424) = 0;
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v67), &v67);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v10 = v67;
      if (!v67)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v11 = (*(a1 + 168))(a2, a3, v10, 0, 1, &v64, &v66);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_63:
          v9 = v11;
          goto LABEL_64;
        }

        if (v64 <= 0xA && ((1 << v64) & 0x610) != 0)
        {
          v11 = (*(a1 + 168))(a2, a3, v67, 1, 1, &v63, &v66);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          v11 = (*(a1 + 168))(a2, a3, v67, 2, 1, &v63 + 2, &v66);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (v63 > HIWORD(v63))
          {
            v57 = 16049;
            goto LABEL_68;
          }

          v11 = (*(a1 + 184))(a2, a3, v67, 14, &v66 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (HIWORD(v66) == 1)
          {
            v11 = (*(a1 + 176))(a2, a3, v67, 14, &v61, &v66);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (hlp_NLUStrFind(v61, "S_COMP", &v60, &v59))
            {
              if (!*(a4 + 424))
              {
                v13 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v13;
                if (!v13)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v61);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v18 = v59;
              if (v59)
              {
                v19 = v60 + 1;
                v20 = v59 - 1;
                v21 = __s;
                v22 = &v67 + 3;
                while (1)
                {
                  v23 = *(v19 - 1);
                  if (v23 == 43)
                  {
                    break;
                  }

                  *v21++ = v23;
                  ++v19;
                  --v22;
                  if (--v20 == -1)
                  {
                    goto LABEL_28;
                  }
                }

                *v21 = 0;
                cstdlib_strncpy(__dst, v19, v20);
                v22[v59] = 0;
                hlp_NLUStrSet(*(a4 + 408), "S_COMPPOS", __dst);
              }

              else
              {
LABEL_28:
                __s[v18] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "S_COMP", __s);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v24, v25, v26, v61);
              v27 = *(a1 + 160);
              v28 = v67;
              v29 = cstdlib_strlen(*(a4 + 408));
              v11 = v27(a2, a3, v28, 14, (v29 + 1), *(a4 + 408), &v65);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              cstdlib_strcpy(*(a4 + 408), "");
            }

            if (hlp_NLUStrFind(v61, "E_COMP", &v60, &v59))
            {
              if (!*(a4 + 424))
              {
                v30 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v30;
                if (!v30)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v61);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v31 = v59;
              if (v59)
              {
                v32 = v60 + 1;
                v33 = v59 - 1;
                v34 = __s;
                v35 = &v67 + 3;
                while (1)
                {
                  v36 = *(v32 - 1);
                  if (v36 == 43)
                  {
                    break;
                  }

                  *v34++ = v36;
                  ++v32;
                  --v35;
                  if (--v33 == -1)
                  {
                    goto LABEL_41;
                  }
                }

                *v34 = 0;
                cstdlib_strncpy(__dst, v32, v33);
                v35[v59] = 0;
                hlp_NLUStrSet(*(a4 + 408), "E_COMPPOS", __dst);
              }

              else
              {
LABEL_41:
                __s[v31] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "E_COMP", __s);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v37, v38, v39, v61);
              v40 = *(a1 + 160);
              v41 = v67;
              v42 = cstdlib_strlen(*(a4 + 408));
              v11 = v40(a2, a3, v41, 14, (v42 + 1), *(a4 + 408), &v65);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              cstdlib_strcpy(*(a4 + 408), "");
            }

            if (hlp_NLUStrFind(v61, "I_COMP", &v60, &v59))
            {
              if (!*(a4 + 424))
              {
                v43 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v43;
                if (!v43)
                {
LABEL_67:
                  log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0, v14, v15, v16, v17, v58);
                  v57 = 8202;
LABEL_68:
                  v9 = v57 | 0x89E00000;
LABEL_64:
                  if (*(a4 + 424))
                  {
                    heap_Free(*(*a4 + 8), *(a4 + 408));
                    *(a4 + 408) = 0;
                    *(a4 + 424) = 0;
                  }

                  return v9;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v61);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v44 = v59;
              if (v59)
              {
                v45 = v60 + 1;
                v46 = v59 - 1;
                v47 = __s;
                v48 = &v67 + 3;
                while (1)
                {
                  v49 = *(v45 - 1);
                  if (v49 == 43)
                  {
                    break;
                  }

                  *v47++ = v49;
                  ++v45;
                  --v48;
                  if (--v46 == -1)
                  {
                    goto LABEL_54;
                  }
                }

                *v47 = 0;
                cstdlib_strncpy(__dst, v45, v46);
                v48[v59] = 0;
                hlp_NLUStrSet(*(a4 + 408), "I_COMPPOS", __dst);
              }

              else
              {
LABEL_54:
                __s[v44] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "I_COMP", __s);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v50, v51, v52, v61);
              v53 = *(a1 + 160);
              v54 = v67;
              v55 = cstdlib_strlen(*(a4 + 408));
              v11 = v53(a2, a3, v54, 14, (v55 + 1), *(a4 + 408), &v65);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              cstdlib_strcpy(*(a4 + 408), "");
            }
          }
        }

        v9 = (*(a1 + 120))(a2, a3, v67, &v67);
        if ((v9 & 0x80000000) == 0)
        {
          v10 = v67;
          if (v67)
          {
            continue;
          }
        }

        goto LABEL_64;
      }
    }
  }

  return v9;
}

uint64_t statcomp_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  __s = 0;
  v89 = 0;
  v88 = 0;
  a4[107] = log_GetLogLevel(*(*a4 + 32)) > 4;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v97);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, v97, 0, &v96);
  if ((v9 & 0x80000000) == 0 && v96 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, v97, 0, &__s, &v95);
    if ((v9 & 0x80000000) == 0 && v95 >= 2u)
    {
      v10 = cstdlib_strlen(__s);
      v11 = heap_Calloc(*(*a4 + 8), 1, v10 + 1);
      *(a4 + 60) = v11;
      if (v11)
      {
        cstdlib_strcpy(v11, __s);
        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : start processing=%s", v16, v17, v18, *(a4 + 60));
        v19 = heap_Calloc(*(*a4 + 8), 1, 1024);
        *(a4 + 51) = v19;
        if (v19)
        {
          *(a4 + 212) = 1024;
          v20 = heap_Calloc(*(*a4 + 8), 1, 1024);
          *(a4 + 52) = v20;
          if (v20)
          {
            v8 = (*(a1 + 104))(a2, a3, 2, v97, &v96 + 2);
            if ((v8 & 0x80000000) == 0)
            {
              while (HIWORD(v96))
              {
                v8 = (*(a1 + 168))(a2, a3);
                if ((v8 & 0x80000000) != 0)
                {
                  return v8;
                }

                if (v94 <= 0xA && ((1 << v94) & 0x610) != 0)
                {
                  v8 = (*(a1 + 168))(a2, a3, HIWORD(v96), 1, 1, &v89, &v95);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v8 = (*(a1 + 168))(a2, a3, HIWORD(v96), 2, 1, &v89 + 2, &v95);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v89 > HIWORD(v89))
                  {
                    return 2313174705;
                  }

                  v8 = (*(a1 + 184))(a2, a3, HIWORD(v96), 17, &v96);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v96 == 1)
                  {
                    v8 = (*(a1 + 168))(a2, a3, HIWORD(v96), 17, 1, &v88, &v95);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }
                  }

                  else
                  {
                    v88 = v94 - 9 <= 1;
                  }

                  v8 = (*(a1 + 176))(a2, a3, HIWORD(v96), 3, &v90, &v95);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (HIWORD(v89) == v89)
                  {
                    log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v22, v23, v24, HIWORD(v89));
                  }

                  else
                  {
                    v8 = (*(a1 + 176))(a2, a3, HIWORD(v96), 14, &v93, &v95);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v25 = v93;
                    v26 = v88;
                    v27 = v90;
                    v101 = 0;
                    v100 = 0;
                    __src = 0;
                    v98 = 0;
                    v28 = *(*a4 + 8);
                    v29 = cstdlib_strlen(v93);
                    v30 = heap_Calloc(v28, 1, (v29 + 1));
                    if (!v30)
                    {
                      goto LABEL_70;
                    }

                    v31 = v30;
                    cstdlib_strcpy(v30, v25);
                    v35 = *(a4 + 220);
                    if (*(a4 + 220))
                    {
                      v36 = 0;
                      v37 = (*(a4 + 54) + 2);
                      while (1)
                      {
                        v38 = *(v37 - 1);
                        if (__PAIR64__(*v37, v38) == __PAIR64__(HIWORD(v89), v89))
                        {
                          break;
                        }

                        if (v89 >= v38 && HIWORD(v89) <= *v37)
                        {
                          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", v32, v33, v34, v89);
                          break;
                        }

                        ++v36;
                        v37 += 48;
                        if (v35 == v36)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    else
                    {
LABEL_35:
                      if (*(a4 + 221))
                      {
                        v39 = *(a4 + 54);
                        if (v35 + 2 > *(a4 + 221))
                        {
                          v40 = heap_Realloc(*(*a4 + 8), v39, 96 * *(a4 + 221) + 2016);
                          if (!v40)
                          {
                            goto LABEL_84;
                          }

                          *(a4 + 54) = v40;
                          cstdlib_memset((v40 + 96 * *(a4 + 220)), 0, 0x780uLL);
                          *(a4 + 221) += 20;
                          v39 = *(a4 + 54);
                        }
                      }

                      else
                      {
                        v45 = heap_Calloc(*(*a4 + 8), 1, 4801);
                        *(a4 + 54) = v45;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }

                        v39 = v45;
                        *(a4 + 221) = 50;
                      }

                      v46 = (v39 + 96 * *(a4 + 220));
                      *v46 = v89;
                      v46[1] = v26 == 1;
                      if (hlp_NLUStrFind(v31, "POS", &v101, &v100))
                      {
                        v47 = *(*a4 + 8);
                        v48 = cstdlib_strlen(v101);
                        v49 = heap_Calloc(v47, 1, (v48 + 1));
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 32) = v49;
                        if (!v49)
                        {
                          goto LABEL_84;
                        }

                        cstdlib_strcpy(v49, v101);
                        *(*(*(a4 + 54) + 96 * *(a4 + 220) + 32) + v100) = 0;
                      }

                      if (hlp_NLUStrFind(v31, "S_COMP", &__src, &v98))
                      {
                        v50 = *(*a4 + 8);
                        v51 = cstdlib_strlen(__src);
                        v52 = heap_Calloc(v50, 1, (v51 + 1));
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 40) = v52;
                        if (!v52)
                        {
                          goto LABEL_84;
                        }

                        cstdlib_strcpy(v52, __src);
                        *(*(*(a4 + 54) + 96 * *(a4 + 220) + 40) + v98) = 0;
                      }

                      if (hlp_NLUStrFind(v31, "E_COMP", &__src, &v98))
                      {
                        v53 = *(*a4 + 8);
                        v54 = cstdlib_strlen(__src);
                        v55 = heap_Calloc(v53, 1, (v54 + 1));
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 48) = v55;
                        if (!v55)
                        {
                          goto LABEL_84;
                        }

                        cstdlib_strcpy(v55, __src);
                        *(*(*(a4 + 54) + 96 * *(a4 + 220) + 48) + v98) = 0;
                      }

                      v56 = *(a4 + 54) + 96 * *(a4 + 220);
                      *(v56 + 12) = 0;
                      *(v56 + 20) = 0;
                      v57 = HIWORD(v89);
                      if (cstdlib_strlen(*(a4 + 60)) > v57 && *(*(a4 + 60) + HIWORD(v89)) == 95)
                      {
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 12) = 1;
                      }

                      if (v89)
                      {
                        v58 = *(a4 + 54);
                        v59 = *(a4 + 220);
                        if (*(*(a4 + 60) + v89 - 1) == 95)
                        {
                          *(v58 + 96 * *(a4 + 220) + 20) = 1;
                        }
                      }

                      else
                      {
                        v58 = *(a4 + 54);
                        v59 = *(a4 + 220);
                      }

                      v60 = v58 + 96 * v59;
                      if (*(v60 + 12) == 1 && *(v60 + 20) == 1)
                      {
                        *(v60 + 12) = 0;
                        *(v58 + 96 * v59 + 20) = 0;
                      }

                      v61 = *(*(a4 + 60) + HIWORD(v89) - 1);
                      v62 = v61 <= 0x3B && ((1 << v61) & 0xC00100000000000) != 0;
                      *(v58 + 96 * v59 + 24) = v62;
                      v63 = *(*a4 + 8);
                      v64 = cstdlib_strlen(v27);
                      v65 = heap_Calloc(v63, 1, (v64 + 1));
                      *(*(a4 + 54) + 96 * *(a4 + 220) + 56) = v65;
                      if (!v65)
                      {
LABEL_84:
                        v9 = 2313166858;
                        log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0, v41, v42, v43, v44, v87);
                        heap_Free(*(*a4 + 8), v31);
                        return v9;
                      }

                      cstdlib_strcpy(v65, v27);
                      ++*(a4 + 220);
                    }

                    heap_Free(*(*a4 + 8), v31);
                  }
                }

                v9 = (*(a1 + 120))(a2, a3, HIWORD(v96), &v96 + 2);
                if ((v9 & 0x80000000) != 0)
                {
                  return v9;
                }
              }

              v8 = (*(a1 + 104))(a2, a3, 2, v97, &v96 + 2);
              if ((v8 & 0x80000000) == 0)
              {
                while (HIWORD(v96))
                {
                  v8 = (*(a1 + 168))(a2, a3);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v94 == 6)
                  {
                    v8 = (*(a1 + 168))(a2, a3, HIWORD(v96), 1, 1, &v89, &v95);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v8 = (*(a1 + 168))(a2, a3, HIWORD(v96), 2, 1, &v89 + 2, &v95);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    if (v89 > HIWORD(v89))
                    {
                      return 2313174705;
                    }

                    v8 = (*(a1 + 176))(a2, a3, HIWORD(v96), 4, &v92, &v95);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v76 = addStatCOMPToken(*a4, &v89, v92, a4 + 216, v72, v73, v74, v75);
                    if ((v76 & 0x80000000) != 0)
                    {
                      v9 = v76;
                      if (v76 != -1981800448)
                      {
                        return v9;
                      }
                    }
                  }

                  v9 = (*(a1 + 120))(a2, a3, HIWORD(v96), &v96 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    return v9;
                  }
                }

                v8 = validateUserCompoundWords(a4, v66, 0, v67, v68, v69, v70, v71);
                if ((v8 & 0x80000000) == 0)
                {
                  if (v10)
                  {
                    for (i = 0; i != v10; ++i)
                    {
                      v81 = *(a4 + 60);
                      if (*(v81 + i) == 95)
                      {
                        *(v81 + i) = 32;
                      }
                    }
                  }

                  v82 = *(a4 + 220);
                  if (*(a4 + 220))
                  {
                    v83 = 0;
                    v84 = (*(a4 + 54) + 20);
                    do
                    {
                      if (*(v84 - 2) == 1)
                      {
                        v83 = 1;
                      }

                      *(v84 - 1) = v83;
                      v85 = *v84;
                      v84 += 24;
                      if (v85 == 1)
                      {
                        v83 = 0;
                      }

                      --v82;
                    }

                    while (v82);
                  }

                  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : internal processing=%s", v77, v78, v79, *(a4 + 60));
                  return printstatCOMPSent(*a4, a4[107], a4 + 51, *(a4 + 52), a4 + 212, (a4 + 108), *(a4 + 60), "after statcomp_getSentenceData()", 0);
                }
              }
            }

            return v8;
          }
        }
      }

LABEL_70:
      v9 = 2313166858;
      log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v87);
    }
  }

  return v9;
}

uint64_t addStatCOMPToken(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a4[4];
  v11 = *a2;
  if (!a4[4])
  {
    goto LABEL_14;
  }

  v12 = 0;
  v13 = v10 + 1;
  v14 = *a4;
  v15 = a2[1];
  v16 = (*a4 + 2);
  while (1)
  {
    v17 = *(v16 - 1);
    if (v11 == v17)
    {
      v13 = v12;
    }

    v18 = *v16;
    if (v15 == v18)
    {
      break;
    }

    if (v15 >= v17 && v15 < v18)
    {
      break;
    }

    v16 += 48;
    ++v12;
    v11 = *a2;
    if (v10 == v12)
    {
      goto LABEL_14;
    }
  }

  if (v10 + 1 != v13)
  {
    if (v12 >= v13)
    {
      v26 = 0;
      v27 = (v12 - v13);
      v28 = vdupq_n_s32(v27);
      v29 = (v27 + 4) & 0x1FFFC;
      do
      {
        v30 = v13 + v26;
        v31 = vmovn_s32(vcgeq_u32(v28, vorrq_s8(vdupq_n_s32(v26), xmmword_26ECCEBC0)));
        if (v31.i8[0])
        {
          *(v14 + 96 * (v13 + v26) + 8) = 1;
        }

        if (v31.i8[2])
        {
          *(v14 + 96 * (v30 + 1) + 8) = 1;
        }

        if (v31.i8[4])
        {
          *(v14 + 96 * (v30 + 2) + 8) = 1;
        }

        if (v31.i8[6])
        {
          *(v14 + 96 * (v30 + 3) + 8) = 1;
        }

        v26 += 4;
      }

      while (v29 != v26);
    }

    return 0;
  }

  else
  {
LABEL_14:
    v20 = 2313166848;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, a3);
    if (a4[4])
    {
      v24 = 0;
      v25 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v21, v22, v23, v25++);
        v24 += 96;
      }

      while (v25 < a4[4]);
    }
  }

  return v20;
}

uint64_t validateUserCompoundWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v28, 0, sizeof(v28));
  if (*(a1 + 220))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = "WARNING : skip user compound word as E_COMP(%s) found without starting S_COMP";
    while (1)
    {
      v14 = a1[54];
      if (*(v14 + v9 + 40))
      {
        if (v12 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : found consecutive S_COMP, assume %s on word %d is incorrect, try to continue...", a6, a7, a8, *(v14 + 96 * v11 + 40));
          v14 = a1[54];
        }

        v12 = 1;
        v11 = v10;
      }

      v15 = *(v14 + v9 + 48);
      if (!v15)
      {
        goto LABEL_13;
      }

      if (v12 != 1)
      {
        break;
      }

      if (cstdlib_strcmp(*(v14 + 96 * v11 + 40), v15))
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as S_COMP(%s) and E_COMP(%s) fields differ", v16, v17, v18, *(a1[54] + 96 * v11 + 40));
LABEL_12:
        v12 = 0;
        goto LABEL_13;
      }

      v19 = v13;
      v20 = *(a1[54] + 96 * v11 + 40);
      v21 = cstdlib_strstr(v20, "+");
      if (v21)
      {
        *v21 = 0;
        v25 = v21 + 1;
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "VALID USER COMPOUND WORD ADD from %d to %d", v22, v23, v24, v11);
        v26 = a1[54];
        *(v26 + 96 * v11 + 88) = 1;
        *(v26 + v9 + 89) = 1;
        result = setCOMPValues(a1, v11, v10, v28, v25, v20, 0, "MARKUP", "USER");
        v12 = 0;
        v13 = v19;
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as invalid fields in %s", v22, v23, v24, *(a1[54] + 96 * v11 + 40));
        v12 = 0;
      }

LABEL_13:
      ++v10;
      v9 += 96;
      if (v10 >= *(a1 + 220))
      {
        return 0;
      }
    }

    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, v13, a6, a7, a8, *(v14 + v9 + 48));
    goto LABEL_12;
  }

  return 0;
}

uint64_t printstatCOMPSent(uint64_t a1, int a2, const char **a3, char *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a6, a7, a8, a8);
  if (!*(a6 + 8))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  if (a9 != 1)
  {
    v17 = "[%2d] ";
    goto LABEL_6;
  }

  v17 = "statCOMP [%2d] ";
  sprintf(a4, "statCOMP [%2d] ");
  while (1)
  {
    v18 = statcomp_add2Str(a1, a3, a5, a4);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strncpy(a4, (a7 + *(*a6 + v15)), *(*a6 + v15 + 2) - *(*a6 + v15));
    a4[*(*a6 + v15 + 2) - *(*a6 + v15)] = 0;
    v18 = statcomp_add2Str(a1, a3, a5, a4);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v18 = statcomp_add2Str(a1, a3, a5, " ");
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v22 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 32));
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    v23 = *a6;
    if (*(*a6 + v15 + 12) == 1)
    {
      v22 = statcomp_add2Str(a1, a3, a5, " <HYPHEN");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 20) == 1)
    {
      v22 = statcomp_add2Str(a1, a3, a5, " HYPHEN>");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 24) == 1)
    {
      v22 = statcomp_add2Str(a1, a3, a5, " ENDINPUNC");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 8) == 1)
    {
      v22 = statcomp_add2Str(a1, a3, a5, " TOK");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 88) == 1)
    {
      v22 = statcomp_add2Str(a1, a3, a5, " <CW");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 72))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " POS:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v22 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 72));
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 80))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PROM:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v22 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 80));
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 89) == 1)
    {
      v22 = statcomp_add2Str(a1, a3, a5, " CW>");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 56))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PRON:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v22 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 56));
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v23 = *a6;
    }

    if (*(v23 + v15 + 64))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PRON(new):");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v22 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 64));
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }
    }

    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v19, v20, v21, *a3);
    cstdlib_strcpy(*a3, "");
    ++v16;
    v15 += 96;
    if (v16 >= *(a6 + 8))
    {
      return v22;
    }

LABEL_6:
    sprintf(a4, v17, v16);
  }

  return v18;
}

void *statcomp_freeSentenceData(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 408) = 0;
    *(a1 + 424) = 0;
  }

  v3 = *(a1 + 416);
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    *(a1 + 416) = 0;
  }

  v4 = *(a1 + 432);
  if (*(a1 + 440))
  {
    v5 = 0;
    v6 = 80;
    do
    {
      if (*(v4 + v6 - 48))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 48));
        v4 = *(a1 + 432);
        *(v4 + v6 - 48) = 0;
      }

      if (*(v4 + v6 - 8))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 8));
        v4 = *(a1 + 432);
        *(v4 + v6 - 8) = 0;
      }

      if (*(v4 + v6))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6));
        v4 = *(a1 + 432);
        *(v4 + v6) = 0;
      }

      if (*(v4 + v6 - 24))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 24));
        v4 = *(a1 + 432);
        *(v4 + v6 - 24) = 0;
      }

      if (*(v4 + v6 - 16))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 16));
        v4 = *(a1 + 432);
        *(v4 + v6 - 16) = 0;
      }

      if (*(v4 + v6 - 40))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 40));
        v4 = *(a1 + 432);
        *(v4 + v6 - 40) = 0;
      }

      if (*(v4 + v6 - 32))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 32));
        v4 = *(a1 + 432);
        *(v4 + v6 - 32) = 0;
      }

      ++v5;
      v6 += 96;
    }

    while (v5 < *(a1 + 440));
  }

  else if (!v4)
  {
    goto LABEL_25;
  }

  heap_Free(*(*a1 + 8), v4);
  *(a1 + 432) = 0;
LABEL_25:
  v7 = *(a1 + 480);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    *(a1 + 480) = 0;
  }

  return cstdlib_memset((a1 + 432), 0, 0x30uLL);
}

uint64_t statcomp_processCompounds(void **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v351 = *MEMORY[0x277D85DE8];
  v10 = a1[9];
  v11 = a1[39];
  v12 = a1[40];
  v13 = a1[45];
  __dst = a1[46];
  v344 = 0;
  v340 = 0;
  v341 = 0;
  v338 = 0;
  *a2 = 0;
  v339 = 0;
  v342 = 0;
  v343 = 0;
  log_OutText((*a1)[4], "FE_POS", 5, 0, "Compound Processing : with multi-word window=%d", a6, a7, a8, *(a1 + 172));
  v14 = a1[60];
  a1[56] = v14;
  v15 = (*a1)[1];
  v16 = cstdlib_strlen(v14);
  v17 = heap_Calloc(v15, 1, (v16 + 1));
  a1[57] = v17;
  if (!v17)
  {
    goto LABEL_342;
  }

  if (*(a1 + 220))
  {
    v22 = 0;
    v23 = 0;
    v24 = 4;
    do
    {
      v23 += cstdlib_strlen(a1[54][v24]) + 1;
      ++v22;
      v24 += 12;
    }

    while (v22 < *(a1 + 220));
    v25 = v23 + 1;
  }

  else
  {
    v25 = 1;
  }

  v26 = heap_Calloc((*a1)[1], 1, v25);
  a1[58] = v26;
  if (!v26)
  {
LABEL_342:
    v122 = 2313166858;
    log_OutPublic((*a1)[4], "FE_POS", 35000, 0, v18, v19, v20, v21, v294);
    return v122;
  }

  v304 = a2;
  v313 = v13;
  v314 = v12;
  v315 = v11;
  v316 = v10;
  v27 = *(a1 + 220);
  if (!*(a1 + 220))
  {
LABEL_343:
    v122 = printstatCOMPSent(*a1, *(a1 + 107), a1 + 51, a1[52], a1 + 212, (a1 + 54), a1[60], "after statcomp_processCompounds()", 1);
    if ((v122 & 0x80000000) == 0)
    {
      goto LABEL_353;
    }

    return v122;
  }

  v28 = 0;
  v297 = 0;
  v29 = 0;
  while (1)
  {
    v336 = v28;
    v30 = a1[54];
    v31 = v29;
    v32 = &v30[12 * v29];
    if (*(v32 + 2) == 1)
    {
      LODWORD(v33) = v29;
      if (v29 < v27)
      {
        v34 = &v30[12 * v29 + 1];
        v33 = v29;
        while (1)
        {
          v35 = *v34;
          v34 += 24;
          if (v35 != 1)
          {
            break;
          }

          if (v27 == ++v33)
          {
            LODWORD(v33) = v27;
            break;
          }
        }
      }

      if (v29 != v33)
      {
        LODWORD(v31) = (v33 - (LODWORD(v30[12 * v33 + 1]) == 0));
        v29 = (__PAIR64__(v33, v30[12 * v33 + 1]) - 1) >> 32;
      }

      v36 = WORD1(v30[12 * v31]);
      v37 = *v32;
      v38 = v36 - v37;
      v39 = v29;
      if ((v38 & 0xFF00) != 0)
      {
        v40 = 256;
      }

      else
      {
        v40 = v38;
      }

      cstdlib_strncpy(a1[52], a1[60] + v37, v40);
      *(a1[52] + v40) = 0;
      v29 = v39;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip TOK word %s from word %d to %d", v41, v42, v43, a1[52]);
      goto LABEL_65;
    }

    if (*(v32 + 88) == 1)
    {
      if (v29 >= v27)
      {
        v46 = v29;
      }

      else
      {
        v44 = &v30[12 * v29 + 11] + 1;
        while (1)
        {
          v45 = *v44;
          v44 += 96;
          if (v45)
          {
            break;
          }

          if (v27 == ++v31)
          {
            LODWORD(v31) = v27;
            v46 = v27;
            goto LABEL_61;
          }
        }

        v46 = v31;
        LODWORD(v31) = v31;
      }

LABEL_61:
      v60 = WORD1(v30[12 * v31]);
      v61 = *v32;
      v62 = v60 - v61;
      if ((v62 & 0xFF00) != 0)
      {
        v63 = 256;
      }

      else
      {
        v63 = v62;
      }

      cstdlib_strncpy(a1[52], a1[60] + v61, v63);
      *(a1[52] + v63) = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip user marked compound word %s from word %d to %d", v64, v65, v66, a1[52]);
      v29 = v46;
      goto LABEL_65;
    }

    v324 = v29;
    cstdlib_strcpy(a1[58], "");
    cstdlib_strcpy(a1[57], "");
    v345 = 0;
    v50 = *(a1 + 220);
    v51 = v50 + 1;
    v52 = a1[54];
    if (v50 <= v29)
    {
      v54 = v29;
      v55 = v336;
    }

    else
    {
      v53 = 0;
      v54 = v29;
      v55 = v336;
      while (1)
      {
        v56 = &v52[12 * v54];
        if (*(v56 + 6) == 1 || *(v56 + 88) == 1 || v54 - v336 + 1 >= *(a1 + 172))
        {
          break;
        }

        if (*(v56 + 3) == 1)
        {
          v53 = 1;
          v51 = v54;
        }

        if (HIDWORD(v52[12 * v54 + 2]) == 1)
        {
          v53 = 0;
        }

        if (v50 <= ++v54)
        {
          v54 = *(a1 + 220);
          break;
        }
      }

      if (v54 > v29)
      {
        v54 -= LOBYTE(v52[12 * v54 + 11]) == 1;
      }

      if (v54 > v29)
      {
        v54 -= HIDWORD(v52[12 * v54 + 1]) == 1;
      }

      if (v53 == 1 && !HIDWORD(v52[12 * v54 + 2]))
      {
        v54 = v29;
      }
    }

    v57 = v54 - (v50 == v54);
    if (HIDWORD(v52[12 * v57 + 2]) == 1 && v50 + 1 == v51)
    {
      goto LABEL_65;
    }

    if (v29 <= v57)
    {
      v58 = 0;
      v59 = v29;
      do
      {
        if (HIDWORD(v52[12 * v59 + 1]) == 1)
        {
          v58 = 1;
        }

        ++v59;
      }

      while (v59 <= v57);
      if (v29 <= v57)
      {
        break;
      }
    }

LABEL_57:
    if (v339 == 1)
    {
      v339 = 0;
      heap_Free((*a1)[1], v342);
      v342 = 0;
      if (v343)
      {
        heap_Free((*a1)[1], v343);
        v343 = 0;
      }
    }

LABEL_65:
    v28 = ++v29;
    v27 = *(a1 + 220);
    if (v29 >= v27)
    {
      goto LABEL_343;
    }
  }

  v67 = 0;
  v305 = v55;
  v306 = 0;
  v68 = v57;
  v334 = v29;
  do
  {
    v69 = v68 != v29 && v67 == 0;
    if (!v69)
    {
      break;
    }

    v308 = v68;
    v70 = 3 * v68;
    v335 = v68;
    cstdlib_strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v324]), WORD1(a1[54][12 * v68]) - LOWORD(a1[54][12 * v324]));
    *(a1[52] + WORD1(a1[54][4 * v70]) - LOWORD(a1[54][12 * v324])) = 0;
    if (v29 <= v335)
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = v29;
      do
      {
        v78 = &a1[54][12 * v77];
        if (*(v78 + 12) == 1)
        {
          v76 = 1;
          v75 = 1;
          ++v74;
        }

        v79 = v76 == 0;
        if (*(v78 + 20) == 1)
        {
          v76 = 0;
          v75 = v79;
        }

        ++v77;
      }

      while (v77 <= v335);
      if (v75 == 1 || v74 >= 2u)
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "skip bisected %s", v71, v72, v73, a1[52]);
        LODWORD(v68) = v335;
        goto LABEL_86;
      }
    }

    v338 = 0;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "processing [%d] %s", v71, v72, v73, v336);
    LOWORD(v68) = v335;
    while (1)
    {
LABEL_90:
      if (v58 == 1)
      {
        v81 = isCompoundWordMember(a1, 1, v29, v68, &v345, &v344, &v338);
        v82 = "HYPHEN";
        if ((v81 & 0x80000000) != 0)
        {
          goto LABEL_346;
        }
      }

      else
      {
        v81 = isCompoundWordMember(a1, 0, v29, v68, &v345, &v344, &v338);
        v82 = "OPEN";
        if ((v81 & 0x80000000) != 0)
        {
          goto LABEL_346;
        }
      }

      ++v338;
      if (v345 == 1)
      {
        break;
      }

      v68 = v335;
      if (!v345)
      {
        v241 = a1[54];
        v306 = v82;
        if (HIDWORD(v241[12 * v308 + 2]) == 1)
        {
          if (v29 <= v335)
          {
            do
            {
              if (HIDWORD(v241[12 * v68 + 1]))
              {
                break;
              }

              v68 = (v68 - 1);
            }

            while (v68 >= v29);
          }

          v67 = 0;
          goto LABEL_87;
        }

LABEL_86:
        v67 = 0;
        v68 = (v68 - 1);
        goto LABEL_87;
      }
    }

    v306 = v82;
    v83 = v344;
    v84 = 15 * v344;
    cstdlib_strcpy(v313, &v315[*(v314 + HIDWORD(v316[v84]))]);
    cstdlib_strcat(v313, "_firstword");
    cstdlib_strcpy(__dst, &v315[*(v314 + HIDWORD(v316[v84]))]);
    cstdlib_strcat(__dst, "_lastword");
    v85 = a1[9];
    v86 = a1[40];
    v332 = a1[39];
    v345 = 0;
    cstdlib_strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v324]), WORD1(a1[54][12 * v308]) - LOWORD(a1[54][12 * v324]));
    *(a1[52] + WORD1(a1[54][12 * v308]) - LOWORD(a1[54][12 * v324])) = 0;
    v307 = v83;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] Checking Compound Word Membership Filter for [%d] word %s compound rule %d", v87, v88, v89, v305);
    v326 = &v85[v84];
    if (!LOWORD(v85[v84 + 8]))
    {
      v122 = 0;
      v29 = v334;
LABEL_278:
      v239 = 0;
      v345 = 0;
      v240 = "  [FILTER] FAIL";
      goto LABEL_279;
    }

    v325 = v86;
    v329 = 0;
    v93 = 0;
    v94 = 0;
    v296 = 0;
    v298 = 0;
    v333 = 0;
    v29 = v334;
    v95 = v332;
    v96 = v326;
    do
    {
      v97 = 8 * v94;
      v98 = v94;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "  check filter %s", v90, v91, v92, &v95[*(v325 + *(v96[7] + 8 * v94))]);
      v327 = v98;
      if (!cstdlib_strcmp("ALGO_INLEXICON", &v95[*(v325 + *(v96[7] + v97))]))
      {
        v317 = v97;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_INLEXICON with ARG %s", v99, v100, v101, &v95[*(v325 + *(v96[7] + 8 * v98 + 4))]);
        v117 = *(v325 + *(v96[7] + 8 * v98 + 4));
        v118 = a1[9];
        v120 = a1[39];
        v119 = a1[40];
        v348 = 0;
        v346 = 0;
        v345 = 0;
        cstdlib_strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v324]), WORD1(a1[54][12 * v308]) - LOWORD(a1[54][12 * v324]));
        *(a1[57] + WORD1(a1[54][12 * v308]) - LOWORD(a1[54][12 * v324])) = 0;
        cstdlib_strncpy(__s1, a1[57], 0x7FuLL);
        v350 = 0;
        v81 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
        if ((v81 & 0x80000000) != 0)
        {
LABEL_346:
          v122 = v81;
          goto LABEL_353;
        }

        v347 = -1;
        v121 = (a1[50][12])(a1[48], a1[49], v120 + *(v119 + HIDWORD(v118[15 * v307])), __s1, &v348, &v347, &v346);
        v122 = v121;
        if ((v121 & 0x80000000) != 0)
        {
          goto LABEL_353;
        }

        v333 = v121;
        if (v347 != 1 || !v348)
        {
          v329 = 0;
          v93 = 0;
          v345 = 0;
          v29 = v334;
          v95 = v332;
          v96 = v326;
          v134 = v317;
          goto LABEL_260;
        }

        v123 = cstdlib_strchr(*v348, v346);
        if (v123)
        {
          v128 = v123;
          *v123 = 0;
          v129 = cstdlib_strcmp(*v348, &v332[v117]);
          v130 = 0;
          if (!v129)
          {
            v130 = 1;
            v345 = 1;
          }

          v131 = cstdlib_strchr(v128 + 1, v346);
          if (v131)
          {
            v132 = v131;
            *v131 = 0;
            if (v129)
            {
              v133 = cstdlib_strchr(v131 + 1, v346);
              v329 = v130;
              if (v133)
              {
                *v133 = 0;
              }

              v93 = v130;
              v29 = v334;
              v95 = v332;
              goto LABEL_118;
            }

            v201 = (*a1)[1];
            v202 = cstdlib_strlen(v128 + 1);
            v203 = heap_Calloc(v201, 1, (v202 + 1));
            v342 = v203;
            if (v203)
            {
              cstdlib_strcpy(v203, v128 + 1);
              v339 = 1;
              v204 = cstdlib_strchr(v132 + 1, v346);
              v29 = v334;
              if (v204)
              {
                *v204 = 0;
                v96 = v326;
                if (cstdlib_strlen(v132 + 1))
                {
                  v205 = (*a1)[1];
                  v206 = cstdlib_strlen(v132 + 1);
                  v207 = heap_Calloc(v205, 1, (v206 + 1));
                  v343 = v207;
                  if (!v207)
                  {
                    goto LABEL_350;
                  }

                  cstdlib_strcpy(v207, v132 + 1);
                  v339 = 1;
                  v29 = v334;
                }
              }

              else
              {
                v96 = v326;
              }

              v134 = v317;
              v220 = *(v96[7] + v317);
              LODWORD(v341) = *v96;
              v340 = v220;
              v329 = 1;
              v93 = 1;
LABEL_233:
              v95 = v332;
              goto LABEL_260;
            }

LABEL_350:
            v289 = 35000;
            v122 = 2313166858;
            goto LABEL_351;
          }

LABEL_348:
          v289 = 35003;
        }

        else
        {
LABEL_347:
          v289 = 35002;
        }

        v122 = 2313166848;
        goto LABEL_351;
      }

      if (!cstdlib_strcmp("ALGO_EXTENDEDLEXMATCH", &v95[*(v325 + *(v96[7] + v97))]))
      {
        v317 = v97;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDLEXMATCH with ARG %s", v102, v103, v104, &v95[*(v325 + *(v96[7] + 8 * v98 + 4))]);
        v330 = 0;
        v299 = 0;
        v309 = 0;
        v135 = 0;
        v319 = 0;
        v136 = 0;
        v322 = 0;
        v320 = *(v325 + *(v96[7] + 8 * v98 + 4));
        v312 = a1[45];
        __s2 = 0;
        v311 = a1[46];
        v348 = 0;
        v346 = 0;
        v345 = 0;
        v137 = 1;
        while (1)
        {
          v138 = v135;
          v139 = v137;
          v347 = -1;
          v140 = a1[57];
          v141 = a1[60];
          v142 = a1[54];
          if (v139)
          {
            cstdlib_strncpy(v140, &v141[LOWORD(v142[12 * v324])], WORD1(v142[12 * v324]) - LOWORD(v142[12 * v324]));
            *(a1[57] + WORD1(a1[54][12 * v324]) - LOWORD(a1[54][12 * v324])) = 0;
            v333 = (a1[50][12])(a1[48], a1[49], v312, a1[57], &v348, &v347, &v346);
            if ((v333 & 0x80000000) != 0)
            {
              goto LABEL_345;
            }

            if (v347 != 1 || (v146 = "MATCH ON FIRST WORD", !v348))
            {
              v147 = v138;
              goto LABEL_155;
            }
          }

          else
          {
            cstdlib_strncpy(v140, &v141[LOWORD(v142[12 * v308])], WORD1(v142[12 * v308]) - LOWORD(v142[12 * v308]));
            *(a1[57] + WORD1(a1[54][12 * v308]) - LOWORD(a1[54][12 * v308])) = 0;
            cstdlib_strncpy(__s1, a1[57], 0x7FuLL);
            v350 = 0;
            v81 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
            if ((v81 & 0x80000000) != 0)
            {
              goto LABEL_346;
            }

            v333 = (a1[50][12])(a1[48], a1[49], v311, __s1, &v348, &v347, &v346);
            if ((v333 & 0x80000000) != 0)
            {
LABEL_345:
              v122 = v333;
              goto LABEL_353;
            }

            if (v347 != 1 || (v146 = "MATCH ON LAST WORD", !v348))
            {
              v147 = v138;
LABEL_227:
              v164 = 0;
              v217 = v322 == 1;
              if (v322 != 1)
              {
                v138 = v147;
                v147 = __s2;
                goto LABEL_240;
              }

              v218 = v317;
              if (!v136)
              {
                v345 = 1;
                v342 = v147;
                v219 = v319;
                goto LABEL_244;
              }

              v138 = v147;
              v147 = __s2;
LABEL_241:
              if (!v322 && v136 == 1)
              {
                v345 = 1;
                v342 = v147;
                v219 = v309;
LABEL_244:
                v339 = v219;
LABEL_245:
                v29 = v334;
LABEL_246:
                v96 = v326;
                v134 = v317;
                v221 = *(v326[7] + v317);
                LODWORD(v341) = *v326;
                v340 = v221;
                v329 = 1;
                v93 = 1;
                goto LABEL_260;
              }

              if (v136 != 1)
              {
                v217 = 0;
              }

              if (v217)
              {
                v345 = 1;
                if (!cstdlib_strcmp(v138, v147))
                {
                  v345 = 1;
                  v342 = v138;
                  v339 = v319;
                  heap_Free((*a1)[1], v147);
                  goto LABEL_273;
                }

                if (v299 > v164)
                {
                  v345 = 1;
                  v342 = v138;
                  v339 = v319;
                  heap_Free((*a1)[1], v147);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose FIRST on frequency (%d > %d) set PRM=%s", v222, v223, v224, v299);
                  goto LABEL_273;
                }

                if (v164 > v299)
                {
                  v345 = 1;
                  v342 = v147;
                  v339 = v309;
                  heap_Free((*a1)[1], v138);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose LAST on frequency (%d > %d) set PRM=%s", v229, v230, v231, v164);
LABEL_273:
                  v93 = v345;
                  v29 = v334;
                  if (v345 == 1)
                  {
                    goto LABEL_246;
                  }

                  v329 = v345;
LABEL_118:
                  v96 = v326;
                  v134 = v317;
                  goto LABEL_260;
                }

                heap_Free((*a1)[1], v138);
                heap_Free((*a1)[1], v147);
                v232 = (*a1)[1];
                v233 = cstdlib_strlen("LS");
                v234 = heap_Calloc(v232, 1, (v233 + 1));
                v342 = v234;
                if (v234)
                {
                  v235 = v234;
                  cstdlib_strcpy(v234, "LS");
                  v339 = 1;
                  v345 = 1;
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MISMATCH in FIRST and LAST word PRM; set default=%s", v236, v237, v238, v235);
                  goto LABEL_245;
                }

                goto LABEL_350;
              }

              v329 = 0;
              v93 = 0;
              v345 = 0;
              v29 = v334;
              v134 = v218;
LABEL_205:
              v96 = v326;
              goto LABEL_260;
            }
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, v146, v143, v144, v145, 0);
          v148 = cstdlib_strchr(*v348, v346);
          if (!v148)
          {
            goto LABEL_347;
          }

          *v148 = 0;
          v149 = v148 + 1;
          v150 = cstdlib_strcmp(*v348, &v95[v320]);
          v151 = cstdlib_strchr(v149, v346);
          if (!v151)
          {
            goto LABEL_348;
          }

          v152 = v151;
          *v151 = 0;
          if (!v150 || v330 == 1)
          {
            v153 = (*a1)[1];
            v154 = cstdlib_strlen(v149);
            v155 = heap_Calloc(v153, 1, (v154 + 1));
            if (!v155)
            {
              goto LABEL_350;
            }

            v147 = v155;
            v156 = __s2;
            if ((v139 & 1) == 0)
            {
              v156 = v155;
            }

            v303 = v156;
            v157 = v309;
            if ((v139 & 1) == 0)
            {
              v157 = 1;
            }

            v302 = v157;
            if (v139)
            {
              v158 = v155;
            }

            else
            {
              v158 = v138;
            }

            v301 = v158;
            v159 = v319;
            if (v139)
            {
              v159 = 1;
            }

            v300 = v159;
            if (v139)
            {
              v160 = v136;
            }

            else
            {
              v160 = 1;
            }

            if (v139)
            {
              v161 = 1;
            }

            else
            {
              v161 = v322;
            }

            cstdlib_strcpy(v155, v149);
            v162 = cstdlib_strchr(v152 + 1, v346);
            if (v162)
            {
              *v162 = 0;
              v163 = LH_atoi(v152 + 1);
              v164 = v163;
              if ((v139 & 1) == 0)
              {
                v217 = v322 == 1;
                v136 = 1;
                v309 = 1;
                v95 = v332;
LABEL_240:
                v218 = v317;
                goto LABEL_241;
              }

              v330 = 1;
              v322 = 1;
              v319 = 1;
              v299 = v163;
            }

            else
            {
              v330 = 1;
              v322 = v161;
              v136 = v160;
              v319 = v300;
              v147 = v301;
              v309 = v302;
              __s2 = v303;
            }
          }

          else
          {
            v147 = v138;
          }

          v95 = v332;
LABEL_155:
          v137 = 0;
          v135 = v147;
          if ((v139 & 1) == 0)
          {
            goto LABEL_227;
          }
        }
      }

      if (!cstdlib_strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v95[*(v325 + *(v96[7] + v97))]))
      {
        v134 = v97;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDFIRSTWORDLEXMATCH with ARG %s", v105, v106, v107, &v95[*(v325 + *(v96[7] + 8 * v98 + 4))]);
        v165 = *(v325 + *(v96[7] + 8 * v98 + 4));
        v166 = a1[45];
        *__s1 = 0;
        LOBYTE(v347) = 0;
        v345 = 0;
        LOWORD(v348) = -1;
        cstdlib_strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v324]), WORD1(a1[54][12 * v324]) - LOWORD(a1[54][12 * v324]));
        *(a1[57] + WORD1(a1[54][12 * v324]) - LOWORD(a1[54][12 * v324])) = 0;
        v167 = (a1[50][12])(a1[48], a1[49], v166, a1[57], __s1, &v348, &v347);
        v122 = v167;
        if ((v167 & 0x80000000) != 0)
        {
          goto LABEL_353;
        }

        v333 = v167;
        if (v348 != 1 || !*__s1)
        {
          v174 = 0;
          v345 = 0;
          goto LABEL_204;
        }

        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH ON FIRST WORD", v168, v169, v170, 0);
        v171 = cstdlib_strchr(**__s1, v347);
        if (v171)
        {
          v172 = v171;
          *v171 = 0;
          v173 = cstdlib_strcmp(**__s1, &v332[v165]);
          v174 = 0;
          if (!v173)
          {
            v174 = 1;
            v345 = 1;
          }

          v175 = cstdlib_strchr(v172 + 1, v347);
          if (v175)
          {
            *v175 = 0;
            if (!v173)
            {
              v176 = (*a1)[1];
              v177 = cstdlib_strlen(v172 + 1);
              v178 = heap_Calloc(v176, 1, (v177 + 1));
              v342 = v178;
              v96 = v326;
              if (!v178)
              {
                goto LABEL_350;
              }

              cstdlib_strcpy(v178, v172 + 1);
              LODWORD(v341) = *v326;
              v179 = *(v326[7] + v134);
              v329 = 1;
              v339 = 1;
              v340 = v179;
              v93 = 1;
              v29 = v334;
              goto LABEL_233;
            }

LABEL_204:
            v329 = v174;
            v93 = v174;
            v29 = v334;
            v95 = v332;
            goto LABEL_205;
          }

          v289 = 35003;
        }

        else
        {
          v289 = 35002;
        }

        v122 = 2313166848;
LABEL_351:
        v290 = (*a1)[4];
LABEL_352:
        log_OutPublic(v290, "FE_POS", v289, 0, v124, v125, v126, v127, v295);
        goto LABEL_353;
      }

      if (cstdlib_strcmp("FILTER_NO_TOKEN_NO_ABBREVIATION", &v95[*(v325 + *(v96[7] + v97))]))
      {
        if (cstdlib_strcmp("FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", &v95[*(v325 + *(v96[7] + v97))]))
        {
          if (cstdlib_strcmp("ELSE_IGNORE", &v95[*(v325 + *(v96[7] + v97))]))
          {
            log_OutText((*a1)[4], "FE_POS", 5, 0, "    UNIMPLEMENTED filter %s - skip", v114, v115, v116, &v95[*(v325 + *(v96[7] + v97))]);
          }

          else
          {
            v296 = 1;
          }

          v134 = v97;
        }

        else
        {
          v134 = v97;
          log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", v111, v112, v113, 0);
          v345 = 1;
          v211 = v29;
          while (1)
          {
            v212 = v211;
            v213 = 3 * v211;
            log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d", v208, v209, v210, v211);
            v214 = a1[54];
            v215 = &v214[4 * v213];
            v29 = v334;
            if (*(v215 + 2) == 1 && (v212 != v334 && !LODWORD(v214[12 * v212 - 11]) || v212 != v335 && !LODWORD(v214[12 * v212 + 13])))
            {
              break;
            }

            v211 = v212 + 1;
            if ((v212 + 1) > v335)
            {
              v333 = 0;
              v329 = 1;
              v93 = 1;
              v298 = 1;
              goto LABEL_235;
            }
          }

          v329 = 0;
          v93 = 0;
          v333 = 0;
          v345 = 0;
LABEL_235:
          v95 = v332;
        }

        goto LABEL_260;
      }

      v318 = v97;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_NO_TOKEN_NO_ABBREVIATION", v108, v109, v110, 0);
      v183 = v29;
      v184 = 0;
      v331 = 0;
      v185 = 0;
      v333 = 0;
      v323 = *(a1 + 174);
      v321 = a1[44];
      v345 = 1;
      do
      {
        v186 = v183;
        v187 = 3 * v183;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d singleChar=%d hyphen=%d", v180, v181, v182, v183);
        v188 = a1[54];
        v189 = &v188[4 * v187];
        if (*(v189 + 2) == 1)
        {
          v216 = 0;
          v329 = 0;
          v345 = 0;
LABEL_223:
          v29 = v334;
          goto LABEL_256;
        }

        if (*(v189 + 4) == 1)
        {
          v190 = v331 + 1;
        }

        else
        {
          v190 = v331;
        }

        v331 = v190;
        v191 = v335;
        if (v186 == v335)
        {
          cstdlib_strncpy(a1[52], a1[60] + *v189, v189[1] - *v189);
          v192 = &a1[54][12 * v186];
          *(a1[52] + v192[1] - *v192) = 0;
          cstdlib_strncpy(__s1, a1[52], 0x7FuLL);
          v350 = 0;
          v333 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
          if ((v333 & 0x80000000) != 0)
          {
            goto LABEL_345;
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, "    check canonical form %s for last word (in case abbreviation)", v193, v194, v195, __s1);
          v196 = v323;
          if (v323)
          {
            v197 = 0;
            v198 = v321;
            do
            {
              v199 = cstdlib_strstr(__s1, *v198);
              if (v199)
              {
                v200 = v199 - __s1 == 1;
              }

              else
              {
                v200 = 0;
              }

              if (v200)
              {
                *v199 = 0;
                if (LODWORD(a1[54][12 * v186 + 2]) == 1)
                {
                  ++v184;
                }

                v185 = v185;
                v197 = 1;
              }

              ++v198;
              --v196;
            }

            while (v196);
            if (!v197)
            {
              v185 = 0;
            }

            v95 = v332;
          }

          else
          {
            v185 = 0;
          }

          v188 = a1[54];
          if (LOWORD(v188[12 * v186]) + 1 != WORD1(v188[12 * v186]))
          {
            if (cstdlib_strlen(__s1) != 1)
            {
              v191 = v335;
              goto LABEL_200;
            }

            v188 = a1[54];
          }

          v191 = v335;
        }

        else if (*v189 + 1 != v189[1])
        {
          goto LABEL_200;
        }

        if (LODWORD(v188[12 * v186 + 2]) == 1)
        {
          ++v184;
        }

        if (v186 == v334)
        {
          v185 = 1;
        }

LABEL_200:
        v183 = v186 + 1;
      }

      while ((v186 + 1) <= v191);
      if (v185)
      {
        v345 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation", v180, v181, v182, 0);
        v216 = 0;
        v329 = 0;
        goto LABEL_223;
      }

      if (v184 == v331)
      {
        v345 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation (countHyphenSingleChar=%d,countHyphen=%d)", v180, v181, v182, v331);
        v216 = 0;
        v329 = 0;
      }

      else
      {
        v216 = 1;
        v329 = 1;
      }

      v29 = v334;
LABEL_256:
      v96 = v326;
      v134 = v318;
      v122 = v333;
      if ((v333 & 0x80000000) != 0)
      {
        goto LABEL_353;
      }

      v69 = v216 == 0;
      v225 = v298;
      if (!v69)
      {
        v225 = 1;
      }

      v298 = v225;
      v93 = v329;
LABEL_260:
      if (cstdlib_strncmp(&v95[*(v325 + *(v96[7] + v134))], "FILTER_", 7uLL))
      {
        v226 = 0;
      }

      else
      {
        v226 = v93 == 1;
      }

      if (v226)
      {
        v93 = 1;
        goto LABEL_268;
      }

      v227 = cstdlib_strncmp(&v95[*(v325 + *(v96[7] + v134))], "FILTER_", 7uLL);
      v228 = v329;
      if (!(v227 | v329))
      {
        v240 = "  [FILTER] FAIL";
LABEL_287:
        v239 = v228 == 1;
        v122 = v333;
LABEL_279:
        log_OutText((*a1)[4], "FE_POS", 5, 0, v240, v90, v91, v92, 0);
        v68 = v335;
        if ((v122 & 0x80000000) != 0)
        {
          goto LABEL_353;
        }

        if (v239)
        {
          v67 = 1;
          v297 = v335;
          goto LABEL_87;
        }

        goto LABEL_90;
      }

      v93 = v329;
      if (v329 == 1)
      {
        v240 = "  [FILTER] SUCCESS";
        v228 = 1;
        goto LABEL_287;
      }

LABEL_268:
      v96 = v326;
      v94 = v327 + 1;
    }

    while (v327 + 1 < *(v326 + 32));
    if (v298 != 1)
    {
      v122 = v333;
      goto LABEL_278;
    }

    v122 = v333;
    if (v296 == 1)
    {
      v239 = 0;
      v345 = 0;
      v240 = "  [FILTER] SUCCESS but ELSE_IGNORE set so FAIL";
      goto LABEL_279;
    }

    v67 = 1;
    v345 = 1;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] SUCCESS", v90, v91, v92, 0);
    v68 = v335;
    v297 = v335;
    if ((v333 & 0x80000000) != 0)
    {
      goto LABEL_353;
    }

LABEL_87:
    v55 = v336;
  }

  while (v68 >= v29);
  if (v67 != 1)
  {
    goto LABEL_57;
  }

  log_OutText((*a1)[4], "FE_POS", 5, 0, "COMPOUND WORD SUCCESSFULLY PROCESSED %d to %d", v47, v48, v49, v55);
  v245 = v344;
  v246 = &a1[9][15 * v344];
  if (*(v246 + 96))
  {
    v247 = 0;
    v248 = 0;
    v249 = a1[39];
    v250 = a1[40];
    while (cstdlib_strcmp("SETDEFAULT", &v249[*(v250 + *(*(v246 + 88) + v247))]))
    {
      log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED POS rule %s %s - skip", v251, v252, v253, &v249[*(v250 + *(*(v246 + 88) + v247))]);
      ++v248;
      v247 += 8;
      if (v248 >= *(v246 + 96))
      {
        goto LABEL_300;
      }
    }

    v254 = &v249[*(v250 + *(*(v246 + 88) + v247 + 4))];
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT POS = %s", v251, v252, v253, v254);
  }

  else
  {
LABEL_300:
    v254 = &szStatCOMPDEFAULTPOS;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT POS %s", v242, v243, v244, &szStatCOMPDEFAULTPOS);
  }

  v258 = &a1[9][15 * v245];
  if (!*(v258 + 112))
  {
LABEL_320:
    v275 = "LS";
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT PROM %s", v255, v256, v257, "LS");
LABEL_321:
    v276 = 0;
    v277 = "DEFAULT";
LABEL_322:
    v270 = a1[54];
    LOBYTE(v270[12 * v324 + 11]) = 1;
    v29 = v297;
    BYTE1(v270[12 * v297 + 11]) = 1;
    v81 = setCOMPValues(a1, v334, v297, &v339, v254, v275, v276, v277, v306);
    if ((v81 & 0x80000000) != 0)
    {
      goto LABEL_346;
    }

    *v304 = 1;
    goto LABEL_57;
  }

  v259 = 0;
  v260 = 0;
  v337 = a1[20];
  v261 = a1[39];
  v262 = a1[40];
  v263 = v339;
  v264 = v340;
  while (2)
  {
    if (!cstdlib_strcmp("MATCHED_ALGO_INLEXICON", &v261[*(v262 + *(*(v258 + 104) + v259))]))
    {
      if (v263 == 1 && !cstdlib_strcmp("ALGO_INLEXICON", &v261[*(v262 + v264)]))
      {
        v275 = v342;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_INLEXICON : CACHED(ALGO_INLEXICON) PROM = %s", v255, v256, v257, v342);
        v276 = v343;
        v277 = &szStatCOMPSRCLEX;
        goto LABEL_322;
      }

LABEL_319:
      ++v260;
      v259 += 8;
      if (v260 >= *(v258 + 112))
      {
        goto LABEL_320;
      }

      continue;
    }

    break;
  }

  if (!cstdlib_strcmp("MATCHED_ALGO_EXTENDEDLEXMATCH", &v261[*(v262 + *(*(v258 + 104) + v259))]))
  {
    if (v263 == 1 && !cstdlib_strcmp("ALGO_EXTENDEDLEXMATCH", &v261[*(v262 + v264)]))
    {
      v275 = v342;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDLEXMATCH : CACHED(ALGO_EXTENDEDLEXMATCH) PROM = %s", v255, v256, v257, v342);
      v276 = 0;
      v277 = "EXTENDEDLEX";
      goto LABEL_322;
    }

    goto LABEL_319;
  }

  if (!cstdlib_strcmp("MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v261[*(v262 + *(*(v258 + 104) + v259))]))
  {
    if (v263 == 1 && !cstdlib_strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v261[*(v262 + v264)]))
    {
      v275 = v342;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH : CACHED(ALGO_EXTENDEDFIRSTWORDLEXMATCH) PROM = %s", v255, v256, v257, v342);
      v276 = 0;
      v277 = "EXTENDEDFIRSTWORDLEX";
      goto LABEL_322;
    }

    goto LABEL_319;
  }

  v265 = cstdlib_strcmp("IGTREE", &v261[*(v262 + *(*(v258 + 104) + v259))]);
  v266 = *(v258 + 104);
  if (v265)
  {
    if (!cstdlib_strcmp("SETDEFAULT", &v261[*(v262 + *(v266 + v259))]))
    {
      v275 = &v261[*(v262 + *(*(v258 + 104) + v259 + 4))];
      log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT PROM = %s", v267, v268, v269, v275);
      goto LABEL_321;
    }

    log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED PROM rule %s - skip", v267, v268, v269, &v261[*(v262 + *(*(v258 + 104) + v259))]);
    goto LABEL_319;
  }

  v271 = *(a1 + 72);
  if (*(a1 + 72))
  {
    v272 = 0;
    v273 = *(v262 + *(v266 + v259 + 4));
    v274 = a1[20];
    while (cstdlib_strcmp(v274[v272], &v261[v273]))
    {
      if (v271 == ++v272)
      {
        goto LABEL_328;
      }
    }
  }

  else
  {
LABEL_328:
    LOWORD(v272) = 0;
  }

  v278 = a1[20];
  v279 = a1[21][v272];
  v280 = heap_Calloc((*a1)[1], 1, 8 * *(v279 + 1296) - 8);
  if (!v280)
  {
    v122 = 2313166858;
    v290 = (*a1)[4];
    v289 = 35000;
    goto LABEL_352;
  }

  v281 = v280;
  *__s1 = 0;
  inited = statcomp_initFeatureVector(*a1, v280, (*(v279 + 1296) - 1));
  if ((inited & 0x80000000) != 0 || (inited = setStatCOMPFeatureVector(v272, a1, v334, v297, v281), (inited & 0x80000000) != 0) || (inited = igtree_Process(v279, v281, __s1), (inited & 0x80000000) != 0))
  {
    v283 = inited;
    v275 = 0;
  }

  else
  {
    v275 = *__s1;
    v283 = statcomp_dumpFeatureVectorAndResult(*a1, *(a1 + 107), a1 + 51, a1 + 212, "IGTREE RESULT=", v278[v272], v279, v281, *__s1);
  }

  statcomp_freeFeatureVector(*a1, v281, (*(v279 + 1296) - 1));
  heap_Free((*a1)[1], v281);
  v122 = v283;
  if ((v283 & 0x80000000) == 0)
  {
    v277 = v337[v272];
    v287 = cstdlib_strcmp(v275, "=");
    v288 = (*a1)[4];
    if (v287)
    {
      log_OutText(v288, "FE_POS", 5, 0, "SET IGTREE %s PROM = %s", v284, v285, v286, v277);
    }

    else
    {
      v275 = "LS";
      log_OutText(v288, "FE_POS", 5, 0, "OVERRIDE IGTEE NULL VALUE : SET DEFAULT PROM %s", v284, v285, v286, "LS");
    }

    v276 = 0;
    goto LABEL_322;
  }

LABEL_353:
  if (v342)
  {
    heap_Free((*a1)[1], v342);
    if (v343)
    {
      heap_Free((*a1)[1], v343);
    }
  }

  v291 = a1[57];
  if (v291)
  {
    heap_Free((*a1)[1], v291);
    a1[57] = 0;
  }

  v292 = a1[58];
  if (v292)
  {
    heap_Free((*a1)[1], v292);
    a1[58] = 0;
  }

  return v122;
}

uint64_t isCompoundWordMember(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  memcpy(__dst, (a1 + 8), 0x178uLL);
  v13 = a4 - a3 + 1;
  v79 = 0uLL;
  *a5 = 0;
  v14 = 96 * a3;
  v75 = a4;
  v15 = 3 * a4;
  cstdlib_strncpy(*(a1 + 416), (*(a1 + 480) + *(*(a1 + 432) + v14)), *(*(a1 + 432) + 32 * v15 + 2) - *(*(a1 + 432) + v14));
  *(*(a1 + 416) - *(*(a1 + 432) + v14) + *(*(a1 + 432) + 32 * v15 + 2)) = 0;
  v76 = a3;
  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] Check word[%d] %s %d words", v16, v17, v18, a3);
  matched = 0;
  v23 = &__dst[12];
  v24 = &__dst[13];
  if (a2)
  {
    v23 = &__dst[10];
    v24 = &__dst[11];
  }

  v73 = a7;
  v25 = *a7;
  v78 = *v24;
  if (v25 >= v78)
  {
    goto LABEL_51;
  }

  matched = 0;
  v26 = v13;
  v77 = *v23;
  v71 = a5;
  while (1)
  {
    v27 = *(v77 + 2 * v25);
    v28 = (__dst[8] + 120 * v27);
    if (v26 != *(v28 + 16))
    {
      goto LABEL_50;
    }

    v74 = v25;
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    TRYING RULE label=%s (%d words) compound word rule idx=%d", v19, v20, v21, __dst[38] + *(__dst[39] + 4 * *v28));
    if (!v26)
    {
      break;
    }

    v29 = 0;
    v30 = 0;
    v31 = *(a1 + 432);
    v32 = 96 * v76;
    v33 = v76;
    do
    {
      if (*(v31 + v32 + 12) == 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v30;
      }

      if (a2)
      {
        v35 = *(*(__dst[8] + 120 * v27 + 8) + 4 * v29);
        v36 = v35 == 1 && v34 == 0;
        v37 = "      Membership fails on wordType. Word %d is not hyphenated";
        if (v36 || (!v35 ? (v38 = v34 == 1) : (v38 = 0), v37 = "      Membership fails on wordType. Word %d should not be hyphenated)", v38))
        {
LABEL_21:
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, v37, v19, v20, v21, v33);
          v39 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v37 = "      Membership fails on wordType. Word %d is hyphenated";
        if (v34 == 1)
        {
          goto LABEL_21;
        }
      }

      v39 = 1;
LABEL_24:
      v31 = *(a1 + 432);
      if (*(v31 + v32 + 20) == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = v34;
      }

      if (!v39)
      {
        break;
      }

      ++v29;
      v33 = (v33 + 1);
      v32 += 96;
    }

    while (v29 < v26);
    if (v39)
    {
      break;
    }

LABEL_49:
    a5 = v71;
    v25 = v74;
LABEL_50:
    if (++v25 == v78)
    {
LABEL_51:
      log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", v19, v20, v21, 0);
      *a5 = 0;
      return matched;
    }
  }

  if (*(__dst[8] + 120 * v27 + 32))
  {
    v40 = 0;
    v41 = 0;
    v42 = 96 * v76 + 32;
    while (1)
    {
      cstdlib_strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + v42 - 32)), *(*(a1 + 432) + v42 - 30) - *(*(a1 + 432) + v42 - 32));
      *(*(a1 + 456) - *(*(a1 + 432) + v42 - 32) + *(*(a1 + 432) + v42 - 30)) = 0;
      cstdlib_strcpy(*(a1 + 464), *(*(a1 + 432) + v42));
      v43 = " ";
      if (*(*(a1 + 432) + v42 - 24) == 1)
      {
        v43 = &szStatCOMPHASTOK;
      }

      *(a1 + 472) = v43;
      WORD2(v79) = v76 + v41;
      LODWORD(v79) = 2;
      *(&v79 + 6) = 0;
      HIDWORD(v79) = 0;
      matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v79, *(__dst[8] + 120 * v27 + 24) + v40, &v79 + 3);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v47 = *(__dst[0] + 32);
      if (HIDWORD(v79) != 1)
      {
        log_OutText(v47, "FE_POS", 5, 0, "      Membership rule %d FAILS", v44, v45, v46, v41);
        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership FAIL on WORDN criteria - try extra rules...", v48, v49, v50, 0);
        if (!*(__dst[8] + 120 * v27 + 48))
        {
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      no extra membership rules - FAIL", v51, v52, v53, 0);
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", v64, v65, v66, 0);
          goto LABEL_49;
        }

        cstdlib_strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + 96 * v76)), *(*(a1 + 432) + 96 * v75 + 2) - *(*(a1 + 432) + 96 * v76));
        *(*(a1 + 456) - *(*(a1 + 432) + 96 * v76) + *(*(a1 + 432) + 96 * v75 + 2)) = 0;
        cstdlib_strcpy(*(a1 + 464), *(*(a1 + 432) + 96 * v76 + 32));
        if (v75 >= (v76 + 1))
        {
          v57 = v76 + 1;
          do
          {
            cstdlib_strcat(*(a1 + 464), " ");
            cstdlib_strcat(*(a1 + 464), *(*(a1 + 432) + 96 * v57++ + 32));
          }

          while (v75 >= v57);
        }

        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      apply %d extra membership rules on ORT %s and POS %s", v54, v55, v56, *(__dst[8] + 120 * v27 + 48));
        v58 = __dst[8];
        v25 = v74;
        a5 = v71;
        if (*(__dst[8] + 120 * v27 + 48))
        {
          v59 = 0;
          v60 = 0;
          while (1)
          {
            WORD2(v79) = v76;
            LODWORD(v79) = 2;
            *(&v79 + 6) = 0;
            HIDWORD(v79) = 0;
            matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v79, *(v58 + 120 * v27 + 40) + v59, &v79 + 3);
            if ((matched & 0x80000000) != 0)
            {
              return matched;
            }

            if (HIDWORD(v79) == 1)
            {
              log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d SUCCEEDS. Membership SUCCEEDS", v61, v62, v63, v60);
              *v71 = 1;
              *a6 = v27;
              *v73 = v74;
              goto LABEL_53;
            }

            log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d FAIL", v61, v62, v63, v60++);
            v58 = __dst[8];
            v59 += 24;
            if (v60 >= *(__dst[8] + 120 * v27 + 48))
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_50;
      }

      log_OutText(v47, "FE_POS", 5, 0, "      Membership rule %d SUCCEEDS", v44, v45, v46, v41++);
      v40 += 24;
      v42 += 96;
      if (v41 >= *(__dst[8] + 120 * v27 + 32))
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
LABEL_52:
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership SUCCESS on WORDN criteria", v19, v20, v21, 0);
    *v71 = 1;
    *a6 = v27;
    *v73 = v74;
LABEL_53:
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] SUCCESS", v67, v68, v69, 0);
  }

  return matched;
}

uint64_t setCOMPValues(uint64_t *a1, unsigned int a2, unsigned int a3, _DWORD *a4, const char *a5, const char *a6, char *a7, const char *a8, const char *a9)
{
  if (a2 > a3)
  {
    return 0;
  }

  if (a8)
  {
    v13 = a9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = !v13 && *(a1 + 9) == 1;
  v39 = a1[40];
  v40 = a1[39];
  v16 = a2;
  while (1)
  {
    if (v15)
    {
      v17 = cstdlib_strlen(a8);
      v18 = v17 + cstdlib_strlen(a9);
      if (*a4 == 1)
      {
        v18 += 2 + cstdlib_strlen((v40 + *(v39 + 4 * a4[2])));
      }

      v19 = v18 + 4;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(*a1 + 8);
    v21 = cstdlib_strlen(a6);
    v22 = heap_Calloc(v20, 1, v21 + v19 + 3);
    *(a1[54] + 96 * v16 + 80) = v22;
    v27 = *a1;
    if (!v22)
    {
      break;
    }

    v28 = *(v27 + 8);
    v29 = cstdlib_strlen(a5);
    v30 = heap_Calloc(v28, 1, (v29 + 3));
    *(a1[54] + 96 * v16 + 72) = v30;
    if (!v30)
    {
      goto LABEL_33;
    }

    if (a7)
    {
      v31 = cstdlib_strchr(a7, 32);
      v32 = v31;
      if (v31)
      {
        *v31 = 0;
      }

      v33 = *(*a1 + 8);
      v34 = cstdlib_strlen(a7);
      v35 = heap_Calloc(v33, 1, (v34 + 1));
      *(a1[54] + 96 * v16 + 64) = v35;
      if (!v35)
      {
LABEL_33:
        v27 = *a1;
        break;
      }

      cstdlib_strcpy(v35, a7);
      if (v32)
      {
        a7 = v32 + 1;
      }
    }

    if (a2 == v16)
    {
      v36 = "B-";
    }

    else
    {
      v36 = "I-";
    }

    cstdlib_strcpy(*(a1[54] + 96 * v16 + 80), v36);
    cstdlib_strcpy(*(a1[54] + 96 * v16 + 72), v36);
    cstdlib_strcat(*(a1[54] + 96 * v16 + 80), a6);
    if (v15)
    {
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), "+");
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), a9);
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), "+");
      cstdlib_strcat(*(a1[54] + 96 * v16 + 80), a8);
      if (*a4 == 1)
      {
        cstdlib_strcat(*(a1[54] + 96 * v16 + 80), "+");
        cstdlib_strcat(*(a1[54] + 96 * v16 + 80), (v40 + *(v39 + 4 * a4[2])));
      }
    }

    cstdlib_strcat(*(a1[54] + 96 * v16++ + 72), a5);
    if (a3 < v16)
    {
      return 0;
    }
  }

  log_OutPublic(*(v27 + 32), "FE_POS", 35000, 0, v23, v24, v25, v26, v38);
  return 2313166858;
}

uint64_t statcomp_saveCompoundsToLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  __s = 0;
  v64 = 0;
  v8 = *(a4 + 20);
  result = (*(a1 + 104))(a2, a3, 1, 0, &v69 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 104))(a2, a3, 2, HIWORD(v69), &v69);
    if ((result & 0x80000000) == 0)
    {
      v10 = v69;
      if (v69)
      {
        while (1)
        {
          result = (*(a1 + 168))(a2, a3, v10, 0, 1, &v67 + 4, &v68);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v67) <= 0xA && ((1 << SBYTE4(v67)) & 0x610) != 0)
          {
            result = (*(a1 + 168))(a2, a3, v69, 1, 1, &v67, &v68);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1 + 168))(a2, a3, v69, 2, 1, &v67 + 2, &v68);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (*(a4 + 440))
            {
              break;
            }
          }

LABEL_16:
          result = (*(a1 + 120))(a2, a3, v69, &v69);
          if ((result & 0x80000000) == 0)
          {
            v10 = v69;
            if (v69)
            {
              continue;
            }
          }

          return result;
        }

        v15 = 0;
        v16 = 0;
        v17 = WORD1(v67);
        v18 = *(a4 + 432);
        v19 = 1;
        while (*(v18 + v15) != v67 || !*(v18 + v15 + 80))
        {
          ++v16;
          v15 += 96;
          ++v19;
          if (96 * *(a4 + 440) == v15)
          {
            goto LABEL_16;
          }
        }

        v20 = 0;
        v21 = (v18 + 48);
        do
        {
          if (*(v21 - 1))
          {
            v22 = 1;
          }

          else
          {
            v22 = v20;
          }

          if (*v21)
          {
            v20 = 0;
          }

          else
          {
            v20 = v22;
          }

          v21 += 12;
          --v19;
        }

        while (v19);
        if (v67 > v17)
        {
          return 2313174705;
        }

        if (v17 == v67)
        {
          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v12, v13, v14, v67);
          goto LABEL_16;
        }

        result = (*(a1 + 184))(a2, a3, v69, 14, &v66);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v66 == 1)
        {
          result = (*(a1 + 176))(a2, a3, v69, 14, &__s, &v68);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *(a4 + 432) + v15;
          if (*(v29 + 40) || *(v29 + 48) || v20 == 1)
          {
            goto LABEL_64;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), __s);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v8 == 1)
          {
            v33 = *(a4 + 432);
            v34 = **(v33 + v15 + 80);
            if (v34 == 73)
            {
              v62 = *(a4 + 440);
              if (96 * v62 - 96 != v15 && (v16 + 1 >= v62 || (v63 = *(v33 + v15 + 176)) != 0 && *v63 == 73))
              {
                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "I_COMP:");
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v15 + 80) + 2));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v35 = *a4;
                v36 = (a4 + 408);
                v37 = (a4 + 424);
                v38 = ";I_COMPPOS:";
              }

              else
              {
                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "E_COMP:");
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v15 + 80) + 2));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v35 = *a4;
                v36 = (a4 + 408);
                v37 = (a4 + 424);
                v38 = ";E_COMPPOS:";
              }
            }

            else
            {
              if (v34 != 66)
              {
LABEL_88:
                log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] (appended) NLU=%s", v30, v31, v32, v16);
                goto LABEL_62;
              }

              result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "S_COMP:");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v15 + 80) + 2));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v35 = *a4;
              v36 = (a4 + 408);
              v37 = (a4 + 424);
              v38 = ";S_COMPPOS:";
            }

            result = statcomp_add2Str(v35, v36, v37, v38);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v57 = *a4;
            v59 = (a4 + 408);
            v60 = (a4 + 424);
            v58 = (*(*(a4 + 432) + v15 + 72) + 2);
          }

          else
          {
            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "COMP:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), *(*(a4 + 432) + v15 + 80));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";COMPPOS:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v57 = *a4;
            v58 = *(*(a4 + 432) + v15 + 72);
            v59 = (a4 + 408);
            v60 = (a4 + 424);
          }

          result = statcomp_add2Str(v57, v59, v60, v58);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_88;
        }

        if (v8 != 1)
        {
          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "COMP:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), *(*(a4 + 432) + v15 + 80));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";COMPPOS:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v45 = *a4;
          v46 = *(*(a4 + 432) + v15 + 72);
          v47 = (a4 + 408);
          v48 = (a4 + 424);
          goto LABEL_60;
        }

        v39 = *(a4 + 432);
        v40 = **(v39 + v15 + 80);
        if (v40 == 73)
        {
          v49 = *(a4 + 440);
          if (96 * v49 - 96 == v15 || v16 + 1 < v49 && ((v61 = *(v39 + v15 + 176)) == 0 || *v61 != 73))
          {
            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "E_COMP:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v15 + 80) + 2));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v41 = *a4;
            v42 = (a4 + 408);
            v43 = (a4 + 424);
            v44 = ";E_COMPPOS:";
            goto LABEL_58;
          }
        }

        else if (v40 == 66)
        {
          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "S_COMP:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v15 + 80) + 2));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v41 = *a4;
          v42 = (a4 + 408);
          v43 = (a4 + 424);
          v44 = ";S_COMPPOS:";
LABEL_58:
          result = statcomp_add2Str(v41, v42, v43, v44);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v45 = *a4;
          v47 = (a4 + 408);
          v48 = (a4 + 424);
          v46 = (*(*(a4 + 432) + v15 + 72) + 2);
LABEL_60:
          result = statcomp_add2Str(v45, v47, v48, v46);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] NLU=%s", v23, v24, v25, v16);
LABEL_62:
        v50 = *(a1 + 160);
        v51 = v69;
        v52 = cstdlib_strlen(*(a4 + 408));
        result = v50(a2, a3, v51, 14, (v52 + 1), *(a4 + 408), &v64);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        cstdlib_strcpy(*(a4 + 408), "");
LABEL_64:
        if (*(*(a4 + 432) + 96 * v16 + 64))
        {
          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "updating Word[%d] compound word pronunciation from %s to %s", v26, v27, v28, v16);
          v53 = *(a1 + 160);
          v54 = v69;
          v55 = 3 * v16;
          v56 = cstdlib_strlen(*(*(a4 + 432) + 32 * v55 + 64));
          result = v53(a2, a3, v54, 3, (v56 + 1), *(*(a4 + 432) + 32 * v55 + 64), &v68);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t statpos_get_info_from_dct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, char **a7, _DWORD *a8, const char *a9)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v14 = (*(a4 + 96))(a2, a3, a5, a6, &__c[3], &__c[1], __c);
  if ((v14 & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_2;
  }

  v19 = v14;
  if ((v14 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*&__c[1])
  {
    v20 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v20)
    {
      *v20 = 0;
    }

    if (cstdlib_strcmp(a9, "STR"))
    {
      if (!cstdlib_strcmp(a9, "BOOL"))
      {
        *a8 = 0;
        if (!cstdlib_strcmp(**&__c[3], "1"))
        {
          *a8 = 1;
        }
      }
    }

    else
    {
      v22 = *(a1 + 8);
      v23 = cstdlib_strlen(**&__c[3]);
      v24 = heap_Calloc(v22, 1, (v23 + 1));
      *a7 = v24;
      if (!v24)
      {
LABEL_2:
        v19 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 34000, 0, v15, v16, v17, v18, v28);
        return v19;
      }

      cstdlib_strcpy(v24, **&__c[3]);
      if (!cstdlib_strcmp("fecfg", a5))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "set mde seg param %s = %s", v25, v26, v27, a6);
      }
    }
  }

  return v19;
}

uint64_t _crfpos_concat_strings(uint64_t a1, uint64_t a2, char **a3)
{
  if (*(a2 + 8))
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v7 = v7 + cstdlib_strlen(*(*a2 + 16 * v6++)) + 2;
    }

    while (*(a2 + 8) > v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, v7);
  *a3 = v8;
  if (v8)
  {
    if (*(a2 + 8))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        cstdlib_strcat(*a3, *(*a2 + 16 * v14));
        v15 = *(a2 + 8);
        if (v15 - 1 > v13)
        {
          cstdlib_strcat(*a3, " ");
          v15 = *(a2 + 8);
        }

        v13 = ++v14;
      }

      while (v15 > v14);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v9, v10, v11, v12, v17);
    return 2313166858;
  }
}

uint64_t statpos_get_broker_string(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = "";
  __s2 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__s1 = 0u;
  v14 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v11);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "crfpos_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v11);
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v6, v7, v8, v9, v10);
        return 2313166858;
      }
    }
  }

  return result;
}

uint64_t _crfpos_parse_params(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(v2 + 40))
  {
    return 0;
  }

  v5 = 0;
  while (cstdlib_strcmp(*(*(v2 + 32) + 16 * v5), "features"))
  {
LABEL_26:
    ++v5;
    v2 = *(a2 + 8);
    if (v5 >= *(v2 + 40))
    {
      return 0;
    }
  }

  v6 = *(*(*(a2 + 8) + 32) + 16 * v5 + 8);
  v7 = cstdlib_strlen(v6);
  v8 = v7;
  *(a2 + 32) = 0;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7;
    v12 = v6;
    do
    {
      v13 = *v12++;
      v14 = v13 == 32;
      if (v10)
      {
        v10 = !v14;
      }

      else if (v14)
      {
        v10 = 0;
      }

      else
      {
        *(a2 + 32) = ++v9;
        v10 = 1;
      }

      --v11;
    }

    while (v11);
    v15 = 8 * v9 + 8;
  }

  else
  {
    v15 = 8;
  }

  v16 = heap_Calloc(*(a1 + 8), 1, v15);
  *(a2 + 24) = v16;
  if (v16)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v24;
      v26 = v6[v24];
      if (v26 == 32)
      {
        LOBYTE(v26) = 0;
        v27 = 0;
        v21 = 0;
        v28 = *(*(a2 + 24) + 8 * v23++);
      }

      else
      {
        if (v21)
        {
          v28 = *(*(a2 + 24) + 8 * v23);
        }

        else
        {
          *(*(a2 + 24) + 8 * v23) = heap_Alloc(*(a1 + 8), 64);
          v28 = *(*(a2 + 24) + 8 * v23);
          if (!v28)
          {
            goto LABEL_28;
          }

          LOBYTE(v26) = v6[v25];
        }

        v27 = v22 + 1;
        v21 = 1;
      }

      *(v28 + v22) = v26;
      v24 = v25 + 1;
      v22 = v27;
    }

    while (v25 + 1 <= v8);
    goto LABEL_26;
  }

LABEL_28:
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v17, v18, v19, v20, v30);
  return 2313166858;
}

uint64_t statpos_crf_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13)
{
  broker_string = statpos_get_broker_string(a5, a10);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  broker_string = crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, (a10 + 8), 2, *a10, "CRPH", 1031, 0, 0);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  info_from_dct = _crfpos_parse_params(a5, a10);
  if ((info_from_dct & 0x80000000) == 0)
  {
    *(a10 + 16) = 1;
    if (a13 == 1)
    {
      v23 = heap_Calloc(*(a5 + 8), 1, 512);
      *(a11 + 296) = v23;
      if (!v23 || (*(a11 + 316) = 512, v28 = heap_Calloc(*(a5 + 8), 1, 128), (*(a11 + 304) = v28) == 0))
      {
LABEL_20:
        info_from_dct = 2313166858;
        log_OutPublic(*(a5 + 32), "FE_POS", 35000, 0, v24, v25, v26, v27, v33);
        goto LABEL_13;
      }

      *(a11 + 320) = 32;
      *(a11 + 312) = 0;
      *(a11 + 324) = 0;
      broker_string = statpos_get_info_from_dct(a5, a7, a8, a9, "fecfg", "mdesegpos_nonfinalpunc", (a11 + 168), 0, "STR");
      if ((broker_string & 0x80000000) == 0)
      {
        info_from_dct = statpos_get_info_from_dct(a5, a7, a8, a9, "fecfg", "mdesegpos_finalpunc", (a11 + 176), 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v29 = heap_Calloc(*(a5 + 8), 1, 128);
        *a12 = v29;
        if (v29)
        {
          a12[2] = 128;
          v30 = heap_Calloc(*(a5 + 8), 1, 128);
          a12[1] = v30;
          if (v30)
          {
            a12[3] = 128;
            goto LABEL_13;
          }
        }

        goto LABEL_20;
      }

LABEL_12:
      info_from_dct = broker_string;
    }
  }

LABEL_13:
  if (*a10)
  {
    heap_Free(*(a5 + 8), *a10);
    *a10 = 0;
  }

  if ((info_from_dct & 0x80000000) != 0)
  {
    v31 = *(a10 + 8);
    if (v31)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(a5, a6, v31);
    }

    *(a10 + 8) = 0;
  }

  return info_from_dct;
}

uint64_t statpos_crf_unload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (*a3)
  {
    heap_Free(*(a1 + 8), *a3);
    *a3 = 0;
  }

  if (*(a3 + 16) == 1)
  {
    v12 = *(a3 + 8);
    if (v12)
    {
      Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, v12);
      if ((Only_DereferenceCnt & 0x80000000) != 0)
      {
        return Only_DereferenceCnt;
      }

      *(a3 + 8) = 0;
    }

    else
    {
      Only_DereferenceCnt = 0;
    }

    *(a3 + 16) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = *(a3 + 32);
    if (v15 != 255)
    {
      v16 = 0;
      do
      {
        v17 = *(*(a3 + 24) + 8 * v16);
        if (v17)
        {
          heap_Free(*(a1 + 8), v17);
          LOBYTE(v15) = *(a3 + 32);
        }

        ++v16;
      }

      while (v16 < (v15 + 1));
      v14 = *(a3 + 24);
    }

    heap_Free(*(a1 + 8), v14);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  if (a6 == 1)
  {
    v18 = *(a4 + 296);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      *(a4 + 296) = 0;
      *(a4 + 316) = 0;
    }

    v19 = *(a4 + 304);
    if (v19)
    {
      heap_Free(*(a1 + 8), v19);
      *(a4 + 304) = 0;
      *(a4 + 320) = 0;
    }

    *(a4 + 312) = 0;
    *(a4 + 324) = 0;
    v20 = *(a4 + 168);
    if (v20)
    {
      heap_Free(*(a1 + 8), v20);
      *(a4 + 168) = 0;
    }

    v21 = *(a4 + 176);
    if (v21)
    {
      heap_Free(*(a1 + 8), v21);
      *(a4 + 176) = 0;
    }

    if (*a5)
    {
      heap_Free(*(a1 + 8), *a5);
      *a5 = 0;
    }

    v22 = a5[1];
    if (v22)
    {
      heap_Free(*(a1 + 8), v22);
      a5[1] = 0;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t statpos_crf_label(uint64_t a1, uint64_t a2, unsigned __int16 *a3, void *a4, uint64_t a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v100[0] = 0;
  v100[1] = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v10 = heap_Calloc(*(a1 + 8), 1, 8 * a3[4]);
  if (!v10)
  {
    v34 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v93);
    return v34;
  }

  v15 = v10;
  features = statpos_fv_new(a1, *(a2 + 32), v100);
  if ((features & 0x80000000) != 0)
  {
LABEL_14:
    v34 = features;
LABEL_15:
    v35 = 0;
    goto LABEL_16;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FEATURE VECTOR", v17, v18, v19, 0);
  if (*(a2 + 32))
  {
    v23 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v20, v21, v22, *(*(a2 + 24) + 8 * v23++));
    }

    while (v23 < *(a2 + 32));
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FEATURE VECTOR ENTRIES", v20, v21, v22, 0);
  if (!a3[4])
  {
    goto LABEL_41;
  }

  v27 = 0;
  do
  {
    features = statpos_get_features(a1, a3, a4, v27, *(a2 + 24), *(a2 + 32), v100, 0);
    if ((features & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    features = _crfpos_concat_strings(a1, v100, &v99);
    if ((features & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v31 = v99;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "features: %s", v28, v29, v30, v99);
    v15[v27] = v31;
    v99 = 0;
    ++v27;
    v32 = a3[4];
  }

  while (v27 < v32);
  if (!a3[4])
  {
LABEL_41:
    v36 = 0;
    v35 = 0;
    goto LABEL_42;
  }

  if (*(*a3 + 72))
  {
    v33 = 0;
  }

  else
  {
    v67 = (*a3 + 232);
    v68 = 1;
    do
    {
      v69 = v68;
      if (v32 == v68)
      {
        break;
      }

      v70 = *v67;
      v67 += 80;
      ++v68;
    }

    while (!v70);
    v33 = v69 >= v32;
  }

  v36 = 0;
  v35 = 0;
  if (!a5 || v33)
  {
LABEL_42:
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Existing tags on words (ConstrainedDecoding:Keyword=%d:Actual=%s)", v24, v25, v26, a5);
    LODWORD(v51) = a3[4];
    if (v36 != 0 && v35 != 0 && a3[4])
    {
      v52 = 0;
      do
      {
        __s1[0] = 0;
        if (*(v35 + 4 * v52))
        {
          v53 = 0;
          do
          {
            cstdlib_strcat(__s1, *(*(v36 + 8 * v52) + 8 * v53));
            cstdlib_strcat(__s1, "  ");
            ++v53;
          }

          while (v53 < *(v35 + 4 * v52));
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v48, v49, v50, __s1);
        ++v52;
        v51 = a3[4];
      }

      while (v52 < v51);
    }

    v34 = crf_Process_Constrained(*(a2 + 8), v15, v51, &v98, &v97, v36, v35);
    if ((v34 & 0x80000000) == 0 && v97)
    {
      v57 = 0;
      v58 = 88;
      while (1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "predicted label: %s on word %d", v54, v55, v56, *(v98 + 8 * v57));
        v59 = cstdlib_strchr(*(v98 + 8 * v57), 32);
        if (v59)
        {
          *v59 = 0;
        }

        v60 = *(a1 + 8);
        v61 = cstdlib_strlen(*(v98 + 8 * v57));
        v62 = heap_Calloc(v60, 1, (v61 + 100));
        *(*a3 + v58) = v62;
        if (!v62)
        {
          break;
        }

        cstdlib_strcpy(v62, *(v98 + 8 * v57++));
        v58 += 160;
        if (v57 >= v97)
        {
          goto LABEL_17;
        }
      }

      v34 = 2313166858;
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v63, v64, v65, v66, v95);
    }

    goto LABEL_17;
  }

  v36 = heap_Calloc(*(a1 + 8), 1, 8 * v32);
  if (!v36)
  {
    v34 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v71, v72, v73, v74, v94);
    v35 = 0;
    goto LABEL_17;
  }

  v96 = a5;
  v35 = heap_Calloc(*(a1 + 8), 1, 4 * a3[4]);
  if (v35)
  {
    if (a3[4])
    {
      v76 = 0;
      while (1)
      {
        v77 = *a3 + 160 * v76;
        if (*(v77 + 128) && (v78 = *(v77 + 136)) != 0 && cstdlib_strcmp(v78, "") && ((v79 = a4[42]) != 0 && (v80 = "ns", cstdlib_strstr(v79, *(*a3 + 160 * v76 + 136))) || (v81 = a4[43]) != 0 && (v80 = "nt", cstdlib_strstr(v81, *(*a3 + 160 * v76 + 136))) || (v82 = a4[44]) != 0 && (v80 = "nz", cstdlib_strstr(v82, *(*a3 + 160 * v76 + 136))) || (v83 = a4[45]) != 0 && (v80 = "nx", cstdlib_strstr(v83, *(*a3 + 160 * v76 + 136))) || (v84 = a4[46]) != 0 && (v80 = "nr", cstdlib_strstr(v84, *(*a3 + 160 * v76 + 136)))))
        {
          *(v35 + 4 * v76) = 1;
          v85 = heap_Calloc(*(a1 + 8), 1, 8);
          *(v36 + 8 * v76) = v85;
          if (!v85)
          {
            goto LABEL_94;
          }

          *v85 = v80;
        }

        else
        {
          v86 = *(*a3 + 160 * v76 + 72);
          *(v35 + 4 * v76) = v86;
          if (v86)
          {
            v87 = heap_Calloc(*(a1 + 8), 1, 8 * v86);
            *(v36 + 8 * v76) = v87;
            if (!v87)
            {
              goto LABEL_94;
            }

            v88 = *(v35 + 4 * v76);
            a5 = v96;
            if (v88)
            {
              v89 = 0;
              do
              {
                *(*(v36 + 8 * v76) + 8 * v89) = a4[37] + *(a4[38] + 4 * *(*(*a3 + 160 * v76 + 64) + 24 * v89));
                ++v89;
              }

              while (v88 > v89);
            }

            goto LABEL_91;
          }

          *(v36 + 8 * v76) = 0;
        }

        a5 = v96;
LABEL_91:
        if (++v76 >= a3[4])
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_42;
  }

LABEL_94:
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v75, v24, v25, v26, v94);
  v90 = a3[4];
  if (a3[4])
  {
    v91 = 0;
    do
    {
      v92 = *(v36 + 8 * v91);
      if (v92)
      {
        heap_Free(*(a1 + 8), v92);
        v90 = a3[4];
      }

      ++v91;
    }

    while (v91 < v90);
  }

  v34 = 2313166858;
  heap_Free(*(a1 + 8), v36);
  if (v35)
  {
    heap_Free(*(a1 + 8), v35);
    goto LABEL_15;
  }

LABEL_16:
  v36 = 0;
LABEL_17:
  statpos_fv_dealloc(a1, v100);
  v37 = a3[4];
  if (a3[4])
  {
    v38 = 0;
    do
    {
      v39 = v15[v38];
      if (v39)
      {
        heap_Free(*(a1 + 8), v39);
        v37 = a3[4];
      }

      ++v38;
    }

    while (v38 < v37);
  }

  heap_Free(*(a1 + 8), v15);
  v40 = v98;
  if (v98)
  {
    v41 = v97;
    if (v97)
    {
      v42 = 0;
      do
      {
        v43 = *(v98 + 8 * v42);
        if (v43)
        {
          heap_Free(*(a1 + 8), v43);
          v41 = v97;
        }

        ++v42;
      }

      while (v42 < v41);
      v40 = v98;
    }

    heap_Free(*(a1 + 8), v40);
  }

  if (v36)
  {
    v44 = a3[4];
    if (a3[4])
    {
      v45 = 0;
      do
      {
        v46 = *(v36 + 8 * v45);
        if (v46)
        {
          heap_Free(*(a1 + 8), v46);
          v44 = a3[4];
        }

        *(v36 + 8 * v45++) = 0;
      }

      while (v45 < v44);
    }

    heap_Free(*(a1 + 8), v36);
  }

  if (v35)
  {
    heap_Free(*(a1 + 8), v35);
  }

  return v34;
}

uint64_t statPOS_add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = (v11 - v12 + cstdlib_strlen(*a2));
    if (v13 <= 0x80)
    {
      v14 = 128;
    }

    else
    {
      v14 = v13;
    }

    v10 = heap_Realloc(*(a1 + 8), *a2, *a3 + v14 + 1);
    if (!v10)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v15, v16, v17, v18, v22);
      return 2313166858;
    }

    *a2 = v10;
    *a3 += v14;
  }

  else
  {
    v10 = *a2;
  }

  v19 = cstdlib_strlen(v10);
  v20 = *a2;
  if (v19)
  {
    cstdlib_strcat(v20, __s);
  }

  else
  {
    cstdlib_strcpy(v20, __s);
  }

  return 0;
}

uint64_t statpos_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = 0;
  v105 = 0;
  v103 = 0;
  __s = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  __s1 = 0;
  v96 = 0;
  v97 = 0;
  v10 = *a4;
  *(a4 + 748) = log_GetLogLevel(*(*a4 + 32)) > 4;
  v11 = (*(a1 + 104))(a2, a3, 1, 0, &v106 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = (*(a1 + 184))(a2, a3, HIWORD(v106), 0, &v105);
  if ((v12 & 0x80000000) == 0 && v105 == 1)
  {
    v12 = (*(a1 + 176))(a2, a3, HIWORD(v106), 0, &__s, &v102);
    if ((v12 & 0x80000000) == 0 && v102 >= 2u)
    {
      v16 = (a4 + 648);
      log_OutText(*(v10 + 32), "FE_POS", 5, 0, "new POS : processing=%s", v13, v14, v15, __s);
      v17 = heap_Calloc(*(v10 + 8), 1, 128);
      if (v17)
      {
        v22 = v17;
        for (i = 0; i != 128; i += 8)
        {
          v24 = heap_Calloc(*(v10 + 8), 1, 16);
          *(v22 + i) = v24;
          if (!v24)
          {
            goto LABEL_52;
          }
        }

        v29 = heap_Calloc(*(v10 + 8), 1, 1024);
        *(a4 + 728) = v29;
        if (!v29 || (*(a4 + 744) = 1024, v30 = heap_Calloc(*(v10 + 8), 1, 1024), (*(a4 + 736) = v30) == 0))
        {
LABEL_52:
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0, v25, v26, v27, v28, v92);
          v36 = 0;
          goto LABEL_53;
        }

        v31 = cstdlib_strlen(__s);
        v36 = heap_Calloc(*(v10 + 8), 1, (v31 + 1));
        if (v36)
        {
          statpos_initCache(a4 + 648);
          AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v106), &v106);
          if ((AddPOI & 0x80000000) == 0)
          {
            v12 = 2313174705;
            v94 = v36;
            while (v106)
            {
              AddPOI = (*(a1 + 168))(a2, a3);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              if (v101 <= 0xA && ((1 << v101) & 0x610) != 0)
              {
                AddPOI = (*(a1 + 168))(a2, a3, v106, 1, 1, &v97, &v102);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v106, 2, 1, &v97 + 2, &v102);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                if (v97 > HIWORD(v97))
                {
                  goto LABEL_53;
                }

                AddPOI = (*(a1 + 184))(a2, a3, v106, 17, &v105);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                if (v105 == 1)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v106, 17, 1, &v96 + 2, &v102);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }
                }

                else
                {
                  HIWORD(v96) = v101 - 9 <= 1;
                }

                cstdlib_strncpy(v36, &__s[v97], HIWORD(v97) - v97);
                v36[HIWORD(v97) - v97] = 0;
                if (HIWORD(v97) == v97)
                {
                  log_OutText(*(v10 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v39, v40, v41, HIWORD(v97));
                }

                else
                {
                  AddPOI = addWord_0(v10, a4 + 8, a4 + 648, v36, &v97, HIWORD(v96), &v96, v41);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  v42 = doesWordEndInComma_0(v36);
                  v43 = *(a4 + 648);
                  v44 = *(a4 + 656);
                  if (v42)
                  {
                    *(v43 + 160 * *(a4 + 656) - 148) = 1;
                  }

                  v45 = v43 + 160 * v44;
                  *(v45 - 136) = 0;
                  *(v45 - 136) = v101 == 4;
                  AddPOI = (*(a1 + 176))(a2, a3, v106, 3, &__s1, &v102);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  v46 = cstdlib_strcmp(__s1, "");
                  v47 = *(a4 + 648);
                  v48 = *(a4 + 656);
                  if (v46)
                  {
                    *(v47 + 160 * *(a4 + 656) - 136) = 1;
                  }

                  v49 = __s;
                  v50 = HIWORD(v97);
                  *(v47 + 160 * v48 - 144) = __s[HIWORD(v97)] == 95;
                  *(*(a4 + 648) + 160 * *(a4 + 656) - 140) = isFollowedbySpace(a4 + 8, v49, v50);
                  v51 = (*(a1 + 176))(a2, a3, v106, 5, &v99, &v102);
                  if ((v51 & 0x80000000) != 0)
                  {
                    v12 = v51;
                    v36 = v94;
                    goto LABEL_53;
                  }

                  AddPOI = addPOS_0(v10, a4 + 8, a4 + 648, (*(a4 + 656) - 1), v99, v106, v22, &v96, a5);
                  v36 = v94;
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  AddPOI = readAddPOI(a1, a2, a3, v10, (a4 + 648), (*(a4 + 656) - 1), v106);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }

                  if (*(a4 + 1416) == 1)
                  {
                    *v95 = 0;
                    AddPOI = (*(a1 + 184))(a2, a3, v106, 14, &v105);
                    if ((AddPOI & 0x80000000) != 0)
                    {
                      goto LABEL_135;
                    }

                    if (v105)
                    {
                      AddPOI = (*(a1 + 176))(a2, a3, v106, 14, v95, &v102);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_135;
                      }

                      if (v102 >= 2u)
                      {
                        AddPOI = readPOSandPHRfromNLU(v10, a4 + 8, (a4 + 648), *v95, (*(a4 + 656) - 1));
                        if ((AddPOI & 0x80000000) != 0)
                        {
                          goto LABEL_135;
                        }
                      }
                    }

                    else
                    {
                      v93 = v93 & 0xFFFFFFFF00000000 | v97;
                      AddPOI = readPOSandPHRfromNLUMarkers(v10, a4 + 8, (a4 + 648), a2, a3, a1, HIWORD(v106), __s, v93, *(a4 + 656) - 1);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_135;
                      }
                    }
                  }
                }
              }

              AddPOI = (*(a1 + 120))(a2, a3, v106, &v106);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_135;
              }
            }

            AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v106), &v106);
            if ((AddPOI & 0x80000000) == 0)
            {
              while (v106)
              {
                AddPOI = (*(a1 + 168))(a2, a3);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }

                if (v101 != 6)
                {
                  goto LABEL_138;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v106, 1, 1, &v97, &v102);
                if ((AddPOI & 0x80000000) == 0)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v106, 2, 1, &v97 + 2, &v102);
                  if ((AddPOI & 0x80000000) == 0)
                  {
                    if (v97 > HIWORD(v97))
                    {
                      goto LABEL_53;
                    }

                    AddPOI = (*(a1 + 176))(a2, a3, v106, 4, &v100, &v102);
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = addToken_0(v10, (a4 + 648), a4 + 8, &v97, v100, v56, v57, v58);
                      if ((AddPOI & 0x80000000) == 0 || AddPOI == -1981800448)
                      {
LABEL_138:
                        AddPOI = (*(a1 + 120))(a2, a3, v106, &v106);
                        if ((AddPOI & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }

                goto LABEL_135;
              }

              AddPOI = (*(a1 + 176))(a2, a3, HIWORD(v106), 1, &v103, &v102 + 2);
              if ((AddPOI & 0x80000000) == 0)
              {
                v59 = HIWORD(v102);
                if (HIWORD(v102))
                {
                  v60 = 0;
                  v61 = v103;
                  do
                  {
                    v62 = v60;
                    if (*(v61 + 32 * v60) == 34)
                    {
                      if (v59 <= ++v60)
                      {
                        goto LABEL_139;
                      }

                      do
                      {
                        v63 = *(v61 + 32 * v60);
                        if (v63 != 21)
                        {
                          ++v60;
                        }
                      }

                      while (v59 > v60 && v63 != 21);
                      if (v63 == 21)
                      {
                        if (*(a4 + 656))
                        {
                          v71 = *(v61 + 12);
                          v72 = (*(v61 + 32 * v62 + 12) - v71);
                          v73 = (*(v61 + 32 * v60 + 12) - v71);
                          v74 = *v16;
                          v75 = *(a4 + 656) - 1;
                          do
                          {
                            v76 = *v74;
                            if (v76 >= v72 && v74[1] <= v73)
                            {
                              *(v74 + 10) = 1;
                            }

                            v77 = v76 > v73 || v75-- == 0;
                            v74 += 80;
                          }

                          while (!v77);
                        }
                      }

                      else
                      {
LABEL_139:
                        if (*(a4 + 656))
                        {
                          v65 = (*(v61 + 32 * v62 + 12) - *(v61 + 12));
                          v66 = *(v61 + 16);
                          v67 = *v16;
                          v68 = *(a4 + 656) - 1;
                          do
                          {
                            v69 = *v67;
                            if (v69 >= v65 && v67[1] <= v66)
                            {
                              *(v67 + 10) = 1;
                            }

                            v70 = v69 > v66 || v68-- == 0;
                            v67 += 80;
                          }

                          while (!v70);
                        }
                      }
                    }

                    ++v60;
                  }

                  while (v59 > v60);
                }

                AddPOI = markPhoneticRegions(v10, a4 + 648);
                if ((AddPOI & 0x80000000) == 0)
                {
                  if (*(a4 + 1416) != 1)
                  {
                    goto LABEL_133;
                  }

                  v82 = *(a4 + 656);
                  if (*(a4 + 656))
                  {
                    v83 = 0;
                    do
                    {
                      if (!HIWORD(v102))
                      {
                        goto LABEL_129;
                      }

                      v84 = 0;
                      do
                      {
                        while (1)
                        {
                          v85 = (v103 + 32 * v84);
                          if (*v85 == 1)
                          {
                            break;
                          }

                          if (++v84 >= HIWORD(v102))
                          {
                            goto LABEL_129;
                          }
                        }

                        v86 = v85[3] - *(v103 + 12);
                        v87 = (*v16)[80 * v83];
                        ++v84;
                      }

                      while (v86 != v87 && v84 < HIWORD(v102));
                      if (v86 != v87)
                      {
LABEL_129:
                        v89 = *&(*v16)[80 * v83 + 52];
                        if (v89)
                        {
                          heap_Free(*(v10 + 8), v89);
                          *(*(a4 + 648) + 160 * v83 + 104) = 0;
                          v82 = *(a4 + 656);
                        }
                      }

                      ++v83;
                    }

                    while (v83 < v82);
                  }

                  AddPOI = resolvePHR_0(__s, v10, a4 + 8, (a4 + 648), v78, v79, v80, v81);
                  if ((AddPOI & 0x80000000) == 0)
                  {
LABEL_133:
                    AddPOI = setPotentialPOSTags(v10, a4 + 8, (a4 + 648));
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = printSent_0(v10, a4 + 8, (a4 + 648), "Initialized data", *(a4 + 1416), a5, v90, v91);
                    }
                  }
                }
              }
            }
          }

LABEL_135:
          v12 = AddPOI;
        }

        else
        {
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0, v32, v33, v34, v35, v92);
        }

LABEL_53:
        for (j = 0; j != 128; j += 8)
        {
          v54 = *(v22 + j);
          if (v54)
          {
            heap_Free(*(v10 + 8), v54);
            *(v22 + j) = 0;
          }
        }

        heap_Free(*(v10 + 8), v22);
        statpos_freeCache(v10, a4 + 648);
        if (v36)
        {
          heap_Free(*(v10 + 8), v36);
        }
      }

      else
      {
        v12 = 2313166858;
        log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v92);
        statpos_freeCache(v10, a4 + 648);
      }

      if (*v16)
      {
        if (*(a4 + 656))
        {
          v55 = *(*&(*v16)[80 * *(a4 + 656) - 56] + 24);
          if (v55)
          {
            heap_Free(*(v10 + 8), v55);
            *(*(*(a4 + 648) + 160 * *(a4 + 656) - 112) + 24) = 0;
          }
        }
      }
    }
  }

  return v12;
}

uint64_t addWord_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v11 = a4;
  v13 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v15 = *(a3 + 8);
  if (*(a3 + 8))
  {
    v16 = a6;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*a3 + v18);
      v22 = *a5;
      if (__PAIR64__(*(*a3 + v18 + 2), v21) == __PAIR64__(a5[1], v22))
      {
        return 0;
      }

      if (v22 >= v21 && a5[1] <= *(*a3 + v18 + 2))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", a6, a7, a8, v22);
        v15 = *(a3 + 8);
        v20 = 1;
      }

      ++v19;
      v18 += 160;
    }

    while (v19 < v15);
    v23 = v15 + 2;
    v8 = a7;
    v9 = v16;
    v13 = a2;
    v11 = a4;
  }

  else
  {
    v20 = 0;
    v23 = 2;
  }

  if (*(a3 + 10))
  {
    v24 = *a3;
    if (v23 > *(a3 + 10))
    {
      v25 = heap_Realloc(*(a1 + 8), v24, 160 * *(a3 + 10) + 3360);
      if (!v25)
      {
        goto LABEL_28;
      }

      *a3 = v25;
      cstdlib_memset((v25 + 160 * *(a3 + 8)), 0, 0xC80uLL);
      *(a3 + 10) += 20;
      v24 = *a3;
    }
  }

  else
  {
    v30 = heap_Calloc(*(a1 + 8), 1, 8001);
    *a3 = v30;
    if (!v30)
    {
      goto LABEL_28;
    }

    v24 = v30;
    *(a3 + 10) = 50;
  }

  v31 = (v24 + 160 * *(a3 + 8));
  v31[11] = v20;
  *v31 = *a5;
  v32 = heap_Calloc(*(a1 + 8), 1, (8 * *(v13 + 376)) | 1);
  *(*a3 + 160 * *(a3 + 8) + 48) = v32;
  if (v32 && (v37 = *(a1 + 8), v38 = cstdlib_strlen(v11), v39 = heap_Calloc(v37, 1, (v38 + 1)), (**(*a3 + 160 * *(a3 + 8) + 48) = v39) != 0))
  {
    cstdlib_strcpy(v39, v11);
    cstdlib_strncpy(__dst, v11, 0x80uLL);
    __dst[127] = 0;
    v46 = (*(*(a3 + 120) + 144))(*(a3 + 104), *(a3 + 112), "normal", __dst, 128);
    if ((v46 & 0x80000000) == 0)
    {
      if (!cstdlib_strlen(__dst) || !cstdlib_strcmp(v11, __dst))
      {
        goto LABEL_24;
      }

      v40 = *(a1 + 8);
      v41 = cstdlib_strlen(__dst);
      v42 = heap_Calloc(v40, 1, (v41 + 1));
      *(*a3 + 160 * *(a3 + 8) + 120) = v42;
      if (v42)
      {
        cstdlib_strcpy(v42, __dst);
LABEL_24:
        v43 = *(a3 + 8);
        v44 = *a3 + 160 * v43;
        *(v44 + 72) = 0;
        *(v44 + 64) = 0;
        *(v44 + 8) = v9 == 1;
        *(a3 + 8) = v43 + 1;
        *v8 = 0;
        return v46;
      }

LABEL_28:
      v46 = 2313166858;
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v26, v27, v28, v29, v48);
    }
  }

  else
  {
    v46 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v33, v34, v35, v36, v48);
    v45 = *(*a3 + 160 * *(a3 + 8) + 48);
    if (v45 && *v45)
    {
      heap_Free(*(a1 + 8), *v45);
      **(*a3 + 160 * *(a3 + 8) + 48) = 0;
    }
  }

  return v46;
}

BOOL isFollowedbySpace(uint64_t a1, char *__s, unsigned int a3)
{
  v6 = cstdlib_strlen(__s);
  if (v6 > a3)
  {
    while (1)
    {
      v7 = &__s[a3];
      v8 = utf8_determineUTF8CharLength(*v7);
      if (_statpos_char_check(*(a1 + 168), v7, v8) != 1 && _statpos_char_check(*(a1 + 176), &__s[a3], v8) != 1)
      {
        break;
      }

      a3 += utf8_determineUTF8CharLength(*v7);
      if (v6 <= a3)
      {
        a3 = a3;
        return v6 == a3;
      }
    }

    return *v7 == 32;
  }

  return v6 == a3;
}

uint64_t addPOS_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *__s, __int16 a6, uint64_t a7, _WORD *a8, int a9)
{
  v11 = __s;
  v46 = -1;
  if (!cstdlib_strlen(__s))
  {
    v11 = "NULL";
  }

  v16 = *(a1 + 8);
  v17 = cstdlib_strlen(v11);
  v18 = heap_Calloc(v16, 1, (v17 + 1));
  if (v18)
  {
    v23 = v18;
    cstdlib_strcpy(v18, v11);
    v24 = cstdlib_strchr(v23, 92);
    __sa = v23;
    if (v24)
    {
      v28 = v24;
      while (1)
      {
        *v28 = 0;
        v29 = *v23 ? v23 : "*";
        if ((*(a3 + 48) = v29, *(a3 + 56) = v29, !a9) && !*(a2 + 104) || *(a2 + 184))
        {
          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v25, v26, v27, v29);
          UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v46, a8, a7, v30);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        if (a9 == 1)
        {
          UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v46);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        if (*(a2 + 104))
        {
          UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v46);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        UniqDynamicPOS = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v46, a6);
        if ((UniqDynamicPOS & 0x80000000) != 0)
        {
          break;
        }

        v23 = v28 + 1;
        v28 = cstdlib_strchr(v28 + 1, 92);
        if (!v28)
        {
          if (*v23)
          {
            v32 = v23;
          }

          else
          {
            v32 = "*";
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
      if (*v23)
      {
        v32 = v23;
      }

      else
      {
        v32 = "*";
      }

LABEL_26:
      *(a3 + 48) = v32;
      *(a3 + 56) = v32;
      if ((a9 || *(a2 + 104)) && !*(a2 + 184) || (log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v25, v26, v27, v32), UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v46, a8, a7, v34), (UniqDynamicPOS & 0x80000000) == 0))
      {
        if (a9 != 1 || (UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v46), (UniqDynamicPOS & 0x80000000) == 0))
        {
          if (!*(a2 + 104) || (UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v46), (UniqDynamicPOS & 0x80000000) == 0))
          {
            v33 = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v46, a6);
            if ((v33 & 0x80000000) == 0 && !*(*(*a3 + 160 * a4 + 48) + 24))
            {
              v35 = *(a1 + 8);
              v36 = cstdlib_strlen(__sa);
              v37 = heap_Calloc(v35, 1, (v36 + 1));
              *(*(*a3 + 160 * a4 + 48) + 24) = v37;
              if (v37)
              {
                cstdlib_strcpy(v37, __sa);
              }

              else
              {
                v33 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v38, v39, v40, v41, v43);
              }
            }

            goto LABEL_39;
          }
        }
      }
    }

    v33 = UniqDynamicPOS;
LABEL_39:
    heap_Free(*(a1 + 8), __sa);
    return v33;
  }

  v33 = 2313166858;
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v19, v20, v21, v22, v43);
  return v33;
}

uint64_t readAddPOI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7)
{
  v35 = 0;
  *v34 = 0;
  v14 = (*(a1 + 184))(a2, a3, a7, 14, &v35 + 2);
  if ((v14 & 0x80000000) == 0)
  {
    if (HIWORD(v35))
    {
      v14 = (*(a1 + 176))(a2, a3, a7, 14, v34, &v35);
      if ((v14 & 0x80000000) == 0 && v35 >= 2u)
      {
        v33 = 0;
        v32 = 0;
        v15 = hlp_NLUStrFind(*v34, "S_POI", &v33, &v32);
        if (v15)
        {
          v16 = v33;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = 66;
        }

        else
        {
          v17 = 0;
        }

        if (hlp_NLUStrFind(*v34, "I_POI", &v33, &v32))
        {
          v16 = v33;
          v17 = 73;
        }

        v18 = hlp_NLUStrFind(*v34, "E_POI", &v33, &v32);
        if (v17 == 66)
        {
          v19 = 83;
        }

        else
        {
          v19 = 69;
        }

        if (v18)
        {
          v16 = v33;
          v20 = v19;
        }

        else
        {
          v20 = v17;
        }

        v21 = *a5 + 160 * a6;
        *(v21 + 128) = v20;
        if (v16)
        {
          if (!*(v21 + 136))
          {
            v22 = a6;
            v23 = *(a4 + 8);
            v24 = cstdlib_strlen(v16);
            v25 = heap_Calloc(v23, 1, v24 + 3);
            *(*a5 + 160 * v22 + 136) = v25;
            if (v25)
            {
              cstdlib_strcpy(v25, ",");
              cstdlib_strcat(*(*a5 + 160 * v22 + 136), v16);
              cstdlib_strcat(*(*a5 + 160 * v22 + 136), ",");
            }

            else
            {
              log_OutPublic(*(a4 + 32), "FE_POS", 35000, 0, v26, v27, v28, v29, v31);
              return 2313166858;
            }
          }
        }

        else
        {
          *(v21 + 136) = 0;
        }
      }
    }
  }

  return v14;
}

uint64_t readPOSandPHRfromNLU(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, unsigned int a5)
{
  v13 = 0uLL;
  v12 = 0;
  hlp_NLUStrFind(a4, "POS", &v13 + 1, &v12 + 1);
  hlp_NLUStrFind(a4, "PHR", &v13, &v12);
  if (v13 != 0)
  {
    return addPOSandPHR(a1, a2, a3, a5, a5, *(&v13 + 1), HIWORD(v12), v13, v12);
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing POS/PHR in NLU field: %s", *(&v13 + 1), v10, v13, a4);
  return 2313166848;
}

uint64_t readPOSandPHRfromNLUMarkers(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__s, uint64_t a9, unsigned __int16 a10)
{
  v35 = 0;
  v34 = 0;
  v33 = 0uLL;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  cstdlib_strlen(__s);
  v17 = (*(a6 + 104))(a4, a5, 2, a7, &v30);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v29 = a1;
  v28 = a3;
  while (v30)
  {
    v17 = (*(a6 + 168))(a4, a5);
    if ((v17 & 0x80000000) == 0)
    {
      v17 = (*(a6 + 120))(a4, a5, v30, &v30);
      if ((v17 & 0x80000000) == 0)
      {
        continue;
      }
    }

    return v17;
  }

  v31 = a9;
  v17 = (*(a6 + 176))(a4, a5, a7, 1, &v35, &v34);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (v34)
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      if (*(v35 + v21) == 51)
      {
        v23 = *(v35 + v21 + 12) - *(v35 + 12);
        if (v23 >= v31 && v23 < HIWORD(v31))
        {
          break;
        }
      }

      v22 = (v22 + 1);
      v21 += 32;
      if (32 * v34 == v21)
      {
        goto LABEL_17;
      }
    }

    hlp_NLUStrFind(*(v35 + v21 + 24), "POS", &v33 + 1, &v32 + 1);
    hlp_NLUStrFind(*(v35 + v21 + 24), "PHR", &v33, &v32);
    if (v33 == 0)
    {
      v25 = 2313166848;
      log_OutText(*(v29 + 32), "FE_POS", 5, 0, "missing POS/PHR in (NLU) marker number: %d", *(&v33 + 1), v26, v33, v22);
      return v25;
    }

    return addPOSandPHR(v29, a2, v28, a10, a10, *(&v33 + 1), HIWORD(v32), v33, v32);
  }

LABEL_17:
  v25 = 2313166848;
  log_OutText(*(v29 + 32), "FE_POS", 5, 0, "couldnt recover from missing NLU field on word record %d,%d", v18, v19, v20, a9);
  return v25;
}

uint64_t addToken_0(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 4);
  v12 = *a4;
  if (*(a2 + 4))
  {
    v14 = 0;
    v15 = 0;
    v16 = v11 + 1;
    v17 = *a2;
    v18 = a4[1];
    while (1)
    {
      v19 = *(v17 + v14);
      if (v12 == v19)
      {
        v16 = v15;
      }

      v20 = *(v17 + v14 + 2);
      if (v18 == v20)
      {
        break;
      }

      if (v18 >= v19 && v18 < v20)
      {
        break;
      }

      ++v15;
      v12 = *a4;
      v14 += 160;
      if (160 * v11 == v14)
      {
        goto LABEL_14;
      }
    }

    if (v11 + 1 != v16)
    {
      v28 = checkSpan_0(a1, a3, (v17 + 160 * v16 + 56));
      if ((v28 & 0x80000000) == 0)
      {
        v28 = checkSpan_0(a1, a3, (*a2 + v14 + 56));
        if ((v28 & 0x80000000) == 0)
        {
          v29 = *a2;
          v30 = *(*a2 + 160 * v16 + 56);
          *(v30 + 48) = 1;
          *(v30 + 56) = v16;
          *(v30 + 58) = v15;
          v31 = *(v29 + v14 + 56);
          *(v31 + 52) = 1;
          *(v31 + 56) = v16;
          v32 = *(a1 + 8);
          v33 = cstdlib_strlen(a5);
          v34 = heap_Calloc(v32, 1, (v33 - 1));
          *(*(*a2 + 160 * v16 + 56) + 64) = v34;
          if (!v34)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v35, v36, v37, v38, v52);
            return 2313166858;
          }

          v39 = v34;
          v40 = cstdlib_strlen(a5 + 1);
          cstdlib_strncpy(v39, a5 + 1, v40 - 1);
          v41 = *(*a2 + 160 * v16 + 48);
          v42 = cstdlib_strlen(a5);
          v28 = checkAllocAndZero(a1, (v41 + 16), v42 + 1);
          if ((v28 & 0x80000000) == 0)
          {
            cstdlib_strcat(*(*(*a2 + 160 * v16 + 48) + 16), "B-");
            v43 = *(*(*a2 + 160 * v16 + 48) + 16);
            v44 = cstdlib_strlen(a5 + 1);
            cstdlib_strncpy((v43 + 2), a5 + 1, v44 - 1);
            v45 = v16 + 1;
            if ((v16 + 1) > v15)
            {
              return 0;
            }

            while (1)
            {
              v46 = v45;
              v47 = *(*a2 + 160 * v45 + 48);
              v48 = cstdlib_strlen(a5);
              v28 = checkAllocAndZero(a1, (v47 + 16), v48 + 1);
              if ((v28 & 0x80000000) != 0)
              {
                break;
              }

              cstdlib_strcat(*(*(*a2 + 160 * v46 + 48) + 16), "I-");
              v49 = *(*(*a2 + 160 * v46 + 48) + 16);
              v50 = cstdlib_strlen(a5 + 1);
              cstdlib_strncpy((v49 + 2), a5 + 1, v50 - 1);
              v22 = 0;
              v45 = v46 + 1;
              if ((v46 + 1) > v15)
              {
                return v22;
              }
            }
          }
        }
      }

      return v28;
    }
  }

LABEL_14:
  v22 = 2313166848;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, a5);
  if (*(a2 + 4))
  {
    v26 = 0;
    v27 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v23, v24, v25, v27++);
      v26 += 160;
    }

    while (v27 < *(a2 + 4));
  }

  return v22;
}

uint64_t markPhoneticRegions(uint64_t a1, uint64_t a2)
{
  LOWORD(v2) = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    if (*(*a2 + 160 * v5 + 40) == 1 && v5 < v2)
    {
      v6 = *a2 + 160 * v5;
      if (*(v6 + 40) == 1)
      {
        break;
      }
    }

    v8 = v5;
LABEL_18:
    v5 = v8 + 1;
    if ((v8 + 1) >= v2)
    {
      return 0;
    }
  }

  v7 = 160 * v5;
  v8 = v5;
  while (1)
  {
    v9 = *(*(v6 + 48) + 24);
    if (v9)
    {
      heap_Free(*(a1 + 8), v9);
      v10 = *a2 + v7;
      *(*(v10 + 48) + 24) = 0;
      heap_Free(*(a1 + 8), *(v10 + 104));
      *(*a2 + v7 + 104) = 0;
    }

    v11 = *(a1 + 8);
    v12 = cstdlib_strlen("B-PH");
    v13 = heap_Calloc(v11, 1, (v12 + 1));
    *(*a2 + v7 + 104) = v13;
    if (!v13)
    {
      break;
    }

    v18 = v8 == v5 ? "B-PH" : "I-PH";
    cstdlib_strcpy(v13, v18);
    v19 = *(a1 + 8);
    v20 = cstdlib_strlen("UNK");
    v21 = heap_Calloc(v19, 1, (v20 + 1));
    *(*(*a2 + v7 + 48) + 24) = v21;
    if (!v21)
    {
      break;
    }

    cstdlib_strcpy(v21, "UNK");
    ++v8;
    v2 = *(a2 + 8);
    if (v2 > v8)
    {
      v6 = *a2 + 160 * v8;
      v7 += 160;
      if (*(v6 + 40) == 1)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v14, v15, v16, v17, v23);
  return 2313166858;
}

uint64_t resolvePHR_0(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = *MEMORY[0x277D85DE8];
  if (!a4[4])
  {
    return 0;
  }

  v12 = 0;
  v13 = 104;
  do
  {
    if (v13 != 104)
    {
      v14 = (*a4 + v13);
      if (!*v14)
      {
        v15 = *a4 + v13;
        v16 = *(v15 - 160);
        if (v16)
        {
          v17 = *(v14 - 52);
          if (v17 >= 2 && *(a1 + (v17 - 1)) == 95)
          {
            v18 = *(a2 + 8);
            v19 = cstdlib_strlen(v16);
            v20 = heap_Calloc(v18, 1, (v19 + 3));
            v25 = *a4;
            *(*a4 + v13) = v20;
            if (!v20)
            {
              goto LABEL_69;
            }

            cstdlib_strcpy(v20, *(v25 + v13 - 160));
            if (cstdlib_strcmp(*(*a4 + v13), "O"))
            {
              **(*a4 + v13) = 73;
            }

            v26 = *a4;
            v27 = *(*(*a4 + v13 - 56) + 24);
            if (v27)
            {
              heap_Free(*(a2 + 8), v27);
              v26 = *a4;
              *(*(*a4 + v13 - 56) + 24) = 0;
            }

            v28 = *(a2 + 8);
            v29 = cstdlib_strlen(*(*(v26 + v13 - 216) + 24));
            v30 = heap_Calloc(v28, 1, (v29 + 3));
            v31 = *a4;
            *(*(*a4 + v13 - 56) + 24) = v30;
            if (!v30)
            {
              goto LABEL_69;
            }

            v32 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_29:
            cstdlib_strcpy(v30, *(*(v31 + v13 - 216) + 24));
            log_OutText(*(a2 + 32), "FE_POS", 5, 0, v32, v51, v52, v53, v12);
            goto LABEL_30;
          }
        }

        v33 = *(v15 - 160);
        if (!v33)
        {
          goto LABEL_30;
        }

        v34 = *v33;
        if (v34 == 66)
        {
          v43 = *(a2 + 8);
          v44 = cstdlib_strlen(v33);
          v45 = heap_Calloc(v43, 1, (v44 + 3));
          v46 = *a4;
          *(*a4 + v13) = v45;
          if (!v45)
          {
            goto LABEL_69;
          }

          cstdlib_strcpy(v45, *(v46 + v13 - 160));
          **(*a4 + v13) = 73;
          v47 = *a4;
          v48 = *(*(*a4 + v13 - 56) + 24);
          if (v48)
          {
            heap_Free(*(a2 + 8), v48);
            v47 = *a4;
            *(*(*a4 + v13 - 56) + 24) = 0;
          }

          v49 = *(a2 + 8);
          v50 = cstdlib_strlen(*(*(v47 + v13 - 216) + 24));
          v30 = heap_Calloc(v49, 1, (v50 + 3));
          v31 = *a4;
          *(*(*a4 + v13 - 56) + 24) = v30;
          if (!v30)
          {
LABEL_69:
            v87 = 2313166858;
            log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0, v21, v22, v23, v24, v89);
            return v87;
          }

          v32 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_29;
        }

        if (v34 == 79 || v34 == 73)
        {
          v35 = *(a2 + 8);
          v36 = cstdlib_strlen(v33);
          v37 = heap_Calloc(v35, 1, (v36 + 3));
          v38 = *a4;
          *(*a4 + v13) = v37;
          if (!v37)
          {
            goto LABEL_69;
          }

          cstdlib_strcpy(v37, *(v38 + v13 - 160));
          v39 = *a4;
          v40 = *(*(*a4 + v13 - 56) + 24);
          if (v40)
          {
            heap_Free(*(a2 + 8), v40);
            v39 = *a4;
            *(*(*a4 + v13 - 56) + 24) = 0;
          }

          v41 = *(a2 + 8);
          v42 = cstdlib_strlen(*(*(v39 + v13 - 216) + 24));
          v30 = heap_Calloc(v41, 1, (v42 + 3));
          v31 = *a4;
          *(*(*a4 + v13 - 56) + 24) = v30;
          if (!v30)
          {
            goto LABEL_69;
          }

          v32 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_29;
        }
      }
    }

LABEL_30:
    ++v12;
    v54 = a4[4];
    v13 += 160;
  }

  while (v12 < v54);
  if (!a4[4])
  {
    return 0;
  }

  v55 = 0;
  v56 = (*a4 + 104);
  do
  {
    if (!*v56)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "could not work out PHR on word : word index=%d", a6, a7, a8, v55);
      return 2313166848;
    }

    ++v55;
    v56 += 20;
  }

  while (v54 != v55);
  v57 = 0;
  v58 = 104;
  do
  {
    if (!cstdlib_strncmp(*(*a4 + v58), "I-", 2uLL))
    {
      v62 = *a4;
      if (v58 == 104)
      {
        **(v62 + 104) = 66;
        log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v59, v60, v61, 0);
      }

      else if (cstdlib_strcmp(*(v62 + v58 - 160), *(v62 + v58)))
      {
        cstdlib_strcpy(__dst, *(*a4 + v58));
        __dst[0] = 66;
        if (cstdlib_strcmp(*(*a4 + v58 - 160), __dst))
        {
          **(*a4 + v58) = 66;
          log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v63, v64, v65, v57);
        }
      }
    }

    ++v57;
    v58 += 160;
  }

  while (v57 < a4[4]);
  if (!a4[4])
  {
    return 0;
  }

  v66 = 0;
  v67 = 0;
  do
  {
    cstdlib_strcpy(__dst, *(*a4 + 160 * v67 + 104));
    if (!cstdlib_strncmp(__dst, "B-", 2uLL))
    {
      cstdlib_strcpy(__dst, (*(*a4 + 160 * v67 + 104) + 2));
    }

    v71 = v67;
    if (a4[4] > v67)
    {
      v71 = v67;
      do
      {
        v72 = *(*a4 + 160 * v71 + 104);
        if (!v72 || (cstdlib_strlen(v72) < 3 || cstdlib_strcmp((*(*a4 + 160 * v71 + 104) + 2), __dst) || cstdlib_strncmp(*(*a4 + 160 * v71 + 104), "I-", 2uLL)) && *(*a4 + 160 * v71 + 4) != *(*a4 + 160 * v67 + 4))
        {
          break;
        }

        ++v71;
      }

      while (a4[4] > v71);
    }

    v73 = v71 - 1;
    log_OutText(*(a2 + 32), "FE_POS", 5, 0, "[3] add syn chunk %s from %d to %d", v68, v69, v70, __dst);
    if (v67 > (v71 - 1) || a4[4] <= v73)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "syntactic chunks out of order: fromWordIdx=%d toWordIdx=%d numWords=%d", v74, v75, v76, v66);
      return 2313166848;
    }

    v77 = checkSpan_0(a2, a3, (*a4 + 160 * v67 + 56));
    if ((v77 & 0x80000000) != 0)
    {
      return v77;
    }

    v77 = checkSpan_0(a2, a3, (*a4 + 160 * (v71 - 1) + 56));
    if ((v77 & 0x80000000) != 0)
    {
      return v77;
    }

    v78 = *a4;
    v79 = *(*a4 + 160 * v67 + 56);
    *(v79 + 96) = 1;
    *(v79 + 104) = v67;
    *(v79 + 106) = v73;
    v80 = *(v78 + 160 * (v71 - 1) + 56);
    *(v80 + 100) = 1;
    *(v80 + 104) = v67;
    v81 = *(a2 + 8);
    v82 = cstdlib_strlen(__dst);
    v83 = heap_Calloc(v81, 1, (v82 + 1));
    *(*(*a4 + 160 * v67 + 56) + 112) = v83;
    if (!v83)
    {
      goto LABEL_69;
    }

    cstdlib_strcpy(v83, __dst);
    if (v67 == v71)
    {
      v67 = v71 + 1;
    }

    else
    {
      v67 = v71;
    }

    v66 = v67;
  }

  while (v67 < a4[4]);
  if (!a4[4])
  {
    return 0;
  }

  v84 = 0;
  v85 = *a4;
  v86 = 104;
  do
  {
    heap_Free(*(a2 + 8), *(v85 + v86));
    v87 = 0;
    v85 = *a4;
    *(*a4 + v86) = 0;
    ++v84;
    v86 += 160;
  }

  while (v84 < a4[4]);
  return v87;
}

uint64_t setPotentialPOSTags(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  __s2[0] = *(a2 + 120);
  __s2[1] = 0;
  if (*(a3 + 4))
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      if (*(v7 + 160 * v6 + 72))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        do
        {
          v10 += cstdlib_strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(v7 + 160 * v6 + 64) + v8))));
          ++v9;
          v7 = *a3;
          v11 = *(*a3 + 160 * v6 + 72);
          v8 += 24;
        }

        while (v9 < v11);
        *(v7 + 160 * v6 + 80) = 0;
        if (v10)
        {
          v12 = heap_Calloc(*(a1 + 8), 1, 2 * v11 + v10 + 1);
          v17 = *a3;
          *(*a3 + 160 * v6 + 80) = v12;
          if (!v12)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v25);
            return 2313166858;
          }

          if (*(v17 + 160 * v6 + 72))
          {
            v18 = 0;
            v19 = 0;
            v20 = __dst;
            do
            {
              cstdlib_strcpy(v20, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(v17 + 160 * v6 + 64) + v18))));
              ++v19;
              v17 = *a3;
              v21 = *(*a3 + 160 * v6 + 72);
              v20 += 16;
              v18 += 24;
            }

            while (v19 < v21);
          }

          else
          {
            v21 = 0;
          }

          ssft_qsort(__dst, v21, 16, string_cmp);
          cstdlib_strcpy(*(*a3 + 160 * v6 + 80), __dst);
          v7 = *a3;
          if (*(*a3 + 160 * v6 + 72) >= 2u)
          {
            v22 = &v27;
            v23 = 1;
            do
            {
              cstdlib_strcat(*(v7 + 160 * v6 + 80), __s2);
              cstdlib_strcat(*(*a3 + 160 * v6 + 80), v22);
              ++v23;
              v7 = *a3;
              v22 += 16;
            }

            while (v23 < *(*a3 + 160 * v6 + 72));
          }
        }
      }

      else
      {
        *(v7 + 160 * v6 + 80) = 0;
      }

      ++v6;
    }

    while (v6 < *(a3 + 4));
  }

  return 0;
}

uint64_t printSent_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 25))
  {
    return 0;
  }

  v8 = a6;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a6, a7, a8, a4);
  if (*(a3 + 4))
  {
    v13 = 0;
    while (1)
    {
      sprintf(a3[11], "[%2d] ", v13);
      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v15 = *a3;
      if (*(*a3 + 160 * v13 + 44) == 1)
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "*DUMMY* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = *a3;
      }

      if (*(v15 + 160 * v13 + 8) == 1)
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "*OOV* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = *a3;
      }

      if (*(v15 + 160 * v13 + 72) >= 2u)
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "*AMB* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = *a3;
      }

      cstdlib_strncpy(a3[11], **(v15 + 160 * v13 + 48), 0x14uLL);
      v16 = cstdlib_strlen(**(*a3 + 160 * v13 + 48));
      if (v16 <= 0x13)
      {
        do
        {
          cstdlib_strcat(a3[11], " ");
        }

        while (v16++ < 0x13);
      }

      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a3 + 160 * v13 + 120))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "canon=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v13 + 120));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (v8 == 1)
      {
        v18 = *a3;
        if (*(*a3 + 160 * v13 + 24) == 1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "DCTWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v18 = *a3;
        }

        if (*(v18 + 160 * v13 + 16) == 1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "FollowedByUnderscore ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v18 = *a3;
        }

        if (*(v18 + 160 * v13 + 20) == 1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "FollowedBySpace ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v19 = *a3 + 160 * v13;
      if (a5 == 1)
      {
        break;
      }

      if (*(v19 + 88))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v21 = *(*a3 + 160 * v13 + 88);
LABEL_39:
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, v21);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v22 = *a3;
      if (*(*a3 + 160 * v13 + 104))
      {
        sprintf(a3[11], "tmphr=%4s ", *(*a3 + 160 * v13 + 104));
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a3;
      }

      if (*(v22 + 160 * v13 + 112))
      {
        sprintf(a3[11], "retag=%4s ", *(v22 + 160 * v13 + 112));
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a3;
      }

      v23 = *(*(v22 + 160 * v13 + 48) + 16);
      if (!v23)
      {
        v23 = " ";
      }

      sprintf(a3[11], " %6s ", v23);
      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v24 = *a3;
      if (*(*a3 + 160 * v13 + 12))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "_HASCOMMA ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v24 = *a3;
      }

      if (*(v24 + 160 * v13 + 40))
      {
        result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " bPHONETIC ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (*(a2 + 376))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = *a3;
          v28 = *(*a3 + 160 * v13 + 56);
          if (v28)
          {
            if (*(v28 + v25) != 1)
            {
              goto LABEL_96;
            }

            sprintf(a3[11], "<%s ", *(v28 + v25 + 16));
            result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v27 = *a3;
            v28 = *(*a3 + 160 * v13 + 56);
            if (v28)
            {
LABEL_96:
              v29 = v28 + v25;
              if (*(v29 + 4) == 1)
              {
                sprintf(a3[11], "%s> ", *(*(v27 + 160 * *(v29 + 8) + 56) + v25 + 16));
                result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }
          }

          ++v26;
          v25 += 24;
        }

        while (v26 < *(a2 + 376));
      }

      result = statPOS_add2Str(a1, a3 + 10, a3 + 48, " uniqueTagRecs:");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v33 = *a3;
      if (*(*a3 + 160 * v13 + 72))
      {
        v34 = 0;
        v41 = v8;
        v42 = a5;
        while (1)
        {
          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "<RETAG=");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(*a3 + 160 * v13 + 64) + 24 * v34))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, ",");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v35 = *(*a3 + 160 * v13 + 64);
          if (*(v35 + 24 * v34 + 16))
          {
            v36 = 0;
            v37 = 0;
            do
            {
              v38 = (*(v35 + 24 * v34 + 8) + v36);
              v39 = "*KEEP*";
              if (*(v38 + 1) != 1)
              {
                v39 = "";
              }

              v40 = "*SPLIT*";
              if (*(v38 + 2) != 1)
              {
                v40 = "";
              }

              sprintf(a3[11], "[%s%s%d,", v39, v40, *v38);
              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*(*(*a3 + 160 * v13 + 64) + 24 * v34 + 8) + v36 + 16));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "]");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              ++v37;
              v35 = *(*a3 + 160 * v13 + 64);
              v36 += 24;
            }

            while (v37 < *(v35 + 24 * v34 + 16));
          }

          result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "> ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          ++v34;
          v33 = *a3;
          v8 = v41;
          a5 = v42;
          if (v34 >= *(*a3 + 160 * v13 + 72))
          {
            if (!*(*a3 + 160 * v13 + 72) || !*(v33 + 160 * v13 + 80))
            {
              break;
            }

            result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "<POTENTIALTAGS=");
            if ((result & 0x80000000) == 0)
            {
              result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v13 + 80));
              if ((result & 0x80000000) == 0)
              {
                result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "> ");
                if ((result & 0x80000000) == 0)
                {
                  v33 = *a3;
                  break;
                }
              }
            }

            return result;
          }
        }
      }

      if (!*(v33 + 160 * v13 + 88) || (result = statPOS_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS="), (result & 0x80000000) == 0) && (result = statPOS_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v13 + 88)), (result & 0x80000000) == 0))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v30, v31, v32, a3[10]);
        cstdlib_strcpy(a3[10], "");
        result = 0;
        if (++v13 < *(a3 + 4))
        {
          continue;
        }
      }

      return result;
    }

    v20 = *(*(v19 + 48) + 24);
    if (!v20)
    {
      v20 = " ";
    }

    sprintf(a3[11], "%4s ", v20);
    v21 = a3[11];
    goto LABEL_39;
  }

  return 0;
}

void *statpos_freeSentenceData(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[91];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[91] = 0;
    *(a1 + 372) = 0;
  }

  v4 = a1[92];
  if (v4)
  {
    heap_Free(*(v2 + 8), v4);
    a1[92] = 0;
  }

  v5 = a1 + 81;
  v6 = a1[81];
  if (*(a1 + 328))
  {
    v7 = 0;
    do
    {
      if (*(v6 + 160 * v7 + 104))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 104));
        v6 = *v5;
        *(*v5 + 160 * v7 + 104) = 0;
      }

      if (*(v6 + 160 * v7 + 136))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 136));
        v6 = *v5;
        *(*v5 + 160 * v7 + 136) = 0;
      }

      if (*(v6 + 160 * v7 + 112))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 112));
        v6 = *v5;
        *(*v5 + 160 * v7 + 112) = 0;
      }

      v8 = *(v6 + 160 * v7 + 48);
      if (v8)
      {
        v9 = *(a1 + 192);
        if (v9)
        {
          for (i = 0; i < v9; ++i)
          {
            v8 = *(v6 + 160 * v7 + 48);
            if (*(v8 + 8 * i))
            {
              heap_Free(*(v2 + 8), *(v8 + 8 * i));
              v6 = a1[81];
              v8 = *(v6 + 160 * v7 + 48);
              *(v8 + 8 * i) = 0;
              v9 = *(a1 + 192);
            }
          }
        }

        heap_Free(*(v2 + 8), v8);
        v6 = *v5;
        *(*v5 + 160 * v7 + 48) = 0;
      }

      v11 = *(v6 + 160 * v7 + 56);
      if (v11)
      {
        v12 = *(a1 + 192);
        if (v12)
        {
          v13 = 0;
          v14 = 16;
          do
          {
            v11 = *(v6 + 160 * v7 + 56);
            if (*(v11 + v14))
            {
              heap_Free(*(v2 + 8), *(v11 + v14));
              v6 = a1[81];
              v11 = *(v6 + 160 * v7 + 56);
              *(v11 + v14) = 0;
              v12 = *(a1 + 192);
            }

            ++v13;
            v14 += 24;
          }

          while (v13 < v12);
        }

        heap_Free(*(v2 + 8), v11);
        v6 = *v5;
        *(*v5 + 160 * v7 + 56) = 0;
      }

      if (*(v6 + 160 * v7 + 72))
      {
        v15 = 0;
        do
        {
          v16 = *(v6 + 160 * v7 + 64);
          if (*(v16 + 24 * v15 + 16))
          {
            v17 = 0;
            v18 = 16;
            do
            {
              v19 = *(*(v16 + 24 * v15 + 8) + v18);
              if (v19)
              {
                heap_Free(*(v2 + 8), v19);
                v16 = *(*v5 + 160 * v7 + 64);
                *(*(v16 + 24 * v15 + 8) + v18) = 0;
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < *(v16 + 24 * v15 + 16));
            heap_Free(*(v2 + 8), *(v16 + 24 * v15 + 8));
            v6 = *v5;
            v20 = *(*v5 + 160 * v7 + 64) + 24 * v15;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
          }

          ++v15;
        }

        while (v15 < *(v6 + 160 * v7 + 72));
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 64));
        v6 = *v5;
        v21 = *v5 + 160 * v7;
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
      }

      if (*(v6 + 160 * v7 + 80))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 80));
        v6 = *v5;
        *(*v5 + 160 * v7 + 80) = 0;
      }

      if (*(v6 + 160 * v7 + 88))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 88));
        v6 = *v5;
        *(*v5 + 160 * v7 + 88) = 0;
      }

      if (*(v6 + 160 * v7 + 120))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 120));
        v6 = *v5;
        *(*v5 + 160 * v7 + 120) = 0;
      }

      if (*(v6 + 160 * v7 + 32))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 32));
        v6 = *v5;
        *(*v5 + 160 * v7 + 32) = 0;
      }

      ++v7;
    }

    while (v7 < *(a1 + 328));
  }

  else if (!v6)
  {
    goto LABEL_49;
  }

  heap_Free(*(v2 + 8), v6);
  *v5 = 0;
LABEL_49:

  return cstdlib_memset(a1 + 81, 0, 0x88uLL);
}

uint64_t statpos_updateNLULingdbField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v8 = (a4 + 648);
  v9 = *a4;
  v10 = *(a4 + 656);
  if (*(a4 + 656))
  {
    v11 = *v8;
    v12 = (v10 + 3) & 0x1FFFC;
    v13 = xmmword_26ECCE810;
    v14 = xmmword_26ECC7980;
    v15 = vdupq_n_s64(v10 - 1);
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, v14));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        v11[38] = 0;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        v11[78] = 0;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v15, *&v13))).i32[1])
      {
        v11[118] = 0;
        v11[158] = 0;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v11 += 160;
      v12 -= 4;
    }

    while (v12);
  }

  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38[0] = *(a4 + 128);
  v38[1] = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  WordIdx_0 = (*(a1 + 104))(a2, a3, 1, 0, &v37);
  if ((WordIdx_0 & 0x80000000) != 0)
  {
    return WordIdx_0;
  }

  updated = (*(a1 + 184))(a2, a3, v37, 0, &v37 + 2);
  if ((updated & 0x80000000) == 0 && HIWORD(v37) == 1)
  {
    updated = (*(a1 + 176))(a2, a3, v37, 0, &v31, &v35);
    if ((updated & 0x80000000) == 0 && v35 >= 2u)
    {
      updated = (*(a1 + 104))(a2, a3, 2, v37, &v36 + 2);
      if ((updated & 0x80000000) == 0)
      {
        v32 = 0;
        cstdlib_strcpy(*(a4 + 728), "");
        v20 = HIWORD(v36);
        if (!HIWORD(v36))
        {
LABEL_45:
          cstdlib_strcpy(*(a4 + 728), "");
          return updated;
        }

        while (1)
        {
          WordIdx_0 = (*(a1 + 120))(a2, a3, v20, &v36);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            return WordIdx_0;
          }

          updated = (*(a1 + 168))(a2, a3, HIWORD(v36), 0, 1, &v34, &v35);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v34 <= 0xA && ((1 << v34) & 0x610) != 0)
          {
            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v36), 1, 1, &v33, &v35);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              return WordIdx_0;
            }

            updated = (*(a1 + 168))(a2, a3, HIWORD(v36), 2, 1, &v33 + 2, &v35);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v33 != HIWORD(v33))
            {
              WordIdx_0 = getWordIdx_0(v9, v8, v33, HIWORD(v33), &v32, v22, v23, v24);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                return WordIdx_0;
              }

              v25 = v32;
              v26 = *v8 + 160 * v32;
              if (*(v26 + 44) || *(v26 + 152))
              {
                updated = (*(a1 + 192))(a2, a3, HIWORD(v36));
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              else
              {
                v27 = *(v26 + 56);
                if (v27 && (v28 = *(v27 + 112)) != 0)
                {
                  if (cstdlib_strcmp(v28, "O"))
                  {
                    cstdlib_strcpy(__b, "B-");
                    cstdlib_strcat(__b, *(*(*v8 + 160 * v25 + 56) + 112));
                    v29 = cstdlib_strlen(__b);
                    if (!cstdlib_strcmp(&__b[v29 - 2], "-P"))
                    {
                      __b[cstdlib_strlen(__b) - 2] = 0;
                    }
                  }

                  else
                  {
                    cstdlib_strcpy(__b, *(*(*v8 + 160 * v25 + 56) + 112));
                  }
                }

                else if (__b[0] && cstdlib_strcmp(__b, "O"))
                {
                  __b[0] = 73;
                }

                updated = updateNLUField_0(v9, a1, a2, a3, HIWORD(v36), a4 + 8, v8, v25, *(*(*v8 + 160 * v25 + 48) + 24), __b, v38, 1);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                *(*v8 + 160 * v25 + 152) = 1;
              }
            }
          }

          v20 = v36;
          HIWORD(v36) = v36;
          if (!v36)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }

  return updated;
}

uint64_t getWordIdx_0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[4])
  {
    v8 = 0;
    v9 = (*a2 + 2);
    while (*(v9 - 1) != a3 || *v9 != a4)
    {
      ++v8;
      v9 += 80;
      if (a2[4] == v8)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a5 = v8;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "cant align lingdb word : no word found with pos=%d,%d", a6, a7, a8, a3);
    return 2313166848;
  }

  return result;
}

uint64_t updateNLUField_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int a8, char *a9, char *a10, const char *a11, int a12)
{
  v16 = a4;
  v17 = a3;
  v18 = a2;
  v57 = 0;
  v56 = 0;
  __s = 0;
  result = (*(a2 + 184))(a3, a4, a5, 14, &v57 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (!HIWORD(v57))
    {
      goto LABEL_5;
    }

    result = (*(v18 + 176))(v17, v16, a5, 14, &__s, &v57);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v57 >= 2u)
    {
      v21 = __s;
    }

    else
    {
LABEL_5:
      v21 = "";
      __s = "";
    }

    v53 = a1;
    v22 = cstdlib_strlen(v21) + 1;
    if (a9)
    {
      v23 = cstdlib_strlen(";POS:");
      v22 += v23 + cstdlib_strlen(a9);
    }

    v54 = a8;
    if (a10)
    {
      v24 = cstdlib_strlen(";PHR:");
      v25 = cstdlib_strlen(a10);
      v26 = v24 + v22;
      a8 = v54;
      v22 = v26 + v25;
    }

    v51 = v18;
    v52 = v17;
    if (a11 && a12 == 1)
    {
      v50 = v16;
      v22 += cstdlib_strlen(";MAPTAGS:");
      v27 = a8;
      v28 = *a7;
      if (*(*a7 + 160 * a8 + 72))
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = cstdlib_strlen((*(a6 + 296) + *(*(a6 + 304) + 4 * *(*(v28 + 160 * v27 + 64) + v29))));
          v22 += v31 + cstdlib_strlen(a11);
          ++v30;
          v28 = *a7;
          v29 += 24;
        }

        while (v30 < *(*a7 + 160 * v27 + 72));
      }

      if (*(v28 + 160 * v27 + 8) == 1)
      {
        v22 += cstdlib_strlen(";OOV:1");
        v28 = *a7;
      }

      v16 = v50;
      v18 = v51;
      if (*(v28 + 160 * v27 + 120))
      {
        v32 = cstdlib_strlen(";CANONICAL:");
        v22 += v32 + cstdlib_strlen(*(*a7 + 160 * v27 + 120));
      }

      v17 = v52;
      a8 = v54;
    }

    if (v22 <= *(a7 + 48))
    {
      v33 = a7[10];
    }

    else
    {
      v33 = heap_Realloc(*(v53 + 8), a7[10], v22);
      if (!v33)
      {
        log_OutPublic(*(v53 + 32), "FE_POS", 35000, 0, v34, v35, v36, v37, v49);
        return 2313166858;
      }

      *(a7 + 48) = v22;
      a7[10] = v33;
    }

    cstdlib_strcpy(v33, __s);
    if (a9)
    {
      hlp_NLUStrSet(a7[10], "POS", a9);
    }

    if (a10)
    {
      hlp_NLUStrSet(a7[10], "PHR", a10);
    }

    if (a12 == 1)
    {
      v41 = a8;
      v42 = *a7;
      if (*(*a7 + 160 * a8 + 72))
      {
        v43 = v16;
        v44 = 0;
        v45 = 0;
        do
        {
          hlp_NLUStrAppend(a7[10], "MAPTAGS", (*(a6 + 296) + *(*(a6 + 304) + 4 * *(*(v42 + 160 * v41 + 64) + v44))), a11);
          ++v45;
          v42 = *a7;
          v44 += 24;
        }

        while (v45 < *(*a7 + 160 * v41 + 72));
      }

      else
      {
        v43 = v16;
      }

      v16 = v43;
      v18 = v51;
      v17 = v52;
      if (*(v42 + 160 * v41 + 8) == 1)
      {
        hlp_NLUStrSet(a7[10], "OOV", "1");
        v42 = *a7;
      }

      v46 = *(v42 + 160 * v41 + 120);
      if (v46)
      {
        hlp_NLUStrSet(a7[10], "CANONICAL", v46);
      }
    }

    log_OutText(*(v53 + 32), "FE_POS", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v38, v39, v40, a5);
    v47 = *(v18 + 160);
    v48 = cstdlib_strlen(a7[10]);
    return v47(v17, v16, a5, 14, (v48 + 1), a7[10], &v56);
  }

  return result;
}

uint64_t checkWordRecPOS(uint64_t *a1, unsigned int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v4 = *a1;
  v5 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  v8 = *(v4 + 160 * a2 + 64);
  do
  {
    v9 = v8 + 24 * v6;
    v10 = *(v9 + 16);
    if (*(v9 + 16))
    {
      v11 = *(v9 + 8);
      do
      {
        if (*(v11 + 2) == 1 && *v11 == a3)
        {
          *a4 = 1;
        }

        if (*(v11 + 1) == 1)
        {
          if (*v11 == a3)
          {
            result = 1;
          }

          else
          {
            result = result;
          }
        }

        v11 += 12;
        --v10;
      }

      while (v10);
    }

    ++v6;
  }

  while (v6 != v5);
  return result;
}

uint64_t getNewPOS(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, char **a5)
{
  v9 = *a2;
  if (*(*a2 + 160 * a3 + 72))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v9 + 160 * a3 + 64);
      if (*(v12 + 24 * v10 + 16))
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(v12 + 24 * v10 + 8);
          if (*(v15 + v13) == a4)
          {
            v16 = v15 + v13;
            if (*(v16 + 4) == 1)
            {
              if (v11)
              {
                v17 = v11 + 1;
              }

              else
              {
                v17 = 0;
              }

              v11 = v17 + cstdlib_strlen(*(v16 + 16));
              v9 = *a2;
            }
          }

          ++v14;
          v12 = *(v9 + 160 * a3 + 64);
          v13 += 24;
        }

        while (v14 < *(v12 + 24 * v10 + 16));
      }

      ++v10;
    }

    while (v10 < *(v9 + 160 * a3 + 72));
    v18 = v11 + 2;
  }

  else
  {
    v18 = 2;
  }

  v19 = heap_Calloc(*(a1 + 8), 1, v18);
  if (v19)
  {
    v24 = v19;
    v25 = *a2;
    if (*(*a2 + 160 * a3 + 72))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v25 + 160 * a3 + 64);
        if (*(v28 + 24 * v26 + 16))
        {
          v29 = 0;
          v30 = 0;
          do
          {
            v31 = *(v28 + 24 * v26 + 8);
            if (*(v31 + v29) == a4 && *(v31 + v29 + 4) == 1)
            {
              if (v27)
              {
                cstdlib_strcat(v24, "\");
                cstdlib_strcat(v24, *(*(*(*a2 + 160 * a3 + 64) + 24 * v26 + 8) + v29 + 16));
              }

              else
              {
                cstdlib_strcpy(v24, *(v31 + v29 + 16));
              }

              ++v27;
              v25 = *a2;
            }

            ++v30;
            v28 = *(v25 + 160 * a3 + 64);
            v29 += 24;
          }

          while (v30 < *(v28 + 24 * v26 + 16));
        }

        ++v26;
      }

      while (v26 < *(v25 + 160 * a3 + 72));
    }

    result = 0;
    *a5 = v24;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v20, v21, v22, v23, v33);
    return 2313166858;
  }

  return result;
}

uint64_t wordRecSplit(void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(*a1 + 160 * a2 + 64);
  while (1)
  {
    v7 = v6 + 24 * v5;
    v8 = *(v7 + 16);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_10:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = 24 * v8;
  while (1)
  {
    if (v5 != a3 || 24 * a4 != v9)
    {
      v11 = *(v6 + 24 * v5 + 8);
      if (*(v11 + v9) == *(*(v6 + 24 * a3 + 8) + 24 * a4) && !*(v11 + v9 + 4))
      {
        return 1;
      }
    }

    v9 += 24;
    if (v10 == v9)
    {
      goto LABEL_10;
    }
  }
}

uint64_t statpos_alignDisambiguatedPOSToLingdb(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 648);
  v72 = *a1;
  if (*(a1 + 656))
  {
    v10 = 0;
    v73 = 0;
    v11 = 0;
    v12 = *(a1 + 648);
    v74 = vdupq_n_s64(4uLL);
    v13 = a2;
    do
    {
      v14 = v12 + 160 * v10;
      if (*(v14 + 72))
      {
        v15 = 0;
        do
        {
          v16 = cstdlib_strcmp((*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v14 + 64) + 24 * v15))), *(v14 + 88));
          v12 = *(a1 + 648);
          if (!v16)
          {
            v17 = v12 + 160 * v10;
            *(v17 + 96) = 1;
            v18 = *(v17 + 64) + 24 * v15;
            v19 = *(v18 + 16);
            if (*(v18 + 16))
            {
              v20 = *(v18 + 8);
              v21 = (v19 + 3) & 0x1FFFC;
              v22 = vdupq_n_s64(v19 - 1);
              v23 = (v20 + 52);
              v24 = xmmword_26ECC7980;
              v25 = xmmword_26ECCE810;
              do
              {
                v26 = vmovn_s64(vcgeq_u64(v22, v24));
                if (vuzp1_s16(v26, *v22.i8).u8[0])
                {
                  *(v23 - 12) = 1;
                }

                if (vuzp1_s16(v26, *&v22).i8[2])
                {
                  *(v23 - 6) = 1;
                }

                if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v25))).i32[1])
                {
                  *v23 = 1;
                  v23[6] = 1;
                }

                v27 = vdupq_n_s64(4uLL);
                v25 = vaddq_s64(v25, v27);
                v24 = vaddq_s64(v24, v27);
                v23 += 24;
                v21 -= 4;
              }

              while (v21);
            }
          }

          ++v15;
          v14 = v12 + 160 * v10;
        }

        while (v15 < *(v14 + 72));
      }

      if (*(a1 + 144) == 1 && !*(v14 + 96))
      {
        v43 = cstdlib_strlen(*(v14 + 88));
        v12 = *v9;
        if (*(*v9 + 160 * v10 + 72))
        {
          v44 = 0;
          LOWORD(v45) = 0;
          v75 = v43;
          do
          {
            v46 = cstdlib_strlen((*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v12 + 160 * v10 + 64) + 24 * v44))));
            if (v75 >= v46)
            {
              v47 = v46;
            }

            else
            {
              v47 = v75;
            }

            v12 = *(a1 + 648);
            for (i = 0; v47 > i; ++i)
            {
              if (*(*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v12 + 160 * v10 + 64) + 24 * v44)) + i) != *(*(v12 + 160 * v10 + 88) + i))
              {
                break;
              }
            }

            v49 = i > v45;
            if (i <= v45)
            {
              v45 = v45;
            }

            else
            {
              v45 = i;
            }

            if (v49)
            {
              v11 = v44;
            }

            ++v44;
          }

          while (v44 < *(v12 + 160 * v10 + 72));
          v13 = a2;
          if (v45)
          {
            log_OutText(*(v72 + 32), "FE_POS", 5, 0, "Word[%d] %s select word record with POS %s, (closest to predicted POS %s using longest match)", a6, a7, a8, v73);
            v12 = *(a1 + 648);
            v50 = v12 + 160 * v10;
            *(v50 + 96) = 1;
            v51 = *(v50 + 64) + 24 * v11;
            v52 = *(v51 + 16);
            if (*(v51 + 16))
            {
              v53 = *(v51 + 8);
              v54 = (v52 + 3) & 0x1FFFC;
              v55 = vdupq_n_s64(v52 - 1);
              v56 = (v53 + 52);
              v57 = xmmword_26ECC7980;
              v58 = xmmword_26ECCE810;
              do
              {
                v59 = vmovn_s64(vcgeq_u64(v55, v57));
                if (vuzp1_s16(v59, *v55.i8).u8[0])
                {
                  *(v56 - 12) = 1;
                }

                if (vuzp1_s16(v59, *&v55).i8[2])
                {
                  *(v56 - 6) = 1;
                }

                if (vuzp1_s16(*&v55, vmovn_s64(vcgeq_u64(v55, *&v58))).i32[1])
                {
                  *v56 = 1;
                  v56[6] = 1;
                }

                v58 = vaddq_s64(v58, v74);
                v57 = vaddq_s64(v57, v74);
                v56 += 24;
                v54 -= 4;
              }

              while (v54);
            }
          }
        }
      }

      if (!*(v12 + 160 * v10 + 96))
      {
        if (!v13)
        {
          log_OutText(*(v72 + 32), "FE_POS", 5, 0, "Warning : no matching tags for word[%d] %s (predicted=%s, lexicon=%s)", a6, a7, a8, v73);
          v12 = *v9;
        }

        v28 = v12 + 160 * v10;
        *(v28 + 96) = 1;
        v29 = *(v28 + 72);
        if (v29)
        {
          v30 = 0;
          v31 = *(v12 + 160 * v10 + 64);
          do
          {
            v32 = v31 + 24 * v30;
            v33 = *(v32 + 16);
            if (*(v32 + 16))
            {
              v34 = *(v32 + 8);
              v35 = (v33 + 3) & 0x1FFFC;
              v36 = vdupq_n_s64(v33 - 1);
              v37 = (v34 + 52);
              v38 = xmmword_26ECC7980;
              v39 = xmmword_26ECCE810;
              do
              {
                v40 = vmovn_s64(vcgeq_u64(v36, v38));
                if (vuzp1_s16(v40, *v36.i8).u8[0])
                {
                  *(v37 - 12) = 1;
                }

                if (vuzp1_s16(v40, *&v36).i8[2])
                {
                  *(v37 - 6) = 1;
                }

                if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v39))).i32[1])
                {
                  *v37 = 1;
                  v37[6] = 1;
                }

                v41 = vdupq_n_s64(4uLL);
                v39 = vaddq_s64(v39, v41);
                v38 = vaddq_s64(v38, v41);
                v37 += 24;
                v35 -= 4;
              }

              while (v35);
            }

            ++v30;
          }

          while (v30 != v29);
        }
      }

      ++v10;
      v42 = *(a1 + 656);
      v73 = v10;
    }

    while (v10 < v42);
    if (*(a1 + 656))
    {
      v60 = 0;
      v77 = *v9;
      do
      {
        v76 = v42;
        v61 = v77 + 160 * v60;
        v62 = *(v61 + 72);
        if (*(v61 + 72))
        {
          v63 = 0;
          v64 = *(v77 + 160 * v60 + 64);
          do
          {
            v65 = v64 + 24 * v63;
            v66 = *(v65 + 16);
            if (*(v65 + 16))
            {
              v67 = 0;
              v68 = (*(v65 + 8) + 8);
              do
              {
                if (*(v68 - 1) == 1 && wordRecSplit(v9, v60, v63, v67))
                {
                  *v68 = 1;
                }

                v68 += 6;
                ++v67;
              }

              while (v66 != v67);
            }

            ++v63;
          }

          while (v63 != v62);
        }

        ++v60;
        v42 = v76;
      }

      while (v60 != v76);
    }
  }

  v69 = *(a1 + 1416);

  return printSent_0(v72, a1 + 8, v9, "after statpos_alignDisambiguatedPOSToLingdb()", v69, a2, a7, a8);
}

uint64_t statpos_updatePOSLingdbWithDisambiguatedPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, int a6)
{
  v8 = a4;
  __b[32] = *MEMORY[0x277D85DE8];
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  __s1 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v13 = (a4 + 1);
  v12 = *a4;
  v14 = (*(a1 + 104))(a2, a3, 1, 0, &v129);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = (*(a1 + 184))(a2, a3, v129, 0, &v129 + 2);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (HIWORD(v129) != 1)
  {
    return v15;
  }

  v15 = (*(a1 + 176))(a2, a3, v129, 0, &v123, &v127 + 2);
  if ((v15 & 0x80000000) != 0 || HIWORD(v127) < 2u)
  {
    return v15;
  }

  v14 = (*(a1 + 104))(a2, a3, 2, v129, &v128 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v111 = a5;
  v117 = v12;
  v16 = (v8 + 81);
  v124 = 0;
  cstdlib_strcpy(v8[91], "");
  while (1)
  {
    if (!HIWORD(v128))
    {
      v15 = (*(a1 + 104))(a2, a3, 2, v129, &v128 + 2);
      v25 = v117;
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      v74 = HIWORD(v128);
      if (HIWORD(v128))
      {
        while (1)
        {
          updated = (*(a1 + 120))(a2, a3, v74, &v128);
          if ((updated & 0x80000000) != 0)
          {
            break;
          }

          v15 = (*(a1 + 168))(a2, a3, HIWORD(v128), 0, 1, &v126, &v127 + 2);
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_46;
          }

          if (v126 <= 0xA && ((1 << v126) & 0x610) != 0)
          {
            updated = (*(a1 + 176))(a2, a3, HIWORD(v128), 5, &__s1, &v127 + 2);
            if ((updated & 0x80000000) != 0)
            {
              break;
            }

            v76 = __s1;
            v77 = cstdlib_strlen(__s1);
            v78 = *v76;
            v79 = v76;
            while (v78 == 92)
            {
              --v77;
              v80 = *++v79;
              v78 = v80;
            }

            cstdlib_memmove(v76, v79, (v77 + 1));
            v81 = cstdlib_strchr(v76, 92);
            if (v81)
            {
              *v81 = 0;
            }

            v82 = *(a1 + 160);
            v83 = HIWORD(v128);
            v84 = cstdlib_strlen(__s1);
            WordIdx_0 = v82(a2, a3, v83, 5, (v84 + 1), __s1, &v127);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            updated = (*(a1 + 184))(a2, a3, HIWORD(v128), 14, &v129 + 2);
            v25 = v117;
            if ((updated & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v129) != 1)
            {
              goto LABEL_146;
            }

            __b[0] = 0;
            v130[0] = 0;
            v118 = 0;
            v15 = (*(a1 + 176))(a2, a3, HIWORD(v128), 14, __b, &v127 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_46;
            }

            if (HIWORD(v127) < 2u || !hlp_NLUStrFind(__b[0], "POS", v130, &v118))
            {
LABEL_146:
              v15 = (*(a1 + 192))(a2, a3, HIWORD(v128));
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_46;
              }
            }
          }

          v74 = v128;
          HIWORD(v128) = v128;
          if (!v128)
          {
            goto LABEL_72;
          }
        }

LABEL_138:
        v15 = updated;
        goto LABEL_46;
      }

LABEL_72:
      if (v111 != 1)
      {
        goto LABEL_46;
      }

      v118 = 0;
      log_OutText(*(v25 + 32), "FE_POS", 5, 0, "No SGRAM : removing duplicate tags on lingdb words", v71, v72, v73, 0);
      cstdlib_memset(__b, 0, 0x100uLL);
      cstdlib_memset(v130, 0, 0x100uLL);
      v124 = 0;
      WordIdx_0 = (*(a1 + 104))(a2, a3, 2, v129, &v128 + 2);
      if ((WordIdx_0 & 0x80000000) == 0)
      {
        v116 = v16;
        v85 = HIWORD(v128);
        if (HIWORD(v128))
        {
          LODWORD(v86) = 0;
          v87 = 0xFFFFLL;
          while (1)
          {
            WordIdx_0 = (*(a1 + 120))(a2, a3, v85, &v128);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v128), 0, 1, &v126, &v127 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            if (v126 > 0xA || ((1 << v126) & 0x610) == 0)
            {
              goto LABEL_85;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v128), 1, 1, &v125, &v127 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v128), 2, 1, &v125 + 2, &v127 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            if (v125 == HIWORD(v125))
            {
LABEL_85:
              v92 = v87;
            }

            else
            {
              WordIdx_0 = getWordIdx_0(*v8, v116, v125, HIWORD(v125), &v124, v89, v90, v91);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              v92 = v124;
              if (subsumedWordRec(v116, v124))
              {
                WordIdx_0 = (*(a1 + 192))(a2, a3, HIWORD(v128));
                if ((WordIdx_0 & 0x80000000) != 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_111;
              }

              WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v128), 5, &__s1, &v127 + 2);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v128), 3, &v121, &v127 + 2);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v128), 7, 1, &v118, &v127 + 2);
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_44;
              }

              if (v87 == 0xFFFF || v92 == v87)
              {
                if (v86 > 0x7F)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (v86 >= 2)
                {
                  v93 = 0;
                  v94 = -1;
                  v95 = -1;
                  v86 = v86;
                  do
                  {
                    v96 = *(v130 + v93);
                    if (v96 <= v94)
                    {
                      v95 = v93;
                    }

                    if (v96 < v94)
                    {
                      v94 = *(v130 + v93);
                    }

                    ++v93;
                  }

                  while (v86 != v93);
                  v97 = v95;
                  v98 = __b;
                  while (1)
                  {
                    if (v97)
                    {
                      WordIdx_0 = (*(a1 + 192))(a2, a3, *v98);
                      if ((WordIdx_0 & 0x80000000) != 0)
                      {
                        goto LABEL_44;
                      }
                    }

                    v98 = (v98 + 2);
                    --v97;
                    if (!--v86)
                    {
                      goto LABEL_110;
                    }
                  }
                }

                LODWORD(v86) = 0;
              }

LABEL_110:
              *(__b + v86) = HIWORD(v128);
              *(v130 + v86) = v118;
              LODWORD(v86) = v86 + 1;
            }

LABEL_111:
            v85 = v128;
            HIWORD(v128) = v128;
            v87 = v92;
            if (!v128)
            {
              if (v86 < 2)
              {
                break;
              }

              v99 = 0;
              v100 = -1;
              v101 = -1;
              v86 = v86;
              do
              {
                v102 = *(v130 + v99);
                if (v102 <= v100)
                {
                  v101 = v99;
                }

                if (v102 < v100)
                {
                  v100 = *(v130 + v99);
                }

                ++v99;
              }

              while (v86 != v99);
              v103 = v101;
              v104 = __b;
              while (1)
              {
                if (v103)
                {
                  WordIdx_0 = (*(a1 + 192))(a2, a3, *v104);
                  if ((WordIdx_0 & 0x80000000) != 0)
                  {
                    goto LABEL_44;
                  }
                }

                v104 = (v104 + 2);
                --v103;
                if (!--v86)
                {
                  goto LABEL_123;
                }
              }
            }
          }
        }

LABEL_123:
        v15 = (*(a1 + 104))(a2, a3, 2, v129, &v128 + 2);
        if ((v15 & 0x80000000) != 0 || (v105 = HIWORD(v128)) == 0)
        {
LABEL_45:
          v25 = v117;
          goto LABEL_46;
        }

        v106 = 0;
        while (1)
        {
          WordIdx_0 = (*(a1 + 168))(a2, a3, v105, 0, 1, &v126, &v127 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            break;
          }

          if (v126 <= 0xA && ((1 << v126) & 0x610) != 0)
          {
            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v128), 5, &__s1, &v127 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              break;
            }

            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v128), 3, &v121, &v127 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              break;
            }

            if (v106 < *(v8 + 328))
            {
              log_OutText(*(v117 + 32), "FE_POS", 5, 0, "(no sgram) word %d %s POS=%s PHON=%s recId=%d", v108, v109, v110, v106);
              v106 = (v106 + 1);
            }
          }

          v15 = (*(a1 + 120))(a2, a3, HIWORD(v128), &v128);
          if ((v15 & 0x80000000) == 0)
          {
            v105 = v128;
            HIWORD(v128) = v128;
            if (v128)
            {
              continue;
            }
          }

          goto LABEL_45;
        }
      }

LABEL_44:
      v15 = WordIdx_0;
      goto LABEL_45;
    }

    WordIdx_0 = (*(a1 + 168))(a2, a3);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_44;
    }

    if (v126 <= 0xA && ((1 << v126) & 0x610) != 0)
    {
      WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v128), 1, 1, &v125, &v127 + 2);
      if ((WordIdx_0 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }

      WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v128), 2, 1, &v125 + 2, &v127 + 2);
      if ((WordIdx_0 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }

      if (v125 != HIWORD(v125))
      {
        WordIdx_0 = getWordIdx_0(*v8, v16, v125, HIWORD(v125), &v124, v19, v20, v21);
        if ((WordIdx_0 & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        v22 = *(v8 + 359);
        v23 = v124;
        if (v22 || !subsumedWordRec(v16, v124))
        {
          v119 = 0;
          v24 = HIWORD(v128);
          if (checkWordRecPOS(v16, v23, HIWORD(v128), &v119) | v22)
          {
            WordIdx_0 = (*(a1 + 176))(a2, a3, v24, 5, &__s1, &v127 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            v25 = v117;
            if (a6 == 1 && v126 == 4)
            {
              updated = updateNLUField_0(v117, a1, a2, a3, HIWORD(v128), v13, v16, v23, __s1, 0, 0, 0);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_138;
              }

              v30 = v117;
              v31 = v16;
              log_OutText(*(v117 + 32), "FE_POS", 5, 0, "SET DCT WORD Word[%d] %s POS %s to NLU POS", v27, v28, v29, v23);
              goto LABEL_37;
            }

            if (v119 == 1)
            {
              updated = getNewPOS(v117, v16, v23, HIWORD(v128), &v120);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_138;
              }

              log_OutText(*(v117 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v35, v36, v37, v23);
              v38 = v120;
              log_OutText(*(v117 + 32), "FE_POS", 5, 0, "\twith %s", v39, v40, v41, v120);
              v112 = *(a1 + 160);
              v42 = HIWORD(v128);
              v43 = cstdlib_strlen(v38);
              v44 = v112(a2, a3, v42, 5, (v43 + 1), v38, &v127);
              if ((v44 & 0x80000000) != 0)
              {
                v15 = v44;
                v25 = v117;
                goto LABEL_46;
              }

              heap_Free(*(v117 + 8), v38);
              v120 = 0;
              v25 = v117;
            }

            else if (*(v8 + 360))
            {
              if (!cstdlib_strcmp(__s1, "*"))
              {
                log_OutText(*(v117 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v45, v46, v47, v23);
                log_OutText(*(v117 + 32), "FE_POS", 5, 0, "\twith %s", v48, v49, v50, *(*v16 + 160 * v23 + 88));
                v113 = *(a1 + 160);
                v51 = HIWORD(v128);
                v52 = cstdlib_strlen(*(*v16 + 160 * v23 + 88));
                v53 = v51;
                v25 = v117;
                updated = v113(a2, a3, v53, 5, (v52 + 1), *(*v16 + 160 * v23 + 88), &v127);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_138;
                }
              }
            }

            updated = updateNLUField_0(v25, a1, a2, a3, HIWORD(v128), v13, v16, v23, *(*v16 + 160 * v23 + 88), 0, 0, 0);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_138;
            }

            if (a6 == 1)
            {
              break;
            }
          }
        }
      }
    }

LABEL_43:
    WordIdx_0 = (*(a1 + 120))(a2, a3, HIWORD(v128), &v128 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_44;
    }
  }

  log_OutText(*(v117 + 32), "FE_POS", 5, 0, "set Word[%d] POS to %s", v54, v55, v56, v23);
  v114 = *(a1 + 160);
  v57 = HIWORD(v128);
  v58 = cstdlib_strlen(*(*v16 + 160 * v23 + 88));
  v59 = v57;
  v30 = v117;
  v31 = v16;
  v60 = v114(a2, a3, v59, 5, (v58 + 1), *(*v16 + 160 * v23 + 88), &v127);
  if ((v60 & 0x80000000) != 0)
  {
    v15 = v60;
    v25 = v117;
    goto LABEL_46;
  }

LABEL_37:
  v115 = v8;
  v61 = v31;
  if (*(*v31 + 160 * v23 + 24))
  {
    log_OutText(*(v30 + 32), "FE_POS", 5, 0, "keep Word[%d] PHON", v32, v33, v34, v23);
    v16 = v31;
LABEL_42:
    v8 = v115;
    a6 = 1;
    goto LABEL_43;
  }

  v62 = (*(a1 + 176))(a2, a3, HIWORD(v128), 3, &v121, &v127 + 2);
  if ((v62 & 0x80000000) != 0)
  {
    v15 = v62;
    v25 = v30;
    goto LABEL_141;
  }

  v63 = *(a1 + 160);
  v64 = HIWORD(v128);
  v16 = v61;
  v65 = cstdlib_strlen(*(*v61 + 160 * v23 + 32));
  v66 = v63(a2, a3, v64, 3, (v65 + 1), *(*v61 + 160 * v23 + 32), &v127);
  if ((v66 & 0x80000000) == 0)
  {
    log_OutText(*(v117 + 32), "FE_POS", 5, 0, "set Word[%d] PHON to %s", v67, v68, v69, v23);
    goto LABEL_42;
  }

  v15 = v66;
  v25 = v117;
LABEL_141:
  v8 = v115;
LABEL_46:
  cstdlib_strcpy(v8[91], "");
  if (v120)
  {
    heap_Free(*(v25 + 8), v120);
  }

  return v15;
}

uint64_t subsumedWordRec(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    if (160 * a2 != v2)
    {
      v3 = (*a1 + 160 * a2);
      if (*v3 >= *(*a1 + v2) && v3[1] <= *(*a1 + v2 + 2))
      {
        break;
      }
    }

    v2 += 160;
    if (160 * *(a1 + 8) == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_disambiguatePOSTags(uint64_t a1)
{
  v2 = *a1;
  v3 = heap_Calloc(*(*a1 + 8), 1, 1024);
  *(a1 + 776) = v3;
  if (!v3)
  {
    log_OutPublic(*(v2 + 32), "FE_POS", 35000, 0, v4, v5, v6, v7, v12);
    return 2313166858;
  }

  if (*(a1 + 1336) == 1)
  {
    v8 = statpos_crf_label(v2, a1 + 1320, (a1 + 648), (a1 + 8), 1);
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  if (*(a1 + 804) == 1)
  {
    v8 = statpos_igtrees_label(v2, a1 + 8, a1 + 648, a1 + 784);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:
  v10 = *(a1 + 776);
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    *(a1 + 776) = 0;
  }

  return v9;
}

uint64_t statpos_setMorphemePRON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 656))
  {
    v6 = 0;
    v7 = *a4;
    v8 = (a4 + 728);
    v9 = 120;
    while (1)
    {
      cstdlib_strcpy(*(a4 + 728), "");
      v10 = *(a4 + 648);
      v11 = *(v10 + v9);
      if (!v11)
      {
        v11 = **(v10 + v9 - 72);
      }

      v12 = statPOS_add2Str(v7, (a4 + 728), (a4 + 744), v11);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v16 = *(a4 + 648) + v9;
      if (*(v16 - 96) == 1)
      {
        break;
      }

      if (!*(v16 - 32))
      {
        goto LABEL_14;
      }

      v12 = statPOS_add2Str(v7, (a4 + 728), (a4 + 744), "/");
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v12 = statPOS_add2Str(v7, (a4 + 728), (a4 + 744), *(*(a4 + 648) + v9 - 32));
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      info_from_dct = statpos_get_info_from_dct(v7, *(a4 + 752), *(a4 + 760), *(a4 + 768), "morph_pos", *(a4 + 728), (*(a4 + 648) + v9 - 88), 0, "STR");
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v21 = *(v7 + 32);
      if (*(*(a4 + 648) + v9 - 88))
      {
        log_OutText(v21, "FE_POS", 5, 0, "lookup %s ; transcription %s", v17, v18, v19, *(a4 + 728));
      }

      else
      {
        v22 = a3;
        log_OutText(v21, "FE_POS", 5, 0, "lookup %s ; FAILED", v17, v18, v19, *(a4 + 728));
        v23 = cstdlib_strlen(v11);
        v24 = Utf8_LengthInUtf8chars(v11, v23);
        v25 = *(*(a4 + 648) + v9 - 32);
        v26 = cstdlib_strlen(v25);
        if (Utf8_LengthInUtf8chars(v25, v26) > v24)
        {
          v27 = *(*(a4 + 648) + v9 - 32);
          v28 = cstdlib_strlen(v27);
          v24 = Utf8_LengthInUtf8chars(v27, v28);
        }

        v12 = statpos_growAndSetLayer(v7, (a4 + 1384), (a4 + 1400), v11, v24);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = statpos_growAndSetLayer(v7, (a4 + 1392), (a4 + 1408), *(*(a4 + 648) + v9 - 32), v24);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        a3 = v22;
        info_from_dct = statPOS_call_one_word(v7, a1, a2, v22, (a4 + 1384), (a4 + 1392), (*(a4 + 648) + v9 - 88));
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        log_OutText(*(v7 + 32), "FE_POS", 5, 0, "%s ; one_word transcription %s", v29, v30, v31, v11);
      }

LABEL_21:
      ++v6;
      v9 += 160;
      if (v6 >= *(a4 + 656))
      {
        goto LABEL_24;
      }
    }

    log_OutText(*(v7 + 32), "FE_POS", 5, 0, "SKIP DCT LOOKUP WORD %s", v13, v14, v15, *v8);
LABEL_14:
    info_from_dct = 0;
    goto LABEL_21;
  }

  info_from_dct = 0;
LABEL_24:
  cstdlib_strcpy(*(a4 + 728), "");
  return info_from_dct;
}

uint64_t statpos_growAndSetLayer(uint64_t a1, char **a2, void *a3, char *__src, unsigned int a5)
{
  v8 = *a2;
  if (*a3 < a5)
  {
    v11 = heap_Realloc(*(a1 + 8), v8, a5 + 2);
    if (!v11)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v18);
      return 2313166858;
    }

    v8 = v11;
    *a2 = v11;
    *a3 = a5 + 2;
  }

  cstdlib_strcpy(v8, __src);
  for (i = cstdlib_strlen(__src); i < a5; ++i)
  {
    cstdlib_strcat(*a2, "~");
  }

  return 0;
}

uint64_t statpos_getUniqDynamicPOS(uint64_t a1, uint64_t a2, char *__s, _DWORD *a4)
{
  *a4 = -1;
  if (!*(a2 + 312))
  {
LABEL_5:
    v9 = cstdlib_strlen(__s);
    v10 = v9;
    v11 = v9;
    v12 = *(a2 + 316);
    if (*(a2 + 324) + v9 >= v12)
    {
      if (v9 >= 0x80u)
      {
        v13 = (v9 + 32);
      }

      else
      {
        v13 = 128;
      }

      v14 = heap_Realloc(*(a1 + 8), *(a2 + 296), (v13 + v12));
      if (!v14)
      {
        goto LABEL_17;
      }

      *(a2 + 296) = v14;
      *(a2 + 316) += v13;
    }

    v19 = *(a2 + 320);
    if (*(a2 + 312) < v19)
    {
LABEL_14:
      v21 = *(a2 + 296);
      if (*(a2 + 324))
      {
        cstdlib_strcat(&v21[*(a2 + 324)], __s);
      }

      else
      {
        cstdlib_strcpy(v21, __s);
      }

      v22 = 0;
      *(*(a2 + 296) + v11 + *(a2 + 324) + 1) = 0;
      v23 = *(a2 + 324);
      v24 = *(a2 + 312);
      *(*(a2 + 304) + 4 * *(a2 + 312)) = v23;
      *(a2 + 324) = v10 + v23 + 1;
      *a4 = v24;
      *(a2 + 312) = v24 + 1;
      return v22;
    }

    v20 = heap_Realloc(*(a1 + 8), *(a2 + 304), 4 * (v19 + 16));
    if (v20)
    {
      *(a2 + 304) = v20;
      *(a2 + 320) += 16;
      goto LABEL_14;
    }

LABEL_17:
    v22 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v15, v16, v17, v18, v26);
    return v22;
  }

  v8 = 0;
  while (cstdlib_strcmp(__s, (*(a2 + 296) + *(*(a2 + 304) + 4 * v8))))
  {
    if (++v8 >= *(a2 + 312))
    {
      goto LABEL_5;
    }
  }

  v22 = 0;
  *a4 = v8;
  return v22;
}

uint64_t addPOSandPHR(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5, const char *a6, unsigned int a7, const char *a8, unsigned __int16 a9)
{
  v11 = a4;
  if (a4 == a5)
  {
    if (a4 + 1 == *(a3 + 4))
    {
      LOWORD(a5) = a4 + 1;
    }

    else
    {
      LOWORD(a5) = a4;
    }
  }

  if (a4 >= a5)
  {
    return 0;
  }

  v14 = a7;
  v15 = a4;
  v29 = a5;
  v16 = *a3;
  for (i = 160 * a4 + 104; ; i += 160)
  {
    v18 = *(*(v16 + i - 56) + 24);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      v19 = (*a3 + i);
      *(*(v19 - 7) + 24) = 0;
      heap_Free(*(a1 + 8), *v19);
      *(*a3 + i) = 0;
    }

    v20 = heap_Calloc(*(a1 + 8), 1, v14 + 1);
    *(*(*a3 + i - 56) + 24) = v20;
    if (!v20)
    {
      break;
    }

    if (a6)
    {
      cstdlib_strncat(v20, a6, v14);
      v20 = *(*(*a3 + i - 56) + 24);
    }

    a3[6] = v20;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag REF POS %s", v22, v23, v24, v20);
    v25 = statpos_retagREFPOS(a1, a2, a3, v15);
    if ((v25 & 0x80000000) != 0)
    {
      return v25;
    }

    v26 = heap_Calloc(*(a1 + 8), 1, a9 + 1);
    v16 = *a3;
    *(*a3 + i) = v26;
    if (!v26)
    {
      break;
    }

    if (a8)
    {
      cstdlib_strncat(v26, a8, a9);
      v16 = *a3;
    }

    *(v16 + i - 100) = v11;
    if (v29 == ++v15)
    {
      return v25;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v21, v22, v23, v24, v28);
  return 2313166858;
}

uint64_t checkSpan_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v13 = v3;
  v7 = heap_Calloc(*(a1 + 8), 1, (24 * *(a2 + 376)) | 1);
  if (v7)
  {
    v12 = v7;
    result = 0;
    *a3 = v12;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v13);
    return 2313166858;
  }

  return result;
}

uint64_t checkAllocAndZero(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = a3;
  if (v5)
  {
    v8 = heap_Realloc(v6, v5, a3);
    if (v8)
    {
      v13 = v8;
      cstdlib_memset(v8, 0, v7);
LABEL_5:
      result = 0;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    v13 = heap_Calloc(v6, 1, a3);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v9, v10, v11, v12, v15);
  return 2313166858;
}

uint64_t loc_CopyValue(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = 2313166855;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 5);
    if (v6)
    {
      v3 = 0;
      *v6 = *a1;
      *a3 = v6;
    }

    else
    {
      return 2313166858;
    }
  }

  return v3;
}

void *loc_FreeValue(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t logSTATPOSRULE_TRule(uint64_t result, const char **a2, unsigned __int16 *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = statPOS_add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = statPOS_add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logSTATPOSCONTEXT_TRule(const char **a1, unsigned __int16 *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (*(a5 + 4))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a5;
      v13 = (*a5 + v10);
      if (!*(v13 + 4))
      {
        goto LABEL_13;
      }

      v14 = "!";
      if ((v13[2] & 1) != 0 || (v14 = "HASCOMMA ", (v13[2] & 2) != 0) || (v14 = "DIRECTIVE_MOVE2NEXT ", (v13[2] & 4) != 0) || (v14 = "ISLASTINPHR ", (v13[2] & 8) != 0) || (v14 = "ISFIRSTINPHR ", (v13[2] & 0x10) != 0))
      {
        v15 = v13[2] & 1;
        cstdlib_strcpy(__s, v14);
      }

      else
      {
        v15 = 1;
      }

      result = statPOS_add2Str(*a4, a1, a2, __s);
      if (v15)
      {
        if ((result & 0x80000000) == 0)
        {
LABEL_13:
          result = statPOS_add2Str(*a4, a1, a2, "[");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(*a4, a1, a2, (a4[37] + *(a4[38] + 4 * *v13)));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          sprintf(__s, " %d(", *(v12 + v10 + 2));
          result = statPOS_add2Str(*a4, a1, a2, __s);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(*a4, a1, a2, (a4[32] + *(a4[33] + 4 * *(v12 + v10 + 2))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statPOS_add2Str(*a4, a1, a2, ")] ");
        }
      }

      if ((result & 0x80000000) == 0)
      {
        ++v11;
        v10 += 6;
        if (v11 < *(a5 + 4))
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t statpos_rules_unload(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[33];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[33] = 0;
  }

  v4 = a1[35];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[35] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[38];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[38] = 0;
  }

  v7 = a1[41];
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[41] = 0;
  }

  v8 = a1[28];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[28] = 0;
  }

  v9 = a1[30];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[30] = 0;
  }

  v10 = a1[42];
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    a1[42] = 0;
  }

  v11 = a1[43];
  if (v11)
  {
    heap_Free(*(v2 + 8), v11);
    a1[43] = 0;
  }

  v12 = a1[44];
  if (v12)
  {
    heap_Free(*(v2 + 8), v12);
    a1[44] = 0;
  }

  v13 = a1[45];
  if (v13)
  {
    heap_Free(*(v2 + 8), v13);
    a1[45] = 0;
  }

  v14 = a1[46];
  if (v14)
  {
    heap_Free(*(v2 + 8), v14);
    a1[46] = 0;
  }

  v15 = a1[6];
  if (v15)
  {
    if (*(a1 + 28))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        freeMAPRULE2STR_TRule_0(v2, (a1[6] + v16));
        ++v17;
        v16 += 32;
      }

      while (v17 < *(a1 + 28));
      v15 = a1[6];
    }

    heap_Free(*(v2 + 8), v15);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v18 = a1[8];
  if (v18)
  {
    if (*(a1 + 36))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        freeMAPRULE2STR_TRule_0(v2, (a1[8] + v19));
        ++v20;
        v19 += 32;
      }

      while (v20 < *(a1 + 36));
      v18 = a1[8];
    }

    heap_Free(*(v2 + 8), v18);
    a1[8] = 0;
  }

  *(a1 + 36) = 0;
  v21 = a1[10];
  if (v21)
  {
    v22 = *(a1 + 44);
    if (*(a1 + 44))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (*(v21 + v23 + 16))
        {
          heap_Free(*(v2 + 8), *(v21 + v23 + 8));
          v21 = a1[10];
          v25 = v21 + v23;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          v22 = *(a1 + 44);
        }

        ++v24;
        v23 += 24;
      }

      while (v24 < v22);
    }

    heap_Free(*(v2 + 8), v21);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    heap_Free(*(v2 + 8), a1[12]);
    a1[12] = 0;
    *(a1 + 52) = 0;
    ssftmap_ObjClose(a1[14]);
  }

  if (a1[18])
  {
    v26 = 0;
    v27 = a1 + 48;
    do
    {
      heap_Free(*(v2 + 8), v27[v26]);
      v27[v26++] = 0;
    }

    while (v26 != 32);
    v28 = a1[18];
    if (v28)
    {
      ssftmap_ObjClose(v28);
      a1[18] = 0;
    }
  }

  v29 = a1[4];
  if (v29)
  {
    heap_Free(*(v2 + 8), v29);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  return v5;
}

void *freeMAPRULE2STR_TRule_0(void *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  if (v4)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = a2[1];
    }

    result = heap_Free(v3[1], v4);
    a2[1] = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[2];
    }

    result = heap_Free(v3[1], v5);
    a2[2] = 0;
  }

  v6 = a2[3];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[3];
    }

    result = heap_Free(v3[1], v6);
    a2[3] = 0;
  }

  return result;
}

uint64_t matchSTATPOSCONTEXT_TRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int *a6, uint64_t a7, uint64_t a8)
{
  v25 = 1;
  v15 = *a2;
  *a6 = 0;
  *(a5 + 6) = 0;
  if (*(a2 + 8))
  {
    matched = logSTATPOSCONTEXT_TRule((a3 + 80), (a3 + 96), *(a3 + 88), a2, a4);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "         %s %s", v17, v18, v19, a1);
    cstdlib_strcpy(*(a3 + 80), "");
  }

  else
  {
    matched = 0;
  }

  if (*(a4 + 8))
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      matched = matchREGEX_TRule_0(a2, a3, (*a4 + v21), a5, &v25, a7, a8, a8);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v23 = v25;
      if (v25 != 1)
      {
        goto LABEL_11;
      }

      ++v22;
      v21 += 6;
      if (v22 >= *(a4 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v23 = 1;
LABEL_11:
    *a6 = v23;
  }

  return matched;
}

uint64_t matchREGEX_TRule_0(uint64_t *a1, uint64_t *a2, unsigned __int16 *a3, unsigned int *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v63 = *MEMORY[0x277D85DE8];
  v15 = *(a4 + 2);
  v16 = *a1;
  *a5 = 0;
  if (*(a1 + 4))
  {
    log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           regex %d", a6, a7, a8, a3[1]);
  }

  v17 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v17 & 4) != 0)
    {
      if (v8 == 2)
      {
        ++*(a4 + 4);
      }

      else if (v8 == 1)
      {
        ++*(a4 + 3);
      }

      if (*(a1 + 4))
      {
        log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", a6, a7, a8, *(a4 + 3));
      }

      v21 = 0;
      goto LABEL_33;
    }

    v61 = a6;
    v18 = (v17 >> 1) & 1;
    v19 = v17 & 1;
  }

  else
  {
    v61 = a6;
    v19 = 0;
    v18 = 0;
  }

  if (*(a1 + 4) >= 2u)
  {
    log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", a6, a7, a8, STATPOSDOMAIN2STRING[*a4]);
  }

  if (!v18)
  {
    v23 = *a4;
    if (*a4 - 1 <= 2 && v8 != 0)
    {
      if (v8 == 2)
      {
        v15 += *(a4 + 4) + 1;
        if (v15 >= *(a2 + 4))
        {
          goto LABEL_48;
        }
      }

      else if (v8 != 1 || (v15 += ~*(a4 + 3), v15 < 0))
      {
LABEL_48:
        if (*(a1 + 4))
        {
          v28 = *(v16 + 32);
          v29 = "           context not found. rule not applicable. RETURN LH_FALSE";
LABEL_50:
          log_OutText(v28, "FE_POS", 5, 0, v29, a6, a7, a8, v60);
          goto LABEL_140;
        }

        goto LABEL_140;
      }
    }

    if (v23 <= 3)
    {
      switch(v23)
      {
        case 1:
          v26 = *(*(*a2 + 160 * v15 + 48) + 8 * *a3);
          break;
        case 2:
          v26 = *(*(*a2 + 160 * v15 + 56) + 24 * *a3 + 16);
          break;
        case 3:
          v25 = *a3;
          if (v25 == *(a1 + 9))
          {
            v26 = (a2[2] + *(a2[3] + 2 * v15));
            break;
          }

          goto LABEL_42;
        default:
          goto LABEL_71;
      }

LABEL_64:
      if (v26)
      {
        goto LABEL_65;
      }

LABEL_71:
      *a5 = 0;
      if (!*(a1 + 4))
      {
        v21 = 0;
        goto LABEL_129;
      }

      log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, v60);
      goto LABEL_73;
    }

    if (v23 != 4)
    {
      if (v23 == 5)
      {
        if (*a3 == *(a1 + 9))
        {
          v26 = a2[2];
        }

        else
        {
          v26 = a2[4];
        }

        goto LABEL_64;
      }

      if (v23 != 6)
      {
        goto LABEL_71;
      }

      v26 = a2[6];
      if (v26)
      {
        v25 = *a3;
        if (v25 == *(a1 + 9))
        {
          goto LABEL_65;
        }

        if (v25 == *(a1 + 8))
        {
LABEL_42:
          v26 = *(*(*a2 + 160 * v15 + 48) + 8 * v25);
          goto LABEL_64;
        }

        v49 = "           ERROR : unknown DEF index for POS/ORT rule";
      }

      else
      {
        v49 = "           ERROR : no POS string to match";
      }

      goto LABEL_125;
    }

    v30 = *a2;
    v31 = *(a4 + 2);
    v32 = *(*a2 + 160 * *(a4 + 2) + 56);
    if (!v32 || !*(v32 + 24 * *(a1 + 12)))
    {
      goto LABEL_140;
    }

    v33 = *a1;
    if (v8 == 2)
    {
      v53 = *(a2 + 4);
      if (v31 + 1 != v53)
      {
        v56 = *(a4 + 4) + 1;
        if ((v56 & 0x10000) != 0)
        {
          v57 = *(a4 + 2);
LABEL_118:
          v59 = *(a1 + 4);
          if (v53 > v57)
          {
            if (v59 >= 2)
            {
              log_OutText(*(v33 + 32), "FE_POS", 5, 0, "           [3] _RIGHT wordIdx=%d", a6, a7, a8, *(a4 + 2));
            }

            LOWORD(v31) = v57;
            goto LABEL_122;
          }
        }

        else
        {
          v57 = *(a4 + 2);
          while (v53 > v57)
          {
            v57 = *(*(v30 + 160 * v57 + 56) + 24 * *(a1 + 12) + 10) + 1;
            if (!--v56)
            {
              goto LABEL_118;
            }
          }

          v59 = *(a1 + 4);
        }

        if (v59 >= 2)
        {
          v28 = *(v33 + 32);
          v29 = "           [2] _RIGHT doesnt exist, return LH_FALSE";
          goto LABEL_50;
        }

LABEL_140:
        v21 = 0;
        goto LABEL_141;
      }

      if (*(a1 + 4) < 2u)
      {
        goto LABEL_140;
      }

      v54 = *(v33 + 32);
      v55 = "           [1] _RIGHT doesnt exist, return LH_FALSE";
    }

    else
    {
      if (v8 != 1)
      {
        if (!v8 && *(a1 + 4) >= 2u)
        {
          log_OutText(*(v33 + 32), "FE_POS", 5, 0, "           _CUR wordIdx=%d", a6, a7, a8, *(a4 + 2));
          LOWORD(v31) = *(a4 + 2);
        }

LABEL_122:
        v26 = *(*(*a2 + 160 * v31 + 144) + 8 * *a3);
        if (v26)
        {
LABEL_65:
          if (*(a1 + 4))
          {
            log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           STR=%s", a6, a7, a8, v26);
          }

          v34 = a3[1];
          v35 = cstdlib_strlen(v26);
          if (!v35)
          {
            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "invalid arg for regex", v36, v37, v38, v60);
            return 2313166855;
          }

          *a5 = 0;
          v39 = nuance_pcre_exec(a1[24], a1[25], a1[27] + *(a1[28] + 4 * v34), 0, v26, v35, 0, 0, v62, 30);
          if ((v39 & 0x80000000) != 0)
          {
            v44 = nuance_pcre_ErrorToLhError(v39);
            v21 = v44;
            if ((v44 & 0xFFF00000) != 0x8A500000)
            {
              if ((v44 & 0x80000000) != 0)
              {
                return v21;
              }

LABEL_74:
              if (*a5 == 1)
              {
                if (*(a1 + 4))
                {
                  log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           REGEX FIRED", a6, a7, a8, v60);
                }

                if (v19)
                {
                  if (*(a1 + 4))
                  {
                    v40 = *(v16 + 32);
                    v41 = "           negate match - return LH_FALSE";
LABEL_135:
                    log_OutText(v40, "FE_POS", 5, 0, v41, a6, a7, a8, v60);
                    goto LABEL_141;
                  }

                  goto LABEL_141;
                }

                *v61 = a3[1];
                if (*(a1 + 4))
                {
                  v42 = *(v16 + 32);
                  v43 = "           return LH_TRUE";
LABEL_132:
                  log_OutText(v42, "FE_POS", 5, 0, v43, a6, a7, a8, v60);
                  goto LABEL_33;
                }

                goto LABEL_33;
              }

              goto LABEL_127;
            }

            if ((v44 & 0x1FFF) != 0x14)
            {
              if ((v44 & 0x1FFF) == 0xA)
              {
                v46 = *(*a1 + 32);
                v47 = 11002;
                v48 = 0;
              }

              else
              {
                v46 = *(*a1 + 32);
                v60 = "lhError";
                v48 = "%s%x";
                v47 = 11027;
              }

              log_OutPublic(v46, "FE_POS", v47, v48, v45, a6, a7, a8, v60);
              return v21;
            }
          }

          else if (v39)
          {
            *a5 = 1;
          }

LABEL_73:
          v21 = 0;
          goto LABEL_74;
        }

        if (!*(a1 + 4))
        {
LABEL_126:
          v21 = 0;
          *a5 = 0;
LABEL_127:
          if (*(a1 + 4))
          {
            log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           REGEX FAILED", a6, a7, a8, v60);
          }

LABEL_129:
          if (!v19)
          {
            if (*(a1 + 4))
            {
              v40 = *(v16 + 32);
              v41 = "           return LH_FALSE";
              goto LABEL_135;
            }

LABEL_141:
            *a5 = 0;
            return v21;
          }

          *v61 = a3[1];
          if (*(a1 + 4))
          {
            v42 = *(v16 + 32);
            v43 = "           negate match - return LH_TRUE";
            goto LABEL_132;
          }

LABEL_33:
          v22 = 1;
          goto LABEL_34;
        }

        v49 = "           NULL STR FOUND - no match";
LABEL_125:
        log_OutText(*(v16 + 32), "FE_POS", 5, 0, v49, a6, a7, a8, v60);
        goto LABEL_126;
      }

      if (*(a4 + 2))
      {
        v50 = *(a4 + 3) + 1;
        if ((v50 & 0x10000) == 0)
        {
          v52 = *(a4 + 2);
          do
          {
            v58 = *(v30 + 160 * (v52 - 1) + 56) + 24 * *(a1 + 12);
            if (!*(v58 + 4))
            {
              v21 = 2313166848;
              log_OutText(*(v33 + 32), "FE_POS", 5, 0, "wordindex=%d does not end previous phrase", a6, a7, a8, (v52 - 1));
              return v21;
            }

            v52 = *(v58 + 8);
            --v50;
          }

          while (v50 && *(v58 + 8));
          v51 = *(a1 + 4);
          if (!v50)
          {
            goto LABEL_97;
          }

          if (v51 >= 2)
          {
            v54 = *(v33 + 32);
            v55 = "           [2] _LEFT doesnt exist, return LH_FALSE";
            goto LABEL_114;
          }

          goto LABEL_140;
        }

        v51 = *(a1 + 4);
        v52 = *(a4 + 2);
LABEL_97:
        if (v51 >= 2)
        {
          log_OutText(*(v33 + 32), "FE_POS", 5, 0, "           [3] _LEFT wordIdx=%d", a6, a7, a8, *(a4 + 2));
        }

        LOWORD(v31) = v52;
        goto LABEL_122;
      }

      if (*(a1 + 4) < 2u)
      {
        goto LABEL_140;
      }

      v54 = *(v33 + 32);
      v55 = "           [1] _LEFT doesnt exist, return LH_FALSE";
    }

LABEL_114:
    log_OutText(v54, "FE_POS", 5, 0, v55, a6, a7, a8, 0);
    goto LABEL_140;
  }

  v20 = *(a4 + 2);
  if (*(a1 + 4))
  {
    log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           pSent->words[%d].bHasComma = %d", a6, a7, a8, *(a4 + 2));
    v20 = *(a4 + 2);
  }

  if (*(*a2 + 160 * v20 + 12) == 1)
  {
    v21 = 0;
    v22 = v19 ^ 1;
LABEL_34:
    *a5 = v22;
    return v21;
  }

  v21 = 0;
  *a5 = v19;
  return v21;
}