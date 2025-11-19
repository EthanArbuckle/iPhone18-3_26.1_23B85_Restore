uint64_t fe_oneword_ProcessPinyinMarkup(void *a1, uint64_t a2, uint64_t a3)
{
  v66 = 0;
  v65 = 0;
  __src = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v66 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 176))(a2, a3, HIWORD(v66), 1, &__src, &v65);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v65;
    if (v65)
    {
      v9 = 0;
      LOWORD(v10) = 0;
      v11 = 0;
      v12 = __src + 12;
      v13 = v65;
      do
      {
        v14 = *(v12 - 3);
        if (v14 == 99)
        {
          *v12 -= v11;
          v9 = 1;
        }

        else if (v14 == 0x4000)
        {
          v11 = *v12;
          v10 = v12[1] + *v12;
        }

        v12 += 8;
        --v13;
      }

      while (v13);
      v15 = v9 == 0;
      v16 = v10;
    }

    else
    {
      v11 = 0;
      v16 = 0;
      v15 = 1;
    }

    if (*a1[285] || !v15)
    {
      v17 = heap_Calloc(*(*a1 + 8), 1, 32 * v8);
      if (v17)
      {
        v22 = v17;
        memcpy(v17, __src, 32 * v65);
        v23 = v65;
        if (*a1[285])
        {
          ++v65;
          v24 = heap_Realloc(*(*a1 + 8), v22, 32 * (v23 + 1));
          if (!v24)
          {
            v7 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v25, v26, v27, v28, v59);
            goto LABEL_82;
          }

          v29 = v24;
          v23 = v65;
          if (v65)
          {
            v30 = 0;
            v31 = 32 * v65;
            v32 = 1;
            while (1)
            {
              if (v30)
              {
                if (*(v24 + v30) == 1 && v32 < v65)
                {
                  break;
                }
              }

              v30 += 32;
              ++v32;
              if (v31 == v30)
              {
                goto LABEL_30;
              }
            }

            v34 = v24 + v30;
            memmove((v24 + v30 + 32), (v24 + v30), v31 - v30 - 32);
            *v34 = 99;
            *(v34 + 12) = (*(v34 + 44) - v11);
            v23 = v65;
          }

LABEL_30:
          v22 = v29;
        }

        if (*(a1 + 499))
        {
          v35 = HIWORD(v66);
          v73 = 0;
          v72 = 0;
          v70 = 0;
          v71 = 0;
          __s = 0;
          v69 = 0;
          v67 = 0;
          v36 = (*(a1[7] + 176))(a2, a3, HIWORD(v66), 0, &__s, &v73);
          if ((v36 & 0x80000000) != 0)
          {
            v7 = v36;
            v42 = 0;
          }

          else
          {
            v37 = strlen(__s);
            v42 = heap_Calloc(*(*a1 + 8), 1, v37 + 1);
            v43 = *a1;
            if (v42)
            {
              v44 = ssftstring_ObjOpen(*(v43 + 8), &v67);
              if ((v44 & 0x80000000) == 0)
              {
                v44 = ssftstring_Reserve(v67, 30);
                if ((v44 & 0x80000000) == 0)
                {
                  if (v23)
                  {
                    v45 = 0;
                    do
                    {
                      v63 = v22 + 32 * v45;
                      if (*v63 == 99)
                      {
                        v44 = (*(a1[7] + 104))(a2, a3, 2, v35, &v73 + 2);
                        if ((v44 & 0x80000000) != 0)
                        {
                          goto LABEL_62;
                        }

                        v62 = v45;
                        while (HIWORD(v73))
                        {
                          v44 = (*(a1[7] + 168))(a2, a3);
                          if ((v44 & 0x80000000) == 0)
                          {
                            v44 = (*(a1[7] + 168))(a2, a3, HIWORD(v73), 1, 1, &v70, &v73);
                            if ((v44 & 0x80000000) == 0)
                            {
                              v44 = (*(a1[7] + 168))(a2, a3, HIWORD(v73), 2, 1, &v70 + 2, &v73);
                              if ((v44 & 0x80000000) == 0)
                              {
                                strncpy(v42, &__s[v70], HIWORD(v70) - v70);
                                v42[HIWORD(v70) - v70] = 0;
                                if (v71 != 9 && v71 != 4)
                                {
                                  goto LABEL_58;
                                }

                                if (!utf8_IsChineseLetter(v42))
                                {
                                  goto LABEL_58;
                                }

                                v46 = *(v63 + 12);
                                if (v46 >= HIWORD(v70) || v46 < v70)
                                {
                                  goto LABEL_58;
                                }

                                v44 = (*(a1[7] + 176))(a2, a3, HIWORD(v73), 3, &v69, &v73);
                                if ((v44 & 0x80000000) != 0)
                                {
                                  goto LABEL_62;
                                }

                                ChineseUTFCharNum = utf8_GetChineseUTFCharNum(__s, *(v63 + 12));
                                v48 = utf8_GetChineseUTFCharNum(__s, v70);
                                v49 = *(v63 + 24);
                                if (v49)
                                {
                                  v44 = hlpProcessWordPhon(a1, v69, (ChineseUTFCharNum - v48 + 1), v49, v67);
                                  v45 = v62;
                                  if ((v44 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }
                                }

                                else
                                {
                                  v44 = hlpProcessWordPhon(a1, v69, (ChineseUTFCharNum - v48 + 1), a1[285], v67);
                                  if ((v44 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  *a1[285] = 0;
                                  v45 = v62;
                                }

                                if (!ssftstring_Size(v67) || (v61 = *(a1[7] + 160), v60 = HIWORD(v73), v50 = ssftstring_Size(v67) + 1, v51 = ssftstring_CStr(v67), v44 = v61(a2, a3, v60, 3, v50, v51, &v72), (v44 & 0x80000000) == 0))
                                {
LABEL_58:
                                  v44 = (*(a1[7] + 120))(a2, a3, HIWORD(v73), &v73 + 2);
                                  if ((v44 & 0x80000000) == 0)
                                  {
                                    continue;
                                  }
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      ++v45;
                    }

                    while (v45 != v23);
                  }

                  v44 = (*(a1[7] + 160))(a2, a3, v35, 1, v23, v22, &v72);
                }
              }

LABEL_62:
              v7 = v44;
            }

            else
            {
              v7 = 2310021130;
              log_OutPublic(*(v43 + 32), "FE_ONEWORD", 34000, 0, v38, v39, v40, v41, v59);
            }
          }

          if (v67)
          {
            ssftstring_ObjClose(v67);
          }

          if (v42)
          {
            heap_Free(*(*a1 + 8), v42);
          }

          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          LODWORD(v23) = v65;
        }

        if (v23)
        {
          v52 = 0;
          v53 = 0;
          do
          {
            v54 = v22 + 32 * v53;
            if (*v54 == 99)
            {
              v55 = (v52 + 1);
              if (v23 > v55)
              {
                memmove((v22 + 32 * v53), (v22 + 32 * v55), 32 * (v23 - v55));
              }

              if (*(v54 + 12) >= v16)
              {
                v56 = *(v54 + 24);
                v57 = strlen(v56);
                memcpy(a1[285], v56, v57 + 1);
              }

              LOWORD(v23) = --v65;
            }

            else
            {
              ++v53;
            }

            v52 = v53;
          }

          while (v53 < v23);
        }

        v7 = (*(a1[7] + 160))(a2, a3, HIWORD(v66), 1, v23, v22, &v66);
LABEL_82:
        heap_Free(*(*a1 + 8), v22);
        return v7;
      }

      v7 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v18, v19, v20, v21, v59);
    }
  }

  return v7;
}

uint64_t fe_oneword_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v4 = *(a1 + 2256);
  if (v4 && *v4)
  {
    *v4 = 0;
  }

  v5 = *(a1 + 2264);
  if (v5 && *v5)
  {
    *v5 = 0;
  }

  if (*(a1 + 2004))
  {

    return oneword_posparser_End(a1);
  }

  return result;
}

uint64_t fe_oneword_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  result = 0;
  *a3 = &fe_oneword_ResourceTypes_SZ_CONTENT_TYPES;
  return result;
}

uint64_t fe_oneword_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v7 = a1[9];
  v8 = *(a1[10] + 248);
  v9 = a1[8];

  return v8(v9, v7, a3, a4);
}

uint64_t fe_oneword_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2310021121;
  }

  result = 0;
  *a2 = &IFeOneword;
  return result;
}

uint64_t hlpProcessWordPhon(void *a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  appended = ssftstring_Clear(a5);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  __c = 0;
  v37 = 0;
  __c_1 = -1;
  appended = (*(a1[10] + 96))(a1[8], a1[9], "parallel", a4, &v37, &__c_1, &__c);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if (!__c_1)
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "[PINYIN] ERROR [lhp for tagpyt=%s not found]", v11, v12, v13, a4);
    return 7;
  }

  v14 = *v37;
  while (1)
  {
    v15 = strchr(v14, __c);
    if (!v15)
    {
      break;
    }

    *v15 = 0;
  }

  if (a3 < 2)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    v18 = strstr(&a2[v16], "{SEP");
    v19 = strchr(&a2[v16], 46);
    if (v18)
    {
      v23 = v19 == 0;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v25 = v18 + 6;
      goto LABEL_22;
    }

    v24 = v19;
    if (v18 || !v19)
    {
      break;
    }

    v25 = v19 + 1;
LABEL_22:
    v27 = strlen(a2);
    v16 = v27 - strlen(v25);
    if (++v17 >= a3)
    {
      goto LABEL_26;
    }
  }

  if (v18 && v19)
  {
    v26 = strlen(v18);
    if (v26 <= strlen(v24))
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = v18 + 6;
    }

    goto LABEL_22;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "[PINYIN] ERROR [word phon (%s not found)]", v20, v21, v22, a2);
LABEL_26:
  appended = ssftstring_AppendCStrN(a5, a2, v16);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v28 = ssftstring_AppendCStr(a5, v14);
  if ((v28 & 0x80000000) == 0)
  {
    v29 = &a2[v16];
    v30 = strstr(v29, "{SEP");
    v31 = strchr(v29, 46);
    v32 = v31;
    if (v30 && !v31)
    {
LABEL_30:
      v33 = a5;
      v34 = v30;
      return ssftstring_AppendCStr(v33, v34);
    }

    if (v30 || !v31)
    {
      if (v30 && v31)
      {
        v36 = strlen(v30);
        if (v36 > strlen(v32))
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
LABEL_33:
      v33 = a5;
      v34 = v32;
      return ssftstring_AppendCStr(v33, v34);
    }
  }

  return v28;
}

uint64_t hlp_GenXtraMainVar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, _WORD *a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v58 = a5;
  v57 = a6;
  v55 = 0;
  v53 = 32;
  if (a5 >= a6)
  {
    goto LABEL_3;
  }

  v8 = a6 - a5;
  if ((a6 - a5) > 127)
  {
    goto LABEL_3;
  }

  v56 = 0;
  __strncpy_chk();
  v17 = &__s[v8];
  *v17 = 0;
  oneword_ReplaceAllCharactersInOrthography(__s, v17, 0x23u, 45);
  v9 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), "normal", __s, 128);
  if ((v9 & 0x80000000) == 0)
  {
    **(a1 + 240) = 0;
    **(a1 + 248) = 0;
    **(a1 + 256) = 0;
    **(a1 + 264) = 0;
    v18 = strlen(__s);
    if (v18)
    {
      if (v18 == 1)
      {
        appended = oneword_TranscribeAcronym(a1, "normal", __s, &v53, v60);
      }

      else
      {
        v30 = mde_stemafx_Main(a1, "normal", __s, v19, v20, v21, v22, v23);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        strcpy(v60, "one_word");
        v49 = *(a1 + 160);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v36, v37, v38, v60);
        v39 = strlen(*(a1 + 160));
        v30 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v39);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v50 = *(a1 + 168);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v40, v41, v42, v60);
        v43 = strlen(*(a1 + 168));
        v30 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 2, *(a1 + 168), v43);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v51 = *(a1 + 176);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v44, v45, v46, v60);
        v47 = strlen(*(a1 + 176));
        v30 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 3, *(a1 + 176), v47);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        if ((ssftmap_FindReadOnly(*(a1 + 568), "normal", &v56) & 0x80000000) != 0)
        {
          v48 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v60);
          if ((v48 & 0x80000000) != 0)
          {
            v9 = v48;
            goto LABEL_32;
          }

          *v52 = 0;
          v54 = 0;
          appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v52, &v54);
          if ((appended & 0x80000000) == 0)
          {
            *(*v52 + v54) = 0;
            appended = oneword_AppendPhon(a1, *v52, "", "", 0, 1);
          }
        }

        else
        {
          appended = dt_Main(a1, 0, a2, a3, *(v56 + 16), "normal");
          v9 = 0;
          if ((appended & 0x1FFF) == 0x10A)
          {
            goto LABEL_10;
          }
        }
      }

      v9 = appended;
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

LABEL_10:
      v25 = *(a1 + 240);
      if (!*v25)
      {
        goto LABEL_32;
      }

      v25[strlen(*(a1 + 240)) - 3] = 0;
      v26 = strlen(*(a1 + 240));
      if (oneword_CountPhoneticWords((*(a1 + 240) + 3), (*(a1 + 240) + v26)) != 1)
      {
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mismatch between number of ortographic words (%d) and phonetic words (%d) in DT(%s)", v27, v28, v29, 1);
        goto LABEL_32;
      }

      v52[0] = 16;
      v30 = (*(*(a1 + 56) + 80))(a2, a3, a4, &v55 + 2);
      if ((v30 & 0x80000000) == 0)
      {
        v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 0, 1, v52, &v55);
        if ((v30 & 0x80000000) == 0)
        {
          v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 1, 1, &v58, &v55);
          if ((v30 & 0x80000000) == 0)
          {
            v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 2, 1, &v57, &v55);
            if ((v30 & 0x80000000) == 0)
            {
              v31 = *(a1 + 240);
              v32 = strlen((v31 + 3));
              v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 3, (v32 + 1), v31 + 3, &v55);
              if ((v30 & 0x80000000) == 0)
              {
                v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 5, 2, "*", &v55);
                if ((v30 & 0x80000000) == 0)
                {
                  v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 6, 2, "*", &v55);
                  if ((v30 & 0x80000000) == 0)
                  {
                    v54 = 1;
                    v30 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v55), 7, 1, &v54, &v55);
                    if ((v30 & 0x80000000) == 0)
                    {
                      v33 = *(*(a1 + 56) + 160);
                      v34 = *(a1 + 1208);
                      v35 = strlen(v34);
                      v9 = v33(a2, a3, HIWORD(v55), 9, (v35 + 1), v34, &v55);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_4;
                      }

                      if (a8)
                      {
                        *a8 = HIWORD(v55);
                      }

LABEL_32:
                      if ((v9 & 0x1FFF) == 0x10A || (v9 & 0x1FFF) == 4)
                      {
LABEL_3:
                        v9 = 0;
                        goto LABEL_4;
                      }

                      goto LABEL_4;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_30:
      v9 = v30;
    }
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t fe_oneword_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2310021127;
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

uint64_t fe_oneword_ResourceLoad(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v13 = 2310021127;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    v18 = a6 != 0;
    if (a5 || !a6)
    {
      if (!a5)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_14:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 40001, 0, v14, v15, v16, v17, v26);
    return v13;
  }

  if (!a5 || !a6)
  {
    goto LABEL_14;
  }

  v18 = 1;
LABEL_12:
  if (v18)
  {
    v19 = 0;
    LODWORD(v20) = 0;
    v28 = a5;
    v27 = a6;
LABEL_19:
    v24 = (*(a1[10] + 224))(a1[8], a1[9], a5, a6, v19, a7, a4);
    goto LABEL_20;
  }

LABEL_16:
  v22 = strstr(a3, ";loader=broker");
  v20 = v22 != 0;
  v23 = brk_DataOpenEx(*(*a1 + 24), a4, v20, &v29);
  if ((v23 & 0x80000000) != 0)
  {
    if (v22)
    {
      v13 = 0;
    }

    else
    {
      v13 = v23;
    }

    if ((v13 & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_21;
  }

  v24 = brk_DataMapEx(*(*a1 + 24), v29, 0, &v27, &v28);
  if ((v24 & 0x80000000) == 0)
  {
    a5 = v28;
    v19 = v29;
    a6 = v27;
    goto LABEL_19;
  }

LABEL_20:
  v13 = v24;
  if ((v24 & 0x80000000) == 0)
  {
    return v13;
  }

LABEL_21:
  if (v20)
  {
    v25 = v29;
    if (v29)
    {
      if (v28)
      {
        brk_DataUnmap(*(*a1 + 24), v29, v28);
        v28 = 0;
        v25 = v29;
      }

      brk_DataClose(*(*a1 + 24), v25);
    }
  }

  return v13;
}

uint64_t oneword_Lid(void *a1, _DWORD *a2)
{
  v35 = 0;
  v34 = -1;
  v33 = 0;
  v4 = a1[20];
  v5 = strlen(v4);
  v9 = v5;
  v10 = v5;
  if (!v5)
  {
    v21 = 0;
LABEL_18:
    if (*(a1 + 233))
    {
      *a2 = 1;
      v22 = *(*a1 + 32);
      v23 = "LID found ENX context";
    }

    else
    {
      if (v10)
      {
        v24 = 0;
        v25 = v10 - 1;
        do
        {
          v26 = a1[20];
          if (v24)
          {
            v27 = v24;
            v28 = *(v26 + v24 - 1);
          }

          else
          {
            v27 = 0;
            v28 = 95;
          }

          v36 = v28;
          v29 = (v26 + v27);
          v37 = *v29;
          v30 = v25 ? v29[1] : 95;
          v38 = v30;
          v39 = 0;
          v21 = (*(a1[10] + 96))(a1[8], a1[9], "lidenx", &v36, &v35, &v34, &v33);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          if (v34)
          {
            *a2 = 1;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX trigram", v6, v7, v8, v32);
            goto LABEL_22;
          }

          ++v24;
          --v25;
        }

        while (v24 < v9);
      }

      *a2 = 0;
      v22 = *(*a1 + 32);
      v23 = "LID default to LNG";
    }

    log_OutText(v22, "FE_ONEWORD", 5, 0, v23, v6, v7, v8, v32);
    return v21;
  }

  v11 = 0;
  v12 = v5;
  do
  {
    v13 = v4[v11];
    if (v13 >= 0x7B)
    {
      *a2 = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found diacritic", v6, v7, v8, v32);
      v21 = 0;
LABEL_37:
      *(a1 + 233) = 0;
      return v21;
    }

    if (strchr(a1 + 944, v13))
    {
      *a2 = 1;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX character", v6, v7, v8, v32);
      v21 = 0;
LABEL_22:
      *(a1 + 233) = 1;
      return v21;
    }

    ++v11;
  }

  while (v11 < v12);
  v14 = 0;
  v15 = v10 - 1;
  while (1)
  {
    v16 = a1[20];
    if (v14)
    {
      v17 = v14;
      v18 = *(v16 + v14 - 1);
    }

    else
    {
      v17 = 0;
      v18 = 95;
    }

    v36 = v18;
    v19 = (v16 + v17);
    v37 = *v19;
    v20 = v15 ? v19[1] : 95;
    v38 = v20;
    v39 = 0;
    v21 = (*(a1[10] + 96))(a1[8], a1[9], "lidlng", &v36, &v35, &v34, &v33);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    if (v34)
    {
      *a2 = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found LNG trigram", v6, v7, v8, v32);
      goto LABEL_37;
    }

    ++v14;
    --v15;
    if (v14 >= v12)
    {
      goto LABEL_18;
    }
  }
}

uint64_t oneword_NonDctDpsMde(void *a1, unsigned int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v45 = a5;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  strcpy(__s, "nondctbased_mde");
  v15 = strlen(__s);
  result = (*(a1[7] + 168))(a7, a8, v10, 0, 1, &v44, &v43);
  if ((result & 0x80000000) == 0)
  {
    if (v10)
    {
      v17 = v44;
      if (v44 != 3)
      {
        v37 = a2 + 128;
        v18 = a3 - a2;
        v35 = v15;
        v36 = v15 + 2;
        v19 = 1;
        while (1)
        {
          if (!v17)
          {
            result = (*(a1[7] + 168))(a7, a8, v10, 1, 1, &v41, &v43);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_35;
            }

            result = (*(a1[7] + 168))(a7, a8, v45, 2, 1, &v40, &v43);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_35;
            }

            if (v41 + 1 < v40 && v37 > v40)
            {
              v23 = (v18 + v41);
              v24 = *(v18 + v40);
              *(v18 + v40) = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v20, v21, v22, __s);
              v25 = strlen(v23);
              result = (*(a1[13] + 120))(a1[11], a1[12], 0, v23, v25);
              if ((result & 0x80000000) != 0)
              {
                goto LABEL_35;
              }

              *(v18 + v40) = v24;
              if (strcmp(a4, "normal") && v36 + strlen(a4) <= 0x7F)
              {
                __strcat_chk();
                __strcat_chk();
              }

              if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
              {
                __s[v35] = 0;
                if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
                {
                  result = 0;
                  goto LABEL_35;
                }
              }

              result = (*(a1[13] + 128))(a1[11], a1[12], 0, &v42, &v41 + 2);
              if ((result & 0x80000000) != 0)
              {
                goto LABEL_35;
              }

              v42[HIWORD(v41)] = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v26, v27, v28, __s);
              v29 = v42;
              v30 = strchr(v42, 43);
              if (v30)
              {
                break;
              }
            }
          }

LABEL_6:
          result = (*(a1[7] + 120))(a7, a8, v45, &v45);
          if ((result & 0x80000000) == 0)
          {
            if (v45)
            {
              result = (*(a1[7] + 168))(a7, a8);
              if ((result & 0x80000000) == 0)
              {
                LOWORD(v10) = v45;
                if (v45)
                {
                  v17 = v44;
                  if (v44 != 3)
                  {
                    continue;
                  }
                }
              }
            }
          }

          goto LABEL_35;
        }

        v31 = v30;
        v32 = v41;
        v33 = v19 == 0;
        while (1)
        {
          v39 = v32 + v31 - v29;
          result = (*(a1[7] + 160))(a7, a8, v45, 2, 1, &v39, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 80))(a7, a8, v45, &v45);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v44 = 0;
          result = (*(a1[7] + 160))(a7, a8, v45, 0, 1, &v44, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v45, 1, 1, &v39, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v45, 2, 1, &v40, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v32 = v39;
          LOWORD(v41) = v39;
          if (!v33)
          {
            *a6 = v45;
          }

          v29 = v31 + 1;
          v42 = v31 + 1;
          v31 = strchr(v31 + 1, 43);
          v19 = 0;
          v33 = 1;
          if (!v31)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

LABEL_35:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t oneword_DpsMde(void *a1, const char *a2, const char *a3, uint64_t a4, const char *a5, __int16 a6, unsigned __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v122 = *MEMORY[0x1E69E9840];
  v116 = a6;
  v115 = a7;
  *&__c[3] = 0;
  *&__c[1] = 0;
  __c[0] = 0;
  v113 = 8;
  v112 = 0;
  v111 = 1;
  __dst = 0;
  v110 = 0;
  v108 = 0;
  strcpy(__s, "dctbased_mde");
  v16 = strlen(__s);
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v17, v18, v19, __s);
  v20 = strlen(a2);
  v21 = (*(a1[13] + 120))(a1[11], a1[12], 0, a2, v20);
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_106;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v22, v23, v24, __s);
  v25 = strlen(a3);
  v21 = (*(a1[13] + 120))(a1[11], a1[12], 1, a3, v25);
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_106;
  }

  if (strcmp(a5, "normal") && strlen(a5) + v16 + 2 <= 0x7F)
  {
    __strcat_chk();
    __strcat_chk();
  }

  if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
  {
    __s[v16] = 0;
    if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
    {
      v29 = 0;
      goto LABEL_107;
    }
  }

  v21 = (*(a1[13] + 128))(a1[11], a1[12], 0, &v110, &v108);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_106:
    v29 = v21;
    goto LABEL_107;
  }

  v110[v108] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v26, v27, v28, __s);
  v29 = (*(a1[13] + 128))(a1[11], a1[12], 1, &__dst, &v108);
  if ((v29 & 0x80000000) == 0)
  {
    v106 = a3;
    memset(v120, 0, 80);
    memset(v118, 0, sizeof(v118));
    memset(v119, 0, sizeof(v119));
    memset(v117, 0, sizeof(v117));
    v30 = v110;
    if (*v110 == 123)
    {
      *v110 = 0;
      v120[0] = v30 + 1;
      v120[1] = "0";
      v119[0] = "0";
      v119[1] = v30 + 1;
      v31 = strchr(v110 + 1, 125);
      if (v31)
      {
        *v31 = 0;
        v30 = v31 + 1;
        v32 = strchr(v31 + 1, 123);
        v104 = 2;
        if (!v32)
        {
          __s2 = a5;
          v33 = 0;
          goto LABEL_22;
        }

LABEL_16:
        v33 = 0;
        while (1)
        {
          if (*v32 == 125)
          {
            __s2 = a5;
            v101 = 0;
            *v32 = 0;
            goto LABEL_25;
          }

          v35 = v33;
          v118[v33] = v32 + 1;
          *v32 = 0;
          v36 = strchr(v32 + 1, 43);
          if (!v36)
          {
            goto LABEL_107;
          }

          ++v33;
          *v36 = 0;
          v37 = v36 + 1;
          *(v117 + v35) = v37;
          v32 = strchr(v37, 44);
          if (!v32)
          {
            v32 = strchr(*(v117 + v33 - 1), 125);
            if (!v32)
            {
              break;
            }
          }
        }

        __s2 = a5;
LABEL_22:
        v101 = 1;
LABEL_25:
        v107 = 0;
        v38 = v33;
        v102 = v33;
        while (!v38)
        {
LABEL_43:
          ++v107;
          v38 = v102;
          if (v104 <= v107)
          {
            goto LABEL_107;
          }
        }

        v39 = v119[v107];
        v40 = v117;
        v41 = v118;
        while (1)
        {
          if (*v39 != 48 || v39[1] || **v40 != 48 || *(*v40 + 1))
          {
            v42 = v120[v107];
            if (*v42 == 48 && !*(v42 + 1))
            {
              strcpy(__dst, v30);
            }

            else
            {
              strcpy(__dst, v42);
              strcat(__dst, v30);
            }

            v46 = *v41;
            if (**v41 != 48 || v46[1])
            {
              strcat(__dst, v46);
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", v43, v44, v45, __dst);
            v29 = (*(a1[10] + 152))(a1[8], a1[9], a4, __dst, &__c[3], &__c[1], __c, *(a1 + 556));
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            if (*&__c[1])
            {
              break;
            }
          }

          v40 = (v40 + 8);
          ++v41;
          if (!--v38)
          {
            goto LABEL_43;
          }
        }

        v47 = 0;
        v99 = 0;
        while (1)
        {
          v48 = *(*&__c[3] + 8 * v47);
          v49 = strchr(v48, __c[0]);
          if (!v49)
          {
            break;
          }

          *v49 = 0;
          v54 = strchr(v49 + 1, __c[0]);
          v55 = v54;
          if (!v54)
          {
            goto LABEL_56;
          }

          *v54 = 0;
          v55 = v54 + 1;
          v56 = strchr(v54 + 1, __c[0]);
          v57 = v56;
          if (!v56)
          {
            goto LABEL_57;
          }

          *v56 = 0;
          v57 = v56 + 1;
          v58 = strchr(v56 + 1, __c[0]);
          if (!v58)
          {
            goto LABEL_57;
          }

          *v58 = 0;
          v105 = v58 + 1;
          v59 = strchr(v58 + 1, __c[0]);
          if (!v59)
          {
            goto LABEL_58;
          }

          *v59 = 0;
          v103 = v59 + 1;
          v60 = strchr(v59 + 1, __c[0]);
          v61 = v60;
          if (v60)
          {
            *v60 = 0;
            v61 = v60 + 1;
            v62 = strchr(v60 + 1, __c[0]);
            if (v62)
            {
              *v62 = 0;
              v99 = v62 + 1;
              v63 = strchr(v62 + 1, __c[0]);
              if (v63)
              {
                *v63 = 0;
              }
            }
          }

LABEL_59:
          v64 = *(*a1 + 32);
          if (!v48)
          {
            v29 = 2310021127;
            log_OutPublic(v64, "FE_ONEWORD", 34001, 0, v50, v51, v52, v53, v98);
            goto LABEL_107;
          }

          log_OutText(v64, "FE_ONEWORD", 5, 0, "G2P Validating %s", v51, v52, v53, v48);
          if (v55 && *v55 && !strstr(v55, __s2))
          {
            v95 = "G2P Domain validation not OK";
LABEL_103:
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, v95, v65, v66, v67, v98);
            goto LABEL_104;
          }

          if (v61 && *v61 == 48 && !v61[1])
          {
            v95 = "G2P MDE usage validation not OK";
            goto LABEL_103;
          }

          *a11 = v116 + strlen(v106);
          v21 = (*(a1[7] + 88))(a9, a10, v115, &v115);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          v21 = (*(a1[7] + 160))(a9, a10, v115, 0, 1, &v113, &v112);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          v21 = (*(a1[7] + 160))(a9, a10, v115, 1, 1, &v116, &v112);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          v21 = (*(a1[7] + 160))(a9, a10, v115, 2, 1, a11, &v112);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          if ((v101 & 1) == 0)
          {
            v68 = strlen(v48);
            v69 = strlen(v32);
            if (v69 + v68 - 124 <= 0xFFFFFFFFFFFFFF7ELL)
            {
              v70 = heap_Realloc(*(*a1 + 8), a1[30], (v69 + v68 + 5));
              if (!v70)
              {
                log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v71, v72, v73, v74, v98);
                v29 = 2310021130;
                goto LABEL_107;
              }

              a1[30] = v70;
            }
          }

          v75 = v119[v107];
          if (*v75 == 48 && !*(v75 + 1))
          {
            v76 = a1[30];
          }

          else
          {
            strcpy(a1[30], v75);
            v76 = (a1[30] + strlen(a1[30]));
          }

          *v76 = 8689634;
          strcat(a1[30], v48);
          *(a1[30] + strlen(a1[30])) = 8689634;
          v77 = *v40;
          if (**v40 != 48 || *(v77 + 1))
          {
            strcat(a1[30], v77);
          }

          v78 = strlen(a1[30]);
          v21 = (*(a1[7] + 160))(a9, a10, v115, 3, (v78 + 1), a1[30], &v112);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          if (v57)
          {
            if (*v57)
            {
              v79 = (strlen(v57) + 1);
              v80 = a9;
              v81 = a10;
              v82 = v115;
              v83 = v57;
            }

            else
            {
              v80 = a9;
              v81 = a10;
              v82 = v115;
              v79 = 2;
              v83 = "*";
            }

            v21 = (*(a1[7] + 160))(v80, v81, v82, 5, v79, v83, &v112);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          if (v105)
          {
            if (*v105)
            {
              v84 = (strlen(v105) + 1);
              v85 = a9;
              v86 = a10;
              v87 = v115;
              v88 = v105;
            }

            else
            {
              v85 = a9;
              v86 = a10;
              v87 = v115;
              v84 = 2;
              v88 = "*";
            }

            v21 = (*(a1[7] + 160))(v85, v86, v87, 6, v84, v88, &v112);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          v89 = v103 ? LH_atou(v103) : 1;
          v111 = v89;
          v21 = (*(a1[7] + 160))(a9, a10, v115, 7, 1, &v111, &v112);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          if (v99)
          {
            v90 = (strlen(v99) + 1);
            v91 = a9;
            v92 = a10;
            v93 = v115;
            v94 = v99;
          }

          else
          {
            v91 = a9;
            v92 = a10;
            v93 = v115;
            v90 = 1;
            v94 = "";
          }

          v29 = (*(a1[7] + 160))(v91, v92, v93, 9, v90, v94, &v112);
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_107;
          }

LABEL_104:
          if (++v47 >= *&__c[1])
          {
            goto LABEL_107;
          }
        }

        v55 = 0;
LABEL_56:
        v57 = 0;
LABEL_57:
        v105 = 0;
LABEL_58:
        v103 = 0;
        v61 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v120[0] = "0";
      v119[0] = "0";
      v34 = strchr(v110, 123);
      if (v34)
      {
        v32 = v34;
        v104 = 1;
        goto LABEL_16;
      }
    }
  }

LABEL_107:
  v96 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t crf_mde_seg_get_broker_string(uint64_t a1, char **a2, char **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = "";
  __s = 0;
  memset(v20, 0, sizeof(v20));
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v18), (Str & 0x80000000) != 0))
  {
    v12 = Str;
  }

  else
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    v7 = heap_Calloc(*(a1 + 8), 1, 1024);
    *a2 = v7;
    if (v7 && (v12 = brokeraux_ComposeBrokerString(a1, v20, 1, 1, __s, 0, 0, v7, 0x400uLL), v13 = strlen(__s), v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1), (*a3 = v14) != 0))
    {
      strcpy(v14, __s);
    }

    else
    {
      v12 = 2310021130;
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v8, v9, v10, v11, v17);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t getUmlautMap(uint64_t a1, char *__s, uint64_t *a3, unsigned __int16 *a4)
{
  v6 = __s;
  v8 = strchr(__s, 44);
  for (i = 1; v8; v8 = strchr(v8 + 1, 44))
  {
    ++i;
  }

  v10 = 16 * i;
  v11 = heap_Calloc(*(a1 + 8), 1, v10);
  *a3 = v11;
  if (v11)
  {
    if (i)
    {
      for (j = 0; v10 != j; j += 16)
      {
        v17 = strchr(v6, 44);
        v18 = v17;
        if (v17)
        {
          *v17 = 0;
        }

        v19 = strchr(v6, 59);
        if (v19)
        {
          *v19 = 0;
          v20 = v19 + 1;
          v21 = strlen(v6);
          *(*a3 + j) = heap_Calloc(*(a1 + 8), 1, v21 + 1);
          v22 = *(*a3 + j);
          if (!v22)
          {
            goto LABEL_18;
          }

          strcpy(v22, v6);
          v23 = strlen(v20);
          *(*a3 + j + 8) = heap_Calloc(*(a1 + 8), 1, v23 + 1);
          v24 = *(*a3 + j + 8);
          if (!v24)
          {
            goto LABEL_18;
          }

          strcpy(v24, v20);
          if (v18)
          {
            v25 = v10 - 16 == j;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v6 = v18 + 1;
          }
        }
      }
    }

    v26 = 0;
    *a4 = i;
  }

  else
  {
LABEL_18:
    v26 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v12, v13, v14, v15, v28);
  }

  return v26;
}

uint64_t crf_mde_seg_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  v61 = 0;
  v60 = 0;
  __s = 0;
  *(a10 + 144) = log_GetLogLevel(*(a5 + 32)) > 4;
  *a11 = 0;
  broker_string = crf_mde_seg_get_broker_string(a5, (a10 + 32), &v61);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if ((crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, (a10 + 40), 2, *(a10 + 32), "CRPH", 1031, 0, crf_set_nbest_callback) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_ONEWORD", 5, 0, "no CRF MDE model found", v19, v20, v21, *(a10 + 32));
    v32 = 0;
    goto LABEL_18;
  }

  broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegsep", (a10 + 64), 0, "STR");
  if ((broker_string & 0x80000000) != 0 || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "orthtrigger", (a10 + 72), 0, "STR"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdemorphesep", (a10 + 80), 0, "STR"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegbypassonewordcrosstoken", 0, (a10 + 52), "BOOL"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegpostsegdictlookup", 0, (a10 + 56), "BOOL"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdeskipwordswiththischar", (a10 + 88), 0, "STR"), (broker_string & 0x80000000) != 0))
  {
LABEL_16:
    v32 = broker_string;
    goto LABEL_18;
  }

  fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegumlautmap", &__s, 0, "STR");
  v23 = __s;
  if ((fecfgparam_string & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  if (!__s || (UmlautMap = getUmlautMap(a5, __s, (a10 + 96), (a10 + 104)), (UmlautMap & 0x80000000) == 0))
  {
    fecfgparam_string = crf_mde_seg_parse_params(a5, *(a10 + 40), a10);
    if ((fecfgparam_string & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v29 = *(a10 + 12);
    v30 = *(a5 + 32);
    if (v29 == 1)
    {
      v31 = "SEG_Char";
    }

    else
    {
      if (v29 != 2)
      {
        v32 = 2310021127;
        goto LABEL_41;
      }

      v31 = "SEG_Morpheme";
    }

    log_OutText(v30, "FE_ONEWORD", 5, 0, "set mde param, type: %s", v26, v27, v28, v31);
    v36 = *(a10 + 16);
    if (v36 == 1)
    {
      v37 = "ANN_BI";
LABEL_34:
      log_OutText(*(a5 + 32), "FE_ONEWORD", 5, 0, "set mde param, type: %s", v26, v27, v28, v37);
      *(a10 + 48) = 1;
      *a11 = 1;
      fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_tag_mappings_dic", (a10 + 112), 0, "STR");
      if ((fecfgparam_string & 0x80000000) == 0)
      {
        v38 = *(a10 + 112);
        if (v38)
        {
          fecfgparam_string = (*(a9 + 72))(a7, a8, v38, &v60);
          if ((fecfgparam_string & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          if (*(a10 + 112) && !v60)
          {
            v32 = 2310021127;
            log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34009, "%s%s", v39, v40, v41, v42, "message");
            goto LABEL_56;
          }
        }

        fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_morpheme_dic", (a10 + 120), 0, "STR");
        if ((fecfgparam_string & 0x80000000) == 0)
        {
          v43 = *(a10 + 120);
          if (v43)
          {
            fecfgparam_string = (*(a9 + 72))(a7, a8, v43, &v60);
            if ((fecfgparam_string & 0x80000000) != 0)
            {
              goto LABEL_55;
            }

            if (*(a10 + 120) && !v60)
            {
              v32 = 2310021127;
              log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34010, "%s%s", v44, v45, v46, v47, "message");
              goto LABEL_56;
            }
          }

          fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_affix_dic", (a10 + 128), 0, "STR");
          if ((fecfgparam_string & 0x80000000) == 0)
          {
            v48 = *(a10 + 128);
            if (!v48)
            {
LABEL_58:
              v32 = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_seg_patterns_dic", (a10 + 136), 0, "STR");
              if ((v32 & 0x80000000) == 0)
              {
                v53 = *(a10 + 136);
                if (v53)
                {
                  v32 = (*(a9 + 72))(a7, a8, v53, &v60);
                  if ((v32 & 0x80000000) == 0 && *(a10 + 136) && !v60)
                  {
                    v32 = 2310021127;
                    log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34012, "%s%s", v54, v55, v56, v57, "message");
                  }
                }
              }

LABEL_56:
              if (!v23)
              {
                goto LABEL_18;
              }

              goto LABEL_57;
            }

            fecfgparam_string = (*(a9 + 72))(a7, a8, v48, &v60);
            if ((fecfgparam_string & 0x80000000) == 0)
            {
              if (*(a10 + 128) && !v60)
              {
                v32 = 2310021127;
                log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34011, "%s%s", v49, v50, v51, v52, "message");
                goto LABEL_56;
              }

              goto LABEL_58;
            }
          }
        }
      }

LABEL_55:
      v32 = fecfgparam_string;
      goto LABEL_56;
    }

    if (v36 == 2)
    {
      v37 = "ANN_BMES";
      goto LABEL_34;
    }

    v32 = 2310021127;
    v30 = *(a5 + 32);
LABEL_41:
    log_OutPublic(v30, "FE_ONEWORD", 34006, "%s%s", v25, v26, v27, v28, "message");
    goto LABEL_56;
  }

  v32 = UmlautMap;
LABEL_57:
  heap_Free(*(a5 + 8), v23);
LABEL_18:
  v33 = *(a10 + 32);
  if (v33)
  {
    heap_Free(*(a5 + 8), v33);
    *(a10 + 32) = 0;
  }

  if (v61)
  {
    heap_Free(*(a5 + 8), v61);
  }

  if ((v32 & 0x80000000) != 0 && *(a10 + 48) == 1)
  {
    v34 = *(a10 + 40);
    if (v34)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(a5, a6, v34);
      *(a10 + 40) = 0;
    }
  }

  return v32;
}

uint64_t crf_set_nbest_callback(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0u;
  v7 = 0u;
  result = crf_mde_seg_parse_params(a1, a2, &v6);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = DWORD1(v7);
    }

    crf_free_conf(a1, &v6);
    return 0;
  }

  return result;
}

uint64_t crf_mde_seg_get_fecfgparam_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6, _BOOL4 *a7, char *__s1)
{
  *&__c[1] = -1;
  if (!strcmp(__s1, "BOOL"))
  {
    *a7 = 0;
  }

  if (!strcmp(__s1, "STR"))
  {
    *a6 = 0;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  v16 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  if ((v16 & 0x80001FFF) == 0x8000000A)
  {
LABEL_6:
    v21 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v17, v18, v19, v20, v30);
    return v21;
  }

  v21 = v16;
  if ((v16 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*&__c[1])
  {
    v22 = strchr(**&__c[3], __c[0]);
    if (v22)
    {
      *v22 = 0;
    }

    if (!strcmp(__s1, "STR"))
    {
      v25 = strlen(**&__c[3]);
      v26 = heap_Calloc(*(a1 + 8), 1, (v25 + 1));
      *a6 = v26;
      if (v26)
      {
        strcpy(v26, **&__c[3]);
        v31 = *a6;
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde seg param %s = %s", v27, v28, v29, a5);
        return v21;
      }

      goto LABEL_6;
    }

    if (!strcmp(__s1, "BOOL"))
    {
      v23 = 0;
      *a7 = 0;
      if (***&__c[3] == 49)
      {
        v23 = *(**&__c[3] + 1) == 0;
      }

      *a7 = v23;
    }
  }

  return v21;
}

uint64_t crf_mde_seg_parse_params(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 10) = 0;
  v3 = (a3 + 10);
  *(a3 + 12) = 0;
  v62 = (a3 + 12);
  *(a3 + 16) = 0;
  v61 = (a3 + 16);
  *(a3 + 20) = 1;
  v60 = (a3 + 20);
  if (!*(a2 + 40))
  {
    return 0;
  }

  v6 = 0;
  v59 = a2;
  while (1)
  {
    v7 = *(a2 + 32) + 16 * v6;
    v8 = *v7;
    if (!strcmp(*v7, "features"))
    {
      break;
    }

    if (!strcmp(v8, "settings"))
    {
      v32 = *(v7 + 8);
      v33 = strlen(v32);
      v34 = heap_Alloc(*(a1 + 8), v33 + 1);
      if (!v34)
      {
        goto LABEL_81;
      }

      v39 = v34;
      strcpy(v34, v32);
      if (v33)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = v33;
        v44 = -v33;
        v45 = 0;
LABEL_38:
        v46 = 0;
        while (2)
        {
          v47 = !v46;
          ++v40;
          while (1)
          {
            v48 = *(v39 + v40 - 1);
            if (v47)
            {
              break;
            }

            if (v48 != 32)
            {
              v46 = 1;
              goto LABEL_49;
            }

            *(v39 + v40 - 1) = 0;
            if (!v42)
            {
              v42 = 1;
              v41 = v45;
              if (v44 + v40)
              {
                goto LABEL_38;
              }

              goto LABEL_66;
            }

            crf_mde_seg_set_param_value(a1, v39, v41, v45, v3, v62, v61, v60);
            v42 = 0;
            ++v40;
            v47 = 1;
            if (v44 + v40 == 1)
            {
              goto LABEL_67;
            }
          }

          v46 = v48 != 32;
          if (v48 != 32)
          {
            v45 = v40 - 1;
          }

LABEL_49:
          if (v44 + v40)
          {
            continue;
          }

          break;
        }

        if (v42 == 1)
        {
LABEL_66:
          crf_mde_seg_set_param_value(a1, v39, v41, v45, v3, v62, v61, v60);
        }

LABEL_67:
        v58 = v39;
        do
        {
          if (!*v58)
          {
            *v58 = 32;
          }

          ++v58;
          --v43;
        }

        while (v43);
      }

      heap_Free(*(a1 + 8), v39);
    }

    else if (!strcmp(v8, "featureparam"))
    {
      v9 = *(v7 + 8);
      v10 = strlen(v9);
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
LABEL_8:
        v17 = 0;
        while (2)
        {
          v18 = !v17;
          v19 = v15;
          while (!v18)
          {
            if (v9[v19] != 32)
            {
              v17 = 1;
              goto LABEL_20;
            }

            v9[v19] = 0;
            if (!v14)
            {
              v15 = v19 + 1;
              v14 = 1;
              v13 = v16;
              if ((v19 + 1) < v12)
              {
                goto LABEL_8;
              }

              goto LABEL_75;
            }

            result = crf_mde_seg_set_featureparam_value(a1, v9, v13, v16, (a3 + 24));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v14 = 0;
            ++v19;
            v18 = 1;
            if (v19 >= v11)
            {
              goto LABEL_76;
            }
          }

          v21 = v9[v19];
          v17 = v21 != 32;
          if (v21 != 32)
          {
            v16 = v19;
          }

LABEL_20:
          v15 = v19 + 1;
          if ((v19 + 1) < v12)
          {
            continue;
          }

          break;
        }

        if (v14 != 1)
        {
          goto LABEL_76;
        }

LABEL_75:
        result = crf_mde_seg_set_featureparam_value(a1, v9, v13, v16, (a3 + 24));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        do
        {
LABEL_76:
          if (!*v9)
          {
            *v9 = 32;
          }

          ++v9;
          --v11;
        }

        while (v11);
      }
    }

LABEL_72:
    ++v6;
    a2 = v59;
    if (v6 >= *(v59 + 40))
    {
      return 0;
    }
  }

  v22 = *(v7 + 8);
  v23 = strlen(v22);
  v24 = v23;
  *(a3 + 8) = 0;
  if (v23)
  {
    v25 = 0;
    v26 = 0;
    v27 = v23;
    v28 = v22;
    do
    {
      v29 = *v28++;
      v30 = v29 == 32;
      if (v26)
      {
        v26 = !v30;
      }

      else if (v30)
      {
        v26 = 0;
      }

      else
      {
        *(a3 + 8) = ++v25;
        v26 = 1;
      }

      --v27;
    }

    while (v27);
    v31 = 8 * v25 + 8;
  }

  else
  {
    v31 = 8;
  }

  v49 = heap_Calloc(*(a1 + 8), 1, v31);
  *a3 = v49;
  if (v49)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    do
    {
      v54 = v53;
      v55 = v22[v53];
      if (v55 == 32)
      {
        LOBYTE(v55) = 0;
        v56 = 0;
        v50 = 0;
        v57 = *(*a3 + 8 * v52++);
      }

      else
      {
        if (v50)
        {
          v57 = *(*a3 + 8 * v52);
        }

        else
        {
          *(*a3 + 8 * v52) = heap_Alloc(*(a1 + 8), 64);
          v57 = *(*a3 + 8 * v52);
          if (!v57)
          {
            goto LABEL_81;
          }

          LOBYTE(v55) = v22[v54];
        }

        v56 = v51 + 1;
        v50 = 1;
      }

      *(v57 + v51) = v55;
      v53 = v54 + 1;
      v51 = v56;
    }

    while (v54 + 1 <= v24);
    goto LABEL_72;
  }

LABEL_81:
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v35, v36, v37, v38, v59);
  return 2310021130;
}

uint64_t crf_mde_seg_unload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a3 + 32) = 0;
  }

  if (*(a3 + 48) == 1 && (v7 = *(a3 + 40)) != 0)
  {
    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, v7);
    if ((Only_DereferenceCnt & 0x80000000) != 0)
    {
      return Only_DereferenceCnt;
    }

    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  crf_free_conf(a1, a3);
  v9 = *(a3 + 64);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a3 + 64) = 0;
  }

  v10 = *(a3 + 72);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a3 + 72) = 0;
  }

  v11 = *(a3 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a3 + 80) = 0;
  }

  v12 = *(a3 + 88);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 88) = 0;
  }

  if (*(a3 + 104))
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a3 + 96);
    do
    {
      heap_Free(*(a1 + 8), *(v15 + v13));
      v16 = (*(a3 + 96) + v13);
      *v16 = 0;
      heap_Free(*(a1 + 8), v16[1]);
      v15 = *(a3 + 96);
      *(v15 + v13 + 8) = 0;
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a3 + 104));
    heap_Free(*(a1 + 8), v15);
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
  }

  v17 = *(a3 + 112);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a3 + 112) = 0;
  }

  v18 = *(a3 + 120);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a3 + 120) = 0;
  }

  v19 = *(a3 + 128);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a3 + 128) = 0;
  }

  v20 = *(a3 + 136);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a3 + 136) = 0;
  }

  return Only_DereferenceCnt;
}

void *crf_free_conf(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        heap_Free(v3[1], *(*a2 + 8 * v5++));
      }

      while (v5 < *(a2 + 8));
      v4 = *a2;
    }

    result = heap_Free(v3[1], v4);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    result = heap_Free(v3[1], v6);
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t crf_mde_getStrForCrossToken(uint64_t a1, char *__s, const char **a3, const char *a4, const char *a5, const char *a6)
{
  v11 = strlen(__s);
  __s2 = a4;
  v12 = strlen(a4);
  if (a5)
  {
    v13 = strlen(a5);
    v29 = strlen(a6);
  }

  else
  {
    v13 = 0;
    v29 = 0;
  }

  v30 = a1;
  v31 = a6;
  v14 = v11;
  if (v11)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v11;
    v19 = __s;
    do
    {
      if (v12 + v15 < v14 && !strncmp(v19, __s2, v12))
      {
        strncat(a3[v17++], &__s[v16], v15 - v16);
        v16 = (v12 + v15);
      }

      ++v15;
      ++v19;
    }

    while (v18 != v15);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  strncat(a3[v17], &__s[v16], (v14 - v16));
  if (a5 && v17 != 0xFFFF)
  {
    v20 = (v17 + 1);
    v21 = 28;
    do
    {
      v22 = *a3;
      if (*(*(v30 + 8) + v21))
      {
        strcat(v22, a5);
        v23 = strlen(*a3);
        memmove(&(*a3)[v13], *a3, v23 + v13);
        v24 = *a3;
        v25 = a5;
        v26 = v13;
      }

      else
      {
        strcat(v22, v31);
        v27 = strlen(*a3);
        memmove(&(*a3)[v29], *a3, v27 + v29);
        v24 = *a3;
        v25 = v31;
        v26 = v29;
      }

      memcpy(v24, v25, v26);
      ++a3;
      v21 += 48;
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t crf_mde_seg_label(uint64_t a1, char *__s, uint64_t a3, const char *a4, unsigned int a5, int a6, _WORD *a7, unsigned __int16 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22, uint64_t *a23, uint64_t *a24, uint64_t *a25, char **a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t *a30, char *a31, char *a32, char *a33, _BYTE *a34, char *a35, int a36)
{
  v422 = *MEMORY[0x1E69E9840];
  v418[0] = 0;
  v418[1] = 0;
  v416 = 0;
  v417 = 0;
  v415 = 0;
  v405 = strlen(__s);
  v42 = strlen(a4);
  v412 = 0;
  v413 = 0;
  v411 = 0;
  __s1[1] = 0;
  __s1[0] = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v414 = 0;
  *&__c[1] = -1;
  v43 = (*(a12 + 96))(a13, a14, "fecfg", "mde_morphweight", &__c[3], &__c[1], __c);
  if ((v43 & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_2;
  }

  v49 = 0;
  if (v43 < 0)
  {
    v50 = a3;
  }

  else
  {
    v50 = a3;
    if (*&__c[1])
    {
      v51 = **&__c[3];
      v52 = strchr(**&__c[3], __c[0]);
      if (v52)
      {
        *v52 = 0;
        v51 = **&__c[3];
      }

      v49 = atoi(v51);
    }
  }

  v392 = a5;
  v53 = crf_mde_utils_dynstr_init(a1, __s1, (v42 + 16), 16);
  if ((v53 & 0x80000000) != 0)
  {
    v48 = v53;
    goto LABEL_15;
  }

  v48 = crf_mde_utils_dynstr_add(a1, __s1, a4, 2);
  if ((v48 & 0x80000000) != 0)
  {
LABEL_15:
    v397 = 0;
    v399 = 0;
    v59 = 0;
    v393 = 0;
    v394 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v387 = 0;
    v63 = 0;
    v401 = 0;
    v402 = 0;
    v64 = 0;
    v400 = v42;
    goto LABEL_16;
  }

  v383 = v49;
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Doing CRF MDE segmentation for token %s", v45, v46, v47, __s1[0]);
  v54 = *(v50 + 88);
  v55 = __s1[0];
  if (v54 && strstr(__s1[0], *(v50 + 88)))
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "found %s in token, skip CRF MDE segmentation", v56, v57, v58, v54);
    goto LABEL_83;
  }

  v382 = a6;
  v381 = a8;
  if (*(v50 + 96))
  {
    v408 = 0;
    v94 = Utf8_LengthInBytes(v55, 1);
    if (v42)
    {
      v95 = v94;
      v96 = 0;
      v97 = 0;
      do
      {
        v96 += isUmlaut(&__s1[0][v97], v95, *(v50 + 96), *(v50 + 104), &v408);
        v97 += v95;
        v95 = Utf8_LengthInBytes(&__s1[0][v97], 1);
      }

      while (v97 < v42);
      if (v96)
      {
        v421 = 0;
        *v420 = 0;
        v384 = heap_Calloc(*(a1 + 8), 1, 4 * v96);
        if (!v384)
        {
          goto LABEL_2;
        }

        v98 = crf_mde_utils_dynstr_init(a1, v420, (v42 + 16), 16);
        if ((v98 & 0x80000000) != 0)
        {
          v48 = v98;
        }

        else
        {
          v380 = a7;
          v99 = Utf8_LengthInBytes(__s1[0], 1);
          v100 = 0;
          v101 = 0;
          do
          {
            if (isUmlaut(&__s1[0][v101], v99, *(v50 + 96), *(v50 + 104), &v408))
            {
              v102 = v408;
              v103 = *(*(v50 + 96) + 16 * v408 + 8);
              __strcpy_chk();
              v104 = crf_mde_utils_dynstr_add(a1, v420, v419, 1);
              if ((v104 & 0x80000000) != 0)
              {
                goto LABEL_153;
              }

              v105 = (v384 + 4 * v100);
              *v105 = v101;
              v105[1] = strlen(*(*(v50 + 96) + 16 * v102 + 8));
              ++v100;
            }

            else
            {
              __strncpy_chk();
              v419[v99] = 0;
              v104 = crf_mde_utils_dynstr_add(a1, v420, v419, 1);
              if ((v104 & 0x80000000) != 0)
              {
LABEL_153:
                v48 = v104;
                goto LABEL_83;
              }
            }

            v101 += v99;
            v99 = Utf8_LengthInBytes(&__s1[0][v101], 1);
          }

          while (v101 < v42);
          crf_mde_utils_dynstr_free(a1, __s1);
          v106 = strlen(*v420);
          v107 = crf_mde_utils_dynstr_init(a1, __s1, (v106 + 16), 16);
          if ((v107 & 0x80000000) == 0)
          {
            v107 = crf_mde_utils_dynstr_add(a1, __s1, *v420, 2);
            if ((v107 & 0x80000000) == 0)
            {
              log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "expanded umlaut token %s", v45, v46, v47, __s1[0]);
              crf_mde_utils_dynstr_free(a1, v420);
              if (v100)
              {
                v111 = 0;
                v112 = (v384 + 2);
                do
                {
                  v113 = *(v112 - 1);
                  v114 = *v112;
                  v112 += 2;
                  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "umlaut[%d] pos=%d len=%d", v108, v109, v110, v111++);
                }

                while (v100 != v111);
              }

              v59 = v384;
              goto LABEL_104;
            }
          }

          v48 = v107;
          LOWORD(v42) = v106;
          LOWORD(v96) = v100;
        }

        v394 = 0;
        v397 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v387 = 0;
        v63 = 0;
        v401 = 0;
        v402 = 0;
        v393 = 0;
        v64 = 0;
        v399 = v96;
        v400 = v42;
LABEL_225:
        v59 = v384;
        goto LABEL_16;
      }
    }

    v380 = a7;
    v59 = 0;
    v100 = 0;
    v106 = v42;
LABEL_104:
    v55 = __s1[0];
    goto LABEL_106;
  }

  v380 = a7;
  v59 = 0;
  v100 = 0;
  v106 = v42;
LABEL_106:
  v115 = strlen(v55) + v392 == v405;
  v116 = heap_Calloc(*(a1 + 8), 1, 16 * *(v50 + 10) + 8 * v106);
  if (!v116)
  {
    goto LABEL_2;
  }

  v64 = v116;
  v48 = crf_mde_seg_fv_new(a1, *(v50 + 8), v418);
  v400 = v106;
  if ((v48 & 0x80000000) != 0)
  {
    v397 = 0;
    v399 = v100;
    v393 = 0;
    v394 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v387 = 0;
    v63 = 0;
    v401 = 0;
    v402 = 0;
    goto LABEL_16;
  }

  v388 = v115;
  v384 = v59;
  if (*(v50 + 144) == 1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "szSent %s", v45, v46, v47, __s);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "word %s", v117, v118, v119, __s1[0]);
    if (*(v50 + 8))
    {
      v123 = 0;
      do
      {
        v350 = *(*v50 + 8 * v123);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "FEAT[%d] %s", v120, v121, v122, v123++);
      }

      while (v123 < *(v50 + 8));
    }
  }

  if (v106)
  {
    v124 = 0;
    v125 = 0;
    do
    {
      v126 = v125;
      v127 = Utf8_LengthInBytes(&__s1[0][v125], 1);
      v128 = v127;
      v129 = *(v50 + 12);
      if (v129 == 1 || v129 == 2 && ((v130 = *(v50 + 80)) != 0 && !strncmp(&__s1[0][v126], v130, v127) || (v131 = *(v50 + 64)) != 0 && !strncmp(&__s1[0][v126], v131, v128)))
      {
        ++v124;
      }

      v125 = v126 + v128;
    }

    while ((v126 + v128) < v106);
    v132 = v124 + 1;
  }

  else
  {
    v132 = 1;
  }

  v401 = heap_Calloc(*(a1 + 8), 1, 8 * v132);
  if (!v401)
  {
    goto LABEL_2;
  }

  if (*(v50 + 12) == 2)
  {
    v59 = v384;
    v393 = heap_Calloc(*(a1 + 8), 1, 4 * v132);
    if (!v393)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v393 = 0;
    v132 = 0;
    v59 = v384;
  }

  v378 = v382 + v392;
  v379 = v382 + v392 + v42;
  v399 = v100;
  if (!v106)
  {
    v397 = 0;
    v144 = 0;
    v145 = v401;
    goto LABEL_189;
  }

  v402 = 0;
  v133 = 0;
  v134 = 0;
  v398 = v106;
  while (1)
  {
    v135 = v134;
    v136 = Utf8_LengthInBytes(&__s1[0][v134], 1);
    v137 = v136;
    v138 = *(v50 + 12);
    if (v138 != 1)
    {
      break;
    }

    if (v136)
    {
      v141 = v136;
LABEL_144:
      v142 = heap_Calloc(*(a1 + 8), 1, v141 + 1);
      *(v401 + 8 * v402) = v142;
      if (!v142)
      {
        goto LABEL_2;
      }

      strncpy(v142, &__s1[0][v133], v141);
      if (*(v50 + 12) == 2)
      {
        *(v393 + 4 * v402) = 0;
      }

      ++v402;
      v133 = v135 + v137;
      v59 = v384;
      v106 = v400;
    }

LABEL_148:
    v134 = v135 + v137;
    v143 = (v135 + v137);
    if (v143 >= v106)
    {
      if (v143 == v133)
      {
        v397 = 0;
        v145 = v401;
        v144 = v402;
        goto LABEL_189;
      }

      v146 = (v134 - v133);
      v147 = heap_Calloc(*(a1 + 8), 1, v146 + 1);
      *(v401 + 8 * v402) = v147;
      if (!v147)
      {
        goto LABEL_2;
      }

      strncpy(v147, &__s1[0][v133], v146);
      if (*(v50 + 12) == 2)
      {
        v148 = v398 + v392;
        if (v398 + v392 >= v405 || !TOK_IS_PUNCT(&__s[v392 + v106]) || (v149 = *(v50 + 72)) != 0 && (v150 = strlen(*(v50 + 72)), !strncmp(&__s[v392 + v106], v149, v150)))
        {
          v157 = 0;
          v397 = 0;
        }

        else
        {
          v151 = v398 + v392;
          do
          {
            v152 = v151++;
          }

          while (v151 < v405 && TOK_IS_PUNCT(&__s[v151]));
          if (TOK_IS_PUNCT(&__s[v151]))
          {
            v153 = v151;
          }

          else
          {
            v153 = v152;
          }

          v154 = v153 - v148;
          v155 = heap_Calloc(*(a1 + 8), 1, v154 + 2);
          if (!v155)
          {
            goto LABEL_2;
          }

          v156 = v154 + 1;
          v397 = strncpy(v155, &__s[v148], v156);
          v397[v156] = 0;
          v157 = 1;
        }

        v145 = v401;
        *(v393 + 4 * v402) = v157;
        v59 = v384;
      }

      else
      {
        v397 = 0;
        v145 = v401;
      }

      v144 = v402 + 1;
LABEL_189:
      v402 = v144;
      v169 = v144;
      LODWORD(v170) = *(v50 + 10);
      if (*(v50 + 10))
      {
        v171 = 0;
        do
        {
          v172 = crf_mde_seg_set_padding_features(a1, v171, *(v50 + 8), v418, 1);
          if ((v172 & 0x80000000) != 0)
          {
            goto LABEL_220;
          }

          v172 = crf_mde_seg_concat_strings(a1, v418, &v417);
          if ((v172 & 0x80000000) != 0)
          {
            goto LABEL_220;
          }

          v64[v171] = v417;
          v417 = 0;
          ++v171;
          v170 = *(v50 + 10);
        }

        while (v171 < v170);
      }

      if (v402)
      {
        v377 = v169;
        v173 = 0;
        while (1)
        {
          features = crf_mde_seg_get_features(a1, v145, v402, v393, v132, v173, *(v50 + 24), *v50, *(v50 + 8), v418, v392 == 0, v388);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          features = crf_mde_seg_concat_strings(a1, v418, &v417);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          LODWORD(v170) = *(v50 + 10);
          v64[*(v50 + 10) + v173] = v417;
          v417 = 0;
          if (v402 == ++v173)
          {
            v59 = v384;
            goto LABEL_200;
          }
        }

        v48 = features;
        v394 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v387 = 0;
        v63 = 0;
        goto LABEL_224;
      }

LABEL_200:
      if (v170)
      {
        v175 = 0;
        while (1)
        {
          v172 = crf_mde_seg_set_padding_features(a1, v175, *(v50 + 8), v418, 0);
          if ((v172 & 0x80000000) != 0)
          {
            break;
          }

          v172 = crf_mde_seg_concat_strings(a1, v418, &v417);
          if ((v172 & 0x80000000) != 0)
          {
            break;
          }

          v170 = *(v50 + 10);
          v64[v402 + v175 + v170] = v417;
          v417 = 0;
          if (++v175 >= v170)
          {
            goto LABEL_205;
          }
        }

LABEL_220:
        v48 = v172;
        goto LABEL_221;
      }

LABEL_205:
      v176 = v402;
      if (*(v50 + 144) == 1 && v402)
      {
        for (i = 0; i != v402; ++i)
        {
          v178 = *(v50 + 12);
          if (v178 == 1)
          {
            v352 = *(v401 + 8 * i);
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "token[%d] %s", v45, v46, v47, i);
          }

          else if (v178 == 2)
          {
            v351 = *(v401 + 8 * i);
            v354 = *(v393 + 4 * i);
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "token[%d] %s punc = %d", v45, v46, v47, i);
          }
        }

        LODWORD(v170) = *(v50 + 10);
        v59 = v384;
      }

      v48 = crf_Process(*(v50 + 40), v64, v402 + 2 * v170, &v416, &v415);
      if ((v48 & 0x80000000) != 0)
      {
        goto LABEL_221;
      }

      if (*(v50 + 144) == 1)
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "results : %d best", v45, v46, v47, *(v50 + 20));
        if (!v415)
        {
LABEL_221:
          v394 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v387 = 0;
          v63 = 0;
          v182 = v169;
LABEL_222:
          v402 = v182;
          goto LABEL_16;
        }

        v179 = v169;
        v180 = 0;
        do
        {
          v353 = *(v416 + 8 * v180);
          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s ==> _%s_", v45, v46, v47, v64[v180++]);
          v181 = v415;
        }

        while (v415 > v180);
        v169 = v179;
        v176 = v402;
      }

      else
      {
        v181 = v415;
      }

      if (!v181)
      {
        goto LABEL_221;
      }

      v183 = heap_Calloc(*(a1 + 8), 1, 8 * (*(v50 + 20) * v176));
      if (v183)
      {
        v63 = v183;
        v377 = v169;
        if (*(v50 + 20))
        {
          v184 = 0;
          do
          {
            v185 = heap_Calloc(*(a1 + 8), 1, 40 * v402);
            v63[v184] = v185;
            if (!v185)
            {
              goto LABEL_2;
            }

            *(v63[v184] + 1) = heap_Calloc(*(a1 + 8), 1, 48 * v402);
            v186 = v63[v184];
            if (!*(v186 + 1))
            {
              goto LABEL_2;
            }

            *v186 = 0;
            *(v186 + 8) = 0;
          }

          while (*(v50 + 20) > ++v184);
        }

        v48 = crf_mde_utils_dynstr_init(a1, &v413, 2 * (v400 & 0x7FFFu), 128);
        if ((v48 & 0x80000000) != 0)
        {
          v394 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v387 = 0;
          v182 = v377;
          goto LABEL_222;
        }

        v187 = *(v50 + 20);
        if (v187)
        {
          v188 = 0;
          v189 = v415;
          do
          {
            v190 = v63[v188];
            *v190 = 0;
            if (v189)
            {
              v191 = 0;
              v192 = 0;
              v193 = *(v50 + 10);
              v194 = v416;
              do
              {
                if (v193 <= v191 && v193 + v176 > v191)
                {
                  v195 = *(*(v194 + 8 * v191) + 2 * v188);
                  if (v195 == 83 || v195 == 66)
                  {
                    *v190 = ++v192;
                  }
                }

                ++v191;
              }

              while (v189 > v191);
              v196 = v192 + 1;
            }

            else
            {
              v196 = 1;
            }

            *v190 = v196;
            v197 = v188 + 1;
            v188 = (v188 + 1);
          }

          while (v187 > v197);
          v198 = 0;
          v199 = 0;
          v395 = v176;
          while (1)
          {
            bzero(v413, v414);
            v389 = v199;
            *v63[v199] = 0;
            if (v415)
            {
              break;
            }

LABEL_274:
            v215 = strlen(v413);
            if (v215)
            {
              *(*(v63[v389] + 1) + 48 * *v63[v389]) = heap_Calloc(*(a1 + 8), 1, v215 + 1);
              v216 = *(*(v63[v389] + 1) + 48 * *v63[v389]);
              if (!v216)
              {
                goto LABEL_2;
              }

              strcpy(v216, v413);
              ++*v63[v389];
            }

            v199 = v389 + 1;
            v198 = (v389 + 1);
            if (*(v50 + 20) <= v198)
            {
              goto LABEL_278;
            }
          }

          v200 = 0;
          v201 = 0;
          v202 = 0;
          v203 = 2 * v198;
          while (1)
          {
            v204 = *(v50 + 10);
            if (v204 <= v202 && v204 + v176 > v200)
            {
              v206 = *(*(v416 + 8 * v202) + v203);
              if (v206 == 83 || v206 == 66)
              {
                v207 = strlen(v413);
                if (v207)
                {
                  *(*(v63[v389] + 1) + 48 * *v63[v389]) = heap_Calloc(*(a1 + 8), 1, v207 + 1);
                  v208 = *(*(v63[v389] + 1) + 48 * *v63[v389]);
                  if (!v208)
                  {
                    goto LABEL_2;
                  }

                  strcpy(v208, v413);
                  v209 = v63[v389];
                  v210 = *v209;
                  *(*(v209 + 1) + 48 * *v209 + 28) = 1;
                  *v209 = v210 + 1;
                  bzero(v413, v414);
                  v176 = v395;
                }
              }

              v211 = *v413 ? 1 : 2;
              v48 = crf_mde_utils_dynstr_add(a1, &v413, *(v401 + 8 * v201), v211);
              if ((v48 & 0x80000000) != 0)
              {
                goto LABEL_295;
              }

              ++v201;
              if (v200 + 1 < v415)
              {
                v212 = *(*(v416 + 8 * (v200 + 1)) + v203);
                if (v212 != 66 && v212 != 83)
                {
                  v213 = *(v50 + 80);
                  if (v213)
                  {
                    v214 = *v413 ? 1 : 2;
                    v48 = crf_mde_utils_dynstr_add(a1, &v413, v213, v214);
                    if ((v48 & 0x80000000) != 0)
                    {
                      goto LABEL_295;
                    }
                  }
                }
              }
            }

            v200 = ++v202;
            if (v415 <= v202)
            {
              goto LABEL_274;
            }
          }
        }

LABEL_278:
        v412 = heap_Calloc(*(a1 + 8), 1, 1024);
        if (!v412)
        {
          v48 = 2310021130;
          log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v217, v45, v46, v47, v348);
LABEL_295:
          v394 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v387 = 0;
LABEL_224:
          v402 = v377;
          goto LABEL_225;
        }

        HIWORD(v411) = 1024;
        if (*(v50 + 144) == 1)
        {
          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Segmentation results:", v45, v46, v47, 0);
          if (*(a3 + 20))
          {
            v218 = 0;
            v219 = 0;
            while (1)
            {
              *v412 = 0;
              __sprintf_chk(v420, 0, 0x40uLL, "nbest[%d] ", v218);
              v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, v420);
              if ((v48 & 0x80000000) != 0)
              {
                goto LABEL_387;
              }

              v220 = v63[v219];
              if (*v220)
              {
                v221 = 0;
                v222 = 0;
                do
                {
                  v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, *(*(v220 + 1) + v221));
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_387;
                  }

                  v220 = v63[v219];
                  v223 = *v220;
                  if (v222 + 1 < v223)
                  {
                    v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, " | ");
                    if ((v48 & 0x80000000) != 0)
                    {
                      goto LABEL_387;
                    }

                    v220 = v63[v219];
                    v223 = *v220;
                  }

                  ++v222;
                  v221 += 48;
                }

                while (v222 < v223);
              }

              log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v45, v46, v47, v412);
              v218 = ++v219;
              v396 = *(a3 + 20);
              if (v396 <= v219)
              {
                goto LABEL_297;
              }
            }
          }
        }

        else
        {
          v396 = *(a3 + 20);
LABEL_297:
          if (v396)
          {
            v371 = 0;
            v374 = 0;
            v224 = 0;
            v368 = *(a3 + 96);
            while (1)
            {
              v225 = v371;
              v369 = v224;
              if (v368)
              {
                v226 = v63[v224];
                v390 = *v226;
                if (*v226)
                {
                  v227 = 0;
                  v228 = 0;
                  v229 = *(v226 + 1);
                  do
                  {
                    v230 = strlen(*(v229 + 48 * v227));
                    if (v399)
                    {
                      v231 = v230 + v228;
                      v233 = (v384 + 2);
                      v232 = v399;
                      do
                      {
                        v234 = *(v233 - 1);
                        if (v234 >= v228)
                        {
                          v235 = *v233 + v234;
                          if (v231 > v234 && v235 > v231)
                          {
                            *(v226 + 8) = 5;
                            v225 = 1;
                          }

                          if (v235 < v231)
                          {
                            *(v229 + 48 * v227 + 36) = 1;
                          }
                        }

                        v233 += 2;
                        --v232;
                      }

                      while (v232);
                    }

                    v228 += v230;
                    ++v227;
                  }

                  while (v227 != v390);
                }
              }

              v371 = v225;
              v237 = v369 + 1;
              if (v396 <= (v369 + 1))
              {
                break;
              }

              v238 = v63[v369];
              v239 = *v238;
              v240 = 48 * *v238;
              v370 = v369 + 1;
              v241 = v237;
              v391 = v239;
              do
              {
                v242 = v63[v241];
                if (v239 == *v242)
                {
                  if (v239)
                  {
                    v243 = 0;
                    v244 = *(v242 + 1);
                    while (*(v244 + v243 + 28) != 1 || !strcmp(*(*(v238 + 1) + v243), *(v244 + v243)))
                    {
                      v243 += 48;
                      if (v240 == v243)
                      {
                        goto LABEL_323;
                      }
                    }
                  }

                  else
                  {
LABEL_323:
                    *(v242 + 8) = 4;
                    v374 = 1;
                  }

                  v239 = v391;
                }

                ++v241;
              }

              while (v396 > v241);
              v224 = v370;
            }

            if (v374 != 1 && v225 != 1 || *(a3 + 144) != 1)
            {
LABEL_348:
              v252 = *(a3 + 56);
              if (v252 == 1)
              {
                if (!*(a3 + 120))
                {
                  goto LABEL_351;
                }
              }

              else if (v252 || *(a3 + 120))
              {
LABEL_351:
                if (a21 == 1)
                {
                  v253 = strchr(a22, 95);
                  if (v253)
                  {
                    v254 = v253 + 1;
                  }

                  else
                  {
                    v254 = a22;
                  }

                  v373 = v254;
                  v255 = *v254;
                }

                else
                {
                  v373 = 0;
                  v255 = 32;
                }

                v372 = v255;
                v48 = crf_mde_utils_do_validation(a1, a12, a13, a14, a15, a16, a17, *(a3 + 112), *(a3 + 120), *(a3 + 128), *(a3 + 136), v63, v396, *(a3 + 144), *(a3 + 64), &v412, &v411 + 2);
                if ((v48 & 0x80000000) == 0)
                {
                  v258 = *(a3 + 20);
                  if (v258)
                  {
                    v259 = 0;
                    for (j = 0; j < v258; ++j)
                    {
                      v261 = v63[j];
                      v262 = *(v261 + 8);
                      if (v262 < 2 || v262 == 3 && !*(a3 + 136))
                      {
                        v263 = *v261;
                        if (v263 > v259)
                        {
                          v259 = v263;
                        }
                      }
                    }

                    v394 = v259;
                    if (v259)
                    {
                      v264 = v259;
                      v387 = heap_Calloc(*(a1 + 8), 1, 2 * v259);
                      if (!v387)
                      {
                        v48 = 2310021130;
                        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v265, v266, v267, v268, v349);
                        goto LABEL_388;
                      }

                      v269 = 8 * v264;
                      v62 = heap_Calloc(*(a1 + 8), 1, 8 * v264);
                      if (!v62)
                      {
                        v48 = 2310021130;
                        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v270, v271, v272, v273, v349);
                        v60 = 0;
                        v61 = 0;
                        goto LABEL_389;
                      }

                      v61 = heap_Calloc(*(a1 + 8), 1, v269);
                      if (!v61)
                      {
                        v48 = 2310021130;
                        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v274, v275, v276, v277, v349);
                        v60 = 0;
                        goto LABEL_389;
                      }

                      v60 = heap_Calloc(*(a1 + 8), 1, v269);
                      if (v60)
                      {
                        v282 = 0;
                        while (1)
                        {
                          v283 = heap_Calloc(*(a1 + 8), 1, 128);
                          v62[v282 / 8] = v283;
                          if (!v283)
                          {
                            break;
                          }

                          v284 = heap_Calloc(*(a1 + 8), 1, 128);
                          v61[v282 / 8] = v284;
                          if (!v284)
                          {
                            break;
                          }

                          v285 = heap_Calloc(*(a1 + 8), 1, 128);
                          v60[v282 / 8] = v285;
                          if (!v285)
                          {
                            break;
                          }

                          *v62[v282 / 8] = 0;
                          *v61[v282 / 8] = 0;
                          *v60[v282 / 8] = 0;
                          v282 += 8;
                          if (v269 == v282)
                          {
                            v366 = 0;
                            goto LABEL_392;
                          }
                        }
                      }

                      v48 = 2310021130;
                      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v278, v279, v280, v281, v349);
LABEL_466:
                      v402 = v377;
                      goto LABEL_390;
                    }
                  }

                  v394 = 0;
                  v387 = 0;
                  v62 = 0;
                  v61 = 0;
                  v60 = 0;
                  v366 = 1;
LABEL_392:
                  v286 = strlen(__s1[0]);
                  v287 = v378 + v286;
                  v376 = Utf8_LengthInBytes(&__s[(v378 + v286)], 1);
                  v362 = v287;
                  v363 = v405;
                  if (v405 > v287 && (v288 = &__s[v287], (*(a12 + 128))(a13, a14, v288)))
                  {
                    v379 = v287;
                    do
                    {
                      if (!strncmp(v288, "_", v376))
                      {
                        break;
                      }

                      v289 = v379 + v376;
                      v376 = Utf8_LengthInBytes(&__s[(v379 + v376)], 1);
                      v362 = v289;
                      v379 = v289;
                      if (v405 <= v289)
                      {
                        break;
                      }

                      v288 = &__s[v289];
                    }

                    while ((*(a12 + 128))(a13, a14, v288));
                  }

                  else
                  {
                    LOWORD(v379) = v287;
                  }

                  if (*(a3 + 20))
                  {
                    v385 = 0;
                    v386 = 0;
                    v375 = 0;
                    v290 = 0;
                    v365 = a36;
                    v364 = a35;
                    while (1)
                    {
                      v406 = v290;
                      v291 = *(v63[v290] + 8);
                      if (v291 < 2 || v291 == 3 && !*(a3 + 136))
                      {
                        *a31 = 0;
                        *a32 = 0;
                        *a33 = 0;
                        v292 = v63[v406];
                        if (*(v292 + 16))
                        {
                          v293 = 0;
                          v367 = v385 + 1;
                          v294 = v406;
                          while (1)
                          {
                            v404 = v293;
                            v295 = 5 * v293;
                            crf_mde_getStrForCrossToken(v292, *(*(v292 + 24) + 80 * v293), v61, *(a3 + 64), "◄", "◖");
                            crf_mde_getStrForCrossToken(v63[v294], *(*(v63[v294] + 3) + 16 * v295 + 48), v62, *(a3 + 64), 0, 0);
                            crf_mde_getStrForCrossToken(v63[v294], *(*(v63[v294] + 3) + 16 * v295 + 64), v60, *(a3 + 64), 0, 0);
                            if (*v63[v294])
                            {
                              v299 = 0;
                              v300 = v387;
                              do
                              {
                                v301 = strlen(v62[v299]);
                                *(v300 + 2 * v299) = Utf8_LengthInUtf8chars(v62[v299], v301);
                                v302 = strlen(v61[v299]);
                                v303 = Utf8_LengthInUtf8chars(v61[v299], v302);
                                v304 = strlen(v60[v299]);
                                v300 = v387;
                                v305 = Utf8_LengthInUtf8chars(v60[v299], v304);
                                v306 = *(v387 + 2 * v299);
                                if (v303 > v306)
                                {
                                  *(v387 + 2 * v299) = v303;
                                  v306 = v303;
                                }

                                if (v306 < v305)
                                {
                                  *(v387 + 2 * v299) = v305;
                                }

                                ++v299;
                              }

                              while (v299 < *v63[v406]);
                              if (*v63[v406])
                              {
                                v307 = 0;
                                do
                                {
                                  v308 = strlen(v62[v307]);
                                  v309 = Utf8_LengthInUtf8chars(v62[v307], v308);
                                  if (*(v387 + 2 * v307) > v309)
                                  {
                                    v310 = v309;
                                    do
                                    {
                                      *&v62[v307][strlen(v62[v307])] = 126;
                                      ++v310;
                                    }

                                    while (v310 < *(v387 + 2 * v307));
                                  }

                                  v311 = strlen(v61[v307]);
                                  v312 = Utf8_LengthInUtf8chars(v61[v307], v311);
                                  if (*(v387 + 2 * v307) > v312)
                                  {
                                    v313 = v312;
                                    do
                                    {
                                      *&v61[v307][strlen(v61[v307])] = 126;
                                      ++v313;
                                    }

                                    while (v313 < *(v387 + 2 * v307));
                                  }

                                  v314 = strlen(v60[v307]);
                                  v315 = Utf8_LengthInUtf8chars(v60[v307], v314);
                                  if (*(v387 + 2 * v307) > v315)
                                  {
                                    v316 = v315;
                                    do
                                    {
                                      *&v60[v307][strlen(v60[v307])] = 126;
                                      ++v316;
                                    }

                                    while (v316 < *(v387 + 2 * v307));
                                  }

                                  ++v307;
                                }

                                while (v307 < *v63[v406]);
                              }
                            }

                            *a31 = 0;
                            *a32 = 0;
                            *a33 = 0;
                            v317 = v63[v406];
                            if (*v317)
                            {
                              v318 = 0;
                              do
                              {
                                strcat(a31, v61[v318]);
                                strcat(a32, v62[v318]);
                                strcat(a33, v60[v318++]);
                                v317 = v63[v406];
                              }

                              while (v318 < *v317);
                            }

                            v319 = (*(v317 + 3) + 80 * v404);
                            v360 = *v319;
                            v361 = v319[8];
                            *v357 = v319[6];
                            v359 = v319[2];
                            v355 = v319[4];
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call nbest[%d] solution[%d] segpat:%s patPOS:%s pos:%s pron:%s feat:%s", v296, v297, v298, v385);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call phon:%s", v320, v321, v322, a31);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call pos :%s", v323, v324, v325, a32);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call cgn :%s", v326, v327, v328, a33);
                            *a34 = 0;
                            strcpy(v419, "normal");
                            v329 = oneword_crosstoken(a1, a18, a19, a20, a21, a22, 0, v372, v373, v419, 0, a23, a24, a25, a26, a27, a28, a29, a30, &a31, &a32, &a33, &a34);
                            if ((v329 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v330 = v63[v406];
                            if (*(v330 + 8) == 3 && !*(a3 + 136))
                            {
                              v331 = &a32;
                            }

                            else
                            {
                              v331 = (*(v330 + 3) + 80 * v404 + 16);
                            }

                            HIWORD(v358) = WORD1(a31);
                            v356 = *v331;
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "write to lingdb nbest[%d] solution[%d] pos:%s pron:%s cgn:%s", v45, v46, v47, v385);
                            v332 = v63[v406];
                            v333 = *(v332 + 8);
                            if (v365)
                            {
                              if (v333 == 3 && !*(a3 + 136))
                              {
                                v334 = &a32;
                              }

                              else
                              {
                                v334 = (*(v332 + 3) + 80 * v404 + 16);
                              }

                              v335 = *v334;
                              v336 = a31;
                              v337 = a33;
                              v338 = v367 + v383 * *v332;
                              v339 = *(a3 + 52);
                            }

                            else
                            {
                              if (v333 == 3 && !*(a3 + 136))
                              {
                                v340 = &a32;
                              }

                              else
                              {
                                v340 = (*(v332 + 3) + 80 * v404 + 16);
                              }

                              v335 = *v340;
                              v336 = a31;
                              v337 = a33;
                              v338 = v367 + v383 * *v332;
                              v339 = 1;
                            }

                            LOWORD(v358) = v338;
                            v48 = hlp_Write2WordRec(a9, a10, a11, v381, v392, v379 - v382, v386, v335, v336, v337, v364, v358, v339);
                            if ((v48 & 0x80000000) != 0)
                            {
                              goto LABEL_460;
                            }

                            if ((v366 & 1) == 0)
                            {
                              v341 = v394;
                              v342 = v60;
                              v343 = v61;
                              v344 = v62;
                              do
                              {
                                v345 = *v344++;
                                *v345 = 0;
                                v346 = *v343++;
                                *v346 = 0;
                                v347 = *v342++;
                                *v347 = 0;
                                --v341;
                              }

                              while (v341);
                            }

                            ++v386;
                            v294 = v406;
                            v293 = v404 + 1;
                            v292 = v63[v406];
                            if (v404 + 1 >= *(v292 + 16))
                            {
                              goto LABEL_452;
                            }
                          }

                          v48 = v329;
                          goto LABEL_460;
                        }

LABEL_452:
                        v375 = 1;
                      }

                      v290 = v406 + 1;
                      v385 = (v406 + 1);
                      if (*(a3 + 20) <= (v406 + 1))
                      {
                        goto LABEL_457;
                      }
                    }
                  }

                  v375 = 0;
LABEL_457:
                  if (v363 != v362)
                  {
                    v379 = v378 + strlen(__s1[0]);
                  }

LABEL_460:
                  if (v375 != 1)
                  {
                    goto LABEL_466;
                  }

                  v59 = v384;
                  v50 = a3;
LABEL_462:
                  v168 = v379;
                  goto LABEL_182;
                }

                goto LABEL_387;
              }

              if (v396)
              {
                v375 = 0;
                v256 = 0;
                v50 = a3;
                do
                {
                  v48 = crf_mde_utils_write_morphemes(a1, *(a3 + 56), *(a3 + 120), a12, a13, a14, a9, v47, a10, a11, v381, v392, v382, v63[v256], __s, &v411);
                  if ((v48 & 0x80000000) != 0)
                  {
                    v387 = 0;
                    v62 = 0;
                    v61 = 0;
                    v60 = 0;
                    v394 = 0;
                    goto LABEL_460;
                  }

                  if (v411 == v405)
                  {
                    v257 = v405;
                  }

                  else
                  {
                    v257 = v379;
                  }

                  v379 = v257;
                  ++v256;
                  v375 = 1;
                }

                while (*(a3 + 20) > v256);
                v394 = 0;
                v60 = 0;
                v61 = 0;
                v62 = 0;
                v387 = 0;
                v59 = v384;
                goto LABEL_462;
              }

LABEL_387:
              v394 = 0;
LABEL_388:
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v387 = 0;
LABEL_389:
              v402 = v377;
LABEL_390:
              v59 = v384;
              v50 = a3;
              goto LABEL_16;
            }

            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Segmentation results (remove duplicates):", v45, v46, v47, 0);
            if (*(a3 + 20))
            {
              v245 = 0;
              v246 = 0;
              while (1)
              {
                *v412 = 0;
                __sprintf_chk(v420, 0, 0x40uLL, "nbest[%d] ", v245);
                v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, v420);
                if ((v48 & 0x80000000) != 0)
                {
                  goto LABEL_387;
                }

                v247 = v63[v246];
                if (*v247)
                {
                  v248 = 0;
                  v249 = 0;
                  do
                  {
                    v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, *(*(v247 + 1) + v248));
                    if ((v48 & 0x80000000) != 0)
                    {
                      goto LABEL_387;
                    }

                    v247 = v63[v246];
                    v250 = *v247;
                    if (v249 + 1 < v250)
                    {
                      v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, " | ");
                      if ((v48 & 0x80000000) != 0)
                      {
                        goto LABEL_387;
                      }

                      v247 = v63[v246];
                      v250 = *v247;
                    }

                    ++v249;
                    v248 += 48;
                  }

                  while (v249 < v250);
                }

                v251 = *(v247 + 8);
                if (v251 == 4)
                {
                  v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, " MDE_Duplicate");
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_387;
                  }

                  v251 = *(v63[v246] + 8);
                }

                if (v251 == 5)
                {
                  v48 = crf_mde_utils_add2Str(a1, &v412, &v411 + 1, " MDE_UmlautSplit");
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_387;
                  }
                }

                log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v45, v46, v47, v412);
                v245 = ++v246;
                v396 = *(a3 + 20);
                if (v396 <= v246)
                {
                  goto LABEL_348;
                }
              }
            }
          }
        }

        v396 = 0;
        goto LABEL_348;
      }

LABEL_2:
      v48 = 2310021130;
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v44, v45, v46, v47, v348);
      goto LABEL_83;
    }
  }

  if (v138 != 2)
  {
    goto LABEL_148;
  }

  v139 = *(v50 + 80);
  if (!v139 || strncmp(&__s1[0][v135], v139, v136))
  {
    v140 = *(v50 + 64);
    if (!v140 || strncmp(&__s1[0][v135], v140, v137))
    {
      v59 = v384;
      goto LABEL_148;
    }
  }

  v141 = v135 - v133;
  if (v135 != v133 && strcmp(a22, "prompt") && strcmp(a22, "internal-nuance-system-norm"))
  {
    goto LABEL_144;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Error Parsing For Morpheme - character=%d, word=%s", v45, v46, v47, v135);
  v158 = *(v50 + 56);
  if (!v158)
  {
    v59 = v384;
    v159 = v381;
    v160 = __s;
    if (!*(v50 + 120))
    {
      goto LABEL_173;
    }

LABEL_185:
    v394 = 0;
    v397 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v387 = 0;
    v63 = 0;
    goto LABEL_16;
  }

  v59 = v384;
  v159 = v381;
  v160 = __s;
  if (v158 != 1 || !*(v50 + 120))
  {
    goto LABEL_185;
  }

LABEL_173:
  v161 = heap_Calloc(*(a1 + 8), 1, 8 * *(v50 + 20));
  if (!v161)
  {
    goto LABEL_2;
  }

  v63 = v161;
  v162 = heap_Calloc(*(a1 + 8), 1, 40);
  *v63 = v162;
  if (!v162)
  {
    goto LABEL_2;
  }

  *(*v63 + 1) = heap_Calloc(*(a1 + 8), 1, 48);
  v163 = *v63;
  if (!*(*v63 + 1))
  {
    goto LABEL_2;
  }

  *v163 = 0;
  *(v163 + 8) = 0;
  v164 = strlen(__s1[0]);
  *(*(*v63 + 1) + 48 * **v63) = heap_Calloc(*(a1 + 8), 1, v164 + 1);
  v165 = *(*(*v63 + 1) + 48 * **v63);
  if (!v165)
  {
    goto LABEL_2;
  }

  strcpy(v165, __s1[0]);
  v166 = *v63;
  *v166 = **v63 + 1;
  v48 = crf_mde_utils_write_morphemes(a1, 0, 0, a12, a13, a14, a9, v167, a10, a11, v159, v392, v382, v166, v160, &v411);
  if ((v48 & 0x80000000) != 0)
  {
    v394 = 0;
    v397 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v387 = 0;
    v182 = 1;
    goto LABEL_222;
  }

  v394 = 0;
  v397 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v387 = 0;
  if (v411 == v405)
  {
    v168 = v405;
  }

  else
  {
    v168 = v379;
  }

  v402 = 1;
LABEL_182:
  *v380 = v168 - v382;
LABEL_16:
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "CRF MDE segmentation for token %s : %s", v45, v46, v47, __s1[0]);
  crf_mde_seg_fv_dealloc(a1, v418);
  if (v412)
  {
    heap_Free(*(a1 + 8), v412);
    v412 = 0;
  }

  if (v399)
  {
    heap_Free(*(a1 + 8), v59);
  }

  if (v394)
  {
    for (k = 0; k != v394; ++k)
    {
      if (v62)
      {
        v66 = v62[k];
        if (v66)
        {
          heap_Free(*(a1 + 8), v66);
          v62[k] = 0;
        }
      }

      if (v61)
      {
        v67 = v61[k];
        if (v67)
        {
          heap_Free(*(a1 + 8), v67);
          v61[k] = 0;
        }
      }

      if (v60)
      {
        v68 = v60[k];
        if (v68)
        {
          heap_Free(*(a1 + 8), v68);
          v60[k] = 0;
        }
      }
    }

    if (v387)
    {
      heap_Free(*(a1 + 8), v387);
    }

    if (v62)
    {
      heap_Free(*(a1 + 8), v62);
    }

    if (v61)
    {
      heap_Free(*(a1 + 8), v61);
    }

    if (v60)
    {
      heap_Free(*(a1 + 8), v60);
    }
  }

  crf_mde_utils_dynstr_free(a1, __s1);
  if (v413)
  {
    heap_Free(*(a1 + 8), v413);
    v413 = 0;
  }

  if (v397)
  {
    heap_Free(*(a1 + 8), v397);
  }

  if (v401)
  {
    if (v402)
    {
      v69 = v402;
      v70 = v401;
      do
      {
        if (*v70)
        {
          heap_Free(*(a1 + 8), *v70);
          *v70 = 0;
        }

        ++v70;
        --v69;
      }

      while (v69);
    }

    heap_Free(*(a1 + 8), v401);
    heap_Free(*(a1 + 8), v393);
  }

  if (v64)
  {
    v71 = *(v50 + 10);
    if (v400 | (2 * v71))
    {
      v72 = 0;
      do
      {
        v73 = v72;
        v74 = v64[v72];
        if (v74)
        {
          heap_Free(*(a1 + 8), v74);
          v64[v73] = 0;
          v71 = *(v50 + 10);
        }

        v72 = v73 + 1;
      }

      while (v400 + 2 * v71 > (v73 + 1));
    }

    heap_Free(*(a1 + 8), v64);
  }

  v75 = v416;
  if (v416)
  {
    v76 = v415;
    if (v415)
    {
      v77 = 0;
      do
      {
        v78 = v77;
        v79 = *(v416 + 8 * v77);
        if (v79)
        {
          heap_Free(*(a1 + 8), v79);
          *(v416 + 8 * v78) = 0;
          v76 = v415;
        }

        v77 = v78 + 1;
      }

      while (v76 > (v78 + 1));
      v75 = v416;
    }

    heap_Free(*(a1 + 8), v75);
    v416 = 0;
  }

  if (v63)
  {
    if (*(v50 + 20))
    {
      v80 = 0;
      do
      {
        v81 = v80;
        v82 = v63[v80];
        if (*v82)
        {
          v83 = 0;
          do
          {
            heap_Free(*(a1 + 8), *(*(v82 + 1) + 48 * v83));
            *(*(v63[v81] + 1) + 48 * v83) = 0;
            v84 = v63[v81];
            v85 = *(v84 + 1);
            if (*(v85 + 48 * v83 + 8))
            {
              v86 = 0;
              v87 = 0;
              do
              {
                v88 = *(*(v85 + 48 * v83 + 16) + v86 + 8);
                if (v88)
                {
                  heap_Free(*(a1 + 8), v88);
                  *(*(*(v63[v81] + 1) + 48 * v83 + 16) + v86 + 8) = 0;
                  v84 = v63[v81];
                }

                v85 = *(v84 + 1);
                v89 = *(v85 + 48 * v83 + 16);
                v90 = *(v89 + v86 + 16);
                if (v90)
                {
                  heap_Free(*(a1 + 8), v90);
                  *(*(*(v63[v81] + 1) + 48 * v83 + 16) + v86 + 16) = 0;
                  v84 = v63[v81];
                  v85 = *(v84 + 1);
                  v89 = *(v85 + 48 * v83 + 16);
                }

                v91 = *(v89 + v86 + 24);
                if (v91)
                {
                  heap_Free(*(a1 + 8), v91);
                  *(*(*(v63[v81] + 1) + 48 * v83 + 16) + v86 + 24) = 0;
                  v84 = v63[v81];
                  v85 = *(v84 + 1);
                }

                ++v87;
                v86 += 32;
              }

              while (v87 < *(v85 + 48 * v83 + 8));
            }

            heap_Free(*(a1 + 8), *(v85 + 48 * v83 + 16));
            *(*(v63[v81] + 1) + 48 * v83++ + 16) = 0;
            v82 = v63[v81];
          }

          while (v83 < *v82);
        }

        heap_Free(*(a1 + 8), *(v82 + 1));
        *(v63[v81] + 1) = 0;
        crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v63[v81] + 3, v63[v81][8]);
        heap_Free(*(a1 + 8), v63[v81]);
        v63[v81] = 0;
        v80 = v81 + 1;
      }

      while (*(v50 + 20) > (v81 + 1));
    }

    heap_Free(*(a1 + 8), v63);
  }

LABEL_83:
  v92 = *MEMORY[0x1E69E9840];
  return v48;
}

uint64_t isUmlaut(const char *a1, int a2, unsigned __int8 **a3, unsigned int a4, _WORD *a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = a4;
  while (1)
  {
    v11 = Utf8_LengthInBytes(*a3, 1);
    if (a2 == v11 && !strncmp(a1, *a3, v11))
    {
      break;
    }

    ++v9;
    a3 += 2;
    if (v10 == v9)
    {
      return 0;
    }
  }

  *a5 = v9;
  return 1;
}

uint64_t crf_mde_seg_concat_strings(uint64_t a1, uint64_t *a2, char **a3)
{
  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a2;
    do
    {
      v8 = v8 + strlen(*(v9 + 16 * v7++)) + 2;
    }

    while (v6 > v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, v8);
  *a3 = v10;
  if (v10)
  {
    if (*(a2 + 2))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        strcat(*a3, *(*a2 + 16 * v16));
        v17 = *(a2 + 2);
        if (v17 - 1 > v15)
        {
          *&(*a3)[strlen(*a3)] = 32;
          v17 = *(a2 + 2);
        }

        v15 = ++v16;
      }

      while (v17 > v16);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v11, v12, v13, v14, v19);
    return 2310021130;
  }
}

uint64_t crf_mde_seg_set_param_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, int *a6, int *a7, int *a8)
{
  v15 = (a2 + a3);
  if (!strcmp(v15, "nbest"))
  {
    *a8 = atoi((a2 + a4));
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v18, v19, v20, v15);
  }

  if (!strcmp(v15, "padding"))
  {
    *a5 = atoi((a2 + a4));
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v18, v19, v20, v15);
  }

  if (!strcmp(v15, "annotation"))
  {
    v21 = a2 + a4;
    result = strcmp(v21, "BMES");
    if (result)
    {
      if (*v21 != 66 || *(v21 + 1) != 73 || *(v21 + 2))
      {
        return result;
      }

      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    *a7 = v22;
    return result;
  }

  result = strcmp(v15, "type");
  if (!result)
  {
    result = strcmp((a2 + a4), "char");
    if (!result)
    {
      v17 = 1;
      goto LABEL_20;
    }

    result = strcmp((a2 + a4), "morpheme");
    if (!result)
    {
      v17 = 2;
LABEL_20:
      *a6 = v17;
    }
  }

  return result;
}

uint64_t crf_mde_seg_set_featureparam_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char **a5)
{
  v9 = (a2 + a3);
  if (strcmp(v9, "isvowel"))
  {
    return 0;
  }

  v10 = (a2 + a4);
  v11 = strlen(v10);
  v12 = heap_Calloc(*(a1 + 8), 1, v11 + 1);
  *a5 = v12;
  if (v12)
  {
    strcpy(v12, v10);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde featureparam, %s: %s", v17, v18, v19, v9);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v13, v14, v15, v16, v21);
  return 2310021130;
}

uint64_t oneword_posparser_Open(uint64_t a1)
{
  v21 = 0;
  *(a1 + 2004) = 0;
  *&v18[0] = 0;
  v22 = 0;
  v20 = 0;
  v23 = -1;
  v2 = (a1 + 64);
  result = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "arwpospredictiononly", v18, &v23, &v22);
  if ((result & 0x80000000) != 0 || !v23)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return oneword_posparser_Close(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = **&v18[0];
  v12 = strchr(**&v18[0], v22);
  if (v12)
  {
    *v12 = 0;
    v11 = **&v18[0];
  }

  if (*v11 != 49 || v11[1])
  {
    return oneword_posparser_Close(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  v20 = 1;
  result = posparser_Open(*a1, (a1 + 2008));
  if ((result & 0x80000000) == 0)
  {
    *(*(a1 + 2008) + 8) = *v2;
    v13 = *(a1 + 2008);
    *(v13 + 24) = *(a1 + 80);
    *(v13 + 32) = *(a1 + 56);
    *(v13 + 56) = *(a1 + 104);
    *(v13 + 40) = *(a1 + 88);
    result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v21);
    if ((result & 0x80000000) == 0)
    {
      v14 = *(a1 + 2008);
      __strcpy_chk();
      *(*(a1 + 2008) + 243) = 7565168;
      v15 = *(a1 + 2008);
      result = getPosparserIGTreesAndDict(*a1, *(a1 + 16), *(a1 + 24), *(v15 + 8), *(v15 + 16), *(v15 + 24), (v15 + 232), (v15 + 216), (v15 + 224), (v15 + 236), v15 + 240, &v20);
      if ((result & 0x80000000) == 0)
      {
        if (v20)
        {
          *(a1 + 2004) = 1;
          v16 = *(*a1 + 8);
          v17 = *(a1 + 2008);
          v18[0] = xmmword_1F42D2E68;
          v18[1] = *off_1F42D2E78;
          v19 = off_1F42D2E88;
          result = ssftmap_ObjOpen(v16, 0, v18, (v17 + 256));
          if ((result & 0x80000000) == 0)
          {
            return posparser_getPosMap(*(a1 + 2008));
          }

          return result;
        }

        return oneword_posparser_Close(a1, v4, v5, v6, v7, v8, v9, v10);
      }
    }
  }

  return result;
}

uint64_t oneword_posparser_Close(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2008);
  if (v9)
  {
    if (v9[32])
    {
      v10 = ssftmap_ObjClose(v9[32]);
      v9 = *(a1 + 2008);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v9[27] && v9[28])
    {
      v10 = freePosparserIGTrees(*a1, v9 + 27, v9 + 28, a4, a5, a6, a7, a8);
      v9 = *(a1 + 2008);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  posparser_Close(v9);
  *(a1 + 2008) = 0;
  *(a1 + 2004) = 0;
  return v10;
}

uint64_t oneword_posparser_Reopen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = oneword_posparser_Close(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0)
  {

    return oneword_posparser_Open(a1);
  }

  return result;
}

uint64_t oneword_posparser_Start(uint64_t a1)
{
  result = posparser_ProcessStart(*(a1 + 2008));
  if ((result & 0x80000000) == 0 && !*(*(a1 + 2008) + 248))
  {
    posparser_ProcessEnd(*(a1 + 2008));
    result = 0;
    *(a1 + 2004) = 0;
  }

  return result;
}

uint64_t oneword_posparser_Process(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v44 = 0;
  v42 = 0;
  __s = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  __src = 0;
  v36 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v45);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (((*(a1[7] + 184))(a2, a3, v45, 0, &v44) & 0x80000000) != 0)
  {
    return v6;
  }

  if (v44 != 1)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, v45, 0, &__s, &v40);
  if ((v6 & 0x80000000) != 0 || v40 < 2u)
  {
    return v6;
  }

  v7 = strlen(__s);
  v8 = heap_Calloc(*(*a1 + 8), 1, v7 + 1);
  v42 = v8;
  if (!v8)
  {
    goto LABEL_34;
  }

  v13 = v8;
  strcpy(v8, __s);
  v14 = (*(a1[7] + 176))(a2, a3, v45, 1, &__src, &v36);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = heap_Alloc(*(*a1 + 8), 32 * v36);
    v37 = v15;
    if (v15)
    {
      v16 = v15;
      memcpy(v15, __src, 32 * v36);
      v17 = v45;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      v49 = 0;
      v18 = v36;
      v46 = v36;
      v47 = 0u;
      v48 = 0u;
      v47.n128_u32[0] = 1;
      if (((*(a1[7] + 184))(a2, a3, v45, 3, &v52 + 2) & 0x80000000) != 0 || HIWORD(v52) != 1 || ((*(a1[7] + 104))(a2, a3, 3, v17, &v52) & 0x80000000) != 0)
      {
LABEL_15:
        v21 = v16;
      }

      else
      {
        v19 = 0;
        v20 = 32 * v18 + 32;
        while (v52)
        {
          v20 += 32;
          --v19;
          if (((*(a1[7] + 120))(a2, a3) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }
        }

        if (v19)
        {
          v21 = heap_Realloc(*(*a1 + 8), v16, v20);
          if (!v21)
          {
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0, v28, v29, v30, v31, v35);
            LODWORD(v18) = v36;
            goto LABEL_17;
          }
        }

        else
        {
          v21 = v16;
        }

        if (((*(a1[7] + 104))(a2, a3, 3, v17, &v52) & 0x80000000) == 0)
        {
          v32 = v52;
          if (v52)
          {
            do
            {
              if (((*(a1[7] + 168))(a2, a3, v32, 1, 1, &v51, &v51 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v52, 2, 1, &v50, &v51 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v52, 0, 1, &v49, &v51 + 2) & 0x80000000) != 0)
              {
                break;
              }

              v47.n128_u32[0] = 59;
              v47.n128_u32[1] = v51;
              v33 = *(v21 + 12) + v51;
              v47.n128_u32[2] = v50;
              v47.n128_u32[3] = v33;
              LODWORD(v48) = v50 - v51;
              DWORD2(v48) = v49;
              v34 = posPInsertTOKMarker(v21, &v46, &v47);
              if (((*(a1[7] + 120))(a2, a3, v52, &v52, v34) & 0x80000000) != 0)
              {
                break;
              }

              v32 = v52;
            }

            while (v52);
            LODWORD(v18) = v46;
          }
        }
      }

      v37 = v21;
      v36 = v18;
      v16 = v21;
LABEL_17:
      v14 = posparser_ExtractWords(a1[251], v16, v18, v13, v7, &v41, &v40 + 1);
      if ((v14 & 0x80000000) == 0)
      {
        v14 = posparser_Process(a1[251], a2, a3, v41, HIWORD(v40), 0, v45, &v42, &v37, &v36);
        if ((v14 & 0x80000000) == 0)
        {
          v22 = strlen(v42);
          v14 = (*(a1[7] + 160))(a2, a3, v45, 0, (v22 + 1), v42, &v39);
          if ((v14 & 0x80000000) == 0)
          {
            v14 = (*(a1[7] + 160))(a2, a3, v45, 1, v36, v37, &v39);
          }
        }
      }

      goto LABEL_21;
    }

LABEL_34:
    v6 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0, v9, v10, v11, v12, v35);
    return v6;
  }

LABEL_21:
  v6 = v14;
LABEL_22:
  if (v42)
  {
    heap_Free(*(*a1 + 8), v42);
  }

  v23 = v37;
  if (v37)
  {
    v24 = v36;
    if (v36)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        if (*&v37[v25] == 58)
        {
          heap_Free(*(*a1 + 8), *&v37[v25 + 24]);
          *&v37[v25 + 24] = 0;
          v24 = v36;
        }

        ++v26;
        v25 += 32;
      }

      while (v26 < v24);
      v23 = v37;
    }

    heap_Free(*(*a1 + 8), v23);
  }

  if (v41)
  {
    posparser_FreeWords(a1[251], v41, HIWORD(v40));
  }

  return v6;
}

uint64_t dt_Main(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s2)
{
  v132 = *MEMORY[0x1E69E9840];
  memset(v130, 0, sizeof(v130));
  v128 = 0;
  v127 = 0;
  v125 = 0;
  __s = 0;
  v124 = 0;
  v123 = 0;
  memset(v129, 0, sizeof(v129));
  v12 = a1 + 168;
  **(a1 + 168) = 0;
  *(*(a1 + 160) + 127) = 0;
  if (!strstr((a1 + 584), __s2))
  {
    v13 = strlen(*(a1 + 160));
    v14 = utf8_Utf8ToDepes(*(a1 + 160), v13 + 1, 0, *(a1 + 160), v13 + 1, &v123, 0);
    if ((v14 & 0x80000000) != 0)
    {
      appended = v14;
      goto LABEL_101;
    }
  }

  v15 = strlen(*(a1 + 160));
  v16 = Transcription_Con(v130, a1 + 888, *(a1 + 160), v15 + 1, 4, 1);
  v17 = LH_ERROR_to_VERROR(v16);
  if ((v17 & 0x80000000) != 0)
  {
    v39 = v17;
    goto LABEL_100;
  }

  v22 = PtrQueue_Con(v129, a1 + 888, 5u, 5);
  v27 = LH_ERROR_to_VERROR(v22);
  if ((v27 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v23, v24, v25, v26, v113);
    appended = v27;
    goto LABEL_94;
  }

  Word = _LexDT_FindWord(a5, v130, v129);
  v29 = LH_ERROR_to_VERROR(Word);
  v34 = v29;
  if ((v29 & 0x80000000) != 0)
  {
    v35 = v29 & 0x1FFF;
    v36 = *(*a1 + 32);
    if (v35 != 266)
    {
      log_OutPublic(v36, "FE_ONEWORD", 34004, 0, v30, v31, v32, v33, v113);
      goto LABEL_27;
    }

    log_OutPublic(v36, "FE_ONEWORD", 34005, 0, v30, v31, v32, v33, v113);
  }

  if (PtrQueue_IsEmpty(v129))
  {
    v37 = 1;
    appended = v34;
    if (!a2)
    {
      goto LABEL_94;
    }

LABEL_32:
    if (**v12)
    {
      v53 = 0;
    }

    else
    {
      v53 = v37;
    }

    if ((v53 & 1) == 0)
    {
      if (dynamic_strcat(v12, ";_", (a1 + 200), *(*a1 + 8)))
      {
        v54 = strlen(*(a1 + 168));
        appended = (*(*(a1 + 56) + 160))(a3, a4, a2, 11, (v54 + 1), *(a1 + 168), &v128 + 2);
      }

      else
      {
LABEL_88:
        appended = 2310021130;
      }
    }

    goto LABEL_94;
  }

  v127 = 0;
  v120 = a2;
  v121 = a3;
  if (!a2)
  {
    goto LABEL_29;
  }

  v40 = (*(*(a1 + 56) + 184))(a3, a4, a2, 11, &v127);
  v41 = v127;
  if ((v40 & 0x80000000) == 0 && v127 == 1)
  {
    v34 = (*(*(a1 + 56) + 176))(a3, a4, a2, 11, &__s, &v128);
    if ((v34 & 0x80000000) == 0)
    {
      v41 = v127;
      goto LABEL_19;
    }

LABEL_27:
    appended = v34;
    goto LABEL_94;
  }

LABEL_19:
  if (v41)
  {
    v42 = __s;
    if (__s)
    {
      v43 = a4;
      appended = 2310021130;
      v44 = strlen(__s);
      v45 = v44 + 3;
      v46 = *(a1 + 168);
      if (*(a1 + 200) < (v44 + 3))
      {
        v47 = heap_Realloc(*(*a1 + 8), v46, (v44 + 3));
        if (!v47)
        {
LABEL_93:
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v48, v49, v50, v51, v113);
          goto LABEL_94;
        }

        v46 = v47;
        *v12 = v47;
        *(a1 + 200) = v45;
        v42 = __s;
      }

      strcpy(v46, v42);
      v118 = v45;
      a4 = v43;
      a2 = v120;
      a3 = v121;
      if (!dynamic_strcat(v12, "\x12", (a1 + 200), *(*a1 + 8)))
      {
        goto LABEL_94;
      }

      goto LABEL_30;
    }

    a3 = v121;
  }

LABEL_29:
  **v12 = 0;
  v118 = 3;
LABEL_30:
  IsEmpty = PtrQueue_IsEmpty(v129);
  v37 = 1;
  appended = v34;
  if (IsEmpty)
  {
    if (!a2)
    {
      goto LABEL_94;
    }

    goto LABEL_32;
  }

  v115 = a4;
  v55 = 0;
  v116 = v27;
  v117 = a2 == 0;
  do
  {
    v56 = PtrQueue_Item(v129);
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "DT: %s", v57, v58, v59, *(v56 + 8));
    strcpy(v131, "dtpostproc");
    v119 = strlen(v131);
    if (*(a1 + 576) && !*(a1 + 840))
    {
      v122 = 0;
      v77 = *(v56 + 8);
      v78 = (2 * strlen(v77)) | 1u;
      v79 = *(a1 + 176);
      if (*(a1 + 208) < v78)
      {
        v80 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v78);
        if (!v80)
        {
LABEL_90:
          appended = 2310021130;
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v64, v65, v66, v67, v113);
          goto LABEL_91;
        }

        v79 = v80;
        *(a1 + 176) = v80;
        *(a1 + 208) = v78;
        v77 = *(v56 + 8);
      }

      appended = (*(*(a1 + 152) + 72))(*(a1 + 136), *(a1 + 144), 1, v77, v78, v79, 0);
      v81 = strlen(*(a1 + 176));
      v82 = Utf8_DepesLengthInBytesUtf8(*(a1 + 176), v81);
      v83 = *(a1 + 160);
      if (v82 >= *(a1 + 192))
      {
        v84 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v82 + 1);
        if (!v84)
        {
          goto LABEL_92;
        }

        v83 = v84;
        *(a1 + 160) = v84;
        *(a1 + 192) = v82 + 1;
        a2 = v120;
      }

      if (!strstr((v12 + 416), __s2))
      {
        v85 = strlen(*(a1 + 176));
        appended = utf8_DepesToUtf8(*(a1 + 176), v85, 0, v83, v82, &v122, 0);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        v83 = *(a1 + 160);
      }

      *(v83 + v122) = 0;
      goto LABEL_61;
    }

    v60 = *(v56 + 8);
    v61 = strlen(v60) + 1;
    v62 = *(a1 + 160);
    if (*(a1 + 192) < v61)
    {
      v63 = heap_Realloc(*(*a1 + 8), v62, v61);
      if (!v63)
      {
        goto LABEL_90;
      }

      v62 = v63;
      *(a1 + 160) = v63;
      *(a1 + 192) = v61;
      v60 = *(v56 + 8);
    }

    strcpy(v62, v60);
    appended = 0;
    v71 = *(a1 + 840);
    if (!v71 && v61)
    {
      v72 = 0;
      v73 = 1;
      do
      {
        v74 = *(a1 + 160);
        v75 = &v74[v72];
        if (v74[v72] == 126)
        {
          v76 = strlen(v74);
          memmove((v75 + 1), v75, v76 + v73);
          *(*(a1 + 160) + v72) = -24126;
          ++v61;
        }

        ++v72;
        --v73;
      }

      while (v72 < v61);
      appended = 0;
      a2 = v120;
LABEL_61:
      v71 = *(a1 + 840);
      a3 = v121;
    }

    if (v71)
    {
      v125 = *(a1 + 160);
      if ((v55 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v114 = *(a1 + 160);
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v68, v69, v70, v131);
      v90 = strlen(*(a1 + 160));
      v91 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v90);
      if ((v91 & 0x80000000) != 0)
      {
        goto LABEL_89;
      }

      if (strcmp(__s2, "normal"))
      {
        __strcat_chk();
        __strcat_chk();
      }

      if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v131) & 0x80000000) != 0)
      {
        v131[v119] = 0;
        v91 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v131);
        if ((v91 & 0x80000000) != 0)
        {
LABEL_89:
          appended = v91;
LABEL_91:
          PDELETE_Transcription(a1 + 888, v56);
          goto LABEL_94;
        }
      }

      appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v125, &v124);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_91;
      }

      v125[v124] = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v92, v93, v94, v131);
      v98 = v124;
      if (v124)
      {
        v99 = 0;
        v100 = 1;
        do
        {
          if (v125[v99] == 194 && v125[v99 + 1] == 161)
          {
            v101 = strlen(v125);
            memmove(&v125[v99 + 1], &v125[v99 + 2], v101 + v100);
            v125[v99] = 126;
            v98 = v124;
          }

          ++v99;
          --v100;
        }

        while (v99 < v98);
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v95, v96, v97, v131);
      LODWORD(v27) = v116;
      a2 = v120;
      a3 = v121;
      if ((v55 & 1) == 0)
      {
LABEL_84:
        appended = oneword_AppendPhon(a1, v125, "*", "*", 0, v117);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_91;
        }

        goto LABEL_85;
      }
    }

    if (a2)
    {
      v86 = v125;
      v87 = strlen(v125);
      v88 = v118 + v87 + 1;
      if (*(a1 + 200) < (v118 + v87 + 1))
      {
        v89 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v118 + v87 + 1));
        if (!v89)
        {
LABEL_92:
          appended = 2310021130;
          goto LABEL_93;
        }

        *v12 = v89;
        *(a1 + 200) = v88;
        v86 = v125;
      }

      v118 = v88;
      if (!dynamic_strcat(v12, v86, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat(v12, "\x12", (a1 + 200), *(*a1 + 8)))
      {
        goto LABEL_88;
      }
    }

LABEL_85:
    PtrQueue_Remove(v129);
    PDELETE_Transcription(a1 + 888, v56);
    v55 = 1;
  }

  while (!PtrQueue_IsEmpty(v129));
  v37 = 0;
  a4 = v115;
  if (a2)
  {
    goto LABEL_32;
  }

LABEL_94:
  v102 = Transcription_Des(v130);
  v103 = LH_ERROR_to_VERROR(v102);
  if ((appended & 0x80000000) == 0)
  {
    v108 = v103;
    if ((v103 & 0x80000000) != 0)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v104, v105, v106, v107, v113);
      appended = v108;
    }
  }

  if ((v27 & 0x80000000) == 0)
  {
    v109 = (*(*&v129[0] + 16))(v129);
    v110 = LH_ERROR_to_VERROR(v109);
    if ((appended & 0x80000000) == 0)
    {
      v39 = v110;
      if ((v110 & 0x80000000) != 0)
      {
LABEL_100:
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v18, v19, v20, v21, v113);
        appended = v39;
      }
    }
  }

LABEL_101:
  v111 = *MEMORY[0x1E69E9840];
  return appended;
}

uint64_t mde_stemafx_Main(uint64_t a1, const char *a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  if (*(a1 + 286) == 1 && (v11 = strlen(__s), v11 >= *(a1 + 282)) && v11 <= *(a1 + 283) && (*(a1 + 284) != 1 || (v14 = *__s, (v14 - 65) < 0x1A) || (v15 = v14 - 128, v15 <= 0x25) && ((1 << v15) & 0x200605C001) != 0))
  {
    v16 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    **(a1 + 160) = 0;
    **(a1 + 168) = 0;
    **(a1 + 176) = 0;
    v12 = hlp_MdeRecurse(a1, __s, 0, &v23, 0, 0, a2);
    if ((v12 & 0x80000000) == 0 && !v23)
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix failed", v17, v18, v19, v22);
      strcpy(*(a1 + 160), __s);
      **(a1 + 168) = 0;
      **(a1 + 176) = 0;
      if (strlen(__s))
      {
        v20 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v20 += utf8_determineUTF8CharLength(__s[v20]);
          if (strlen(__s) <= v20)
          {
            return v12;
          }
        }

        return 2310021130;
      }
    }
  }

  else
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix cfg settings do not apply on %s", a6, a7, a8, __s);
    v12 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v12 & 0x80000000) == 0)
    {
      strcpy(*(a1 + 160), __s);
      **(a1 + 168) = 0;
      **(a1 + 176) = 0;
      if (strlen(__s))
      {
        v13 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v13 += utf8_determineUTF8CharLength(__s[v13]);
          if (strlen(__s) <= v13)
          {
            return v12;
          }
        }

        return 2310021130;
      }
    }
  }

  return v12;
}

uint64_t hlp_MdeRecurse(uint64_t a1, const char *a2, unsigned int a3, _DWORD *a4, int a5, char *a6, const char *a7)
{
  v10 = a3;
  v245 = 0;
  v246 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 10801;
  if (a3 != strlen(a2))
  {
    v30 = 0;
    v32 = 32;
    v31 = 32;
    goto LABEL_16;
  }

  v12 = v10;
  v13 = (a1 + 168);
  v14 = strlen(*(a1 + 168));
  v15 = strlen(a7);
  v16 = heap_Alloc(*(*a1 + 8), (v14 + v15 + 6));
  if (!v16)
  {
    v30 = 2310021130;
LABEL_165:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v17, v18, v19, v20, v215);
    return v30;
  }

  v21 = v16;
  v234 = a4;
  strcpy(v16, "mde_");
  v22 = strcat(v16, a7);
  *&v21[strlen(v22)] = 95;
  v23 = strlen(v21);
  v24 = *v13;
  if (strlen(*v13))
  {
    v28 = 0;
    do
    {
      v29 = v24[v28];
      if (v29 != 32 && v29 != 126)
      {
        v21[v23] = v29;
        v24 = *v13;
        ++v23;
      }

      ++v28;
    }

    while (strlen(v24) > v28);
  }

  v21[v23] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v25, v26, v27, v21);
  LOWORD(v244) = -1;
  v30 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v21, &v246, &v244, &v243 + 1);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_271;
  }

  a4 = v234;
  if (v244)
  {
LABEL_11:
    *a4 = 1;
    goto LABEL_12;
  }

  strcpy(v21, "mde_");
  v147 = *v13;
  if (strlen(*v13))
  {
    v151 = 0;
    v152 = 4;
    do
    {
      v153 = v147[v151];
      if (v153 != 32 && v153 != 126)
      {
        v21[v152] = v153;
        v147 = *v13;
        ++v152;
      }

      ++v151;
    }

    while (strlen(v147) > v151);
    v154 = v152;
    a4 = v234;
  }

  else
  {
    v154 = 4;
  }

  v21[v154] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v148, v149, v150, v21);
  LOWORD(v244) = -1;
  v30 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v21, &v246, &v244, &v243 + 1);
  if ((v30 & 0x80000000) != 0)
  {
LABEL_271:
    heap_Free(*(*a1 + 8), v21);
    return v30;
  }

  if (v244)
  {
    goto LABEL_11;
  }

  if (*a4)
  {
    goto LABEL_12;
  }

  v232 = 32;
  if (!a6 || !*(a1 + 288))
  {
LABEL_13:
    v31 = 32;
LABEL_14:
    heap_Free(*(*a1 + 8), v21);
    v10 = v12;
    v32 = v232;
LABEL_16:
    if (*(a1 + 285) != a5)
    {
      v33 = strlen(a2);
      if (v10 < v33)
      {
        v233 = v32;
        v223 = v31;
        v227 = &a2[v10];
        v221 = a5 + 1;
        v237 = v33;
        v34 = v33;
        v35 = a6;
        v226 = v10;
        while (!*a4)
        {
          v36 = a7;
          v37 = a2[v34];
          a2[v34] = 0;
          if (v10)
          {
            v38 = strchr(v35, 95);
            if (v38)
            {
              v39 = v38;
              v229 = v37;
              v40 = strlen(v227);
              v41 = strlen(v39);
              memmove(&v35[v40], v39, v41 + 1);
              v42 = strlen(v227);
              memcpy(v35, v227, v42);
              v240 = v35;
              v43 = strchr(v35, 95);
              if (v43)
              {
                v10 = v226;
                if (!*a4)
                {
                  v44 = v43;
                  v45 = v43 + 1;
                  v46 = 1;
                  while (1)
                  {
                    v47 = v45;
                    v225 = v46;
                    if ((v46 & 1) == 0)
                    {
                      LOBYTE(v242) = v44[1];
                      v223 = v44[2];
                      v233 = v44[3];
                      *(v44 + 1) = 42;
                      v47 = &v242;
                    }

                    LOWORD(v244) = 0;
                    v30 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", v240, &v246, &v244, &v243 + 1);
                    v48 = *(*a1 + 8);
                    if ((v30 & 0x80000000) != 0)
                    {
                      goto LABEL_265;
                    }

                    v49 = hlp_saveLookupResults(v48, v246, v244, &v245, &v244 + 1);
                    if ((v49 & 0x80000000) != 0)
                    {
                      return v49;
                    }

                    v50 = v225;
                    if ((v225 & 1) == 0)
                    {
                      v44[2] = v223;
                      v44[3] = v233;
                    }

                    if (HIWORD(v244) && !*a4)
                    {
                      v51 = 0;
                      v218 = v36;
                      v235 = a4;
                      v216 = v45;
                      while (1)
                      {
                        v217 = v51;
                        v52 = *(v245 + 8 * v51);
                        v53 = strchr(v52, HIBYTE(v243));
                        v54 = v53;
                        if (v53)
                        {
                          *v53 = 0;
                          v54 = v53 + 1;
                          v55 = strchr(v53 + 1, HIBYTE(v243));
                          if (v55)
                          {
                            *v55 = 0;
                          }
                        }

                        v56 = strlen(*(a1 + 160));
                        if (v56)
                        {
                          if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                          {
                            goto LABEL_263;
                          }
                        }

                        v57 = v227;
                        if (v54)
                        {
                          if (*v54)
                          {
                            v57 = v54;
                          }

                          else
                          {
                            v57 = v227;
                          }
                        }

                        v58 = strlen(v57);
                        v59 = strlen(v52);
                        v60 = strlen(v47);
                        if (v59 > v60)
                        {
                          v60 = v59;
                        }

                        if (v58 > v60)
                        {
                          LOWORD(v60) = v58;
                        }

                        v61 = hlp_Realloc(a1, (v60 + v56 + 4));
                        if ((v61 & 0x80000000) != 0)
                        {
                          goto LABEL_268;
                        }

                        if (!dynamic_strcat((a1 + 160), v57, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v52, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v47, (a1 + 208), *(*a1 + 8)))
                        {
                          goto LABEL_263;
                        }

                        v62 = strlen(v57);
                        v63 = Utf8_LengthInUtf8chars(v57, v62) << 16;
                        if (v63 >= (strlen(v52) << 16) && (v64 = strlen(v57), v65 = Utf8_LengthInUtf8chars(v57, v64) << 16, v65 >= (strlen(v47) << 16)))
                        {
                          v77 = strlen(v57);
                          v78 = Utf8_LengthInUtf8chars(v57, v77);
                          if (strlen(v52) != v78)
                          {
                            v79 = 0;
                            while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                            {
                              ++v79;
                              v80 = strlen(v57);
                              v81 = Utf8_LengthInUtf8chars(v57, v80);
                              if (v81 - strlen(v52) <= v79)
                              {
                                goto LABEL_74;
                              }
                            }

                            goto LABEL_263;
                          }

LABEL_74:
                          v82 = strlen(v57);
                          v83 = Utf8_LengthInUtf8chars(v57, v82);
                          a4 = v235;
                          if (strlen(v47) != v83)
                          {
                            v84 = 0;
                            while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                            {
                              ++v84;
                              v85 = strlen(v57);
                              v86 = Utf8_LengthInUtf8chars(v57, v85);
                              v87 = v86 - strlen(v47);
                              a4 = v235;
                              if (v87 <= v84)
                              {
                                goto LABEL_87;
                              }
                            }

                            goto LABEL_263;
                          }
                        }

                        else
                        {
                          v66 = strlen(v52) << 16;
                          v67 = strlen(v57);
                          if (v66 >= (Utf8_LengthInUtf8chars(v57, v67) << 16) && (v68 = strlen(v52), v68 << 16 >= (strlen(v47) << 16)))
                          {
                            v88 = strlen(v57);
                            if (v68 != Utf8_LengthInUtf8chars(v57, v88))
                            {
                              v89 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v89;
                                v90 = strlen(v52);
                                v91 = strlen(v57);
                                if (v90 - Utf8_LengthInUtf8chars(v57, v91) <= v89)
                                {
                                  goto LABEL_83;
                                }
                              }

                              goto LABEL_263;
                            }

LABEL_83:
                            v92 = strlen(v52);
                            a4 = v235;
                            if (v92 != strlen(v47))
                            {
                              v93 = 0;
                              while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                              {
                                ++v93;
                                v94 = strlen(v52);
                                if (v94 - strlen(v47) <= v93)
                                {
                                  goto LABEL_87;
                                }
                              }

                              goto LABEL_263;
                            }
                          }

                          else
                          {
                            v69 = strlen(v47);
                            v70 = strlen(v57);
                            if (v69 != Utf8_LengthInUtf8chars(v57, v70))
                            {
                              v71 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v71;
                                v72 = strlen(v47);
                                v73 = strlen(v57);
                                if (v72 - Utf8_LengthInUtf8chars(v57, v73) <= v71)
                                {
                                  goto LABEL_65;
                                }
                              }

                              goto LABEL_263;
                            }

LABEL_65:
                            v74 = strlen(v47);
                            a4 = v235;
                            if (v74 != strlen(v52))
                            {
                              v75 = 0;
                              while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                              {
                                ++v75;
                                v76 = strlen(v47);
                                if (v76 - strlen(v52) <= v75)
                                {
                                  goto LABEL_87;
                                }
                              }

                              goto LABEL_263;
                            }
                          }
                        }

LABEL_87:
                        v37 = v229;
                        a2[v34] = v229;
                        v36 = v218;
                        v30 = hlp_MdeRecurse(a1, a2, v34, a4, v221, v240);
                        if ((v30 & 0x80000000) != 0)
                        {
                          goto LABEL_264;
                        }

                        if (!*a4)
                        {
                          *(*(a1 + 160) + v56) = 0;
                          *(*(a1 + 168) + v56) = 0;
                          *(*(a1 + 176) + v56) = 0;
                        }

                        v45 = v216;
                        v51 = v217 + 1;
                        if (v217 + 1 >= HIWORD(v244))
                        {
                          v50 = v225;
                          goto LABEL_34;
                        }

                        v50 = v225;
                        if (*a4)
                        {
                          goto LABEL_34;
                        }
                      }
                    }

                    v30 = 0;
LABEL_34:
                    if (v50)
                    {
                      v46 = 0;
                      if (!*a4)
                      {
                        continue;
                      }
                    }

                    v10 = v226;
                    v35 = v240;
                    break;
                  }
                }
              }

              else
              {
                v10 = v226;
              }
            }
          }

          else
          {
            LOWORD(v244) = 0;
            v30 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdestem", a2, &v246, &v244, &v243 + 1);
            v48 = *(*a1 + 8);
            if ((v30 & 0x80000000) != 0)
            {
              goto LABEL_265;
            }

            v49 = hlp_saveLookupResults(v48, v246, v244, &v245, &v244 + 1);
            if ((v49 & 0x80000000) != 0)
            {
              return v49;
            }

            if (HIWORD(v244) && !*a4)
            {
              v236 = a4;
              v95 = 0;
              v219 = v36;
              v230 = v37;
              while (1)
              {
                v96 = *(v245 + 8 * v95);
                v97 = strchr(v96, HIBYTE(v243));
                v98 = v97;
                if (v97)
                {
                  *v97 = 0;
                  v98 = v97 + 1;
                  v99 = strchr(v97 + 1, HIBYTE(v243));
                  v100 = v99;
                  if (v99)
                  {
                    *v99 = 0;
                    v100 = v99 + 1;
                    v101 = strchr(v99 + 1, HIBYTE(v243));
                    if (v101)
                    {
                      *v101 = 0;
                    }
                  }
                }

                else
                {
                  v100 = 0;
                }

                v102 = strlen(*(a1 + 160));
                if (v102)
                {
                  if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                  {
                    goto LABEL_263;
                  }
                }

                if (v98)
                {
                  v103 = v98;
                }

                else
                {
                  v103 = "";
                }

                if (!v100 || !*v100)
                {
                  v100 = a2;
                }

                v104 = strlen(v100);
                v105 = strlen(v96);
                v106 = strlen(v103);
                if (v105 > v106)
                {
                  v106 = v105;
                }

                if (v104 > v106)
                {
                  LOWORD(v106) = v104;
                }

                v61 = hlp_Realloc(a1, (v106 + v102 + 4));
                if ((v61 & 0x80000000) != 0)
                {
LABEL_268:
                  v30 = v61;
                  goto LABEL_264;
                }

                if (!dynamic_strcat((a1 + 160), v100, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v96, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v103, (a1 + 208), *(*a1 + 8)))
                {
                  goto LABEL_263;
                }

                v107 = strlen(v100);
                v108 = Utf8_LengthInUtf8chars(v100, v107) << 16;
                if (v108 >= (strlen(v96) << 16) && (v109 = strlen(v100), v110 = Utf8_LengthInUtf8chars(v100, v109) << 16, v110 >= (strlen(v103) << 16)))
                {
                  v122 = strlen(v100);
                  v123 = Utf8_LengthInUtf8chars(v100, v122);
                  if (strlen(v96) != v123)
                  {
                    v124 = 0;
                    while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                    {
                      ++v124;
                      v125 = strlen(v100);
                      v126 = Utf8_LengthInUtf8chars(v100, v125);
                      if (v126 - strlen(v96) <= v124)
                      {
                        goto LABEL_143;
                      }
                    }

                    goto LABEL_263;
                  }

LABEL_143:
                  v127 = strlen(v100);
                  v128 = Utf8_LengthInUtf8chars(v100, v127);
                  if (strlen(v103) != v128)
                  {
                    v129 = 0;
                    while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                    {
                      ++v129;
                      v130 = strlen(v100);
                      v131 = Utf8_LengthInUtf8chars(v100, v130);
                      if (v131 - strlen(v103) <= v129)
                      {
                        goto LABEL_156;
                      }
                    }

                    goto LABEL_263;
                  }
                }

                else
                {
                  v111 = strlen(v96) << 16;
                  v112 = strlen(v100);
                  if (v111 >= (Utf8_LengthInUtf8chars(v100, v112) << 16) && (v113 = strlen(v96), v113 << 16 >= (strlen(v103) << 16)))
                  {
                    v132 = strlen(v100);
                    if (v113 != Utf8_LengthInUtf8chars(v100, v132))
                    {
                      v133 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v133;
                        v134 = strlen(v96);
                        v135 = strlen(v100);
                        if (v134 - Utf8_LengthInUtf8chars(v100, v135) <= v133)
                        {
                          goto LABEL_152;
                        }
                      }

                      goto LABEL_263;
                    }

LABEL_152:
                    v136 = strlen(v96);
                    if (v136 != strlen(v103))
                    {
                      v137 = 0;
                      while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                      {
                        ++v137;
                        v138 = strlen(v96);
                        if (v138 - strlen(v103) <= v137)
                        {
                          goto LABEL_156;
                        }
                      }

                      goto LABEL_263;
                    }
                  }

                  else
                  {
                    v114 = strlen(v103);
                    v115 = strlen(v100);
                    if (v114 != Utf8_LengthInUtf8chars(v100, v115))
                    {
                      v116 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v116;
                        v117 = strlen(v103);
                        v118 = strlen(v100);
                        if (v117 - Utf8_LengthInUtf8chars(v100, v118) <= v116)
                        {
                          goto LABEL_134;
                        }
                      }

                      goto LABEL_263;
                    }

LABEL_134:
                    v119 = strlen(v103);
                    if (v119 != strlen(v96))
                    {
                      v120 = 0;
                      while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                      {
                        ++v120;
                        v121 = strlen(v103);
                        if (v121 - strlen(v96) <= v120)
                        {
                          goto LABEL_156;
                        }
                      }

                      goto LABEL_263;
                    }
                  }
                }

LABEL_156:
                v37 = v230;
                a2[v34] = v230;
                v139 = strlen(a2);
                v140 = strlen(v103);
                v141 = heap_Alloc(*(*a1 + 8), (v139 + v140 + 1));
                if (!v141)
                {
                  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v142, v143, v144, v145, v215);
                  hlp_freeLookupResults(*(*a1 + 8), &v245, &v244 + 1);
                  return 2310021130;
                }

                v146 = v141;
                *v141 = 95;
                strcat(v141, v103);
                v36 = v219;
                v30 = hlp_MdeRecurse(a1, a2, v34, v236, v221, v146);
                heap_Free(*(*a1 + 8), v146);
                if ((v30 & 0x80000000) != 0)
                {
                  goto LABEL_264;
                }

                if (!*v236)
                {
                  *(*(a1 + 160) + v102) = 0;
                  *(*(a1 + 168) + v102) = 0;
                  *(*(a1 + 176) + v102) = 0;
                }

                ++v95;
                v10 = v226;
                if (v95 >= HIWORD(v244) || *v236)
                {
                  v35 = 0;
                  a4 = v236;
                  goto LABEL_100;
                }
              }
            }

            v30 = 0;
          }

LABEL_100:
          a2[v34--] = v37;
          --v237;
          a7 = v36;
          if (v10 >= v237)
          {
            goto LABEL_264;
          }
        }
      }
    }

    goto LABEL_264;
  }

  v155 = strchr(a6, 95);
  if (!v155 || (v156 = v155, v157 = strlen(v155), memmove(a6 + 1, v156, v157 + 1), *a6 = 64, (v228 = strchr(a6, 95)) == 0) || *a4)
  {
LABEL_12:
    v232 = 32;
    goto LABEL_13;
  }

  v31 = 32;
  v158 = 1;
  v232 = 32;
  while (1)
  {
    v238 = v228 + 1;
    v231 = v158;
    if ((v158 & 1) == 0)
    {
      LOBYTE(v242) = v228[1];
      v31 = v228[2];
      v232 = v228[3];
      *(v228 + 1) = 42;
      v238 = &v242;
    }

    LOWORD(v244) = 0;
    v159 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", a6, &v246, &v244, &v243 + 1);
    if ((v159 & 0x80000000) != 0)
    {
      goto LABEL_270;
    }

    if ((v231 & 1) == 0)
    {
      v228[2] = v31;
      v228[3] = v232;
    }

    v159 = hlp_saveLookupResults(*(*a1 + 8), v246, v244, &v245, &v244 + 1);
    if ((v159 & 0x80000000) != 0)
    {
LABEL_270:
      v30 = v159;
      goto LABEL_271;
    }

    v160 = v231;
    if (HIWORD(v244))
    {
      if (!*a4)
      {
        break;
      }
    }

    v30 = 0;
LABEL_192:
    if (v160)
    {
      v158 = 0;
      if (!*a4)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  v161 = 0;
  v220 = a7;
  while (1)
  {
    v222 = v161;
    v162 = *(v245 + 8 * v161);
    v163 = strchr(v162, HIBYTE(v243));
    v164 = v163;
    if (v163)
    {
      *v163 = 0;
      v164 = v163 + 1;
      v165 = strchr(v163 + 1, HIBYTE(v243));
      if (v165)
      {
        *v165 = 0;
      }
    }

    v224 = strlen(*(a1 + 160));
    if (v224 && (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8))))
    {
      goto LABEL_263;
    }

    if (v164)
    {
      if (*v164)
      {
        v166 = v164;
      }

      else
      {
        v166 = "@";
      }
    }

    else
    {
      v166 = "@";
    }

    v167 = strlen(v166);
    v168 = strlen(v162);
    v169 = strlen(v238);
    if (v168 > v169)
    {
      v169 = v168;
    }

    if (v167 > v169)
    {
      LOWORD(v169) = v167;
    }

    v170 = hlp_Realloc(a1, (v169 + v224 + 4));
    if ((v170 & 0x80000000) != 0)
    {
      v30 = v170;
      v214 = *(*a1 + 8);
      goto LABEL_275;
    }

    if (!dynamic_strcat((a1 + 160), v166, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v162, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v238, (a1 + 208), *(*a1 + 8)))
    {
      goto LABEL_263;
    }

    v171 = strlen(v166);
    v172 = Utf8_LengthInUtf8chars(v166, v171) << 16;
    if (v172 >= (strlen(v162) << 16) && (v173 = strlen(v166), v174 = Utf8_LengthInUtf8chars(v166, v173) << 16, v174 >= (strlen(v238) << 16)))
    {
      v186 = strlen(v166);
      v187 = Utf8_LengthInUtf8chars(v166, v186);
      if (strlen(v162) != v187)
      {
        v188 = 0;
        while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
        {
          ++v188;
          v189 = strlen(v166);
          v190 = Utf8_LengthInUtf8chars(v166, v189);
          if (v190 - strlen(v162) <= v188)
          {
            goto LABEL_233;
          }
        }

        goto LABEL_263;
      }

LABEL_233:
      v191 = strlen(v166);
      v192 = Utf8_LengthInUtf8chars(v166, v191);
      if (strlen(v238) != v192)
      {
        v193 = 0;
        while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
        {
          ++v193;
          v194 = strlen(v166);
          v195 = Utf8_LengthInUtf8chars(v166, v194);
          if (v195 - strlen(v238) <= v193)
          {
            goto LABEL_246;
          }
        }

        goto LABEL_263;
      }
    }

    else
    {
      v175 = strlen(v162) << 16;
      v176 = strlen(v166);
      if (v175 >= (Utf8_LengthInUtf8chars(v166, v176) << 16) && (v177 = strlen(v162), v177 << 16 >= (strlen(v238) << 16)))
      {
        v196 = strlen(v166);
        if (v177 != Utf8_LengthInUtf8chars(v166, v196))
        {
          v197 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v197;
            v198 = strlen(v162);
            v199 = strlen(v166);
            if (v198 - Utf8_LengthInUtf8chars(v166, v199) <= v197)
            {
              goto LABEL_242;
            }
          }

          goto LABEL_263;
        }

LABEL_242:
        v200 = strlen(v162);
        if (v200 != strlen(v238))
        {
          v201 = 0;
          while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
          {
            ++v201;
            v202 = strlen(v162);
            if (v202 - strlen(v238) <= v201)
            {
              goto LABEL_246;
            }
          }

          goto LABEL_263;
        }
      }

      else
      {
        v178 = strlen(v238);
        v179 = strlen(v166);
        if (v178 != Utf8_LengthInUtf8chars(v166, v179))
        {
          v180 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v180;
            v181 = strlen(v238);
            v182 = strlen(v166);
            if (v181 - Utf8_LengthInUtf8chars(v166, v182) <= v180)
            {
              goto LABEL_224;
            }
          }

          goto LABEL_263;
        }

LABEL_224:
        v183 = strlen(v238);
        if (v183 != strlen(v162))
        {
          v184 = 0;
          while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
          {
            ++v184;
            v185 = strlen(v238);
            if (v185 - strlen(v162) <= v184)
            {
              goto LABEL_246;
            }
          }

LABEL_263:
          v30 = 2310021130;
          goto LABEL_264;
        }
      }
    }

LABEL_246:
    v203 = strlen(*(a1 + 168));
    v204 = heap_Realloc(*(*a1 + 8), v21, (v203 + 4));
    if (!v204)
    {
      v30 = 2310021130;
      heap_Free(*(*a1 + 8), v21);
      hlp_freeLookupResults(*(*a1 + 8), &v245, &v244 + 1);
      goto LABEL_165;
    }

    v21 = v204;
    strcpy(v204, "mde_");
    v205 = *v13;
    if (strlen(*v13))
    {
      v209 = 0;
      v210 = 4;
      do
      {
        v211 = v205[v209];
        if (v211 != 32 && v211 != 126)
        {
          v21[v210] = v211;
          v205 = *v13;
          ++v210;
        }

        ++v209;
      }

      while (strlen(v205) > v209);
      v212 = v210;
    }

    else
    {
      v212 = 4;
    }

    v21[v212] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v206, v207, v208, v21);
    LOWORD(v244) = -1;
    v30 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v21, &v246, &v244, &v243 + 1);
    a7 = v220;
    a4 = v234;
    if ((v30 & 0x80000000) != 0)
    {
      break;
    }

    v160 = v231;
    if (v244)
    {
      *v234 = 1;
    }

    else if (!*v234)
    {
      *(*(a1 + 160) + v224) = 0;
      (*v13)[v224] = 0;
      *(*(a1 + 176) + v224) = 0;
    }

    v161 = v222 + 1;
    if (v222 + 1 >= HIWORD(v244) || *v234)
    {
      goto LABEL_192;
    }
  }

  v214 = *(*a1 + 8);
LABEL_275:
  heap_Free(v214, v21);
LABEL_264:
  v48 = *(*a1 + 8);
LABEL_265:
  hlp_freeLookupResults(v48, &v245, &v244 + 1);
  return v30;
}

uint64_t hlp_saveLookupResults(void *a1, uint64_t a2, unsigned int a3, uint64_t *a4, unsigned __int16 *a5)
{
  hlp_freeLookupResults(a1, a4, a5);
  result = 0;
  if (a2 && a3)
  {
    v11 = heap_Alloc(a1, 8 * a3);
    *a4 = v11;
    if (v11)
    {
      v12 = 0;
      *a5 = 0;
      while (1)
      {
        v13 = strlen(*(a2 + 8 * v12));
        v14 = heap_Alloc(a1, (v13 + 1));
        v15 = *a5;
        *(*a4 + 8 * v15) = v14;
        v16 = *(*a4 + 8 * v15);
        if (!v16)
        {
          break;
        }

        strcpy(v16, *(a2 + 8 * v15));
        v12 = *a5 + 1;
        *a5 = v12;
        if (a3 <= v12)
        {
          return 0;
        }
      }
    }

    hlp_freeLookupResults(a1, a4, a5);
    return 2310021130;
  }

  return result;
}

uint64_t hlp_Realloc(uint64_t *a1, unsigned int a2)
{
  v3 = a2;
  if (a1[24] < a2)
  {
    v4 = heap_Realloc(*(*a1 + 8), a1[20], a2);
    if (!v4)
    {
      goto LABEL_10;
    }

    a1[20] = v4;
    a1[24] = v3;
  }

  if (a1[25] >= v3)
  {
    goto LABEL_7;
  }

  v9 = heap_Realloc(*(*a1 + 8), a1[21], v3);
  if (!v9)
  {
LABEL_10:
    v11 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v5, v6, v7, v8, v13);
    return v11;
  }

  a1[21] = v9;
  a1[25] = v3;
LABEL_7:
  if (a1[26] >= v3)
  {
    return 0;
  }

  v10 = heap_Realloc(*(*a1 + 8), a1[22], v3);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = 0;
  a1[22] = v10;
  a1[26] = v3;
  return v11;
}

void *hlp_freeLookupResults(void *result, uint64_t *a2, _WORD *a3)
{
  v5 = *a2;
  if (v5)
  {
    v6 = result;
    if (*a3)
    {
      v7 = 0;
      do
      {
        heap_Free(v6, *(*a2 + 8 * v7++));
      }

      while (v7 < *a3);
      v5 = *a2;
    }

    result = heap_Free(v6, v5);
  }

  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t hlp_WriteWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v6;
  v37 = *MEMORY[0x1E69E9840];
  v33 = v9;
  v32 = v16;
  v31 = v17;
  v30 = v18;
  v29 = 0;
  __strcpy_chk();
  __strcpy_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  if (!v8)
  {
    goto LABEL_11;
  }

  v19 = strlen(v36);
  v20 = strlen(v35);
  v21 = strlen(__s);
  v22 = v20 <= v19 ? v19 : v20;
  v23 = v21 <= v22 ? v22 : v21;
  result = mosynt_PadWithChar(v36, 5000, 126, v23);
  if ((result & 0x80000000) == 0)
  {
    result = mosynt_PadWithChar(v35, 5000, 32, v23);
    if ((result & 0x80000000) == 0)
    {
      result = mosynt_PadWithChar(__s, 5000, 32, v23);
      if ((result & 0x80000000) == 0)
      {
LABEL_11:
        result = (*(*(v15 + 56) + 88))(v14, v12, v10, &v33);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(v15 + 56) + 160))(v14, v12, v33, 0, 1, &v32, &v29);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(v15 + 56) + 160))(v14, v12, v33, 1, 1, &v31, &v29);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(v15 + 56) + 160))(v14, v12, v33, 2, 1, &v30, &v29);
              if ((result & 0x80000000) == 0)
              {
                v25 = strlen(v36);
                result = (*(*(v15 + 56) + 160))(v14, v12, v33, 3, (v25 + 1), v36, &v29);
                if ((result & 0x80000000) == 0)
                {
                  v26 = strlen(v35);
                  result = (*(*(v15 + 56) + 160))(v14, v12, v33, 5, (v26 + 1), v35, &v29);
                  if ((result & 0x80000000) == 0)
                  {
                    v27 = strlen(__s);
                    result = (*(*(v15 + 56) + 160))(v14, v12, v33, 6, (v27 + 1), __s, &v29);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(v15 + 56) + 160))(v14, v12, v33, 7, 1, va, &v29);
                      if ((result & 0x80000000) == 0)
                      {
                        result = (*(*(v15 + 56) + 160))(v14, v12, v33, 9, 1, "", &v29);
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

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mde_MosyntMorphAna(uint64_t a1, _BYTE *a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 *a11, int a12, _DWORD *a13)
{
  v25[281] = *MEMORY[0x1E69E9840];
  v24 = 0;
  bzero(v25, 0x8C8uLL);
  *a13 = 0;
  **(a1 + 240) = 0;
  **(a1 + 248) = 0;
  **(a1 + 256) = 0;
  result = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), v25);
  if ((result & 0x80000000) == 0)
  {
    result = mosynt_WordAnalysis(*(a1 + 48));
    if ((result & 0x80000000) == 0)
    {
      v19 = HIDWORD(v24);
      *a13 = HIDWORD(v24);
      if (v19)
      {
        *a11 = strlen(a4) + a6;
        HIDWORD(v24) = 1;
        v20 = 1;
        while (1)
        {
          result = mosynt_GetReading(*(a1 + 48), v25, 0, &v24 + 1, a2 + 15000, 5000, a2 + 5000, 5000, &v24);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_20;
          }

          result = mosynt_SubstAllSubstrOcc(a2 + 5000, "~", "¡", a2 + 10000, 5000);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_20;
          }

          __strcpy_chk();
          if (!HIDWORD(v24))
          {
            goto LABEL_19;
          }

          if (a12)
          {
            break;
          }

          if (v20)
          {
            if (v24)
            {
              v20 = 1;
            }

            else
            {
              hlp_WriteWordRec(a1, a9, a10, a7, 1, 8, a6, *a11, a2 + 5000, "", "", "");
              v20 = 0;
            }

LABEL_12:
            if (!HIDWORD(v24))
            {
              goto LABEL_19;
            }
          }
        }

        v21 = a10;
        v22 = a9;
        if (v20)
        {
          hlp_WriteWordRec(a1, a9, a10, a7, 1, 4, a6, *a11, a2 + 5000, "Y", "Y", "");
          v22 = a9;
          v21 = a10;
        }

        hlp_WriteWordRec(a1, v22, v21, a7, 0, 8, a6, *a11, a2 + 5000, "N", "*", a2 + 15000);
        v20 = 0;
        goto LABEL_12;
      }

LABEL_19:
      result = mosynt_FinishWordAnalysis(*(a1 + 48), v25);
    }
  }

LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mde_Main(uint64_t a1, const char *a2, char *__s, const char *a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9)
{
  v28 = a5;
  v27 = a6;
  v25 = 8;
  v26 = 0;
  v24 = 0;
  v23 = 1;
  if (*(a1 + 286) == 1 || (v17 = strlen(__s), v17 < *(a1 + 282)) || v17 > *(a1 + 283) || *(a1 + 284) == 1 && (v19 = *__s, (v19 - 65) >= 0x1A) && (v19 != 195 || __s[1] - 132 > 0x18 || ((1 << (__s[1] + 124)) & 0x104202F) == 0))
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde cfg settings do not apply on %s", a6, a7, a8, a2);
    return 0;
  }

  else
  {
    **(a1 + 240) = 0;
    **(a1 + 248) = 0;
    **(a1 + 256) = 0;
    result = hlp_MdeRecurse_0(a1, a2, a4, 0, &v26, 0);
    if ((result & 0x80000000) == 0)
    {
      if (v26)
      {
        *a9 = strlen(__s) + a5;
        result = (*(*(a1 + 56) + 88))(a7, a8, a6, &v27);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a7, a8, v27, 0, 1, &v25, &v24);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a7, a8, v27, 1, 1, &v28, &v24);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(a1 + 56) + 160))(a7, a8, v27, 2, 1, a9, &v24);
              if ((result & 0x80000000) == 0)
              {
                v20 = strlen(*(a1 + 240));
                result = (*(*(a1 + 56) + 160))(a7, a8, v27, 3, (v20 + 1), *(a1 + 240), &v24);
                if ((result & 0x80000000) == 0)
                {
                  v21 = strlen(*(a1 + 248));
                  result = (*(*(a1 + 56) + 160))(a7, a8, v27, 5, (v21 + 1), *(a1 + 248), &v24);
                  if ((result & 0x80000000) == 0)
                  {
                    v22 = strlen(*(a1 + 256));
                    result = (*(*(a1 + 56) + 160))(a7, a8, v27, 6, (v22 + 1), *(a1 + 256), &v24);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a7, a8, v27, 7, 1, &v23, &v24);
                      if ((result & 0x80000000) == 0)
                      {
                        return (*(*(a1 + 56) + 160))(a7, a8, v27, 9, 1, "", &v24);
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

  return result;
}

uint64_t hlp_MdeRecurse_0(uint64_t a1, const char *a2, const char *a3, unsigned int a4, _DWORD *a5, int a6)
{
  v8 = a4;
  v10 = a2;
  v123 = *MEMORY[0x1E69E9840];
  memset(__c, 0, sizeof(__c));
  v12 = 0;
  if (a4 == strlen(a2))
  {
    v114 = v8;
    strcpy(v122, "mde_");
    __strcat_chk();
    __strcat_chk();
    v16 = strlen(v122);
    v17 = *(a1 + 248);
    if (*v17 && v16 <= 0xFF)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = v17[v18];
        if (v20 != 32)
        {
          v122[v16++] = v20;
        }

        if (strlen(v17) <= ++v19)
        {
          break;
        }

        v18 = v19;
      }

      while (v16 < 0x100);
    }

    v122[v16] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v13, v14, v15, v122);
    *&__c[1] = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v122, &__c[3], &__c[1], __c);
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_137;
    }

    if (*&__c[1])
    {
      goto LABEL_11;
    }

    strcpy(v122, "mde_");
    v93 = *(a1 + 248);
    if (*v93)
    {
      v94 = 0;
      v95 = 0;
      v96 = 4;
      do
      {
        v97 = v93[v94];
        if (v97 != 32)
        {
          v122[v96++] = v97;
        }

        if (strlen(v93) <= ++v95)
        {
          break;
        }

        v94 = v95;
      }

      while (v96 < 0x100);
    }

    else
    {
      v96 = 4;
    }

    v122[v96] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v21, v22, v23, v122);
    *&__c[1] = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v122, &__c[3], &__c[1], __c);
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_137;
    }

    if (*&__c[1])
    {
LABEL_11:
      *a5 = 1;
      v24 = "MDE succeeds";
    }

    else
    {
      v24 = "MDE fails";
    }

    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, v24, v21, v22, v23, v101);
    v8 = v114;
    v10 = a2;
  }

  if (*(a1 + 285) != a6)
  {
    v25 = strlen(v10);
    v26 = v25;
    if (v8 < v25 && !*a5)
    {
      v110 = a5;
      v111 = 0;
      v108 = a6 + 1;
      __s2 = &v10[v8];
      v27 = v25;
      v115 = v8;
      while (1)
      {
        v28 = v10[v27];
        v10[v27] = 0;
        *&__c[1] = 0;
        v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mde", __s2, &__c[3], &__c[1], __c);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_137;
        }

        v10[v27] = v28;
        if (!*&__c[1])
        {
          break;
        }

        if (!*a5)
        {
          v103 = v28;
          v29 = 0;
          __n = (v26 - v115);
          v105 = v27 - v115 + 2;
          v106 = (v26 - v115 - 1);
          v112 = v27;
          v102 = a3;
          do
          {
            v30 = *(*&__c[3] + 8 * v29);
            v31 = strchr(v30, __c[0]);
            if (v31)
            {
              *v31 = 0;
              v32 = v31 + 1;
              v33 = strchr(v31 + 1, __c[0]);
              v34 = v33;
              if (v33)
              {
                *v33 = 0;
                v34 = v33 + 1;
                v35 = strchr(v33 + 1, __c[0]);
                v36 = v35;
                if (v35)
                {
                  *v35 = 0;
                  v36 = v35 + 1;
                  v37 = strchr(v35 + 1, __c[0]);
                  if (v37)
                  {
                    *v37 = 0;
                  }
                }
              }

              else
              {
                v36 = 0;
              }
            }

            else
            {
              v34 = 0;
              v36 = 0;
              v32 = v111;
            }

            v38 = strlen(*(a1 + 240));
            v39 = v38;
            if (v30 && *v30)
            {
              if (v36)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v30 = "*";
              if (v36)
              {
LABEL_33:
                if (*v36)
                {
                  goto LABEL_35;
                }
              }
            }

            v36 = "*";
LABEL_35:
            v107 = v38;
            if (v38)
            {
              *(*(a1 + 240) + strlen(*(a1 + 240))) = 43;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
            }

            v111 = v32;
            if (v34 && *v34)
            {
              v40 = strlen(v34);
              v41 = hlp_Realloc_0(a1, (v40 + v39 + 4));
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              strcat(*(a1 + 240), v34);
              strcat(*(a1 + 248), v30);
              strcat(*(a1 + 256), v36);
              v42 = strlen(v34);
              if (Utf8_LengthInUtf8chars(v34, v42) != 1)
              {
                v43 = 0;
                do
                {
                  *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
                  *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
                  ++v43;
                  v44 = strlen(v34);
                }

                while ((Utf8_LengthInUtf8chars(v34, v44) - 1) > v43);
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              a5 = v110;
            }

            else if (v32 && !strcmp(v32, "yes"))
            {
              v120 = 0;
              v119 = 0;
              strcpy(v122, "one_word");
              a2[v112] = 0;
              v118[0] = *v30;
              v118[1] = 0;
              v117[0] = *v36;
              v117[1] = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v45, v46, v47, v122);
              v49 = strlen(__s2);
              v41 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, __s2, v49);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              a2[v112] = v103;
              v41 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v122);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              v41 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v120, &v119);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              v120[v119] = 0;
              v50 = v120;
              v51 = strlen(v120);
              if (v51)
              {
                v55 = 0;
                a5 = v110;
                a3 = v102;
                do
                {
                  v56 = &v50[v55];
                  v57 = *v56;
                  if (v57 == 194)
                  {
                    if (v56[1] == 161)
                    {
                      memmove(v56 + 1, v56 + 2, v51 - v55 + 1);
                      v120[v55] = 126;
                    }
                  }

                  else if (v57 == 126)
                  {
                    memmove(&v50[v55], v56 + 1, (v51 - v55 + 1));
                    --v55;
                  }

                  ++v55;
                  v50 = v120;
                  v51 = strlen(v120);
                }

                while (v51 > v55);
              }

              else
              {
                a5 = v110;
                a3 = v102;
              }

              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v52, v53, v54, v122);
              v58 = strlen(v120);
              v41 = hlp_Realloc_0(a1, (v58 + v39 + 4));
              if ((v41 & 0x80000000) != 0)
              {
LABEL_135:
                v12 = v41;
                goto LABEL_137;
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              strcat(*(a1 + 240), v120);
              strcat(*(a1 + 248), v118);
              strcat(*(a1 + 256), v117);
              v59 = strlen(v120);
              if (Utf8_LengthInUtf8chars(v120, v59) != 1)
              {
                v60 = 0;
                do
                {
                  *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
                  *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
                  ++v60;
                  v61 = strlen(v120);
                }

                while ((Utf8_LengthInUtf8chars(v120, v61) - 1) > v60);
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
            }

            else
            {
              v41 = hlp_Realloc_0(a1, (v105 + v39));
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              strncat(*(a1 + 240), __s2, __n);
              strcat(*(a1 + 248), v30);
              strcat(*(a1 + 256), v36);
              a5 = v110;
              if (v106)
              {
                v48 = v106;
                do
                {
                  *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
                  *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
                  --v48;
                }

                while (v48);
              }
            }

            v27 = v112;
            v10 = a2;
            v12 = hlp_MdeRecurse_0(a1, a2, a3, v112, a5, v108);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_137;
            }

            if (!*a5)
            {
              v62 = Utf8_LengthInUtf8chars(*(a1 + 240), v107);
              *(*(a1 + 240) + v39) = 0;
              *(*(a1 + 248) + v62) = 0;
              *(*(a1 + 256) + v62) = 0;
            }

            if (++v29 >= *&__c[1])
            {
              goto LABEL_75;
            }
          }

          while (!*a5);
        }

LABEL_76:
        v26 = v27 - 1;
        if (v115 < (v27 - 1))
        {
          --v27;
          if (!*a5)
          {
            continue;
          }
        }

        goto LABEL_137;
      }

LABEL_75:
      if (*a5)
      {
        goto LABEL_76;
      }

      v63 = v10[v27];
      v10[v27] = 0;
      *&__c[1] = 0;
      v12 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), "g2p", __s2, &__c[3], &__c[1], __c, *(a1 + 556));
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_137;
      }

      v10[v27] = v63;
      if (!*&__c[1])
      {
        goto LABEL_76;
      }

      v64 = 0;
      v113 = v27;
      while (1)
      {
        if (*a5)
        {
          goto LABEL_76;
        }

        v65 = *(*&__c[3] + 8 * v64);
        v66 = strchr(v65, __c[0]);
        if (!v66)
        {
          break;
        }

        *v66 = 0;
        v71 = strchr(v66 + 1, __c[0]);
        v72 = v71;
        if (!v71)
        {
          goto LABEL_92;
        }

        *v71 = 0;
        v72 = v71 + 1;
        v73 = strchr(v71 + 1, __c[0]);
        v74 = v73;
        if (!v73)
        {
          goto LABEL_93;
        }

        *v73 = 0;
        v74 = v73 + 1;
        v75 = strchr(v73 + 1, __c[0]);
        v76 = v75;
        if (!v75)
        {
          goto LABEL_94;
        }

        *v75 = 0;
        v76 = v75 + 1;
        v77 = strchr(v75 + 1, __c[0]);
        if (!v77)
        {
          goto LABEL_94;
        }

        *v77 = 0;
        v78 = strchr(v77 + 1, __c[0]);
        v79 = v78;
        if (v78)
        {
          *v78 = 0;
          v79 = v78 + 1;
          v80 = strchr(v78 + 1, __c[0]);
          if (v80)
          {
            *v80 = 0;
          }
        }

LABEL_95:
        v81 = *(*a1 + 32);
        if (!v65)
        {
          log_OutPublic(v81, "FE_ONEWORD", 34001, 0, v67, v68, v69, v70, v100);
          v12 = 2310021127;
          goto LABEL_137;
        }

        log_OutText(v81, "FE_ONEWORD", 5, 0, "G2P Validating %s", v68, v69, v70, v65);
        if (v72 && *v72 && !strstr(v72, a3))
        {
          v91 = *(*a1 + 32);
          v92 = "G2P Domain validation not OK";
LABEL_121:
          log_OutText(v91, "FE_ONEWORD", 5, 0, v92, v82, v83, v84, v100);
          a5 = v110;
          v10 = a2;
          v27 = v113;
          goto LABEL_122;
        }

        if (v79 && *v79 == 48 && !v79[1])
        {
          v91 = *(*a1 + 32);
          v92 = "G2P MDE usage validation not OK";
          goto LABEL_121;
        }

        v85 = strlen(*(a1 + 240));
        if (*v65)
        {
          if (!v74 || !*v74)
          {
            v74 = "*";
          }

          if (!v76 || !*v76)
          {
            v76 = "*";
          }

          v86 = strlen(v65);
          v41 = hlp_Realloc_0(a1, (v86 + v85 + 4));
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }

          if (v85)
          {
            *(*(a1 + 240) + strlen(*(a1 + 240))) = 43;
            *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
            *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
          }

          *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
          *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
          *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
          strcat(*(a1 + 240), v65);
          strcat(*(a1 + 248), v74);
          strcat(*(a1 + 256), v76);
          v87 = strlen(v65);
          if (Utf8_LengthInUtf8chars(v65, v87) != 1)
          {
            v88 = 0;
            do
            {
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              ++v88;
              v89 = strlen(v65);
            }

            while ((Utf8_LengthInUtf8chars(v65, v89) - 1) > v88);
          }

          *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
          *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
          *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
        }

        v27 = v113;
        v10 = a2;
        a5 = v110;
        v12 = hlp_MdeRecurse_0(a1, a2, a3, v113, v110, v108);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_137;
        }

        if (!*v110)
        {
          v90 = Utf8_LengthInUtf8chars(*(a1 + 240), v85);
          *(*(a1 + 240) + v85) = 0;
          *(*(a1 + 248) + v90) = 0;
          *(*(a1 + 256) + v90) = 0;
        }

LABEL_122:
        if (++v64 >= *&__c[1])
        {
          goto LABEL_76;
        }
      }

      v72 = 0;
LABEL_92:
      v74 = 0;
LABEL_93:
      v76 = 0;
LABEL_94:
      v79 = 0;
      goto LABEL_95;
    }
  }

LABEL_137:
  v98 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t hlp_Realloc_0(uint64_t *a1, unsigned int a2)
{
  if (a2 < 0x81)
  {
    return 0;
  }

  v3 = a2;
  v4 = heap_Realloc(*(*a1 + 8), a1[30], a2);
  if (v4 && (a1[30] = v4, (v9 = heap_Realloc(*(*a1 + 8), a1[31], v3)) != 0) && (a1[31] = v9, (v10 = heap_Realloc(*(*a1 + 8), a1[32], v3)) != 0))
  {
    v11 = 0;
    a1[32] = v10;
  }

  else
  {
    v11 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v5, v6, v7, v8, v13);
  }

  return v11;
}

char *oneword_FindPhonWordSep(char *a1, char *a2)
{
  *a2 = 0;
  result = strchr(a1, 95);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    result = strstr(a1, "-*");
    if (!result)
    {
      return result;
    }

    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t oneword_CountPhoneticWords(char *a1, char *a2)
{
  v4 = strchr(a1, 18);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  if (v5 - a1 >= 2 && *(v5 - 1) == 35)
  {
    --v5;
  }

  if (v5 <= a1)
  {
    return 1;
  }

  else
  {
    v6 = v5 - a1;
    v7 = (a1 + 1);
    v8 = 1;
    do
    {
      v9 = *(v7 - 1);
      v10 = 1;
      if (v9 != 35 && v9 != 95)
      {
        v10 = v9 == 45 && *v7 == 42;
      }

      v8 += v10;
      ++v7;
      --v6;
    }

    while (v6);
  }

  return v8;
}

size_t oneword_FindNextWord(size_t result, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v7 = a3;
  v8 = *a4;
  if (*a4 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v10 = result;
    do
    {
      result = utf8_BelongsToSet(a2, v10, v8, v7);
      if (!result)
      {
        break;
      }

      result = utf8_GetNextUtf8Offset(v10, v8);
      v8 = result;
    }

    while (result < v7);
    if (v8 >= v7)
    {
      v7 = v8;
    }

    else
    {
      v11 = v8;
      do
      {
        result = utf8_BelongsToSet(a2, v10, v11, v7);
        if (result)
        {
          break;
        }

        result = utf8_GetNextUtf8Offset(v10, v11);
        v11 = result;
      }

      while (result < v7);
      v7 = v11;
    }
  }

  *a4 = v8;
  *a5 = v7;
  return result;
}

uint64_t oneword_CountOrthographicWords(char *a1, int a2, unsigned int a3, unsigned int a4)
{
  v7 = a2 - a1;
    ;
  }

  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a1, v7);
  if (v7)
  {
    v10 = PreviousUtf8Offset;
    v11 = v7;
    if (utf8_BelongsToSet(a3, a1, PreviousUtf8Offset, v7))
    {
      do
      {
        v11 = v10;
        v12 = utf8_GetPreviousUtf8Offset(a1, v10);
        if (!v10)
        {
          break;
        }

        v10 = v12;
      }

      while (utf8_BelongsToSet(a3, a1, v12, v7));
    }
  }

  else
  {
    v11 = 0;
  }

  for (j = 1; i < v11; i = utf8_GetNextUtf8Offset(a1, i))
  {
    if (!a1[i])
    {
      break;
    }

    if (utf8_BelongsToSet(a4, a1, i, v7))
    {
      ++j;
      for (; i < v11; i = utf8_GetNextUtf8Offset(a1, i))
      {
        if (!utf8_BelongsToSet(a4, a1, i, v7))
        {
          break;
        }
      }
    }
  }

  return j;
}

uint64_t oneword_ReplaceCharactersInOrthography(uint64_t result, int a2, unsigned int a3, char a4, _WORD *a5)
{
  if (a5 && *a5)
  {
    v8 = result;
    v9 = a2 - result;
    result = utf8_BelongsToSet(a3, result, 0, a2 - result);
    if (result)
    {
      NextUtf8Offset = 0;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(v8, NextUtf8Offset);
        result = utf8_BelongsToSet(a3, v8, NextUtf8Offset, v9);
      }

      while (result);
    }

    if (*a5)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = 0;
      do
      {
        if (utf8_BelongsToSet(a3, v8, v12, v9))
        {
          v8[v12] = a4;
          --*a5;
        }

        result = utf8_GetNextUtf8Offset(v8, v12);
        v12 = result;
        if (*a5)
        {
          v13 = result >= v9;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return result;
}

uint64_t getDepesLayersForWordAndPOS(uint64_t a1, uint64_t a2, char *__s, char *a4)
{
  v8 = strlen(__s);
  v9 = Utf8_LengthInUtf8chars(__s, v8);
  v10 = (a1 + 160);
  **(a1 + 160) = 0;
  v11 = (a1 + 168);
  **(a1 + 168) = 0;
  **(a1 + 176) = 0;
  __s1 = __s;
  v12 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
  v13 = v12;
  if ((v12 & 0x80000000) == 0)
  {
    if (a4)
    {
      v59 = v12;
      v60 = a1;
      v14 = strlen(a4);
      Utf8_LengthInUtf8chars(a4, v14);
      v15 = strstr(__s, "║");
      v16 = strchr(a4, 43);
      v17 = v15 != 0;
      v18 = v16 != 0;
      __sa = a4;
      if (v15 | v16)
      {
        v19 = 0;
        v20 = 0;
        v21 = a4;
        v22 = __s1;
        v23 = __s1;
        while (1)
        {
          v24 = v22;
          if (v17)
          {
            v25 = v15 - v22;
          }

          else
          {
            v25 = 0;
          }

          if (v18)
          {
            v26 = v16 - v21;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          v28 = v25;
          if (!v25 || !v26)
          {
            if (!v25 || v26)
            {
              if (!v25 && v26)
              {
                v68 = v16;
                v63 = v19;
                strncat(*v11, &__sa[v20], v26);
                v37 = 0;
                *&(*v11)[strlen(*v11)] = 32;
                v38 = v20 + 1;
                do
                {
                  *&(*v10)[strlen(*v10)] = 126;
                  ++v37;
                }

                while (v27 > v37);
                v20 = (v38 + v27);
                *&(*v10)[strlen(*v10)] = 32;
                v16 = strchr(v68 + 1, 43);
                v23 = __s1;
                v19 = v63;
              }
            }

            else
            {
              v67 = v16;
              v64 = v20;
              strncat(*v10, &v23[v19], v25);
              v33 = strlen(*v10);
              v34 = v19;
              v35 = 0;
              *&(*v10)[v33] = 32;
              v36 = v34 + 3;
              do
              {
                *&(*v11)[strlen(*v11)] = 126;
                ++v35;
              }

              while (v28 > v35);
              v19 = (v36 + v28);
              *&(*v11)[strlen(*v11)] = 32;
              v15 = strstr(v15 + 3, "║");
              v20 = v64;
              v23 = __s1;
              v16 = v67;
            }

            v22 = v24;
            goto LABEL_35;
          }

          v66 = v16;
          v29 = v25 - v26;
          v62 = v19;
          if (v25 <= v26)
          {
            v39 = v23;
            strncat(*v11, &__sa[v20], v26);
            *&(*v11)[strlen(*v11)] = 32;
            v30 = v39;
            strncat(*v10, &v39[v19], v28);
            v31 = v10;
            if (v27 - v28 >= 1)
            {
              v40 = 0;
              do
              {
                *&(*v10)[strlen(*v10)] = 126;
                ++v40;
              }

              while (v27 - v28 > v40);
              v31 = v10;
              goto LABEL_33;
            }
          }

          else
          {
            v30 = v23;
            strncat(*v10, &v23[v19], v25);
            *&(*v10)[strlen(*v10)] = 32;
            strncat(*v11, &__sa[v20], v27);
            v31 = v11;
            if (v29 >= 1)
            {
              v32 = 0;
              do
              {
                *&(*v11)[strlen(*v11)] = 126;
                ++v32;
              }

              while (v29 > v32);
              v31 = v11;
LABEL_33:
              v30 = __s1;
            }
          }

          *&(*v31)[strlen(*v31)] = 32;
          v19 = (v62 + v28 + 3);
          v20 = (v20 + v27 + 1);
          v22 = v15 + 3;
          v21 = v66 + 1;
          v15 = strstr(v15 + 3, "║");
          v16 = strchr(v66 + 1, 43);
          v23 = v30;
LABEL_35:
          v17 = v15 != 0;
          v18 = v16 != 0;
          if (!(v15 | v16))
          {
            goto LABEL_47;
          }
        }
      }

      LOWORD(v20) = 0;
      LOWORD(v19) = 0;
      v23 = __s1;
LABEL_47:
      v47 = v23;
      v48 = strlen(v23);
      v49 = strlen(__sa);
      if (v48 > v19)
      {
        strcat(*v10, &v47[v19]);
      }

      v13 = v59;
      if (v49 > v20)
      {
        strcat(*v11, &__sa[v20]);
      }

      v50 = strlen(*v10);
      v51 = strlen(*v11);
      v52 = v51;
      if (v50 <= v51)
      {
        for (i = v51; i > v50; ++v50)
        {
          *&(*v10)[strlen(*v10)] = 126;
        }
      }

      else
      {
        do
        {
          *&(*v11)[strlen(*v11)] = 126;
          ++v52;
        }

        while (v50 > v52);
      }

      v54 = strlen(*v10);
      if (v54)
      {
        for (j = 0; j != v54; ++j)
        {
          v56 = strlen(*(v60 + 176));
          if (*(*(v60 + 160) + j) == 32)
          {
            v57 = 32;
          }

          else
          {
            v57 = 126;
          }

          *(*(v60 + 176) + v56) = v57;
        }
      }
    }

    else if (v9)
    {
      v41 = 0;
      do
      {
        v42 = &__s[v41];
        v43 = *v42;
        if (v43 == 226 && v42[1] == 149 && v42[2] == 145)
        {
          *(*(a1 + 160) + strlen(*(a1 + 160))) = 32;
          *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
          *(*(a1 + 176) + strlen(*(a1 + 176))) = 32;
          v44 = 3;
        }

        else
        {
          v45 = *(a1 + 160);
          v46 = utf8_determineUTF8CharLength(v43);
          strncat(v45, v42, v46);
          *(*(a1 + 168) + strlen(*(a1 + 168))) = 126;
          *(*(a1 + 176) + strlen(*(a1 + 176))) = 126;
          v44 = utf8_determineUTF8CharLength(*v42);
        }

        v41 += v44;
      }

      while (v41 < v9);
    }
  }

  return v13;
}

uint64_t oneword_SkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, unsigned __int16 a9)
{
  v50 = a6;
  v49 = a7;
  v46 = 17;
  v47 = 9;
  v44 = 0;
  __s = 0;
  v42 = 0;
  v43 = 0;
  v15 = heap_Calloc(*(*a1 + 8), 1, (2 * a5) | 1);
  if (v15)
  {
    v20 = v15;
    if (a5 >= 2)
    {
      v21 = a5 - 1;
      do
      {
        strcat(v15, "*.");
        --v21;
      }

      while (v21);
    }

    v48 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v36 = 0;
    *&v15[strlen(v15)] = 42;
    v22 = (*(*(a1 + 56) + 168))(a2, a3, a9, 0, 1, &v48, &v41 + 2);
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(a1 + 56);
      v22 = v48 > 1 ? (*(v23 + 88))(a2, a3, a9, &v37 + 2) : (*(v23 + 80))(a2, a3, a9, &v37 + 2);
      if ((v22 & 0x80000000) == 0)
      {
        v48 = 9;
        v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 0, 1, &v48, &v41);
        if ((v22 & 0x80000000) == 0)
        {
          v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 1, 1, &v50, &v41);
          if ((v22 & 0x80000000) == 0)
          {
            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 2, 1, &v49, &v41);
            if ((v22 & 0x80000000) == 0)
            {
              v25 = strlen(v20);
              v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 3, (v25 + 1), v20, &v41);
              if ((v22 & 0x80000000) == 0)
              {
                v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 5, 1, "*", &v41);
                if ((v22 & 0x80000000) == 0)
                {
                  v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 6, 1, "*", &v41);
                  if ((v22 & 0x80000000) == 0)
                  {
                    if (strcmp(a4, "latin") || (v35 = 1, v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 7, 1, &v35, &v41), (v22 & 0x80000000) == 0))
                    {
                      v24 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 9, 7, "normal", &v41);
                      if ((v24 & 0x80000000) != 0)
                      {
                        goto LABEL_60;
                      }

                      LOWORD(v38) = a8;
                      if (HIWORD(v37) == a8)
                      {
                        goto LABEL_60;
                      }

                      v26 = 0;
                      while (1)
                      {
                        v22 = (*(*(a1 + 56) + 168))(a2, a3, a8, 0, 1, &v48, &v41 + 2);
                        if ((v22 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v22 = (*(*(a1 + 56) + 168))(a2, a3, v38, 1, 1, &v40, &v41 + 2);
                        if ((v22 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v22 = (*(*(a1 + 56) + 168))(a2, a3, v38, 2, 1, &v39 + 2, &v41 + 2);
                        if ((v22 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v48 <= 1)
                        {
                          v22 = (*(*(a1 + 56) + 136))(a2, a3, v38, &v36);
LABEL_27:
                          if ((v22 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v27 = v36;
                          while (v27 != v26)
                          {
                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v27, 0, 1, &v47, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v36, 1, 1, &v39, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v36, 2, 1, &v38 + 2, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            if (v47 != 4 || v39 != v40 || HIWORD(v38) != HIWORD(v39))
                            {
                              v22 = (*(*(a1 + 56) + 136))(a2, a3, v36, &v36);
                              goto LABEL_27;
                            }

                            v22 = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v37), &v37 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v36, 3, &__s, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v36, 5, &v42, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v36, 7, 1, &v40 + 2, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v36, 6, &v44, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v36, 9, &v43, &v41 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 0, 1, &v46, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            LOWORD(v39) = v39 + *(a1 + 224);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 1, 1, &v39, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            HIWORD(v38) += *(a1 + 224);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 2, 1, &v38 + 2, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v28 = strlen(__s);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 3, (v28 + 1), __s, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v29 = strlen(a4);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 4, (v29 + 1), a4, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v30 = strlen(v42);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 5, (v30 + 1), v42, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v31 = strlen(v44);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 6, (v31 + 1), v44, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 7, 1, &v40 + 2, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v32 = strlen(v43);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v37), 9, (v32 + 1), v43, &v41);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 136))(a2, a3, v36, &v37);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 192))(a2, a3, v36);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v27 = v37;
                            v36 = v37;
                          }

                          v26 = v38;
                        }

                        v24 = (*(*(a1 + 56) + 120))(a2, a3);
                        if ((v24 & 0x80000000) == 0)
                        {
                          LOWORD(a8) = v38;
                          if (v38 != HIWORD(v37))
                          {
                            continue;
                          }
                        }

                        goto LABEL_60;
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

LABEL_59:
    v24 = v22;
LABEL_60:
    heap_Free(*(*a1 + 8), v20);
    return v24;
  }

  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v16, v17, v18, v19, v34);
  return 2310021130;
}

uint64_t hlp_RemoveMNCRecords(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = heap_Calloc(*(*a1 + 8), 1, 129);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v15, v16, v17, v18, v27);
    return 2310021130;
  }

  v19 = v14;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v20 = (*(a1[7] + 120))(a2, a3, a5, &v32);
  if ((v20 & 0x80000000) == 0)
  {
    v20 = (*(a1[7] + 168))(a2, a3, a5, 1, 1, &v29, &v30 + 2);
    if ((v20 & 0x80000000) == 0)
    {
      v21 = (*(a1[7] + 168))(a2, a3, a6, 2, 1, &v28, &v30 + 2);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      v22 = v32;
      if (!v32)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v20 = (*(a1[7] + 168))(a2, a3, v22, 0, 1, &v31, &v30 + 2);
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        if (v31 == 4)
        {
          v20 = (*(a1[7] + 168))(a2, a3, v32, 1, 1, &v30, &v30 + 2);
          if ((v20 & 0x80000000) != 0)
          {
            break;
          }

          v21 = (*(a1[7] + 168))(a2, a3, v32, 2, 1, &v29 + 2, &v30 + 2);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          if (v30 > ~a7)
          {
            v23 = HIWORD(v29) - v30;
            if (v23 <= 127)
            {
              strncpy(v19, (*a4 + v30 + a7), v23);
              v24 = HIWORD(v29);
              v25 = v30;
              v19[HIWORD(v29) - v30] = 0;
              if (v25 < v29 || v24 > v28 || strlen(v19) < 2 || !strchr(v19, 95))
              {
                goto LABEL_22;
              }

              v20 = (*(a1[7] + 192))(a2, a3, v32);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v32 = a5;
            }
          }
        }

        LOWORD(a5) = v32;
        v21 = (*(a1[7] + 120))(a2, a3, v32, &v32);
        if ((v21 & 0x80000000) == 0)
        {
          v22 = v32;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }
  }

  v21 = v20;
LABEL_22:
  heap_Free(*(*a1 + 8), v19);
  return v21;
}

uint64_t oneword_TranscribeAcronym(uint64_t a1, char *a2, const char *a3, unsigned __int8 *a4, char *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  __c_1 = 0;
  strcpy(__s, "one_word");
  v9 = strlen(__s);
  v10 = strlen(a3);
  v11 = heap_Alloc(*(*a1 + 8), (v10 + 1));
  if (v11)
  {
    v16 = v11;
    __c_3 = 0;
    *v94 = 0;
    v93 = 0;
    strcpy(v11, a3);
    v83 = a4;
    if (*(a1 + 560) == 1)
    {
      v17 = strchr(a2, 95);
      if (v17)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = a2;
      }

      v86 = v18;
      v19 = *v18;
    }

    else
    {
      v86 = 0;
      v19 = 32;
    }

    v85 = v19;
    v21 = 0;
    v22 = 0;
    __c = 0;
    v23 = v9;
    v24 = 0;
    v84 = v23;
    v87 = v23 + 2;
    v91 = 32;
    v88 = v16;
    while (1)
    {
      v25 = v16[v24];
      if (v25 < -64)
      {
        goto LABEL_13;
      }

      if (!(*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &v16[v24]))
      {
        break;
      }

LABEL_17:
      v89 = v24;
      if (v22 == v21)
      {
        goto LABEL_89;
      }

      **(a1 + 160) = 0;
      if (!dynamic_strncat((a1 + 160), &v16[v21], v22 - v21, (a1 + 192), *(*a1 + 8)))
      {
        v20 = 2310021130;
        goto LABEL_96;
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", v29, v30, v31, *(a1 + 160));
      __c_1 = 0;
      if (*(a1 + 1224))
      {
        v92 = 7352935;
        v32 = 3 * **(a1 + 160);
        __strcat_chk();
        v33 = (*(*(a1 + 80) + 232))(*(a1 + 64), *(a1 + 72), &v92, *(a1 + 160), &__c_3, &__c_1, &__c, 0);
      }

      else
      {
        LODWORD(v81) = 0;
        v33 = (*(*(a1 + 80) + 240))(*(a1 + 64), *(a1 + 72), "g2p", *(a1 + 160), &__c_3, &__c_1, &__c, *(a1 + 556));
      }

      v20 = v33;
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_95;
      }

      if (!__c_1)
      {
        v91 = 32;
LABEL_74:
        v82 = *(a1 + 160);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v34, v35, v36, __s);
        v71 = strlen(*(a1 + 160));
        appended = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v71);
        if ((appended & 0x80000000) == 0)
        {
          if (strcmp(a2, "normal") && v87 + strlen(a2) <= 0x7F)
          {
            __strcat_chk();
            __strcat_chk();
          }

          if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) == 0)
          {
            if (*(a1 + 560))
            {
              v73 = v86;
              v74 = v85;
              if (!v86)
              {
LABEL_86:
                appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v94, &v93);
                if ((appended & 0x80000000) == 0)
                {
                  *(*v94 + v93) = 0;
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v75, v76, v77, __s);
                  v70 = *v94;
                  v68 = v91;
                  v69 = a1;
LABEL_88:
                  appended = oneword_AppendPhon(v69, v70, "*", "*", v68, 1);
                  if ((appended & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }
                }

                goto LABEL_94;
              }
            }

            else
            {
              v74 = *a2;
              v73 = a2;
            }

            strncpy(a5, v73, 0x14uLL);
            v91 = v74;
            goto LABEL_86;
          }

          __s[v84] = 0;
          appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
          if ((appended & 0x80000000) == 0)
          {
            goto LABEL_86;
          }
        }

LABEL_94:
        v20 = appended;
LABEL_95:
        heap_Free(*(*a1 + 8), v16);
        goto LABEL_96;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      v91 = 32;
      do
      {
        v40 = *(__c_3 + 8 * v37);
        v41 = strchr(v40, __c);
        if (!v41)
        {
          v47 = 0;
LABEL_37:
          v51 = 0;
LABEL_38:
          v54 = 0;
          goto LABEL_39;
        }

        *v41 = 0;
        v46 = strchr(v41 + 1, __c);
        v47 = v46;
        if (!v46)
        {
          goto LABEL_37;
        }

        *v46 = 0;
        v47 = v46 + 1;
        v48 = strchr(v46 + 1, __c);
        if (!v48)
        {
          goto LABEL_37;
        }

        *v48 = 0;
        v49 = strchr(v48 + 1, __c);
        if (!v49)
        {
          goto LABEL_37;
        }

        *v49 = 0;
        v50 = strchr(v49 + 1, __c);
        v51 = v50;
        if (!v50)
        {
          goto LABEL_38;
        }

        *v50 = 0;
        v51 = v50 + 1;
        v52 = strchr(v50 + 1, __c);
        if (!v52)
        {
          goto LABEL_38;
        }

        *v52 = 0;
        v53 = strchr(v52 + 1, __c);
        v54 = v53;
        if (v53)
        {
          *v53 = 0;
          v54 = v53 + 1;
          v55 = strchr(v53 + 1, __c);
          if (v55)
          {
            *v55 = 0;
          }
        }

LABEL_39:
        if (!v40)
        {
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0, v42, v43, v44, v45, v81);
          heap_Free(*(*a1 + 8), v88);
          v20 = 2310021127;
          goto LABEL_96;
        }

        oneword_ReplaceUnderscoreWithDot(v40);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v56, v57, v58, v40);
        if (v47 && *v47 && !strstr(v47, a2))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK", v34, v35, v36, v81);
        }

        else if (v54 && *(a1 + 1204) && ((v59 = strstr(a2, v54)) == 0 || (v60 = v59, (v61 = strlen(v54)) != 0) && v60[v61]) && ((v62 = strstr(*(a1 + 1216), a2), LH_stricmp(v54, *(a1 + 1208))) || !v62 || v62[strlen(a2)] != 124))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK", v34, v35, v36, v54);
        }

        else
        {
          if (v51 && *v51)
          {
            v63 = atoi(v51);
          }

          else
          {
            v63 = 1;
          }

          v64 = (v63 - 1);
          if (v64 < v38)
          {
            v65 = v38;
          }

          else
          {
            v39 = v40;
            v65 = v63;
          }

          if (v54)
          {
            v66 = v64 >= v38;
            v38 = v65;
            if (v66)
            {
              v91 = *v54;
              strncpy(a5, v54, 0x14uLL);
              v39 = v40;
              v38 = v63;
            }
          }

          else
          {
            v38 = v65;
          }
        }

        ++v37;
      }

      while (v37 < __c_1);
      if (!v39)
      {
        v16 = v88;
        goto LABEL_74;
      }

      v67 = strchr(v39, 18);
      v16 = v88;
      if (v67)
      {
        *v67 = 0;
      }

      if (*v39 != 95 || v39[1])
      {
        v68 = v91;
        v69 = a1;
        v70 = v39;
        goto LABEL_88;
      }

LABEL_89:
      v98[0] = v16[v89];
      v98[1] = 0;
      appended = oneword_AppendPhon(a1, v98, "", "", 32, 0);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      v21 = ++v22;
LABEL_91:
      v24 = v22;
      if (strlen(v16) < v22)
      {
        heap_Free(*(*a1 + 8), v16);
        v20 = 0;
        *v83 = v91;
        goto LABEL_96;
      }
    }

    LOBYTE(v25) = v16[v24];
LABEL_13:
    v26 = v25;
    v27 = (1 << v25) & 0x100002601;
    v28 = v26 > 0x20 || v27 == 0;
    if (v28 && v26 != 95)
    {
      ++v22;
      goto LABEL_91;
    }

    goto LABEL_17;
  }

  v20 = 2310021130;
  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v12, v13, v14, v15, v80);
LABEL_96:
  v78 = *MEMORY[0x1E69E9840];
  return v20;
}

size_t oneword_ReplaceUnderscoreWithDot(const char *a1)
{
  v1 = a1;
  result = strlen(a1);
  v3 = result;
  if (result)
  {
    do
    {
      if (*v1 == 95)
      {
        *v1 = 46;
      }

      ++v1;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t oneword_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 32;
  }

  __s2[0] = v11;
  __s2[1] = 0;
  if (strlen(__s) >= 2)
  {
    if (!a6 && strchr(__s, 32))
    {
      if (strlen(a4) <= 1)
      {
        goto LABEL_14;
      }

LABEL_12:
      if (strchr(a4, 32))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    __s[1] = 0;
  }

  if (strlen(a4) <= 1)
  {
    goto LABEL_14;
  }

  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_13:
  *(a4 + 1) = 0;
LABEL_14:
  if (!*a2)
  {
    return 0;
  }

  v12 = strlen(*(a1 + 240));
  v13 = strlen(a2);
  v14 = v12 + 7;
  if (!a6)
  {
    v14 = v12 + 1;
  }

  v15 = v14 + v13;
  if ((v14 + v13) >= 0x81u)
  {
    v16 = heap_Realloc(*(*a1 + 8), *(a1 + 240), (v14 + v13));
    if (!v16 || (*(a1 + 240) = v16, (v21 = heap_Realloc(*(*a1 + 8), *(a1 + 248), v15)) == 0) || (*(a1 + 248) = v21, (v22 = heap_Realloc(*(*a1 + 8), *(a1 + 256), v15)) == 0) || (*(a1 + 256) = v22, (v23 = heap_Realloc(*(*a1 + 8), *(a1 + 264), v15)) == 0))
    {
      a6 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v17, v18, v19, v20, v46);
      return a6;
    }

    *(a1 + 264) = v23;
  }

  if (a6)
  {
    *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
    *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
    *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
    *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
  }

  v24 = strstr(a2, "◄");
  if (strchr(__s, 32) || !v24)
  {
    strcat(*(a1 + 240), a2);
    strcat(*(a1 + 248), __s);
    strcat(*(a1 + 256), a4);
    strcat(*(a1 + 264), __s2);
    v40 = strlen(a2);
    v41 = Utf8_LengthInUtf8chars(a2, v40);
    if (v41 > strlen(__s))
    {
      v42 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 126;
        ++v42;
      }

      while ((v41 - strlen(__s)) > v42);
    }

    if (v41 > strlen(a4))
    {
      v43 = 0;
      do
      {
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 126;
        ++v43;
      }

      while ((v41 - strlen(a4)) > v43);
    }

    if (v41 > strlen(__s2))
    {
      v44 = 0;
      do
      {
        strcat(*(a1 + 264), __s2);
        ++v44;
      }

      while ((v41 - strlen(__s2)) > v44);
    }
  }

  else
  {
    v25 = strstr(v24 + 3, "◄");
    if (!v25)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0, v26, v27, v28, v29, v46);
      return 2310021127;
    }

    v47 = v25;
    strncat(*(a1 + 240), a2, (v24 - a2 + 3));
    if (Utf8_LengthInUtf8chars(a2, v24 - a2 + 3))
    {
      v30 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
        *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
        ++v30;
      }

      while (Utf8_LengthInUtf8chars(a2, v24 - a2 + 3) > v30);
    }

    strncat(*(a1 + 240), v24 + 3, (v47 - v24 - 3));
    strcat(*(a1 + 248), __s);
    strcat(*(a1 + 256), a4);
    strcat(*(a1 + 264), __s2);
    v31 = Utf8_LengthInUtf8chars(v24, v47 - v24) - 1;
    if (v31 > strlen(__s))
    {
      v32 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 126;
        ++v32;
      }

      while (v31 - strlen(__s) > v32);
    }

    if (v31 > strlen(a4))
    {
      v33 = 0;
      do
      {
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 126;
        ++v33;
      }

      while (v31 - strlen(a4) > v33);
    }

    if (v31 > strlen(__s2))
    {
      v34 = 0;
      do
      {
        strcat(*(a1 + 264), __s2);
        ++v34;
      }

      while (v31 - strlen(__s2) > v34);
    }

    strcat(*(a1 + 240), v47);
    v35 = strlen(a2);
    v36 = Utf8_LengthInUtf8chars(a2, v35) << 16;
    if (v36 > (Utf8_LengthInUtf8chars(a2, v47 - a2) << 16))
    {
      v37 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
        *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
        ++v37;
        v38 = strlen(a2);
        v39 = Utf8_LengthInUtf8chars(a2, v38);
      }

      while (v39 - Utf8_LengthInUtf8chars(a2, v47 - a2) > v37);
    }
  }

  if (a6)
  {
    *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
    *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
    *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
    a6 = 0;
    *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
  }

  return a6;
}

uint64_t oneword_ConvertPhon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, int a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v13;
  v22 = v21;
  v23 = v12;
  v137 = *MEMORY[0x1E69E9840];
  v134 = v24;
  v25 = *v14;
  v133 = *v14;
  v132 = 0;
  v130 = 0;
  v129 = 1;
  v128 = 0;
  v126 = 200;
  v124 = 0;
  v122 = 0;
  __dst[0] = 0;
  v26 = *a10;
  if (v26 < *a11)
  {
    v27 = (a9 + 32 * v26 + 12);
    do
    {
      if (*v27 - a12 >= v13)
      {
        break;
      }

      *v27 += *(v12 + 224);
      v27 += 8;
      *a10 = ++v26;
    }

    while (v26 < *a11);
  }

  v131 = 0;
  __s = 0;
  v123 = 0;
  v28 = 0;
  if (v25)
  {
    while (!v28 || SHIWORD(v130) < v20)
    {
      v29 = (*(*(v23 + 56) + 168))(v19, v17, v25, 0, 1, &v132, &v131 + 2);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_81;
      }

      if (v132 > 3)
      {
        v30 = 0;
        if (v132 == 5)
        {
          v28 = v133;
        }
      }

      else
      {
        v29 = (*(*(v23 + 56) + 168))(v19, v17, v133, 2, 1, &v130 + 2, &v131 + 2);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_81;
        }

        v30 = v133;
      }

      v29 = (*(*(v23 + 56) + 120))(v19, v17);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_81;
      }

      if (v30)
      {
        v29 = (*(*(v23 + 56) + 192))(v19, v17, v30);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_81;
        }

        v25 = v133;
        if (*(v23 + 280) == v30)
        {
          *(v23 + 280) = v133;
        }

        if (!v25)
        {
          break;
        }
      }

      else
      {
        LOWORD(v25) = v133;
        if (!v133)
        {
          break;
        }
      }
    }
  }

  v29 = (*(*(v23 + 56) + 176))(v19, v17, v28, 3, &__s, &v131 + 2);
  if ((v29 & 0x80000000) != 0 || (v123 = 0, ((*(*(v23 + 56) + 184))(v19, v17, v28, 9, &v123) & 0x80000000) == 0) && v123 == 1 && (v29 = (*(*(v23 + 56) + 176))(v19, v17, v28, 9, &v122, &v131 + 2), (v29 & 0x80000000) != 0))
  {
LABEL_81:
    v48 = v29;
    goto LABEL_82;
  }

  strcpy(v135, "EXTMRKP");
  v31 = strchr(__s, 20);
  if (v31)
  {
    *v31 = 0;
    v32 = v31 + 1;
    v33 = strchr(v31 + 1, 20);
    v34 = v33;
    if (v33)
    {
      *v33 = 0;
      v34 = v33 + 1;
      if (strlen(v33 + 1) != 3)
      {
        v34 = 0;
      }
    }

    v35 = strlen(v32);
    v118 = v34;
    if (v35 && v35 + 1 <= 0x14)
    {
      __strcpy_chk();
    }
  }

  else
  {
    v118 = 0;
  }

  v36 = __s;
  if (*__s == 32)
  {
    v37 = __s + 1;
    do
    {
      __s = v37;
      v38 = *v37++;
    }

    while (v38 == 32);
    v36 = v37 - 1;
  }

  v39 = strchr(v36, 18);
  if (v39)
  {
    *v39 = 0;
    __s1 = v39 + 1;
    v36 = __s;
  }

  else
  {
    __s1 = 0;
  }

  if (strlen(v36) < 5)
  {
    goto LABEL_50;
  }

  v40 = *v36;
  if (v40 == 92)
  {
    if (v36[1] == 84)
    {
      *&__c[3] = 0;
      *&__c[1] = -1;
      __c[0] = 0;
      strcpy(v136, "lngphon_e");
      v136[8] = v36[2];
      v29 = (*(*(v23 + 80) + 96))(*(v23 + 64), *(v23 + 72), "fecfg", v136, &__c[3], &__c[1], __c);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_81;
      }

      if (*&__c[1])
      {
        v41 = **&__c[3];
        v42 = strchr(**&__c[3], __c[0]);
        if (v42)
        {
          *v42 = 0;
          v41 = **&__c[3];
        }

        strncpy(__dst, v41, 3uLL);
      }

      v36 = __s + 4;
      __s += 4;
    }

LABEL_50:
    v40 = *v36;
  }

  if (v40 == 35)
  {
    *&__c[3] = v28;
    v43 = v28 != 0;
    v44 = v132;
    if (!v28 || v132 == 4)
    {
      LOWORD(v45) = v28;
    }

    else
    {
      LOWORD(v45) = v28;
      if (v132 - 11 <= 0xFFFFFFFD)
      {
        LOWORD(v45) = v28;
        while (1)
        {
          v29 = (*(*(v23 + 56) + 136))(v19, v17, v45, &__c[3]);
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_81;
          }

          if (*&__c[3])
          {
            v29 = (*(*(v23 + 56) + 168))(v19, v17);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_81;
            }

            v45 = *&__c[3];
          }

          else
          {
            v45 = 0;
          }

          v43 = v45 != 0;
          v44 = v132;
          if (v45)
          {
            if (v132 != 4 && v132 - 11 < 0xFFFFFFFE)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    if (v43)
    {
      *&__c[1] = v45;
      *v136 = v44;
      v29 = (*(*(v23 + 56) + 160))(v19, v17, v45, 8, 1, &v126, &v131);
      if ((v29 & 0x80000000) == 0)
      {
        while (1)
        {
          v29 = (*(*(v23 + 56) + 120))(v19, v17, *&__c[1], &__c[1]);
          if ((v29 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_83;
          }

          v29 = (*(*(v23 + 56) + 168))(v19, v17);
          if ((v29 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_83;
          }

          if (*&__c[1] == v28 || *v136 != 8)
          {
            goto LABEL_83;
          }

          v29 = (*(*(v23 + 56) + 160))(v19, v17);
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_81;
    }

LABEL_83:
    v36 = __s;
    if (*__s == 35)
    {
      v51 = __s + 1;
      do
      {
        __s = v51;
        v52 = *v51++;
      }

      while (v52 == 35);
      v36 = v51 - 1;
    }
  }

  v132 = 10;
  LOWORD(v53) = v134;
  while (1)
  {
    v54 = *(v22 + v53);
    v55 = v54 > 0x20 || ((1 << v54) & 0x100002600) == 0;
    if (v55 && v54 != 95)
    {
      break;
    }

    LOWORD(v53) = v53 + 1;
    v134 = v53;
  }

  if (v20 <= v53)
  {
    v116 = 0;
    v120 = 0;
LABEL_203:
    v48 = (*(*(v23 + 56) + 120))(v19, v17, v130, v15);
    if ((v48 & 0x80000000) == 0 && v116 && v124 >= 2u)
    {
      v63 = (*(*(v23 + 56) + 160))(v19, v17, v116, 7, 1, &v124, &v131);
      goto LABEL_207;
    }

    goto LABEL_208;
  }

  v120 = 0;
  v116 = 0;
  v56 = 0;
  v57 = v20;
  v114 = v28;
  v115 = v15;
  while (2)
  {
    v58 = v53;
    if (v20 <= (v53 + 1))
    {
      v59 = v53 + 1;
    }

    else
    {
      v59 = v20;
    }

    while (1)
    {
      v60 = *(v22 + v58);
      v61 = v60 > 0x20 || ((1 << v60) & 0x100002600) == 0;
      if (!v61 || v60 == 95)
      {
        break;
      }

      if (++v58 >= v57)
      {
        goto LABEL_108;
      }
    }

    v59 = v58;
LABEL_108:
    HIWORD(v130) = v59;
    v62 = *(v23 + 56);
    v117 = v56;
    if (v56)
    {
      v63 = (*(v62 + 80))(v19, v17, v130, &v130);
    }

    else
    {
      v63 = (*(v62 + 88))(v19, v17, v28, &v130);
    }

    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 0, 1, &v132, &v131);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 1, 1, &v134, &v131);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 2, 1, &v130 + 2, &v131);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    if (v122)
    {
      v64 = strlen(v122);
      v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 9, (v64 + 1), v122, &v131);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }
    }

    v65 = strlen(v135);
    v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 21, (v65 + 1), v135, &v131);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    if (v118)
    {
      v66 = strlen(v118);
      v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 12, (v66 + 1), v118, &v131);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }
    }

    ++v124;
    for (i = v36 + 1; ; ++i)
    {
      v68 = *v36;
      if (v68 > 0x22)
      {
        break;
      }

      if (!*v36 || v68 == 32)
      {
        goto LABEL_132;
      }

LABEL_127:
      ++v36;
    }

    if (v68 == 35)
    {
      goto LABEL_132;
    }

    if (v68 != 95)
    {
      goto LABEL_127;
    }

    if (v36[1] == 95)
    {
      v69 = 2;
    }

    else
    {
      v69 = 1;
    }

    v128 = v69;
LABEL_132:
    *v36 = 0;
    if (!*__s)
    {
      v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 3, 1, "", &v131);
      if ((v63 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_207;
    }

    v70 = (2 * (strlen(__s) & 0x7FFFFFFF)) | 1;
    v71 = heap_Realloc(*(*v23 + 8), v120, v70);
    if (!v71)
    {
      v48 = 2310021130;
      log_OutPublic(*(*v23 + 32), "FE_ONEWORD", 34000, 0, v72, v73, v74, v75, v112);
      v104 = v120;
      goto LABEL_209;
    }

    if (!*(v23 + 580))
    {
      v80 = strcpy(v71, __s);
      goto LABEL_146;
    }

    v120 = v71;
    *&__c[3] = 0;
    v76 = (2 * strlen(__s)) | 1;
    if (__dst[0])
    {
      v77 = __dst;
      v78 = __s;
      v79 = v120;
    }

    else
    {
      v78 = __s;
      v79 = v120;
      v77 = 0;
    }

    v48 = (*(*(v23 + 152) + 72))(*(v23 + 136), *(v23 + 144), 1, v78, v76, v79, v77);
    if ((v48 & 0x80000000) != 0)
    {
LABEL_215:
      v111 = 0;
LABEL_220:
      v104 = v120;
      goto LABEL_211;
    }

    v81 = strlen(v120);
    v82 = heap_Alloc(*(*v23 + 8), (v81 + 1));
    if (!v82)
    {
      v111 = 0;
LABEL_218:
      v48 = 2310021130;
      log_OutPublic(*(*v23 + 32), "FE_ONEWORD", 34000, 0, v83, v84, v85, v86, v112);
      goto LABEL_220;
    }

    v87 = v82;
    strcpy(v82, v120);
    v88 = strlen(v120);
    v89 = Utf8_DepesLengthInBytesUtf8(v120, v88);
    v90 = heap_Realloc(*(*v23 + 8), v120, v89 + 1);
    v91 = v87;
    if (!v90)
    {
      v111 = v87;
      goto LABEL_218;
    }

    v92 = v90;
    v113 = v91;
    v93 = strlen(v91);
    v94 = utf8_DepesToUtf8(v113, v93, 0, v92, v89, &__c[3], 0);
    if ((v94 & 0x80000000) != 0)
    {
      v48 = v94;
      v120 = v92;
      v111 = v113;
      goto LABEL_220;
    }

    *(v92 + *&__c[3]) = 0;
    heap_Free(*(*v23 + 8), v113);
    v80 = v92;
LABEL_146:
    v95 = *v80;
    v120 = v80;
    if (v95 <= 0x29)
    {
      if (v95 != 34 && v95 != 39)
      {
        goto LABEL_161;
      }

LABEL_160:
      if (v80[1])
      {
        goto LABEL_161;
      }

      goto LABEL_158;
    }

    if (v95 == 96)
    {
      goto LABEL_160;
    }

    if (v95 == 42 && (v80[1] == 44 && !v80[2] || v80[1] == 59 && !v80[2] || v80[1] == 58 && !v80[2]))
    {
LABEL_158:
      v96 = (*(*(v23 + 56) + 160))(v19, v17, v130, 3, 1, "", &v131);
      if ((v96 & 0x80000000) != 0)
      {
LABEL_214:
        v48 = v96;
        goto LABEL_215;
      }
    }

    else
    {
LABEL_161:
      v97 = v80;
      v98 = strlen(v80);
      v96 = (*(*(v23 + 56) + 160))(v19, v17, v130, 3, (v98 + 1), v97, &v131);
      if ((v96 & 0x80000000) != 0)
      {
        goto LABEL_214;
      }
    }

LABEL_162:
    v99 = __s1;
    if (!__s1)
    {
LABEL_167:
      v63 = (*(*(v23 + 56) + 160))(v19, v17);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 6, 2, "*", &v131);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 7, 1, &v129, &v131);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 20, 1, &v128, &v131);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      if (v122)
      {
        v102 = (strlen(v122) + 1);
        v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 9, v102, v122, &v131);
      }

      else
      {
        v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 9, 1, "", &v131);
      }

      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      if (v68 == 35 || v120 && (v105 = strlen(v120), v105 >= 2) && v120[v105 - 2] == 42 && (v106 = v120[v105 - 1], v106 <= 0x3B) && ((1 << v106) & 0xC00100000000000) != 0)
      {
        v103 = (*(*(v23 + 56) + 160))(v19, v17, v130, 8, 1, &v126, &v131);
        v104 = v120;
        if ((v103 & 0x80000000) != 0)
        {
          v48 = v103;
          goto LABEL_209;
        }
      }

      if (v68)
      {
        *v36 = v68;
        v28 = v114;
        v57 = v20;
        v107 = v117;
        while (1)
        {
          v108 = *i;
          if (v108 != 95 && v108 != 35)
          {
            break;
          }

          ++i;
        }

        __s = i;
        v36 = i;
      }

      else
      {
        v28 = v114;
        v57 = v20;
        v107 = v117;
      }

      v53 = HIWORD(v130);
      v15 = v115;
      if (HIWORD(v130) < v20)
      {
        while (1)
        {
          v109 = *(v22 + v53);
          v110 = v109 > 0x20 || ((1 << v109) & 0x100002600) == 0;
          if (v110 && v109 != 95)
          {
            break;
          }

          if (v20 == ++v53)
          {
            LOWORD(v53) = v20;
            break;
          }
        }
      }

      v134 = v53;
      if ((v107 & 1) == 0)
      {
        LOWORD(v130) = v28;
      }

      __s1 = 0;
      v56 = 1;
      if (v20 <= v53)
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  if (!*(v23 + 2192) || (v63 = mosynt_LHPlusMapping(*(v23 + 48), *(v23 + 2200), *(v23 + 2240), __s1, v136, 0x1388u), v99 = v136, (v63 & 0x80000000) == 0))
  {
    v100 = v99;
    v101 = strlen(v99);
    v63 = (*(*(v23 + 56) + 160))(v19, v17, v130, 11, (v101 + 1), v100, &v131);
    if ((v63 & 0x80000000) == 0)
    {
      v116 = v130;
      goto LABEL_167;
    }
  }

LABEL_207:
  v48 = v63;
LABEL_208:
  v104 = v120;
LABEL_209:
  if (v104)
  {
    v111 = 0;
LABEL_211:
    heap_Free(*(*v23 + 8), v104);
    if (v111)
    {
      heap_Free(*(*v23 + 8), v111);
    }
  }

LABEL_82:
  v49 = *MEMORY[0x1E69E9840];
  return v48;
}