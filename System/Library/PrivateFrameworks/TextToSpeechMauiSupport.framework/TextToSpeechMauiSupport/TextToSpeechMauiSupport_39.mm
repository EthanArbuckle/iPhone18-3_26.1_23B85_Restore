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
  v85 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  __src = 0;
  DictCharString = paramc_ParamGet(*(*a1 + 40), "langcode", &__src, 0);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  cstdlib_strncpy(a1 + 186, __src, 3uLL);
  a1[186] = ssft_tolower(a1[186]);
  a1[187] = ssft_tolower(a1[187]);
  *(a1 + 94) = 120;
  a1[97] = 1;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermwspan", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    v4 = cstdlib_atoi(**&__c[3]);
    v5 = v4 ? v4 : 1;
    a1[97] = v5;
  }

  else
  {
    v5 = a1[97];
  }

  *(a1 + 49) = 250 * v5;
  a1[96] = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumdicts", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1] && *&__c[3])
  {
    v9 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v9)
    {
      *v9 = 0;
    }

    v10 = cstdlib_atoi(**&__c[3]);
    a1[96] = v10;
    v11 = heap_Calloc(*(*a1 + 8), 1, (8 * v10) | 1u);
    *(a1 + 11) = v11;
    v16 = *a1;
    if (!v11)
    {
      EmbeddedCharRule = 2687508490;
LABEL_135:
      log_OutPublic(*(v16 + 32), "POSPARSER", 68000, 0, v12, v13, v14, v15, v78);
      return EmbeddedCharRule;
    }

    v17 = heap_Calloc(*(v16 + 8), 1, a1[96] + 1);
    *(a1 + 10) = v17;
    if (!v17)
    {
      goto LABEL_134;
    }

    if (a1[96])
    {
      v18 = 0;
      do
      {
        *(*(a1 + 10) + v18) = 0;
        *(*(a1 + 11) + 8 * v18++) = 0;
      }

      while (v18 < a1[96]);
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserdicname", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
      goto LABEL_97;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v23 = **&__c[3];
      v24 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v24)
      {
        *v24 = 0;
      }

      if (v23)
      {
        v29 = 0;
        while (1)
        {
          v30 = cstdlib_strchr(v23, 43);
          v31 = v30;
          if (v30)
          {
            *v30 = 0;
          }

          v32 = *(*a1 + 8);
          v33 = cstdlib_strlen(v23);
          *(*(a1 + 11) + 8 * v29) = heap_Calloc(v32, 1, (v33 + 1));
          v34 = *(*(a1 + 11) + 8 * v29);
          if (!v34)
          {
            goto LABEL_134;
          }

          cstdlib_strcpy(v34, v23);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using dict[%d] %s", v35, v36, v37, v29++);
          v23 = v31 + 1;
          if (!v31)
          {
            v38 = v29;
            goto LABEL_84;
          }
        }
      }

      v38 = 0;
LABEL_84:
      if (v38 != a1[96])
      {
        v63 = *(*a1 + 32);
        v64 = "numDicts read in=";
LABEL_111:
        log_OutPublic(v63, "POSPARSER", 68003, "%s%d%s%d", v25, v26, v27, v28, v64);
        return 2687508480;
      }
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserngramlevel", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
LABEL_97:
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68002, "%s%s", v19, v20, v21, v22, "missing keyword:");
      return 2687508480;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v54 = **&__c[3];
      v55 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v55)
      {
        *v55 = 0;
      }

      if (v54)
      {
        v56 = 0;
        do
        {
          v57 = cstdlib_strchr(v54, 43);
          v58 = v57;
          if (v57)
          {
            *v57 = 0;
          }

          *(*(a1 + 10) + v56) = cstdlib_atoi(v54);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using ngram levels[%d] %d", v59, v60, v61, v56++);
          v54 = v58 + 1;
        }

        while (v58);
        v62 = v56;
      }

      else
      {
        v62 = 0;
      }

      if (v62 != a1[96])
      {
        v63 = *(*a1 + 32);
        v64 = "ngramLevels read=";
        goto LABEL_111;
      }
    }
  }

  else
  {
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    a1[96] = 0;
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "WARNING - No ngram dicts, continuing anyway", v6, v7, v8, v78);
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "araparsermode", &__src);
  if ((Str & 0x80000000) == 0 && (Str & 0x1FFF) != 0x14)
  {
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Araparser mode : %s", v40, v41, v42, __src);
    *(a1 + 16) = 0;
    if (!LH_stricmp("dict_plus_ngrams", __src))
    {
      v43 = 0;
      goto LABEL_45;
    }

    if (!LH_stricmp("dict_only", __src))
    {
      v43 = 1;
      goto LABEL_45;
    }

    if (!LH_stricmp("ngrams_only", __src))
    {
      v43 = 2;
LABEL_45:
      *(a1 + 16) = v43;
    }
  }

  paramc_ParamRelease(*(*a1 + 40));
  __src = 0;
  DictCharString = posparser_loc_getDictCharString(a1, "araparserspacedout", a1 + 14);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparsersmspunc", a1 + 13);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass1", a1 + 16);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass2", a1 + 17);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass3", a1 + 18);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  *(a1 + 62) = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "arwpospredictiononly", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v45 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v45)
    {
      *v45 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "1"))
    {
      *(a1 + 62) = 1;
      *(a1 + 35) = 1;
      goto LABEL_101;
    }
  }

  v46 = *(a1 + 62);
  *(a1 + 35) = 1;
  if (v46 == 1)
  {
LABEL_101:
    *&__c[1] = -1;
    EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumposdicparts", &__c[3], &__c[1], __c);
    if ((EmbeddedCharRule & 0x80000000) == 0 && *&__c[1])
    {
      v65 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v65)
      {
        *v65 = 0;
      }

      *(a1 + 35) = cstdlib_atoi(**&__c[3]);
      if (a1[97])
      {
        a1[97] = 0;
      }

      *(a1 + 49) = 2048;
    }

    return EmbeddedCharRule;
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumparts", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    return EmbeddedCharRule;
  }

  v47 = cstdlib_strchr(**&__c[3], __c[0]);
  if (v47)
  {
    *v47 = 0;
  }

  a1[68] = cstdlib_atoi(**&__c[3]);
  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    return EmbeddedCharRule;
  }

  v48 = cstdlib_strchr(**&__c[3], __c[0]);
  if (v48)
  {
    *v48 = 0;
  }

  a1[72] = cstdlib_atoi(**&__c[3]);
  DictCharString = posparser_loc_getDictCharString(a1, "araparserdiacriticlist", a1 + 15);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermapXBI2A", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v49 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v49)
    {
      *v49 = 0;
    }

    if (!cstdlib_atoi(**&__c[3]))
    {
      *(a1 + 38) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparseroldPuncClass", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v50 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v50)
    {
      *v50 = 0;
    }

    if (!cstdlib_atoi(**&__c[3]))
    {
      *(a1 + 39) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumpostcorrrules", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v51 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v51)
    {
      *v51 = 0;
    }

    v52 = cstdlib_atoi(**&__c[3]);
    v53 = v52;
    *(a1 + 84) = v52;
  }

  else
  {
    v53 = *(a1 + 84);
  }

  if (v53)
  {
    v66 = heap_Calloc(*(*a1 + 8), 1, (56 * v53) | 1);
    *(a1 + 20) = v66;
    if (!v66)
    {
      goto LABEL_134;
    }

    if (*(a1 + 84))
    {
      v67 = 0;
      v68 = 0;
      do
      {
        cstdlib_memset(__b, 0, 0x20uLL);
        cstdlib_strcpy(__b, "araparserpostcorr");
        v69 = LH_itoa(v68, v79, 0xAu);
        cstdlib_strcat(v83, v69);
        DictCharString = posparser_loc_getPostCorrRule(a1, __b, *(a1 + 20) + v67);
        if ((DictCharString & 0x80000000) != 0)
        {
          return DictCharString;
        }

        ++v68;
        v67 += 56;
      }

      while (v68 < *(a1 + 84));
    }
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumecharrewrite", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v70 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v70)
      {
        *v70 = 0;
      }

      v71 = cstdlib_atoi(**&__c[3]);
      v72 = v71;
      *(a1 + 92) = v71;
    }

    else
    {
      v72 = *(a1 + 92);
    }

    if (v72)
    {
      v74 = heap_Calloc(*(*a1 + 8), 1, (2 * v72) | 1);
      *(a1 + 22) = v74;
      if (v74)
      {
        if (*(a1 + 92))
        {
          v75 = 0;
          v76 = 0;
          do
          {
            cstdlib_memset(__b, 0, 0x20uLL);
            cstdlib_strcpy(__b, "araparserecharrewrite");
            v77 = LH_itoa(v76, v79, 0xAu);
            cstdlib_strcat(v84, v77);
            EmbeddedCharRule = posparser_loc_getEmbeddedCharRule(a1, __b, (*(a1 + 22) + v75));
            if ((EmbeddedCharRule & 0x80000000) != 0)
            {
              break;
            }

            ++v76;
            v75 += 2;
          }

          while (v76 < *(a1 + 92));
        }

        return EmbeddedCharRule;
      }

LABEL_134:
      EmbeddedCharRule = 2687508490;
      v16 = *a1;
      goto LABEL_135;
    }
  }

  return EmbeddedCharRule;
}

uint64_t posparser_Process(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, const char **a8, uint64_t *a9, _WORD *a10)
{
  v13 = a1;
  __b[8] = *MEMORY[0x277D85DE8];
  v14 = *a9;
  v15 = *a10;
  v16 = *a8;
  v673 = heap_Calloc(*(*a1 + 8), 1, a1[49] + 1);
  if (!v673)
  {
    v665 = -1607458806;
    log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0, v17, v18, v19, v20, v610);
    *a10 = v15;
    *a8 = v16;
    *a9 = v14;
    return v665;
  }

  v638 = a8;
  v676 = *(v13 + 98);
  v671 = v13;
  __s = v16;
  v670 = v15;
  v659 = v14;
  if (a6 == 1)
  {
    __b[0] = 0;
    LOWORD(v678) = -1;
    LOBYTE(__c[0]) = 0;
    *__s2 = 0;
    *__src = 0;
  }

  else
  {
    if (*(v13 + 64) > 1u)
    {
      goto LABEL_271;
    }

    __b[0] = 0;
    LOWORD(v678) = -1;
    LOBYTE(__c[0]) = 0;
    if (!a6)
    {
      cstdlib_strcpy(__dst, "tn");
      v24 = *(v13 + 72);
      goto LABEL_8;
    }
  }

  cstdlib_strcpy(__dst, "isolatedword");
  v24 = 1;
LABEL_8:
  v653 = v24;
  v648 = a5;
  v25 = a4;
  if (!a5)
  {
    goto LABEL_84;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  POSAndDiacritics = 0;
  v30.i64[0] = 0x100000001;
  v30.i64[1] = 0x100000001;
  do
  {
    *__s1 = 0;
    v31 = *(v13 + 97);
    v32 = v28;
    v33 = v25 + 104 * v28;
    v666 = v28;
    v661 = v28;
    while (1)
    {
      v34 = v26 + v31;
      if (v34 >= a5)
      {
LABEL_29:
        v35 = 0;
LABEL_30:
        v50 = -1;
        goto LABEL_31;
      }

      if (v34 >= v32)
      {
        v36 = 0;
        v37 = 0uLL;
        v38 = v28;
        do
        {
          v39 = (v25 + 104 * v38);
          if (v39[4].i16[5])
          {
            v36 = 1;
          }

          v40 = vceqq_s32(v39[5], v30);
          v37 = vsubq_s32(vbicq_s8(v37, v40), v40);
          ++v38;
        }

        while (v34 >= v38);
        v41 = vmovn_s32(vtstq_s32(v37, v37));
        v41.i16[0] = vmaxv_u16(v41);
        v35 = (v36 == 0) & (v41.i32[0] ^ 1);
      }

      else
      {
        v35 = 1;
      }

      if (!*(v13 + 248))
      {
        if (*(v13 + 208))
        {
          v27 = 0;
          v53 = 0;
          do
          {
            if (v27)
            {
              break;
            }

            v54 = *(*(v13 + 200) + 6 * v53);
            if (v54 > *(v25 + 104 * v34 + 10))
            {
              break;
            }

            v55 = *(v33 + 8);
            v27 = v54 >= v55;
            if (v54 < v55)
            {
              ++v53;
            }
          }

          while (*(v13 + 208) > v53);
        }

        else
        {
          v27 = 0;
        }
      }

      if (!v35)
      {
        goto LABEL_30;
      }

      v42 = v25 + 104 * v34;
      v44 = *(v42 + 10);
      v43 = (v42 + 10);
      v45 = *(v33 + 8);
      v46 = v44 - v45;
      if (v46 >= *(v13 + 98))
      {
        goto LABEL_29;
      }

      cstdlib_strncpy(v673, &__s[v45], v46);
      v673[*v43 - *(v33 + 8)] = 0;
      if (*(v13 + 184))
      {
        posparser_undoEmbeddedRules(v13, v673);
      }

      if (*(v13 + 232) != 1)
      {
        break;
      }

      v47 = *(v13 + 70);
      if (v47 == 1)
      {
        LOWORD(v678) = -1;
        if (*(v13 + 248) == 1 && (v48 = *(v33 + 96)) != 0)
        {
          v49 = (*(*(v13 + 24) + 96))(*(v13 + 8), *(v13 + 16), v13 + 240, v48, __b, &v678, __c);
        }

        else
        {
          v49 = (*(*(v13 + 24) + 96))(*(v13 + 8), *(v13 + 16), v13 + 240, v673, __b, &v678, __c);
        }
      }

      else
      {
        LOWORD(v678) = 0;
        if (*(v13 + 248) == 1 && (v64 = *(v33 + 96)) != 0)
        {
          v49 = (*(*(v13 + 24) + 152))(*(v13 + 8), *(v13 + 16), v13 + 240, v64, __b, &v678, __c, v47);
        }

        else
        {
          v49 = (*(*(v13 + 24) + 152))(*(v13 + 8), *(v13 + 16), v13 + 240, v673, __b, &v678, __c, v47);
        }
      }

      POSAndDiacritics = v49;
      v30.i64[0] = 0x100000001;
      v30.i64[1] = 0x100000001;
      if ((v49 & 0x80000000) != 0)
      {
LABEL_79:
        v665 = POSAndDiacritics;
        goto LABEL_81;
      }

      v35 = v678;
      if (!v678)
      {
        v50 = -1;
        v25 = a4;
        v28 = v666;
        goto LABEL_64;
      }

      POSAndDiacritics = posparser_GetPOSAndDiacritics(v13, v27, __s, a4, v673, v666, v31, __b[0], v678, __c[0], __s1);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        goto LABEL_79;
      }

      v35 = *__s1;
      if (*__s1)
      {
        v50 = 0;
      }

      else
      {
        v50 = -1;
      }

LABEL_63:
      v25 = a4;
      v28 = v666;
      v30.i64[0] = 0x100000001;
      v30.i64[1] = 0x100000001;
LABEL_64:
      v32 = v661;
LABEL_31:
      v51 = v50 + v31;
      v31 = (v50 + v31);
      v52 = v31 >= 0;
      if (v51 < 0 || v35)
      {
        v65 = v35 == 1;
        goto LABEL_67;
      }
    }

    LOWORD(v678) = 0;
    v56 = (*(*(v13 + 24) + 152))(*(v13 + 8), *(v13 + 16), __dst, v673, __b, &v678, __c, v653);
    POSAndDiacritics = v56;
    if ((v56 & 0x80000000) != 0)
    {
      v665 = v56;
      v13 = v671;
      goto LABEL_81;
    }

    v35 = v678;
    if (!v678)
    {
      v50 = -1;
      v13 = v671;
      goto LABEL_63;
    }

    posparser_GetHighestPriority(__b[0], &v678, LOBYTE(__c[0]));
    v57 = cstdlib_strchr(*&__b[0][8 * v678], LOBYTE(__c[0]));
    if (v57)
    {
      *v57 = 0;
    }

    *__s2 = 0;
    *__src = 0;
    if (!v27)
    {
      goto LABEL_76;
    }

    v13 = v671;
    log_OutText((*v671)[4], "POSPARSER", 5, 0, "FOUND %s in dict as %s - try reconcile", v58, v59, v60, v673);
    POSAndDiacritics = posparser_isReconcilable(v671, __s, *&__b[0][8 * v678], *(v33 + 8), *v43, __s2, __src);
    if ((POSAndDiacritics & 0x80000000) != 0)
    {
      goto LABEL_79;
    }

    if (!*__s2)
    {
      log_OutText((*v671)[4], "POSPARSER", 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL", v61, v62, v63, *&__b[0][8 * v678]);
      v35 = 0;
      v27 = 1;
      v50 = -1;
      a5 = v648;
      goto LABEL_63;
    }

    if (*__s2 == 1 && *__src)
    {
      posparser_PostProcess(v671, __src);
      v68 = (*v671)[1];
      v69 = *__src;
      v70 = cstdlib_strlen(*__src);
      v71 = heap_Calloc(v68, 1, (v70 + 1));
      *(v33 + 16) = v71;
      if (v71)
      {
        cstdlib_strcpy(v71, v69);
        heap_Free((*v671)[1], v69);
        *__src = 0;
        v27 = 1;
        goto LABEL_78;
      }

LABEL_179:
      v665 = -1607458806;
      log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0, v72, v73, v74, v75, v610);
LABEL_81:
      *a10 = v670;
      v82 = v673;
      *v638 = __s;
      *a9 = v14;
      goto LABEL_853;
    }

LABEL_76:
    v13 = v671;
    v79 = (*v671)[1];
    v80 = cstdlib_strlen(*&__b[0][8 * v678]);
    v81 = heap_Calloc(v79, 1, (v80 + 1));
    *(v33 + 16) = v81;
    if (!v81)
    {
      goto LABEL_179;
    }

    cstdlib_strcpy(v81, *&__b[0][8 * v678]);
LABEL_78:
    *(v33 + 72) = v34;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "FOUND in dict pWordDefs[%d]=%s", v76, v77, v78, v26);
    v65 = 1;
    *__s1 = 1;
    v52 = (v31 & 0x8000u) == 0;
    a5 = v648;
    v25 = a4;
    v28 = v666;
    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
LABEL_67:
    if (v52 && v65)
    {
      v66 = v31;
    }

    else
    {
      v66 = 0;
    }

    v67 = v28 + v66;
    v28 = v67 + 1;
    v26 = (v67 + 1);
  }

  while (v26 < a5);
  v16 = __s;
  v15 = v670;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    v665 = POSAndDiacritics;
    v111 = a9;
    v110 = v638;
    v112 = a10;
    goto LABEL_103;
  }

LABEL_84:
  if (*(v13 + 232) == 1)
  {
    v83 = posparser_doPatternMatching(v16, v673, v13, a4, a5, v21, v22, v23);
    if ((v83 & 0x80000000) == 0)
    {
      *__dst = 0;
      __b[0] = 0;
      *__src = 0;
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "posparser_doPOSDisambiguation()", v84, v85, v86, 0);
      v90 = a4;
      if (a5)
      {
        v91 = 0;
        v92 = 0;
        LOWORD(v93) = 0;
        do
        {
          v94 = v90 + 104 * v91;
          if (*(v94 + 32) <= v93)
          {
            v93 = v93;
          }

          else
          {
            v93 = *(v94 + 32);
          }

          if (*(v94 + 32))
          {
            v95 = 0;
            v96 = 0;
            do
            {
              v97 = cstdlib_strlen(*(*(v94 + 24) + v95));
              if (v97 > v92)
              {
                v92 = v97;
              }

              ++v96;
              v95 += 16;
            }

            while (v96 < *(v94 + 32));
          }

          ++v91;
          v90 = a4;
        }

        while (v91 != a5);
        v98 = (v92 + 1);
        if (v93)
        {
          v13 = v671;
          v99 = heap_Calloc((*v671)[1], 1, (v92 + 1) * v93);
          v90 = a4;
          v104 = v99;
          v15 = v670;
          if (!v99)
          {
            v105 = 0;
            v106 = 0;
            v107 = 17;
            v108 = 17;
            v14 = v659;
            goto LABEL_100;
          }
        }

        else
        {
          v104 = 0;
          v15 = v670;
          v13 = v671;
        }

        v113 = 0;
        while (1)
        {
          v114 = v90 + 104 * v113;
          v115 = heap_Calloc(*(*v13 + 8), 1, *(v114 + 10) - *(v114 + 8) + 1);
          *(v114 + 56) = v115;
          if (!v115)
          {
            break;
          }

          cstdlib_strncpy(v115, &__s[*(v114 + 8)], *(v114 + 10) - *(v114 + 8));
          *(*(v114 + 56) - *(v114 + 8) + *(v114 + 10)) = 0;
          if (*(v114 + 32))
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            do
            {
              v119 += cstdlib_strlen(*(*(v114 + 24) + v117)) + 2;
              ++v118;
              v120 = *(v114 + 32);
              v117 += 16;
            }

            while (v118 < v120);
            *(v114 + 48) = 0;
            v13 = v671;
            if (v119)
            {
              v121 = heap_Calloc((*v671)[1], 1, (v120 + v119 + 1));
              *(v114 + 48) = v121;
              v15 = v670;
              if (!v121)
              {
                break;
              }

              if (v104)
              {
                if (*(v114 + 32))
                {
                  v122 = 0;
                  v123 = 0;
                  v124 = v104;
                  do
                  {
                    cstdlib_strcpy(v124, *(*(v114 + 24) + v122));
                    ++v123;
                    v125 = *(v114 + 32);
                    v122 += 16;
                    v124 += v98;
                  }

                  while (v123 < v125);
                }

                else
                {
                  v125 = 0;
                }

                ssft_qsort(v104, v125, v98, string_cmp_1);
                cstdlib_strcpy(*(v114 + 48), v104);
                v13 = v671;
                if (*(v114 + 32) >= 2u)
                {
                  v126 = &v104[v98];
                  v127 = 1;
                  do
                  {
                    cstdlib_strcat(*(v114 + 48), "/");
                    cstdlib_strcat(*(v114 + 48), v126);
                    ++v127;
                    v126 += v98;
                  }

                  while (v127 < *(v114 + 32));
                }
              }
            }
          }

          else
          {
            *(v114 + 48) = 0;
          }

          ++v113;
          v15 = v670;
          v90 = a4;
          if (v113 == a5)
          {
            v128 = 0;
            v129 = 1;
            goto LABEL_125;
          }
        }

        v128 = -1607458806;
        log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0, v116, v87, v88, v89, v611);
        v129 = 0;
LABEL_125:
        v16 = __s;
        v14 = v659;
        if (v104)
        {
          heap_Free(*(*v13 + 8), v104);
        }

        if (!v129)
        {
          v665 = v128;
          v662 = 0;
          v106 = 0;
          v107 = 17;
          v108 = 17;
          goto LABEL_229;
        }
      }

      if (*(v13 + 236))
      {
        v130 = v13;
        v107 = 17;
        v108 = 17;
      }

      else
      {
        v131 = *(v13 + 216);
        v130 = v13;
        v107 = *(*(v13 + 224) + 1296) - 1;
        v108 = *(v131 + 1296) - 1;
      }

      log_OutText(*(*v130 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:NEWSENT", v87, v88, v89, v611);
      v106 = heap_Calloc(*(*v130 + 8), 1, 8 * v107);
      v109 = *v130;
      if (!v106)
      {
        goto LABEL_175;
      }

      inited = posparser_initFeatureVector(v109, v106, v107);
      if ((inited & 0x80000000) != 0)
      {
        v665 = inited;
        v662 = 0;
        goto LABEL_229;
      }

      v133 = heap_Calloc((*v671)[1], 1, 8 * v108);
      v109 = *v671;
      if (v133)
      {
        v134 = posparser_initFeatureVector(v109, v133, v108);
        v135 = v134;
        v662 = v133;
        if ((v134 & 0x80000000) != 0)
        {
          v665 = v134;
          goto LABEL_229;
        }

        *__src = 128;
        v136 = heap_Calloc((*v671)[1], 1, 129);
        __b[0] = v136;
        if (v136)
        {
          v137 = v136;
          cstdlib_strcpy(v136, "");
          v665 = v135;
          if (!a5)
          {
            v186 = v671;
            goto LABEL_230;
          }

          v138 = 0;
          v139 = a4;
          do
          {
            v140 = *(a4 + 104 * v138 + 72);
            if (v140 != 9999 && v140 != v138)
            {
              if (v140 > v138)
              {
                v141 = v138 + 1;
                do
                {
                  *(a4 + 104 * v141++ + 40) = "MULTIWORD";
                }

                while (v140 >= v141);
              }

              v138 = v140;
            }

            ++v138;
          }

          while (a5 > v138);
          v646 = v106;
          v142 = 0;
          while (2)
          {
            v143 = v139 + 104 * v142;
            v144 = *(v143 + 8);
            v145 = *(v143 + 10) - v144;
            if (v145 > *(v671 + 49))
            {
              LOWORD(v145) = *(v671 + 49);
            }

            v146 = v145;
            cstdlib_strncpy(v673, &__s[v144], v145);
            v673[v146] = 0;
            if (!*(v143 + 32))
            {
              if (*(v143 + 80) == 1)
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "DIGITCLASS  :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = &szPOSDIGITCLASS;
              }

              else if (*(v143 + 84) == 1)
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "PUNCTCLASS  :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = "PUNCT";
              }

              else if (*(v143 + 12) == 1)
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "DIACRITIZED :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = "DIACRITIZED";
              }

              else if (*(v143 + 88) == 1)
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "LATIN       :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = "LATIN";
              }

              else if (*(v143 + 92) == 1)
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "SPELLMODE   :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = "SPELLMODE";
              }

              else if (*(v143 + 74))
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "PHONETIC    :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = "PHONETIC";
              }

              else
              {
                v156 = *(v143 + 40);
                if (v156 && !cstdlib_strcmp(v156, "MULTIWORD"))
                {
                  log_OutText((*v671)[4], "POSPARSER", 5, 0, "MULTIWORD   :             : word[%2d] %10s", v147, v148, v149, v142);
                  goto LABEL_172;
                }

                log_OutText((*v671)[4], "POSPARSER", 5, 0, "OOV         :             : word[%2d] %10s", v147, v148, v149, v142);
                v150 = "OOV";
              }

              *(v143 + 40) = v150;
              goto LABEL_172;
            }

            if (*(v143 + 32) == 1)
            {
              log_OutText((*v671)[4], "POSPARSER", 5, 0, "KNOWN       : UNAMBIGUOUS : word[%2d] %10s : POS=%s DIA=%s", v147, v148, v149, v142);
            }

            else
            {
              log_OutText((*v671)[4], "POSPARSER", 5, 0, "KNOWN       : AMBIGUOUS   : word[%2d] %10s : ", v147, v148, v149, v142);
              if (*(v143 + 32))
              {
                v154 = 0;
                v155 = 0;
                do
                {
                  log_OutText((*v671)[4], "POSPARSER", 5, 0, "                                                  POS=%s DIA=%s", v151, v152, v153, *(*(v143 + 24) + v154));
                  ++v155;
                  v154 += 16;
                }

                while (v155 < *(v143 + 32));
              }
            }

LABEL_172:
            ++v142;
            v139 = a4;
            if (v142 != a5)
            {
              continue;
            }

            break;
          }

          v157 = 0;
          v158 = 0;
          while (2)
          {
            v159 = v139 + 104 * v158;
            if (*(v159 + 72) == 9999)
            {
              v160 = v158;
            }

            else
            {
              v160 = *(v159 + 72);
            }

            v161 = *(v159 + 8);
            v162 = *(v139 + 104 * v160 + 10) - v161;
            if (v162 > *(v671 + 49))
            {
              LOWORD(v162) = *(v671 + 49);
            }

            v163 = v162;
            cstdlib_strncpy(v673, &__s[v161], v162);
            v673[v163] = 0;
            log_OutText((*v671)[4], "POSPARSER", 5, 0, "Doing word[%2d] %10s", v164, v165, v166, v157);
            if (*(v159 + 32))
            {
              v106 = v646;
              if (*(v159 + 32) == 1)
              {
                if (*(v671 + 59) == 1)
                {
                  log_OutText((*v671)[4], "POSPARSER", 5, 0, "%d FEATUREVECTOR:UNAMBIGUOUS:0:%s %s", v87, v88, v89, v157);
                }

                goto LABEL_209;
              }

              v167 = setPosparserFeatureVector(v671, v673, v671[28], v158, v646, a4, a5, v107);
              if ((v167 & 0x80000000) != 0)
              {
                v665 = v167;
                v16 = __s;
                v15 = v670;
                v14 = v659;
                goto LABEL_229;
              }

              v168 = *(v671 + 59);
              v14 = v659;
              if (v168)
              {
                v169 = "DUMMY";
                *__dst = "DUMMY";
              }

              else
              {
                v170 = igtree_Process(v671[28], v646, __dst);
                if ((v170 & 0x80000000) != 0)
                {
                  v665 = v170;
LABEL_228:
                  v16 = __s;
                  v15 = v670;
                  goto LABEL_229;
                }

                v169 = *__dst;
                v168 = *(v671 + 59);
              }

              v665 = posparser_DumpFeatureVectorAndResult(*v671, "KNOWN", v646, v169, __b, __src, v107, v168, v158, v673);
              if ((v665 & 0x80000000) != 0)
              {
                goto LABEL_228;
              }

              if (*(v159 + 32))
              {
                v171 = 0;
                v172 = 0;
                LOWORD(v173) = 0;
                do
                {
                  if (!cstdlib_strcmp(*__dst, *(*(v159 + 24) + v171)))
                  {
                    LOWORD(v173) = v172;
                  }

                  ++v172;
                  v171 += 16;
                }

                while (v172 < *(v159 + 32));
                v173 = v173;
              }

              else
              {
LABEL_209:
                v173 = 0;
              }

              v174 = (*v671)[1];
              v175 = cstdlib_strlen(*(*(v159 + 24) + 16 * v173 + 8));
              v176 = heap_Calloc(v174, 1, (v175 + 1));
              *(v159 + 16) = v176;
              if (!v176)
              {
                goto LABEL_225;
              }

              cstdlib_strcpy(v176, *(*(v159 + 24) + 16 * v173 + 8));
              *(v159 + 40) = *(*(v159 + 24) + 16 * v173);
LABEL_212:
              v139 = a4;
              v158 = v160 + 1;
              v157 = (v160 + 1);
              if (v157 >= a5)
              {
                v16 = __s;
                v15 = v670;
                goto LABEL_224;
              }

              continue;
            }

            break;
          }

          if (*(v159 + 80) || *(v159 + 84) || *(v159 + 12) || *(v159 + 88) || *(v159 + 92) || *(v159 + 74))
          {
            if (*(v671 + 59) == 1)
            {
              log_OutText((*v671)[4], "POSPARSER", 5, 0, "%d FEATUREVECTOR:DUMMY:0:%s %s", v87, v88, v89, v157);
            }

            goto LABEL_212;
          }

          v665 = setPosparserFeatureVector(v671, v673, v671[27], v158, v662, a4, a5, v108);
          if ((v665 & 0x80000000) != 0)
          {
            goto LABEL_865;
          }

          v181 = *(v671 + 59);
          if (v181)
          {
            v182 = "DUMMY";
            *__dst = "DUMMY";
          }

          else
          {
            v665 = igtree_Process(v671[27], v662, __dst);
            if ((v665 & 0x80000000) != 0)
            {
              goto LABEL_865;
            }

            v182 = *__dst;
            v181 = *(v671 + 59);
          }

          v665 = posparser_DumpFeatureVectorAndResult(*v671, "OOV", v662, v182, __b, __src, v108, v181, v158, v673);
          if ((v665 & 0x80000000) == 0)
          {
            v183 = (*v671)[1];
            v184 = cstdlib_strlen(*__dst);
            v185 = heap_Calloc(v183, 1, (v184 + 1));
            *(v159 + 40) = v185;
            LODWORD(a5) = v648;
            if (v185)
            {
              cstdlib_strcpy(v185, *__dst);
              goto LABEL_212;
            }

LABEL_225:
            v665 = -1607458806;
            v13 = v671;
            log_OutPublic((*v671)[4], "POSPARSER", 68000, 0, v177, v178, v179, v180, v612);
            v111 = a9;
            v110 = v638;
            v112 = a10;
            v16 = __s;
LABEL_103:
            v14 = v659;
LABEL_846:
            v82 = v673;
            goto LABEL_852;
          }

LABEL_865:
          v16 = __s;
          v15 = v670;
          LODWORD(a5) = v648;
LABEL_224:
          v14 = v659;
          v106 = v646;
LABEL_229:
          v137 = __b[0];
          v186 = v671;
          if (__b[0])
          {
LABEL_230:
            heap_Free((*v186)[1], v137);
            __b[0] = 0;
            *__src = 0;
          }

          log_OutText((*v186)[4], "POSPARSER", 5, 0, "POS Disambiguation results:", v87, v88, v89, 0);
          if (a5)
          {
            v649 = v107;
            v190 = v106;
            v191 = 0;
            v192 = a5;
            v193 = a4 + 56;
            do
            {
              if (*(v193 - 24))
              {
                log_OutText((*v671)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : %s", v187, v188, v189, v191);
              }

              else
              {
                v194 = *(v193 - 16);
                if (v194 && !cstdlib_strcmp(v194, "MULTIWORD"))
                {
                  log_OutText((*v671)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : ", v187, v188, v189, v191);
                }

                else if (*(v193 + 24) || *(v193 + 28) || *(v193 - 44) || *(v193 + 32) || *(v193 + 36) || *(v193 + 18) || *(v193 - 24))
                {
                  log_OutText((*v671)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : NON DICT WORD", v187, v188, v189, v191);
                }

                else
                {
                  log_OutText((*v671)[4], "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : OOV NON DICT WORD", v187, v188, v189, v191);
                }
              }

              ++v191;
              v193 += 104;
            }

            while (a5 != v191);
            v195 = a4 + 48;
            v14 = v659;
            v106 = v190;
            v107 = v649;
            while (1)
            {
              if (*(v195 + 32) || *(v195 + 36) || *(v195 - 36) || *(v195 + 40) || *(v195 + 44) || *(v195 + 26) || *(v195 - 16))
              {
                goto LABEL_261;
              }

              v196 = *(v195 - 8);
              if (!v196)
              {
                break;
              }

              if (cstdlib_strcmp(v196, "MULTIWORD"))
              {
                v197 = *(v195 - 8);
LABEL_260:
                heap_Free((*v671)[1], v197);
                *(v195 - 8) = 0;
              }

LABEL_261:
              v198 = *(v195 + 8);
              if (v198)
              {
                heap_Free((*v671)[1], v198);
                *(v195 + 8) = 0;
              }

              if (*v195)
              {
                heap_Free((*v671)[1], *v195);
                *v195 = 0;
              }

              v195 += 104;
              if (!--v192)
              {
                goto LABEL_266;
              }
            }

            v197 = 0;
            goto LABEL_260;
          }

LABEL_266:
          if (v662)
          {
            posparser_freeFeatureVector(*v671, v662, v108);
            heap_Free((*v671)[1], v662);
          }

          if (v106)
          {
            posparser_freeFeatureVector(*v671, v106, v107);
            heap_Free((*v671)[1], v106);
          }

          v13 = v671;
          if ((v665 & 0x80000000) == 0)
          {
            goto LABEL_271;
          }

LABEL_845:
          v111 = a9;
          v110 = v638;
          v112 = a10;
          goto LABEL_846;
        }

        v105 = v133;
LABEL_100:
        v109 = *v671;
      }

      else
      {
LABEL_175:
        v105 = 0;
      }

      v662 = v105;
      v665 = -1607458806;
      log_OutPublic(*(v109 + 32), "POSPARSER", 68000, 0, v100, v101, v102, v103, v611);
      goto LABEL_229;
    }

    v665 = v83;
    goto LABEL_845;
  }

LABEL_271:
  if ((*(v13 + 64) | 2) != 2)
  {
    goto LABEL_670;
  }

  LOBYTE(v679[0]) = 0;
  *&v679[1] = -65536;
  *__c = v673;
  v199 = cstdlib_strlen(v16);
  v200 = *(v13 + 80);
  if (!v200)
  {
    goto LABEL_670;
  }

  v678 = 0;
  if (!*v200)
  {
    goto LABEL_670;
  }

  v201 = v199;
  cstdlib_memset(__dst, 0, 0x5A0uLL);
  cstdlib_memset(__b, 0, 0x39uLL);
  v631 = heap_Calloc(*(*v13 + 8), 1, 252);
  if (!v631)
  {
    v207 = -1607458806;
    log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0, v202, v203, v204, v205, v610);
    v631 = 0;
LABEL_659:
    v620 = 0;
    goto LABEL_661;
  }

  v679[1] = 0;
  cstdlib_strcpy(v673, "");
  v647 = v201;
  if (!v201)
  {
    v620 = 0;
    v207 = 0;
    goto LABEL_661;
  }

  v206 = 0;
  v207 = 0;
  v208 = 0;
  v209 = 0;
  v620 = 0;
  *v663 = 0;
  v622 = 0;
  v623 = 20;
  while (1)
  {
    v674 = v208;
    cstdlib_memset(__s1, 0, 0xAuLL);
    cstdlib_strcpy(__s1, "");
    v667 = v207;
    if (*(v13 + 192) != 1)
    {
      LOWORD(v214) = 0;
      v215 = 0;
      goto LABEL_309;
    }

    v213 = v674;
    v209 = 0;
    v214 = 0;
    v215 = 0;
    if (!*(v13 + 208))
    {
      goto LABEL_309;
    }

    v216 = 0;
    v625 = v206;
    v217 = v206 + 1;
    while (!v216)
    {
      v218 = (*(v13 + 200) + 6 * v209);
      v219 = *v218;
      if (v219 > v213)
      {
        break;
      }

      if (v219 == v213 && *(v13 + 152) == 1 && (v220 = isCharInStr(v218 + 2, "XBI"), v213 = v674, v220))
      {
        v221 = v209;
        v222 = v209 + 1;
        v216 = 1;
        if (v222 < *(v13 + 208) && v217 < v647 && (v223 = (*(v13 + 200) + 6 * v222), v217 == *v223))
        {
          if (*(v13 + 120))
          {
            v224 = *(v13 + 120);
          }

          else
          {
            v224 = "^FNKauioR";
          }

          if (isCharInStr(v223 + 2, v224))
          {
            v225 = 6 * v222 + 6;
            while (1)
            {
              cstdlib_strcat(__s1, (*(v13 + 200) + v225 - 4));
              v214 += cstdlib_strlen((*(v13 + 200) + v225 - 4));
              if (++v222 >= *(v13 + 208))
              {
                break;
              }

              v226 = *(v13 + 200);
              if (v217 != *(v226 + v225))
              {
                break;
              }

              v227 = v226 + v225;
              if (*(v13 + 120))
              {
                v228 = *(v13 + 120);
              }

              else
              {
                v228 = "^FNKauioR";
              }

              v216 = 1;
              v225 += 6;
              v14 = v659;
              if (!isCharInStr((v227 + 2), v228))
              {
                goto LABEL_305;
              }
            }

            v216 = 1;
LABEL_305:
            v215 = 1;
          }

          else
          {
            v216 = 1;
          }

          v209 = v221;
          v16 = __s;
          v213 = v674;
        }

        else
        {
          v209 = v221;
          v16 = __s;
        }
      }

      else
      {
        v216 = 0;
        ++v209;
      }

      v229 = *(v13 + 208);
      if (v209 >= v229)
      {
        goto LABEL_320;
      }
    }

    v229 = 1;
LABEL_320:
    v650 = v216 != 0;
    if (!v216)
    {
      v209 = 0;
      if (v229 && v217 < v647)
      {
        v209 = 0;
        v244 = 0;
        do
        {
          if (v244)
          {
            break;
          }

          v245 = (*(v13 + 200) + 6 * v209);
          v246 = *v245;
          if (v217 < v246)
          {
            break;
          }

          if (v217 == v246 && (*(v13 + 120) ? (v247 = *(v13 + 120)) : (v247 = "^FNKauioR"), isCharInStr(v245 + 2, v247)))
          {
            if (v209 < *(v13 + 208) && (v248 = (*(v13 + 200) + 6 * v209), v217 == *v248))
            {
              v249 = *(v13 + 120) ? *(v13 + 120) : "^FNKauioR";
              if (isCharInStr(v248 + 2, v249))
              {
                v250 = 6 * v209 + 6;
                v251 = v209;
                while (1)
                {
                  cstdlib_strcat(__s1, (*(v13 + 200) + v250 - 4));
                  v214 += cstdlib_strlen((*(v13 + 200) + v250 - 4));
                  if (++v209 >= *(v13 + 208))
                  {
                    break;
                  }

                  v252 = *(v13 + 200);
                  if (v217 != *(v252 + v250))
                  {
                    break;
                  }

                  v253 = v252 + v250;
                  if (*(v13 + 120))
                  {
                    v254 = *(v13 + 120);
                  }

                  else
                  {
                    v254 = "^FNKauioR";
                  }

                  v255 = isCharInStr((v253 + 2), v254);
                  v244 = 1;
                  v250 += 6;
                  v15 = v670;
                  if (!v255)
                  {
                    goto LABEL_361;
                  }
                }

                v244 = 1;
LABEL_361:
                v14 = v659;
                v209 = v251;
                v16 = __s;
              }

              else
              {
                v244 = 0;
              }
            }

            else
            {
              v244 = 0;
            }
          }

          else
          {
            v244 = 0;
            ++v209;
          }
        }

        while (v209 < *(v13 + 208));
        v206 = v625;
        if (!v244)
        {
          goto LABEL_309;
        }

        if (v215 == 1)
        {
          goto LABEL_323;
        }

        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c vowel diacritic=%s", v210, v211, v212, v625);
        v234 = 0;
        v650 = 0;
        v233 = 1;
        goto LABEL_310;
      }

      v206 = v625;
LABEL_309:
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c", v210, v211, v212, v206);
      v233 = 0;
      v650 = 0;
      v234 = v215 == 1;
      goto LABEL_310;
    }

    if (v215 == 1)
    {
      v206 = v625;
LABEL_323:
      v233 = v216 == 0;
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite+vowel diacritic=%s%s", v210, v211, v212, v206);
      v234 = 1;
      goto LABEL_310;
    }

    v206 = v625;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite diacritic=%s", v210, v211, v212, v625);
    v233 = 0;
    v234 = 0;
    v650 = 1;
LABEL_310:
    v235 = *v663;
    if (a5 <= SLOWORD(v663[0]))
    {
      v237 = 0;
    }

    else
    {
      while (1)
      {
        v236 = a4 + 104 * v235;
        if (*(v236 + 8) <= v674 && *(v236 + 10) > v674)
        {
          break;
        }

        v235 = (v235 + 1);
        if (a5 <= v235)
        {
          v237 = 0;
          v235 = *v663;
          goto LABEL_325;
        }
      }

      v238 = v235;
      v239 = a4 + 104 * v235;
      if (*(v239 + 72) != 9999 && *(v239 + 8) == v674)
      {
        v663[0] = v235;
LABEL_328:
        v241 = (a4 + 104 * v238);
        v242 = v241 + 5;
        if (v241[36] != 9999)
        {
          v242 = (a4 + 104 * v241[36] + 10);
        }

        v243 = *v242;
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SKIPPING %d-%d as dict word exists, is vowelled, is phonetic or pre-diacritized", v230, v231, v232, v241[4]);
        *v663 = (v663[0] + 1);
        cstdlib_strcpy(*__c, "");
        goto LABEL_331;
      }

      v237 = 1;
    }

LABEL_325:
    *v663 = v235;
    v238 = v235;
    v240 = a4 + 104 * v235;
    if (*(v240 + 12) == 1 || *(v240 + 74) || *(v240 + 16))
    {
      goto LABEL_328;
    }

    if ((v237 & 1) == 0)
    {
      v258 = v674;
      goto LABEL_375;
    }

    if (*(v240 + 80) != 1 && *(v240 + 84) != 1 || *(v240 + 8) != v674)
    {
      break;
    }

    v256 = *(*v13 + 32);
    v614 = v206;
    v257 = "NGRAM SKIPPING %d-%d as digit/punctuation class";
LABEL_410:
    v286 = v240;
    log_OutText(v256, "POSPARSER", 5, 0, v257, v230, v231, v232, v614);
    v243 = *(v286 + 10);
LABEL_331:
    v207 = v667;
    v208 = v243 + 1;
LABEL_332:
    v206 = v208;
    if (v647 <= v208)
    {
      goto LABEL_661;
    }
  }

  if (*(v240 + 88) == 1 && *(v240 + 8) == v674)
  {
    v256 = *(*v13 + 32);
    v614 = v206;
    v257 = "NGRAM SKIPPING %d-%d as latin";
    goto LABEL_410;
  }

  if (*(v240 + 92) == 1 && *(v240 + 8) == v674)
  {
    v256 = *(*v13 + 32);
    v614 = v206;
    v257 = "NGRAM SKIPPING %d-%d as in spell mode";
    goto LABEL_410;
  }

  v617 = a4 + 104 * v235;
  v268 = cstdlib_strlen("§");
  if (!cstdlib_strncmp(&v16[v674], "§", v268))
  {
    v240 = v617;
    v258 = v674;
    if (*(v617 + 8) != v674)
    {
      goto LABEL_375;
    }

    v256 = *(*v13 + 32);
    v614 = v206;
    v257 = "NGRAM SKIPPING %d-%d as phonetic";
    goto LABEL_410;
  }

  v240 = v617;
  v258 = v674;
LABEL_375:
  v621 = v258;
  if (v16[v258] == 32)
  {
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SKIPPING space", v230, v231, v232, v613);
    v207 = v667;
LABEL_656:
    v208 = v674 + Utf8_LengthInBytes(&v16[v621], 1);
    goto LABEL_332;
  }

  v616 = v240;
  v668 = v209;
  v626 = v206;
  log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM PROCESSING [%d] %c", v230, v231, v232, v206);
  v259 = v623;
  cstdlib_memset(v631, 0, 12 * v623 + 12);
  v679[1] = 0;
  if (v650 && v234)
  {
    cstdlib_strcpy(v631, (*(v13 + 200) + 6 * v668 + 2));
    if (v214)
    {
      v263 = v631 + 1;
      v264 = __s1;
      v265 = v214;
      do
      {
        v266 = *v264++;
        v263[12 * v679[1]] = v266;
        ++v263;
        --v265;
      }

      while (v265);
      v267 = v214 + 1;
    }

    else
    {
      v267 = 1;
    }

    v631[12 * v679[1] + v267] = 0;
    *&v631[12 * v679[1] + 10] = 20000;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)", v260, v261, v262, &v631[12 * v679[1]]);
    v618 = 0;
    v287 = ++v679[1];
LABEL_565:
    v623 = v259;
    if (v650)
    {
      if (v287)
      {
        v402 = 0;
        v628 = 0;
        v641 = 0;
        v643 = 0;
        v403 = v631;
        do
        {
          v656 = &v403[12 * v402];
          v404 = cstdlib_strlen(v656);
          v405 = cstdlib_strlen(v671[25] + 6 * v668 + 2);
          v651 = v404;
          v633 = v402;
          if (v404)
          {
            v406 = 0;
            v407 = 0;
            v408 = v405;
            do
            {
              v409 = Utf8_LengthInBytes(&v656[v407], 1);
              v410 = Utf8_LengthInBytes(v671[25] + 6 * v668 + v406 + 2, 1);
              if (v410 == v409 && v408 > v406)
              {
                v412 = v410;
                if (!cstdlib_strncmp(&v656[v407], v671[25] + 6 * v668 + v406 + 2, v409))
                {
                  v413 = *&v403[12 * v402 + 10];
                  if (v413 >= v641)
                  {
                    v414 = v402;
                  }

                  else
                  {
                    v414 = v643;
                  }

                  v643 = v414;
                  if (v413 <= v641)
                  {
                    LOWORD(v413) = v641;
                  }

                  v641 = v413;
                  v406 += v412;
                  v628 = 1;
                }
              }

              v407 += v409;
            }

            while (v407 < v651);
          }

          v403 = v631;
          ++v402;
        }

        while (v633 + 1 < v679[1]);
        v415 = v679[1] == 0;
        if (v628)
        {
          v13 = v671;
          v416 = v643;
          goto LABEL_639;
        }

        v13 = v671;
        v416 = v643;
        v431 = v641;
      }

      else
      {
        v431 = 0;
        v416 = 0;
        v415 = 1;
        v403 = v631;
      }

      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NO SOLUTION CONTAINING DIACRITIC %s - see if solution with vowel", v283, v284, v285, *(v13 + 200) + 6 * v668 + 2);
      if (v415)
      {
        v432 = 0;
LABEL_613:
        if (*(v13 + 152) != 1 || cstdlib_strcmp((*(v13 + 200) + 6 * v668 + 2), "B") && cstdlib_strcmp((*(v13 + 200) + 6 * v668 + 2), "X"))
        {
          cstdlib_strcpy(&v403[12 * v432], (*(v13 + 200) + 6 * v668 + 2));
        }

        else
        {
          v403[12 * v432] = 65;
          v403[12 * v679[1] + 1] = 0;
        }

        v16 = __s;
        v14 = v659;
        *&v403[12 * v679[1] + 10] = 0;
        v421 = v679[1]++;
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "BACKUP NGRAM SOLUTION[%d] %s %d", v433, v434, v435, v421);
        goto LABEL_644;
      }

      v436 = 0;
      v437 = 0;
      while (2)
      {
        v630 = v437;
        while (1)
        {
          v438 = &v403[12 * v436];
          v439 = cstdlib_strlen(v438);
          v440 = *(v13 + 120) ? *(v13 + 120) : "^FNKauioR";
          v657 = v440;
          v634 = cstdlib_strlen(v440);
          if (v634)
          {
            break;
          }

LABEL_630:
          ++v436;
          v432 = v679[1];
          v13 = v671;
          v403 = v631;
          if (v436 >= v679[1])
          {
            if ((v630 & 1) == 0)
            {
              goto LABEL_613;
            }

            goto LABEL_639;
          }
        }

        v441 = 0;
        while (1)
        {
          v442 = Utf8_LengthInBytes(&v657[v441], 1);
          if (v439)
          {
            break;
          }

LABEL_629:
          v441 += v442;
          if (v441 >= v634)
          {
            goto LABEL_630;
          }
        }

        v443 = 0;
        while (1)
        {
          v444 = Utf8_LengthInBytes(&v438[v443], 1);
          v445 = v444;
          if (v444 == v442 && !cstdlib_strncmp(&v657[v441], &v438[v443], v444))
          {
            break;
          }

          v443 += v445;
          if (v443 >= v439)
          {
            goto LABEL_629;
          }
        }

        v403 = v631;
        v446 = *&v631[12 * v436 + 10];
        if (v446 >= v431)
        {
          v416 = v436;
        }

        if (v446 > v431)
        {
          v431 = *&v631[12 * v436 + 10];
        }

        ++v436;
        v437 = 1;
        v13 = v671;
        if (v436 < v679[1])
        {
          continue;
        }

        break;
      }

LABEL_639:
      log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "FORCE NGRAM SOLUTION[%d] %s %d", v283, v284, v285, v416);
      LOWORD(v421) = v416;
      v16 = __s;
LABEL_640:
      v14 = v659;
    }

    else if (v287)
    {
      v417 = 0;
      v418 = 0;
      v419 = 0;
      v420 = 0;
      LOWORD(v421) = 0;
LABEL_588:
      v422 = &v631[12 * v417];
      v423 = v417;
      do
      {
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SOLUTION[%d] %s %d", v283, v284, v285, v423);
        v424 = *(v422 + 5);
        if (v424 == 20000)
        {
          v417 = v423 + 1;
          v419 = 1;
          v418 = v423;
          if (v423 + 1 < v679[1])
          {
            goto LABEL_588;
          }

          goto LABEL_599;
        }

        v422 += 12;
        if (v424 >= v420)
        {
          LOWORD(v421) = v423;
        }

        if (v424 > v420)
        {
          v420 = v424;
        }

        ++v423;
      }

      while (v423 < v679[1]);
      LOWORD(v423) = v418;
      if ((v419 & 1) == 0)
      {
        goto LABEL_644;
      }

LABEL_599:
      v425 = cstdlib_strlen(&v631[12 * v423]);
      if (v679[1])
      {
        v426 = v425;
        v427 = 0;
        v428 = v631;
        v429 = 0;
        v430 = v425;
        do
        {
          if (!cstdlib_memcmp(v428, &v631[12 * v423], v426) && cstdlib_strlen(v428) > v430)
          {
            LOWORD(v421) = v427;
            v429 = 1;
          }

          ++v427;
          v428 += 12;
        }

        while (v427 < v679[1]);
        if (!v429)
        {
          LOWORD(v421) = v423;
        }

        v13 = v671;
        goto LABEL_640;
      }

      LOWORD(v421) = v423;
    }

    else
    {
      LOWORD(v421) = 0;
    }

LABEL_644:
    v447 = &v631[12 * v421];
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "NGRAM SELECTED SOLUTION[%d] %s %d", v283, v284, v285, v421);
    v448 = cstdlib_strlen(*__c);
    v449 = cstdlib_strlen(v447);
    v450 = posparserGrowStr(v13, __c, (v449 + v448 + 1), &v676, 0);
    if (v450 < 0)
    {
      v207 = v450;
      goto LABEL_862;
    }

    cstdlib_strcat(*__c, v447);
    v15 = v670;
    if (v626 + v618 + 1 == *(v616 + 10))
    {
      v451 = *__c;
      v452 = cstdlib_strlen(*__c);
      v453 = *(v616 + 8);
      if (*(v616 + 10) - v453 == v452 && !cstdlib_memcmp(v451, &v16[v453], v452))
      {
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s (unchanged)", v454, v455, v456, v451);
        v207 = 0;
      }

      else
      {
        v457 = *(*v13 + 8);
        v458 = cstdlib_strlen(v451);
        v459 = heap_Calloc(v457, 1, (v458 + 1));
        *(v616 + 64) = v459;
        if (!v459)
        {
          goto LABEL_863;
        }

        v207 = posparser_PostProcess(v13, __c);
        if (v207 < 0)
        {
          goto LABEL_661;
        }

        v451 = *__c;
        cstdlib_strcpy(*(v616 + 64), *__c);
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s", v460, v461, v462, *(v616 + 64));
      }

      *v663 = (v663[0] + 1);
      cstdlib_strcpy(v451, "");
    }

    else
    {
      v207 = 0;
    }

    v209 = v668;
    if (v16[v621] == 32 && *(a4 + 104 * LOWORD(v663[0]) + 8) > v674)
    {
      cstdlib_strcpy(*__c, "");
    }

    goto LABEL_656;
  }

  v269 = Utf8_LengthInBytes(&v16[v621], 1);
  v270 = v269;
  if (v233)
  {
    if ((v269 & 0xFFFE) != 0)
    {
      v271 = v269;
    }

    else
    {
      v271 = 1;
    }

    cstdlib_strncpy(v631, &v16[v621], v271);
    if (v214)
    {
      v275 = v214;
      v276 = v270;
      if ((v270 & 0xFFFE) == 0)
      {
        v276 = 1;
      }

      v277 = &v631[v276];
      v278 = __s1;
      do
      {
        v279 = *v278++;
        v277[12 * v679[1]] = v279;
        ++v277;
        --v275;
      }

      while (v275);
    }

    v631[12 * v679[1] + v271 + v214] = 0;
    *&v631[12 * v679[1] + 10] = 20000;
    v280 = *(*v13 + 32);
    v281 = &v631[12 * v679[1]];
LABEL_407:
    log_OutText(v280, "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)", v272, v273, v274, v281);
  }

  else
  {
    if (v269)
    {
      LOWORD(v271) = v269;
    }

    else
    {
      LOWORD(v271) = 1;
    }

    cstdlib_strncpy(v631, &v16[v621], v271);
    v631[12 * v679[1] + v271] = 0;
    v282 = &v631[12 * v679[1]];
    if (v650)
    {
      *(v282 + 5) = 20000;
      v280 = *(*v13 + 32);
      v281 = &v631[12 * v679[1]];
      goto LABEL_407;
    }

    *(v282 + 5) = 0;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "(dia) ADD SOLUTION %s(%u)", v272, v273, v274, &v631[12 * v679[1]]);
  }

  v259 = v623;
  v288 = 0;
  v627 = v271 - 1;
  ++v679[1];
  while (1)
  {
LABEL_415:
    if (v288 >= *(v13 + 96))
    {
LABEL_564:
      v618 = v627;
      v287 = v679[1];
      goto LABEL_565;
    }

    v289 = *(*v13 + 32);
    if (v288)
    {
      log_OutText(v289, "POSPARSER", 5, 0, "!!BACKING OFF TO DICT %d=%s", v283, v284, v285, v288);
    }

    else
    {
      log_OutText(v289, "POSPARSER", 5, 0, "!!USING DICT %d=%s", v283, v284, v285, 0);
    }

    v290 = *(*(v13 + 80) + v288);
    if (*(*(v13 + 80) + v288))
    {
      break;
    }

    ++v288;
  }

  v619 = 0;
  v629 = v288;
  while (1)
  {
    v642 = v290;
    cstdlib_memset(__b, 0, 0x39uLL);
    cstdlib_memset(__b, 64, *(*(v13 + 80) + v288));
    LOWORD(v288) = v674;
    v624 = v259;
    if ((v674 & 0x8000) != 0)
    {
      v307 = 0;
      LOWORD(v654) = 0;
    }

    else
    {
      v654 = 0;
      v294 = 0;
      v295 = v642;
      v296 = v663[0];
      v297 = a4;
      do
      {
        v298 = v295--;
        v299 = v298 - 1;
        while ((v296 & 0x8000) == 0)
        {
          v300 = v296;
          v301 = (a4 + 10 + 104 * v296);
          while (*(v301 - 1) > v288 || *v301 <= v288)
          {
            v301 -= 52;
            v316 = v300-- <= 0;
            if (v316)
            {
              goto LABEL_439;
            }
          }

          v296 = v300;
          v302 = v297 + 104 * v300;
          if (*(v302 + 80) == 1)
          {
            if (*(v302 + 8) == v288)
            {
              PunctClassChar = "α";
LABEL_447:
              cstdlib_strcpy(__src, __b);
              insertString(__src, __b, PunctClassChar, v295);
              ++v654;
              goto LABEL_443;
            }
          }

          else
          {
            if (*(v302 + 84) != 1)
            {
              break;
            }

            if (*(v302 + 8) == v288)
            {
              PunctClassChar = getPunctClassChar(v671, __s[v288]);
              goto LABEL_447;
            }
          }

          LOWORD(v288) = v288 - 1;
          if ((v288 & 0x8000) != 0)
          {
            goto LABEL_449;
          }
        }

LABEL_439:
        LOWORD(v288) = utf8_GetCurrentUtf8Offset(__s, v288);
        v303 = &__s[v288];
        v304 = Utf8_LengthInBytes(v303, 1);
        if ((v304 & 0xFFFE) != 0)
        {
          v305 = v304;
          cstdlib_strcpy(__src, __b);
          cstdlib_strcpy(__b, __src);
          cstdlib_strncpy(__b + v295, v303, v305);
          cstdlib_strcpy(__b + v295 + v305, &__src[v295 + 1]);
          v654 = v654 + v305 - 1;
        }

        else
        {
          *(__b + v299) = *v303;
        }

        v14 = v659;
LABEL_443:
        ++v294;
        if (!v295)
        {
          break;
        }

        LODWORD(v288) = (v288 - 1);
        v297 = a4;
      }

      while ((v288 & 0x80000000) == 0);
LABEL_449:
      v307 = v294;
      v16 = __s;
    }

    v308 = 0;
    v288 = v629;
    do
    {
      if (*(__b + v308) != 64)
      {
        break;
      }

      ++v308;
    }

    while (v308 != 14);
    v309 = v308 + v307;
    v13 = v671;
    if (v309 == v642)
    {
      v310 = *(v671[10] + v629);
      v311 = v308 + 1;
      if (v309 != v310 && v311 < v310)
      {
        break;
      }
    }

    log_OutText((*v671)[4], "POSPARSER", 5, 0, "NGRAM IGNORING szUnVoweledNgramStr = %s", v291, v292, v293, __b);
LABEL_562:
    v290 = (v642 - 1);
    if (v642 == 1)
    {
      ++v288;
      if (!v619)
      {
        goto LABEL_415;
      }

      goto LABEL_564;
    }
  }

  v313 = Utf8_LengthInBytes(&v16[v621], 1);
  v314 = a4;
  v315 = v674 + v313;
  v316 = v310 == v642 || v647 <= (v674 + v313);
  if (v316)
  {
    goto LABEL_463;
  }

  v331 = 0;
  v332 = 0;
  v639 = v654 + v642;
  v632 = (v310 - v642);
  v333 = *v663;
  v655 = v642 + v654;
  while (v647 > v315)
  {
    v334 = v315;
    v335 = v639 + v331;
    while (2)
    {
      if (a5 <= v333)
      {
        goto LABEL_492;
      }

      v336 = v333;
      while (1)
      {
        v337 = v314 + 104 * v336;
        if (*(v337 + 8) <= v315 && *(v337 + 10) > v315)
        {
          break;
        }

        v336 = (v336 + 1);
        if (a5 <= v336)
        {
          goto LABEL_492;
        }
      }

      v338 = v314 + 104 * v336;
      if (*(v338 + 80) == 1)
      {
        if (v334 == *(v338 + 8))
        {
          cstdlib_strcpy(__src, __b);
          v339 = (v335 + v332);
          v340 = "α";
LABEL_499:
          insertString(__src, __b, v340, v339);
          ++v332;
          v333 = v336;
          goto LABEL_495;
        }

LABEL_489:
        v334 = ++v315;
        v333 = v336;
        if (v647 <= v315)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    if (*(v338 + 84) == 1)
    {
      if (v334 == *(v338 + 8))
      {
        v344 = getPunctClassChar(v671, __s[v315]);
        cstdlib_strcpy(__src, __b);
        v339 = (v335 + v332);
        v340 = v344;
        goto LABEL_499;
      }

      goto LABEL_489;
    }

    v333 = v336;
LABEL_492:
    v341 = &__s[v315];
    v342 = Utf8_LengthInBytes(v341, 1);
    if ((v342 & 0xFFFE) != 0)
    {
      v343 = v342;
      cstdlib_strcpy(__src, __b);
      cstdlib_strcpy(__b, __src);
      cstdlib_strncpy(__b + (v335 + v332), v341, v343);
      cstdlib_strcpy(__b + (v335 + v332) + v343, &__src[(v335 + v332) + 1]);
      v332 += v343 - 1;
      v315 += v343 - 1;
    }

    else
    {
      *(__b + v655 + v331 + v332) = *v341;
    }

LABEL_495:
    ++v331;
    v314 = a4;
    if (v331 < v632 && v647 > ++v315)
    {
      continue;
    }

    break;
  }

LABEL_463:
  v14 = v659;
  if (LOBYTE(__b[0]) == 32)
  {
    cstdlib_strcpy(__src, __b);
    insertString(__src, __b, "Φ", 0);
  }

  v15 = v670;
  v13 = v671;
  v288 = v629;
  if (*(__b + cstdlib_strlen(__b) - 1) == 32)
  {
    cstdlib_strcpy(__src, __b);
    v320 = cstdlib_strlen(__b);
    insertString(__src, __b, "Φ", (v320 - 1));
  }

  log_OutText((*v671)[4], "POSPARSER", 5, 0, "NGRAM useLetterNum = %d szUnVoweledNgramStr = %s", v317, v318, v319, v642);
  v16 = __s;
  if (!v622)
  {
LABEL_471:
    v679[2] = -1;
    v326 = (v671[3][19])(v671[1], v671[2], v671[11][v629], __b, &v678, &v679[2], v679, *(v671 + 68));
    if (v326 < 0)
    {
      v207 = v326;
      goto LABEL_661;
    }

    if (!v679[2])
    {
      v679[2] = 1;
      log_OutText((*v671)[4], "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS", v327, v328, v329, __b);
      v330 = "FAIL_DICT_LOOKUP";
      goto LABEL_512;
    }

    v330 = *v678;
    log_OutText((*v671)[4], "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s SUCCEEDS %s", v327, v328, v329, __b);
    v259 = v624;
    if (v330)
    {
      goto LABEL_512;
    }

    goto LABEL_562;
  }

  v321 = v622;
  while (1)
  {
    v322 = &__dst[72 * (v321 - 1)];
    if (!cstdlib_strcmp(v322, __b))
    {
      break;
    }

    if (!--v321)
    {
      goto LABEL_471;
    }
  }

  log_OutText((*v671)[4], "POSPARSER", 5, 0, "NGRAM FOUND %s in cache, cachedDictStr = %s", v323, v324, v325, __b);
  if (!cstdlib_strcmp(*(v322 + 8), "FAIL_DICT_LOOKUP"))
  {
    v679[2] = 0;
    log_OutText((*v671)[4], "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS (CACHED)", v345, v346, v347, __b);
    v259 = v624;
    goto LABEL_562;
  }

  if (!v620)
  {
    v355 = (*v671)[1];
    v356 = cstdlib_strlen(*(v322 + 8));
    v357 = heap_Calloc(v355, 1, (v356 + 1));
    if (v357)
    {
      v330 = v357;
      v362 = *(v322 + 8);
      goto LABEL_511;
    }

    v207 = -1607458806;
    log_OutPublic((*v671)[4], "POSPARSER", 68000, 0, v358, v359, v360, v361, v610);
    goto LABEL_659;
  }

  v348 = cstdlib_strlen(*(v322 + 8));
  if (v348 <= cstdlib_strlen(v620))
  {
    v330 = v620;
  }

  else
  {
    v349 = (*v671)[1];
    v350 = cstdlib_strlen(*(v322 + 8));
    v330 = heap_Realloc(v349, v620, (v350 + 1));
    if (!v330)
    {
LABEL_863:
      v207 = -1607458806;
      log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0, v351, v352, v353, v354, v610);
      goto LABEL_661;
    }
  }

  v362 = *(v322 + 8);
  v357 = v330;
LABEL_511:
  cstdlib_strcpy(v357, v362);
  v620 = v330;
LABEL_512:
  v363 = cstdlib_strcmp(v330, "FAIL_DICT_LOOKUP");
  v364 = v619;
  if (v363)
  {
    v364 = 1;
  }

  v619 = v364;
  if (!v679[2])
  {
    v365 = v621;
    goto LABEL_524;
  }

  v365 = v621;
  v366 = v679[1];
  if (v622 < 0x14u || v679[1] > 4u)
  {
    v367 = v622;
  }

  else
  {
    heap_Free((*v671)[1], v684[0]);
    v684[0] = 0;
    cstdlib_memmove(__dst, v685, 72 * (v622 - 1));
    v367 = (v622 - 1);
  }

  v622 = v367;
  if (v367 > 0x13u || v366 > 4)
  {
LABEL_524:
    if (v330 != "FAIL_DICT_LOOKUP")
    {
      v375 = cstdlib_strchr(v330, LOBYTE(v679[0]));
      if (v375)
      {
        v376 = v375;
        *v375 = 0;
        v640 = cstdlib_atoi(v330);
        while (1)
        {
          v377 = v376 + 1;
          if (v376[1] == LOBYTE(v679[0]))
          {
            v14 = v659;
            goto LABEL_561;
          }

          v378 = cstdlib_strchr(v376 + 1, LOBYTE(v679[0]));
          v379 = v378;
          if (v378)
          {
            *v378 = 0;
          }

          v380 = cstdlib_strlen(v376 + 1);
          v381 = 0;
          if (v642 != 1 && v380)
          {
            v382 = 1;
            v383 = v642 - 1;
            do
            {
              v383 -= v376[v382] == 59;
              v384 = v382 + 1;
              if (v383)
              {
                v385 = v382 >= v380;
              }

              else
              {
                v385 = 1;
              }

              ++v382;
            }

            while (!v385);
            v381 = v384 - 1;
          }

          v386 = &v377[v381];
          v387 = cstdlib_strchr(&v377[v381], 59);
          if (v387)
          {
            *v387 = 0;
          }

          cstdlib_memset(__s2, 0, 0xAuLL);
          LOWORD(v388) = Utf8_LengthInBytes(&__s[v365], 1);
          v389 = cstdlib_strlen("√");
          v14 = v659;
          if (cstdlib_strncmp(v386, "√", v389))
          {
            v388 = (v388 & 0xFFFE) != 0 ? v388 : 1;
            cstdlib_strncpy(__s2, &__s[v365], v388);
            v627 = v388 - 1;
            cstdlib_strcat(__s2, v386);
          }

          else
          {
            v393 = cstdlib_strlen("√");
            cstdlib_strcpy(__s2, &v386[v393]);
          }

          log_OutText((*v671)[4], "POSPARSER", 5, 0, "ADD SOLUTION %s(%u)", v390, v391, v392, __s2);
          if (v679[1])
          {
            break;
          }

          v396 = 0;
LABEL_555:
          cstdlib_strcpy(&v631[12 * v396], __s2);
          *&v631[12 * v679[1] + 10] = v640;
          v400 = 1;
          v401 = &v679[1];
LABEL_557:
          *v401 += v400;
          v376 = v379;
          if (!v379)
          {
            goto LABEL_561;
          }
        }

        v394 = 0;
        v395 = v631;
        do
        {
          if (!cstdlib_strcmp(v395, __s2))
          {
            v401 = v395 + 10;
            v400 = v640;
            goto LABEL_557;
          }

          ++v394;
          v396 = v679[1];
          v395 += 12;
        }

        while (v394 < v679[1]);
        v397 = v624;
        if (v679[1] <= v624)
        {
          goto LABEL_555;
        }

        v624 = (v624 + 10);
        v398 = v631;
        v399 = heap_Realloc((*v671)[1], v631, 12 * (v397 + 10) + 12);
        if (v399)
        {
          v396 = v679[1];
          v631 = v399;
          goto LABEL_555;
        }

        goto LABEL_861;
      }

      cstdlib_atoi(v330);
    }

LABEL_561:
    v259 = v624;
    v288 = v629;
    goto LABEL_562;
  }

  cstdlib_strcpy(&__dst[72 * v367], __b);
  v368 = (*v671)[1];
  v369 = cstdlib_strlen(v330);
  v370 = heap_Calloc(v368, 1, (v369 + 1));
  v684[9 * v622] = v370;
  if (v370)
  {
    cstdlib_strcpy(v370, v330);
    v622 = (v622 + 1);
    goto LABEL_524;
  }

  v398 = v631;
LABEL_861:
  v631 = v398;
  v207 = -1607458806;
  log_OutPublic((*v671)[4], "POSPARSER", 68000, 0, v371, v372, v373, v374, v610);
LABEL_862:
  v15 = v670;
LABEL_661:
  for (i = 64; i != 1504; i += 72)
  {
    v464 = *&__dst[i];
    if (v464)
    {
      heap_Free(*(*v13 + 8), v464);
      *&__dst[i] = 0;
    }
  }

  if (v620)
  {
    heap_Free(*(*v13 + 8), v620);
  }

  if (v631)
  {
    heap_Free(*(*v13 + 8), v631);
  }

  v673 = *__c;
  if (v207 < 0)
  {
    v665 = v207;
    goto LABEL_845;
  }

LABEL_670:
  if (a5)
  {
    v465 = 0;
    do
    {
      v466 = a4 + 104 * v465;
      if (*(v466 + 74))
      {
        v467 = 0;
        v468 = v14;
        v469 = *(v466 + 74);
        do
        {
          v470 = *v468;
          v468 += 8;
          if (v470 == 1)
          {
            ++v467;
          }

          --v469;
        }

        while (v469);
        *(v466 + 74) -= v467;
      }

      if (*(v466 + 76))
      {
        v471 = 0;
        v472 = v14;
        v473 = *(v466 + 76);
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
        *(v466 + 76) -= v471;
      }

      ++v465;
    }

    while (v465 != a5);
  }

  if (v15)
  {
    v475 = 0;
    v476 = 0;
    do
    {
      v477 = (v14 + 32 * v476);
      if (*v477 == 1)
      {
        v478 = (v475 + 1);
        if (v15 > v478)
        {
          cstdlib_memmove(v477, (v14 + 32 * v478), 32 * (v15 - v478));
        }

        v15 = (v15 - 1);
      }

      else
      {
        ++v476;
      }

      v475 = v476;
    }

    while (v476 < v15);
  }

  v652 = a5;
  if (*(v13 + 248) == 1)
  {
    v479 = 32 * v15 + (a5 << 6) + 32;
  }

  else
  {
    v479 = 32 * (v15 + a5) + 32;
  }

  v480 = heap_Realloc(*(*v13 + 8), v14, v479);
  if (!v480)
  {
    LOWORD(v670) = v15;
    v665 = -1607458806;
    log_OutPublic(*(*v13 + 32), "POSPARSER", 68000, 0, v481, v482, v483, v484, v610);
    goto LABEL_845;
  }

  v485 = v480;
  __b[0] = v16;
  v486 = a5;
  v82 = v673;
  *__src = v673;
  *__dst = 0u;
  v683 = 0u;
  cstdlib_memset(__dst, 0, 0x20uLL);
  *__dst = 1;
  *__s2 = cstdlib_strlen(v16);
  *v664 = v485;
  if (!v486)
  {
    v670 = v15;
    v494 = v673;
    v576 = v16;
    goto LABEL_787;
  }

  v487 = 0;
  v488 = 0;
  v658 = 0;
  v660 = 0;
  v489 = a4;
  v645 = (v485 + 44);
  v644 = (v485 + 56);
  v490 = v486;
  while (2)
  {
    v670 = v15;
    *__dst = 1;
    v491 = v489 + 104 * v488;
    *&__dst[4] = *v491;
    v492 = *(v491 + 8);
    *&__dst[12] = *(v485 + 12) + v492;
    if (*(v491 + 12) != 1)
    {
      if (*(v491 + 72) == 9999)
      {
        v501 = *(v491 + 64);
        if (!v501)
        {
          v493 = posparserGrowStr(v13, __src, (*(v491 + 10) - v492), &v676, 0);
          v494 = *__src;
          if ((v493 & 0x80000000) == 0)
          {
            v495 = __b[0];
            cstdlib_strncpy(*__src, &__b[0][*(v491 + 8)], *(v491 + 10) - *(v491 + 8));
            v494[*(v491 + 10) - *(v491 + 8)] = 0;
            log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING word [%d] %d,%d %s", v569, v570, v571, v487);
            goto LABEL_702;
          }

LABEL_842:
          v578 = v493;
          v111 = a9;
          v110 = v638;
          v112 = a10;
          goto LABEL_850;
        }

        v502 = cstdlib_strlen(v501);
        v493 = posparserGrowStr(v13, __src, v502, &v676, 0);
        v494 = *__src;
        if (v493 < 0)
        {
          goto LABEL_842;
        }

        cstdlib_strcpy(*__src, *(v491 + 64));
        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING ngram word [%d] %d,%d %s", v503, v504, v505, v487);
        v499 = cstdlib_strlen(v494) - *(v491 + 10) + *(v491 + 8);
        posparser_undoEmbeddedRules(v13, v494);
        v500 = 1;
        v495 = __b[0];
        v506 = v488;
        v669 = v488;
      }

      else
      {
        v507 = cstdlib_strlen(*(v491 + 16));
        v493 = posparserGrowStr(v13, __src, v507, &v676, 0);
        v494 = *__src;
        if (v493 < 0)
        {
          goto LABEL_842;
        }

        cstdlib_strcpy(*__src, *(v491 + 16));
        v508 = *(a4 + 104 * *(v491 + 72) + 10);
        v495 = __b[0];
        if (cstdlib_strlen(__b[0]) < v508)
        {
          LODWORD(v508) = cstdlib_strlen(v495);
        }

        log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING dict word [%d-%d] %d,%d %s", v509, v510, v511, v487);
        v499 = cstdlib_strlen(v494) - v508 + *(v491 + 8);
        v506 = *(v491 + 72);
        v500 = 1;
        v669 = v506;
      }

      v658 = v488;
      v660 = v506;
      goto LABEL_712;
    }

    v493 = posparserGrowStr(v13, __src, (*(v491 + 10) - v492), &v676, 0);
    v494 = *__src;
    if (v493 < 0)
    {
      goto LABEL_842;
    }

    v495 = __b[0];
    cstdlib_strncpy(*__src, &__b[0][*(v491 + 8)], *(v491 + 10) - *(v491 + 8));
    v494[*(v491 + 10) - *(v491 + 8)] = 0;
    log_OutText(*(*v13 + 32), "POSPARSER", 5, 0, "PROCESSING VOWELLED word [%d] %d,%d %s", v496, v497, v498, v487);
LABEL_702:
    v499 = 0;
    v500 = 0;
    v669 = v488;
LABEL_712:
    v512 = v13;
    v513 = v499 + cstdlib_strlen(v495);
    v514 = posparserGrowStr(v512, __b, v513, __s2, 64);
    v515 = v670;
    if (v514 < 0)
    {
      v578 = v514;
      v110 = v638;
      v13 = v671;
LABEL_849:
      v112 = a10;
      v111 = a9;
      goto LABEL_850;
    }

    if (v499 << 16)
    {
      v516 = a4 + 104 * v660;
      v519 = *(v516 + 10);
      v517 = (v516 + 10);
      v518 = v519;
      v520 = __b[0];
      v521 = cstdlib_strlen(__b[0]);
      v522 = *v517;
      if (v521 > v522)
      {
        cstdlib_memmove(&v520[*v517 + v499], &v520[*v517], v521 - v522);
      }

      v523 = a4 + 104 * v658;
      v525 = *(v523 + 8);
      v524 = (v523 + 8);
      v526 = cstdlib_strlen(v494);
      cstdlib_memcpy(&v520[v525], v494, v526);
      v520[v513] = 0;
      *v517 += v499;
      if (v490 > (v660 + 1))
      {
        v527 = (v660 + 1) + 1;
        v528 = (a4 + 10 + 104 * (v660 + 1));
        do
        {
          *(v528 - 1) += v499;
          *v528 += v499;
          v528 += 52;
        }

        while (v490 != v527++);
      }

      v515 = v670;
      v489 = a4;
      if (v670 >= 2u)
      {
        v530 = *(*v664 + 12);
        v531 = *v524;
        v532 = v670 - 1;
        v533 = v645;
        do
        {
          v534 = (*v533 - v530);
          if (v534 >= v531)
          {
            v535 = *v533 + v499;
            if (v534 < v518)
            {
              v535 = v530 + v531;
            }

            *v533 = v535;
          }

          v533 += 8;
          --v532;
        }

        while (v532);
      }
    }

    else
    {
      v489 = a4;
      if (v500)
      {
        v536 = __b[0];
        v537 = *(a4 + 104 * v658 + 8);
        v538 = cstdlib_strlen(v494);
        cstdlib_memcpy(&v536[v537], v494, v538);
        v489 = a4;
      }
    }

    LODWORD(v683) = 0;
    v539 = v489 + 104 * v669;
    v540 = *(v539 + 74);
    v485 = *v664;
    if (*(v539 + 74))
    {
      v541 = *v664 + 32 * v540;
      LODWORD(v540) = *(v541 + 12) - *&__dst[12];
      *(v541 + 12) = *&__dst[12];
    }

    if (*(v539 + 76))
    {
      v542 = *v664 + 32 * *(v539 + 76);
      *(v542 + 12) += v540;
    }

    if (*__dst != 1 || *&__dst[8])
    {
      if (v515 < 2u)
      {
        v544 = 0;
        LOWORD(v546) = 1;
      }

      else
      {
        v544 = 0;
        v545 = v644;
        v546 = 1;
        while (*&__dst[12] >= *(v545 - 3))
        {
          if (*(v545 - 6) == 21)
          {
            v544 = *v545;
          }

          ++v546;
          v545 += 4;
          if (v515 == v546)
          {
            LOWORD(v546) = v515;
            break;
          }
        }
      }

      v547 = (a4 + 76);
      v548 = v652;
      do
      {
        v549 = *(v547 - 1);
        if (v549 >= v546)
        {
          *(v547 - 1) = v549 + 1;
        }

        v550 = *v547;
        if (v550 >= v546)
        {
          *v547 = v550 + 1;
        }

        v547 += 52;
        --v548;
      }

      while (v548);
      cstdlib_memmove((*v664 + 32 * v546 + 32), (*v664 + 32 * v546), 32 * (v515 - v546));
      cstdlib_memcpy((*v664 + 32 * v546), __dst, 0x20uLL);
      v543 = (v515 + 1);
      v489 = a4;
      if (*__dst == 34)
      {
        v551 = v546 + 1;
        cstdlib_memmove((*v664 + 32 * v551 + 32), (*v664 + 32 * v551), 32 * ((v515 + 1) - v551));
        *__dst = 21;
        *&__dst[4] += 2;
        *&__dst[8] = 0;
        ++*&__dst[12];
        LODWORD(v683) = 0;
        v552 = "normal";
        if (v544)
        {
          v552 = v544;
        }

        *(&v683 + 1) = v552;
        cstdlib_memcpy((*v664 + 32 * v551), __dst, 0x20uLL);
        v553 = (a4 + 76);
        v554 = v652;
        do
        {
          v555 = *(v553 - 1);
          if (*(v553 - 1) && v555 >= v551)
          {
            *(v553 - 1) = v555 + 1;
          }

          v556 = *v553;
          if (*v553 && v556 >= v551)
          {
            *v553 = v556 + 1;
          }

          v553 += 52;
          --v554;
        }

        while (v554);
        v543 = (v515 + 2);
        v489 = a4;
      }
    }

    else
    {
      v543 = v515;
    }

    v13 = v671;
    if (*(v671 + 62) != 1)
    {
      v15 = v543;
      v16 = __s;
      goto LABEL_783;
    }

    v557 = *(v539 + 40);
    v16 = __s;
    if (!v557)
    {
      v15 = v543;
      goto LABEL_783;
    }

    *__dst = 58;
    *&__dst[4] = *v539;
    *&__dst[12] = *(*v664 + 12) + *(v539 + 8);
    v558 = (*v671)[1];
    v559 = cstdlib_strlen(v557);
    v560 = heap_Calloc(v558, 1, (v559 + 1));
    *(&v683 + 1) = v560;
    if (!v560)
    {
      v578 = -1607458806;
      log_OutPublic((*v671)[4], "POSPARSER", 68000, 0, v561, v562, v563, v564, v615);
      LOWORD(v670) = v543;
      v110 = v638;
      goto LABEL_849;
    }

    cstdlib_strcpy(v560, *(v539 + 40));
    if (v543 <= 1u)
    {
      v565 = v543;
      LOWORD(v567) = 1;
    }

    else
    {
      v565 = v543;
      v566 = v645;
      v567 = 1;
      while (1)
      {
        v568 = *v566;
        v566 += 8;
        if (*&__dst[12] < v568)
        {
          break;
        }

        if (v543 == ++v567)
        {
          LOWORD(v567) = v543;
          break;
        }
      }
    }

    cstdlib_memmove((*v664 + 32 * v567 + 32), (*v664 + 32 * v567), 32 * (v565 - v567));
    cstdlib_memcpy((*v664 + 32 * v567), __dst, 0x20uLL);
    v572 = (a4 + 76);
    v573 = v652;
    v489 = a4;
    do
    {
      v574 = *(v572 - 1);
      if (v574 >= v567)
      {
        *(v572 - 1) = v574 + 1;
      }

      v575 = *v572;
      if (v575 >= v567)
      {
        *v572 = v575 + 1;
      }

      v572 += 52;
      --v573;
    }

    while (v573);
    v15 = (v543 + 1);
LABEL_783:
    v488 = v669 + 1;
    v487 = (v669 + 1);
    if (v487 < v490)
    {
      continue;
    }

    break;
  }

  v670 = v15;
  v576 = __b[0];
  v82 = v673;
LABEL_787:
  v577 = cstdlib_strlen(v576);
  v578 = 0;
  *(*v664 + 16) = v577;
  v111 = a9;
  v110 = v638;
  v112 = a10;
  if (*(v13 + 248) != 1 || v670 < 2u)
  {
LABEL_850:
    v16 = __b[0];
    v82 = v494;
    goto LABEL_851;
  }

  v579 = 0;
  v580 = (*v664 + 88);
  v581 = 2;
  v582 = 1;
  while (2)
  {
    v583 = (*v664 + 32 * v582);
    if (*v583 == 59 && v583[6] == 5)
    {
      if (v582 + 1 >= v670)
      {
        goto LABEL_802;
      }

      v584 = v580;
      v585 = v581;
      while (*(v584 - 6) != 59 || *v584 != 5)
      {
        ++v585;
        v584 += 8;
        if (v670 == v585)
        {
          goto LABEL_802;
        }
      }

      v586 = (*v664 + 32 * v585);
      if (*v586 != 59 || v586[6] != 5)
      {
LABEL_802:
        v588 = *(*v664 + 12) + v577;
        v587 = v583[3];
        goto LABEL_803;
      }

      v587 = v583[3];
      v588 = v586[3];
      if (v583[4] + v587 < v588)
      {
LABEL_803:
        v583[4] = v588 - v587;
      }

      v579 = 1;
    }

    ++v582;
    ++v581;
    v580 += 8;
    if (v582 != v670)
    {
      continue;
    }

    break;
  }

  v589 = v670 - 1;
  v590 = (*v664 + 44);
  do
  {
    if (*(v590 - 3) == 59)
    {
      *v590 -= *(*v664 + 12);
    }

    v590 += 8;
    --v589;
  }

  while (v589);
  if (v579 != 1)
  {
    v578 = 0;
    goto LABEL_850;
  }

  LOWORD(v678) = 0;
  LOWORD(__c[0]) = 0;
  memset(v679, 0, sizeof(v679));
  *__s1 = 0;
  v578 = (*(*(v13 + 32) + 104))(a2, a3, 3, a7, &v678);
  if (v578 < 0)
  {
    goto LABEL_851;
  }

  v591 = v678;
  if (!v678)
  {
LABEL_834:
    v604 = 1;
    v605 = 1;
    do
    {
      v606 = (*v664 + 32 * v605);
      if (*v606 == 59)
      {
        v607 = (v604 + 1);
        if (v670 > v607)
        {
          cstdlib_memmove(v606, (*v664 + 32 * v607), 32 * (v670 - v607));
        }

        v608 = (v670 - 1);
      }

      else
      {
        ++v605;
        v608 = v670;
      }

      v604 = v605;
      v670 = v608;
    }

    while (v605 < v608);
    goto LABEL_850;
  }

  LOWORD(v592) = 1;
  while (1)
  {
    v593 = (*(*(v13 + 32) + 168))(a2, a3, v591, 1, 1, __c, &v679[1]);
    if (v593 < 0 || (v593 = (*(*(v13 + 32) + 168))(a2, a3, v678, 2, 1, &v679[2], &v679[1]), v593 < 0))
    {
      v82 = v673;
LABEL_856:
      v578 = v593;
      goto LABEL_851;
    }

    v594 = (*(*(v13 + 32) + 168))(a2, a3, v678, 0, 1, __s1, &v679[1]);
    if (v594 < 0)
    {
      break;
    }

    v82 = v673;
    if (v592 >= v670)
    {
      v598 = a2;
      v597 = a3;
      v595 = *v664;
    }

    else
    {
      v592 = v592;
      v595 = *v664;
      v596 = (*v664 + 32 * v592);
      v598 = a2;
      v597 = a3;
      while (1)
      {
        v599 = *v596;
        v596 += 8;
        if (v599 == 59)
        {
          break;
        }

        if (v670 == ++v592)
        {
          LOWORD(v592) = v670;
          break;
        }
      }
    }

    v600 = (v595 + 32 * v592);
    if (*v600 == 59)
    {
      v601 = LOWORD(__c[0]);
      if (v600[1] == LOWORD(__c[0]))
      {
        v602 = v679[2];
        if (v600[2] == v679[2])
        {
          if (v600[3] != LOWORD(__c[0]))
          {
            LOWORD(__c[0]) = v600[3];
            v593 = (*(*(v13 + 32) + 160))(v598, v597, v678, 1, 1, __c, v679);
            if (v593 < 0)
            {
              goto LABEL_856;
            }

            v602 = v679[2];
            v601 = v600[3];
            v598 = a2;
            v597 = a3;
          }

          v603 = v600[4] + v601;
          if (v603 != v602)
          {
            v679[2] = v603;
            v593 = (*(*(v13 + 32) + 160))(v598, v597, v678, 2, 1, &v679[2], v679);
            v598 = a2;
            v597 = a3;
            if (v593 < 0)
            {
              goto LABEL_856;
            }
          }
        }
      }
    }

    v578 = (*(*(v13 + 32) + 120))(v598, v597, v678, &v678);
    if (v578 < 0)
    {
      goto LABEL_851;
    }

    LOWORD(v592) = v592 + 1;
    v591 = v678;
    if (!v678)
    {
      goto LABEL_834;
    }
  }

  v578 = v594;
  v82 = v673;
LABEL_851:
  v665 = v578;
  v14 = *v664;
LABEL_852:
  *v112 = v670;
  *v110 = v16;
  *v111 = v14;
  if (v82)
  {
LABEL_853:
    heap_Free(*(*v13 + 8), v82);
  }

  return v665;
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
    v30 = a2;
  }

  else
  {
    *a9 = v18 + 10;
    v19 = heap_Realloc(*(*a1 + 8), v15, (v18 + 10) + 1);
    if (!v19)
    {
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v20, v21, v22, v23, v28);
      return 2687508490;
    }

    v15 = v19;
    v30 = a2;
    v17 = *a8;
  }

  v29 = v16;
  cstdlib_memmove((v15 + a5 + v16), (v15 + a5), (v17 - a5));
  if (v11 < a7)
  {
    v11 = v11;
    do
    {
      if (cstdlib_strlen((a1[25] + 6 * v11 + 2)))
      {
        v24 = 0;
        v25 = 0;
        do
        {
          *(v15 + a5++) = *(a1[25] + 6 * v11 + v24 + 2);
          v24 = ++v25;
        }

        while (cstdlib_strlen((a1[25] + 6 * v11 + 2)) > v25);
      }

      ++v11;
    }

    while (v11 != a7);
  }

  result = 0;
  v27 = *a8 + v29;
  *a8 = v27;
  *(v15 + v27) = 0;
  *v30 = v15;
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
  result = cstdlib_strlen(__s);
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
  cstdlib_strcpy(__dst, __src);
  v8 = &__dst[a4];
  v9 = cstdlib_strlen(a3);
  cstdlib_strncpy(v8, a3, v9);
  v10 = &v8[cstdlib_strlen(a3)];

  return cstdlib_strcpy(v10, &__src[a4 + 1]);
}

const char *getPunctClassChar(void *a1, int __c)
{
  v4 = a1[16];
  if (!v4)
  {
    v4 = ".!?";
  }

  if (cstdlib_strchr(v4, __c))
  {
    return "Γ";
  }

  v6 = a1[17];
  if (!v6)
  {
    v6 = ",:;";
  }

  if (cstdlib_strchr(v6, __c))
  {
    return "Θ";
  }

  if (a1[18])
  {
    v7 = a1[18];
  }

  else
  {
    v7 = &puncClass3;
  }

  cstdlib_strchr(v7, __c);
  return "Ω";
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

void *qrk_free(void *result, uint64_t a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = result;
    v6 = *a2;
    if (*a2 && *(a2 + 20))
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v46 = 0;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = 1;
      v14 = v6;
      do
      {
        v8 = v7 - 1;
        v9 = *(&v14 + v7 - 1);
        if (v9)
        {
          if (!a3)
          {
            v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
            heap_Free(v5[1], *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
            v11 = v5[1];
            v9 = v12;
            goto LABEL_10;
          }
        }

        else
        {
          v10 = *(v9 + 8);
          *(&v14 + v8) = *v9;
          v8 = v7 + 1;
          *(&v14 + v7) = v10;
          if (!a3)
          {
            v11 = v5[1];
LABEL_10:
            heap_Free(v11, v9);
          }
        }

        v7 = v8;
      }

      while (v8);
    }

    if (a3)
    {
      heap_Free(v5[1], *a2);
      heap_Free(v5[1], **(a2 + 8));
    }

    heap_Free(v5[1], *(a2 + 8));
    v13 = v5[1];

    return heap_Free(v13, a2);
  }

  return result;
}

uint64_t qrk_str2id(uint64_t a1, uint64_t *a2, char *__s, unsigned int *a4, unsigned int a5)
{
  if (!a5)
  {
    a5 = cstdlib_strlen(__s);
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
          cstdlib_memcpy(v28, __s, (v9 + 1));
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
        cstdlib_memcpy(v19, __s, (v9 + 1));
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
    *(v4 + 16) = xmmword_26ECDBC70;
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

uint64_t qp_id2str(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 20) <= a3)
  {
    wapiti_fatal(*(a1 + 32), "invalid identifier");
  }

  return *(*(*(a2 + 8) + 8 * a3) + 8);
}

uint64_t qp_lock(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
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
    v5 = cstdlib_strlen(__s);
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
            cstdlib_memcpy(v30, __s, v5 + 1);
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

  v88 = v34;
  v35 = heap_Alloc(*(a1 + 8), v5 + 1);
  *(v33 + 8) = v35;
  if (!v35)
  {
    goto LABEL_41;
  }

  cstdlib_memcpy(v35, __s, v5 + 1);
  *(*(v33 + 8) + v5) = 0;
  v36 = *(a2 + 20);
  *(a2 + 20) = v36 + 1;
  *v33 = v36;
  *a4 = v36;
  v37 = *v33;
  if (*v33 != *(a2 + 24))
  {
    v39 = *(a2 + 8);
    v41 = v88;
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
  v41 = v88;
LABEL_44:
  *(v39 + 8 * v37) = v33;
  if (v40)
  {
    v44 = cstdlib_strlen(*(v19 + 8));
    v45 = __s[v21];
    if (v44 <= v21)
    {
      v47 = 1;
      v48 = 1 << (__s[v21] >> 4);
      v46 = *(*(v19 + 8) + v21);
    }

    else
    {
      v46 = *(*(v19 + 8) + v21);
      if ((v46 ^ v45) >= 0x10)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      v48 = 1 << ((((v47 + 254) ^ 0xF) & v45) >> (8 - 4 * v47));
    }

    v41 = v88;
  }

  else
  {
    v46 = *(*(v19 + 8) + v21);
    v48 = 1;
    v47 = 1;
  }

  v49 = v33 | 1;
  *v41 = v33 | 1;
  v50 = *a2;
  v41[2] = 0;
  if (v50)
  {
    v87 = 0;
LABEL_76:
    v60 = 0;
    v41[1] = v50;
    v61 = 1;
    do
    {
      v62 = *(a1 + 8);
      if (v61)
      {
        v60 = heap_Calloc(v62, 1, 16);
        if (!v60)
        {
          return v26;
        }
      }

      else
      {
        heap_Free(v62, v60);
        v60 = 0;
      }

      v61 = v60 == 0;
    }

    while (!v60 || (v60 & 1) != 0);
    v63 = v88[2];
    v64 = 1 << ((((v47 + 254) ^ 0xF) & v46) >> (8 - 4 * v47));
    if (!v46)
    {
      v64 = 1;
    }

    v65 = ((v47 << 16) - 0x10000) | v48;
    *(v60 + 8) = v64 | v65;
    *(v60 + 12) = v21;
    v66 = v48 - 1;
    v67 = ((((v64 | v65) & v66) >> 1) & 0x5555) + ((v64 | v65) & v66 & 0x5555);
    v68 = (((((v67 >> 2) & 0x33333333) + (v67 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v67 >> 2) & 0x33333333) + (v67 & 0x33333333)) & 0xF0F0F0F);
    v69 = (v68 & 0xF) + (v68 >> 8) + 1;
    v70 = v64 - 1;
    v71 = (((v70 & v65) >> 1) & 0x5555) + (v70 & v65 & 0x5555);
    v72 = (((((v71 >> 2) & 0x33333333) + (v71 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v71 >> 2) & 0x33333333) + (v71 & 0x33333333)) & 0xF0F0F0F);
    v73 = (v72 & 0xF) + (v72 >> 8);
    if (v69 <= v73 + 1)
    {
      v74 = v73 + 1;
    }

    else
    {
      v74 = v69;
    }

    if (v74 <= 2)
    {
      v75 = 2;
    }

    else
    {
      v75 = v74;
    }

    v76 = heap_Calloc(*(a1 + 8), v75, 8);
    v43 = v88;
    *v60 = v76;
    if (v76)
    {
      v26 = 0;
      v77 = *(v60 + 8);
      v78 = (((v77 & v66) >> 1) & 0x5555) + (v77 & v66 & 0x5555);
      v79 = (((((v78 >> 2) & 0x33333333) + (v78 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v78 >> 2) & 0x33333333) + (v78 & 0x33333333)) & 0xF0F0F0F);
      *(v76 + 8 * ((v79 & 0xF) + (v79 >> 8))) = *v88;
      v80 = (((v77 & v70) >> 1) & 0x5555) + (v77 & v70 & 0x5555);
      v81 = (((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) & 0xF0F0F0F);
      *(*v60 + 8 * ((v81 & 0xF) + (v81 >> 8))) = v88[1];
      v82 = (v63 + 8 * v87);
      if (!v63)
      {
        v82 = a2;
      }

      *v82 = v60;
    }

    goto LABEL_95;
  }

  v51 = 0;
  while (1)
  {
    v52 = *(v50 + 12);
    if (v52 >= v5)
    {
      v54 = 1;
    }

    else
    {
      v53 = (*(v50 + 10) & 1) != 0 ? 2 : 1;
      v54 = 1 << ((((v53 + 254) ^ 0xF) & __s[v52]) >> (8 - 4 * v53));
    }

    if (v52 == v21)
    {
      break;
    }

    if (v52 > v21)
    {
      goto LABEL_74;
    }

    v55 = *(v50 + 8);
LABEL_70:
    v57 = *v50;
    v41[2] = *v50;
    if ((v54 & v55) != 0)
    {
      v58 = (((v55 & (v54 - 1)) >> 1) & 0x5555) + (v55 & (v54 - 1) & 0x5555);
      v59 = (((((v58 >> 2) & 0x33333333) + (v58 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v58 >> 2) & 0x33333333) + (v58 & 0x33333333)) & 0xF0F0F0F);
      v51 = (v59 & 0xF) + (v59 >> 8);
    }

    else
    {
      v51 = 0;
    }

    v50 = *(v57 + 8 * v51);
    if (v50)
    {
LABEL_74:
      v87 = v51;
      goto LABEL_76;
    }
  }

  v55 = *(v50 + 8);
  if ((v55 & 0x10000) != 0)
  {
    v56 = 2;
  }

  else
  {
    v56 = 1;
  }

  if (v47 != v56)
  {
    if (v47 < v56)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  v89 = 0;
  __src = v49;
  twigoffmax(&v89 + 1, &v89, v50, v48);
  v83 = v89;
  v84 = heap_Realloc(*(a1 + 8), *v50, 8 * (v89 + 1));
  if (v84)
  {
    v85 = v84;
    v86 = v84 + 8 * HIDWORD(v89);
    cstdlib_memmove((v86 + 8), v86, 8 * (v83 - HIDWORD(v89)));
    cstdlib_memmove(v86, &__src, 8uLL);
    v26 = 0;
    *v50 = v85;
    *(v50 + 8) |= v48;
  }

LABEL_42:
  v43 = v88;
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

void *rdr_free(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(a1 + 24))
    {
      v6 = 0;
      do
      {
        pat_free(v4, *(*(a1 + 32) + 8 * v6++));
      }

      while (v6 < *(a1 + 24));
      v5 = *(a1 + 32);
    }

    heap_Free(*(v4 + 8), v5);
  }

  qrk_free(v4, *(a1 + 40), a2);
  qrk_free(v4, *(a1 + 48), a2);
  wapiti_rules_unload(v4, *(a1 + 56));
  v7 = *(v4 + 8);

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

void *rdr_freedat(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 0;
    do
    {
      rdr_freeseq(a1, *(*(a2 + 16) + 8 * v4++));
    }

    while (v4 < *(a2 + 8));
  }

  heap_Free(*(a1 + 8), *(a2 + 16));
  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}

uint64_t rdr_readraw(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v7 = *a1;
  *a4 = 0;
  if (!*a2 || !**a2)
  {
    return 0;
  }

  v9 = heap_Alloc(*(v7 + 8), 16);
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = heap_Calloc(*(v7 + 8), a3, 8);
  *(v9 + 8) = v10;
  if (!v10)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    v16 = v10;
    v4 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  while (1)
  {
    v12 = a2[v11];
    if (!v12)
    {
      if (!v11)
      {
        v4 = 0;
        goto LABEL_27;
      }

LABEL_23:
      v17 = heap_Realloc(*(v7 + 8), *(v9 + 8), 8 * v11);
      *(v9 + 8) = v17;
      if (!v17)
      {
        goto LABEL_33;
      }

      v4 = 0;
      *v9 = v11;
      goto LABEL_34;
    }

    v13 = cstdlib_strlen(a2[v11]);
    if (v13)
    {
      break;
    }

LABEL_16:
    if (++v11 == a3)
    {
      v11 = a3;
      goto LABEL_23;
    }
  }

  v14 = v13;
  while (cstdlib_isspace(v12[v14 - 1]))
  {
    if (!--v14)
    {
      goto LABEL_16;
    }
  }

  *(*(v9 + 8) + 8 * v11) = heap_Calloc(*(v7 + 8), 1, (v14 + 1));
  v15 = *(*(v9 + 8) + 8 * v11);
  if (v15)
  {
    cstdlib_strncpy(v15, v12, v14);
    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (!*(v9 + 8))
  {
    goto LABEL_33;
  }

  v18 = 0;
  do
  {
    v19 = *(*(v9 + 8) + 8 * v18);
    if (v19)
    {
      heap_Free(*(v7 + 8), v19);
    }

    ++v18;
  }

  while (a3 != v18);
  v16 = *(v9 + 8);
LABEL_21:
  heap_Free(*(v7 + 8), v16);
LABEL_33:
  heap_Free(*(v7 + 8), v9);
  v9 = 0;
LABEL_34:
  *a4 = v9;
  return v4;
}

uint64_t rdr_raw2seq(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v5 = a4;
  v8 = *a2;
  v9 = *a1;
  *a4 = 0;
  v10 = heap_Alloc(*(v9 + 8), 8 * v8 + 32);
  if (!v10)
  {
    v37 = 0;
    goto LABEL_131;
  }

  v11 = v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v12 = (v10 + 8);
  v13 = heap_Calloc(*(v9 + 8), v8, 4);
  v12[1] = v13;
  if (!v13)
  {
    v37 = 0;
    goto LABEL_128;
  }

  *v12 = 0;
  if (a3 == 1)
  {
    v14 = heap_Calloc(*(v9 + 8), v8, 8);
    *v12 = v14;
    if (!v14)
    {
LABEL_67:
      v37 = 0;
      goto LABEL_119;
    }
  }

  v86 = v5;
  v87 = v12;
  if (v8)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(*(a2 + 1) + 8 * v15);
      if (!v16)
      {
        break;
      }

      v17 = (v16 - 1);
      do
      {
        v18 = *++v17;
      }

      while (cstdlib_isspace(v18));
      v19 = cstdlib_strlen(v17) + 1;
      v20 = heap_Alloc(*(v9 + 8), v19);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      cstdlib_memcpy(v20, v17, v19);
      v22 = *(v9 + 8);
      v23 = cstdlib_strlen(v21);
      v24 = heap_Alloc(v22, 8 * ((v23 >> 1) + 1));
      if (!v24)
      {
        break;
      }

      v25 = v24;
      if (*v21)
      {
        v26 = 0;
LABEL_15:
        v25[v26++] = v21;
        v27 = *v21;
        if (*v21)
        {
          while (!cstdlib_isspace(v27))
          {
            v28 = *++v21;
            v27 = v28;
            if (!v28)
            {
              goto LABEL_26;
            }
          }

          if (*v21)
          {
            *v21 = 0;
            while (1)
            {
              v30 = *++v21;
              v29 = v30;
              if (!v30)
              {
                break;
              }

              if (!cstdlib_isspace(v29))
              {
                if (*v21)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }
        }
      }

      else
      {
        v26 = 0;
      }

LABEL_26:
      v31 = heap_Alloc(*(v9 + 8), 8 * v26);
      *&v11[2 * v15 + 6] = v31;
      if (!v31)
      {
        break;
      }

      *(*(v11 + 2) + 4 * v15) = v26;
      cstdlib_memcpy(v31, v25, 8 * v26);
      heap_Free(*(v9 + 8), v25);
      if (++v15 == v8)
      {
        goto LABEL_28;
      }
    }

LABEL_117:
    v37 = 0;
    goto LABEL_118;
  }

LABEL_28:
  *v11 = v8;
  v32 = a1;
  v33 = *(a1 + 56);
  if (v33)
  {
    v34 = wapiti_rules_apply(v9, v33, v11);
    v32 = a1;
    if ((v34 & 0x80000000) != 0)
    {
      v37 = 0;
LABEL_65:
      v4 = v34;
      goto LABEL_118;
    }
  }

  v35 = *v32;
  v36 = *v11;
  v85 = v36;
  if (!*(v32 + 24))
  {
    if (*(v32 + 8))
    {
      v59 = **(v11 + 2);
    }

    else if (v36)
    {
      v60 = 0;
      v59 = 0;
      v61 = *(v11 + 2);
      do
      {
        if (*(v61 + 4 * v60))
        {
          v62 = 0;
          do
          {
            v63 = **(*&v11[2 * v60 + 6] + 8 * v62);
            if (v63 == 42)
            {
              v59 += 2;
            }

            else if (v63 == 98 || v63 == 117)
            {
              ++v59;
            }

            else
            {
              wapiti_fatal(*(v35 + 32), "invalid feature: %s");
              v61 = *(v11 + 2);
            }

            ++v62;
          }

          while (v62 < *(v61 + 4 * v60));
        }

        ++v60;
        v36 = v85;
      }

      while (v60 != v85);
    }

    else
    {
      v59 = 0;
    }

    v37 = heap_Alloc(*(v35 + 8), 32 * v36 + 56);
    if (v37)
    {
      v64 = heap_Alloc(*(v35 + 8), 4 * v59);
      *(v37 + 8) = v64;
      v12 = v87;
      if (!v64)
      {
        v37 = 0;
        goto LABEL_111;
      }

      *v37 = v36;
      *(v37 + 16) = 0;
      if (!v36)
      {
        v4 = 0;
        goto LABEL_111;
      }

      v65 = v64;
      v66 = 0;
      v4 = 0;
      v67 = v37 + 24;
      v84 = v11 + 6;
      v68 = *(v11 + 2);
      v69 = a1;
      do
      {
        v70 = v67 + 32 * v66;
        *v70 = 0xFFFFFFFFLL;
        *(v70 + 16) = v65;
        if (*(v68 + 4 * v66))
        {
          v71 = 0;
          do
          {
            LODWORD(__s) = 0;
            v72 = *(*&v84[2 * v66] + 8 * v71);
            if (*(v69 + 8) || *v72 != 98)
            {
              v4 = rdr_mapobs(v69, v72, &__s);
              if ((v4 & 0x80000000) != 0)
              {
                goto LABEL_117;
              }

              if (__s != -1)
              {
                *v65++ = __s;
                ++*(v70 + 4);
              }

              v69 = a1;
            }

            ++v71;
            v68 = *(v11 + 2);
          }

          while (v71 < *(v68 + 4 * v66));
          v12 = v87;
        }

        *(v70 + 8) = 0;
        if (!*(v69 + 8))
        {
          *(v70 + 24) = v65;
          if (*(v68 + 4 * v66))
          {
            v73 = 0;
            do
            {
              LODWORD(__s) = 0;
              v74 = *(*&v84[2 * v66] + 8 * v73);
              if (*v74 != 117)
              {
                v4 = rdr_mapobs(v69, v74, &__s);
                if ((v4 & 0x80000000) != 0)
                {
                  goto LABEL_117;
                }

                if (__s != -1)
                {
                  *v65++ = __s;
                  ++*(v70 + 8);
                }

                v69 = a1;
              }

              ++v73;
              v68 = *(v11 + 2);
            }

            while (v73 < *(v68 + 4 * v66));
            v12 = v87;
          }
        }

        ++v66;
        v67 = v37 + 24;
      }

      while (v66 != v85);
      if (!*v12)
      {
        goto LABEL_111;
      }

      v75 = 0;
      do
      {
        v76 = *(*v87 + v75);
        LODWORD(__s) = 0;
        v4 = qrk_str2id(v35, *(v69 + 40), v76, &__s, 0);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        *(v37 + 4 * v75 + 24) = __s;
        v75 += 8;
        v69 = a1;
      }

      while (8 * v85 != v75);
    }

LABEL_118:
    v5 = v86;
    v12 = v87;
    goto LABEL_119;
  }

  v37 = heap_Alloc(*(v35 + 8), 32 * v36 + 56);
  if (!v37)
  {
    goto LABEL_118;
  }

  v38 = heap_Alloc(*(v35 + 8), 4 * v36 * (*(a1 + 16) + *(a1 + 12)));
  *(v37 + 8) = v38;
  v5 = v86;
  if (!v38)
  {
    heap_Free(*(v35 + 8), v37);
    goto LABEL_67;
  }

  *v37 = v36;
  *(v37 + 16) = 0;
  if (!v36)
  {
    v4 = 0;
    goto LABEL_119;
  }

  v39 = v37 + 24;
  v40 = (v37 + 48);
  v41 = 4 * *(a1 + 12);
  v42 = v41 + 4 * *(a1 + 16);
  v43 = v36;
  do
  {
    *(v40 - 6) = -1;
    *(v40 - 1) = v38;
    *v40 = v38 + v41;
    v40 += 4;
    v38 += v42;
    --v43;
  }

  while (v43);
  v44 = 0;
  v4 = 0;
  v45 = a1;
  LODWORD(v46) = *(a1 + 24);
  do
  {
    v47 = v39 + 32 * v44;
    *(v47 + 4) = 0;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = 0;
      while (1)
      {
        __s = 0;
        v89 = 0;
        v34 = pat_exec(v35, *(*(v45 + 32) + 8 * v48), v11, v44, &__s);
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_65;
        }

        v4 = rdr_mapobs(v45, __s, &v89);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_118;
        }

        v49 = v89;
        if (v89 != -1)
        {
          break;
        }

        v54 = *(v35 + 8);
        v50 = __s;
LABEL_51:
        heap_Free(v54, v50);
        ++v48;
        v45 = a1;
        v46 = *(a1 + 24);
        if (v48 >= v46)
        {
          v12 = v87;
          v39 = v37 + 24;
          goto LABEL_53;
        }
      }

      v50 = __s;
      v51 = *__s;
      switch(v51)
      {
        case '*':
          v55 = *(v47 + 16);
          v56 = *(v47 + 4);
          *(v47 + 4) = v56 + 1;
          *(v55 + 4 * v56) = v49;
          v49 = v89;
          break;
        case 'b':
          break;
        case 'u':
          v52 = *(v47 + 16);
          v53 = *(v47 + 4);
          *(v47 + 4) = v53 + 1;
LABEL_49:
          *(v52 + 4 * v53) = v49;
          goto LABEL_50;
        default:
LABEL_50:
          v54 = *(v35 + 8);
          goto LABEL_51;
      }

      v52 = *(v47 + 24);
      v53 = *(v47 + 8);
      *(v47 + 8) = v53 + 1;
      goto LABEL_49;
    }

LABEL_53:
    ++v44;
  }

  while (v44 != v85);
  if (*v12)
  {
    v57 = 0;
    do
    {
      v58 = *(*v87 + v57);
      LODWORD(__s) = 0;
      v4 = qrk_str2id(v35, *(v45 + 40), v58, &__s, 0);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      *(v37 + 4 * v57 + 24) = __s;
      v57 += 8;
      v45 = a1;
    }

    while (8 * v85 != v57);
    goto LABEL_118;
  }

LABEL_111:
  v5 = v86;
LABEL_119:
  v77 = *(v11 + 2);
  if (v77)
  {
    if (v8)
    {
      v78 = v12;
      v79 = v5;
      v80 = 0;
      v81 = v11 + 6;
      do
      {
        if (*(*(v11 + 2) + 4 * v80))
        {
          v82 = *&v81[2 * v80];
          if (v82)
          {
            heap_Free(*(v9 + 8), *v82);
            heap_Free(*(v9 + 8), *&v81[2 * v80]);
          }
        }

        ++v80;
      }

      while (v8 != v80);
      v77 = *(v11 + 2);
      v5 = v79;
      v12 = v78;
    }

    heap_Free(*(v9 + 8), v77);
  }

LABEL_128:
  if (*v12)
  {
    heap_Free(*(v9 + 8), *v12);
  }

  heap_Free(*(v9 + 8), v11);
LABEL_131:
  *v5 = v37;
  return v4;
}

uint64_t rdr_readraw_qp(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v7 = *a1;
  *a4 = 0;
  if (!*a2 || !**a2)
  {
    return 0;
  }

  v9 = heap_Alloc(*(v7 + 8), 16);
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = heap_Calloc(*(v7 + 8), a3, 8);
  *(v9 + 8) = v10;
  if (!v10)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    v16 = v10;
    v4 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  while (1)
  {
    v12 = a2[v11];
    if (!v12)
    {
      if (!v11)
      {
        v4 = 0;
        goto LABEL_27;
      }

LABEL_23:
      v17 = heap_Realloc(*(v7 + 8), *(v9 + 8), 8 * v11);
      *(v9 + 8) = v17;
      if (!v17)
      {
        goto LABEL_33;
      }

      v4 = 0;
      *v9 = v11;
      goto LABEL_34;
    }

    v13 = cstdlib_strlen(a2[v11]);
    if (v13)
    {
      break;
    }

LABEL_16:
    if (++v11 == a3)
    {
      v11 = a3;
      goto LABEL_23;
    }
  }

  v14 = v13;
  while (cstdlib_isspace(v12[v14 - 1]))
  {
    if (!--v14)
    {
      goto LABEL_16;
    }
  }

  *(*(v9 + 8) + 8 * v11) = heap_Calloc(*(v7 + 8), 1, (v14 + 1));
  v15 = *(*(v9 + 8) + 8 * v11);
  if (v15)
  {
    cstdlib_strncpy(v15, v12, v14);
    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (!*(v9 + 8))
  {
    goto LABEL_33;
  }

  v18 = 0;
  do
  {
    v19 = *(*(v9 + 8) + 8 * v18);
    if (v19)
    {
      heap_Free(*(v7 + 8), v19);
    }

    ++v18;
  }

  while (a3 != v18);
  v16 = *(v9 + 8);
LABEL_21:
  heap_Free(*(v7 + 8), v16);
LABEL_33:
  heap_Free(*(v7 + 8), v9);
  v9 = 0;
LABEL_34:
  *a4 = v9;
  return v4;
}

uint64_t rdr_raw2seq_qp(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v5 = a4;
  v9 = *a2;
  v10 = *a1;
  *a4 = 0;
  v11 = heap_Alloc(*(v10 + 8), 8 * v9 + 32);
  if (!v11)
  {
    v38 = 0;
LABEL_118:
    *v5 = v38;
    return v4;
  }

  v12 = v11;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v13 = (v11 + 8);
  v14 = heap_Calloc(*(v10 + 8), v9, 4);
  v13[1] = v14;
  if (!v14)
  {
    v38 = 0;
LABEL_115:
    if (*v13)
    {
      heap_Free(*(v10 + 8), *v13);
    }

    heap_Free(*(v10 + 8), v12);
    goto LABEL_118;
  }

  *v13 = 0;
  v92 = v9;
  if (a3 == 1)
  {
    v15 = heap_Calloc(*(v10 + 8), v9, 8);
    *v13 = v15;
    if (!v15)
    {
      v38 = 0;
      goto LABEL_106;
    }
  }

  v89 = v13;
  if (v9)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a2 + 1) + 8 * v16);
      if (!v17)
      {
        break;
      }

      v18 = (v17 - 1);
      do
      {
        v19 = *++v18;
      }

      while (cstdlib_isspace(v19));
      v20 = cstdlib_strlen(v18) + 1;
      v21 = heap_Alloc(*(v10 + 8), v20);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      cstdlib_memcpy(v21, v18, v20);
      v23 = *(v10 + 8);
      v24 = cstdlib_strlen(v22);
      v25 = heap_Alloc(v23, 8 * ((v24 >> 1) + 1));
      if (!v25)
      {
        break;
      }

      v26 = v25;
      if (*v22)
      {
        v27 = 0;
LABEL_15:
        v26[v27++] = v22;
        v28 = *v22;
        if (*v22)
        {
          while (!cstdlib_isspace(v28))
          {
            v29 = *++v22;
            v28 = v29;
            if (!v29)
            {
              goto LABEL_26;
            }
          }

          if (*v22)
          {
            *v22 = 0;
            while (1)
            {
              v31 = *++v22;
              v30 = v31;
              if (!v31)
              {
                break;
              }

              if (!cstdlib_isspace(v30))
              {
                if (*v22)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }
        }
      }

      else
      {
        v27 = 0;
      }

LABEL_26:
      v32 = heap_Alloc(*(v10 + 8), 8 * v27);
      *&v12[2 * v16 + 6] = v32;
      if (!v32)
      {
        break;
      }

      *(*(v12 + 2) + 4 * v16) = v27;
      cstdlib_memcpy(v32, v26, 8 * v27);
      heap_Free(*(v10 + 8), v26);
      ++v16;
    }

    while (v16 != v92);
  }

  *v12 = v92;
  v33 = *(a1 + 56);
  if (v33)
  {
    v34 = wapiti_rules_apply(v10, v33, v12);
    if ((v34 & 0x80000000) != 0)
    {
      v38 = 0;
      v4 = v34;
LABEL_105:
      v13 = v89;
LABEL_106:
      v77 = *(v12 + 2);
      if (v77)
      {
        if (v92)
        {
          v78 = v5;
          v79 = 0;
          v80 = v12 + 6;
          do
          {
            if (*(*(v12 + 2) + 4 * v79))
            {
              v81 = *&v80[2 * v79];
              if (v81)
              {
                heap_Free(*(v10 + 8), *v81);
                heap_Free(*(v10 + 8), *&v80[2 * v79]);
              }
            }

            ++v79;
          }

          while (v92 != v79);
          v77 = *(v12 + 2);
          v5 = v78;
        }

        heap_Free(*(v10 + 8), v77);
      }

      goto LABEL_115;
    }
  }

  v35 = *a1;
  v36 = *v12;
  if (!*(a1 + 24))
  {
    v88 = v5;
    v91 = *v12;
    if (*(a1 + 8))
    {
      LODWORD(v36) = **(v12 + 2);
    }

    else if (v36)
    {
      v61 = 0;
      LODWORD(v36) = 0;
      v62 = *(v12 + 2);
      do
      {
        if (*(v62 + 4 * v61))
        {
          v63 = 0;
          do
          {
            v64 = **(*&v12[2 * v61 + 6] + 8 * v63);
            if (v64 == 42)
            {
              LODWORD(v36) = v36 + 2;
            }

            else if (v64 == 98 || v64 == 117)
            {
              LODWORD(v36) = v36 + 1;
            }

            else
            {
              wapiti_fatal(*(v35 + 32), "invalid feature: %s");
              v62 = *(v12 + 2);
            }

            ++v63;
          }

          while (v63 < *(v62 + 4 * v61));
        }

        ++v61;
      }

      while (v61 != v91);
    }

    v65 = heap_Alloc(*(v35 + 8), 32 * v91 + 56);
    if (!v65)
    {
      return v4;
    }

    v38 = v65;
    v66 = heap_Alloc(*(v35 + 8), 4 * v36);
    *(v38 + 8) = v66;
    v5 = v88;
    v13 = v89;
    if (!v66)
    {
      return v4;
    }

    *v38 = v91;
    *(v38 + 16) = 0;
    if (v91)
    {
      v67 = v66;
      v68 = 0;
      v69 = v38 + 24;
      v70 = v12 + 6;
      v71 = *(v12 + 2);
      v86 = v38 + 24;
      v87 = v38;
      do
      {
        v72 = v69 + 32 * v68;
        *v72 = 0xFFFFFFFFLL;
        *(v72 + 16) = v67;
        if (*(v71 + 4 * v68))
        {
          v73 = 0;
          do
          {
            LODWORD(__s) = 0;
            v74 = *(*&v70[2 * v68] + 8 * v73);
            if (*(a1 + 8) || *v74 != 98)
            {
              v49 = rdr_mapobs_qp(a1, v74, &__s);
              if ((v49 & 0x80000000) != 0)
              {
                return v49;
              }

              if (__s != -1)
              {
                *v67++ = __s;
                ++*(v72 + 4);
              }
            }

            ++v73;
            v71 = *(v12 + 2);
          }

          while (v73 < *(v71 + 4 * v68));
          v5 = v88;
        }

        *(v72 + 8) = 0;
        if (!*(a1 + 8))
        {
          *(v72 + 24) = v67;
          if (*(v71 + 4 * v68))
          {
            v75 = 0;
            do
            {
              LODWORD(__s) = 0;
              v76 = *(*&v70[2 * v68] + 8 * v75);
              if (*v76 != 117)
              {
                v49 = rdr_mapobs_qp(a1, v76, &__s);
                if ((v49 & 0x80000000) != 0)
                {
                  return v49;
                }

                if (__s != -1)
                {
                  *v67++ = __s;
                  ++*(v72 + 8);
                }
              }

              ++v75;
              v71 = *(v12 + 2);
            }

            while (v75 < *(v71 + 4 * v68));
            v5 = v88;
          }
        }

        ++v68;
        v69 = v86;
      }

      while (v68 != v91);
      v13 = v89;
      if (*v89)
      {
        v58 = v5;
        v83 = 0;
        do
        {
          v84 = *(*v89 + v83);
          LODWORD(__s) = 0;
          v4 = qp_str2id(v35, *(a1 + 40), v84, &__s, 0);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          *(v87 + 4 * v83 + 24) = __s;
          v83 += 8;
        }

        while (8 * v91 != v83);
LABEL_125:
        v5 = v58;
      }

      else
      {
        v4 = 0;
      }

      v38 = v87;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_106;
  }

  v37 = heap_Alloc(*(v35 + 8), 32 * v36 + 56);
  if (!v37)
  {
    return v4;
  }

  v38 = v37;
  v39 = heap_Alloc(*(v35 + 8), 4 * v36 * (*(a1 + 16) + *(a1 + 12)));
  *(v38 + 8) = v39;
  if (!v39)
  {
    heap_Free(*(v35 + 8), v38);
    return v4;
  }

  *v38 = v36;
  *(v38 + 16) = 0;
  if (!v36)
  {
    v4 = 0;
    goto LABEL_105;
  }

  v40 = v38 + 24;
  v41 = (v38 + 48);
  v42 = 4 * *(a1 + 12);
  v43 = v42 + 4 * *(a1 + 16);
  v90 = v36;
  v44 = v36;
  v13 = v89;
  do
  {
    *(v41 - 6) = -1;
    *(v41 - 1) = v39;
    *v41 = v39 + v42;
    v41 += 4;
    v39 += v43;
    --v44;
  }

  while (v44);
  v45 = 0;
  v4 = 0;
  LODWORD(v46) = *(a1 + 24);
  v85 = v38 + 24;
  v87 = v38;
  do
  {
    v47 = v40 + 32 * v45;
    *(v47 + 4) = 0;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = 0;
      while (1)
      {
        __s = 0;
        v93 = 0;
        v49 = pat_exec(v35, *(*(a1 + 32) + 8 * v48), v12, v45, &__s);
        if ((v49 & 0x80000000) != 0)
        {
          return v49;
        }

        v4 = rdr_mapobs_qp(a1, __s, &v93);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        v50 = v93;
        if (v93 != -1)
        {
          break;
        }

        v55 = *(v35 + 8);
        v51 = __s;
LABEL_51:
        heap_Free(v55, v51);
        ++v48;
        v46 = *(a1 + 24);
        if (v48 >= v46)
        {
          v40 = v85;
          v38 = v87;
          goto LABEL_53;
        }
      }

      v51 = __s;
      v52 = *__s;
      switch(v52)
      {
        case '*':
          v56 = *(v47 + 16);
          v57 = *(v47 + 4);
          *(v47 + 4) = v57 + 1;
          *(v56 + 4 * v57) = v50;
          v50 = v93;
          break;
        case 'b':
          break;
        case 'u':
          v53 = *(v47 + 16);
          v54 = *(v47 + 4);
          *(v47 + 4) = v54 + 1;
LABEL_49:
          *(v53 + 4 * v54) = v50;
          goto LABEL_50;
        default:
LABEL_50:
          v55 = *(v35 + 8);
          goto LABEL_51;
      }

      v53 = *(v47 + 24);
      v54 = *(v47 + 8);
      *(v47 + 8) = v54 + 1;
      goto LABEL_49;
    }

LABEL_53:
    ++v45;
  }

  while (v45 != v90);
  if (!*v89)
  {
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    goto LABEL_106;
  }

  v58 = v5;
  v59 = 0;
  while (1)
  {
    v60 = *(*v89 + v59);
    LODWORD(__s) = 0;
    v4 = qp_str2id(v35, *(a1 + 40), v60, &__s, 0);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    *(v87 + 4 * v59 + 24) = __s;
    v59 += 8;
    if (8 * v90 == v59)
    {
      goto LABEL_125;
    }
  }
}

uint64_t rdr_mapobs(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(v6 + 8);
    v8 = cstdlib_strlen(__s);
    v9 = heap_Alloc(v7, (v8 + 2));
    if (!v9)
    {
      return 2585796618;
    }

    v10 = v9;
    v15 = 0;
    *v9 = 117;
    cstdlib_strcpy(v9 + 1, __s);
    v11 = qrk_str2id(v6, *(a1 + 48), v10, &v15, 0);
    if ((v11 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v10);
      *a3 = v15;
    }

    return v11;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *a1;

    return qrk_str2id(v13, v12, __s, a3, 0);
  }
}

uint64_t rdr_mapobs_qp(uint64_t a1, char *__s, int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(v6 + 8);
    v8 = cstdlib_strlen(__s);
    v9 = heap_Alloc(v7, (v8 + 2));
    if (!v9)
    {
      return 2585796618;
    }

    v10 = v9;
    v15 = 0;
    *v9 = 117;
    cstdlib_strcpy(v9 + 1, __s);
    v11 = qp_str2id(v6, *(a1 + 48), v10, &v15, 0);
    if ((v11 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v10);
      *a3 = v15;
    }

    return v11;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *a1;

    return qp_str2id(v13, v12, __s, a3, 0);
  }
}

uint64_t mdl_new(uint64_t a1, void *a2)
{
  v4 = heap_Calloc(*(*a1 + 8), 1, 32904);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *v5 = *a1;
    v5[14] = a1;
  }

  else
  {
    result = 2585796618;
    if (!a2)
    {
      return result;
    }

    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void *mdl_free(uint64_t *a1, int a2, int a3)
{
  v6 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v6 + 8), a1[8]);
  heap_Free(*(v6 + 8), a1[9]);
  v7 = a1[10];
  if (v7)
  {
    xvm_free(v6, v7);
  }

  v8 = a1[11];
  if (a3 == 1)
  {
    if (v8)
    {
      heap_Free(*(v6 + 8), v8);
    }
  }

  else if (v8)
  {
    xvm_free_sparse(v6);
  }

  v9 = a1[12];
  if (v9)
  {
    rdr_freedat(v6, v9);
  }

  v10 = a1[13];
  if (v10)
  {
    rdr_freedat(v6, v10);
  }

  v11 = a1[14];
  if (v11)
  {
    rdr_free(v11, a2);
  }

  v12 = a1[15];
  if (v12)
  {
    heap_Free(*(v6 + 8), v12);
  }

  v13 = *(v6 + 8);

  return heap_Free(v13, a1);
}

uint64_t mdl_new_qp(uint64_t a1, void *a2)
{
  v4 = heap_Calloc(*(*a1 + 8), 1, 32904);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *v5 = *a1;
    v5[14] = a1;
  }

  else
  {
    result = 2585796618;
    if (!a2)
    {
      return result;
    }

    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void *mdl_free_qp(uint64_t *a1, int a2)
{
  v4 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v4 + 8), a1[8]);
  heap_Free(*(v4 + 8), a1[9]);
  v5 = a1[10];
  if (v5)
  {
    xvm_free(v4, v5);
  }

  v6 = a1[11];
  if (a2 == 1)
  {
    if (v6)
    {
      heap_Free(*(v4 + 8), v6);
    }
  }

  else if (v6)
  {
    xvm_free_sparse(v4);
  }

  v7 = a1[12];
  if (v7)
  {
    rdr_freedat(v4, v7);
  }

  v8 = a1[13];
  if (v8)
  {
    rdr_freedat(v4, v8);
  }

  v9 = a1[14];
  if (v9)
  {
    rdr_free_qp(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    heap_Free(*(v4 + 8), v10);
  }

  v11 = *(v4 + 8);

  return heap_Free(v11, a1);
}

uint64_t mdl_sync(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 36);
  v4 = *(*(a1 + 112) + 40);
  if (v3)
  {
    v5 = qp_count(v4);
    v6 = qp_count(*(*(a1 + 112) + 48));
  }

  else
  {
    v5 = qrk_count(v4);
    v6 = qrk_count(*(*(a1 + 112) + 48));
  }

  v7 = v6;
  v8 = *(a1 + 44);
  if (v8 == v5 && *(a1 + 48) == v6)
  {
    return 0;
  }

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v8 = *(a1 + 44);
  }

  if (v8 == v5 || v8 == 0)
  {
    v12 = *(a1 + 48);
    v11 = *(a1 + 52);
  }

  else
  {
    wapiti_warning(*(v2 + 32), "labels count changed, discarding the model");
    heap_Free(*(v2 + 8), *(a1 + 56));
    *(a1 + 56) = 0;
    heap_Free(*(v2 + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), *(a1 + 72));
    *(a1 + 72) = 0;
    v13 = *(a1 + 80);
    if (v13)
    {
      xvm_free(v2, v13);
      v11 = 0;
      v12 = 0;
      *(a1 + 80) = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  *(a1 + 44) = v5;
  *(a1 + 48) = v7;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 56), v7);
  *(a1 + 56) = v14;
  v15 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v7);
  *(a1 + 64) = v15;
  v16 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v7);
  v17 = v16;
  *(a1 + 72) = v16;
  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v16 != 0)
  {
    v35 = v11;
    v22 = v7 - v12;
    if (v7 > v12)
    {
      v23 = v12;
      while (1)
      {
        v24 = *(*(a1 + 112) + 48);
        v25 = (*(a1 + 36) ? qp_id2str(v2, v24, v23) : qrk_id2str(v2, v24, v23));
        v26 = *v25;
        if (v26 == 42)
        {
          break;
        }

        if (v26 == 117)
        {
          v27 = 1;
LABEL_47:
          *(v14 + v23) = v27;
LABEL_48:
          *(v15 + 4 * v23) = v11;
          v11 += v5;
          v28 = *(v14 + v23);
          goto LABEL_49;
        }

        if (v26 == 98)
        {
          *(v14 + v23) = 2;
LABEL_50:
          *(v17 + 4 * v23) = v11;
          v11 += v5 * v5;
          goto LABEL_51;
        }

        v28 = *(v14 + v23);
        if (v28)
        {
          goto LABEL_48;
        }

LABEL_49:
        if ((v28 & 2) != 0)
        {
          goto LABEL_50;
        }

LABEL_51:
        ++v23;
        if (!--v22)
        {
          goto LABEL_55;
        }
      }

      v27 = 3;
      goto LABEL_47;
    }

LABEL_55:
    *(a1 + 52) = v11;
    v29 = xvm_new(v2, v11);
    v30 = v29;
    if (v35)
    {
      if (v29)
      {
        v31 = 0;
        v32 = *(a1 + 80);
        do
        {
          *(v29 + v31) = *(v32 + v31);
          v31 += 4;
        }

        while (4 * v35 != v31);
        xvm_free(v2, v32);
        *(a1 + 80) = v30;
        goto LABEL_61;
      }
    }

    else
    {
      *(a1 + 80) = v29;
      if (v29)
      {
LABEL_61:
        if (v35 < v11)
        {
          bzero((v30 + 4 * v35), 4 * (v11 + ~v35) + 4);
        }

        v33 = *(*(a1 + 112) + 40);
        if (*(a1 + 36))
        {
          qp_lock(v33, 1);
          qp_lock(*(*(a1 + 112) + 48), 1);
        }

        else
        {
          qrk_lock(v33, 1);
          qrk_lock(*(*(a1 + 112) + 48), 1);
        }

        return 0;
      }
    }

LABEL_65:
    heap_Free(*(v2 + 8), v14);
    *(a1 + 56) = 0;
    if (!v15)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v14)
  {
    goto LABEL_65;
  }

  if (v15)
  {
LABEL_31:
    heap_Free(*(v2 + 8), v15);
    *(a1 + 64) = 0;
  }

LABEL_32:
  if (v17)
  {
    heap_Free(*(v2 + 8), v17);
    *(a1 + 72) = 0;
  }

  v20 = 2585796618;
  v21 = *(a1 + 80);
  if (v21)
  {
    xvm_free(v2, v21);
    *(a1 + 80) = 0;
  }

  return v20;
}

uint64_t mdl_sync_sparse(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 36);
  v4 = *(*(a1 + 112) + 40);
  if (v3)
  {
    v5 = qp_count(v4);
    v6 = qp_count(*(*(a1 + 112) + 48));
  }

  else
  {
    v5 = qrk_count(v4);
    v6 = qrk_count(*(*(a1 + 112) + 48));
  }

  v7 = v6;
  v8 = *(a1 + 44);
  if (v8 == v5 && *(a1 + 48) == v6)
  {
    return 0;
  }

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v8 = *(a1 + 44);
  }

  if (v8 == v5 || v8 == 0)
  {
    v12 = *(a1 + 48);
    v11 = *(a1 + 52);
  }

  else
  {
    wapiti_warning(*(v2 + 32), "labels count changed, discarding the model");
    heap_Free(*(v2 + 8), *(a1 + 56));
    *(a1 + 56) = 0;
    heap_Free(*(v2 + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), *(a1 + 72));
    *(a1 + 72) = 0;
    if (*(a1 + 88))
    {
      xvm_free_sparse(v2);
      v11 = 0;
      v12 = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  *(a1 + 44) = v5;
  *(a1 + 48) = v7;
  v13 = heap_Realloc(*(v2 + 8), *(a1 + 56), v7);
  *(a1 + 56) = v13;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v7);
  *(a1 + 64) = v14;
  v15 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v7);
  v16 = v15;
  *(a1 + 72) = v15;
  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v15 != 0)
  {
    v34 = v11;
    v21 = v7 - v12;
    if (v7 > v12)
    {
      v11 = v11;
      v22 = v12;
      while (1)
      {
        v23 = *(*(a1 + 112) + 48);
        v24 = (*(a1 + 36) ? qp_id2str(v2, v23, v22) : qrk_id2str(v2, v23, v22));
        v25 = *v24;
        if (v25 == 42)
        {
          break;
        }

        if (v25 == 117)
        {
          v26 = 1;
LABEL_47:
          *(v13 + v22) = v26;
LABEL_48:
          *(v14 + 4 * v22) = v11;
          v11 = (v11 + v5);
          v27 = *(v13 + v22);
          goto LABEL_49;
        }

        if (v25 == 98)
        {
          *(v13 + v22) = 2;
LABEL_50:
          *(v16 + 4 * v22) = v11;
          v11 = (v11 + v5 * v5);
          goto LABEL_51;
        }

        v27 = *(v13 + v22);
        if (v27)
        {
          goto LABEL_48;
        }

LABEL_49:
        if ((v27 & 2) != 0)
        {
          goto LABEL_50;
        }

LABEL_51:
        ++v22;
        if (!--v21)
        {
          goto LABEL_55;
        }
      }

      v26 = 3;
      goto LABEL_47;
    }

LABEL_55:
    *(a1 + 52) = v11;
    v28 = sparray_init(v2, v11);
    v29 = v28;
    if (v34)
    {
      if (v28)
      {
        for (i = 0; i != v34; ++i)
        {
          v31 = sparray_get(*(a1 + 88), i);
          sparray_set(v29, i, v31);
        }

        sparray_free(v2, *(a1 + 88));
        *(a1 + 88) = v29;
        goto LABEL_61;
      }
    }

    else
    {
      *(a1 + 88) = v28;
      if (v28)
      {
LABEL_61:
        v32 = *(*(a1 + 112) + 40);
        if (*(a1 + 36))
        {
          qp_lock(v32, 1);
          qp_lock(*(*(a1 + 112) + 48), 1);
        }

        else
        {
          qrk_lock(v32, 1);
          qrk_lock(*(*(a1 + 112) + 48), 1);
        }

        return 0;
      }
    }

LABEL_63:
    heap_Free(*(v2 + 8), v13);
    *(a1 + 56) = 0;
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v13)
  {
    goto LABEL_63;
  }

  if (v14)
  {
LABEL_31:
    heap_Free(*(v2 + 8), v14);
    *(a1 + 64) = 0;
  }

LABEL_32:
  if (v16)
  {
    heap_Free(*(v2 + 8), v16);
    *(a1 + 72) = 0;
  }

  v19 = 2585796618;
  v20 = *(a1 + 88);
  if (v20)
  {
    sparray_free(v2, v20);
    *(a1 + 88) = 0;
  }

  return v19;
}

uint64_t pat_comp(uint64_t a1, _BYTE *a2, void *a3)
{
  v6 = 0;
  for (i = 0; a2[i] == 37; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (a2[i])
  {
    goto LABEL_6;
  }

  v8 = 2585796618;
  v9 = heap_Calloc(*(a1 + 8), 1, 32 * ((2 * v6) | 1u) + 48);
  if (!v9)
  {
    goto LABEL_54;
  }

  v37 = v9;
  v38 = a3;
  *v9 = a2;
  v10 = v9 + 2;
  if (!*a2)
  {
    v12 = 0;
    v11 = 0;
LABEL_52:
    v8 = 0;
    v9 = v37;
    a3 = v38;
    *(v37 + 2) = v12;
    *(v37 + 3) = v11;
    goto LABEL_54;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2;
  while (2)
  {
    v15 = &v10[4 * v11];
    v15[1] = 0;
    v16 = *v14;
    if (v16 != 37)
    {
      v25 = 1;
      v26 = v13;
      if (v16)
      {
        do
        {
          if (v16 == 37)
          {
            break;
          }

          v26 = (v26 + 1);
          v16 = a2[v26];
          ++v25;
        }

        while (a2[v26]);
      }

      *v15 = 115;
      *(v15 + 1) = 0;
      v27 = heap_Alloc(*(a1 + 8), v25);
      v15[1] = v27;
      if (!v27)
      {
        goto LABEL_53;
      }

      v28 = v25 - 1;
      cstdlib_memcpy(v27, &a2[v13], v28);
      *(v15[1] + v28) = 0;
LABEL_49:
      ++v11;
      v14 = &a2[v26];
      v13 = v26;
      if (!*v14)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  v39 = v12;
  v17 = v10;
  v40 = 0;
  v41 = 0;
  v18 = cstdlib_tolower(a2[(v13 + 1)]);
  v19 = v18;
  v20 = v18 << 24;
  v21 = v18;
  if (v18 << 24 != 1828716544 && v20 != 1946157056 && v20 != 2013265920)
  {
    wapiti_fatal(*(a1 + 32), "unknown command type: '%c'");
  }

  *v15 = v19;
  *(v15 + 1) = v21 != a2[(v13 + 1)];
  v24 = (v13 + 2);
  *(v15 + 4) = 0;
  if (wapiti_scanf_pat_len(&a2[v24], "[@", &v41, &v41 + 1, &v40) == 2)
  {
    *(v15 + 4) = 1;
    v10 = v17;
  }

  else
  {
    v10 = v17;
    if (wapiti_scanf_pat_len(&a2[v24], "[", &v41, &v41 + 1, &v40) != 2)
    {
      wapiti_fatal(*(a1 + 32), "invalid pattern: %s");
    }
  }

  *(v15 + 5) = v41;
  v29 = HIDWORD(v41);
  *(v15 + 6) = HIDWORD(v41);
  v12 = v39;
  if (v39 <= v29)
  {
    v12 = v29;
  }

  v30 = v24 + v40;
  if (v20 != 1946157056 && v20 != 1828716544)
  {
LABEL_46:
    if (a2[v30] != 93)
    {
      wapiti_fatal(*(a1 + 32), "missing end of pattern: %s");
    }

    v26 = (v30 + 1);
    goto LABEL_49;
  }

  if (a2[v30] != 44 && a2[v30 + 1] != 34)
  {
    wapiti_fatal(*(a1 + 32), "missing arg in pattern: %s");
  }

  v31 = v30 + 2;
  v32 = v30 + 2;
  while (2)
  {
    v33 = a2[v32];
    if (v33 == 92)
    {
      if (a2[v32 + 1])
      {
        ++v32;
      }

LABEL_42:
      ++v32;
      continue;
    }

    break;
  }

  if (a2[v32])
  {
    if (v33 == 34)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  wapiti_fatal(*(a1 + 32), "unended argument: %s");
LABEL_44:
  v34 = v32 - v31;
  v35 = heap_Alloc(*(a1 + 8), (v34 + 1));
  v15[1] = v35;
  if (v35)
  {
    cstdlib_memcpy(v35, &a2[v31], v34);
    *(v15[1] + v34) = 0;
    v30 = v32 + 1;
    goto LABEL_46;
  }

LABEL_53:
  v9 = v37;
  a3 = v38;
  v8 = 2585796618;
LABEL_54:
  *a3 = v9;
  return v8;
}

uint64_t pat_exec(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v5 = 2585796615;
  if (a5)
  {
    v10 = *a3;
    *a5 = 0;
    v11 = heap_Alloc(*(a1 + 8), 16);
    if (v11)
    {
      v12 = v11;
      LODWORD(v13) = *(a2 + 12);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v34 = a3 + 6;
        v35 = a3;
        LODWORD(v16) = 16;
        do
        {
          v17 = (a2 + 16 + 32 * v14);
          v37 = 0;
          v18 = *v17;
          if (v18 == 115)
          {
            v19 = *(v17 + 1);
            v20 = cstdlib_strlen(v19);
            v37 = v20;
          }

          else
          {
            v21 = *(v17 + 5);
            if (v21 >= 0)
            {
              v22 = -1;
            }

            else
            {
              v22 = v10;
            }

            v23 = a4;
            if (*(v17 + 4))
            {
              v23 = v22;
            }

            v24 = v23 + v21;
            if (v24 < 0)
            {
              if (v24 <= 0xFFFFFFFB)
              {
                v24 = -5;
              }

              v26 = &bval[~v24];
            }

            else if (v24 >= v10)
            {
              if (v24 - v10 >= 4)
              {
                v27 = 4;
              }

              else
              {
                v27 = v24 - v10;
              }

              v26 = &eval[v27];
            }

            else
            {
              v25 = *(v17 + 6);
              if (v25 >= *(*(v35 + 2) + 4 * v24))
              {
                wapiti_fatal(*(a1 + 32), "missing tokens, cannot apply pattern");
                heap_Free(*(a1 + 8), v12);
                return 2585796615;
              }

              v26 = (*&v34[2 * v24] + 8 * v25);
            }

            v19 = *v26;
            switch(v18)
            {
              case 'm':
                v28 = rex_match(a1, *(v17 + 1), *v26, &v37);
                if (v28 == -1)
                {
                  v20 = 0;
                  v37 = 0;
                }

                else
                {
                  v20 = v37;
                }

                v19 += v28;
                goto LABEL_35;
              case 't':
                if (rex_match(a1, *(v17 + 1), *v26, &v37) == -1)
                {
                  v19 = "false";
                }

                else
                {
                  v19 = "true";
                }

LABEL_30:
                v20 = cstdlib_strlen(v19);
                v37 = v20;
                goto LABEL_35;
              case 'x':
                goto LABEL_30;
            }

            v20 = 0;
          }

LABEL_35:
          if (v20 + v15 >= v16 - 1)
          {
            do
            {
              v16 = v16 + (v16 >> 1);
            }

            while (v20 + v15 >= v16 - 1);
            v29 = heap_Realloc(*(a1 + 8), v12, v16);
            if (!v29)
            {
              goto LABEL_47;
            }

            v30 = v29;
            v20 = v37;
            v12 = v30;
          }

          cstdlib_memcpy((v12 + v15), v19, v20);
          LODWORD(v13) = v37 + v15;
          if (*(v17 + 1) && v15 < v13)
          {
            v31 = v15;
            do
            {
              *(v12 + v31) = cstdlib_tolower(*(v12 + v31));
              ++v31;
              v13 = v37 + v15;
            }

            while (v31 < v13);
          }

          ++v14;
          v15 = v13;
        }

        while (v14 < *(a2 + 12));
      }

      *(v12 + v13) = 0;
      v32 = heap_Realloc(*(a1 + 8), v12, (v13 + 1));
      if (v32)
      {
        v5 = 0;
      }

      else
      {
LABEL_47:
        heap_Free(*(a1 + 8), v12);
        v32 = 0;
        v5 = 2585796618;
      }

      *a5 = v32;
    }

    else
    {
      return 2585796618;
    }
  }

  return v5;
}

uint64_t rex_match(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  v5 = a3;
  if (*a2 == 94)
  {
    *a4 = 0;
    if (rex_matchme(a1, a2 + 1, a3, a4))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      *a4 = 0;
      if (rex_matchme(a1, a2, v5, a4))
      {
        break;
      }

      v9 = *v5++;
      v8 = (v8 + 1);
      if (!v9)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v8;
}

void *pat_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 12))
    {
      v4 = 0;
      v5 = (a2 + 24);
      do
      {
        v6 = *v5;
        v5 += 4;
        heap_Free(v3[1], v6);
        ++v4;
      }

      while (v4 < *(a2 + 12));
    }

    heap_Free(v3[1], *a2);
    v7 = v3[1];

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t rex_matchme(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
LABEL_1:
  while (2)
  {
    v8 = a2;
    while (1)
    {
      v9 = *v8;
      if (v9 == 36)
      {
        a2 = v8 + 1;
        v11 = v8[1];
        if (!v8[1])
        {
          return *a3 == 0;
        }
      }

      else
      {
        if (!*v8)
        {
          return 1;
        }

        v10 = v9 == 92 ? 2 : 1;
        if (v9 == 63 || v9 == 42)
        {
          wapiti_fatal(*(a1 + 32), "unescaped * or ? in regexp: %s");
        }

        a2 = &v8[v10];
        v11 = *a2;
      }

      if (v11 != 63)
      {
        break;
      }

      ++a2;
      v12 = rex_matchit(v8, a3);
      v8 = a2;
      if (v12)
      {
        ++*a4;
        if (!rex_matchme(a1, a2, a3 + 1, a4))
        {
          --*a4;
          goto LABEL_1;
        }

        return 1;
      }
    }

    if (v11 == 42)
    {
      while (1)
      {
        v14 = *a4;
        if (rex_matchme(a1, a2 + 1, a3, a4))
        {
          break;
        }

        *a4 = v14 + 1;
        result = rex_matchit(v8, a3++);
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }

    ++*a4;
    result = rex_matchit(v8, a3++);
    if (result)
    {
      continue;
    }

    return result;
  }
}

uint64_t rex_matchit(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (v4 == 46)
    {
      return 1;
    }

    if (v4 != 92)
    {
      return v4 == *a2;
    }

    v5 = a1[1];
    if (v5 <= 96)
    {
      if (v5 <= 79)
      {
        switch(v5)
        {
          case 'A':
            v6 = cstdlib_isalpha(*a2);
            return v6 == 0;
          case 'D':
            v6 = cstdlib_isdigit(*a2);
            return v6 == 0;
          case 'L':
            v6 = cstdlib_islower(*a2);
            return v6 == 0;
        }
      }

      else if (v5 > 84)
      {
        if (v5 == 85)
        {
          v6 = cstdlib_isupper(*a2);
          return v6 == 0;
        }

        if (v5 == 87)
        {
          v6 = cstdlib_isalnum(*a2);
          return v6 == 0;
        }
      }

      else
      {
        if (v5 == 80)
        {
          v6 = cstdlib_ispunct(*a2);
          return v6 == 0;
        }

        if (v5 == 83)
        {
          v6 = cstdlib_isspace(*a2);
          return v6 == 0;
        }
      }

      return v5 == *a2;
    }

    if (v5 <= 111)
    {
      switch(v5)
      {
        case 'a':

          return cstdlib_isalpha(result);
        case 'd':

          return cstdlib_isdigit(result);
        case 'l':

          return cstdlib_islower(result);
        default:
          return v5 == *a2;
      }
    }

    else if (v5 > 116)
    {
      if (v5 == 117)
      {

        return cstdlib_isupper(result);
      }

      else
      {
        if (v5 != 119)
        {
          return v5 == *a2;
        }

        return cstdlib_isalnum(result);
      }
    }

    else if (v5 == 112)
    {

      return cstdlib_ispunct(result);
    }

    else
    {
      if (v5 != 115)
      {
        return v5 == *a2;
      }

      return cstdlib_isspace(result);
    }
  }

  return result;
}

uint64_t wapiti_ns_readline(uint64_t a1, const char *a2, _DWORD *a3)
{
  v7 = 0;
  v6 = 0;
  if (!wapiti_scanf_fmt_prefix_len(a2, ":", &v6, &v7))
  {
    wapiti_fatal(*(a1 + 32), "cannot read from chars");
  }

  result = v7;
  *a3 = v6;
  return result;
}

uint64_t wapiti_scanf_fmt_prefix_len(const char *a1, char *__s, _DWORD *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(a1);
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = v9;
  cstdlib_memset(__b, 0, 0x64uLL);
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = a1[v11];
    if ((v13 - 48) >= 0xA && v13 != 45)
    {
      break;
    }

    __b[v11++] = v13;
    v12 = v11 < v10;
    if (v10 == v11)
    {
      v11 = v10;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    return 0;
  }

LABEL_9:
  v15 = cstdlib_atoi(__b);
  v16 = 0;
  *a3 = v15;
  if (v12 && v8)
  {
    v16 = 0;
    while (a1[v11 + v16] == __s[v16])
    {
      if (++v16 >= v8)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  *a4 = v16 + v11;
  return 1;
}

uint64_t wapiti_isNum(int a1)
{
  if ((a1 - 45) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_26ECDBCC4[(a1 - 45)];
  }
}

uint64_t wapiti_scanf_fmt_1(const char *a1, char *__s, _DWORD *a3)
{
  v4 = __s;
  v18 = *MEMORY[0x277D85DE8];
  v6 = cstdlib_strlen(__s);
  v7 = cstdlib_strlen(a1);
  v8 = v7 - v6;
  if (v7 <= v6)
  {
    return 0;
  }

  if (!v6)
  {
LABEL_6:
    cstdlib_memset(__b, 0, 0x64uLL);
    v14 = 0;
    while (1)
    {
      v15 = a1[v6 + v14];
      if ((v15 - 48) >= 0xA && v15 != 45)
      {
        break;
      }

      __b[v14++] = v15;
      if (v8 == v14)
      {
        if (!v8)
        {
          return 0;
        }

LABEL_12:
        *a3 = cstdlib_atoi(__b);
        return 1;
      }
    }

    if (!v14)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v9 = a1;
  v10 = v6;
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v4++;
    if (v11 != v13)
    {
      return 0;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }
}

uint64_t wapiti_scanf_fmt_2(const char *a1, char *__s, _DWORD *a3, _DWORD *a4)
{
  v6 = __s;
  v24 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(a1);
  v10 = v9 - v8;
  if (v9 <= v8)
  {
    return 0;
  }

  v11 = v9;
  if (v8)
  {
    v12 = a1;
    v13 = v8;
    do
    {
      v15 = *v12++;
      v14 = v15;
      v16 = *v6++;
      if (v14 != v16)
      {
        return 0;
      }
    }

    while (--v13);
  }

  cstdlib_memset(__b, 0, 0x64uLL);
  v17 = 0;
  do
  {
    v18 = a1[v8 + v17];
    if ((v18 - 48) >= 0xA && v18 != 45)
    {
      v19 = v8 + v17 + 1;
      if (!v17)
      {
        return 0;
      }

      goto LABEL_14;
    }

    __b[v17++] = v18;
  }

  while (v10 != v17);
  v19 = v11;
  if (!v10)
  {
    return 0;
  }

LABEL_14:
  *a3 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
  if (v11 <= v19)
  {
    return 1;
  }

  v21 = 0;
  while (1)
  {
    v22 = a1[v19 + v21];
    if ((v22 - 48) >= 0xA && v22 != 45)
    {
      break;
    }

    __b[v21++] = v22;
    if (v11 - v19 == v21)
    {
      v21 = v11 - v19;
      break;
    }
  }

  if (!v21)
  {
    return 1;
  }

  *a4 = cstdlib_atoi(__b);
  return 2;
}

uint64_t wapiti_scanf_fmt_3(const char *a1, char *__s, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v8 = __s;
  v29 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  v11 = cstdlib_strlen(a1);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = v11;
  if (v10)
  {
    v14 = a1;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = *v8++;
      if (v16 != v18)
      {
        return 0;
      }
    }

    while (--v15);
  }

  cstdlib_memset(__b, 0, 0x64uLL);
  v19 = 0;
  do
  {
    v20 = a1[v10 + v19];
    if ((v20 - 48) >= 0xA && v20 != 45)
    {
      v21 = v10 + v19 + 1;
      if (!v19)
      {
        return 0;
      }

      goto LABEL_14;
    }

    __b[v19++] = v20;
  }

  while (v12 != v19);
  v21 = v13;
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  *a3 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
  if (v13 <= v21)
  {
    return 1;
  }

  v23 = 0;
  while (1)
  {
    v24 = a1[v21 + v23];
    if ((v24 - 48) >= 0xA && v24 != 45)
    {
      break;
    }

    __b[v23++] = v24;
    if (v13 - v21 == v23)
    {
      v23 = v13 - v21;
      v25 = v13;
      goto LABEL_21;
    }
  }

  v25 = v21 + v23 + 1;
LABEL_21:
  if (!v23)
  {
    return 1;
  }

  *a4 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
  if (v13 <= v25)
  {
    return 2;
  }

  v26 = 0;
  while (1)
  {
    v27 = a1[v25 + v26];
    if ((v27 - 48) >= 0xA && v27 != 45)
    {
      break;
    }

    __b[v26++] = v27;
    if (v13 - v25 == v26)
    {
      v26 = v13 - v25;
      break;
    }
  }

  if (!v26)
  {
    return 2;
  }

  *a5 = cstdlib_atoi(__b);
  return 3;
}

uint64_t wapiti_scanf_fmt_pair(const char *a1, char *__s, _DWORD *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(a1);
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = v9;
  cstdlib_memset(__b, 0, 0x64uLL);
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = a1[v11];
    if ((v13 - 48) >= 0xA && v13 != 45)
    {
      break;
    }

    __b[v11++] = v13;
    v12 = v11 < v10;
    if (v10 == v11)
    {
      v11 = v10;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    return 0;
  }

LABEL_9:
  v15 = cstdlib_atoi(__b);
  v16 = 0;
  *a3 = v15;
  if (v12 && v8)
  {
    v16 = 0;
    while (a1[v11 + v16] == __s[v16])
    {
      if (++v16 >= v8)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  v17 = v16 + v11;
  cstdlib_memset(__b, 0, 0x64uLL);
  if (v17 >= v10)
  {
    return 1;
  }

  v18 = 0;
  do
  {
    v19 = a1[v17 + v18];
    if ((v19 - 48) >= 0xA && v19 != 45)
    {
      break;
    }

    __b[v18++] = v19;
  }

  while (v17 + v18 < v10);
  if (!v18)
  {
    return 1;
  }

  *a4 = cstdlib_atoi(__b);
  return 2;
}

uint64_t wapiti_scanf_pat_len(const char *a1, char *__s, _DWORD *a3, _DWORD *a4, size_t *a5)
{
  v8 = __s;
  v26 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  v11 = cstdlib_strlen(a1);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = v11;
  if (v10)
  {
    v14 = a1;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = *v8++;
      if (v16 != v18)
      {
        return 0;
      }
    }

    while (--v15);
  }

  cstdlib_memset(__b, 0, 0x64uLL);
  v19 = 0;
  do
  {
    v20 = a1[v10 + v19];
    if ((v20 - 48) >= 0xA && v20 != 45)
    {
      v21 = v10 + v19 + 1;
      if (!v19)
      {
        return 0;
      }

      goto LABEL_14;
    }

    __b[v19++] = v20;
  }

  while (v12 != v19);
  v21 = v13;
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  *a3 = cstdlib_atoi(__b);
  cstdlib_memset(__b, 0, 0x64uLL);
  if (v13 <= v21)
  {
    return 1;
  }

  v23 = 0;
  while (1)
  {
    v24 = a1[v21 + v23];
    if ((v24 - 48) >= 0xA && v24 != 45)
    {
      break;
    }

    __b[v23++] = v24;
    if (v13 - v21 == v23)
    {
      v23 = v13 - v21;
      goto LABEL_21;
    }
  }

  v13 = v21 + v23;
LABEL_21:
  if (!v23)
  {
    return 1;
  }

  *a4 = cstdlib_atoi(__b);
  *a5 = v13;
  return 2;
}

uint64_t tag_label(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 24);
  v195 = 0;
  v196[0] = 0;
  v10 = 2585796618;
  v194 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v186 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = *(a1 + 112);
  if (*(a1 + 36))
  {
    v17 = rdr_readraw_qp(v16, a2, a3, v196);
    if ((v17 & 0x80000000) == 0)
    {
      if (v196[0])
      {
        v18 = rdr_raw2seq_qp(v16, v196[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v195);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_245;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v196);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v196[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v196[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v195);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v172 = v11;
  v173 = *v195;
  v19 = v186;
  v20 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v21 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v22 = heap_Alloc(*(v8 + 8), 4 * v186);
  v23 = v22;
  v185 = v20;
  v179 = v21;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v172;
    LODWORD(v26) = v173;
    goto LABEL_239;
  }

  v175 = v22;
  v164 = a5;
  v192 = v15;
  v193 = v8;
  if (a6 && a7)
  {
    v27 = *(v15 + 44);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v195 + 2) = v28;
    v11 = v172;
    if (!v28)
    {
      LODWORD(v26) = v173;
      v23 = v175;
      goto LABEL_240;
    }

    if (*(v15 + 36))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v194, 0);
              if (v194 != -1)
              {
                *(*(v195 + 2) + 4 * (v194 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v192;
            v19 = v186;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v195 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v194, 0);
            if (v194 != -1)
            {
              *(*(v195 + 2) + 4 * (v194 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v192;
          v19 = v186;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v195 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v195;
  v48 = *v15;
  v49 = *(v15 + 44);
  v50 = *v195;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v174 = v50;
  if (v19 != 1)
  {
    v63 = heap_Alloc(v52, 4 * v186 * v49 * v50);
    v64 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = v65;
    if (v51)
    {
      v67 = v63 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v64 == 0 || v65 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v8 = v193;
      goto LABEL_199;
    }

    v191 = v65;
    v189 = *(v15 + 40);
    v182 = v47;
    if (v189 == 1)
    {
      tag_memmsc(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc(v15, v47, v51);
      v71 = 0;
    }

    v8 = v193;
    v94 = v185;
    if (*(*(v15 + 112) + 56))
    {
      tag_forced(v15, v182, v51, v71);
    }

    v95 = v174;
    if (v49)
    {
      v96 = 0;
      v97 = 0;
      do
      {
        *(v64 + 4 * v97) = v51[v96];
        v98 = v97 + 1;
        if (v19)
        {
          v99 = v97 + v19;
          v100 = v19 - 1;
          do
          {
            *(v64 + 4 * v98++) = 0x80000000;
            --v100;
          }

          while (v100);
          v98 = v99;
        }

        ++v96;
        v97 = v98;
      }

      while (v96 != v49);
    }

    v101 = v179;
    if (v174 >= 2)
    {
      v102 = (v49 * v19);
      v168 = 4 * v102;
      v181 = vdupq_n_s64(v19 - 1);
      v166 = (v19 + 3) & 0x1FFFFFFFCLL;
      v163 = 1;
      v165 = vdupq_n_s64(4uLL);
      v162 = v49 * v19;
      v171 = v48;
      v167 = v102;
      while (1)
      {
        v103 = v64;
        v104 = v191;
        v105 = v102;
        v106 = v102;
        if (v102)
        {
          do
          {
            v107 = *v103++;
            *v104++ = v107;
            --v105;
          }

          while (v105);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v162 += v106;
        v95 = v174;
        ++v163;
        v102 = v106;
        v15 = v192;
        v94 = v185;
        if (v163 == v174)
        {
          goto LABEL_162;
        }
      }

      v188 = 0;
      v169 = v163 * v49;
      v184 = v162;
      while (1)
      {
        v108 = heap_Alloc(*(v48 + 8), v168);
        if (!v108)
        {
          break;
        }

        v109 = v108;
        v110 = 0;
        v111 = 0;
        v112 = v49;
        v113 = (v63 + 8 + 4 * v184);
        do
        {
          v114 = v112;
          while (!v19)
          {
            if (!--v114)
            {
              v123 = 0;
              v124 = v63;
              v8 = v193;
              v101 = v179;
              v106 = v167;
              goto LABEL_149;
            }
          }

          v178 = v113;
          v177 = v111 + v19;
          v115 = v19;
          do
          {
            v116 = v191[v111];
            *(v109 + 4 * v111) = v116;
            v117 = v51[(v188 + (v169 + v110) * v49)];
            if (v189 == 1)
            {
              v118 = fix16_mul(v116, v117);
            }

            else
            {
              v118 = fix16_add(v116, v117);
            }

            *(v109 + 4 * v111++) = v118;
            --v115;
          }

          while (v115);
          ++v110;
          --v112;
          v111 = v177;
          v19 = v186;
          v48 = v171;
          v113 = v178;
        }

        while (v110 != v49);
        v119 = 0;
        v124 = (v63 + 4 * ((v169 + v188) * v186));
        v120 = xmmword_26ECC7980;
        v121 = xmmword_26ECCE810;
        v8 = v193;
        v101 = v179;
        v106 = v167;
        do
        {
          v122 = vmovn_s64(vcgeq_u64(v181, v120));
          if (vuzp1_s16(v122, *v120.i8).u8[0])
          {
            *(v113 - 2) = v119;
          }

          if (vuzp1_s16(v122, *&v120).i8[2])
          {
            *(v113 - 1) = v119 + 1;
          }

          if (vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v181, *&v121))).i32[1])
          {
            *v113 = v119 + 2;
            v113[1] = v119 + 3;
          }

          v119 += 4;
          v121 = vaddq_s64(v121, v165);
          v120 = vaddq_s64(v120, v165);
          v113 += 4;
        }

        while (v166 != v119);
        v123 = v186 * v188;
LABEL_149:
        v125 = v19;
        if (v106 > v19)
        {
          do
          {
            v126 = 0;
            if (v19)
            {
              v127 = 1;
              do
              {
                if (*(v109 + 4 * v124[v127]) < *(v109 + 4 * v124[v126]))
                {
                  v126 = v127;
                }

                ++v127;
              }

              while (v19 != v127);
            }

            if (*(v109 + 4 * v125) > *(v109 + 4 * v124[v126]))
            {
              v124[v126] = v125;
            }

            ++v125;
          }

          while (v125 != v106);
        }

        v128 = v19;
        if (v19)
        {
          do
          {
            v129 = *v124++;
            *(v64 + 4 * v123++) = *(v109 + 4 * v129);
            --v128;
          }

          while (v128);
        }

        heap_Free(*(v48 + 8), v109);
        v184 += v19;
        if (++v188 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v192;
LABEL_198:
      v66 = v191;
LABEL_199:
      v11 = v172;
      if (v66)
      {
        heap_Free(*(v48 + 8), v66);
      }

      if (v64)
      {
        heap_Free(*(v48 + 8), v64);
      }

      if (v63)
      {
        heap_Free(*(v48 + 8), v63);
      }

      if (v51)
      {
        xvm_free(v48, v51);
      }

      v26 = v173;
      v23 = v175;
      if (!v70)
      {
        goto LABEL_239;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v130 = 0;
    v131 = (v49 * v19);
LABEL_164:
    if (v131 < 2)
    {
      v132 = 0;
    }

    else
    {
      v132 = 0;
      for (i = 1; i != v131; ++i)
      {
        if (*(v64 + 4 * i) > *(v64 + 4 * v132))
        {
          v132 = i;
        }
      }
    }

    v175[v130] = *(v64 + 4 * v132);
    *(v64 + 4 * v132) = 0x80000000;
    for (j = v95; ; v132 = *(v63 + 4 * (v132 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v135 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v130 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v135 = *(v63 + 4 * (v132 + --j * v131)) / v19;
      }

      v136 = v130 + j * v19;
      *(v94 + 4 * v136) = v132 / v19;
      *(v101 + 4 * v136) = v51[v132 / v19 + (v135 + j * v49) * v49];
    }
  }

  v53 = heap_Alloc(v52, 4 * v49 * v50);
  v54 = heap_Alloc(*(v48 + 8), 4 * v49);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = v55;
  if (v51)
  {
    v57 = v53 == 0;
  }

  else
  {
    v57 = 1;
  }

  v59 = v57 || v54 == 0 || v55 == 0;
  v60 = v59;
  v10 = 2585796618;
  if (v59)
  {
    goto LABEL_187;
  }

  v61 = *(v192 + 40);
  if (v61 == 1)
  {
    tag_memmsc(v192, v47, v51);
    v62 = 1;
  }

  else
  {
    tag_expsc(v192, v47, v51);
    v62 = 0;
  }

  if (*(*(v192 + 112) + 56))
  {
    tag_forced(v192, v47, v51, v62);
  }

  v176 = v60;
  v170 = v48;
  if (v49)
  {
    v72 = v51;
    v73 = v54;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v174;
  if (v174 >= 2)
  {
    v183 = 1;
    v180 = v49 * v49;
    v187 = v54;
    v190 = v53;
    do
    {
      v77 = v54;
      v78 = v56;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v180;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v56 + 4 * v83);
            v88 = v51[v86];
            if (v61 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v54 = v187;
          *(v190 + 4 * (v183 * v49 + v81)) = v84;
          v53 = v190;
          *(v187 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v180 += v49 * v49;
      v76 = v174;
      ++v183;
    }

    while (v183 != v174);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
    do
    {
      if (*(v54 + 4 * v91) > *(v54 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v175 = *(v54 + 4 * v90);
  while (1)
  {
    v137 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v138 = 0;
    v76 = 0;
    v139 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v93 + 4 * v76) = v51[v90 + (v139 + v138) * v49];
    v90 = v139;
  }

  if (v76)
  {
    v138 = v137 * v49;
    v139 = *(v53 + 4 * (v137 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v56)
  {
    heap_Free(*(v48 + 8), v56);
  }

  v11 = v172;
  v8 = v193;
  if (v54)
  {
    heap_Free(*(v48 + 8), v54);
  }

  v15 = v192;
  if (v53)
  {
    heap_Free(*(v48 + 8), v53);
  }

  if (v51)
  {
    xvm_free(v48, v51);
  }

  v26 = v173;
  v23 = v175;
  if (v60)
  {
    goto LABEL_239;
  }

LABEL_208:
  v140 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v140;
  if (!v140)
  {
LABEL_236:
    v10 = 2585796618;
    goto LABEL_238;
  }

  v141 = v185;
  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v164 = v26;
    goto LABEL_238;
  }

  v142 = 0;
  v143 = (3 * v19 + 1);
  while (2)
  {
    v144 = heap_Alloc(*(v8 + 8), v143);
    if (!v144)
    {
      goto LABEL_236;
    }

    v145 = v144;
    *v144 = 0;
    if (*(v15 + 36))
    {
      if (v19)
      {
        for (k = 0; k != v19; ++k)
        {
          v147 = qp_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + k)));
          v148 = cstdlib_strlen(v145);
          v149 = cstdlib_strlen(v147);
          v150 = 3 * v19 + 1;
          do
          {
            v151 = v150;
            v150 *= 2;
          }

          while (v151 < v148 + v149 + 2);
          if (v151 <= v143)
          {
            v152 = v145;
          }

          else
          {
            v152 = heap_Realloc(*(v193 + 8), v145, v151);
            if (!v152)
            {
              goto LABEL_237;
            }
          }

          cstdlib_strncat(v152, v147, v149);
          cstdlib_strcat(v152, " ");
          v145 = v152;
          v141 = v185;
        }

LABEL_234:
        *(*v11 + 8 * v142++) = v152;
        LODWORD(v26) = v173;
        v15 = v192;
        v8 = v193;
        if (v142 == v173)
        {
          goto LABEL_235;
        }

        continue;
      }

LABEL_233:
      v152 = v144;
      goto LABEL_234;
    }

    break;
  }

  if (!v19)
  {
    goto LABEL_233;
  }

  v153 = 0;
  while (2)
  {
    v154 = qrk_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + v153)));
    v155 = cstdlib_strlen(v145);
    v156 = cstdlib_strlen(v154);
    v157 = 3 * v19 + 1;
    do
    {
      v158 = v157;
      v157 *= 2;
    }

    while (v158 < v155 + v156 + 2);
    if (v158 <= v143)
    {
      v152 = v145;
LABEL_231:
      cstdlib_strncat(v152, v154, v156);
      cstdlib_strcat(v152, " ");
      ++v153;
      v145 = v152;
      v141 = v185;
      if (v153 == v19)
      {
        goto LABEL_234;
      }

      continue;
    }

    break;
  }

  v152 = heap_Realloc(*(v193 + 8), v145, v158);
  if (v152)
  {
    goto LABEL_231;
  }

LABEL_237:
  v8 = v193;
  heap_Free(*(v193 + 8), v145);
  v10 = 2585796618;
  LODWORD(v26) = v173;
LABEL_238:
  v23 = v175;
LABEL_239:
  if (v23)
  {
LABEL_240:
    heap_Free(*(v8 + 8), v23);
  }

  if (v179)
  {
    heap_Free(*(v8 + 8), v179);
  }

  if (v185)
  {
    heap_Free(*(v8 + 8), v185);
  }

LABEL_245:
  if (v195)
  {
    rdr_freeseq(v8, v195);
  }

  if (v196[0])
  {
    rdr_freeraw(v8, v196[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v159 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v160 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v160));
        v160 += 8;
      }

      while (8 * v26 != v160);
      v159 = *v11;
    }

    heap_Free(*(v8 + 8), v159);
    *v11 = 0;
  }

  return v10;
}

uint64_t tag_label_sparse(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 24);
  v195 = 0;
  v196[0] = 0;
  v10 = 2585796618;
  v194 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v186 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = *(a1 + 112);
  if (*(a1 + 36))
  {
    v17 = rdr_readraw_qp(v16, a2, a3, v196);
    if ((v17 & 0x80000000) == 0)
    {
      if (v196[0])
      {
        v18 = rdr_raw2seq_qp(v16, v196[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v195);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_245;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v196);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v196[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v196[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v195);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v172 = v11;
  v173 = *v195;
  v19 = v186;
  v20 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v21 = heap_Alloc(*(v8 + 8), 4 * v186 * v173);
  v22 = heap_Alloc(*(v8 + 8), 4 * v186);
  v23 = v22;
  v185 = v20;
  v179 = v21;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v172;
    LODWORD(v26) = v173;
    goto LABEL_239;
  }

  v175 = v22;
  v164 = a5;
  v192 = v15;
  v193 = v8;
  if (a6 && a7)
  {
    v27 = *(v15 + 44);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v195 + 2) = v28;
    v11 = v172;
    if (!v28)
    {
      LODWORD(v26) = v173;
      v23 = v175;
      goto LABEL_240;
    }

    if (*(v15 + 36))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v194, 0);
              if (v194 != -1)
              {
                *(*(v195 + 2) + 4 * (v194 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v192;
            v19 = v186;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v195 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v193, *(*(v192 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v194, 0);
            if (v194 != -1)
            {
              *(*(v195 + 2) + 4 * (v194 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v192;
          v19 = v186;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v195 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v195;
  v48 = *v15;
  v49 = *(v15 + 44);
  v50 = *v195;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v174 = v50;
  if (v19 != 1)
  {
    v63 = heap_Alloc(v52, 4 * v186 * v49 * v50);
    v64 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = v65;
    if (v51)
    {
      v67 = v63 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v64 == 0 || v65 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v8 = v193;
      goto LABEL_199;
    }

    v191 = v65;
    v189 = *(v15 + 40);
    v182 = v47;
    if (v189 == 1)
    {
      tag_memmsc_sparse(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc_sparse(v15, v47, v51);
      v71 = 0;
    }

    v8 = v193;
    v94 = v185;
    if (*(*(v15 + 112) + 56))
    {
      tag_forced(v15, v182, v51, v71);
    }

    v95 = v174;
    if (v49)
    {
      v96 = 0;
      v97 = 0;
      do
      {
        *(v64 + 4 * v97) = v51[v96];
        v98 = v97 + 1;
        if (v19)
        {
          v99 = v97 + v19;
          v100 = v19 - 1;
          do
          {
            *(v64 + 4 * v98++) = 0x80000000;
            --v100;
          }

          while (v100);
          v98 = v99;
        }

        ++v96;
        v97 = v98;
      }

      while (v96 != v49);
    }

    v101 = v179;
    if (v174 >= 2)
    {
      v102 = (v49 * v19);
      v168 = 4 * v102;
      v181 = vdupq_n_s64(v19 - 1);
      v166 = (v19 + 3) & 0x1FFFFFFFCLL;
      v163 = 1;
      v165 = vdupq_n_s64(4uLL);
      v162 = v49 * v19;
      v171 = v48;
      v167 = v102;
      while (1)
      {
        v103 = v64;
        v104 = v191;
        v105 = v102;
        v106 = v102;
        if (v102)
        {
          do
          {
            v107 = *v103++;
            *v104++ = v107;
            --v105;
          }

          while (v105);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v162 += v106;
        v95 = v174;
        ++v163;
        v102 = v106;
        v15 = v192;
        v94 = v185;
        if (v163 == v174)
        {
          goto LABEL_162;
        }
      }

      v188 = 0;
      v169 = v163 * v49;
      v184 = v162;
      while (1)
      {
        v108 = heap_Alloc(*(v48 + 8), v168);
        if (!v108)
        {
          break;
        }

        v109 = v108;
        v110 = 0;
        v111 = 0;
        v112 = v49;
        v113 = (v63 + 8 + 4 * v184);
        do
        {
          v114 = v112;
          while (!v19)
          {
            if (!--v114)
            {
              v123 = 0;
              v124 = v63;
              v8 = v193;
              v101 = v179;
              v106 = v167;
              goto LABEL_149;
            }
          }

          v178 = v113;
          v177 = v111 + v19;
          v115 = v19;
          do
          {
            v116 = v191[v111];
            *(v109 + 4 * v111) = v116;
            v117 = v51[(v188 + (v169 + v110) * v49)];
            if (v189 == 1)
            {
              v118 = fix16_mul(v116, v117);
            }

            else
            {
              v118 = fix16_add(v116, v117);
            }

            *(v109 + 4 * v111++) = v118;
            --v115;
          }

          while (v115);
          ++v110;
          --v112;
          v111 = v177;
          v19 = v186;
          v48 = v171;
          v113 = v178;
        }

        while (v110 != v49);
        v119 = 0;
        v124 = (v63 + 4 * ((v169 + v188) * v186));
        v120 = xmmword_26ECC7980;
        v121 = xmmword_26ECCE810;
        v8 = v193;
        v101 = v179;
        v106 = v167;
        do
        {
          v122 = vmovn_s64(vcgeq_u64(v181, v120));
          if (vuzp1_s16(v122, *v120.i8).u8[0])
          {
            *(v113 - 2) = v119;
          }

          if (vuzp1_s16(v122, *&v120).i8[2])
          {
            *(v113 - 1) = v119 + 1;
          }

          if (vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v181, *&v121))).i32[1])
          {
            *v113 = v119 + 2;
            v113[1] = v119 + 3;
          }

          v119 += 4;
          v121 = vaddq_s64(v121, v165);
          v120 = vaddq_s64(v120, v165);
          v113 += 4;
        }

        while (v166 != v119);
        v123 = v186 * v188;
LABEL_149:
        v125 = v19;
        if (v106 > v19)
        {
          do
          {
            v126 = 0;
            if (v19)
            {
              v127 = 1;
              do
              {
                if (*(v109 + 4 * v124[v127]) < *(v109 + 4 * v124[v126]))
                {
                  v126 = v127;
                }

                ++v127;
              }

              while (v19 != v127);
            }

            if (*(v109 + 4 * v125) > *(v109 + 4 * v124[v126]))
            {
              v124[v126] = v125;
            }

            ++v125;
          }

          while (v125 != v106);
        }

        v128 = v19;
        if (v19)
        {
          do
          {
            v129 = *v124++;
            *(v64 + 4 * v123++) = *(v109 + 4 * v129);
            --v128;
          }

          while (v128);
        }

        heap_Free(*(v48 + 8), v109);
        v184 += v19;
        if (++v188 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v192;
LABEL_198:
      v66 = v191;
LABEL_199:
      v11 = v172;
      if (v66)
      {
        heap_Free(*(v48 + 8), v66);
      }

      if (v64)
      {
        heap_Free(*(v48 + 8), v64);
      }

      if (v63)
      {
        heap_Free(*(v48 + 8), v63);
      }

      if (v51)
      {
        xvm_free(v48, v51);
      }

      v26 = v173;
      v23 = v175;
      if (!v70)
      {
        goto LABEL_239;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v130 = 0;
    v131 = (v49 * v19);
LABEL_164:
    if (v131 < 2)
    {
      v132 = 0;
    }

    else
    {
      v132 = 0;
      for (i = 1; i != v131; ++i)
      {
        if (*(v64 + 4 * i) > *(v64 + 4 * v132))
        {
          v132 = i;
        }
      }
    }

    v175[v130] = *(v64 + 4 * v132);
    *(v64 + 4 * v132) = 0x80000000;
    for (j = v95; ; v132 = *(v63 + 4 * (v132 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v135 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v130 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v135 = *(v63 + 4 * (v132 + --j * v131)) / v19;
      }

      v136 = v130 + j * v19;
      *(v94 + 4 * v136) = v132 / v19;
      *(v101 + 4 * v136) = v51[v132 / v19 + (v135 + j * v49) * v49];
    }
  }

  v53 = heap_Alloc(v52, 4 * v49 * v50);
  v54 = heap_Alloc(*(v48 + 8), 4 * v49);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = v55;
  if (v51)
  {
    v57 = v53 == 0;
  }

  else
  {
    v57 = 1;
  }

  v59 = v57 || v54 == 0 || v55 == 0;
  v60 = v59;
  v10 = 2585796618;
  if (v59)
  {
    goto LABEL_187;
  }

  v61 = *(v192 + 40);
  if (v61 == 1)
  {
    tag_memmsc_sparse(v192, v47, v51);
    v62 = 1;
  }

  else
  {
    tag_expsc_sparse(v192, v47, v51);
    v62 = 0;
  }

  if (*(*(v192 + 112) + 56))
  {
    tag_forced(v192, v47, v51, v62);
  }

  v176 = v60;
  v170 = v48;
  if (v49)
  {
    v72 = v51;
    v73 = v54;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v174;
  if (v174 >= 2)
  {
    v183 = 1;
    v180 = v49 * v49;
    v187 = v54;
    v190 = v53;
    do
    {
      v77 = v54;
      v78 = v56;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v180;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v56 + 4 * v83);
            v88 = v51[v86];
            if (v61 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v54 = v187;
          *(v190 + 4 * (v183 * v49 + v81)) = v84;
          v53 = v190;
          *(v187 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v180 += v49 * v49;
      v76 = v174;
      ++v183;
    }

    while (v183 != v174);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v185;
    v19 = v186;
    v93 = v179;
    v48 = v170;
    v60 = v176;
    do
    {
      if (*(v54 + 4 * v91) > *(v54 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v175 = *(v54 + 4 * v90);
  while (1)
  {
    v137 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v138 = 0;
    v76 = 0;
    v139 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v93 + 4 * v76) = v51[v90 + (v139 + v138) * v49];
    v90 = v139;
  }

  if (v76)
  {
    v138 = v137 * v49;
    v139 = *(v53 + 4 * (v137 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v56)
  {
    heap_Free(*(v48 + 8), v56);
  }

  v11 = v172;
  v8 = v193;
  if (v54)
  {
    heap_Free(*(v48 + 8), v54);
  }

  v15 = v192;
  if (v53)
  {
    heap_Free(*(v48 + 8), v53);
  }

  if (v51)
  {
    xvm_free(v48, v51);
  }

  v26 = v173;
  v23 = v175;
  if (v60)
  {
    goto LABEL_239;
  }

LABEL_208:
  v140 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v140;
  if (!v140)
  {
LABEL_236:
    v10 = 2585796618;
    goto LABEL_238;
  }

  v141 = v185;
  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v164 = v26;
    goto LABEL_238;
  }

  v142 = 0;
  v143 = (3 * v19 + 1);
  while (2)
  {
    v144 = heap_Alloc(*(v8 + 8), v143);
    if (!v144)
    {
      goto LABEL_236;
    }

    v145 = v144;
    *v144 = 0;
    if (*(v15 + 36))
    {
      if (v19)
      {
        for (k = 0; k != v19; ++k)
        {
          v147 = qp_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + k)));
          v148 = cstdlib_strlen(v145);
          v149 = cstdlib_strlen(v147);
          v150 = 3 * v19 + 1;
          do
          {
            v151 = v150;
            v150 *= 2;
          }

          while (v151 < v148 + v149 + 2);
          if (v151 <= v143)
          {
            v152 = v145;
          }

          else
          {
            v152 = heap_Realloc(*(v193 + 8), v145, v151);
            if (!v152)
            {
              goto LABEL_237;
            }
          }

          cstdlib_strncat(v152, v147, v149);
          cstdlib_strcat(v152, " ");
          v145 = v152;
          v141 = v185;
        }

LABEL_234:
        *(*v11 + 8 * v142++) = v152;
        LODWORD(v26) = v173;
        v15 = v192;
        v8 = v193;
        if (v142 == v173)
        {
          goto LABEL_235;
        }

        continue;
      }

LABEL_233:
      v152 = v144;
      goto LABEL_234;
    }

    break;
  }

  if (!v19)
  {
    goto LABEL_233;
  }

  v153 = 0;
  while (2)
  {
    v154 = qrk_id2str(v193, *(*(v192 + 112) + 40), *(v141 + 4 * (v19 * v142 + v153)));
    v155 = cstdlib_strlen(v145);
    v156 = cstdlib_strlen(v154);
    v157 = 3 * v19 + 1;
    do
    {
      v158 = v157;
      v157 *= 2;
    }

    while (v158 < v155 + v156 + 2);
    if (v158 <= v143)
    {
      v152 = v145;
LABEL_231:
      cstdlib_strncat(v152, v154, v156);
      cstdlib_strcat(v152, " ");
      ++v153;
      v145 = v152;
      v141 = v185;
      if (v153 == v19)
      {
        goto LABEL_234;
      }

      continue;
    }

    break;
  }

  v152 = heap_Realloc(*(v193 + 8), v145, v158);
  if (v152)
  {
    goto LABEL_231;
  }

LABEL_237:
  v8 = v193;
  heap_Free(*(v193 + 8), v145);
  v10 = 2585796618;
  LODWORD(v26) = v173;
LABEL_238:
  v23 = v175;
LABEL_239:
  if (v23)
  {
LABEL_240:
    heap_Free(*(v8 + 8), v23);
  }

  if (v179)
  {
    heap_Free(*(v8 + 8), v179);
  }

  if (v185)
  {
    heap_Free(*(v8 + 8), v185);
  }

LABEL_245:
  if (v195)
  {
    rdr_freeseq(v8, v195);
  }

  if (v196[0])
  {
    rdr_freeraw(v8, v196[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v159 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v160 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v160));
        v160 += 8;
      }

      while (8 * v26 != v160);
      v159 = *v11;
    }

    heap_Free(*(v8 + 8), v159);
    *v11 = 0;
  }

  return v10;
}