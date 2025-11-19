uint64_t getDctIgtreeMappings(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = 0;
  v36 = -1;
  if (a1[92] == 1 || !a1[29])
  {
    return 0;
  }

  v35 = 0;
  v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", "numMappings", &v37, &v36, &v35);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v36 != 1 || v37 == 0)
  {
    v14 = *(a5 + 8);
  }

  else
  {
    v14 = atoi(*v37);
    *(a5 + 8) = v14;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, (16 * v14) | 1);
  *a5 = v15;
  if (!v15)
  {
LABEL_26:
    v12 = 2313166858;
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v16, v17, v18, v19, v34);
    return v12;
  }

  if (*(a5 + 8))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      LH_itoa(v21, &v34 + 1, 0xAu);
      v36 = -1;
      v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", &v34 + 1, &v37, &v36, &v35);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v26 = v36 != 1 || v37 == 0;
      if (v26 || (v27 = *v37, (v28 = strchr(*v37, 43)) == 0))
      {
        log_OutPublic(*(*a1 + 32), "FE_POS", 35005, 0, v22, v23, v24, v25, v34);
        return 2313166848;
      }

      v29 = v28;
      *v28 = 0;
      v30 = strlen(v27);
      v31 = heap_Calloc(*(*a1 + 8), 1, (v30 + 1));
      *(*a5 + v20 + 8) = v31;
      if (!v31)
      {
        goto LABEL_26;
      }

      strcpy(v31, v27);
      v32 = strlen(v29 + 1);
      v33 = heap_Calloc(*(*a1 + 8), 1, (v32 + 1));
      *(*a5 + v20) = v33;
      if (!v33)
      {
        goto LABEL_26;
      }

      strcpy(v33, v29 + 1);
      ++v21;
      v20 += 16;
    }

    while (v21 < *(a5 + 8));
  }

  v12 = 0;
  a1[92] = 1;
  return v12;
}

uint64_t setIGTreeInfo(_WORD *a1, uint64_t a2, uint64_t *a3, unsigned int a4, char *__src, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55[17] = *MEMORY[0x1E69E9840];
  v8 = 2313166855;
  memset(&__c[1], 0, 256);
  if (a3)
  {
    v10 = a3[19];
    if (v10)
    {
      *v52 = 0;
      v12 = *(v10 + 8 * a4);
      if (v12)
      {
        strcpy(v12, __src);
        v18 = *a3;
        *v53 = 0;
        memset(v55, 0, 128);
        Str = paramc_ParamGetStr(*(v18 + 40), "langcode", v53);
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        __strcat_chk();
        __strcat_chk();
        Str = brokeraux_ComposeBrokerString(v18, v55, 1, 1, *v53, 0, 0, &__c[1], 0x100uLL);
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        if ((ssftriff_reader_ObjOpen(a1, a2, 2, &__c[1], "IGTR", 1031, v52) & 0x80000000) != 0)
        {
          log_OutPublic(*(*a3 + 32), "FE_POS", 35004, 0, v20, v21, v22, v23, v50);
          v8 = 2313166848;
          goto LABEL_31;
        }

        Str = igtree_Init(a1, a2, *v52, *(a3[20] + 8 * a4));
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        Str = ssftriff_reader_ObjClose(*v52, v24, v25, v26, v27, v28, v29, v30);
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v31 = *(a3[21] + 8 * a4);
        v55[0] = 0;
        LOWORD(v53[0]) = -1;
        if (*(a3 + 28))
        {
          __c[0] = 0;
          Str = (*(a8 + 96))(a6, a7, "compounds_feature_key", __src, v55, v53, __c);
          if ((Str & 0x80000000) != 0)
          {
LABEL_30:
            v8 = Str;
            goto LABEL_31;
          }

          if (LOWORD(v53[0]) == 1 && v55[0])
          {
            v32 = *v55[0];
            v33 = strchr(*v55[0], __c[0]);
            v34 = v33;
            if (v33)
            {
              *v33 = 0;
            }

            v35 = atoi(v32);
            *(v31 + 8) = v35;
            v36 = heap_Calloc(*(*a3 + 8), 1, (8 * v35) | 1u);
            *v31 = v36;
            if (!v36)
            {
LABEL_33:
              log_OutPublic(*(*a3 + 32), "FE_POS", 35000, 0, v37, v38, v39, v40, v50);
              goto LABEL_34;
            }

            if (*(v31 + 8))
            {
              v41 = 0;
              if (v34)
              {
                v32 = v34 + 1;
              }

              do
              {
                v42 = strchr(v32, __c[0]);
                v43 = v42;
                if (v42)
                {
                  *v42 = 0;
                }

                v44 = strlen(v32);
                *(*v31 + 8 * v41) = heap_Calloc(*(*a3 + 8), 1, (v44 + 1));
                v45 = *(*v31 + 8 * v41);
                if (!v45)
                {
                  goto LABEL_33;
                }

                strcpy(v45, v32);
                ++v41;
                v46 = *(v31 + 8);
                if (v41 != v46 && v43 != 0)
                {
                  v32 = v43 + 1;
                }
              }

              while (v41 < v46);
            }
          }
        }

        *(a3[22] + 8 * a4) = heap_Calloc(*(*a3 + 8), 1, (2 * *(*(a3[21] + 8 * a4) + 8)) | 1);
        if (!*(a3[22] + 8 * a4))
        {
LABEL_34:
          v8 = 2313166858;
          goto LABEL_31;
        }

        Str = setIgtreeFVLookups(a3, *(a3[23] + 8 * a4), a4);
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  v48 = *MEMORY[0x1E69E9840];
  return v8;
}

char *setIGTreeWord2Nindex(char *result, unsigned int a2)
{
  v2 = *(result + 20);
  if (*(result + 20))
  {
    v3 = result;
    v4 = *(result + 38);
    v5 = *(result + 39);
    v6 = a2;
    for (i = (*(result + 4) + 4); ; i += 2)
    {
      v8 = (v4 + *(v5 + 4 * *(i - 1)));
      result = strncmp(v8, "IGTREE_", 7uLL);
      if (!result)
      {
        result = strcmp(v8 + 7, *(*(v3 + 19) + 8 * v6));
        if (!result)
        {
          break;
        }
      }

      if (!--v2)
      {
        return result;
      }
    }

    v9 = (v4 + *(v5 + 4 * *i));
    result = strchr(v9, 95);
    v10 = result;
    if (result)
    {
      v11 = 0;
      do
      {
        *v10 = 0;
        v12 = v11 + 1;
        *(*(v3 + 18) + 20 * v6 + 2 * v11) = atoi(v9);
        v9 = (v10 + 1);
        result = strchr((v10 + 1), 95);
        v10 = result;
        ++v11;
      }

      while (result);
      v10 = v12;
    }

    if (*v9)
    {
      result = atoi(v9);
      *(*(v3 + 18) + 20 * v6 + 2 * v10) = result;
    }
  }

  return result;
}

uint64_t statcomp_add2Str(uint64_t a1, const char **a2, _WORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80u)
    {
      v12 = 128;
    }

    else
    {
      v12 = (v8 - v9 + v11);
    }

    v13 = heap_Realloc(*(a1 + 8), v10, v9 + v12 + 1);
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v14, v15, v16, v17, v19);
      return 2313166858;
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

uint64_t matchSTATCOMPCONTEXT_TRule(uint64_t a1, const char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int *a8, int *a9, _WORD *a10, unsigned int a11)
{
  v11 = a7;
  v12 = a6;
  v14 = a9;
  v60 = *MEMORY[0x1E69E9840];
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    v20 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_76;
    }

    v51 = *a2;
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "         %s %s", v17, v18, v19, a1);
    **a2 = 0;
  }

  else
  {
    v20 = 0;
  }

  if (!*(v11 + 4))
  {
    v43 = 1;
    goto LABEL_75;
  }

  v21 = 0;
  v22 = 0;
  v23 = a11;
  v24 = a8;
  v56 = v12;
  v57 = v11;
  while (1)
  {
    v25 = *v11;
    v26 = *(v24 + 2);
    if (*(a5 + 8))
    {
      v27 = v12;
      v28 = v23;
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           regex %d", a6, a7, a8, *(v25 + v21 + 2));
      v29 = *(v25 + v21 + 4) & 1;
      if (*(a5 + 8) >= 2u)
      {
        v54 = *(a8 + 4);
        v55 = *(a5 + 304) + *(*(a5 + 312) + 4 * *(v25 + v21));
        v52 = *(a8 + 2);
        v53 = *(a8 + 3);
        v30 = *(v25 + v21 + 4) & 1;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d", a6, a7, a8, STATCOMPDOMAIN2STRING[*a8]);
        v29 = v30;
      }

      v23 = v28;
      v12 = v27;
      v24 = a8;
    }

    else
    {
      v29 = *(v25 + v21 + 4) & 1;
    }

    if (*v24 == 2)
    {
      v31 = *(v25 + v21);
      if (v31 == 2)
      {
        v32 = v29;
        v33 = *(v12 + 40);
        if (!v33)
        {
          v34 = "           ERROR : no TOK string to match";
          goto LABEL_36;
        }
      }

      else if (v31 == 1)
      {
        v32 = v29;
        v33 = *(v12 + 32);
        if (!v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (*(v25 + v21))
        {
LABEL_25:
          if (!*(a5 + 8))
          {
            v20 = 0;
            if (!v29)
            {
              goto LABEL_66;
            }

            goto LABEL_42;
          }

          v32 = v29;
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, 0);
          goto LABEL_37;
        }

        v32 = v29;
        v33 = *(v12 + 24);
        if (!v33)
        {
          v34 = "           ERROR : no ORT string to match";
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (*v24 != 1)
      {
        goto LABEL_25;
      }

      if (v23)
      {
        if (v23 == 2)
        {
          if (v26 + *(v24 + 4) + 1 >= *(v12 + 8))
          {
            goto LABEL_67;
          }
        }

        else if (v23 != 1 || *(v24 + 3) >= v26)
        {
LABEL_67:
          v20 = 0;
          if (!*(a5 + 8))
          {
            goto LABEL_73;
          }

          v44 = "           context not found. rule not applicable. RETURN LH_FALSE";
          goto LABEL_72;
        }
      }

      v33 = *(*v12 + 96 * *(v24 + 2) + 32);
      if (!v33)
      {
        v32 = v29;
LABEL_35:
        v34 = "           ERROR : no POS string to match";
LABEL_36:
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v34, a6, a7, a8, 0);
LABEL_37:
        v20 = 0;
        goto LABEL_38;
      }

      v32 = v29;
      v34 = "           ERROR : expected POS(idx) rule";
      if (*(v25 + v21) != *(a5 + 24))
      {
        goto LABEL_36;
      }
    }

    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           STR=%s", a6, a7, a8, v33);
    }

    v36 = strlen(v33);
    if (!v36)
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "invalid arg for regex", v37, v38, v39, 0);
      v20 = 2313166855;
      goto LABEL_76;
    }

    v40 = nuance_pcre_exec(*(a5 + 200), *(a5 + 208), *(a5 + 224) + *(*(a5 + 232) + 4 * *(v25 + v21 + 2)), 0, v33, v36, 0, 0, v59, 30);
    if ((v40 & 0x80000000) == 0)
    {
      break;
    }

    v41 = nuance_pcre_ErrorToLhError(v40);
    v20 = v41;
    if (v41 >> 20 == 2213)
    {
      if ((v41 & 0x1FFF) != 0x14)
      {
        if ((v41 & 0x1FFF) == 0xA)
        {
          v47 = *(*a5 + 32);
          v48 = 11002;
          v49 = 0;
        }

        else
        {
          v47 = *(*a5 + 32);
          v50 = "lhError";
          v49 = "%s%x";
          v48 = 11027;
        }

        log_OutPublic(v47, "FE_POS", v48, v49, v42, a6, a7, a8, v50);
        goto LABEL_76;
      }

      goto LABEL_59;
    }

    v12 = v56;
    v11 = v57;
    if ((v41 & 0x80000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_38:
    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FAILED", a6, a7, a8, 0);
      if (!v32)
      {
        v43 = *(a5 + 8);
        if (!*(a5 + 8))
        {
          goto LABEL_74;
        }

        v44 = "           return LH_FALSE";
LABEL_72:
        v14 = a9;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v44, a6, a7, a8, 0);
        v43 = 0;
        goto LABEL_75;
      }
    }

    else if (!v32)
    {
LABEL_66:
      v43 = 0;
      goto LABEL_74;
    }

LABEL_42:
    *a10 = *(v25 + v21 + 2);
    v35 = "           negate match - return LH_TRUE";
    if (*(a5 + 8))
    {
      goto LABEL_43;
    }

LABEL_44:
    ++v22;
    v21 += 6;
    if (v22 >= *(v11 + 4))
    {
      v43 = 1;
      goto LABEL_74;
    }
  }

  if (!v40)
  {
LABEL_59:
    v20 = 0;
    v12 = v56;
    v11 = v57;
    goto LABEL_38;
  }

  if (*(a5 + 8))
  {
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FIRED", a6, a7, a8, 0);
  }

  v11 = v57;
  v20 = 0;
  if (!v32)
  {
    *a10 = *(v25 + v21 + 2);
    v35 = "           return LH_TRUE";
    v12 = v56;
    if (!*(a5 + 8))
    {
      goto LABEL_44;
    }

LABEL_43:
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v35, a6, a7, a8, 0);
    goto LABEL_44;
  }

  if (*(a5 + 8))
  {
    v44 = "           negate match - return LH_FALSE";
    goto LABEL_72;
  }

LABEL_73:
  v43 = 0;
LABEL_74:
  v14 = a9;
LABEL_75:
  *v14 = v43;
LABEL_76:
  v45 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t logSTATCOMPCONTEXT_TRule(const char **a1, _WORD *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (!*(a5 + 4))
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *a5;
    v13 = (*a5 + v10);
    if (*(v13 + 4))
    {
      if (v13[2])
      {
        *__s = 33;
      }

      result = statcomp_add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }

    result = statcomp_add2Str(*a4, a1, a2, "[");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[38] + *(a4[39] + 4 * *v13)));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    sprintf(__s, " %d(", *(v12 + v10 + 2));
    result = statcomp_add2Str(*a4, a1, a2, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[33] + *(a4[34] + 4 * *(v12 + v10 + 2))));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, ")] ");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v11;
    v10 += 6;
    if (v11 >= *(a5 + 4))
    {
      return 0;
    }
  }

  return result;
}

uint64_t statcomp_matchRule(int a1, const char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, int *a9)
{
  v25 = 1;
  if (*(a5 + 8))
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (*a8)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, *a8);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v17 = *(a8 + 8);
    if (v17)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v17);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v18 = *(a8 + 16);
    if (v18)
    {
      matched = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v18);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }
    }

    else
    {
LABEL_14:
      matched = 0;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "       <%s>", a6, a7, a8, *a2);
    **a2 = 0;
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a8)
  {
    matched = matchSTATCOMPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a8, a7, &v25, &v24, 1u);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
      goto LABEL_26;
    }
  }

  v21 = *(a8 + 8);
  if (v21)
  {
    v25 = 0;
    matched = matchSTATCOMPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v21, a7, &v25, &v24, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
LABEL_26:
      *a9 = v20;
      return matched;
    }
  }

  v22 = *(a8 + 16);
  if (!v22)
  {
    v20 = 1;
    goto LABEL_26;
  }

  v25 = 0;
  matched = matchSTATCOMPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v22, a7, &v25, &v24, 2u);
  if ((matched & 0x80000000) == 0)
  {
    v20 = v25;
    goto LABEL_26;
  }

  return matched;
}

uint64_t readRULEREGEXES(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v8 = *(a2 + *a3);
  *(a4 + 4) = v8;
  *a3 += 2;
  v9 = heap_Calloc(*(a1 + 8), 1, (24 * v8) | 1);
  *a4 = v9;
  if (v9)
  {
    v14 = -1;
    v15 = 16;
    while (++v14 < *(a4 + 4))
    {
      v16 = *a4;
      v17 = *a4 + v15;
      result = readCONTEXT_0(a1, a2, a3, (v17 - 16));
      if ((result & 0x80000000) == 0)
      {
        result = readCONTEXT_0(a1, a2, a3, (v17 - 8));
        if ((result & 0x80000000) == 0)
        {
          result = readCONTEXT_0(a1, a2, a3, (v16 + v15));
          v15 += 24;
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }

      return result;
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v10, v11, v12, v13, v19);
    return 2313166858;
  }
}

uint64_t readCONTEXT_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *(a2 + v4);
  *a3 = v4 + 2;
  if (!v5)
  {
    return 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 17);
  if (!v10)
  {
    v23 = 2313166858;
LABEL_11:
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v25);
    return v23;
  }

  v15 = v10;
  *(v10 + 8) = v5;
  v16 = heap_Calloc(*(a1 + 8), 1, (6 * v5) | 1);
  *v15 = v16;
  if (!v16)
  {
    v23 = 2313166858;
    heap_Free(*(a1 + 8), v15);
    goto LABEL_11;
  }

  if (*(v15 + 8))
  {
    v17 = 0;
    v18 = 0;
    v19 = *a3;
    do
    {
      *(v16 + v17) = *(a2 + v19);
      v20 = *a3 + 2;
      *a3 = v20;
      *(*v15 + v17 + 2) = *(a2 + v20);
      v21 = *a3;
      v22 = *a3 + 2;
      *a3 = v22;
      LOBYTE(v22) = *(a2 + v22);
      v19 = v21 + 4;
      *a3 = v19;
      v16 = *v15;
      *(*v15 + v17 + 4) = v22;
      ++v18;
      v17 += 6;
    }

    while (v18 < *(v15 + 8));
  }

  v23 = 0;
  *a4 = v15;
  return v23;
}

uint64_t setIgtreeFVLookups(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *(*(a1 + 160) + 8 * a3);
  v7 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v6 + 1296) - 11);
  *a2 = v7;
  if (!v7)
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v26);
    return 2313166858;
  }

  if (*(v6 + 1296) < 2u)
  {
    return 0;
  }

  v12 = v7;
  v13 = 0;
  v27 = 0;
  while (1)
  {
    v14 = *(*(v6 + 1312) + 8 * v13);
    if (*v14 == 78)
    {
      if (v14[1] == 49 && v14[2] == 95)
      {
        v15 = 1;
        goto LABEL_34;
      }

      if (v14[1] == 50 && v14[2] == 95)
      {
        v15 = 2;
        goto LABEL_34;
      }

      if (v14[1] == 51 && v14[2] == 95)
      {
        v15 = 3;
        goto LABEL_34;
      }

      if (v14[1] == 52 && v14[2] == 95)
      {
        v15 = 4;
        goto LABEL_34;
      }

      if (v14[1] == 53 && v14[2] == 95)
      {
        v15 = 5;
        goto LABEL_34;
      }

      if (v14[1] == 54 && v14[2] == 95)
      {
        v15 = 6;
        goto LABEL_34;
      }

      if (v14[1] == 55 && v14[2] == 95)
      {
        v15 = 7;
        goto LABEL_34;
      }

      if (v14[1] == 56 && v14[2] == 95)
      {
        v15 = 8;
        goto LABEL_34;
      }

      if (v14[1] == 57 && v14[2] == 95)
      {
        v15 = 9;
        goto LABEL_34;
      }
    }

    if (strncmp(*(*(v6 + 1312) + 8 * v13), "N10_", 4uLL))
    {
      goto LABEL_35;
    }

    v15 = 10;
LABEL_34:
    *(v12 + 12 * v13) = v15;
LABEL_35:
    if (statcomp_isDynamicFeature(v14, &v27 + 1) != 1)
    {
      break;
    }

    v12 = *a2;
    *(*a2 + 12 * v13 + 4) = 0;
LABEL_42:
    *(v12 + 12 * v13++ + 8) = HIWORD(v27);
    if (*(v6 + 1296) - 1 <= v13)
    {
      return 0;
    }
  }

  if (statcomp_isDctFeature(*(*(v6 + 1312) + 8 * v13), &v27 + 1, *(*(a1 + 168) + 8 * a3)) == 1)
  {
    v12 = *a2;
    *(*a2 + 12 * v13 + 4) = 1;
    goto LABEL_42;
  }

  if (statcomp_isDctMappedFeature(*(*(v6 + 1312) + 8 * v13), &v27, (a1 + 120)) != 1)
  {
    v20 = 2313166848;
    v21 = *(*a1 + 32);
    v22 = *(*(v6 + 1312) + 8 * v13);
    v23 = "featurename";
    goto LABEL_47;
  }

  *(*a2 + 12 * v13 + 4) = 2;
  if (statcomp_isDctFeature(*(*(a1 + 120) + 16 * v27), &v27 + 1, *(*(a1 + 168) + 8 * a3)) == 1)
  {
    v12 = *a2;
    goto LABEL_42;
  }

  v20 = 2313166848;
  v21 = *(*a1 + 32);
  v24 = *(*(v6 + 1312) + 8 * v13);
  v23 = "featurename (mapped)";
LABEL_47:
  log_OutPublic(v21, "FE_POS", 35006, "%s%s", v16, v17, v18, v19, v23);
  return v20;
}

uint64_t statpos_igtrees_getBrkStrs(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  *v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "OOVigtree", 1, 1, *v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "KNOWNigtree", 1, 1, *v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t statpos_igtrees_load(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  *v41 = 0;
  BrkStrs = statpos_igtrees_getBrkStrs(a3, v43, v42, 0x100uLL);
  if ((BrkStrs & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  *a5 = 0;
  v11 = heap_Calloc(*(a3 + 8), 1, 536);
  if (!v11)
  {
    v36 = 2313166858;
    v37 = *(a3 + 32);
    v21 = 0;
LABEL_16:
    log_OutPublic(v37, "FE_POS", 35000, v21, v12, v13, v14, v15, v40);
    goto LABEL_17;
  }

  v16 = v11;
  strcpy((v11 + 24), a4);
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v42, "IGTR", 1031, v41) & 0x80000000) != 0)
  {
    *(v16 + 8) = 0;
    log_OutPublic(*(a3 + 32), "FE_POS", 63000, "%s%x", v17, v18, v19, v20, "treename:");
    v36 = 2313166848;
    goto LABEL_17;
  }

  v21 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(v16 + 8) = v21;
  if (!v21)
  {
LABEL_15:
    v36 = 2313166858;
    v37 = *(a3 + 32);
    goto LABEL_16;
  }

  BrkStrs = igtree_Init(a1, a2, *v41, v21);
  if ((BrkStrs & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  BrkStrs = ssftriff_reader_ObjClose(*v41, v22, v23, v24, v25, v26, v27, v28);
  if ((BrkStrs & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v43, "IGTR", 1031, v41) & 0x80000000) == 0)
  {
    v21 = heap_Calloc(*(a3 + 8), 1, 1600);
    *v16 = v21;
    if (v21)
    {
      BrkStrs = igtree_Init(a1, a2, *v41, v21);
      if ((BrkStrs & 0x80000000) == 0)
      {
        v36 = ssftriff_reader_ObjClose(*v41, v29, v30, v31, v32, v33, v34, v35);
        if ((v36 & 0x80000000) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

LABEL_12:
      v36 = BrkStrs;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v36 = 0;
  *v16 = 0;
  *(v16 + 16) = 1;
LABEL_19:
  if (*(v16 + 8) || *v16)
  {
    *(v16 + 20) = 1;
  }

  *a5 = v16;
LABEL_17:
  v38 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t statpos_igtrees_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    return statpos_igtrees_unload(v11, *(a3 + 32), v5, v6, v7, v8, v9, v10);
  }

  return result;
}

uint64_t statpos_igtrees_unload(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  if (v10)
  {
    v11 = igtree_Deinit(a1, v10, a3, a4, a5, a6, a7, a8);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2[1];
  if (!v12)
  {
LABEL_8:
    heap_Free(*(a1 + 8), a2);
    return v11;
  }

  v11 = igtree_Deinit(a1, v12, a3, a4, a5, a6, a7, a8);
  if ((v11 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2[1]);
    a2[1] = 0;
    goto LABEL_8;
  }

  return v11;
}

uint64_t statpos_igtrees_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  result = InitRsrcFunction(a1, a2, &v12);
  if ((result & 0x80000000) == 0)
  {
    memcpy(v11, v12, sizeof(v11));
    *&v11[32] = *(a5 + 32);
    return statpos_igtrees_load(a1, a2, v11, a3, (a4 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_label(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = 0;
  v73 = 0;
  __s = 0;
  v8 = *(*(a4 + 8) + 1296) - 1;
  if (!*(a4 + 16) && *(*a4 + 1296) - 1 > v8)
  {
    v8 = *(*a4 + 1296) - 1;
  }

  HIDWORD(v73) = 0;
  v9 = statpos_fv_new(a1, v8, &v72);
  if ((v9 & 0x80000000) != 0)
  {
    inited = v9;
LABEL_44:
    crf_mde_seg_fv_dealloc(a1, &v72);
    return inited;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 8 * v8);
  if (!v10)
  {
    inited = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v61);
    goto LABEL_44;
  }

  v15 = v10;
  inited = initFeatureVector(a1, v10, v8);
  if ((inited & 0x80000000) == 0 && *(a3 + 8))
  {
    v21 = 0;
    v22 = 72;
    do
    {
      if (*(a2 + 188) == 1)
      {
        if (*(a4 + 16) == 1 || !*(*a3 + v22 - 64))
        {
          features = statpos_get_features(a1, a3, a2, v21, *(*(a4 + 8) + 1312), (*(*(a4 + 8) + 1296) - 1), &v72, *(a4 + 8));
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v15, &v72);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v24 = *(a4 + 8);
        }

        else
        {
          features = statpos_get_features(a1, a3, a2, v21, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v72, *a4);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v15, &v72);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v24 = *a4;
        }

        inited = igtree_Process(v24, v15, &__s);
        if ((inited & 0x80000000) != 0)
        {
          break;
        }

        v43 = *a3 + v22;
        v68 = *(v43 + 8);
        *v63 = **(v43 - 24);
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v40, v41, v42, v21);
        v44 = strlen(__s);
        v45 = heap_Calloc(*(a1 + 8), 1, v44 + 1);
        *(*a3 + v22 + 16) = v45;
        if (!v45)
        {
LABEL_46:
          inited = 2313166858;
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v31, v32, v33, v34, v61);
          break;
        }

        strcpy(v45, __s);
      }

      else
      {
        v25 = *a3;
        v26 = *(*a3 + v22 - 64);
        if (v26 == 1)
        {
          if (*(a4 + 16))
          {
LABEL_28:
            features = statpos_get_features(a1, a3, a2, v21, *(*(a4 + 8) + 1312), (*(*(a4 + 8) + 1296) - 1), &v72, *(a4 + 8));
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = statpos_get_features_for_igtree(a1, v15, &v72);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = igtree_Process(*(a4 + 8), v15, &__s);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            v49 = *a3 + v22;
            v69 = *(v49 + 8);
            *v64 = **(v49 - 24);
            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate Word[%d] %s %s -> %s", v46, v47, v48, v21);
            v50 = __s;
            v51 = checkPOSIsLegal(__s, v21, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 100), (a3 + 80), (a3 + 96), "KNOWNWORD", **(*a3 + v22 - 24), *(a4 + 8), &v72, v50, v51, *(*(*a3 + v22 - 24) + 24), *(*a3 + v22 + 40));
          }

          else
          {
            features = statpos_get_features(a1, a3, a2, v21, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v72, *a4);
            if ((features & 0x80000000) != 0 || (features = statpos_get_features_for_igtree(a1, v15, &v72), (features & 0x80000000) != 0) || (features = igtree_Process(*a4, v15, &__s), (features & 0x80000000) != 0))
            {
LABEL_45:
              inited = features;
              break;
            }

            v57 = *a3 + v22;
            v70 = *(v57 + 8);
            *v65 = **(v57 - 24);
            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v54, v55, v56, v21);
            v58 = __s;
            v59 = checkPOSIsLegal(__s, v21, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 100), (a3 + 80), (a3 + 96), "OOVWORD", **(*a3 + v22 - 24), *a4, &v72, v58, v59, *(*(*a3 + v22 - 24) + 24), *(*a3 + v22 + 40));
          }

          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v52 = strlen(__s);
          v53 = heap_Calloc(*(a1 + 8), 1, v52 + 1);
          *(*a3 + v22 + 16) = v53;
          if (!v53)
          {
            goto LABEL_46;
          }

          strcpy(v53, __s);
          inited = statpos_fv_clear(&v72);
          if ((inited & 0x80000000) != 0)
          {
            break;
          }

          clearFeatureVector(v15, v8);
          goto LABEL_36;
        }

        if (v26 || *(v25 + v22) > 1u)
        {
          goto LABEL_28;
        }

        v27 = v25 + v22;
        v28 = *(v27 + 8);
        if (!v28)
        {
          *v66 = **(v27 - 24);
          log_OutPublic(*(a1 + 32), "FE_POS", 35008, "%s%s", v16, v17, v18, v19, "word=");
          return 2313166848;
        }

        v29 = strlen(v28);
        v30 = heap_Calloc(*(a1 + 8), 1, v29 + 1);
        v35 = *a3 + v22;
        *(v35 + 16) = v30;
        if (!v30)
        {
          goto LABEL_46;
        }

        strcpy(v30, *(v35 + 8));
        v36 = *a3 + v22;
        *v62 = **(v36 - 24);
        v67 = *(v36 + 8);
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Skip disambiguation on Word[%d] %s %s", v37, v38, v39, v21);
      }

LABEL_36:
      ++v21;
      v22 += 160;
    }

    while (v21 < *(a3 + 8));
  }

  crf_mde_seg_fv_dealloc(a1, &v72);
  freeFeatureVector(a1, v15, v8);
  heap_Free(*(a1 + 8), v15);
  return inited;
}

uint64_t checkPOSIsLegal(char *__s1, unsigned int a2, void *a3, uint64_t a4)
{
  v4 = *a3 + 160 * a2;
  v5 = *(v4 + 72);
  if (!*(v4 + 72))
  {
    return 0;
  }

  v7 = *(a4 + 296);
  v8 = *(a4 + 304);
  v9 = *(v4 + 64);
  while (1)
  {
    v10 = *v9;
    v9 += 6;
    if (!strcmp(__s1, (v7 + *(v8 + 4 * v10))))
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t com_useStatHmogrphMosyntOff(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4, const char *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "stathmogrph_fepos_mosyntoff", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      a5 = **&__c[3];
      v11 = strchr(**&__c[3], __c[0]);
      if (v11)
      {
        *v11 = 0;
        a5 = **&__c[3];
      }
    }

    v12 = !strcmp(a5, "yes") || strcmp(a5, "YES") == 0;
    *a4 = v12;
    *&__c[1] = -1;
    v13 = (*(a1 + 96))(a2, a3, "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
    result = 0;
    if ((v13 & 0x80000000) == 0 && *&__c[1] == 1)
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t checkUsePKUPOS(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "mosynt_usepkupos", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = **&__c[3];
      v8 = strchr(**&__c[3], __c[0]);
      if (v8)
      {
        *v8 = 0;
        v7 = **&__c[3];
      }

      v6 = !strcmp(v7, "yes") || strcmp(v7, "YES") == 0;
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t checkReplaceAsterisk(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "statpos_replaceasterisk", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = **&__c[3];
      v8 = strchr(**&__c[3], __c[0]);
      if (v8)
      {
        *v8 = 0;
        v7 = **&__c[3];
      }

      v6 = *v7 == 49 && v7[1] == 0;
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t fe_pos_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Str = 2313166855;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  __s1 = "";
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v37);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v37 + 8), 1, 2240);
      v17 = v37;
      if (v12)
      {
        v18 = v12;
        v19 = heap_Calloc(*(v37 + 8), 1, 1040);
        *(v18 + 48) = v19;
        if (v19)
        {
          *v19 = a3;
          v19[1] = a4;
          v20 = v37;
          *v18 = v37;
          *(v18 + 8) = a3;
          *(v18 + 32) = a1;
          *(v18 + 40) = a2;
          *(v18 + 16) = a4;
          *(v18 + 24) = a1;
          Object = objc_GetObject(*(v20 + 48), "LINGDB", &v36);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          *(v18 + 56) = *(v36 + 8);
          Object = objc_GetObject(*(v37 + 48), "FE_DEPES", &v35);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v22 = v35;
          *(v18 + 80) = *(v35 + 8);
          *(v18 + 64) = *(v22 + 16);
          Object = objc_GetObject(*(v37 + 48), "FE_DCTLKP", &v34);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v23 = v34;
          v24 = *(v34 + 8);
          *(v18 + 128) = v24;
          *(v18 + 112) = *(v23 + 16);
          *(v18 + 180) = 0;
          Object = statpos_checkIfActive(*(v18 + 112), *(v18 + 120), v24, a3, a4, v37, (v18 + 200), (v18 + 176), (v18 + 192), (v18 + 2232), (v18 + 2236));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = com_useStatHmogrphMosyntOff(*(v18 + 128), *(v18 + 112), *(v18 + 120), (v18 + 188), "no");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v25 = *(v18 + 176);
          if (*(v18 + 1616) == 1)
          {
            if (!v25)
            {
              *(v18 + 176) = 0x100000001;
            }
          }

          else if (!v25)
          {
LABEL_19:
            Object = statphr_readIGTree(a3, a4, *(v18 + 32), *(v18 + 40), v37, (v18 + 1728), (v18 + 1720));
            if ((Object & 0x80000000) == 0)
            {
              v27 = (v18 + 1736);
              *(v18 + 1736) = 0;
              Object = statcomp_useStatCOMP(*(v18 + 112), *(v18 + 120), *(v18 + 128), (v18 + 1736));
              if ((Object & 0x80000000) == 0)
              {
                if (*v27 != 1)
                {
                  goto LABEL_25;
                }

                *(v18 + 1744) = v37;
                *(v18 + 2128) = *(v18 + 112);
                *(v18 + 2144) = *(v18 + 128);
                *(v18 + 1952) = 0;
                *(v18 + 1960) = 0;
                Object = nuance_pcre_ObjOpen(a3, a4, v18 + 1952);
                if ((Object & 0x80000000) == 0)
                {
                  Object = nuance_pcre_Init(*(v18 + 1952), *(v18 + 1960), 0x1Eu, 50);
                  if ((Object & 0x80000000) == 0)
                  {
                    Object = statcomp_rules_load(a3, a4, v37, v18 + 1752, *(v18 + 112), *(v18 + 120), *(v18 + 128), v28);
                    if ((Object & 0x80000000) == 0)
                    {
LABEL_25:
                      Object = checkUsePKUPOS(*(v18 + 128), *(v18 + 112), *(v18 + 120), (v18 + 184));
                      if ((Object & 0x80000000) == 0)
                      {
                        *(v18 + 136) = 0;
                        v29 = (v18 + 136);
                        *(v18 + 144) = 0;
                        Str = paramc_ParamGetStr(*(v37 + 40), "fecfg", &__s1);
                        if ((Str & 0x80000000) != 0)
                        {
                          goto LABEL_41;
                        }

                        if (!strcmp(__s1, "cfg4"))
                        {
                          *(v18 + 148) = 1;
                        }

                        if (*v27 || *(v18 + 184))
                        {
                          goto LABEL_31;
                        }

                        Object = wgram_CheckIfExists(a3, a4, *(v18 + 32), *(v18 + 40), (v18 + 144));
                        if ((Object & 0x80000000) == 0)
                        {
                          Str = sgram_CheckIfExists(a3, a4, (v18 + 140));
                          if ((Str & 0x80000000) != 0)
                          {
                            goto LABEL_41;
                          }

                          if (!*(v18 + 140))
                          {
                            *v29 = 0;
LABEL_34:
                            *(v18 + 88) = 0;
                            *(v18 + 96) = 0;
                            v30 = 62341;
                            *(v18 + 104) = 0;
LABEL_42:
                            *a5 = v18;
                            *(a5 + 8) = v30;
                            return Str;
                          }

                          Str = com_mosynt_UseMosynt(*(v18 + 112), *(v18 + 120), *(v18 + 128), (v18 + 136));
                          if ((Str & 0x80000000) != 0)
                          {
LABEL_41:
                            fe_pos_ObjClose(*a5, *(a5 + 8));
                            v18 = 0;
                            v30 = 0;
                            goto LABEL_42;
                          }

LABEL_31:
                          if (!*v29)
                          {
                            goto LABEL_34;
                          }

                          if (*(v18 + 188))
                          {
                            goto LABEL_34;
                          }

                          Str = fe_pos_LoadMosyntData(a3, a4, v18);
                          if ((Str & 0x80000000) == 0)
                          {
                            goto LABEL_34;
                          }

                          goto LABEL_41;
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_40:
            Str = Object;
            goto LABEL_41;
          }

          v26 = *(v18 + 192);
          *(v18 + 1636) = *(v18 + 188);
          Object = statpos_load_resources(*(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 8), *(v18 + 16), *(v18 + 32), *(v18 + 40), v37, *(v18 + 24), *(v18 + 112), *(v18 + 128), v18 + 200, *(v18 + 180), (v18 + 176), v26);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = checkReplaceAsterisk(*(v18 + 128), *(v18 + 112), *(v18 + 120), (v18 + 1640));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_19;
        }

        v17 = v37;
      }

      log_OutPublic(*(v17 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v32);
      Str = 2313166858;
      goto LABEL_41;
    }

    return inited;
  }

  return Str;
}

uint64_t fe_pos_LoadMosyntData(_WORD *a1, uint64_t a2, uint64_t a3)
{
  __s1 = 0;
  result = com_mosynt_GetCfgParamVal(*(a3 + 112), *(a3 + 120), *(a3 + 128), "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((result & 0x80000000) == 0)
  {
    v7 = strcmp(__s1, "yes") == 0;
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

uint64_t fe_pos_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 44))
    {
      statpos_unload_resources(a1[4], a1[5], *a1, (a1 + 25), *(a1 + 45), *(a1 + 48), v9, v10);
    }

    if (*(a1 + 434))
    {
      statcomp_rules_unload((a1 + 219), v4, v5, v6, v7, v8, v9, v10);
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(a1[244], a1[245], NullHandle, v12))
      {
        nuance_pcre_DeInit(a1[244], a1[245]);
        nuance_pcre_ObjClose(a1[244], a1[245]);
      }
    }

    if (*(a1 + 430))
    {
      statphr_freeIGTree(*a1, a1[3], a1[216]);
    }

    fe_pos_UnloadMosyntData(a1);
    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[16])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v13 = a1[6];
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
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

uint64_t fe_pos_ObjReopen(void *a1, int a2)
{
  v3 = 2313166854;
  v24 = "";
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 44) == 1)
    {
      IGTree = statpos_unload_resources(a1[4], a1[5], *a1, (a1 + 25), *(a1 + 45), *(a1 + 48), v4, v5);
      if ((IGTree & 0x80000000) != 0)
      {
        return IGTree;
      }
    }

    *(a1 + 45) = 0;
    IGTree = statpos_checkIfActive(a1[14], a1[15], a1[16], a1[1], a1[2], *a1, a1 + 50, a1 + 44, a1 + 48, a1 + 558, a1 + 559);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = com_useStatHmogrphMosyntOff(a1[16], a1[14], a1[15], a1 + 47, "no");
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    v14 = *(a1 + 44);
    if (*(a1 + 404) != 1 || v14)
    {
      if (v14 != 1)
      {
LABEL_15:
        if (*(a1 + 434) == 1)
        {
          IGTree = statcomp_rules_unload((a1 + 219), v7, v8, v9, v10, v11, v12, v13);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          NullHandle = safeh_GetNullHandle();
          if (!safeh_HandlesEqual(a1[244], a1[245], NullHandle, v18))
          {
            nuance_pcre_DeInit(a1[244], a1[245]);
            nuance_pcre_ObjClose(a1[244], a1[245]);
          }
        }

        v19 = a1 + 217;
        *(a1 + 434) = 0;
        IGTree = statcomp_useStatCOMP(a1[14], a1[15], a1[16], a1 + 434);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v19 == 1)
        {
          v20 = a1[1];
          a1[218] = *a1;
          *(a1 + 133) = *(a1 + 7);
          a1[268] = a1[16];
          a1[244] = 0;
          *(a1 + 490) = 0;
          IGTree = nuance_pcre_ObjOpen(v20, a1[2], (a1 + 244));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = nuance_pcre_Init(a1[244], a1[245], 0x1Eu, 50);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = statcomp_rules_load(a1[1], a1[2], *a1, (a1 + 219), a1[14], a1[15], a1[16], v21);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }
        }

        if (*(a1 + 430) == 1)
        {
          statphr_freeIGTree(*a1, a1[3], a1[216]);
        }

        *(a1 + 430) = 0;
        IGTree = statphr_readIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 216, a1 + 430);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        IGTree = fe_pos_UnloadMosyntData(a1);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        a1[17] = 0;
        v22 = a1 + 17;
        a1[18] = 0;
        IGTree = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v24);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (!strcmp(v24, "cfg4"))
        {
          *(a1 + 37) = 1;
        }

        IGTree = checkUsePKUPOS(a1[16], a1[14], a1[15], a1 + 46);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v19 || *(a1 + 46))
        {
          v3 = 0;
        }

        else
        {
          IGTree = wgram_CheckIfExists(a1[1], a1[2], a1[4], a1[5], a1 + 36);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          v3 = sgram_CheckIfExists(a1[1], a1[2], a1 + 35);
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }

          if (!*(a1 + 35))
          {
            *v22 = 0;
            return v3;
          }

          v3 = com_mosynt_UseMosynt(a1[14], a1[15], a1[16], a1 + 34);
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }
        }

        if (*v22)
        {
          return fe_pos_LoadMosyntData(a1[1], a1[2], a1);
        }

        return v3;
      }

      v15 = *(a1 + 45);
    }

    else
    {
      a1[22] = 0x100000001;
      v15 = 1;
    }

    v16 = *(a1 + 48);
    *(a1 + 409) = *(a1 + 47);
    IGTree = statpos_load_resources(a1[8], a1[9], a1[10], a1[1], a1[2], a1[4], a1[5], *a1, a1[3], *(a1 + 7), a1[16], (a1 + 25), v15, a1 + 44, v16);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = checkReplaceAsterisk(a1[16], a1[14], a1[15], a1 + 410);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    goto LABEL_15;
  }

  return v3;
}

uint64_t fe_pos_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (*(a1 + 176))
  {
    result = statpos_setParams(*a1, a1 + 208);
  }

  if (*(a1 + 1736))
  {
    v4 = *a1;

    return statcomp_setParams(v4, a1 + 1752);
  }

  return result;
}

uint64_t fe_Process_UserCOMPMarkup(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 1764) == 1)
  {
    v10 = *(a1 + 56);

    return statcomp_processUserMarkup(v10, a3, a4, a1 + 1744);
  }

  return result;
}

uint64_t fe_pos_Process_StatCOMP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v17 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  SentenceData = statcomp_getSentenceData(*(a1 + 56), a3, a4, (a1 + 1744));
  if ((SentenceData & 0x80000000) == 0)
  {
    if (!*(a1 + 2184) || (v17 = 0, SentenceData = statcomp_processCompounds((a1 + 1744), &v17, v9, v10, v11, v12, v13, v14), (SentenceData & 0x80000000) == 0) && (v17 != 1 || (SentenceData = statcomp_saveCompoundsToLingdb(*(a1 + 56), a3, a4, a1 + 1744), (SentenceData & 0x80000000) == 0)))
    {
      statcomp_freeSentenceData(a1 + 1744);
    }
  }

  return SentenceData;
}

uint64_t fe_pos_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v36 = 0;
  v9 = 2313166858;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  v46 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  *a5 = 1;
  v10 = heap_Alloc(*(*a1 + 8), 5000);
  if (v10)
  {
    v15 = v10;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v37 = 0;
    v35 = 0;
    v20 = heap_Alloc(*(*a1 + 8), 20000);
    if (v20)
    {
      v9 = (*(a1[7] + 104))(a3, a4, 1, 0, &v45 + 2);
      if ((v9 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v45), 0, &v36) & 0x80000000) == 0 && v36 == 1)
      {
        v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v45), 0, &v46, &v44);
        if ((v9 & 0x80000000) == 0 && v44 >= 2u)
        {
          started = mosynt_StartSentenceAnalysis(a1[6], a1[14], a1[15], a1[16], a1[19], a1[20], v34);
          if ((started & 0x80000000) == 0)
          {
            started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v45), &v45);
            if ((started & 0x80000000) == 0)
            {
              while (v45)
              {
                started = (*(a1[7] + 168))(a3, a4);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }

                if (v41 <= 0xA && ((1 << v41) & 0x610) != 0)
                {
                  started = (*(a1[7] + 168))(a3, a4, v45, 1, 1, &v43, &v44);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v45, 2, 1, &v42, &v44);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v45, 3, &v38, &v44);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v45, 5, &v40, &v44);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v45, 6, &v39, &v44);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v45, 7, 1, &v37, &v44);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  mosynt_InsertTerminals(a1[6], v34, v43, (v42 + 1), v40, v37, v45, v46, v38);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }
                }

                v9 = (*(a1[7] + 120))(a3, a4, v45, &v45);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_29;
                }
              }

              mosynt_ParseSentence(a1[6], v34);
              if ((started & 0x80000000) == 0)
              {
                started = (*(a1[7] + 104))(a3, a4, 1, 0, &v45 + 2);
                if ((started & 0x80000000) == 0)
                {
                  started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v45), &v45);
                  if ((started & 0x80000000) == 0)
                  {
                    v24 = v45;
                    if (v45)
                    {
                      while (1)
                      {
                        started = (*(a1[7] + 120))(a3, a4, v24, &v44 + 2);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        started = (*(a1[7] + 168))(a3, a4, v45, 0, 1, &v41, &v44);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v41 <= 0xA && ((1 << v41) & 0x610) != 0)
                        {
                          started = mosynt_GetTerminalInfoById(a1[6], v34, v45, &v35, v15, 5000);
                          if ((started & 0x80000000) != 0)
                          {
                            break;
                          }

                          v26 = a1[7];
                          if (v35)
                          {
                            v27 = *(v26 + 160);
                            v28 = strlen(v15);
                            v27(a3, a4, v45, 5, (v28 + 1), v15, &v43 + 2);
                            started = (*(a1[7] + 176))(a3, a4, v45, 3, &v38, &v44);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "(sgram) keep lingdb record %d : POS=%s PHON=%s", v29, v30, v31, v45);
                          }

                          else
                          {
                            started = (*(v26 + 192))(a3, a4, v45);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }
                          }
                        }

                        v24 = HIWORD(v44);
                        LOWORD(v45) = HIWORD(v44);
                        if (!HIWORD(v44))
                        {
                          goto LABEL_48;
                        }
                      }
                    }

                    else
                    {
LABEL_48:
                      started = mosynt_SyntTreeToString(a1[6], v34, v20, 20000);
                      if ((started & 0x80000000) == 0)
                      {
                        v32 = strlen(v20);
                        started = (*(a1[7] + 160))(a3, a4, HIWORD(v45), 2, (v32 + 1), v20, &v43 + 2);
                        if ((started & 0x80000000) == 0)
                        {
                          started = mosynt_FinishSentenceAnalysis(a1[6], v34);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_51:
          v9 = started;
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v16, v17, v18, v19, v33);
    }

LABEL_29:
    heap_Free(*(*a1 + 8), v15);
    if (v20)
    {
      heap_Free(*(*a1 + 8), v20);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v33);
  }

  return v9;
}

uint64_t fe_pos_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v178 = *MEMORY[0x1E69E9840];
  v163 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    v11 = 2313166856;
    goto LABEL_23;
  }

  *a5 = 1;
  if (*(a1 + 176))
  {
    v10 = statpos_process(*(a1 + 64), *(a1 + 72), *(a1 + 80), a3, a4, *(a1 + 56), *(a1 + 112), *(a1 + 120), *(a1 + 128), a1 + 200, *(a1 + 180), *(a1 + 144), *(a1 + 140), *(a1 + 148), *(a1 + 192));
    if ((v10 & 0x80000000) != 0)
    {
      v11 = v10;
      goto LABEL_23;
    }
  }

  if (*(a1 + 136) && !*(a1 + 188))
  {
    fe_pos_Process_Mosynt(a1, a2, a3, a4, a5);
  }

  v11 = fe_Process_UserCOMPMarkup(a1, a2, a3, a4, a5);
  if ((v11 & 0x80000000) == 0)
  {
    if (!*(a1 + 1736) || *(a1 + 1616) || (v11 = fe_pos_Process_StatCOMP(a1, a2, a3, a4, a5), (v11 & 0x80000000) == 0))
    {
      __s = 0;
      v168 = 0;
      __s1 = 0;
      v165 = 0;
      v166 = 0;
      if (!*(a1 + 176) || *(a1 + 1720) && !*(a1 + 1616) && (*(a1 + 192) && !*(a1 + 2232) ? (v12 = statphr_MorphemeProcess(*a1, *(a1 + 56), a3, a4)) : (v12 = statphr_Process(*a1, *(a1 + 56), a3, a4, *(a1 + 1728), *(a1 + 1736), *(a1 + 2236))), (v11 = v12, (v12 & 0x80000000) == 0) && !*(a1 + 176)))
      {
        if (!*(a1 + 136))
        {
          v172 = 0;
          v173 = 0;
          v170 = 0;
          v171 = 0;
          v167 = 0;
          v164 = 0;
          strcpy(v176, "partofspeech");
          *a5 = 1;
          v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v173 + 2);
          if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, HIWORD(v173), 0, &v163) & 0x80000000) == 0 && v163 == 1)
          {
            v11 = (*(*(a1 + 56) + 176))(a3, a4, HIWORD(v173), 0, &__s, &v172 + 2);
            if ((v11 & 0x80000000) == 0 && HIWORD(v172) >= 2u)
            {
              memset(v175, 0, sizeof(v175));
              v15 = strlen(__s);
              v16 = heap_Alloc(*(*a1 + 8), (v15 + 129));
              *(a1 + 88) = v16;
              if (!v16)
              {
                goto LABEL_154;
              }

              *v16 = 0;
              v21 = strlen(__s);
              v22 = heap_Alloc(*(*a1 + 8), (v21 + 129));
              *(a1 + 96) = v22;
              if (!v22 || (*v22 = 0, v23 = strlen(__s), v24 = heap_Alloc(*(*a1 + 8), (v23 + 129)), (*(a1 + 104) = v24) == 0))
              {
LABEL_154:
                log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v17, v18, v19, v20, v147);
                v88 = 8202;
LABEL_155:
                v11 = v88 | 0x89E00000;
                goto LABEL_156;
              }

              *v24 = 0;
              v25 = strlen(__s);
              v26 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v173), &v173);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v30 = 0;
              v153 = 0;
              v31 = 0;
              v158 = 0;
              v32 = 0;
              v159 = (v25 + 1);
              v160 = 0;
              v33 = 1;
              v154 = 1;
              while (1)
              {
                if (!v173)
                {
                  if (!v33)
                  {
                    ssft_qsort(__s2, v160, 82, compare_1);
                    if (v160)
                    {
                      v75 = 0;
                      do
                      {
                        if (v75)
                        {
                          if (__s2[v75])
                          {
                            *(*(a1 + 96) + strlen(*(a1 + 96))) = 92;
                          }

                          strcat(*(a1 + 96), &__s2[v75]);
                          if (__s2[v75 + 40])
                          {
                            v76 = *(a1 + 104);
                            if (*v76)
                            {
                              *&v76[strlen(*(a1 + 104))] = 92;
                            }
                          }
                        }

                        else
                        {
                          strcat(*(a1 + 96), __s2);
                        }

                        strcat(*(a1 + 104), &__s2[v75 + 40]);
                        v75 += 82;
                      }

                      while (82 * v160 != v75);
                    }
                  }

                  v157 = v31;
                  v77 = v31;
                  if (v31 <= v153 && v158 <= v153)
                  {
                    v92 = v153 - v31;
                    if (v92 >= 1)
                    {
                      v93 = 0;
                      do
                      {
                        *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                        ++v93;
                      }

                      while (v92 > v93);
                    }

                    if (v153 - v158 >= 1)
                    {
                      v94 = 0;
                      do
                      {
                        *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                        ++v94;
                      }

                      while (v153 - v158 > v94);
                    }
                  }

                  else
                  {
                    if (v31 <= v158)
                    {
                      v78 = v158;
                    }

                    else
                    {
                      v78 = v31;
                    }

                    v79 = v78 - v153;
                    if (v79 >= 1)
                    {
                      v80 = 0;
                      v81 = v154;
                      do
                      {
                        if (v81 << 7 == v32)
                        {
                          v82 = v159 + (++v81 << 7);
                          v83 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v82);
                          if (!v83)
                          {
                            goto LABEL_154;
                          }

                          *(a1 + 88) = v83;
                          v84 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v82);
                          if (!v84)
                          {
                            goto LABEL_154;
                          }

                          *(a1 + 96) = v84;
                          v85 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v82);
                          if (!v85)
                          {
                            goto LABEL_154;
                          }

                          *(a1 + 104) = v85;
                        }

                        *(*(a1 + 88) + strlen(*(a1 + 88))) = 126;
                        ++v80;
                        ++v32;
                      }

                      while (v79 > v80);
                    }

                    if (v158 <= v157)
                    {
                      v95 = v77 - v158;
                      if (v95 >= 1)
                      {
                        v96 = 0;
                        do
                        {
                          *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                          ++v96;
                        }

                        while (v95 > v96);
                      }
                    }

                    else
                    {
                      v86 = v158 - v77;
                      if (v86 >= 1)
                      {
                        v87 = 0;
                        do
                        {
                          *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                          ++v87;
                        }

                        while (v86 > v87);
                      }
                    }
                  }

                  v148 = *(a1 + 88);
                  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L1: %s", v27, v28, v29, v176);
                  v97 = strlen(*(a1 + 88));
                  v26 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 0, *(a1 + 88), v97);
                  if ((v26 & 0x80000000) != 0)
                  {
                    goto LABEL_259;
                  }

                  v149 = *(a1 + 96);
                  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L2: %s", v98, v99, v100, v176);
                  v101 = strlen(*(a1 + 96));
                  v26 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 1, *(a1 + 96), v101);
                  if ((v26 & 0x80000000) != 0)
                  {
                    goto LABEL_259;
                  }

                  v150 = *(a1 + 104);
                  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L3: %s", v102, v103, v104, v176);
                  v105 = strlen(*(a1 + 104));
                  v26 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 2, *(a1 + 104), v105);
                  if ((v26 & 0x80000000) != 0 || (v26 = (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), v176), (v26 & 0x80000000) != 0) || (v26 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 1, &v166, &v164), (v26 & 0x80000000) != 0) || (v166[v164] = 0, log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O2: %s", v106, v107, v108, v176), v26 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &v165, &v164), (v26 & 0x80000000) != 0))
                  {
LABEL_259:
                    v11 = v26;
                  }

                  else
                  {
                    v165[v164] = 0;
                    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O3: %s", v109, v110, v111, v176);
                    v11 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v173), &v173);
                    if ((v11 & 0x80000000) == 0)
                    {
                      v112 = v173;
                      if (v173)
                      {
                        v113 = 0;
                        LODWORD(v114) = 0;
                        v115 = 0;
                        v116 = 0;
                        v117 = 0;
                        v118 = 1;
                        while (1)
                        {
                          v26 = (*(*(a1 + 56) + 168))(a3, a4, v112, 0, 1, &v170, &v172 + 2);
                          if ((v26 & 0x80000000) != 0)
                          {
                            goto LABEL_259;
                          }

                          if (v170 <= 0xA && ((1 << v170) & 0x610) != 0)
                          {
                            v26 = (*(*(a1 + 56) + 168))(a3, a4, v173, 1, 1, &v171 + 2, &v172 + 2);
                            if ((v26 & 0x80000000) != 0)
                            {
                              goto LABEL_259;
                            }

                            v26 = (*(*(a1 + 56) + 176))(a3, a4, v173, 5, &__s1, &v172 + 2);
                            if ((v26 & 0x80000000) != 0)
                            {
                              goto LABEL_259;
                            }

                            if (v118 == 1 || v117 != HIWORD(v171))
                            {
                              v116 = v166;
                              for (i = v166 + 1; ; ++i)
                              {
                                v121 = *v116;
                                if (v121 != 32 && v121 != 126)
                                {
                                  break;
                                }

                                v166 = ++v116;
                              }

                              while (v121)
                              {
                                if (v121 == 32 || v121 == 126)
                                {
                                  v166 = i;
                                  *(i - 1) = 0;
                                  break;
                                }

                                v166 = i;
                                v122 = *i++;
                                LOBYTE(v121) = v122;
                              }

                              v115 = v165;
                              for (j = v165 + 1; ; ++j)
                              {
                                v124 = *v115;
                                if (v124 != 32 && v124 != 126)
                                {
                                  break;
                                }

                                v165 = ++v115;
                              }

                              while (v124)
                              {
                                if (v124 == 32 || v124 == 126)
                                {
                                  v165 = j;
                                  *(j - 1) = 0;
                                  break;
                                }

                                v165 = j;
                                v125 = *j++;
                                LOBYTE(v124) = v125;
                              }
                            }

                            if (v117 != HIWORD(v171))
                            {
                              if (v114 == 1)
                              {
                                if (v113)
                                {
                                  v114 = v113;
                                  v132 = v175;
                                  while (1)
                                  {
                                    v133 = *v132++;
                                    v26 = (*(*(a1 + 56) + 192))(a3, a4, v133);
                                    if ((v26 & 0x80000000) != 0)
                                    {
                                      goto LABEL_259;
                                    }

                                    if (!--v114)
                                    {
                                      goto LABEL_227;
                                    }
                                  }
                                }
                              }

                              else if (v113)
                              {
                                v126 = v113;
                                v127 = v175;
                                do
                                {
                                  v162 = 0;
                                  v129 = *v127++;
                                  v128 = v129;
                                  v26 = (*(*(a1 + 56) + 176))(a3, a4, v129, 5, &v162, &v172 + 2);
                                  if ((v26 & 0x80000000) != 0)
                                  {
                                    goto LABEL_259;
                                  }

                                  v130 = strchr(v162, 92);
                                  if (v130)
                                  {
                                    *v130 = 0;
                                  }

                                  v26 = (*(*(a1 + 56) + 176))(a3, a4, v128, 6, &v168, &v172 + 2);
                                  if ((v26 & 0x80000000) != 0)
                                  {
                                    goto LABEL_259;
                                  }

                                  v131 = strchr(v168, 92);
                                  if (v131)
                                  {
                                    *v131 = 0;
                                  }
                                }

                                while (--v126);
                              }

                              LODWORD(v114) = 0;
LABEL_227:
                              v113 = 0;
                            }

                            if (v116 && v115 && ((v134 = __s1, strstr(__s1, v116)) || *v116 == 42 && !v116[1] || *v134 == 42 && !v134[1]))
                            {
                              v135 = strlen(v116);
                              v26 = (*(*(a1 + 56) + 160))(a3, a4, v173, 5, (v135 + 1), v116, &v172);
                              if ((v26 & 0x80000000) != 0)
                              {
                                goto LABEL_259;
                              }

                              v136 = strlen(v115);
                              v26 = (*(*(a1 + 56) + 160))(a3, a4, v173, 6, (v136 + 1), v115, &v172);
                              if ((v26 & 0x80000000) != 0)
                              {
                                goto LABEL_259;
                              }

                              LODWORD(v114) = 1;
                            }

                            else
                            {
                              *(v175 + v113++) = v173;
                            }

                            v118 = 0;
                            v117 = HIWORD(v171);
                          }

                          v11 = (*(*(a1 + 56) + 120))(a3, a4, v173, &v173);
                          if ((v11 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v112 = v173;
                          if (!v173)
                          {
                            if (v114 == 1)
                            {
                              if (v113)
                              {
                                v137 = v113 - 1;
                                v138 = v175;
                                do
                                {
                                  v139 = v137;
                                  v140 = *v138++;
                                  v11 = (*(*(a1 + 56) + 192))(a3, a4, v140);
                                  if ((v11 & 0x80000000) != 0)
                                  {
                                    break;
                                  }

                                  v137 = v139 - 1;
                                }

                                while (v139);
                              }

                              break;
                            }

                            if (!v113)
                            {
                              break;
                            }

                            v141 = v113;
                            v142 = v175;
                            while (1)
                            {
                              v144 = *v142++;
                              v143 = v144;
                              v26 = (*(*(a1 + 56) + 176))(a3, a4, v144, 5, &__s1, &v172 + 2);
                              if ((v26 & 0x80000000) != 0)
                              {
                                goto LABEL_259;
                              }

                              v145 = strchr(__s1, 92);
                              if (v145)
                              {
                                *v145 = 0;
                              }

                              v11 = (*(*(a1 + 56) + 176))(a3, a4, v143, 6, &v168, &v172 + 2);
                              if ((v11 & 0x80000000) == 0)
                              {
                                v146 = strchr(v168, 92);
                                if (v146)
                                {
                                  *v146 = 0;
                                }

                                if (--v141)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_156;
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_156:
                  v89 = *(a1 + 88);
                  if (v89)
                  {
                    heap_Free(*(*a1 + 8), v89);
                  }

                  *(a1 + 88) = 0;
                  v90 = *(a1 + 96);
                  if (v90)
                  {
                    heap_Free(*(*a1 + 8), v90);
                  }

                  *(a1 + 96) = 0;
                  v91 = *(a1 + 104);
                  if (v91)
                  {
                    heap_Free(*(*a1 + 8), v91);
                  }

                  *(a1 + 104) = 0;
                  goto LABEL_23;
                }

                v26 = (*(*(a1 + 56) + 168))(a3, a4);
                if ((v26 & 0x80000000) != 0)
                {
                  goto LABEL_259;
                }

                if (v170 <= 0xA && ((1 << v170) & 0x610) != 0)
                {
                  break;
                }

LABEL_123:
                v11 = (*(*(a1 + 56) + 120))(a3, a4, v173, &v173);
                if ((v11 & 0x80000000) != 0)
                {
                  goto LABEL_156;
                }
              }

              v26 = (*(*(a1 + 56) + 168))(a3, a4, v173, 1, 1, &v171 + 2, &v172 + 2);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v26 = (*(*(a1 + 56) + 168))(a3, a4, v173, 2, 1, &v171, &v172 + 2);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v26 = (*(*(a1 + 56) + 176))(a3, a4, v173, 5, &__s1, &v172 + 2);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v26 = (*(*(a1 + 56) + 176))(a3, a4, v173, 6, &v168, &v172 + 2);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v26 = (*(*(a1 + 56) + 168))(a3, a4, v173, 7, 1, &v167, &v172 + 2);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v35 = v160;
              if (v33 != 1 && HIWORD(v171) == v30)
              {
LABEL_98:
                if (v35)
                {
                  v156 = v31;
                  v60 = 0;
                  v61 = 0;
                  v63 = v168;
                  v62 = __s1;
                  v160 = v35;
                  v64 = v35;
                  v65 = __s2;
                  v152 = v35;
                  do
                  {
                    if (!strcmp(v62, v65))
                    {
                      v61 = 1;
                    }

                    if (!strcmp(v63, v65 + 40))
                    {
                      v60 = 1;
                    }

                    v65 += 82;
                    --v64;
                  }

                  while (v64);
                  v66 = v60 == 0;
                  if (v61 && v60)
                  {
                    v31 = v156;
LABEL_122:
                    v33 = 0;
                    v30 = HIWORD(v171);
                    goto LABEL_123;
                  }

                  v31 = v156;
                  if (v61)
                  {
                    __s2[82 * v152] = 0;
                    v67 = v160;
                    if (v60)
                    {
LABEL_111:
                      v68 = v67;
                      __s2[82 * v67 + 40] = 0;
LABEL_121:
                      v160 = (v67 + 1);
                      *&__s2[82 * v68 + 80] = v167;
                      goto LABEL_122;
                    }

LABEL_117:
                    v68 = v67;
                    v72 = v67;
                    __strcpy_chk();
                    if (v158)
                    {
                      v73 = v158 + 1;
                    }

                    else
                    {
                      v73 = 0;
                    }

                    v74 = strlen(v168);
                    v67 = v72;
                    v158 = v73 + v74;
                    goto LABEL_121;
                  }

                  LODWORD(v35) = v160;
                }

                else
                {
                  v66 = 1;
                }

                v69 = v35;
                __strcpy_chk();
                if (v31)
                {
                  v70 = v31 + 1;
                }

                else
                {
                  v70 = 0;
                }

                v71 = strlen(__s1);
                v67 = v69;
                v31 = v70 + v71;
                if (!v66)
                {
                  goto LABEL_111;
                }

                goto LABEL_117;
              }

              v151 = v33;
              if (!v33)
              {
                ssft_qsort(__s2, v160, 82, compare_1);
                if (v160)
                {
                  v36 = 0;
                  do
                  {
                    if (v36)
                    {
                      v37 = *(a1 + 96);
                      if (__s2[v36] && *v37 && v37[strlen(*(a1 + 96)) - 1] != 32)
                      {
                        *&v37[strlen(v37)] = 92;
                        v37 = *(a1 + 96);
                      }

                      strcat(v37, &__s2[v36]);
                      if (__s2[v36 + 40])
                      {
                        v38 = *(a1 + 104);
                        if (*v38)
                        {
                          if (v38[strlen(*(a1 + 104)) - 1] != 32)
                          {
                            *&v38[strlen(v38)] = 92;
                          }
                        }
                      }
                    }

                    else
                    {
                      strcat(*(a1 + 96), __s2);
                    }

                    strcat(*(a1 + 104), &__s2[v36 + 40]);
                    v36 += 82;
                  }

                  while (82 * v160 != v36);
                }

                v35 = 0;
              }

              v39 = v31;
              v40 = v154;
              v161 = v35;
              if (v31 <= v153 && v158 <= v153)
              {
                v52 = v153 - v31;
                if (v52 >= 1)
                {
                  v53 = 0;
                  do
                  {
                    *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                    ++v53;
                  }

                  while (v52 > v53);
                }

                if (v153 - v158 >= 1)
                {
                  v54 = 0;
                  v55 = v151;
                  do
                  {
                    *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                    ++v54;
                  }

                  while (v153 - v158 > v54);
                  v40 = v154;
                  goto LABEL_94;
                }

                v40 = v154;
              }

              else
              {
                v155 = v31;
                if (v31 <= v158)
                {
                  v41 = v158;
                }

                else
                {
                  v41 = v31;
                }

                v42 = v41 - v153;
                if (v42 >= 1)
                {
                  v43 = 0;
                  do
                  {
                    if (v40 << 7 == v32)
                    {
                      v44 = (v40 + 1);
                      v45 = v159 + ((v40 + 1) << 7);
                      v46 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v45);
                      if (!v46)
                      {
                        goto LABEL_154;
                      }

                      *(a1 + 88) = v46;
                      v47 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v45);
                      if (!v47)
                      {
                        goto LABEL_154;
                      }

                      *(a1 + 96) = v47;
                      v48 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v45);
                      if (!v48)
                      {
                        goto LABEL_154;
                      }

                      *(a1 + 104) = v48;
                    }

                    else
                    {
                      v44 = v40;
                    }

                    *(*(a1 + 88) + strlen(*(a1 + 88))) = 126;
                    ++v43;
                    ++v32;
                    v40 = v44;
                  }

                  while (v42 > v43);
                }

                if (v158 <= v155)
                {
                  v56 = v39 - v158;
                  if (v56 >= 1)
                  {
                    v50 = v40;
                    v57 = 0;
                    do
                    {
                      *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                      ++v57;
                    }

                    while (v56 > v57);
                    goto LABEL_91;
                  }
                }

                else
                {
                  v49 = v158 - v39;
                  if (v49 >= 1)
                  {
                    v50 = v40;
                    v51 = 0;
                    do
                    {
                      *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                      ++v51;
                    }

                    while (v49 > v51);
LABEL_91:
                    v40 = v50;
                  }
                }
              }

              v55 = v151;
LABEL_94:
              if (HIWORD(v171) > v171)
              {
                v88 = 16049;
                goto LABEL_155;
              }

              v154 = v40;
              v153 = Utf8_LengthInUtf8chars(&__s[HIWORD(v171)], v171 - HIWORD(v171));
              if (!v55)
              {
                v58 = HIWORD(v171);
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, HIWORD(v171));
                strncat(*(a1 + 88), &__s[HIWORD(v171) - (v58 - PreviousUtf8Offset)], (v58 - PreviousUtf8Offset));
                *(*(a1 + 96) + strlen(*(a1 + 96))) = 32;
                *(*(a1 + 104) + strlen(*(a1 + 104))) = 32;
              }

              strncat(*(a1 + 88), &__s[HIWORD(v171)], v171 - HIWORD(v171));
              v31 = 0;
              v158 = 0;
              v35 = v161;
              goto LABEL_98;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

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

uint64_t fe_pos_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2313166849;
  }

  result = 0;
  *a2 = &IFePos;
  return result;
}

uint64_t fe_pos_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2313166855;
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

uint64_t statcomp_getDctInfo(void *a1, const char *a2, uint64_t a3, const char **a4, unsigned __int8 *a5, _DWORD *a6)
{
  v18 = 0;
  v17 = 0;
  *a6 = 0;
  v10 = (*(a1[50] + 96))(a1[48], a1[49], "compounds_feature_info", a3, &v18, &v17, a5);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v17;
    if (v17)
    {
      v12 = v18;
      v13 = *a5;
      while (1)
      {
        v14 = *v12;
        v15 = strchr(*v12, v13);
        if (v15)
        {
          if (!strncmp(v14, a2, (v15 - v14)))
          {
            break;
          }
        }

        ++v12;
        if (!--v11)
        {
          return v10;
        }
      }

      *a4 = v14;
      *a6 = 1;
    }
  }

  return v10;
}

uint64_t setStatCOMPFeatureVector(unsigned int a1, uint64_t *a2, unsigned int a3, __int16 a4, uint64_t a5)
{
  v9 = a2[22];
  v10 = a2[23];
  v60 = *(a2[24] + 8 * a1);
  *v61 = *(a2[21] + 8 * a1);
  v11 = a2[19];
  v12 = a2[20];
  v64 = 0;
  v59 = *(v10 + 8 * a1);
  v63 = 0;
  v62 = 0;
  v13 = (a4 - a3 + 1);
  v18 = heap_Calloc(*(*a2 + 8), 1, 8 * v13 + 8);
  v19 = *a2;
  if (!v18)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v20 = heap_Calloc(*(v19 + 8), 1, 8 * v13 + 8);
  if (!v20)
  {
LABEL_11:
    v19 = *a2;
LABEL_13:
    log_OutPublic(*(v19 + 32), "FE_POS", 35000, 0, v14, v15, v16, v17, v50);
    DctInfo = 2313166858;
    goto LABEL_14;
  }

  if (v13)
  {
    v55 = a5;
    v56 = v12;
    v54 = v9;
    v21 = 0;
    v58 = a1;
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

      strncpy(v24, (a2[60] + *(a2[54] + v22)), *(a2[54] + v22 + 2) - *(a2[54] + v22));
      v18[v21][*(a2[54] + v22 + 2) - *(a2[54] + v22)] = 0;
      v25 = strlen(*(a2[54] + v22 + 56));
      v26 = heap_Calloc(*(*a2 + 8), 1, v25 + 1);
      *(v20 + 8 * v21) = v26;
      if (!v26)
      {
        goto LABEL_11;
      }

      strcpy(v26, *(a2[54] + v22 + 56));
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
          v52 = v13;
          v53 = v11 + 20 * a1;
          v51 = v20;
          while (1)
          {
            v31 = *(v53 + 2 * v30);
            DctInfo = statcomp_getDctInfo(a2, *(v56 + 8 * v58), v18[v30], &v63, &v64, &v62);
            if ((DctInfo & 0x80000000) != 0)
            {
              goto LABEL_14;
            }

            v57 = v30;
            v32 = v62;
            if (v62 == 1)
            {
              v33 = v63;
              v34 = v64;
              v35 = *(*(v54 + 8 * v58) + 8);
              v36 = strchr(v63, v64);
              v37 = v33;
              if (v36)
              {
                *v36 = 0;
                v37 = v36 + 1;
              }

              if (v35)
              {
                v38 = v59;
                do
                {
                  v39 = strchr(v37, v34);
                  if (v39)
                  {
                    *v39++ = 0;
                  }

                  *v38++ = v37 - v33;
                  v37 = v39;
                  --v35;
                }

                while (v35);
              }
            }

            v40 = *v61;
            if (*(*v61 + 1296) >= 2u)
            {
              break;
            }

            v20 = v51;
            v13 = v52;
LABEL_43:
            v30 = v57 + 1;
            if (v57 + 1 == v13)
            {
              goto LABEL_14;
            }
          }

          v41 = 0;
          v42 = v63;
          v20 = v51;
          v13 = v52;
          v43 = v60;
          while (2)
          {
            v44 = v41;
            v45 = *(v55 + 8 * v41);
            if (*v45 != 61 || v45[1] || (v46 = (*v43 + 12 * v44), *v46 != v31) || *(v46 + 1))
            {
              if (v32 == 1)
              {
                v47 = (*v43 + 12 * v44);
                if (*v47 == v31)
                {
                  v48 = *(v47 + 1);
                  if (v48 == 2 || v48 == 1)
                  {
                    v49 = statcomp_setFeature(v40, *a2, v44, v55, &v42[v59[v47[4]]]);
LABEL_38:
                    v43 = v60;
                    v40 = *v61;
                    DctInfo = v49;
                    if ((v49 & 0x80000000) != 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }
              }

              v41 = v44 + 1;
              if (*(v40 + 1296) - 1 <= (v44 + 1))
              {
                goto LABEL_43;
              }

              continue;
            }

            break;
          }

          v49 = statcomp_setDynamicFeature(*a2, v40, v46[4], v44, v55, v18, v51, v52, v57);
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

    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp(v7, "YES") || !strcmp(v7, "yes"))
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t statcomp_processUserMarkup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v62 + 2);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_61:
    v9 = v8;
    goto LABEL_62;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v62), 0, &v61 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v61) == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v62), 0, &v57, &v61);
    if ((v9 & 0x80000000) == 0 && v61 >= 2u)
    {
      *(a4 + 424) = 0;
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v62), &v62);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v10 = v62;
      if (!v62)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v11 = (*(a1 + 168))(a2, a3, v10, 0, 1, &v59, &v61);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_63:
          v9 = v11;
          goto LABEL_64;
        }

        if (v59 <= 0xA && ((1 << v59) & 0x610) != 0)
        {
          v11 = (*(a1 + 168))(a2, a3, v62, 1, 1, &v58, &v61);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          v11 = (*(a1 + 168))(a2, a3, v62, 2, 1, &v58 + 2, &v61);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (v58 > HIWORD(v58))
          {
            v52 = 16049;
            goto LABEL_68;
          }

          v11 = (*(a1 + 184))(a2, a3, v62, 14, &v61 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (HIWORD(v61) == 1)
          {
            v11 = (*(a1 + 176))(a2, a3, v62, 14, &v56, &v61);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (hlp_NLUStrFind(v56, "S_COMP", &v55, &v54))
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

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v56);
              if ((v8 & 0x80000000) != 0)
              {
                goto LABEL_61;
              }

              v18 = v54;
              if (v54)
              {
                v19 = v55 + 1;
                v20 = v54 - 1;
                v21 = v64;
                v22 = &v62 + 3;
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
                __strncpy_chk();
                v22[v54] = 0;
                hlp_NLUStrSet(*(a4 + 408), "S_COMPPOS", __s);
              }

              else
              {
LABEL_28:
                v64[v18] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "S_COMP", v64);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v24, v25, v26, v56);
              v27 = strlen(*(a4 + 408));
              v11 = (*(a1 + 160))(a2, a3, v62, 14, (v27 + 1), *(a4 + 408), &v60);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              **(a4 + 408) = 0;
            }

            if (hlp_NLUStrFind(v56, "E_COMP", &v55, &v54))
            {
              if (!*(a4 + 424))
              {
                v28 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v28;
                if (!v28)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v56);
              if ((v8 & 0x80000000) != 0)
              {
                goto LABEL_61;
              }

              v29 = v54;
              if (v54)
              {
                v30 = v55 + 1;
                v31 = v54 - 1;
                v32 = v64;
                v33 = &v62 + 3;
                while (1)
                {
                  v34 = *(v30 - 1);
                  if (v34 == 43)
                  {
                    break;
                  }

                  *v32++ = v34;
                  ++v30;
                  --v33;
                  if (--v31 == -1)
                  {
                    goto LABEL_41;
                  }
                }

                *v32 = 0;
                __strncpy_chk();
                v33[v54] = 0;
                hlp_NLUStrSet(*(a4 + 408), "E_COMPPOS", __s);
              }

              else
              {
LABEL_41:
                v64[v29] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "E_COMP", v64);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v35, v36, v37, v56);
              v38 = strlen(*(a4 + 408));
              v11 = (*(a1 + 160))(a2, a3, v62, 14, (v38 + 1), *(a4 + 408), &v60);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              **(a4 + 408) = 0;
            }

            if (hlp_NLUStrFind(v56, "I_COMP", &v55, &v54))
            {
              if (!*(a4 + 424))
              {
                v39 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v39;
                if (!v39)
                {
LABEL_67:
                  log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0, v14, v15, v16, v17, v53);
                  v52 = 8202;
LABEL_68:
                  v9 = v52 | 0x89E00000;
LABEL_64:
                  if (*(a4 + 424))
                  {
                    heap_Free(*(*a4 + 8), *(a4 + 408));
                    *(a4 + 408) = 0;
                    *(a4 + 424) = 0;
                  }

                  break;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v56);
              if ((v8 & 0x80000000) != 0)
              {
                goto LABEL_61;
              }

              v40 = v54;
              if (v54)
              {
                v41 = v55 + 1;
                v42 = v54 - 1;
                v43 = v64;
                v44 = &v62 + 3;
                while (1)
                {
                  v45 = *(v41 - 1);
                  if (v45 == 43)
                  {
                    break;
                  }

                  *v43++ = v45;
                  ++v41;
                  --v44;
                  if (--v42 == -1)
                  {
                    goto LABEL_54;
                  }
                }

                *v43 = 0;
                __strncpy_chk();
                v44[v54] = 0;
                hlp_NLUStrSet(*(a4 + 408), "I_COMPPOS", __s);
              }

              else
              {
LABEL_54:
                v64[v40] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "I_COMP", v64);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v46, v47, v48, v56);
              v49 = strlen(*(a4 + 408));
              v11 = (*(a1 + 160))(a2, a3, v62, 14, (v49 + 1), *(a4 + 408), &v60);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              **(a4 + 408) = 0;
            }
          }
        }

        v9 = (*(a1 + 120))(a2, a3, v62, &v62);
        if ((v9 & 0x80000000) == 0)
        {
          v10 = v62;
          if (v62)
          {
            continue;
          }
        }

        goto LABEL_64;
      }
    }
  }

LABEL_62:
  v50 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t statcomp_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  __s = 0;
  v91 = 0;
  v90 = 0;
  a4[107] = log_GetLogLevel(*(*a4 + 32)) > 4;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v99 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v99), 0, &v98);
  if ((v9 & 0x80000000) == 0 && v98 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v99), 0, &__s, &v97);
    if ((v9 & 0x80000000) == 0 && v97 >= 2u)
    {
      v10 = strlen(__s);
      v11 = v10;
      v12 = heap_Calloc(*(*a4 + 8), 1, v10 + 1);
      *(a4 + 60) = v12;
      if (v12)
      {
        strcpy(v12, __s);
        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : start processing=%s", v17, v18, v19, *(a4 + 60));
        v20 = heap_Calloc(*(*a4 + 8), 1, 1024);
        *(a4 + 51) = v20;
        if (v20)
        {
          *(a4 + 212) = 1024;
          v21 = heap_Calloc(*(*a4 + 8), 1, 1024);
          *(a4 + 52) = v21;
          if (v21)
          {
            v8 = (*(a1 + 104))(a2, a3, 2, HIWORD(v99), &v99);
            if ((v8 & 0x80000000) == 0)
            {
              v86 = v10;
              while (v99)
              {
                v8 = (*(a1 + 168))(a2, a3);
                if ((v8 & 0x80000000) != 0)
                {
                  return v8;
                }

                if (v96 <= 0xA && ((1 << v96) & 0x610) != 0)
                {
                  v8 = (*(a1 + 168))(a2, a3, v99, 1, 1, &v91, &v97);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v8 = (*(a1 + 168))(a2, a3, v99, 2, 1, &v91 + 2, &v97);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v91 > HIWORD(v91))
                  {
                    return 2313174705;
                  }

                  v8 = (*(a1 + 184))(a2, a3, v99, 17, &v98);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v98 == 1)
                  {
                    v8 = (*(a1 + 168))(a2, a3, v99, 17, 1, &v90, &v97);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }
                  }

                  else
                  {
                    v90 = v96 - 9 <= 1;
                  }

                  v8 = (*(a1 + 176))(a2, a3, v99, 3, &v92, &v97);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (HIWORD(v91) == v91)
                  {
                    log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v23, v24, v25, HIWORD(v91));
                  }

                  else
                  {
                    v8 = (*(a1 + 176))(a2, a3, v99, 14, &v95, &v97);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v26 = v95;
                    v27 = v90;
                    __src = v92;
                    v103 = 0;
                    v102 = 0;
                    v101 = 0;
                    v100 = 0;
                    v28 = strlen(v95);
                    v29 = heap_Calloc(*(*a4 + 8), 1, (v28 + 1));
                    if (!v29)
                    {
                      goto LABEL_69;
                    }

                    v89 = v29;
                    strcpy(v29, v26);
                    v33 = *(a4 + 220);
                    if (*(a4 + 220))
                    {
                      v34 = 0;
                      v35 = (*(a4 + 54) + 2);
                      while (1)
                      {
                        v36 = *(v35 - 1);
                        if (__PAIR64__(*v35, v36) == __PAIR64__(HIWORD(v91), v91))
                        {
                          break;
                        }

                        if (v91 >= v36 && HIWORD(v91) <= *v35)
                        {
                          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", v30, v31, v32, v91);
                          break;
                        }

                        ++v34;
                        v35 += 48;
                        if (v33 == v34)
                        {
                          goto LABEL_36;
                        }
                      }
                    }

                    else
                    {
LABEL_36:
                      if (*(a4 + 221))
                      {
                        v37 = *(a4 + 54);
                        if (v33 + 2 > *(a4 + 221))
                        {
                          v38 = heap_Realloc(*(*a4 + 8), v37, 96 * *(a4 + 221) + 2016);
                          if (!v38)
                          {
                            goto LABEL_83;
                          }

                          *(a4 + 54) = v38;
                          bzero((v38 + 96 * *(a4 + 220)), 0x780uLL);
                          *(a4 + 221) += 20;
                          v37 = *(a4 + 54);
                        }
                      }

                      else
                      {
                        v43 = heap_Calloc(*(*a4 + 8), 1, 4801);
                        *(a4 + 54) = v43;
                        if (!v43)
                        {
                          goto LABEL_83;
                        }

                        v37 = v43;
                        *(a4 + 221) = 50;
                      }

                      v44 = v89;
                      v45 = (v37 + 96 * *(a4 + 220));
                      *v45 = v91;
                      v45[1] = v27 == 1;
                      if (hlp_NLUStrFind(v89, "POS", &v103, &v102))
                      {
                        v46 = strlen(v103);
                        v47 = heap_Calloc(*(*a4 + 8), 1, (v46 + 1));
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 32) = v47;
                        if (!v47)
                        {
                          goto LABEL_83;
                        }

                        strcpy(v47, v103);
                        *(*(*(a4 + 54) + 96 * *(a4 + 220) + 32) + v102) = 0;
                        v44 = v89;
                      }

                      if (hlp_NLUStrFind(v44, "S_COMP", &v101, &v100))
                      {
                        v48 = strlen(v101);
                        v49 = heap_Calloc(*(*a4 + 8), 1, (v48 + 1));
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 40) = v49;
                        if (!v49)
                        {
                          goto LABEL_83;
                        }

                        strcpy(v49, v101);
                        *(*(*(a4 + 54) + 96 * *(a4 + 220) + 40) + v100) = 0;
                        v44 = v89;
                      }

                      if (hlp_NLUStrFind(v44, "E_COMP", &v101, &v100))
                      {
                        v50 = strlen(v101);
                        v51 = heap_Calloc(*(*a4 + 8), 1, (v50 + 1));
                        *(*(a4 + 54) + 96 * *(a4 + 220) + 48) = v51;
                        if (!v51)
                        {
                          goto LABEL_83;
                        }

                        strcpy(v51, v101);
                        *(*(*(a4 + 54) + 96 * *(a4 + 220) + 48) + v100) = 0;
                      }

                      v87 = v11;
                      v52 = *(a4 + 54);
                      v53 = *(a4 + 220);
                      v54 = v52 + 96 * *(a4 + 220);
                      *(v54 + 12) = 0;
                      v55 = (v54 + 12);
                      v55[2] = 0;
                      v56 = v55 + 2;
                      v57 = HIWORD(v91);
                      v58 = *(a4 + 60);
                      if (strlen(v58) > HIWORD(v91) && v58[HIWORD(v91)] == 95)
                      {
                        v59 = 1;
                        *v55 = 1;
                      }

                      else
                      {
                        v59 = 0;
                      }

                      if (v91)
                      {
                        if (v58[v91 - 1] == 95)
                        {
                          *v56 = 1;
                          if (v59)
                          {
                            *v55 = 0;
                            *v56 = 0;
                          }
                        }
                      }

                      v60 = v58[v57 - 1];
                      v61 = v60 <= 0x3B && ((1 << v60) & 0xC00100000000000) != 0;
                      v11 = v87;
                      *(v52 + 96 * v53 + 24) = v61;
                      v62 = strlen(__src);
                      v63 = heap_Calloc(*(*a4 + 8), 1, (v62 + 1));
                      *(*(a4 + 54) + 96 * *(a4 + 220) + 56) = v63;
                      if (!v63)
                      {
LABEL_83:
                        v9 = 2313166858;
                        log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0, v39, v40, v41, v42, v85);
                        heap_Free(*(*a4 + 8), v89);
                        return v9;
                      }

                      strcpy(v63, __src);
                      ++*(a4 + 220);
                    }

                    heap_Free(*(*a4 + 8), v89);
                  }
                }

                v9 = (*(a1 + 120))(a2, a3, v99, &v99);
                if ((v9 & 0x80000000) != 0)
                {
                  return v9;
                }
              }

              v8 = (*(a1 + 104))(a2, a3, 2, HIWORD(v99), &v99);
              if ((v8 & 0x80000000) == 0)
              {
                while (v99)
                {
                  v8 = (*(a1 + 168))(a2, a3);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v96 == 6)
                  {
                    v8 = (*(a1 + 168))(a2, a3, v99, 1, 1, &v91, &v97);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v8 = (*(a1 + 168))(a2, a3, v99, 2, 1, &v91 + 2, &v97);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    if (v91 > HIWORD(v91))
                    {
                      return 2313174705;
                    }

                    v8 = (*(a1 + 176))(a2, a3, v99, 4, &v94, &v97);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v74 = addStatCOMPToken(*a4, &v91, v94, a4 + 216, v70, v71, v72, v73);
                    if ((v74 & 0x80000000) != 0)
                    {
                      v9 = v74;
                      if (v74 != -1981800448)
                      {
                        return v9;
                      }
                    }
                  }

                  v9 = (*(a1 + 120))(a2, a3, v99, &v99);
                  if ((v9 & 0x80000000) != 0)
                  {
                    return v9;
                  }
                }

                v8 = validateUserCompoundWords(a4, v64, 0, v65, v66, v67, v68, v69);
                if ((v8 & 0x80000000) == 0)
                {
                  if (v11)
                  {
                    v78 = 0;
                    do
                    {
                      v79 = *(a4 + 60);
                      if (*(v79 + v78) == 95)
                      {
                        *(v79 + v78) = 32;
                      }

                      ++v78;
                    }

                    while (v86 != v78);
                  }

                  v80 = *(a4 + 220);
                  if (*(a4 + 220))
                  {
                    v81 = 0;
                    v82 = (*(a4 + 54) + 20);
                    do
                    {
                      if (*(v82 - 2) == 1)
                      {
                        v81 = 1;
                      }

                      *(v82 - 1) = v81;
                      v83 = *v82;
                      v82 += 24;
                      if (v83 == 1)
                      {
                        v81 = 0;
                      }

                      --v80;
                    }

                    while (v80);
                  }

                  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : internal processing=%s", v75, v76, v77, *(a4 + 60));
                  return printstatCOMPSent(*a4, a4[107], a4 + 51, *(a4 + 52), a4 + 212, (a4 + 108), *(a4 + 60), "after statcomp_getSentenceData()", 0);
                }
              }
            }

            return v8;
          }
        }
      }

LABEL_69:
      v9 = 2313166858;
      log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v85);
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
LABEL_12:
    v20 = a2[1];
LABEL_14:
    v21 = 2313166848;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, a3);
    if (a4[4])
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = (*a4 + v25);
        v35 = *v27;
        v36 = v27[1];
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v22, v23, v24, v26++);
        v25 += 96;
      }

      while (v26 < a4[4]);
    }

    return v21;
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
      goto LABEL_12;
    }
  }

  if (v10 + 1 == v13)
  {
    goto LABEL_14;
  }

  if (v12 >= v13)
  {
    v28 = 0;
    v29 = (v12 - v13);
    v30 = vdupq_n_s32(v29);
    v31 = (v29 + 4) & 0x1FFFC;
    do
    {
      v32 = v13 + v28;
      v33 = vmovn_s32(vcgeq_u32(v30, vorrq_s8(vdupq_n_s32(v28), xmmword_1C37B17D0)));
      if (v33.i8[0])
      {
        *(v14 + 96 * (v13 + v28) + 8) = 1;
      }

      if (v33.i8[2])
      {
        *(v14 + 96 * (v32 + 1) + 8) = 1;
      }

      if (v33.i8[4])
      {
        *(v14 + 96 * (v32 + 2) + 8) = 1;
      }

      if (v33.i8[6])
      {
        *(v14 + 96 * (v32 + 3) + 8) = 1;
      }

      v28 += 4;
    }

    while (v31 != v28);
  }

  return 0;
}

uint64_t validateUserCompoundWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v25, 0, sizeof(v25));
  if (*(a1 + 220))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = a1[54];
      if (*(v13 + v9 + 40))
      {
        if (v12 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : found consecutive S_COMP, assume %s on word %d is incorrect, try to continue...", a6, a7, a8, *(v13 + 96 * v11 + 40));
          v13 = a1[54];
        }

        v12 = 1;
        v11 = v10;
      }

      if (!*(v13 + v9 + 48))
      {
        goto LABEL_13;
      }

      if (v12 != 1)
      {
        break;
      }

      v14 = *(v13 + 96 * v11 + 40);
      if (strcmp(v14, *(v13 + v9 + 48)))
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as S_COMP(%s) and E_COMP(%s) fields differ", v15, v16, v17, v14);
LABEL_12:
        v12 = 0;
        goto LABEL_13;
      }

      v18 = strchr(v14, 43);
      if (!v18)
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as invalid fields in %s", v19, v20, v21, v14);
        goto LABEL_12;
      }

      *v18 = 0;
      v22 = v18 + 1;
      log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "VALID USER COMPOUND WORD ADD from %d to %d", v19, v20, v21, v11);
      v23 = a1[54];
      *(v23 + 96 * v11 + 88) = 1;
      *(v23 + v9 + 89) = 1;
      result = setCOMPValues(a1, v11, v10, v25, v22, v14, 0, "MARKUP", "USER");
      v12 = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_13:
      ++v10;
      v9 += 96;
      if (v10 >= *(a1 + 220))
      {
        return 0;
      }
    }

    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as E_COMP(%s) found without starting S_COMP", a6, a7, a8, *(v13 + v9 + 48));
    goto LABEL_12;
  }

  return 0;
}

uint64_t printstatCOMPSent(uint64_t a1, int a2, const char **a3, char *a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
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

    strncpy(a4, (a7 + *(*a6 + v15)), *(*a6 + v15 + 2) - *(*a6 + v15));
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
    **a3 = 0;
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

double statcomp_freeSentenceData(uint64_t a1)
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

  result = 0.0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  return result;
}

uint64_t statcomp_processCompounds(void **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v348 = *MEMORY[0x1E69E9840];
  v10 = a1[9];
  v11 = a1[39];
  v12 = a1[40];
  v13 = a1[45];
  v14 = a1[46];
  v341 = 0;
  v337 = 0;
  v338 = 0;
  v335 = 0;
  *a2 = 0;
  v336 = 0;
  v339 = 0;
  v340 = 0;
  log_OutText((*a1)[4], "FE_POS", 5, 0, "Compound Processing : with multi-word window=%d", a6, a7, a8, *(a1 + 172));
  v15 = a1[60];
  a1[56] = v15;
  v16 = strlen(v15);
  v17 = heap_Calloc((*a1)[1], 1, (v16 + 1));
  a1[57] = v17;
  if (!v17)
  {
    goto LABEL_332;
  }

  v22 = *(a1 + 220);
  if (*(a1 + 220))
  {
    v23 = 0;
    v24 = (a1[54] + 4);
    do
    {
      v25 = *v24;
      v24 += 12;
      v23 += strlen(v25) + 1;
      --v22;
    }

    while (v22);
    v26 = v23 + 1;
  }

  else
  {
    v26 = 1;
  }

  v27 = heap_Calloc((*a1)[1], 1, v26);
  a1[58] = v27;
  if (!v27)
  {
LABEL_332:
    v119 = 2313166858;
    log_OutPublic((*a1)[4], "FE_POS", 35000, 0, v18, v19, v20, v21, v275);
    goto LABEL_353;
  }

  v305 = v13;
  v306 = v12;
  v307 = v11;
  v308 = v10;
  v28 = *(a1 + 220);
  if (!*(a1 + 220))
  {
LABEL_333:
    v119 = printstatCOMPSent(*a1, *(a1 + 107), a1 + 51, a1[52], a1 + 212, (a1 + 54), a1[60], "after statcomp_processCompounds()", 1);
    if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_346;
    }

    goto LABEL_353;
  }

  v29 = 0;
  v285 = 0;
  v30 = 0;
  while (1)
  {
    v31 = a1[54];
    v32 = v30;
    v33 = &v31[12 * v30];
    if (*(v33 + 2) == 1)
    {
      LODWORD(v34) = v30;
      if (v30 < v28)
      {
        v35 = &v31[12 * v30 + 1];
        v34 = v30;
        while (1)
        {
          v36 = *v35;
          v35 += 24;
          if (v36 != 1)
          {
            break;
          }

          if (v28 == ++v34)
          {
            LODWORD(v34) = v28;
            break;
          }
        }
      }

      if (v30 != v34)
      {
        LODWORD(v30) = (__PAIR64__(v34, v31[12 * v34 + 1]) - 1) >> 32;
        LODWORD(v32) = (v34 - (LODWORD(v31[12 * v34 + 1]) == 0));
      }

      v37 = WORD1(v31[12 * v32]);
      v38 = *v33;
      v39 = v37 - v38;
      if ((v39 & 0xFF00) != 0)
      {
        v40 = 256;
      }

      else
      {
        v40 = v39;
      }

      strncpy(a1[52], a1[60] + v38, v40);
      *(a1[52] + v40) = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip TOK word %s from word %d to %d", v41, v42, v43, a1[52]);
      goto LABEL_64;
    }

    if (*(v33 + 88) == 1)
    {
      if (v30 < v28)
      {
        v44 = &v31[12 * v30 + 11] + 1;
        while (1)
        {
          v45 = *v44;
          v44 += 96;
          if (v45)
          {
            break;
          }

          if (v28 == ++v32)
          {
            LODWORD(v32) = v28;
            LODWORD(v30) = v28;
            goto LABEL_60;
          }
        }

        LODWORD(v30) = v32;
        LODWORD(v32) = v32;
      }

LABEL_60:
      v55 = WORD1(v31[12 * v32]);
      v56 = *v33;
      v57 = v55 - v56;
      if ((v57 & 0xFF00) != 0)
      {
        v58 = 256;
      }

      else
      {
        v58 = v57;
      }

      strncpy(a1[52], a1[60] + v56, v58);
      *(a1[52] + v58) = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip user marked compound word %s from word %d to %d", v59, v60, v61, a1[52]);
      goto LABEL_64;
    }

    *a1[58] = 0;
    *a1[57] = 0;
    v342 = 0;
    v46 = *(a1 + 220);
    v47 = v46 + 1;
    v48 = a1[54];
    if (v46 <= v30)
    {
      v50 = v30;
    }

    else
    {
      v49 = 0;
      v50 = v30;
      while (1)
      {
        v51 = &v48[12 * v50];
        if (*(v51 + 6) == 1 || *(v51 + 88) == 1 || v50 - v29 + 1 >= *(a1 + 172))
        {
          break;
        }

        if (*(v51 + 3) == 1)
        {
          v49 = 1;
          v47 = v50;
        }

        if (HIDWORD(v48[12 * v50 + 2]) == 1)
        {
          v49 = 0;
        }

        if (v46 <= ++v50)
        {
          v50 = *(a1 + 220);
          break;
        }
      }

      if (v50 > v30)
      {
        v50 -= LOBYTE(v48[12 * v50 + 11]) == 1;
      }

      if (v50 > v30)
      {
        v50 -= HIDWORD(v48[12 * v50 + 1]) == 1;
      }

      if (v49 == 1 && !HIDWORD(v48[12 * v50 + 2]))
      {
        v50 = v30;
      }
    }

    v52 = v50 - (v46 == v50);
    if (HIDWORD(v48[12 * v52 + 2]) == 1 && v46 + 1 == v47)
    {
      goto LABEL_64;
    }

    if (v30 <= v52)
    {
      v53 = 0;
      v54 = v30;
      do
      {
        if (HIDWORD(v48[12 * v54 + 1]) == 1)
        {
          v53 = 1;
        }

        ++v54;
      }

      while (v54 <= v52);
      if (v30 <= v52)
      {
        break;
      }
    }

LABEL_56:
    if (v336 == 1)
    {
      v336 = 0;
      heap_Free((*a1)[1], v339);
      v339 = 0;
      if (v340)
      {
        heap_Free((*a1)[1], v340);
        v340 = 0;
      }
    }

LABEL_64:
    v30 = (v30 + 1);
    v29 = v30;
    v28 = *(a1 + 220);
    if (v30 >= v28)
    {
      goto LABEL_333;
    }
  }

  v62 = 0;
  v63 = 0;
  v296 = v29;
  v64 = v52;
  v287 = v8;
  __dst = v14;
  v289 = v29;
  do
  {
    v65 = v64 != v30 && v63 == 0;
    if (!v65)
    {
      break;
    }

    v298 = v64;
    v66 = 3 * v64;
    v332 = v64;
    strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v32]), WORD1(a1[54][12 * v64]) - LOWORD(a1[54][12 * v32]));
    *(a1[52] + WORD1(a1[54][4 * v66]) - LOWORD(a1[54][12 * v32])) = 0;
    if (v30 <= v332)
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = v30;
      do
      {
        v74 = &a1[54][12 * v73];
        if (*(v74 + 12) == 1)
        {
          v72 = 1;
          v71 = 1;
          ++v70;
        }

        v75 = v72 == 0;
        if (*(v74 + 20) == 1)
        {
          v72 = 0;
          v71 = v75;
        }

        ++v73;
      }

      while (v73 <= v332);
      if (v71 == 1 || v70 >= 2u)
      {
        v290 = v62;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "skip bisected %s", v67, v68, v69, a1[52]);
        LODWORD(v64) = v332;
        goto LABEL_85;
      }
    }

    v335 = 0;
    v277 = a1[52];
    log_OutText((*a1)[4], "FE_POS", 5, 0, "processing [%d] %s", v67, v68, v69, v289);
    LOWORD(v64) = v332;
    while (1)
    {
LABEL_89:
      if (v53 == 1)
      {
        inited = isCompoundWordMember(a1, 1, v30, v64, &v342, &v341, &v335);
        v78 = "HYPHEN";
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_335;
        }
      }

      else
      {
        inited = isCompoundWordMember(a1, 0, v30, v64, &v342, &v341, &v335);
        v78 = "OPEN";
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_335;
        }
      }

      ++v335;
      if (v342 == 1)
      {
        break;
      }

      v64 = v332;
      if (!v342)
      {
        v290 = v78;
        v224 = a1[54];
        if (HIDWORD(v224[12 * v298 + 2]) == 1)
        {
          if (v30 <= v332)
          {
            do
            {
              if (HIDWORD(v224[12 * v64 + 1]))
              {
                break;
              }

              v64 = (v64 - 1);
            }

            while (v64 >= v30);
          }

          v63 = 0;
          goto LABEL_86;
        }

LABEL_85:
        v63 = 0;
        v64 = (v64 - 1);
        goto LABEL_86;
      }
    }

    v290 = v78;
    v79 = v341;
    v328 = 15 * v341;
    v80 = strcpy(v305, &v307[*(v306 + HIDWORD(v308[v328]))]);
    strcpy(&v305[strlen(v80)], "_firstword");
    v81 = strcpy(__dst, &v307[*(v306 + HIDWORD(v308[v328]))]);
    strcpy(&__dst[strlen(v81)], "_lastword");
    v82 = a1[9];
    v319 = a1[40];
    v321 = a1[39];
    v342 = 0;
    strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v32]), WORD1(a1[54][12 * v298]) - LOWORD(a1[54][12 * v32]));
    *(a1[52] + WORD1(a1[54][12 * v298]) - LOWORD(a1[54][12 * v32])) = 0;
    v297 = v79;
    v278 = a1[52];
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] Checking Compound Word Membership Filter for [%d] word %s compound rule %d", v83, v84, v85, v296);
    v89 = &v82[v328];
    if (!*(v89 + 32))
    {
      v119 = 0;
      v8 = v287;
LABEL_267:
      v222 = 0;
      v342 = 0;
      v223 = "  [FILTER] FAIL";
      goto LABEL_268;
    }

    v323 = 0;
    v90 = 0;
    v284 = 0;
    v286 = 0;
    v329 = 0;
    v91 = v89[7];
    v93 = v319;
    v92 = v321;
    v318 = v89;
    v309 = v30;
    do
    {
      v316 = 8 * v90;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "  check filter %s", v86, v87, v88, &v92[*(v93 + *(v91 + 8 * v90))]);
      v94 = v89;
      v95 = (v89[7] + 8 * v90);
      v96 = &v92[*(v93 + *v95)];
      v317 = v90;
      if (!strcmp("ALGO_INLEXICON", v96))
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_INLEXICON with ARG %s", v97, v98, v99, &v92[*(v93 + v95[1])]);
        v115 = *(v93 + *(v94[7] + 8 * v90 + 4));
        v116 = a1[9];
        v117 = a1[39];
        v118 = a1[40];
        v345 = 0;
        v343 = 0;
        v342 = 0;
        strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v32]), WORD1(a1[54][12 * v298]) - LOWORD(a1[54][12 * v32]));
        *(a1[57] + WORD1(a1[54][12 * v298]) - LOWORD(a1[54][12 * v32])) = 0;
        strncpy(__s1, a1[57], 0x7FuLL);
        v347 = 0;
        inited = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        v344 = -1;
        v119 = (a1[50][12])(a1[48], a1[49], v117 + *(v118 + HIDWORD(v116[15 * v297])), __s1, &v345, &v344, &v343);
        v30 = v309;
        if ((v119 & 0x80000000) != 0)
        {
          goto LABEL_346;
        }

        if (v344 == 1 && v345)
        {
          v120 = strchr(*v345, v343);
          v93 = v319;
          if (!v120)
          {
            goto LABEL_341;
          }

          v125 = v120;
          *v120 = 0;
          v126 = strcmp(*v345, &v321[v115]);
          v323 = 0;
          if (!v126)
          {
            v323 = 1;
            v342 = 1;
          }

          v127 = strchr(v125 + 1, v343);
          if (!v127)
          {
LABEL_342:
            v269 = 35003;
            goto LABEL_343;
          }

          v128 = v127;
          *v127 = 0;
          if (!v126)
          {
            v196 = strlen(v125 + 1);
            v197 = heap_Calloc((*a1)[1], 1, (v196 + 1));
            v339 = v197;
            v92 = v321;
            if (!v197)
            {
              goto LABEL_339;
            }

            strcpy(v197, v125 + 1);
            v336 = 1;
            v198 = strchr(v128 + 1, v343);
            if (v198)
            {
              *v198 = 0;
              v199 = strlen(v128 + 1);
              v89 = v318;
              if (v199)
              {
                v200 = heap_Calloc((*a1)[1], 1, (v199 + 1));
                v340 = v200;
                if (!v200)
                {
                  goto LABEL_339;
                }

                strcpy(v200, v128 + 1);
                v336 = 1;
              }
            }

            else
            {
              v89 = v318;
            }

            v170 = v316;
            v211 = *(v89[7] + v316);
            LODWORD(v338) = *v89;
            v337 = v211;
            v323 = 1;
            goto LABEL_234;
          }

          v129 = strchr(v127 + 1, v343);
          v92 = v321;
          if (v129)
          {
            *v129 = 0;
          }
        }

        else
        {
          v323 = 0;
          v342 = 0;
          v93 = v319;
          v92 = v321;
        }

LABEL_232:
        v89 = v318;
        goto LABEL_233;
      }

      if (!strcmp("ALGO_EXTENDEDLEXMATCH", v96))
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDLEXMATCH with ARG %s", v100, v101, v102, &v92[*(v93 + v95[1])]);
        v314 = 0;
        v288 = 0;
        __s2 = 0;
        v300 = 0;
        v130 = 0;
        v310 = 0;
        v302 = 0;
        v312 = 0;
        v89 = v318;
        v311 = *(v93 + *(v318[7] + 8 * v90 + 4));
        v303 = a1[46];
        v304 = a1[45];
        v345 = 0;
        v343 = 0;
        v342 = 0;
        v131 = 1;
        v30 = v309;
        while (1)
        {
          v324 = v130;
          v132 = v131;
          v344 = -1;
          v133 = a1[57];
          v134 = a1[60];
          v135 = a1[54];
          if (v132)
          {
            strncpy(v133, &v134[LOWORD(v135[12 * v32])], WORD1(v135[12 * v32]) - LOWORD(v135[12 * v32]));
            *(a1[57] + WORD1(a1[54][12 * v32]) - LOWORD(a1[54][12 * v32])) = 0;
            v136 = (a1[50][12])(a1[48], a1[49], v304, a1[57], &v345, &v344, &v343);
            v119 = v136;
            if ((v136 & 0x80000000) != 0)
            {
              goto LABEL_346;
            }

            if (v344 != 1 || (v140 = "MATCH ON FIRST WORD", !v345))
            {
              v329 = v136;
              v141 = v324;
              goto LABEL_152;
            }
          }

          else
          {
            strncpy(v133, &v134[LOWORD(v135[12 * v298])], WORD1(v135[12 * v298]) - LOWORD(v135[12 * v298]));
            *(a1[57] + WORD1(a1[54][12 * v298]) - LOWORD(a1[54][12 * v298])) = 0;
            strncpy(__s1, a1[57], 0x7FuLL);
            v347 = 0;
            inited = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
            if ((inited & 0x80000000) != 0)
            {
              goto LABEL_335;
            }

            v142 = (a1[50][12])(a1[48], a1[49], v303, __s1, &v345, &v344, &v343);
            v119 = v142;
            if ((v142 & 0x80000000) != 0)
            {
              goto LABEL_346;
            }

            if (v344 != 1 || (v140 = "MATCH ON LAST WORD", !v345))
            {
              v329 = v142;
              v141 = v324;
LABEL_224:
              v158 = 0;
              v209 = v312 == 1;
              if (v312 == 1)
              {
                v170 = v316;
                v213 = v302;
                if (v302)
                {
                  v212 = v141;
                  v141 = __s2;
                  goto LABEL_244;
                }

                v342 = 1;
                v339 = v141;
                v210 = v310;
LABEL_247:
                v336 = v210;
                v92 = v321;
                goto LABEL_248;
              }

              v212 = v141;
              v141 = __s2;
              v170 = v316;
              v213 = v302;
LABEL_244:
              if (!v312 && v213 == 1)
              {
                v342 = 1;
                v339 = v141;
                v210 = v300;
                goto LABEL_247;
              }

              if (v213 != 1)
              {
                v209 = 0;
              }

              v92 = v321;
              if (v209)
              {
                v342 = 1;
                v326 = v212;
                if (!strcmp(v212, v141))
                {
                  v339 = v326;
                  v336 = v310;
                  heap_Free((*a1)[1], v141);
                  goto LABEL_262;
                }

                if (v288 > v158)
                {
                  v339 = v326;
                  v336 = v310;
                  heap_Free((*a1)[1], v141);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose FIRST on frequency (%d > %d) set PRM=%s", v215, v216, v217, v288);
                  goto LABEL_261;
                }

                if (v158 > v288)
                {
                  v339 = v141;
                  v336 = v300;
                  heap_Free((*a1)[1], v326);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose LAST on frequency (%d > %d) set PRM=%s", v218, v219, v220, v158);
LABEL_261:
                  v92 = v321;
LABEL_262:
                  v323 = v342;
                  v170 = v316;
                  v119 = v329;
                  if (v342 != 1)
                  {
                    goto LABEL_234;
                  }

LABEL_249:
                  v214 = *(v89[7] + v170);
                  LODWORD(v338) = *v89;
                  v337 = v214;
                  v323 = 1;
                  goto LABEL_234;
                }

                heap_Free((*a1)[1], v326);
                heap_Free((*a1)[1], v141);
                v221 = heap_Calloc((*a1)[1], 1, 3);
                v339 = v221;
                v92 = v321;
                if (v221)
                {
                  strcpy(v221, "LS");
                  v336 = 1;
                  v342 = 1;
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MISMATCH in FIRST and LAST word PRM; set default=%s", v122, v123, v124, v221);
                  v170 = v316;
LABEL_248:
                  v119 = v329;
                  goto LABEL_249;
                }

LABEL_339:
                v269 = 35000;
                v119 = 2313166858;
LABEL_344:
                v270 = (*a1)[4];
LABEL_345:
                log_OutPublic(v270, "FE_POS", v269, 0, v121, v122, v123, v124, v276);
                goto LABEL_346;
              }

              v323 = 0;
              v342 = 0;
LABEL_222:
              v119 = v329;
              goto LABEL_234;
            }
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, v140, v137, v138, v139, 0);
          v143 = strchr(*v345, v343);
          if (!v143)
          {
            v269 = 35002;
LABEL_338:
            v119 = 2313166848;
            goto LABEL_344;
          }

          *v143 = 0;
          v144 = v143 + 1;
          v145 = strchr(v143 + 1, v343);
          if (!v145)
          {
            v269 = 35003;
            goto LABEL_338;
          }

          v146 = v145;
          v329 = v119;
          v147 = strcmp(*v345, &v321[v311]);
          *v146 = 0;
          if (v147 && v314 != 1)
          {
            v141 = v324;
LABEL_151:
            v89 = v318;
            v93 = v319;
            goto LABEL_152;
          }

          v148 = strlen(v144);
          v149 = heap_Calloc((*a1)[1], 1, (v148 + 1));
          if (!v149)
          {
            goto LABEL_339;
          }

          v141 = v149;
          v150 = __s2;
          if ((v132 & 1) == 0)
          {
            v150 = v149;
          }

          v295 = v150;
          v151 = v300;
          if ((v132 & 1) == 0)
          {
            v151 = 1;
          }

          v294 = v151;
          v152 = v324;
          if (v132)
          {
            v152 = v149;
          }

          v293 = v152;
          v153 = v310;
          if (v132)
          {
            v153 = 1;
          }

          v292 = v153;
          if (v132)
          {
            v154 = v302;
          }

          else
          {
            v154 = 1;
          }

          if (v132)
          {
            v155 = 1;
          }

          else
          {
            v155 = v312;
          }

          strcpy(v149, v144);
          v156 = strchr(v146 + 1, v343);
          if (!v156)
          {
            v314 = 1;
            v312 = v155;
            v302 = v154;
            v310 = v292;
            v141 = v293;
            v300 = v294;
            __s2 = v295;
            goto LABEL_151;
          }

          *v156 = 0;
          v157 = LH_atoi(v146 + 1);
          v158 = v157;
          v89 = v318;
          if ((v132 & 1) == 0)
          {
            v209 = v312 == 1;
            v213 = 1;
            v300 = 1;
            v93 = v319;
            v170 = v316;
            v212 = v324;
            goto LABEL_244;
          }

          v314 = 1;
          v312 = 1;
          v310 = 1;
          v288 = v157;
          v93 = v319;
LABEL_152:
          v131 = 0;
          v130 = v141;
          if ((v132 & 1) == 0)
          {
            goto LABEL_224;
          }
        }
      }

      v30 = v309;
      if (!strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", v96))
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDFIRSTWORDLEXMATCH with ARG %s", v103, v104, v105, &v92[*(v93 + v95[1])]);
        v159 = *(v93 + *(v318[7] + 8 * v90 + 4));
        v160 = a1[45];
        *__s1 = 0;
        LOBYTE(v344) = 0;
        v342 = 0;
        LOWORD(v345) = -1;
        strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v32]), WORD1(a1[54][12 * v32]) - LOWORD(a1[54][12 * v32]));
        *(a1[57] + WORD1(a1[54][12 * v32]) - LOWORD(a1[54][12 * v32])) = 0;
        v119 = (a1[50][12])(a1[48], a1[49], v160, a1[57], __s1, &v345, &v344);
        if ((v119 & 0x80000000) != 0)
        {
          goto LABEL_346;
        }

        if (v345 != 1 || !*__s1)
        {
          v323 = 0;
          v342 = 0;
          v89 = v318;
LABEL_200:
          v92 = v321;
LABEL_233:
          v170 = v316;
          goto LABEL_234;
        }

        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH ON FIRST WORD", v161, v162, v163, 0);
        v164 = strchr(**__s1, v344);
        if (v164)
        {
          v165 = v164;
          *v164 = 0;
          v166 = strcmp(**__s1, &v321[v159]);
          v323 = 0;
          if (!v166)
          {
            v323 = 1;
            v342 = 1;
          }

          v167 = strchr(v165 + 1, v344);
          v89 = v318;
          if (v167)
          {
            *v167 = 0;
            if (!v166)
            {
              v168 = strlen(v165 + 1);
              v169 = heap_Calloc((*a1)[1], 1, (v168 + 1));
              v339 = v169;
              v92 = v321;
              if (v169)
              {
                strcpy(v169, v165 + 1);
                LODWORD(v338) = *v318;
                v170 = v316;
                v171 = *(v318[7] + v316);
                v323 = 1;
                v336 = 1;
                v337 = v171;
                goto LABEL_234;
              }

              goto LABEL_339;
            }

            goto LABEL_200;
          }

          goto LABEL_342;
        }

LABEL_341:
        v269 = 35002;
LABEL_343:
        v119 = 2313166848;
        goto LABEL_344;
      }

      if (strcmp("FILTER_NO_TOKEN_NO_ABBREVIATION", v96))
      {
        if (strcmp("FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", v96))
        {
          if (!strcmp("ELSE_IGNORE", v96))
          {
            v284 = 1;
          }

          else
          {
            log_OutText((*a1)[4], "FE_POS", 5, 0, "    UNIMPLEMENTED filter %s - skip", v112, v113, v114, v96);
          }

          v89 = v318;
          v170 = 8 * v90;
          goto LABEL_222;
        }

        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", v109, v110, v111, 0);
        v342 = 1;
        v204 = a1[54];
        v205 = v309;
        while (1)
        {
          v206 = v205;
          v207 = 3 * v205;
          v280 = LODWORD(v204[12 * v205 + 1]);
          log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d", v201, v202, v203, v205);
          v204 = a1[54];
          if (LODWORD(v204[4 * v207 + 1]) == 1 && (v206 != v309 && !LODWORD(v204[12 * v206 - 11]) || v206 != v332 && !LODWORD(v204[12 * v206 + 13])))
          {
            break;
          }

          v205 = v206 + 1;
          if ((v206 + 1) > v332)
          {
            v119 = 0;
            v323 = 1;
            v286 = 1;
            goto LABEL_231;
          }
        }

        v323 = 0;
        v119 = 0;
        v342 = 0;
LABEL_231:
        v92 = v321;
        goto LABEL_232;
      }

      log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_NO_TOKEN_NO_ABBREVIATION", v106, v107, v108, 0);
      v175 = 0;
      v325 = 0;
      v176 = 0;
      v330 = 0;
      v315 = *(a1 + 174);
      v313 = a1[44];
      v342 = 1;
      v177 = v309;
      v178 = a1[54];
      do
      {
        v179 = v177;
        v180 = 3 * v177;
        v181 = &v178[12 * v177];
        v279 = *(v181 + 2);
        v282 = *v181 + 1 == v181[1];
        v283 = *(v181 + 4);
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d singleChar=%d hyphen=%d", v172, v173, v174, v179);
        v178 = a1[54];
        v182 = &v178[4 * v180];
        if (*(v182 + 2) == 1)
        {
          v195 = 0;
          v323 = 0;
          v342 = 0;
          goto LABEL_215;
        }

        if (*(v182 + 4) == 1)
        {
          v183 = v325 + 1;
        }

        else
        {
          v183 = v325;
        }

        v325 = v183;
        v184 = v332;
        if (v179 == v332)
        {
          strncpy(a1[52], a1[60] + *v182, v182[1] - *v182);
          v185 = &a1[54][12 * v179];
          *(a1[52] + v185[1] - *v185) = 0;
          strncpy(__s1, a1[52], 0x7FuLL);
          v347 = 0;
          v330 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
          if ((v330 & 0x80000000) != 0)
          {
            v119 = v330;
            goto LABEL_346;
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, "    check canonical form %s for last word (in case abbreviation)", v186, v187, v188, __s1);
          v189 = v315;
          if (v315)
          {
            v190 = 0;
            v191 = v313;
            do
            {
              v192 = strstr(__s1, *v191);
              if (v192)
              {
                v193 = v192 - __s1 == 1;
              }

              else
              {
                v193 = 0;
              }

              if (v193)
              {
                *v192 = 0;
                if (LODWORD(a1[54][12 * v179 + 2]) == 1)
                {
                  ++v175;
                }

                v176 = v176;
                v190 = 1;
              }

              ++v191;
              --v189;
            }

            while (v189);
            if (!v190)
            {
              v176 = 0;
            }

            v93 = v319;
          }

          else
          {
            v176 = 0;
          }

          v178 = a1[54];
          if (LOWORD(v178[12 * v179]) + 1 == WORD1(v178[12 * v179]))
          {
            v184 = v332;
          }

          else
          {
            v194 = strlen(__s1);
            v184 = v332;
            if (v194 != 1)
            {
              goto LABEL_196;
            }
          }
        }

        else if (*v182 + 1 != v182[1])
        {
          goto LABEL_196;
        }

        if (LODWORD(v178[12 * v179 + 2]) == 1)
        {
          ++v175;
        }

        if (v179 == v309)
        {
          v176 = 1;
        }

LABEL_196:
        v177 = v179 + 1;
      }

      while ((v179 + 1) <= v184);
      if (v176)
      {
        v342 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation", v172, v173, v174, 0);
        v195 = 0;
        v323 = 0;
LABEL_215:
        v92 = v321;
        goto LABEL_216;
      }

      v92 = v321;
      if (v175 == v325)
      {
        v342 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation (countHyphenSingleChar=%d,countHyphen=%d)", v172, v173, v174, v325);
        v195 = 0;
        v323 = 0;
      }

      else
      {
        v195 = 1;
        v323 = 1;
      }

LABEL_216:
      v89 = v318;
      v170 = v316;
      v119 = v330;
      if ((v330 & 0x80000000) != 0)
      {
        goto LABEL_346;
      }

      v65 = v195 == 0;
      v208 = v286;
      if (!v65)
      {
        v208 = 1;
      }

      v286 = v208;
LABEL_234:
      v91 = v89[7];
      if (!strncmp(&v92[*(v93 + *(v91 + v170))], "FILTER_", 7uLL))
      {
        if (v323)
        {
          goto LABEL_238;
        }

        v223 = "  [FILTER] FAIL";
LABEL_276:
        v222 = v323 == 1;
        v8 = v287;
LABEL_268:
        log_OutText((*a1)[4], "FE_POS", 5, 0, v223, v86, v87, v88, 0);
        v64 = v332;
        if ((v119 & 0x80000000) != 0)
        {
          goto LABEL_346;
        }

        if (v222)
        {
          v63 = 1;
          v285 = v332;
          goto LABEL_86;
        }

        goto LABEL_89;
      }

      if (v323 == 1)
      {
        v223 = "  [FILTER] SUCCESS";
        goto LABEL_276;
      }

LABEL_238:
      v329 = v119;
      v90 = v317 + 1;
    }

    while (v317 + 1 < *(v89 + 32));
    if (v286 != 1)
    {
      v8 = v287;
      v119 = v329;
      goto LABEL_267;
    }

    v8 = v287;
    v119 = v329;
    if (v284 == 1)
    {
      v222 = 0;
      v342 = 0;
      v223 = "  [FILTER] SUCCESS but ELSE_IGNORE set so FAIL";
      goto LABEL_268;
    }

    v63 = 1;
    v342 = 1;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] SUCCESS", v86, v87, v88, 0);
    v64 = v332;
    v285 = v332;
    if ((v329 & 0x80000000) != 0)
    {
      goto LABEL_346;
    }

LABEL_86:
    v29 = v289;
    v62 = v290;
    v14 = __dst;
  }

  while (v64 >= v30);
  if (v63 != 1)
  {
    goto LABEL_56;
  }

  v291 = v62;
  log_OutText((*a1)[4], "FE_POS", 5, 0, "COMPOUND WORD SUCCESSFULLY PROCESSED %d to %d", v19, v20, v21, v29);
  v333 = v341;
  v228 = &a1[9][15 * v341];
  if (*(v228 + 96))
  {
    v229 = 0;
    v230 = 0;
    v231 = a1[39];
    v232 = a1[40];
    while (1)
    {
      v233 = *(v228 + 88);
      v234 = v231 + *(v232 + *(v233 + v229));
      if (!strcmp("SETDEFAULT", v234))
      {
        break;
      }

      v281 = v231 + *(v232 + *(v233 + v229 + 4));
      log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED POS rule %s %s - skip", v235, v236, v237, v234);
      ++v230;
      v229 += 8;
      if (v230 >= *(v228 + 96))
      {
        goto LABEL_289;
      }
    }

    v322 = v231 + *(v232 + *(v233 + v229 + 4));
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT POS = %s", v235, v236, v237, v322);
  }

  else
  {
LABEL_289:
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT POS %s", v225, v226, v227, "NN");
    v322 = "NN";
  }

  v241 = &a1[9][15 * v333];
  v242 = *(v241 + 112);
  if (!v242)
  {
LABEL_310:
    v257 = "LS";
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT PROM %s", v238, v239, v240, "LS");
    v258 = 0;
    v259 = "DEFAULT";
LABEL_311:
    v8 = v287;
LABEL_312:
    v251 = a1[54];
    LOBYTE(v251[12 * v32 + 11]) = 1;
    BYTE1(v251[12 * v285 + 11]) = 1;
    v252 = v30;
    LODWORD(v30) = v285;
    inited = setCOMPValues(a1, v252, v285, &v336, v322, v257, v258, v259, v291);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_335;
    }

    *v8 = 1;
    v14 = __dst;
    goto LABEL_56;
  }

  v243 = 0;
  v244 = 0;
  v320 = a1[20];
  v245 = a1[40];
  v334 = a1[39];
  v331 = v336;
  v327 = v337;
  while (2)
  {
    v246 = *(v241 + 104);
    v247 = &v334[*(v245 + *(v246 + v243))];
    if (!strcmp("MATCHED_ALGO_INLEXICON", v247))
    {
      if (v331 == 1 && !strcmp("ALGO_INLEXICON", &v334[*(v245 + v327)]))
      {
        v257 = v339;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_INLEXICON : CACHED(ALGO_INLEXICON) PROM = %s", v238, v239, v240, v339);
        v258 = v340;
        v259 = "LEX";
        goto LABEL_311;
      }

LABEL_309:
      ++v244;
      v243 += 8;
      if (v244 >= v242)
      {
        goto LABEL_310;
      }

      continue;
    }

    break;
  }

  if (!strcmp("MATCHED_ALGO_EXTENDEDLEXMATCH", v247))
  {
    if (v331 == 1 && !strcmp("ALGO_EXTENDEDLEXMATCH", &v334[*(v245 + v327)]))
    {
      v257 = v339;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDLEXMATCH : CACHED(ALGO_EXTENDEDLEXMATCH) PROM = %s", v238, v239, v240, v339);
      v258 = 0;
      v259 = "EXTENDEDLEX";
      goto LABEL_311;
    }

    goto LABEL_309;
  }

  if (!strcmp("MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH", v247))
  {
    if (v331 == 1 && !strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v334[*(v245 + v327)]))
    {
      v257 = v339;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH : CACHED(ALGO_EXTENDEDFIRSTWORDLEXMATCH) PROM = %s", v238, v239, v240, v339);
      v258 = 0;
      v259 = "EXTENDEDFIRSTWORDLEX";
      goto LABEL_311;
    }

    goto LABEL_309;
  }

  if (strcmp("IGTREE", v247))
  {
    if (!strcmp("SETDEFAULT", v247))
    {
      v257 = &v334[*(v245 + *(v246 + v243 + 4))];
      log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT PROM = %s", v248, v249, v250, v257);
      v258 = 0;
      v259 = "DEFAULT";
      v8 = v287;
      goto LABEL_312;
    }

    log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED PROM rule %s - skip", v248, v249, v250, v247);
    v242 = *(v241 + 112);
    goto LABEL_309;
  }

  v253 = *(a1 + 72);
  v254 = a1[20];
  if (*(a1 + 72))
  {
    v255 = 0;
    v256 = *(v245 + *(v246 + v243 + 4));
    while (strcmp(v254[v255], &v334[v256]))
    {
      if (v253 == ++v255)
      {
        goto LABEL_318;
      }
    }
  }

  else
  {
LABEL_318:
    LOWORD(v255) = 0;
  }

  v260 = v255;
  v261 = a1[21][v255];
  v262 = heap_Calloc((*a1)[1], 1, 8 * *(v261 + 1296) - 8);
  v263 = *a1;
  if (!v262)
  {
    v119 = 2313166858;
    v270 = *(v263 + 32);
    v269 = 35000;
    goto LABEL_345;
  }

  inited = statcomp_initFeatureVector(v263, v262, (*(v261 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
LABEL_335:
    v119 = inited;
    goto LABEL_346;
  }

  *__s1 = 0;
  v264 = setStatCOMPFeatureVector(v255, a1, v30, v285, v262);
  if ((v264 & 0x80000000) != 0 || (v264 = igtree_Process(v261, v262, __s1), (v264 & 0x80000000) != 0))
  {
    v265 = v264;
    v257 = 0;
  }

  else
  {
    v257 = *__s1;
    v265 = statcomp_dumpFeatureVectorAndResult(*a1, *(a1 + 107), a1 + 51, a1 + 212, "IGTREE RESULT=", v254[v255], v261, v262, *__s1);
  }

  statcomp_freeFeatureVector(*a1, v262, (*(v261 + 1296) - 1));
  heap_Free((*a1)[1], v262);
  v119 = v265;
  if ((v265 & 0x80000000) == 0)
  {
    v8 = v287;
    v259 = v320[v260];
    if (*v257 == 61 && !*(v257 + 1))
    {
      v257 = "LS";
      log_OutText((*a1)[4], "FE_POS", 5, 0, "OVERRIDE IGTEE NULL VALUE : SET DEFAULT PROM %s", v266, v267, v268, "LS");
    }

    else
    {
      log_OutText((*a1)[4], "FE_POS", 5, 0, "SET IGTREE %s PROM = %s", v266, v267, v268, v259);
    }

    v258 = 0;
    goto LABEL_312;
  }

LABEL_346:
  if (v339)
  {
    heap_Free((*a1)[1], v339);
    if (v340)
    {
      heap_Free((*a1)[1], v340);
    }
  }

  v271 = a1[57];
  if (v271)
  {
    heap_Free((*a1)[1], v271);
    a1[57] = 0;
  }

  v272 = a1[58];
  if (v272)
  {
    heap_Free((*a1)[1], v272);
    a1[58] = 0;
  }

LABEL_353:
  v273 = *MEMORY[0x1E69E9840];
  return v119;
}

uint64_t isCompoundWordMember(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  memcpy(__dst, (a1 + 8), 0x178uLL);
  v13 = a4 - a3 + 1;
  v86 = 0uLL;
  *a5 = 0;
  v14 = 96 * a3;
  strncpy(*(a1 + 416), (*(a1 + 480) + *(*(a1 + 432) + v14)), *(*(a1 + 432) + 96 * a4 + 2) - *(*(a1 + 432) + v14));
  *(*(a1 + 416) - *(*(a1 + 432) + v14) + *(*(a1 + 432) + 96 * a4 + 2)) = 0;
  v74 = *(a1 + 416);
  v82 = a3;
  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] Check word[%d] %s %d words", v15, v16, v17, a3);
  matched = 0;
  v22 = &__dst[12];
  v23 = &__dst[13];
  if (a2)
  {
    v22 = &__dst[10];
    v23 = &__dst[11];
  }

  v81 = a7;
  v24 = *a7;
  v84 = *v23;
  if (v24 >= v84)
  {
    goto LABEL_51;
  }

  v25 = a4;
  matched = 0;
  v77 = a4;
  v26 = v13;
  v83 = *v22;
  v79 = a5;
  v78 = v25;
  while (1)
  {
    v27 = *(v83 + 2 * v24);
    v28 = (__dst[8] + 120 * v27);
    if (v26 != *(v28 + 16))
    {
      goto LABEL_50;
    }

    v85 = v24;
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    TRYING RULE label=%s (%d words) compound word rule idx=%d", v18, v19, v20, __dst[38] + *(__dst[39] + 4 * *v28));
    if (!v26)
    {
      break;
    }

    v29 = 0;
    v30 = 0;
    v31 = *(a1 + 432);
    v32 = 96 * v82;
    v33 = v82;
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
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, v37, v18, v19, v20, v33);
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
    a5 = v79;
    v24 = v85;
LABEL_50:
    if (++v24 == v84)
    {
LABEL_51:
      log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", v18, v19, v20, 0);
      *a5 = 0;
      return matched;
    }
  }

  if (*(__dst[8] + 120 * v27 + 32))
  {
    v40 = 0;
    v41 = 0;
    v42 = 96 * v82 + 32;
    while (1)
    {
      strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + v42 - 32)), *(*(a1 + 432) + v42 - 30) - *(*(a1 + 432) + v42 - 32));
      *(*(a1 + 456) - *(*(a1 + 432) + v42 - 32) + *(*(a1 + 432) + v42 - 30)) = 0;
      strcpy(*(a1 + 464), *(*(a1 + 432) + v42));
      v43 = " ";
      if (*(*(a1 + 432) + v42 - 24) == 1)
      {
        v43 = "1";
      }

      *(a1 + 472) = v43;
      WORD2(v86) = v82 + v41;
      LODWORD(v86) = 2;
      *(&v86 + 6) = 0;
      HIDWORD(v86) = 0;
      matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v86, *(__dst[8] + 120 * v27 + 24) + v40, &v86 + 3);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v47 = *(__dst[0] + 32);
      if (HIDWORD(v86) != 1)
      {
        log_OutText(v47, "FE_POS", 5, 0, "      Membership rule %d FAILS", v44, v45, v46, v41);
        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership FAIL on WORDN criteria - try extra rules...", v48, v49, v50, 0);
        if (!*(__dst[8] + 120 * v27 + 48))
        {
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      no extra membership rules - FAIL", v51, v52, v53, 0);
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", v64, v65, v66, 0);
          goto LABEL_49;
        }

        strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + 96 * v82)), *(*(a1 + 432) + 96 * v77 + 2) - *(*(a1 + 432) + 96 * v82));
        *(*(a1 + 456) - *(*(a1 + 432) + 96 * v82) + *(*(a1 + 432) + 96 * v77 + 2)) = 0;
        strcpy(*(a1 + 464), *(*(a1 + 432) + 96 * v82 + 32));
        if (v78 >= (v82 + 1))
        {
          v57 = v82 + 1;
          do
          {
            *(*(a1 + 464) + strlen(*(a1 + 464))) = 32;
            strcat(*(a1 + 464), *(*(a1 + 432) + 96 * v57++ + 32));
          }

          while (v78 >= v57);
        }

        v75 = *(a1 + 456);
        v76 = *(a1 + 464);
        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      apply %d extra membership rules on ORT %s and POS %s", v54, v55, v56, *(__dst[8] + 120 * v27 + 48));
        v58 = __dst[8];
        v24 = v85;
        a5 = v79;
        if (*(__dst[8] + 120 * v27 + 48))
        {
          v59 = 0;
          v60 = 0;
          while (1)
          {
            WORD2(v86) = v82;
            LODWORD(v86) = 2;
            *(&v86 + 6) = 0;
            HIDWORD(v86) = 0;
            matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v86, *(v58 + 120 * v27 + 40) + v59, &v86 + 3);
            if ((matched & 0x80000000) != 0)
            {
              return matched;
            }

            if (HIDWORD(v86) == 1)
            {
              log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d SUCCEEDS. Membership SUCCEEDS", v61, v62, v63, v60);
              *v79 = 1;
              *a6 = v27;
              *v81 = v85;
              log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] SUCCESS", v71, v72, v73, 0);
              return matched;
            }

            log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d FAIL", v61, v62, v63, v60++);
            v58 = __dst[8];
            v59 += 24;
            v24 = v85;
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
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership SUCCESS on WORDN criteria", v18, v19, v20, 0);
    *v79 = 1;
    *a6 = v27;
    *v81 = v85;
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

  v14 = !v13 && *(a1 + 9) == 1;
  v41 = a1[40];
  v42 = a1[39];
  v15 = v14;
  v16 = a2;
  while (1)
  {
    if (v15)
    {
      v17 = strlen(a8);
      v18 = v17 + strlen(a9);
      if (*a4 == 1)
      {
        v18 += 2 + strlen((v42 + *(v41 + 4 * a4[2])));
      }

      v19 = v18 + 4;
    }

    else
    {
      v19 = 0;
    }

    v20 = strlen(a6);
    v21 = heap_Calloc(*(*a1 + 8), 1, v20 + v19 + 3);
    *(a1[54] + 96 * v16 + 80) = v21;
    v26 = *a1;
    if (!v21)
    {
      break;
    }

    v27 = *(v26 + 8);
    v28 = strlen(a5);
    v29 = heap_Calloc(v27, 1, (v28 + 3));
    *(a1[54] + 96 * v16 + 72) = v29;
    if (!v29)
    {
      goto LABEL_32;
    }

    if (a7)
    {
      v30 = strchr(a7, 32);
      v31 = v30;
      if (v30)
      {
        *v30 = 0;
      }

      v32 = strlen(a7);
      v33 = heap_Calloc(*(*a1 + 8), 1, (v32 + 1));
      *(a1[54] + 96 * v16 + 64) = v33;
      if (!v33)
      {
LABEL_32:
        v26 = *a1;
        break;
      }

      strcpy(v33, a7);
      if (v31)
      {
        a7 = v31 + 1;
      }
    }

    v34 = *(a1[54] + 96 * v16 + 80);
    v35 = "I-";
    if (a2 == v16)
    {
      v35 = "B-";
    }

    v36 = *v35;
    *v34 = *v35;
    v37 = v35[2];
    *(v34 + 2) = v37;
    v38 = *(a1[54] + 96 * v16 + 72);
    *(v38 + 2) = v37;
    *v38 = v36;
    strcat(*(a1[54] + 96 * v16 + 80), a6);
    if (v15)
    {
      *(*(a1[54] + 96 * v16 + 80) + strlen(*(a1[54] + 96 * v16 + 80))) = 43;
      strcat(*(a1[54] + 96 * v16 + 80), a9);
      *(*(a1[54] + 96 * v16 + 80) + strlen(*(a1[54] + 96 * v16 + 80))) = 43;
      strcat(*(a1[54] + 96 * v16 + 80), a8);
      if (*a4 == 1)
      {
        *(*(a1[54] + 96 * v16 + 80) + strlen(*(a1[54] + 96 * v16 + 80))) = 43;
        strcat(*(a1[54] + 96 * v16 + 80), (v42 + *(v41 + 4 * a4[2])));
      }
    }

    strcat(*(a1[54] + 96 * v16++ + 72), a5);
    if (a3 < v16)
    {
      return 0;
    }
  }

  log_OutPublic(*(v26 + 32), "FE_POS", 35000, 0, v22, v23, v24, v25, v40);
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
            goto LABEL_63;
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
              v58 = *(a4 + 440);
              if (96 * v58 - 96 != v15 && (v16 + 1 >= v58 || (v59 = *(v33 + v15 + 176)) != 0 && *v59 == 73))
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
LABEL_87:
                v63 = *(a4 + 408);
                log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] (appended) NLU=%s", v30, v31, v32, v16);
                v60 = strlen(*(a4 + 408));
                result = (*(a1 + 160))(a2, a3, v69, 14, (v60 + 1), *(a4 + 408), &v64);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                **(a4 + 408) = 0;
LABEL_63:
                v51 = *(a4 + 432) + 96 * v16;
                if (*(v51 + 64))
                {
                  v62 = *(v51 + 56);
                  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "updating Word[%d] compound word pronunciation from %s to %s", v26, v27, v28, v16);
                  v52 = strlen(*(*(a4 + 432) + 96 * v16 + 64));
                  result = (*(a1 + 160))(a2, a3, v69, 3, (v52 + 1), *(*(a4 + 432) + 96 * v16 + 64), &v68);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                goto LABEL_16;
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

            v53 = *a4;
            v55 = (a4 + 408);
            v56 = (a4 + 424);
            v54 = (*(*(a4 + 432) + v15 + 72) + 2);
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

            v53 = *a4;
            v54 = *(*(a4 + 432) + v15 + 72);
            v55 = (a4 + 408);
            v56 = (a4 + 424);
          }

          result = statcomp_add2Str(v53, v55, v56, v54);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_87;
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
          if (96 * v49 - 96 == v15 || v16 + 1 < v49 && ((v57 = *(v39 + v15 + 176)) == 0 || *v57 != 73))
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

        v61 = *(a4 + 408);
        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] NLU=%s", v23, v24, v25, v16);
        v50 = strlen(*(a4 + 408));
        result = (*(a1 + 160))(a2, a3, v69, 14, (v50 + 1), *(a4 + 408), &v64);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        **(a4 + 408) = 0;
        goto LABEL_63;
      }
    }
  }

  return result;
}

uint64_t statpos_get_info_from_dct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, char **a7, _BOOL4 *a8, const char *a9)
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
    v20 = strchr(**&__c[3], __c[0]);
    if (v20)
    {
      *v20 = 0;
    }

    if (!strcmp(a9, "STR"))
    {
      v23 = strlen(**&__c[3]);
      v24 = heap_Calloc(*(a1 + 8), 1, (v23 + 1));
      *a7 = v24;
      if (!v24)
      {
LABEL_2:
        v19 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 34000, 0, v15, v16, v17, v18, v28);
        return v19;
      }

      strcpy(v24, **&__c[3]);
      if (!strcmp("fecfg", a5))
      {
        v29 = *a7;
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "set mde seg param %s = %s", v25, v26, v27, a6);
      }
    }

    else if (!strcmp(a9, "BOOL"))
    {
      v21 = 0;
      *a8 = 0;
      if (***&__c[3] == 49)
      {
        v21 = *(**&__c[3] + 1) == 0;
      }

      *a8 = v21;
    }
  }

  return v19;
}

uint64_t _crfpos_concat_strings(uint64_t a1, uint64_t *a2, char **a3)
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
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v19);
    return 2313166858;
  }
}

uint64_t _crfpos_get_potential_tags(uint64_t a1, unsigned __int16 *a2, void *a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v8 = a2[4];
  if (!a2[4])
  {
    goto LABEL_38;
  }

  if (*(*a2 + 72))
  {
    v12 = 0;
    if (!a6)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = (*a2 + 232);
    v14 = 1;
    do
    {
      v15 = v14;
      if (v8 == v14)
      {
        break;
      }

      v16 = *v13;
      v13 += 80;
      ++v14;
    }

    while (!v16);
    v12 = v15 >= v8;
    if (!a6)
    {
      goto LABEL_38;
    }
  }

  if (v12)
  {
LABEL_38:
    v40 = 0;
    *a4 = 0;
    *a5 = 0;
    return v40;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, 8 * v8);
  if (!v17 || (v22 = v17, (v23 = heap_Calloc(*(a1 + 8), 1, 4 * a2[4])) == 0))
  {
    v40 = 2313166858;
    v41 = *(a1 + 32);
    goto LABEL_40;
  }

  v24 = v23;
  v44 = a4;
  v45 = a1;
  if (!a2[4])
  {
LABEL_37:
    v40 = 0;
    *v44 = v22;
    *a5 = v24;
    return v40;
  }

  v25 = 0;
  while (1)
  {
    v26 = *a2;
    v27 = *a2 + 160 * v25;
    if (!*(v27 + 128))
    {
      break;
    }

    v28 = *(v27 + 136);
    if (!v28 || !*v28)
    {
      break;
    }

    v29 = a3[42];
    if (!v29 || (v30 = "ns", !strstr(v29, v28)))
    {
      v31 = a3[43];
      if (!v31 || (v30 = "nt", !strstr(v31, v28)))
      {
        v32 = a3[44];
        if (!v32 || (v30 = "nz", !strstr(v32, v28)))
        {
          v33 = a3[45];
          if (!v33 || (v30 = "nx", !strstr(v33, v28)))
          {
            v34 = a3[46];
            if (!v34)
            {
              break;
            }

            v30 = "nr";
            if (!strstr(v34, v28))
            {
              break;
            }
          }
        }
      }
    }

    *(v24 + 4 * v25) = 1;
    v35 = heap_Calloc(*(v45 + 8), 1, 8);
    *(v22 + 8 * v25) = v35;
    if (!v35)
    {
      goto LABEL_42;
    }

    *v35 = v30;
LABEL_36:
    if (++v25 >= a2[4])
    {
      goto LABEL_37;
    }
  }

  v36 = *(v26 + 160 * v25 + 72);
  *(v24 + 4 * v25) = v36;
  if (!v36)
  {
    *(v22 + 8 * v25) = 0;
    goto LABEL_36;
  }

  v37 = heap_Calloc(*(v45 + 8), 1, 8 * v36);
  *(v22 + 8 * v25) = v37;
  if (v37)
  {
    v38 = *(v24 + 4 * v25);
    if (v38)
    {
      v39 = 0;
      do
      {
        *(*(v22 + 8 * v25) + 8 * v39) = a3[37] + *(a3[38] + 4 * *(*(*a2 + 160 * v25 + 64) + 24 * v39));
        ++v39;
      }

      while (v38 > v39);
    }

    goto LABEL_36;
  }

LABEL_42:
  v40 = 2313166858;
  v41 = *(v45 + 32);
LABEL_40:
  log_OutPublic(v41, "FE_POS", 35000, 0, v18, v19, v20, v21, v43);
  return v40;
}

uint64_t statpos_get_broker_string(uint64_t a1, char **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = "";
  *v13 = 0;
  memset(v14, 0, sizeof(v14));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v13);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v12);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        result = brokeraux_ComposeBrokerString(a1, v14, 1, 1, *v13, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v6, v7, v8, v9, v11);
        result = 2313166858;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
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
  while (1)
  {
    v6 = *(v2 + 32) + 16 * v5;
    if (!strcmp(*v6, "features"))
    {
      break;
    }

LABEL_27:
    if (++v5 >= *(v2 + 40))
    {
      return 0;
    }
  }

  v7 = *(v6 + 8);
  v8 = strlen(v7);
  v9 = v8;
  *(a2 + 32) = 0;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = v8;
    v13 = v7;
    do
    {
      v14 = *v13++;
      v15 = v14 == 32;
      if (v11)
      {
        v11 = !v15;
      }

      else if (v15)
      {
        v11 = 0;
      }

      else
      {
        *(a2 + 32) = ++v10;
        v11 = 1;
      }

      --v12;
    }

    while (v12);
    v16 = 8 * v10 + 8;
  }

  else
  {
    v16 = 8;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, v16);
  *(a2 + 24) = v17;
  if (v17)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = v25;
      v27 = v7[v25];
      if (v27 == 32)
      {
        LOBYTE(v27) = 0;
        v28 = 0;
        v22 = 0;
        v29 = *(*(a2 + 24) + 8 * v24++);
      }

      else
      {
        if (v22)
        {
          v29 = *(*(a2 + 24) + 8 * v24);
        }

        else
        {
          *(*(a2 + 24) + 8 * v24) = heap_Alloc(*(a1 + 8), 64);
          v29 = *(*(a2 + 24) + 8 * v24);
          if (!v29)
          {
            goto LABEL_29;
          }

          LOBYTE(v27) = v7[v26];
        }

        v28 = v23 + 1;
        v22 = 1;
      }

      *(v29 + v23) = v27;
      v25 = v26 + 1;
      v23 = v28;
    }

    while (v26 + 1 <= v9);
    v2 = *(a2 + 8);
    goto LABEL_27;
  }

LABEL_29:
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v31);
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
    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, *(a3 + 8));
    if ((Only_DereferenceCnt & 0x80000000) != 0)
    {
      return Only_DereferenceCnt;
    }

    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  v13 = *(a3 + 24);
  if (v13)
  {
    v14 = *(a3 + 32);
    if (v14 != 255)
    {
      v15 = 0;
      do
      {
        v16 = *(*(a3 + 24) + 8 * v15);
        if (v16)
        {
          heap_Free(*(a1 + 8), v16);
          LOBYTE(v14) = *(a3 + 32);
        }

        ++v15;
      }

      while (v15 < (v14 + 1));
      v13 = *(a3 + 24);
    }

    heap_Free(*(a1 + 8), v13);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  if (a6 == 1)
  {
    v17 = *(a4 + 296);
    if (v17)
    {
      heap_Free(*(a1 + 8), v17);
      *(a4 + 296) = 0;
      *(a4 + 316) = 0;
    }

    v18 = *(a4 + 304);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      *(a4 + 304) = 0;
      *(a4 + 320) = 0;
    }

    *(a4 + 312) = 0;
    *(a4 + 324) = 0;
    v19 = *(a4 + 168);
    if (v19)
    {
      heap_Free(*(a1 + 8), v19);
      *(a4 + 168) = 0;
    }

    v20 = *(a4 + 176);
    if (v20)
    {
      heap_Free(*(a1 + 8), v20);
      *(a4 + 176) = 0;
    }

    if (*a5)
    {
      heap_Free(*(a1 + 8), *a5);
      *a5 = 0;
    }

    v21 = a5[1];
    if (v21)
    {
      heap_Free(*(a1 + 8), v21);
      a5[1] = 0;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t statpos_crf_label(uint64_t a1, uint64_t a2, unsigned __int16 *a3, void *a4, uint64_t a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v76[0] = 0;
  v76[1] = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v10 = heap_Calloc(*(a1 + 8), 1, 8 * a3[4]);
  if (!v10)
  {
    v45 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v69);
    goto LABEL_51;
  }

  v15 = v10;
  features = statpos_fv_new(a1, *(a2 + 32), v76);
  if ((features & 0x80000000) == 0)
  {
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
    if (a3[4])
    {
      v24 = 0;
      while (1)
      {
        features = statpos_get_features(a1, a3, a4, v24, *(a2 + 24), *(a2 + 32), v76, 0);
        if ((features & 0x80000000) != 0)
        {
          break;
        }

        features = _crfpos_concat_strings(a1, v76, &v75);
        if ((features & 0x80000000) != 0)
        {
          break;
        }

        v28 = v75;
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "features: %s", v25, v26, v27, v75);
        v15[v24] = v28;
        v75 = 0;
        if (++v24 >= a3[4])
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      features = _crfpos_get_potential_tags(a1, a3, a4, &v71, &v72, a5);
      if ((features & 0x80000000) == 0)
      {
        v33 = v71;
        v32 = v72;
        v34 = v72 != 0 && v71 != 0;
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Existing tags on words (ConstrainedDecoding:Keyword=%d:Actual=%s)", v29, v30, v31, a5);
        LODWORD(v38) = a3[4];
        if (v34 && a3[4])
        {
          v39 = 0;
          do
          {
            v77[0] = 0;
            if (*(v32 + 4 * v39))
            {
              v40 = 0;
              do
              {
                v41 = *(*(v33 + 8 * v39) + 8 * v40);
                __strcat_chk();
                __strcat_chk();
                ++v40;
              }

              while (v40 < *(v32 + 4 * v39));
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v35, v36, v37, v77);
            ++v39;
            v38 = a3[4];
          }

          while (v39 < v38);
        }

        v45 = crf_Process_Constrained(*(a2 + 8), v15, v38, &v74, &v73, v33, v32);
        if ((v45 & 0x80000000) == 0 && v73)
        {
          v46 = 0;
          v47 = 88;
          while (1)
          {
            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "predicted label: %s on word %d", v42, v43, v44, *(v74 + 8 * v46));
            v48 = *(v74 + 8 * v46);
            v49 = strchr(v48, 32);
            if (v49)
            {
              *v49 = 0;
              v48 = *(v74 + 8 * v46);
            }

            v50 = strlen(v48);
            v51 = heap_Calloc(*(a1 + 8), 1, (v50 + 100));
            *(*a3 + v47) = v51;
            if (!v51)
            {
              break;
            }

            strcpy(v51, *(v74 + 8 * v46++));
            v47 += 160;
            if (v46 >= v73)
            {
              goto LABEL_28;
            }
          }

          v45 = 2313166858;
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v52, v53, v54, v55, v70);
        }

        goto LABEL_28;
      }
    }
  }

  v45 = features;
LABEL_28:
  crf_mde_seg_fv_dealloc(a1, v76);
  v56 = a3[4];
  if (a3[4])
  {
    v57 = 0;
    do
    {
      v58 = v15[v57];
      if (v58)
      {
        heap_Free(*(a1 + 8), v58);
        v56 = a3[4];
      }

      ++v57;
    }

    while (v57 < v56);
  }

  heap_Free(*(a1 + 8), v15);
  v59 = v74;
  if (v74)
  {
    v60 = v73;
    if (v73)
    {
      v61 = 0;
      do
      {
        v62 = *(v74 + 8 * v61);
        if (v62)
        {
          heap_Free(*(a1 + 8), v62);
          v60 = v73;
        }

        ++v61;
      }

      while (v61 < v60);
      v59 = v74;
    }

    heap_Free(*(a1 + 8), v59);
  }

  v63 = v71;
  if (v71)
  {
    v64 = a3[4];
    if (a3[4])
    {
      v65 = 0;
      do
      {
        v66 = *(v63 + 8 * v65);
        if (v66)
        {
          heap_Free(*(a1 + 8), v66);
          v64 = a3[4];
        }

        *(v63 + 8 * v65++) = 0;
      }

      while (v65 < v64);
    }

    heap_Free(*(a1 + 8), v63);
  }

  if (v72)
  {
    heap_Free(*(a1 + 8), v72);
  }

LABEL_51:
  v67 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t statpos_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = 0;
  v104 = 0;
  v102 = 0;
  __s = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v10 = *a4;
  *(a4 + 748) = log_GetLogLevel(*(*a4 + 32)) > 4;
  v11 = (*(a1 + 104))(a2, a3, 1, 0, &v105 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = (*(a1 + 184))(a2, a3, HIWORD(v105), 0, &v104);
  if ((v12 & 0x80000000) == 0 && v104 == 1)
  {
    v12 = (*(a1 + 176))(a2, a3, HIWORD(v105), 0, &__s, &v101);
    if ((v12 & 0x80000000) == 0 && v101 >= 2u)
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
            goto LABEL_54;
          }
        }

        v29 = heap_Calloc(*(v10 + 8), 1, 1024);
        *(a4 + 728) = v29;
        if (!v29 || (*(a4 + 744) = 1024, v30 = heap_Calloc(*(v10 + 8), 1, 1024), (*(a4 + 736) = v30) == 0))
        {
LABEL_54:
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0, v25, v26, v27, v28, v90);
          v36 = 0;
          goto LABEL_55;
        }

        v31 = strlen(__s);
        v36 = heap_Calloc(*(v10 + 8), 1, (v31 + 1));
        if (v36)
        {
          statpos_initCache(a4 + 648);
          AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v105), &v105);
          if ((AddPOI & 0x80000000) == 0)
          {
            v12 = 2313174705;
            v92 = v36 - 1;
            v93 = v36;
            while (v105)
            {
              AddPOI = (*(a1 + 168))(a2, a3);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_137;
              }

              if (v100 <= 0xA && ((1 << v100) & 0x610) != 0)
              {
                AddPOI = (*(a1 + 168))(a2, a3, v105, 1, 1, &v96, &v101);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_137;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v105, 2, 1, &v96 + 2, &v101);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_137;
                }

                if (v96 > HIWORD(v96))
                {
                  goto LABEL_55;
                }

                v11 = (*(a1 + 184))(a2, a3, v105, 17, &v104);
                if ((v11 & 0x80000000) != 0)
                {
                  return v11;
                }

                if (v104 == 1)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v105, 17, 1, &v95 + 2, &v101);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }
                }

                else
                {
                  HIWORD(v95) = v100 - 9 <= 1;
                }

                strncpy(v36, &__s[v96], HIWORD(v96) - v96);
                v36[HIWORD(v96) - v96] = 0;
                if (HIWORD(v96) == v96)
                {
                  log_OutText(*(v10 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v39, v40, v41, HIWORD(v96));
                }

                else
                {
                  AddPOI = addWord_0(v10, a4 + 8, a4 + 648, v36, &v96, HIWORD(v95), &v95, v41);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  v42 = strlen(v36);
                  if (v42)
                  {
                    v43 = v92[v42];
                    if (v43 <= 0x3B && ((1 << v43) & 0xC00100000000000) != 0)
                    {
                      *(*(a4 + 648) + 160 * *(a4 + 656) - 148) = 1;
                    }
                  }

                  v44 = *(a4 + 648) + 160 * *(a4 + 656);
                  *(v44 - 136) = 0;
                  *(v44 - 136) = v100 == 4;
                  AddPOI = (*(a1 + 176))(a2, a3, v105, 3, &v97, &v101);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  v45 = *(a4 + 648);
                  v46 = *(a4 + 656);
                  if (*v97)
                  {
                    *(v45 + 160 * *(a4 + 656) - 136) = 1;
                  }

                  v47 = __s;
                  v48 = HIWORD(v96);
                  *(v45 + 160 * v46 - 144) = __s[HIWORD(v96)] == 95;
                  *(*(a4 + 648) + 160 * *(a4 + 656) - 140) = isFollowedbySpace(a4 + 8, v47, v48);
                  v49 = (*(a1 + 176))(a2, a3, v105, 5, &v98, &v101);
                  if ((v49 & 0x80000000) != 0)
                  {
                    v12 = v49;
                    v36 = v93;
                    goto LABEL_55;
                  }

                  AddPOI = addPOS(v10, a4 + 8, a4 + 648, (*(a4 + 656) - 1), v98, v105, v22, &v95, a5);
                  v36 = v93;
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  AddPOI = readAddPOI(a1, a2, a3, v10, (a4 + 648), (*(a4 + 656) - 1), v105);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  if (*(a4 + 1416) == 1)
                  {
                    *v94 = 0;
                    AddPOI = (*(a1 + 184))(a2, a3, v105, 14, &v104);
                    if ((AddPOI & 0x80000000) != 0)
                    {
                      goto LABEL_137;
                    }

                    if (v104)
                    {
                      AddPOI = (*(a1 + 176))(a2, a3, v105, 14, v94, &v101);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_137;
                      }

                      if (v101 >= 2u)
                      {
                        AddPOI = readPOSandPHRfromNLU(v10, a4 + 8, (a4 + 648), *v94, (*(a4 + 656) - 1));
                        if ((AddPOI & 0x80000000) != 0)
                        {
                          goto LABEL_137;
                        }
                      }
                    }

                    else
                    {
                      v91 = v91 & 0xFFFFFFFF00000000 | v96;
                      AddPOI = readPOSandPHRfromNLUMarkers(v10, a4 + 8, (a4 + 648), a2, a3, a1, HIWORD(v105), __s, v91, *(a4 + 656) - 1);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_137;
                      }
                    }
                  }
                }
              }

              AddPOI = (*(a1 + 120))(a2, a3, v105, &v105);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_137;
              }
            }

            AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v105), &v105);
            if ((AddPOI & 0x80000000) == 0)
            {
              while (v105)
              {
                AddPOI = (*(a1 + 168))(a2, a3);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_137;
                }

                if (v100 != 6)
                {
                  goto LABEL_140;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v105, 1, 1, &v96, &v101);
                if ((AddPOI & 0x80000000) == 0)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v105, 2, 1, &v96 + 2, &v101);
                  if ((AddPOI & 0x80000000) == 0)
                  {
                    if (v96 > HIWORD(v96))
                    {
                      goto LABEL_55;
                    }

                    AddPOI = (*(a1 + 176))(a2, a3, v105, 4, &v99, &v101);
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = addToken_0(v10, (a4 + 648), a4 + 8, &v96, v99, v54, v55, v56);
                      if ((AddPOI & 0x80000000) == 0 || AddPOI == -1981800448)
                      {
LABEL_140:
                        AddPOI = (*(a1 + 120))(a2, a3, v105, &v105);
                        if ((AddPOI & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }

                goto LABEL_137;
              }

              AddPOI = (*(a1 + 176))(a2, a3, HIWORD(v105), 1, &v102, &v101 + 2);
              if ((AddPOI & 0x80000000) == 0)
              {
                v57 = HIWORD(v101);
                if (HIWORD(v101))
                {
                  v58 = 0;
                  v59 = v102;
                  do
                  {
                    v60 = v58;
                    if (*(v59 + 32 * v58) == 34)
                    {
                      if (v57 <= ++v58)
                      {
                        goto LABEL_141;
                      }

                      do
                      {
                        v61 = *(v59 + 32 * v58);
                        if (v61 != 21)
                        {
                          ++v58;
                        }
                      }

                      while (v57 > v58 && v61 != 21);
                      if (v61 == 21)
                      {
                        if (*(a4 + 656))
                        {
                          v69 = *(v59 + 12);
                          v70 = (*(v59 + 32 * v60 + 12) - v69);
                          v71 = (*(v59 + 32 * v58 + 12) - v69);
                          v72 = *v16;
                          v73 = *(a4 + 656) - 1;
                          do
                          {
                            v74 = *v72;
                            if (v74 >= v70 && v72[1] <= v71)
                            {
                              *(v72 + 10) = 1;
                            }

                            v75 = v74 > v71 || v73-- == 0;
                            v72 += 80;
                          }

                          while (!v75);
                        }
                      }

                      else
                      {
LABEL_141:
                        if (*(a4 + 656))
                        {
                          v63 = (*(v59 + 32 * v60 + 12) - *(v59 + 12));
                          v64 = *(v59 + 16);
                          v65 = *v16;
                          v66 = *(a4 + 656) - 1;
                          do
                          {
                            v67 = *v65;
                            if (v67 >= v63 && v65[1] <= v64)
                            {
                              *(v65 + 10) = 1;
                            }

                            v68 = v67 > v64 || v66-- == 0;
                            v65 += 80;
                          }

                          while (!v68);
                        }
                      }
                    }

                    ++v58;
                  }

                  while (v57 > v58);
                }

                AddPOI = markPhoneticRegions(v10, a4 + 648);
                if ((AddPOI & 0x80000000) == 0)
                {
                  if (*(a4 + 1416) != 1)
                  {
                    goto LABEL_135;
                  }

                  v80 = *(a4 + 656);
                  if (*(a4 + 656))
                  {
                    v81 = 0;
                    do
                    {
                      if (!HIWORD(v101))
                      {
                        goto LABEL_131;
                      }

                      v82 = 0;
                      do
                      {
                        while (1)
                        {
                          v83 = (v102 + 32 * v82);
                          if (*v83 == 1)
                          {
                            break;
                          }

                          if (++v82 >= HIWORD(v101))
                          {
                            goto LABEL_131;
                          }
                        }

                        v84 = v83[3] - *(v102 + 12);
                        v85 = (*v16)[80 * v81];
                        ++v82;
                      }

                      while (v84 != v85 && v82 < HIWORD(v101));
                      if (v84 != v85)
                      {
LABEL_131:
                        v87 = *&(*v16)[80 * v81 + 52];
                        if (v87)
                        {
                          heap_Free(*(v10 + 8), v87);
                          *(*(a4 + 648) + 160 * v81 + 104) = 0;
                          v80 = *(a4 + 656);
                        }
                      }

                      ++v81;
                    }

                    while (v81 < v80);
                  }

                  AddPOI = resolvePHR_0(__s, v10, a4 + 8, (a4 + 648), v76, v77, v78, v79);
                  if ((AddPOI & 0x80000000) == 0)
                  {
LABEL_135:
                    AddPOI = setPotentialPOSTags(v10, a4 + 8, (a4 + 648));
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = printSent_0(v10, a4 + 8, (a4 + 648), "Initialized data", *(a4 + 1416), a5, v88, v89);
                    }
                  }
                }
              }
            }
          }

LABEL_137:
          v12 = AddPOI;
        }

        else
        {
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0, v32, v33, v34, v35, v90);
        }

LABEL_55:
        for (j = 0; j != 128; j += 8)
        {
          v52 = *(v22 + j);
          if (v52)
          {
            heap_Free(*(v10 + 8), v52);
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
        log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v90);
        statpos_freeCache(v10, a4 + 648);
      }

      if (*v16)
      {
        if (*(a4 + 656))
        {
          v53 = *(*&(*v16)[80 * *(a4 + 656) - 56] + 24);
          if (v53)
          {
            heap_Free(*(v10 + 8), v53);
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
  v53 = *MEMORY[0x1E69E9840];
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
        v45 = 0;
        goto LABEL_29;
      }

      if (v22 >= v21 && a5[1] <= *(*a3 + v18 + 2))
      {
        v49 = a5[1];
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
      bzero((v25 + 160 * *(a3 + 8)), 0xC80uLL);
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
  if (v32 && (v37 = strlen(v11), v38 = heap_Calloc(*(a1 + 8), 1, (v37 + 1)), (**(*a3 + 160 * *(a3 + 8) + 48) = v38) != 0))
  {
    strcpy(v38, v11);
    strncpy(__dst, v11, 0x80uLL);
    __dst[127] = 0;
    v45 = (*(*(a3 + 120) + 144))(*(a3 + 104), *(a3 + 112), "normal", __dst, 128);
    if ((v45 & 0x80000000) == 0)
    {
      v39 = strlen(__dst);
      if (!v39)
      {
        goto LABEL_24;
      }

      v40 = v39;
      if (!strcmp(v11, __dst))
      {
        goto LABEL_24;
      }

      v41 = heap_Calloc(*(a1 + 8), 1, (v40 + 1));
      *(*a3 + 160 * *(a3 + 8) + 120) = v41;
      if (v41)
      {
        strcpy(v41, __dst);
LABEL_24:
        v42 = *(a3 + 8);
        v43 = *a3 + 160 * v42;
        *(v43 + 72) = 0;
        *(v43 + 64) = 0;
        *(v43 + 8) = v9 == 1;
        *(a3 + 8) = v42 + 1;
        *v8 = 0;
        goto LABEL_29;
      }

LABEL_28:
      v45 = 2313166858;
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v26, v27, v28, v29, v48);
    }
  }

  else
  {
    v45 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v33, v34, v35, v36, v48);
    v44 = *(*a3 + 160 * *(a3 + 8) + 48);
    if (v44 && *v44)
    {
      heap_Free(*(a1 + 8), *v44);
      **(*a3 + 160 * *(a3 + 8) + 48) = 0;
    }
  }

LABEL_29:
  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

BOOL isFollowedbySpace(uint64_t a1, char *__s, unsigned int a3)
{
  v6 = strlen(__s);
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

uint64_t addPOS(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, __int16 a6, uint64_t a7, _WORD *a8, int a9)
{
  v46 = -1;
  if (*a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = "NULL";
  }

  v16 = *(a1 + 8);
  v17 = strlen(v15);
  v18 = heap_Calloc(v16, 1, (v17 + 1));
  if (v18)
  {
    v23 = v18;
    v24 = strcpy(v18, v15);
    v25 = strchr(v24, 92);
    __s = v23;
    if (v25)
    {
      v29 = v25;
      while (1)
      {
        *v29 = 0;
        v30 = *v23 ? v23 : "*";
        if ((*(a3 + 48) = v30, *(a3 + 56) = v30, !a9) && !*(a2 + 104) || *(a2 + 184))
        {
          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v26, v27, v28, v30);
          UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v46, a8, a7, v31);
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

        v23 = v29 + 1;
        v29 = strchr(v29 + 1, 92);
        if (!v29)
        {
          if (*v23)
          {
            v33 = v23;
          }

          else
          {
            v33 = "*";
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      if (*v23)
      {
        v33 = v23;
      }

      else
      {
        v33 = "*";
      }

LABEL_27:
      *(a3 + 48) = v33;
      *(a3 + 56) = v33;
      if ((a9 || *(a2 + 104)) && !*(a2 + 184) || (log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v26, v27, v28, v33), UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v46, a8, a7, v35), (UniqDynamicPOS & 0x80000000) == 0))
      {
        if (a9 != 1 || (UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v46), (UniqDynamicPOS & 0x80000000) == 0))
        {
          if (!*(a2 + 104) || (UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v46), (UniqDynamicPOS & 0x80000000) == 0))
          {
            v34 = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v46, a6);
            if ((v34 & 0x80000000) == 0 && !*(*(*a3 + 160 * a4 + 48) + 24))
            {
              v36 = strlen(__s);
              v37 = heap_Calloc(*(a1 + 8), 1, (v36 + 1));
              *(*(*a3 + 160 * a4 + 48) + 24) = v37;
              if (v37)
              {
                strcpy(v37, __s);
              }

              else
              {
                v34 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v38, v39, v40, v41, v43);
              }
            }

            goto LABEL_40;
          }
        }
      }
    }

    v34 = UniqDynamicPOS;
LABEL_40:
    heap_Free(*(a1 + 8), __s);
    return v34;
  }

  v34 = 2313166858;
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v19, v20, v21, v22, v43);
  return v34;
}

uint64_t readAddPOI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7)
{
  v34 = 0;
  *v33 = 0;
  v14 = (*(a1 + 184))(a2, a3, a7, 14, &v34 + 2);
  if ((v14 & 0x80000000) == 0)
  {
    if (HIWORD(v34))
    {
      v14 = (*(a1 + 176))(a2, a3, a7, 14, v33, &v34);
      if ((v14 & 0x80000000) == 0 && v34 >= 2u)
      {
        v32 = 0;
        v31 = 0;
        v15 = hlp_NLUStrFind(*v33, "S_POI", &v32, &v31);
        if (v15)
        {
          v16 = v32;
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

        if (hlp_NLUStrFind(*v33, "I_POI", &v32, &v31))
        {
          v16 = v32;
          v17 = 73;
        }

        v18 = hlp_NLUStrFind(*v33, "E_POI", &v32, &v31);
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
          v16 = v32;
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
            v22 = strlen(v16);
            v23 = heap_Calloc(*(a4 + 8), 1, v22 + 3);
            *(*a5 + 160 * a6 + 136) = v23;
            if (v23)
            {
              *v23 = 44;
              strcat(*(*a5 + 160 * a6 + 136), v16);
              v28 = *(*a5 + 160 * a6 + 136);
              *&v28[strlen(v28)] = 44;
            }

            else
            {
              log_OutPublic(*(a4 + 32), "FE_POS", 35000, 0, v24, v25, v26, v27, v30);
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
  strlen(__s);
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
        goto LABEL_12;
      }
    }

    if (v11 + 1 != v16)
    {
      v30 = checkSpan_0(a1, a3, (v17 + 160 * v16 + 56));
      if ((v30 & 0x80000000) == 0)
      {
        v30 = checkSpan_0(a1, a3, (*a2 + v14 + 56));
        if ((v30 & 0x80000000) == 0)
        {
          v31 = *a2;
          v32 = *(*a2 + 160 * v16 + 56);
          *(v32 + 48) = 1;
          *(v32 + 56) = v16;
          *(v32 + 58) = v15;
          v33 = *(v31 + v14 + 56);
          *(v33 + 52) = 1;
          *(v33 + 56) = v16;
          v34 = strlen(a5);
          v35 = heap_Calloc(*(a1 + 8), 1, (v34 - 1));
          *(*(*a2 + 160 * v16 + 56) + 64) = v35;
          if (!v35)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v36, v37, v38, v39, v50);
            return 2313166858;
          }

          v40 = v35;
          v41 = strlen(a5 + 1);
          strncpy(v40, a5 + 1, v41 - 1);
          v42 = strlen(a5);
          v30 = checkAllocAndZero(a1, (*(*a2 + 160 * v16 + 48) + 16), v42 + 1);
          if ((v30 & 0x80000000) == 0)
          {
            strcat(*(*(*a2 + 160 * v16 + 48) + 16), "B-");
            v43 = strlen(a5 + 1);
            strncpy((*(*(*a2 + 160 * v16 + 48) + 16) + 2), a5 + 1, v43 - 1);
            v23 = 0;
            v44 = v16 + 1;
            if ((v16 + 1) > v15)
            {
              return v23;
            }

            while (1)
            {
              v45 = v44;
              v46 = *(*a2 + 160 * v44 + 48);
              v47 = strlen(a5);
              v30 = checkAllocAndZero(a1, (v46 + 16), v47 + 1);
              if ((v30 & 0x80000000) != 0)
              {
                break;
              }

              strcat(*(*(*a2 + 160 * v45 + 48) + 16), "I-");
              v48 = strlen(a5 + 1);
              strncpy((*(*(*a2 + 160 * v45 + 48) + 16) + 2), a5 + 1, v48 - 1);
              v23 = 0;
              v44 = v45 + 1;
              if ((v45 + 1) > v15)
              {
                return v23;
              }
            }
          }
        }
      }

      return v30;
    }
  }

  else
  {
LABEL_12:
    v22 = a4[1];
  }

  v23 = 2313166848;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, a5);
  if (*(a2 + 4))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = (*a2 + v27);
      v51 = *v29;
      v52 = v29[1];
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v24, v25, v26, v28++);
      v27 += 160;
    }

    while (v28 < *(a2 + 4));
  }

  return v23;
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

    v11 = heap_Calloc(*(a1 + 8), 1, 5);
    *(*a2 + v7 + 104) = v11;
    if (!v11)
    {
      break;
    }

    v16 = v8 == v5 ? "B-PH" : "I-PH";
    *v11 = *v16;
    *(v11 + 4) = v16[4];
    v17 = heap_Calloc(*(a1 + 8), 1, 4);
    *(*(*a2 + v7 + 48) + 24) = v17;
    if (!v17)
    {
      break;
    }

    *v17 = 4935253;
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

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v19);
  return 2313166858;
}

uint64_t resolvePHR_0(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a4[4])
  {
LABEL_73:
    v85 = 0;
    goto LABEL_77;
  }

  v11 = 0;
  v12 = 104;
  do
  {
    if (v12 != 104)
    {
      v13 = (*a4 + v12);
      if (!*v13)
      {
        v14 = *a4 + v12;
        v15 = *(v14 - 160);
        if (v15)
        {
          v16 = *(v13 - 52);
          if (v16 >= 2 && *(a1 + (v16 - 1)) == 95)
          {
            v17 = strlen(v15);
            v18 = heap_Calloc(*(a2 + 8), 1, (v17 + 3));
            v23 = *a4;
            *(*a4 + v12) = v18;
            if (!v18)
            {
              goto LABEL_74;
            }

            strcpy(v18, *(v23 + v12 - 160));
            v24 = *a4;
            v25 = *(*a4 + v12);
            if (*v25 != 79 || v25[1])
            {
              *v25 = 73;
              v24 = *a4;
            }

            v26 = *(*(v24 + v12 - 56) + 24);
            if (v26)
            {
              heap_Free(*(a2 + 8), v26);
              v24 = *a4;
              *(*(*a4 + v12 - 56) + 24) = 0;
            }

            v27 = strlen(*(*(v24 + v12 - 216) + 24));
            v28 = heap_Calloc(*(a2 + 8), 1, (v27 + 3));
            v29 = *a4;
            *(*(*a4 + v12 - 56) + 24) = v28;
            if (!v28)
            {
              goto LABEL_74;
            }

            v30 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_30:
            strcpy(v28, *(*(v29 + v12 - 216) + 24));
            v45 = (*a4 + v12);
            v89 = *v45;
            v92 = *(*(v45 - 7) + 24);
            log_OutText(*(a2 + 32), "FE_POS", 5, 0, v30, v46, v47, v48, v11);
            goto LABEL_31;
          }
        }

        v31 = *(v14 - 160);
        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = *v31;
        if (v32 == 66)
        {
          v39 = strlen(v31);
          v40 = heap_Calloc(*(a2 + 8), 1, (v39 + 3));
          v41 = *a4;
          *(*a4 + v12) = v40;
          if (!v40)
          {
            goto LABEL_74;
          }

          strcpy(v40, *(v41 + v12 - 160));
          **(*a4 + v12) = 73;
          v42 = *a4;
          v43 = *(*(*a4 + v12 - 56) + 24);
          if (v43)
          {
            heap_Free(*(a2 + 8), v43);
            v42 = *a4;
            *(*(*a4 + v12 - 56) + 24) = 0;
          }

          v44 = strlen(*(*(v42 + v12 - 216) + 24));
          v28 = heap_Calloc(*(a2 + 8), 1, (v44 + 3));
          v29 = *a4;
          *(*(*a4 + v12 - 56) + 24) = v28;
          if (!v28)
          {
LABEL_74:
            v85 = 2313166858;
            log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0, v19, v20, v21, v22, v88);
            goto LABEL_77;
          }

          v30 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_30;
        }

        if (v32 == 79 || v32 == 73)
        {
          v33 = strlen(v31);
          v34 = heap_Calloc(*(a2 + 8), 1, (v33 + 3));
          v35 = *a4;
          *(*a4 + v12) = v34;
          if (!v34)
          {
            goto LABEL_74;
          }

          strcpy(v34, *(v35 + v12 - 160));
          v36 = *a4;
          v37 = *(*(*a4 + v12 - 56) + 24);
          if (v37)
          {
            heap_Free(*(a2 + 8), v37);
            v36 = *a4;
            *(*(*a4 + v12 - 56) + 24) = 0;
          }

          v38 = strlen(*(*(v36 + v12 - 216) + 24));
          v28 = heap_Calloc(*(a2 + 8), 1, (v38 + 3));
          v29 = *a4;
          *(*(*a4 + v12 - 56) + 24) = v28;
          if (!v28)
          {
            goto LABEL_74;
          }

          v30 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_30;
        }
      }
    }

LABEL_31:
    ++v11;
    v49 = a4[4];
    v12 += 160;
  }

  while (v11 < v49);
  if (!a4[4])
  {
    goto LABEL_73;
  }

  v50 = 0;
  v51 = (*a4 + 104);
  v52 = a3;
  do
  {
    if (!*v51)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "could not work out PHR on word : word index=%d", a6, a7, a8, v50);
LABEL_76:
      v85 = 2313166848;
      goto LABEL_77;
    }

    ++v50;
    v51 += 20;
  }

  while (v49 != v50);
  v53 = 0;
  v54 = 104;
  do
  {
    v55 = *(*a4 + v54);
    if (*v55 == 73 && v55[1] == 45)
    {
      if (v54 == 104)
      {
        *v55 = 66;
        v90 = *(*a4 + 104);
        log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", a6, a7, a8, 0);
      }

      else if (strcmp(*(*a4 + v54 - 160), *(*a4 + v54)))
      {
        __strcpy_chk();
        __s2[0] = 66;
        v56 = *a4;
        if (strcmp(*(*a4 + v54 - 160), __s2))
        {
          **(v56 + v54) = 66;
          v91 = *(*a4 + v54);
          log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", a6, a7, a8, v53);
        }
      }
    }

    ++v53;
    v54 += 160;
  }

  while (v53 < a4[4]);
  if (!a4[4])
  {
    goto LABEL_73;
  }

  v57 = 0;
  v58 = 0;
  do
  {
    v59 = v58;
    v60 = *(*a4 + 160 * v58 + 104);
    __strcpy_chk();
    if (*__s2 == 11586)
    {
      v64 = *(*a4 + 160 * v58 + 104);
      __strcpy_chk();
    }

    v65 = a4[4];
    v66 = v58;
    if (v65 > v58)
    {
      v94 = v57;
      v67 = *a4;
      v68 = *a4 + 160 * v58;
      v66 = v58;
      while (1)
      {
        v69 = v67 + 160 * v66;
        v70 = *(v69 + 104);
        if (!v70 || (strlen(*(v69 + 104)) < 3 || strcmp((v70 + 2), __s2) || *v70 != 73 || *(v70 + 1) != 45) && *(v67 + 160 * v66 + 4) != *(v68 + 4))
        {
          break;
        }

        if (v65 <= ++v66)
        {
          v66 = v65;
          break;
        }
      }

      v57 = v94;
      v52 = a3;
      v59 = v58;
    }

    v71 = v66 - 1;
    log_OutText(*(a2 + 32), "FE_POS", 5, 0, "[3] add syn chunk %s from %d to %d", v61, v62, v63, __s2);
    if (v58 > (v66 - 1) || a4[4] <= v71)
    {
      v93 = a4[4];
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "syntactic chunks out of order: fromWordIdx=%d toWordIdx=%d numWords=%d", v72, v73, v74, v57);
      goto LABEL_76;
    }

    v75 = checkSpan_0(a2, v52, (*a4 + 160 * v59 + 56));
    if ((v75 & 0x80000000) != 0 || (v75 = checkSpan_0(a2, v52, (*a4 + 160 * (v66 - 1) + 56)), (v75 & 0x80000000) != 0))
    {
      v85 = v75;
      goto LABEL_77;
    }

    v76 = *a4;
    v77 = 5 * v59;
    v78 = *(*a4 + 32 * v77 + 56);
    *(v78 + 96) = 1;
    *(v78 + 104) = v58;
    *(v78 + 106) = v71;
    v79 = *(v76 + 160 * (v66 - 1) + 56);
    *(v79 + 100) = 1;
    *(v79 + 104) = v58;
    v80 = strlen(__s2);
    v81 = heap_Calloc(*(a2 + 8), 1, (v80 + 1));
    *(*(*a4 + 32 * v77 + 56) + 112) = v81;
    if (!v81)
    {
      goto LABEL_74;
    }

    strcpy(v81, __s2);
    if (v58 == v66)
    {
      v58 = v66 + 1;
    }

    else
    {
      v58 = v66;
    }

    v57 = v58;
  }

  while (v58 < a4[4]);
  if (!a4[4])
  {
    goto LABEL_73;
  }

  v82 = 0;
  v83 = *a4;
  v84 = 104;
  do
  {
    heap_Free(*(a2 + 8), *(v83 + v84));
    v85 = 0;
    v83 = *a4;
    *(*a4 + v84) = 0;
    ++v82;
    v84 += 160;
  }

  while (v82 < a4[4]);
LABEL_77:
  v86 = *MEMORY[0x1E69E9840];
  return v85;
}

uint64_t setPotentialPOSTags(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  __s2[0] = *(a2 + 120);
  __s2[1] = 0;
  if (*(a3 + 4))
  {
    v4 = 0;
    v5 = *a3;
    do
    {
      v6 = v5 + 160 * v4;
      v7 = *(v6 + 72);
      if (*(v6 + 72))
      {
        v8 = 0;
        v9 = *(v6 + 72);
        v10 = *(v6 + 64);
        do
        {
          v11 = *v10;
          v10 += 6;
          v8 += strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * v11)));
          --v9;
        }

        while (v9);
        *(v6 + 80) = 0;
        if (v8)
        {
          v12 = heap_Calloc(*(a1 + 8), 1, 2 * v7 + v8 + 1);
          v17 = *a3;
          *(*a3 + 160 * v4 + 80) = v12;
          if (!v12)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v34);
            result = 2313166858;
            goto LABEL_19;
          }

          if (*(v17 + 160 * v4 + 72))
          {
            v18 = 0;
            v19 = 0;
            v20 = *(a2 + 296);
            v21 = *(a2 + 304);
            v22 = *a3;
            v23 = *a3 + 160 * v4;
            v24 = __dst;
            do
            {
              v25 = strcpy(v24, (v20 + *(v21 + 4 * *(*(v17 + 160 * v4 + 64) + v18))));
              ++v19;
              v26 = *(v23 + 72);
              v24 = v25 + 16;
              v18 += 24;
              v17 = v22;
            }

            while (v19 < v26);
          }

          else
          {
            v26 = 0;
          }

          ssft_qsort(__dst, v26, 16, string_cmp);
          strcpy(*(*a3 + 160 * v4 + 80), __dst);
          v5 = *a3;
          if (*(*a3 + 160 * v4 + 72) >= 2u)
          {
            v27 = v34;
            v28 = 1;
            do
            {
              strcat(*(v5 + 160 * v4 + 80), __s2);
              strcat(*(*a3 + 160 * v4 + 80), v27);
              ++v28;
              v5 = *a3;
              v27 += 16;
            }

            while (v28 < *(*a3 + 160 * v4 + 72));
          }
        }
      }

      else
      {
        *(v6 + 80) = 0;
      }

      ++v4;
    }

    while (v4 < *(a3 + 4));
  }

  result = 0;
LABEL_19:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}