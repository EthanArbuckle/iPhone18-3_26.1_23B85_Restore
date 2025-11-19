uint64_t matchSTATPOSRULE_TRule(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, int *a5)
{
  v20 = 1;
  if (*(a1 + 8))
  {
    v10 = *a1;
    matched = logSTATPOSRULE_TRule(*(a2 + 100), (a2 + 80), (a2 + 96), *(a2 + 88), a1, a3);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v10 + 32), "FE_POS", 5, 0, "       <%s>", v11, v12, v13, *(a2 + 80));
    cstdlib_strcpy(*(a2 + 80), "");
  }

  else
  {
    matched = 0;
  }

  *a5 = 0;
  if (*a3)
  {
    matched = matchSTATPOSCONTEXT_TRule("LEFT", a1, a2, *a3, a4, &v20, v19, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v15 = v20;
    if (v20 != 1)
    {
      goto LABEL_15;
    }
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    v20 = 0;
    matched = matchSTATPOSCONTEXT_TRule("CUR", a1, a2, v16, a4, &v20, v19, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v15 = v20;
    if (v20 != 1)
    {
LABEL_15:
      *a5 = v15;
      return matched;
    }
  }

  v17 = *(a3 + 16);
  if (!v17)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v20 = 0;
  matched = matchSTATPOSCONTEXT_TRule("RIGHT", a1, a2, v17, a4, &v20, v19, 2);
  if ((matched & 0x80000000) == 0)
  {
    v15 = v20;
    goto LABEL_15;
  }

  return matched;
}

uint64_t getBrokerString_0(uint64_t a1, _BYTE *a2, size_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  __s = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  *__s2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v7 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v8 = v7;
        __s2[v7] = cstdlib_tolower(__s[v7]);
        ++v7;
        v9 = cstdlib_strlen(__s);
      }

      while (v8 <= 1 && v7 < v9);
    }

    __s2[v7] = 0;
    if (cstdlib_strcmp(__s, __s2))
    {
      v10 = __s2;
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __s = __s2;
    }

    else
    {
      v10 = __s;
    }

    cstdlib_strcpy(__dst, v10);
    cstdlib_strcat(__dst, "/");
    cstdlib_strcat(__dst, "statpos");
    return brokeraux_ComposeBrokerString(a1, __dst, 0, 1, __s, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statpos_setParams(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statposdetailtrace", &v4) & 0x80000000) == 0)
  {
    *(a2 + 8) = v4;
  }

  return 0;
}

uint64_t statPOSAddUniqueTagOffset2Word(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, __int16 a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  v10 = *a2;
  v11 = *a2 + 160 * a3;
  v12 = *(v11 + 72);
  if (!*(v11 + 72))
  {
LABEL_6:
    if (*(v11 + 74))
    {
      if (v12 + 2 <= *(v11 + 74))
      {
        goto LABEL_17;
      }

      v17 = heap_Realloc(*(a1 + 8), *(v11 + 64), 24 * *(v11 + 74) + 144);
      if (v17)
      {
        v22 = *a2 + 160 * a3;
        *(v22 + 64) = v17;
        cstdlib_memset((v17 + 24 * *(v22 + 74)), 0, 0x78uLL);
        v10 = *a2;
        v23 = *a2 + 160 * a3;
        v24 = *(v23 + 74) + 5;
LABEL_16:
        *(v23 + 74) = v24;
LABEL_17:
        v28 = v10 + 160 * a3;
        v29 = *(v28 + 72);
        *(*(v28 + 64) + 24 * *(v28 + 72)) = a4;
        v30 = statPOSAddWordRec(a1, a2, a3, v29, a5);
        if ((v30 & 0x80000000) != 0)
        {
          return v30;
        }

        v25 = 0;
        ++*(*a2 + 160 * a3 + 72);
        return v25;
      }
    }

    else
    {
      v27 = heap_Calloc(*(a1 + 8), 1, 241);
      v10 = *a2;
      *(*a2 + 160 * a3 + 64) = v27;
      if (v27)
      {
        v23 = v10 + 160 * a3;
        v24 = 10;
        goto LABEL_16;
      }
    }

    v25 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v31);
    return v25;
  }

  v13 = 0;
  v14 = *(v11 + 64);
  while (1)
  {
    v15 = *v14;
    v14 += 6;
    if (v15 == a4)
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_6;
    }
  }

  return statPOSAddWordRec(a1, a2, a3, v13, a5);
}

uint64_t statPOSAddWordRec(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v8 = a3;
  v9 = *(*a2 + 160 * a3 + 64);
  v10 = a4;
  v11 = v9 + 24 * a4;
  if (!*(v11 + 18))
  {
    v20 = heap_Calloc(*(a1 + 8), 1, 121);
    v9 = *(*a2 + 160 * v8 + 64);
    *(v9 + 24 * v10 + 8) = v20;
    if (v20)
    {
      v18 = v9 + 24 * v10;
      v19 = 5;
      goto LABEL_7;
    }

LABEL_10:
    v25 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v28);
    return v25;
  }

  if (*(v11 + 16) + 2 <= *(v11 + 18))
  {
    goto LABEL_8;
  }

  v12 = heap_Realloc(*(a1 + 8), *(v11 + 8), 24 * *(v11 + 18) + 144);
  if (!v12)
  {
    goto LABEL_10;
  }

  v17 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(v17 + 8) = v12;
  cstdlib_memset((v12 + 24 * *(v17 + 18)), 0, 0x78uLL);
  v9 = *(*a2 + 160 * v8 + 64);
  v18 = v9 + 24 * v10;
  v19 = *(v18 + 18) + 5;
LABEL_7:
  *(v18 + 18) = v19;
LABEL_8:
  *(*(v9 + 24 * v10 + 8) + 24 * *(v9 + 24 * v10 + 16)) = a5;
  v21 = *(a1 + 8);
  v22 = cstdlib_strlen(*(a2 + 56));
  v23 = heap_Calloc(v21, 1, (v22 + 1));
  v24 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(*(v24 + 8) + 24 * *(v24 + 16) + 16) = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

  cstdlib_strcpy(v23, *(a2 + 56));
  v25 = 0;
  v26 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  ++*(v26 + 16);
  return v25;
}

uint64_t statpos_initCache(uint64_t result)
{
  *(result + 72) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t statpos_freeCache(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 64);
    do
    {
      heap_Free(*(a1 + 8), *(v6 + v4));
      v6 = *(a2 + 64);
      *(v6 + v4) = 0;
      ++v5;
      v4 += 16;
    }

    while (v5 < *(a2 + 72));
  }

  heap_Free(*(a1 + 8), *(a2 + 64));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return 0;
}

uint64_t statpos_retagPOS(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  v87 = *MEMORY[0x277D85DE8];
  v84 = 0;
  v9 = *(a2 + 80);
  if (!v9)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing statpos data => must be included in CLC to train a POS model", a6, a7, a8, v77);
    return 2313166848;
  }

  memset(v83, 0, 12);
  v14 = *(v9 + 16);
  if (*(v9 + 16))
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *(*(v9 + 8) + v15);
      WORD2(v83[0]) = a4;
      LODWORD(v83[0]) = 6;
      *(v83 + 6) = 0;
      v18 = *(a2 + 64);
      v85 = 0;
      matched = matchSTATPOSRULE_TRule(a2, a3, v18 + 32 * v17 + 8, v83, &v85);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v14 = v85;
      if (v85 == 1)
      {
        break;
      }

      ++v16;
      v9 = *(a2 + 80);
      v15 += 8;
      if (v16 >= *(v9 + 16))
      {
        goto LABEL_7;
      }
    }

    v61 = 32 * v17;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v20, v21, v22, v17);
    *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v17));
    v62 = a1;
LABEL_68:
    v52 = statpos_doFurtherRetagging(v62, a2, a3, a4, a5, v17, &v84);
    if ((v52 & 0x80000000) == 0 && v84 != 1)
    {
      *a5 = *(*(a2 + 64) + v61);
    }

    return v52;
  }

LABEL_7:
  v79 = a5;
  v80 = a1;
  if (!*(a2 + 88))
  {
LABEL_35:
    v47 = *(a2 + 90);
    WORD2(v83[0]) = a4;
    LODWORD(v83[0]) = 6;
    *(v83 + 6) = 0;
    v48 = *(a2 + 64);
    v85 = 0;
    v52 = matchSTATPOSRULE_TRule(a2, a3, v48 + 32 * v47 + 8, v83, &v85);
    if ((v52 & 0x80000000) != 0)
    {
      return v52;
    }

    if (v85 != 1)
    {
      if (!*(a2 + 104))
      {
        log_OutText(*(v80 + 32), "FE_POS", 5, 0, "ERROR? NO MS1 RETAGGING OF %s", v49, v50, v51, *(a3 + 48));
      }

      return v52;
    }

    v53 = 32 * v47;
    log_OutText(*(v80 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v49, v50, v51, v47);
    *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v47));
    v54 = v80;
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v58 = v79;
    v59 = v79;
    v60 = v47;
LABEL_62:
    v52 = statpos_doFurtherRetagging(v54, v55, v56, v57, v59, v60, &v84);
    if ((v52 & 0x80000000) == 0 && v84 != 1)
    {
      *v58 = *(*(a2 + 64) + v53);
    }

    return v52;
  }

  v23 = 0;
  while (**(a3 + 48) != *(*(a2 + 80) + 24 * v23))
  {
LABEL_34:
    if (++v23 >= *(a2 + 88))
    {
      goto LABEL_35;
    }
  }

  if (v14)
  {
    v24 = 0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    do
    {
      v26 = *(a2 + 80) + 24 * v23;
      if (v24 >= *(v26 + 16))
      {
        break;
      }

      v27 = *(v26 + 8);
      if (*(v27 + v25 + 4))
      {
        break;
      }

      v28 = *(v27 + v25);
      WORD2(v83[0]) = a4;
      LODWORD(v83[0]) = 6;
      *(v83 + 6) = 0;
      v29 = *(a2 + 64);
      v85 = 0;
      matched = matchSTATPOSRULE_TRule(a2, a3, v29 + 32 * v28 + 8, v83, &v85);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      if (v85 == 1)
      {
        v53 = 32 * v28;
        log_OutText(*(v80 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v30, v31, v32, v28);
        *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
        v54 = v80;
        v55 = a2;
        v56 = a3;
        v57 = a4;
        v58 = v79;
        v59 = v79;
        v60 = v28;
        goto LABEL_62;
      }

      ++v24;
      v25 += 8;
    }

    while (!v85);
    v24 = v24;
  }

  v85 = 0;
  if (*(a3 + 72))
  {
    statpos_getBracketlessString(__s1, *(a3 + 48));
    if (*(a3 + 72))
    {
      v33 = 0;
      v34 = 0;
      while (cstdlib_strcmp(__s1, *(*(a3 + 64) + v33)))
      {
        ++v34;
        v33 += 16;
        if (v34 >= *(a3 + 72))
        {
          goto LABEL_24;
        }
      }

      v17 = *(*(a3 + 64) + v33 + 8);
      v61 = 32 * v17;
      log_OutText(*(v80 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE FROM CACHE %d RETAG POS %s to %s on word[%d]=%s", v35, v36, v37, v17);
      v63 = *(*(*(a2 + 80) + 24 * v23 + 8) + 8 * v24 + 4);
      a5 = v79;
      if (v63 != 1 || *a6 > 0xEu)
      {
        goto LABEL_67;
      }

      statpos_getBracketlessString(__s1, *(a3 + 48));
      if (*a6)
      {
        v64 = 0;
        v65 = 0;
        do
        {
          if (!cstdlib_strcmp(__s1, *(a7 + 8 * v64)))
          {
            v65 = 1;
          }

          ++v64;
          v66 = *a6;
        }

        while (v64 < v66);
        if (v65)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v66 = 0;
      }

      cstdlib_strncpy(*(a7 + 8 * v66), __s1, 0x10uLL);
      ++*a6;
LABEL_67:
      *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v17));
      v62 = v80;
      goto LABEL_68;
    }
  }

LABEL_24:
  v38 = -1;
  v39 = 4;
  while (1)
  {
    v40 = *(a2 + 80) + 24 * v23;
    if (++v38 >= *(v40 + 16))
    {
      v14 = 0;
      goto LABEL_34;
    }

    v41 = (*(v40 + 8) + v39);
    if (*v41 == 1)
    {
      break;
    }

    v14 = 0;
LABEL_31:
    v39 += 8;
    if (v14)
    {
      goto LABEL_34;
    }
  }

  v42 = *(v41 - 2);
  WORD2(v83[0]) = a4;
  LODWORD(v83[0]) = 6;
  *(v83 + 6) = 0;
  v43 = *(a2 + 64);
  v85 = 0;
  matched = matchSTATPOSRULE_TRule(a2, a3, v43 + 32 * v42 + 8, v83, &v85);
  if ((matched & 0x80000000) != 0)
  {
    return matched;
  }

  v14 = v85;
  if (v85 != 1)
  {
    goto LABEL_31;
  }

  log_OutText(*(v80 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v44, v45, v46, v42);
  v72 = v79;
  if (*(*(*(a2 + 80) + 24 * v23 + 8) + v39) == 1)
  {
    statpos_addToCache(v80, a3, v42, v67, v68, v69, v70, v71, v78);
    if (*a6 <= 0xEu)
    {
      statpos_getBracketlessString(__s1, *(a3 + 48));
      if (!*a6)
      {
        v75 = 0;
        goto LABEL_73;
      }

      v73 = 0;
      v74 = 0;
      do
      {
        if (!cstdlib_strcmp(__s1, *(a7 + 8 * v73)))
        {
          v74 = 1;
        }

        ++v73;
        v75 = *a6;
      }

      while (v73 < v75);
      v72 = v79;
      if (!v74)
      {
LABEL_73:
        cstdlib_strncpy(*(a7 + 8 * v75), __s1, 0x10uLL);
        ++*a6;
      }
    }
  }

  *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v42));
  v52 = statpos_doFurtherRetagging(v80, a2, a3, a4, v72, v42, &v84);
  if ((v52 & 0x80000000) == 0 && v84 != 1)
  {
    *v72 = *(*(a2 + 64) + 32 * v42);
  }

  return v52;
}

uint64_t statpos_doFurtherRetagging(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5, unsigned int a6, int *a7)
{
  v9 = a4;
  *a7 = 0;
  v13 = *(*a3 + 160 * a4 + 8);
  if (v13)
  {
    if (v13 != 1)
    {
      return 0;
    }

    v14 = *(a2 + 124);
  }

  else
  {
    v14 = *(a2 + 128);
  }

  if (v14 != 1)
  {
    return 0;
  }

  *&v27[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v15 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v26 = v9;
    v25 = 6;
    *v27 = 0;
    v17 = *(a2 + 48);
    *a7 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, v17 + v15 + 8, &v25, a7);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (*a7)
    {
      if (*a7 == 1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "RETAGGING MS1 %s to %s", v18, v19, v20, *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * a6)));
        v23 = *(*(a2 + 48) + v15);
        a3[6] = *(a2 + 296) + *(*(a2 + 304) + 4 * v23);
        *a5 = v23;
      }

      return matched;
    }

    v15 += 32;
  }

  return matched;
}

char *statpos_getBracketlessString(char *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  if (v4 <= 0x10uLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = 16;
  }

  result = cstdlib_strncpy(a1, __s, v5);
  if (v5)
  {
    v7 = 0;
    do
    {
      if (a1[v7] == 40)
      {
        a1[v7] = 0;
        v7 = v5;
      }

      ++v7;
    }

    while (v7 < v5);
  }

  return result;
}

char *statpos_addToCache(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 74);
  if (!*(a2 + 74))
  {
    v13 = heap_Calloc(*(a1 + 8), 1, 801);
    *(a2 + 64) = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    v12 = 50;
    *(a2 + 74) = 50;
  }

  if (*(a2 + 72) + 1 < v12)
  {
    goto LABEL_7;
  }

  v18 = heap_Realloc(*(a1 + 8), *(a2 + 64), 16 * v12 + 320);
  if (v18)
  {
    *(a2 + 64) = v18;
    *(a2 + 74) += 20;
LABEL_7:
    statpos_getBracketlessString(__s, *(a2 + 48));
    v19 = cstdlib_strlen(__s);
    v20 = heap_Calloc(*(a1 + 8), 1, v19 + 1);
    *(*(a2 + 64) + 16 * *(a2 + 72)) = v20;
    if (!v20)
    {
      return log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v21, v22, v23, v24, v28);
    }

    result = cstdlib_strcpy(v20, __s);
    v26 = *(a2 + 72);
    *(*(a2 + 64) + 16 * v26 + 8) = a3;
    *(a2 + 72) = v26 + 1;
    return result;
  }

LABEL_9:
  v27 = *(a1 + 32);

  return log_OutPublic(v27, "FE_POS", 35000, 0, v14, v15, v16, v17, a9);
}

uint64_t statpos_retagREFPOS(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  *&v26[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v8 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v25 = a4;
    v24 = 6;
    *v26 = 0;
    v10 = *(a2 + 48);
    v27 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, v10 + v8 + 8, &v24, &v27);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "REFRETAG : FIRED RETAGGING RULE %d RETAG REF POS %s to %s on word[%d]=%s", v11, v12, v13, i);
        v15 = *(a1 + 8);
        v16 = cstdlib_strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        v17 = heap_Calloc(v15, 1, (v16 + 1));
        *(*a3 + 160 * a4 + 112) = v17;
        if (v17)
        {
          cstdlib_strcpy(v17, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        }

        else
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v23);
          return 2313166858;
        }
      }

      return matched;
    }

    v8 += 32;
  }

  return matched;
}

uint64_t statpos_getPOSOffset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  *a4 = -1;
  if (!*(a2 + 104))
  {
    return 0;
  }

  result = ssftmap_Find(*(a2 + 112), a3, &v11);
  if ((result & 0x1FFF) == 0x14)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "ERROR? NO LISTOFPOS RETAGGING OF %s", v8, v9, v10, a3);
    return 0;
  }

  *a4 = *v11;
  return result;
}

uint64_t statpos_getStrSetting(uint64_t a1, char *__s1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (cstdlib_strcmp(__s1, (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v4)))))
  {
    ++v5;
    v4 += 8;
    if (v5 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return *(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v4 + 4));
}

uint64_t statpos_charCheck(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v7 = 0;
  v8 = (a2 + a3);
  v9 = a4;
  while (1)
  {
    if (!cstdlib_strcmp(a5, (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + 8 * v7)))))
    {
      v10 = (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + 8 * v7 + 4)));
      v11 = cstdlib_strlen(v10);
      v12 = Utf8_LengthInUtf8chars(v10, v11);
      if (v12)
      {
        break;
      }
    }

LABEL_4:
    if (++v7 >= *(a1 + 40))
    {
      return 0;
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = v12;
  while (1)
  {
    v16 = &v10[v13];
    if (utf8_determineUTF8CharLength(*v16) >= a4 && !cstdlib_strncmp(&v10[v13], v8, v9))
    {
      return 1;
    }

    v13 += utf8_determineUTF8CharLength(*v16);
    if (++v14 >= v15)
    {
      goto LABEL_4;
    }
  }
}

uint64_t statpos_splitMSMappingRulesIntoTables(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v4 = a2;
  v6 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a3 + 8)) | 1);
  *(v4 + 80) = v6;
  if (!v6 || (*(v4 + 88) = 655294464, cstdlib_strcpy(v6, "!"), *(*(v4 + 80) + 16) = 0, v11 = heap_Calloc(*(*v4 + 8), 1, (8 * *(a3 + 8)) | 1), v12 = *(v4 + 80), (*(v12 + 8) = v11) == 0))
  {
LABEL_85:
    v72 = 2313166858;
    v73 = *(*v4 + 32);
LABEL_104:
    log_OutPublic(v73, "FE_POS", 35000, 0, v7, v8, v9, v10, v84);
    return v72;
  }

  *(v4 + 88) = 1;
  if (!*(a3 + 8))
  {
    LODWORD(v48) = 1;
    goto LABEL_88;
  }

  v84 = a1;
  v85 = v4;
  v13 = 0;
  do
  {
    v14 = *a3 + 32 * v13;
    v16 = *(v14 + 8);
    v15 = v14 + 8;
    if (!v16)
    {
      v17 = *(v15 + 8);
      if (v17)
      {
        __dst[0] = 0;
        if (*(v17 + 8))
        {
          v18 = 0;
          v87 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v86 = v13;
          do
          {
            v22 = (*v17 + 6 * v18);
            if (*v22 == 3)
            {
              v21 = 1;
            }

            else
            {
              v20 = 1;
            }

            if (v21 == 1 && __dst[0] == 0)
            {
              v24 = (*(v4 + 256) + *(*(v4 + 264) + 4 * v22[1]));
              if (cstdlib_strcmp(v24, "\\S"))
              {
                if (*v24 == 94)
                {
                  v25 = cstdlib_strlen(v24);
                  if (v25 >= 2u)
                  {
                    v26 = 1;
                    cstdlib_strncpy(__dst, v24 + 1, 1uLL);
                    __dst[1] = 0;
                    v27 = v25;
                    do
                    {
                      v29 = *v24++;
                      v28 = v29;
                      if (v26 < v25 && v28 == 40)
                      {
                        v19 = 1;
                      }

                      ++v26;
                      --v27;
                    }

                    while (v27);
                    v4 = v85;
                  }

                  v13 = v86;
                }
              }

              else
              {
                *(v4 + 90) = v13;
                v87 = 1;
              }
            }

            ++v18;
          }

          while (v18 < *(v17 + 8));
          v32 = v20 != 1 && v19 != 1;
          if (v21 == 1 && __dst[0] - 65 <= 0x19)
          {
            v39 = 0;
            v40 = -1;
            while (1)
            {
              ++v40;
              v41 = *(v4 + 80);
              if (v40 >= *(v4 + 88))
              {
                break;
              }

              v42 = cstdlib_strcmp((v41 + v39), __dst);
              v39 += 24;
              if (!v42)
              {
                v43 = *(v4 + 80);
                goto LABEL_51;
              }
            }

            cstdlib_strcpy((v41 + 24 * *(v4 + 88)), __dst);
            *(*(v4 + 80) + 24 * *(v4 + 88) + 16) = 0;
            v44 = heap_Calloc(*(*v4 + 8), 1, (8 * *(a3 + 8)) | 1);
            v43 = *(v4 + 80);
            v40 = *(v4 + 88);
            *(v43 + 24 * v40 + 8) = v44;
            if (!v44)
            {
              goto LABEL_85;
            }

            *(v4 + 88) = v40 + 1;
LABEL_51:
            v45 = v43 + 24 * v40;
            v46 = *(v45 + 16);
            v35 = (v45 + 16);
            v36 = v46;
            v47 = *(v35 - 1) + 8 * v46;
            *v47 = v13;
            *(v47 + 4) = v32;
            goto LABEL_52;
          }

          if (v87)
          {
            goto LABEL_53;
          }
        }

        v34 = *(v4 + 80);
        v37 = *(v34 + 16);
        v35 = (v34 + 16);
        v36 = v37;
        v38 = *(v35 - 1) + 8 * v37;
        *v38 = v13;
        *(v38 + 4) = 0;
LABEL_52:
        *v35 = v36 + 1;
      }
    }

LABEL_53:
    ++v13;
  }

  while (v13 < *(a3 + 8));
  v48 = *(v4 + 88);
  v12 = *(v4 + 80);
  if (v48 < 2)
  {
    a1 = v84;
  }

  else
  {
    v49 = 1;
    a1 = v84;
    do
    {
      v50 = *(v12 + 24 * v49 + 16);
      if (*(v12 + 24 * v49 + 16))
      {
        v51 = 0;
        do
        {
          v52 = 0;
          do
          {
            if (v51 != v52)
            {
              v53 = *(v12 + 24 * v49 + 8);
              v54 = *(*a3 + 32 * *(v53 + 8 * v51) + 16);
              v55 = *(v54 + 8);
              if (*(v54 + 8))
              {
                v56 = 0;
                v57 = *(*a3 + 32 * *(v53 + 8 * v52) + 16);
                v58 = *(v57 + 8);
                v59 = v53 + 8 * v51;
                v60 = v53 + 8 * v52;
                do
                {
                  if (v58)
                  {
                    v61 = (*v54 + 6 * v56);
                    v62 = *v61;
                    v63 = v58;
                    v64 = 2;
                    do
                    {
                      if (v62 == 3 && v61[1] == *(*v57 + v64))
                      {
                        if (*(v59 + 4) == 1)
                        {
                          *(v59 + 4) = 0;
                        }

                        if (*(v60 + 4) == 1)
                        {
                          *(v60 + 4) = 0;
                        }
                      }

                      v64 += 6;
                      --v63;
                    }

                    while (v63);
                  }

                  ++v56;
                }

                while (v56 != v55);
              }
            }

            ++v52;
          }

          while (v52 != v50);
          ++v51;
        }

        while (v51 != v50);
      }

      ++v49;
    }

    while (v49 != v48);
    v65 = 1;
    do
    {
      if (*(v12 + 24 * v65 + 16))
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        do
        {
          if (v66)
          {
            v69 = *(v12 + 24 * v65 + 8);
            if (!*(v69 + v66 + 4))
            {
              v70 = *(v69 + v66);
              cstdlib_memmove((v69 + 8 * v68 + 8), (v69 + 8 * v68), v66 - 8 * v68);
              v12 = *(v4 + 80);
              v71 = *(v12 + 24 * v65 + 8) + 8 * v68;
              *(v71 + 4) = 0;
              *v71 = v70;
              ++v68;
            }
          }

          ++v67;
          v66 += 8;
        }

        while (v67 < *(v12 + 24 * v65 + 16));
        LODWORD(v48) = *(v4 + 88);
      }

      ++v65;
    }

    while (v65 < v48);
  }

LABEL_88:
  v74 = heap_Realloc(*(*v4 + 8), v12, (24 * v48) | 1);
  if (!v74)
  {
LABEL_103:
    v72 = 2313166858;
    v73 = *(a1 + 32);
    goto LABEL_104;
  }

  v75 = v74;
  *(v4 + 80) = v74;
  if (!*(v4 + 88))
  {
    if (*(v4 + 90) == 9999)
    {
      goto LABEL_106;
    }

    return 0;
  }

  v76 = 0;
  v77 = 0;
  do
  {
    v78 = v75 + v76;
    if (*(v75 + v76 + 16))
    {
      v79 = heap_Realloc(*(*v4 + 8), *(v78 + 8), (8 * *(v75 + v76 + 16)) | 1);
      if (!v79)
      {
        goto LABEL_103;
      }
    }

    else
    {
      heap_Free(*(a1 + 8), *(v78 + 8));
      v79 = 0;
    }

    v75 = *(v4 + 80);
    *(v75 + v76 + 8) = v79;
    ++v77;
    v80 = *(v4 + 88);
    v76 += 24;
  }

  while (v77 < v80);
  if (*(v4 + 90) != 9999)
  {
    return 0;
  }

  if (*(v4 + 88))
  {
    v81 = 0;
    v82 = 0;
    do
    {
      if (*(v75 + v81 + 16))
      {
        heap_Free(*(a1 + 8), *(v75 + v81 + 8));
        v75 = *(v4 + 80);
        v80 = v75 + v81;
        *(v80 + 8) = 0;
        *(v80 + 16) = 0;
        LOWORD(v80) = *(v4 + 88);
      }

      ++v82;
      v81 += 24;
    }

    while (v82 < v80);
  }

LABEL_106:
  heap_Free(*(a1 + 8), v75);
  v72 = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  return v72;
}

uint64_t statpos_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8)
{
  v9 = a6;
  v192 = *MEMORY[0x277D85DE8];
  v184 = 0;
  v183 = 0;
  v181 = 0;
  *__s2 = 0;
  v179 = 0;
  __src = 0;
  memset(v191, 0, 128);
  v178 = 0;
  *a7 = a3;
  a7[188] = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading MS StatPOS rules", a6, a7, a8, v170);
  BrokerString_0 = getBrokerString_0(a3, v191, 0x80uLL);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = brk_DataOpenEx(*(a3 + 24), v191, 1, &v179);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = brk_DataClose(*(a3 + 24), v179);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  BrokerString_0 = ssftriff_reader_ObjOpen(a1, a2, 0, v191, "PANP", 1031, &v184);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    return BrokerString_0;
  }

  v173 = a7 + 144;
  v174 = a4;
  while (1)
  {
    LODWORD(info_from_dct) = ssftriff_reader_OpenChunk(v184, __s2, &v181, &__src);
    if ((info_from_dct & 0x80000000) != 0)
    {
LABEL_68:
      if ((info_from_dct & 0x1FFF) == 0xA)
      {
        return 2313166858;
      }

      ssftriff_reader_ObjClose(v184, v16, v17, v18, v19, v20, v21, v22);
      v184 = 0;
      if (a7[52])
      {
        v82 = 0;
        v83 = 0;
        do
        {
          BrokerString_0 = ssftmap_Insert(*(a7 + 14), *(a7 + 37) + *(*(a7 + 38) + 4 * *(*(a7 + 12) + v82)), *(a7 + 12) + v82);
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            return BrokerString_0;
          }

          ++v83;
          v82 += 4;
        }

        while (v83 < a7[52]);
      }

      a7[44] = 0;
      v84 = statpos_splitMSMappingRulesIntoTables(a3, a7, (a7 + 32));
      if ((v84 & 0x1FFF) == 0xA)
      {
        return 2313166858;
      }

      info_from_dct = v84;
      *(a7 + 2) = 0x2000100030000;
      a7[12] = 4;
      StrSetting = statpos_getStrSetting(a7, "POSsep");
      if (StrSetting)
      {
        v90 = *StrSetting;
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : POSsep not defined in data file, using default '/'", v87, v88, v89, v171);
        v90 = 47;
      }

      *(a7 + 120) = v90;
      v91 = statpos_getStrSetting(a7, "HYPHEN_CHAR");
      if (!v91)
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : HYPHEN_CHAR not defined in data file, using default '-'", v92, v93, v94, v171);
        v91 = "-";
      }

      *(a7 + 20) = v91;
      v95 = statpos_getStrSetting(a7, "PUNCT_CHAR");
      if (v95)
      {
        v96 = v95;
      }

      else
      {
        v96 = "";
      }

      *(a7 + 21) = v96;
      v97 = statpos_getStrSetting(a7, "TERMPUNCT_CHAR");
      if (v97)
      {
        v104 = v97;
      }

      else
      {
        v104 = "";
      }

      *(a7 + 22) = v104;
      *(a7 + 31) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToOOV", v98, v99, v100, v101, v102, v103) == 1;
      *(a7 + 32) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToKnownAmbiguous", v105, v106, v107, v108, v109, v110) == 1;
      *(a7 + 38) = statpos_getStrSettingAsNumber(a7, "NOOOVMODEL", v111, v112, v113, v114, v115, v116) == 1;
      *(a7 + 46) = statpos_getStrSettingAsNumber(a7, "DOMSMAPPINGBEFORELISTOFPOS", v117, v118, v119, v120, v121, v122) == 1;
      *(a7 + 47) = statpos_getStrSettingAsNumber(a7, "ReEstimateEachWord", v123, v124, v125, v126, v127, v128) == 1;
      v129 = statpos_getStrSetting(a7, "POITOPOS_ns");
      *(a7 + 42) = v129;
      if (v129)
      {
        v130 = statpos_format_POI_param(a3, v129, a7 + 42);
        if ((v130 & 0x80000000) != 0)
        {
          info_from_dct = v130;
          if ((v130 & 0x1FFF) == 0xA)
          {
            *(a7 + 42) = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v131 = statpos_getStrSetting(a7, "POITOPOS_nt");
      *(a7 + 43) = v131;
      if (v131)
      {
        v132 = statpos_format_POI_param(a3, v131, a7 + 43);
        if ((v132 & 0x80000000) != 0)
        {
          info_from_dct = v132;
          if ((v132 & 0x1FFF) == 0xA)
          {
            *(a7 + 43) = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v133 = statpos_getStrSetting(a7, "POITOPOS_nz");
      *(a7 + 44) = v133;
      if (v133)
      {
        v134 = statpos_format_POI_param(a3, v133, a7 + 44);
        if ((v134 & 0x80000000) != 0)
        {
          info_from_dct = v134;
          if ((v134 & 0x1FFF) == 0xA)
          {
            *(a7 + 44) = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v135 = statpos_getStrSetting(a7, "POITOPOS_nx");
      *(a7 + 45) = v135;
      if (v135)
      {
        v136 = statpos_format_POI_param(a3, v135, a7 + 45);
        if ((v136 & 0x80000000) != 0)
        {
          info_from_dct = v136;
          if ((v136 & 0x1FFF) == 0xA)
          {
            *(a7 + 45) = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      v137 = statpos_getStrSetting(a7, "POITOPOS_nr");
      *(a7 + 46) = v137;
      if (v137)
      {
        v144 = statpos_format_POI_param(a3, v137, a7 + 46);
        if ((v144 & 0x80000000) != 0)
        {
          info_from_dct = v144;
          if ((v144 & 0x1FFF) == 0xA)
          {
            *(a7 + 46) = 0;
          }

          return info_from_dct;
        }

        info_from_dct = 0;
      }

      *(a7 + 34) = statpos_getStrSettingAsNumber(a7, "lexMismatchUseStringMatch", v138, v139, v140, v141, v142, v143) == 1;
      StrSettingAsNumber = statpos_getStrSettingAsNumber(a7, "mapTagsetFromDctMappingFile", v145, v146, v147, v148, v149, v150);
      *(a7 + 33) = StrSettingAsNumber == 1;
      if (StrSettingAsNumber == 1)
      {
        info_from_dct = statpos_get_info_from_dct(a3, a4, a5, v9, "fecfg", "mde_tag_mappings_dic", &v178, 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        if (v178)
        {
          v177 = 0;
          info_from_dct = (*(v9 + 72))(a4, a5, v178, &v177);
          if ((info_from_dct & 0x80000000) != 0)
          {
            goto LABEL_137;
          }

          if (v177)
          {
            *&__c[1] = 0;
            __c[0] = 0;
            v190 = 0;
            v189 = 0u;
            __b = 0u;
            cstdlib_memset(&__b, 0, 0x28uLL);
            *&__b = ssftmap_ElemCopyString;
            *(&v189 + 1) = ssftmap_ElemCopyString;
            *(&__b + 1) = ssftmap_ElemFreeString;
            v190 = ssftmap_ElemFreeString;
            *&v189 = ssftmap_ElemCompareKeysString;
            v161 = *(*a7 + 8);
            __dst = __b;
            v186 = v189;
            v187 = ssftmap_ElemFreeString;
            info_from_dct = ssftmap_ObjOpen(v161, 0, &__dst, a7 + 18);
            if ((info_from_dct & 0x80000000) != 0)
            {
              goto LABEL_137;
            }

            if (a7[52])
            {
              v162 = 0;
              do
              {
                v176 = -1;
                info_from_dct = (*(v9 + 96))(v174, a5, v178, *(a7 + 37) + *(*(a7 + 38) + 4 * *(*(a7 + 12) + 4 * v162)), &__c[1], &v176, __c);
                if ((info_from_dct & 0x80000000) != 0)
                {
                  return info_from_dct;
                }

                if (v176 == 1)
                {
                  v163 = cstdlib_strchr(**&__c[1], __c[0]);
                  if (v163)
                  {
                    *v163 = 0;
                  }

                  info_from_dct = ssftmap_Insert(*(a7 + 18), *(a7 + 37) + *(*(a7 + 38) + 4 * *(*(a7 + 12) + 4 * v162)), **&__c[1]);
                  if ((info_from_dct & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "POS mapping %s->%s", v164, v165, v166, *(a7 + 37) + *(*(a7 + 38) + 4 * *(*(a7 + 12) + 4 * v162)));
                }
              }

              while (++v162 < a7[52]);
            }
          }

          else
          {
            log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary %s does not exist", v158, v159, v160, v178);
          }
        }

        else
        {
          log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary does not exist", v155, v156, v157, 0);
        }
      }

      if (*(a7 + 18))
      {
        v167 = 0;
        while (1)
        {
          v168 = heap_Calloc(*(a3 + 8), 1, 32);
          *&a7[v167 + 192] = v168;
          if (!v168)
          {
            break;
          }

          v167 += 4;
          if (v167 == 128)
          {
            goto LABEL_136;
          }
        }

        log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0, v169, v152, v153, v154, v171);
        return 2313166858;
      }

LABEL_136:
      log_OutText(*(a3 + 32), "FE_POS", 5, 0, "statpos data file : ambigPOSSep=%c ApplyRetaggingToOOV=%d ApplyRetaggingToKnownAmbiguous=%d NOOOVMODEL=%d ReEstimateEachWord=%d, poi_ns=%s,poi_nt=%s,poi_nz=%s,poi_nx=%s,poi_nr=%s", v152, v153, v154, *(a7 + 120));
LABEL_137:
      if (v178)
      {
        heap_Free(*(a3 + 8), v178);
      }

      return info_from_dct;
    }

    if (!cstdlib_strcmp("CFIG", __s2))
    {
      v39 = __src;
      cstdlib_memcpy(a7 + 5, __src, 2uLL);
      cstdlib_memcpy(a7 + 6, v39 + 2, 2uLL);
      cstdlib_memcpy(a7 + 7, v39 + 4, 2uLL);
LABEL_23:
      LODWORD(info_from_dct) = 0;
      goto LABEL_41;
    }

    if (!cstdlib_strcmp("STSE", __s2))
    {
      v40 = __src;
      cstdlib_memcpy(a7 + 20, __src, 2uLL);
      v41 = heap_Calloc(*(*a7 + 8), 1, (8 * a7[20]) | 1);
      *(a7 + 4) = v41;
      if (!v41)
      {
        goto LABEL_77;
      }

      if (a7[20])
      {
        v42 = 0;
        v43 = 4;
        v44 = 2;
        do
        {
          cstdlib_memcpy((*(a7 + 4) + v43 - 4), &v40[v44], 4uLL);
          v45 = v44 + 4;
          cstdlib_memcpy((*(a7 + 4) + v43), &v40[v45], 4uLL);
          v44 = v45 + 4;
          ++v42;
          v43 += 8;
        }

        while (v42 < a7[20]);
LABEL_40:
        LODWORD(info_from_dct) = 0;
        a4 = v174;
        goto LABEL_41;
      }

      goto LABEL_23;
    }

    if (!cstdlib_strcmp("RTAG", __s2))
    {
      break;
    }

    if (!cstdlib_strcmp("MRTG", __s2))
    {
      v51 = __src;
      cstdlib_memcpy(a7 + 36, __src, 2uLL);
      LODWORD(__b) = 2;
      v52 = heap_Calloc(*(*a7 + 8), 1, (32 * a7[36]) | 1);
      *(a7 + 8) = v52;
      if (!v52)
      {
        goto LABEL_77;
      }

      if (a7[36])
      {
        v53 = 0;
        v54 = 8;
        while (1)
        {
          v55 = __b;
          cstdlib_memcpy((*(a7 + 8) + v54 - 8), &v51[__b], 4uLL);
          LODWORD(__b) = v55 + 4;
          BrokerString_0 = readRULE_0(*a7, v51, &__b, (*(a7 + 8) + v54));
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            return BrokerString_0;
          }

          ++v53;
          v54 += 32;
          if (v53 >= a7[36])
          {
            goto LABEL_40;
          }
        }
      }

      goto LABEL_40;
    }

    if (cstdlib_strcmp("LISP", __s2))
    {
      if (!cstdlib_strcmp("REGX", __s2))
      {
        v24 = v184;
        v66 = __src;
        *&__b = __src;
        LODWORD(__dst) = 0;
        cstdlib_memcpy(a7 + 104, __src, 4uLL);
        v67 = 4;
        if (*(a7 + 52))
        {
          cstdlib_memcpy(&__dst, v66 + 4, 4uLL);
          v68 = (__dst + 8);
          *(a7 + 27) = &v66[v68];
          v67 = (*(a7 + 52) + v68);
        }

        cstdlib_memcpy(a7 + 116, &v66[v67], 2uLL);
        v69 = heap_Calloc(*(*a7 + 8), 1, (4 * a7[116]) | 1);
        *(a7 + 28) = v69;
        if (!v69)
        {
          goto LABEL_77;
        }

        v172 = a5;
        v33 = v9;
        if (a7[116])
        {
          v70 = 0;
          v71 = 0;
          v72 = v67 + 2;
          do
          {
            v73 = v72;
            cstdlib_memcpy((*(a7 + 28) + v70), &v66[v72], 4uLL);
            v72 = v73 + 4;
            ++v71;
            v70 += 4;
          }

          while (v71 < a7[116]);
        }

        v38 = (a7 + 120);
        goto LABEL_66;
      }

      if (!cstdlib_strcmp("STRS", __s2))
      {
        v24 = v184;
        v74 = __src;
        *&__b = __src;
        LODWORD(__dst) = 0;
        cstdlib_memcpy(v173, __src, 4uLL);
        v75 = 4;
        if (*v173)
        {
          cstdlib_memcpy(&__dst, v74 + 4, 4uLL);
          v76 = (__dst + 8);
          *(a7 + 37) = &v74[v76];
          v75 = (*(a7 + 72) + v76);
        }

        cstdlib_memcpy(a7 + 156, &v74[v75], 2uLL);
        v77 = heap_Calloc(*(*a7 + 8), 1, (4 * a7[156]) | 1);
        *(a7 + 38) = v77;
        if (!v77)
        {
          goto LABEL_77;
        }

        v172 = a5;
        v33 = v9;
        if (a7[156])
        {
          v78 = 0;
          v79 = 0;
          v80 = v75 + 2;
          do
          {
            v81 = v80;
            cstdlib_memcpy((*(a7 + 38) + v78), &v74[v80], 4uLL);
            v80 = v81 + 4;
            ++v79;
            v78 += 4;
          }

          while (v79 < a7[156]);
        }

        v38 = (a7 + 164);
        goto LABEL_66;
      }

      if (!cstdlib_strcmp("REST", __s2))
      {
        v24 = v184;
        v25 = __src;
        *&__b = __src;
        LODWORD(__dst) = 0;
        cstdlib_memcpy(a7 + 124, __src, 4uLL);
        v26 = 4;
        if (*(a7 + 62))
        {
          cstdlib_memcpy(&__dst, v25 + 4, 4uLL);
          v27 = (__dst + 8);
          *(a7 + 32) = &v25[v27];
          v26 = (*(a7 + 62) + v27);
        }

        cstdlib_memcpy(a7 + 136, &v25[v26], 2uLL);
        v28 = heap_Calloc(*(*a7 + 8), 1, (4 * a7[136]) | 1);
        *(a7 + 33) = v28;
        if (!v28)
        {
          goto LABEL_77;
        }

        v172 = a5;
        v33 = v9;
        if (a7[136])
        {
          v34 = 0;
          v35 = 0;
          v36 = v26 + 2;
          do
          {
            v37 = v36;
            cstdlib_memcpy((*(a7 + 33) + v34), &v25[v36], 4uLL);
            v36 = v37 + 4;
            ++v35;
            v34 += 4;
          }

          while (v35 < a7[136]);
        }

        v38 = (a7 + 140);
LABEL_66:
        info_from_dct = ssftriff_reader_DetachChunkData(v24, v38, &__b);
        v9 = v33;
        a5 = v172;
        a4 = v174;
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }
      }
    }

    else
    {
      v57 = __src;
      cstdlib_memcpy(a7 + 52, __src, 2uLL);
      if (!a7[52])
      {
        goto LABEL_23;
      }

      v190 = 0;
      v189 = 0u;
      __b = 0u;
      cstdlib_memset(&__b, 0, 0x28uLL);
      *&__b = ssftmap_ElemCopyString;
      *(&__b + 1) = ssftmap_ElemFreeString;
      *(&v189 + 1) = loc_CopyValue;
      v190 = loc_FreeValue;
      *&v189 = ssftmap_ElemCompareKeysString;
      v58 = *(*a7 + 8);
      __dst = __b;
      v186 = v189;
      v187 = loc_FreeValue;
      info_from_dct = ssftmap_ObjOpen(v58, 0, &__dst, a7 + 14);
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v59 = heap_Calloc(*(*a7 + 8), 1, (4 * a7[52]) | 1);
      *(a7 + 12) = v59;
      if (!v59)
      {
LABEL_77:
        info_from_dct = 2313166858;
        log_OutPublic(*(*a7 + 32), "FE_POS", 35000, 0, v29, v30, v31, v32, v171);
        return info_from_dct;
      }

      if (a7[52])
      {
        v60 = a5;
        v61 = v9;
        v62 = 0;
        v63 = 0;
        v64 = 2;
        do
        {
          v65 = v64;
          cstdlib_memcpy((*(a7 + 12) + v62), &v57[v64], 4uLL);
          v64 = v65 + 4;
          ++v63;
          v62 += 4;
        }

        while (v63 < a7[52]);
        v9 = v61;
        a5 = v60;
        a4 = v174;
      }
    }

LABEL_41:
    v56 = ssftriff_reader_CloseChunk(v184);
    if (v56 < 0)
    {
      LODWORD(info_from_dct) = v56;
    }

    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_68;
    }
  }

  v46 = __src;
  cstdlib_memcpy(a7 + 28, __src, 2uLL);
  LODWORD(__b) = 2;
  v47 = heap_Calloc(*(*a7 + 8), 1, (32 * a7[28]) | 1);
  *(a7 + 6) = v47;
  if (!v47)
  {
    goto LABEL_77;
  }

  if (!a7[28])
  {
    goto LABEL_40;
  }

  v48 = 0;
  v49 = 8;
  while (1)
  {
    v50 = __b;
    cstdlib_memcpy((*(a7 + 6) + v49 - 8), &v46[__b], 4uLL);
    LODWORD(__b) = v50 + 4;
    BrokerString_0 = readRULE_0(*a7, v46, &__b, (*(a7 + 6) + v49));
    if ((BrokerString_0 & 0x80000000) != 0)
    {
      return BrokerString_0;
    }

    ++v48;
    v49 += 32;
    if (v48 >= a7[28])
    {
      goto LABEL_40;
    }
  }
}

uint64_t statpos_getStrSettingAsNumber(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40))
  {
    v10 = 0;
    v11 = 0;
    while (cstdlib_strcmp(__s1, (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v10)))))
    {
      ++v11;
      v10 += 8;
      if (v11 >= *(a1 + 40))
      {
        goto LABEL_5;
      }
    }

    v13 = (*(a1 + 296) + *(*(a1 + 304) + 4 * *(*(a1 + 32) + v10 + 4)));

    return cstdlib_atoi(v13);
  }

  else
  {
LABEL_5:
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "Warning : key=%s not defined, setting to 0", a6, a7, a8, __s1);
    return 0;
  }
}

uint64_t statpos_format_POI_param(uint64_t a1, char *__s, char **a3)
{
  v4 = __s;
  v6 = cstdlib_strlen(__s);
  v7 = *(a1 + 8);
  v8 = cstdlib_strlen(v4);
  v9 = heap_Calloc(v7, 1, v8 + 3);
  if (v9)
  {
    v14 = v9;
    if (v6)
    {
      cstdlib_strcpy(v9, ",");
      v15 = 1;
      v16 = 1;
      while (1)
      {
        if (v16)
        {
          v17 = v16;
          if (v14[v16 - 1] == 44 && *v4 == 44)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v17 = 0;
        }

        v14[v17] = *v4;
        ++v16;
LABEL_10:
        ++v4;
        if (v6 <= v15++)
        {
          v14[v16] = 0;
          cstdlib_strcat(v14, ",");
          goto LABEL_14;
        }
      }
    }

    *v9 = 0;
LABEL_14:
    result = 0;
    *a3 = v14;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v10, v11, v12, v13, v20);
    return 2313166858;
  }

  return result;
}

uint64_t readRULE_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT_1(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT_1(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT_1(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT_1(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, (a2 + *a3), 2uLL);
  *a3 += 2;
  if (!__dst)
  {
    v25 = 0;
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, 17);
  v13 = v8;
  if (!v8)
  {
    v25 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v9, v10, v11, v12, v27);
    goto LABEL_14;
  }

  v14 = __dst;
  *(v8 + 8) = __dst;
  v15 = heap_Calloc(*(a1 + 8), 1, (6 * v14) | 1);
  *v13 = v15;
  if (!v15)
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v16, v17, v18, v19, v27);
    if (*v13)
    {
      heap_Free(*(a1 + 8), *v13);
    }

    v25 = 2313166858;
    heap_Free(*(a1 + 8), v13);
    goto LABEL_13;
  }

  if (*(v13 + 8))
  {
    v20 = 0;
    v21 = 0;
    v22 = *a3;
    do
    {
      cstdlib_memcpy((v15 + v20), (a2 + v22), 2uLL);
      v23 = *a3 + 2;
      *a3 = v23;
      cstdlib_memcpy((*v13 + v20 + 2), (a2 + v23), 2uLL);
      v24 = *a3 + 2;
      *a3 = v24;
      cstdlib_memcpy(&__dst + 2, (a2 + v24), 2uLL);
      v22 = *a3 + 2;
      *a3 = v22;
      v15 = *v13;
      *(*v13 + v20 + 4) = BYTE2(__dst);
      ++v21;
      v20 += 6;
    }

    while (v21 < *(v13 + 8));
  }

  v25 = 0;
LABEL_14:
  *a4 = v13;
  return v25;
}

uint64_t _statpos_char_check(char *a1, const char *a2, unsigned int a3)
{
  v6 = cstdlib_strlen(a1);
  v7 = Utf8_LengthInUtf8chars(a1, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v7;
  while (1)
  {
    v11 = &a1[v8];
    v12 = utf8_determineUTF8CharLength(*v11);
    if (v12 >= a3 && !cstdlib_strncmp(&a1[v8], a2, v12))
    {
      break;
    }

    v8 += utf8_determineUTF8CharLength(*v11);
    if (++v9 >= v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v14 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v7, v8, v9, v10, v16);
    return v14;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v11 = 0;
    do
    {
      v12 = heap_Calloc(*(a1 + 8), 1, 65);
      v13 = *a3;
      *(*a3 + v11) = v12;
      if (!v12)
      {
        goto LABEL_7;
      }

      *(v13 + v11 + 8) = 65;
      cstdlib_strcpy(v12, "=");
      v11 += 16;
    }

    while (16 * a2 != v11);
  }

  v14 = 0;
  *(a3 + 2) = a2;
  return v14;
}

void *statpos_fv_dealloc(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          if (*(v3 + v6))
          {
            heap_Free(v4[1], *(v3 + v6));
            v3 = *a2;
            *(*a2 + v6) = 0;
            v5 = *(a2 + 8);
          }

          v6 += 16;
        }
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t statpos_fv_clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      cstdlib_strcpy(*(*a1 + v2), "=");
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 8));
  }

  return 0;
}

uint64_t statpos_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s, char *a5, uint64_t a6)
{
  if (a6)
  {
    v11 = cstdlib_strlen(a5);
    if (*(a6 + 1336))
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        v14 = v13;
        if (!cstdlib_strncmp(*(*(a6 + 1328) + 16 * v13), *(*(a6 + 1312) + 8 * a3), v12))
        {
          break;
        }

        v13 = v14 + 1;
        if (*(a6 + 1336) <= (v14 + 1))
        {
          goto LABEL_21;
        }
      }

      v15 = cstdlib_strlen(*(*(a6 + 1328) + 16 * v14 + 8));
      v16 = cstdlib_strlen(__s);
      v17 = *(*(a6 + 1328) + 16 * v14 + 8);
      v18 = cstdlib_strstr(v17, __s);
      if (v18)
      {
        v19 = v15;
        v20 = &v17[v15];
        while (v18 != v17 || v19 != v16 && (v19 <= v16 + 1 || v18[v16] != 32))
        {
          if (v18 > v17)
          {
            v21 = &v18[v16];
            if (v20 > (v21 + 1) && *v21 == 32)
            {
              if (*(v18 - 1) == 32)
              {
                break;
              }
            }

            else if (v20 == v21)
            {
              break;
            }
          }

          v18 = cstdlib_strstr(&v18[v16], __s);
          if (!v18)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        cstdlib_strcpy(__s, "=");
      }
    }
  }

LABEL_21:
  v22 = cstdlib_strlen(__s);
  v23 = *a2 + 16 * a3;
  if (*(v23 + 8) > v22)
  {
    v24 = *v23;
LABEL_25:
    cstdlib_strcpy(v24, __s);
    return 0;
  }

  v25 = v22 + 1;
  v24 = heap_Realloc(*(a1 + 8), *v23, v25);
  if (v24)
  {
    v30 = *a2 + 16 * a3;
    *v30 = v24;
    *(v30 + 8) = v25;
    goto LABEL_25;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v26, v27, v28, v29, v32);
  return 2313166858;
}

uint64_t statpos_get_features(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  if (a6)
  {
    v13 = 0;
    v14 = a6;
    while (2)
    {
      v15 = &byte_287EEC3F0;
      v16 = "PREVPOS";
      while (cstdlib_strcmp(*(a5 + 8 * v13), v16))
      {
        v16 = *(v15 + 1);
        v15 += 24;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      result = (*(v15 - 1))(a1, a2, a3, a4, *v15, *(a2 + 128));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statpos_fv_add(a1, a7, v13, *(a2 + 128), *(a5 + 8 * v13), a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v13 != v14)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t statpos_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, unsigned __int16 *a4, char *__s, char *a6, uint64_t a7, void *a8, char *a9, int a10, char *a11, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  v18 = statPOS_add2Str(a1, a3, a4, __s);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, a6);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v19 = 0;
    do
    {
      v18 = statPOS_add2Str(a1, a3, a4, *(*a8 + 16 * v19));
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v18 = statPOS_add2Str(a1, a3, a4, " ");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }
    }

    while (*(a7 + 1296) - 1 > ++v19);
  }

  if (!a11)
  {
    v18 = statPOS_add2Str(a1, a3, a4, "PRED=");
    if ((v18 & 0x80000000) == 0)
    {
      v18 = statPOS_add2Str(a1, a3, a4, a9);
      if ((v18 & 0x80000000) == 0)
      {
        v24 = " ";
LABEL_26:
        v20 = statPOS_add2Str(a1, a3, a4, v24);
        if ((v20 & 0x80000000) != 0)
        {
          return v20;
        }

        goto LABEL_27;
      }
    }

    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, "REF=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, a11);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, "PRED=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statPOS_add2Str(a1, a3, a4, a9);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v20 = statPOS_add2Str(a1, a3, a4, " ");
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (cstdlib_strcmp(a11, a9) && (!__s1 || cstdlib_strcmp(__s1, a9)))
  {
    v24 = "*TAGERROR ";
    goto LABEL_26;
  }

LABEL_27:
  if (a10 || (v20 = statPOS_add2Str(a1, a3, a4, "*BADTAG "), (v20 & 0x80000000) == 0))
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v21, v22, v23, *a3);
    cstdlib_strcpy(*a3, "");
  }

  return v20;
}

uint64_t initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
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

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v7, v8, v9, v10, v12);
  return 2313166858;
}

char *clearFeatureVector(char *result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    do
    {
      v4 = *v2++;
      result = cstdlib_strcpy(v4, "=");
      --v3;
    }

    while (v3);
  }

  return result;
}

void *freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2)
      {
        result = heap_Free(v4[1], *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statpos_get_features_for_igtree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v8 = 16 * v6;
    if (cstdlib_strlen(*(*a3 + v8)) <= 0x40)
    {
      v10 = *(a2 + 8 * v7);
      goto LABEL_7;
    }

    v9 = cstdlib_strlen(*(*a3 + v8));
    v10 = heap_Realloc(*(a1 + 8), *(a2 + 8 * v7), v9 + 1);
    if (!v10)
    {
      break;
    }

    *(a2 + 8 * v7) = v10;
LABEL_7:
    cstdlib_strcpy(v10, *(*a3 + v8));
    v6 = v7 + 1;
    if (*(a3 + 8) <= (v7 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v16);
  return 2313166858;
}

uint64_t statpos_fe_prdctd_pos(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 == -1)
  {
    v7 = "SB";
  }

  else if ((v6 & 0x80000000) != 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else
  {
    v7 = *(*a2 + 160 * v6 + 88);
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_pssbl_tags(int a1, uint64_t a2, uint64_t a3, int a4, int a5, char *__dst)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a5 + a4;
  if (a5 + a4 < 0 || (v9 = *(*a2 + 160 * v7 + 80)) == 0 || v7 >= *(a2 + 8))
  {
    v9 = "=";
    goto LABEL_14;
  }

  if (!*(a3 + 144))
  {
LABEL_14:
    cstdlib_strcpy(__dst, v9);
    return 0;
  }

  v24 = 0;
  v23 = 0;
  v11 = __dsta;
  cstdlib_strcpy(__dsta, v9);
  __s2[0] = *(a3 + 120);
  __s2[1] = 0;
  v12 = cstdlib_strchr(__dsta, 47);
  if (v12)
  {
    v13 = v12;
    v11 = __dsta;
    do
    {
      *v13 = 0;
      if ((ssftmap_Find(*(a3 + 144), v11, &v24) & 0x1FFF) == 0x14)
      {
        v14 = a3 + 384;
        v15 = v11;
      }

      else
      {
        v15 = v24;
        v14 = a3 + 384;
      }

      statpos_getPOSTags(v15, v14, &v23);
      v11 = v13 + 1;
      v13 = cstdlib_strchr(v13 + 1, 47);
    }

    while (v13);
  }

  if ((ssftmap_Find(*(a3 + 144), v11, &v24) & 0x1FFF) == 0x14)
  {
    v16 = a3 + 384;
    v17 = v11;
  }

  else
  {
    v17 = v24;
    v16 = a3 + 384;
  }

  statpos_getPOSTags(v17, v16, &v23);
  v19 = v23;
  ssft_qsort(a3 + 384, v23, 8, string_cmp_0);
  cstdlib_strcpy(__dst, *(a3 + 384));
  if (v19 >= 2)
  {
    v20 = v19 - 1;
    v21 = (a3 + 392);
    do
    {
      cstdlib_strcat(__dst, __s2);
      v22 = *v21++;
      cstdlib_strcat(__dst, v22);
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t statpos_fe_word(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else
  {
    v7 = **(*a2 + 160 * v6 + 48);
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_cword(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v8 = "=";
  }

  else
  {
    v7 = *a2 + 160 * v6;
    v8 = *(v7 + 120);
    if (!v8)
    {
      v8 = **(v7 + 48);
    }
  }

  cstdlib_strcpy(__dst, v8);
  return 0;
}

uint64_t statpos_fe_token(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8) || (v7 = *(*(*a2 + 160 * v6 + 48) + 16)) == 0)
  {
    v7 = "=";
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_ends_in_aposs(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v10 = "=";
  }

  else
  {
    v8 = **(*a2 + 160 * v7 + 48);
    v9 = cstdlib_strlen(v8);
    if (v9 < 3 || cstdlib_strcmp("'s", &v8[v9 - 2]))
    {
      v10 = "0";
    }

    else
    {
      v10 = "1";
    }
  }

  cstdlib_strcpy(a6, v10);
  return 0;
}

uint64_t statpos_fe_wrd_len(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v8 = Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * v7 + 48));
    sprintf(__dst, "%d", v8 - 1);
  }

  return 0;
}

uint64_t statpos_fe_prefix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  if (a5 >= (Utf8_Utf8NbrOfSymbols(v9) - 1))
  {
    cstdlib_strcpy(a6, "=");
  }

  else
  {
    v10 = Utf8_LengthInBytes(v9, a5);
    cstdlib_strncpy(a6, v9, v10);
    a6[v10] = 0;
  }

  return 0;
}

uint64_t statpos_fe_suffix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  v10 = (Utf8_Utf8NbrOfSymbols(v9) - 1);
  if (v10 <= a5)
  {
    v11 = "=";
  }

  else
  {
    v11 = &v9[Utf8_LengthInBytes(v9, v10 - a5)];
  }

  cstdlib_strcpy(a6, v11);
  return 0;
}

uint64_t statpos_fe_fllw_by_punc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v15 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = *(a3 + 168), v13 = &v9[v11], v14 = cstdlib_strlen(v13), _statpos_char_check(v12, v13, v14)))
    {
      v15 = "1";
    }

    else
    {
      v15 = "0";
    }
  }

  cstdlib_strcpy(a6, v15);
  return 0;
}

uint64_t statpos_fe_fllw_by_termpunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v15 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = *(a3 + 176), v13 = &v9[v11], v14 = cstdlib_strlen(v13), _statpos_char_check(v12, v13, v14)))
    {
      v15 = "1";
    }

    else
    {
      v15 = "0";
    }
  }

  cstdlib_strcpy(a6, v15);
  return 0;
}

uint64_t statpos_fe_has_hyphen(int a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *__dst)
{
  cstdlib_strcpy(__dst, "0");
  v11 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v12 = Utf8_Utf8NbrOfSymbols(v11) - 1;
  if (v12 >= 2)
  {
    v13 = 0;
    while (1)
    {
      v14 = utf8_determineUTF8CharLength(v11[v13]);
      if (_statpos_char_check(*(a3 + 160), &v11[v13], v14))
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        return 0;
      }
    }

    cstdlib_strcpy(__dst, "1");
  }

  return 0;
}

uint64_t statpos_fe_allupper(int a1, void *a2, int a3, unsigned int a4, int a5, char *__dst)
{
  cstdlib_strcpy(__dst, "1");
  v10 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 != 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = utf8_determineUTF8CharLength(v10[v13]);
      if (utf8_BelongsToSet(0x12u, v10, v13, v14) != 1 && utf8_BelongsToSet(0x15u, v10, v13, v14) != 1 && utf8_BelongsToSet(0x18u, v10, v13, v14) != 1 && utf8_BelongsToSet(0x1Bu, v10, v13, v14) != 1 && utf8_BelongsToSet(0x1Eu, v10, v13, v14) != 1)
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        return 0;
      }
    }

    cstdlib_strcpy(__dst, "0");
  }

  return 0;
}

uint64_t statpos_fe_leadingcap(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, char *a6)
{
  v8 = *(*a2 + 160 * (a5 + a4) + 48);
  v9 = *v8;
  v10 = utf8_determineUTF8CharLength(**v8);
  if (a4 && ((v11 = v10, utf8_BelongsToSet(0x12u, v9, 0, v10) == 1) || utf8_BelongsToSet(0x15u, v9, 0, v11) == 1 || utf8_BelongsToSet(0x18u, v9, 0, v11) == 1 || utf8_BelongsToSet(0x1Bu, v9, 0, v11) == 1 || utf8_BelongsToSet(0x1Eu, v9, 0, v11) == 1))
  {
    v12 = "1";
  }

  else
  {
    v12 = "0";
  }

  cstdlib_strcpy(a6, v12);
  return 0;
}

uint64_t statpos_fe_single_char(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  if (Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * a4 + 160 * a5 + 48)) == 2)
  {
    v7 = "1";
  }

  else
  {
    v7 = "0";
  }

  cstdlib_strcpy(a6, v7);
  return 0;
}

uint64_t statpos_fe_contains_digit(int a1, void *a2, int a3, unsigned int a4, int a5, char *__dst)
{
  cstdlib_strcpy(__dst, "0");
  v10 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 != 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = utf8_determineUTF8CharLength(v10[v13]);
      if (utf8_BelongsToSet(6u, v10, v13, v14) == 1)
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        return 0;
      }
    }

    cstdlib_strcpy(__dst, "1");
  }

  return 0;
}

uint64_t statpos_fe_hphn_wrd(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v9 = *a2 + 160 * a4;
  v10 = *(v9 + 120);
  if (!v10)
  {
    v10 = **(v9 + 48);
  }

  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_20;
  }

  v26 = a5;
  __dst = a6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v11 - 1;
  do
  {
    v18 = utf8_determineUTF8CharLength(v10[v16]);
    if (v12 != 1)
    {
      v19 = _statpos_char_check(*(a3 + 160), &v10[v16], v18);
      v20 = v15 ? v15 : v16;
      if (v19)
      {
        v15 = v20;
        v14 = v18 + v16;
        v13 = 1;
      }
    }

    v16 += v18;
    --v17;
  }

  while (v17);
  a6 = __dst;
  if (v13 && v15)
  {
    if (v26 == -1)
    {
      v23 = cstdlib_strlen(v10);
      if (v23 - v14 > 0x10)
      {
        v23 = v14 + 16;
      }

      v24 = &v10[v14];
      v25 = v23 - v14;
      cstdlib_strncpy(__dst, v24, v23 - v14);
      __dst[v25] = 0;
    }

    else if (v26 == 1)
    {
      if (v15 >= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = v15;
      }

      cstdlib_strncpy(__dst, v10, v21);
      __dst[v21] = 0;
    }
  }

  else
  {
LABEL_20:
    cstdlib_strcpy(a6, "=");
  }

  return 0;
}

uint64_t statpos_fe_char(int a1, uint64_t a2, int a3, unsigned int a4, int a5, char *__dst)
{
  LOBYTE(v7) = a5;
  if (a5 <= 0)
  {
    v14 = -1;
    if (a5 && a4)
    {
      v15 = ~a4;
      v16 = 160 * (a4 - 1) + 48;
      do
      {
        LOBYTE(v7) = v7 + Utf8_Utf8NbrOfSymbols(**(*a2 + v16)) - 1;
        --v14;
        if ((v7 & 0x80) == 0)
        {
          break;
        }

        v16 -= 160;
      }

      while (v14 > v15);
    }

    v12 = v14 + ((v7 & 0x80) == 0);
  }

  else
  {
    v10 = 160 * a4 + 208;
    v11 = a4 + 1;
    v12 = 1;
    while (v11 < *(a2 + 8))
    {
      v13 = Utf8_Utf8NbrOfSymbols(**(*a2 + v10));
      v7 = (v7 - v13 + 1);
      ++v12;
      v10 += 160;
      ++v11;
      if (v7 <= 0)
      {
        --v12;
        LOBYTE(v7) = v13 + v7 - 2;
        break;
      }
    }
  }

  v17 = v12 + a4;
  if ((v12 + a4) < 0 || v17 >= *(a2 + 8))
  {
    cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v18 = **(*a2 + 160 * v17 + 48);
    v19 = Utf8_LengthInBytes(v18, v7);
    v20 = cstdlib_strlen(v18) - v19;
    if (v20 >= Utf8_LengthInBytes(&v18[v19], 1))
    {
      utf8_getUTF8Char(v18, v19, __dst);
    }
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx1(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    utf8_getUTF8Char(v8, 0, __dst);
  }

  else
  {
    cstdlib_strcpy(__dst, "=");
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx2(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), (Utf8_Utf8NbrOfSymbols(v8) - 1) < 3u))
  {
    cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v9 = Utf8_LengthInBytes(v8, 2);
    cstdlib_strncpy(__dst, v8, v9);
    __dst[v9] = 0;
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx1(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    v9 = cstdlib_strlen(v8);
    utf8_GetUtf8Symbol(v8, v9 - 1, v9, __dst);
  }

  else
  {
    cstdlib_strcpy(__dst, "=");
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), v9 = (Utf8_Utf8NbrOfSymbols(v8) - 1), v9 < 3))
  {
    v10 = "=";
  }

  else
  {
    v10 = &v8[Utf8_LengthInBytes(v8, v9 - 2)];
  }

  cstdlib_strcpy(a6, v10);
  return 0;
}

uint64_t statpos_fe_startofword(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v8 = "=";
  }

  else
  {
    v8 = "1";
    if (v6 && *(*a2 + 160 * v6 - 140) != 1)
    {
      v8 = "0";
    }
  }

  cstdlib_strcpy(__dst, v8);
  return 0;
}

uint64_t statpos_fe_fllw_by_sp(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else if (*(*a2 + 160 * v6 + 20) == 1)
  {
    v7 = "1";
  }

  else
  {
    v7 = "0";
  }

  cstdlib_strcpy(__dst, v7);
  return 0;
}

uint64_t statpos_fe_fllw_by_anypunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v19 = "=";
  }

  else
  {
    v11 = **(*a2 + 160 * v7 + 48);
    v12 = Utf8_Utf8NbrOfSymbols(v11);
    v13 = Utf8_LengthInBytes(v11, v12 - 2);
    if (a4 + 1 == *(a2 + 8) || (v12 - 3) <= 0xFFFFFFFD && ((v14 = *(a3 + 168), v15 = &v11[v13], v16 = cstdlib_strlen(v15), _statpos_char_check(v14, v15, v16)) || (v17 = *(a3 + 176), v18 = cstdlib_strlen(v15), _statpos_char_check(v17, v15, v18))))
    {
      v19 = "1";
    }

    else
    {
      v19 = "0";
    }
  }

  cstdlib_strcpy(a6, v19);
  return 0;
}

uint64_t statpos_fe_cword_ambig(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v8 = "=";
  }

  else
  {
    v7 = *a2 + 160 * v6;
    if (*(v7 + 72) == 1)
    {
      v8 = *(v7 + 80);
    }

    else
    {
      v8 = **(v7 + 48);
    }
  }

  cstdlib_strcpy(__dst, v8);
  return 0;
}

char *statpos_getPOSTags(char *a1, uint64_t a2, _WORD *a3)
{
  v5 = a1;
  result = cstdlib_strchr(a1, 92);
  if (result)
  {
    v7 = result;
    do
    {
      v8 = 0;
      while (1)
      {
        v9 = *a3;
        if (v8 >= v9)
        {
          break;
        }

        if (!cstdlib_strncmp(*(a2 + 8 * v8++), v5, v7 - v5))
        {
          goto LABEL_8;
        }
      }

      cstdlib_strncpy(*(a2 + 8 * v9), v5, v7 - v5);
      *(*(a2 + 8 * (*a3)++) + v7 - v5) = 0;
LABEL_8:
      v5 = v7 + 1;
      v7 = cstdlib_strchr(v7 + 1, 92);
    }

    while (v7);
  }

  else if (!v5)
  {
    return result;
  }

  v11 = 0;
  while (1)
  {
    v12 = *a3;
    if (v11 >= v12)
    {
      break;
    }

    result = cstdlib_strcmp(*(a2 + 8 * v11++), v5);
    if (!result)
    {
      return result;
    }
  }

  result = cstdlib_strcpy(*(a2 + 8 * v12), v5);
  ++*a3;
  return result;
}

uint64_t statpunc_getFeature(char *__s1, uint64_t a2)
{
  v4 = 0;
  while (cstdlib_strcmp(__s1, g_statpunc_FeatureNames[v4]))
  {
    if (++v4 == 9)
    {
      return 0;
    }
  }

  return *(a2 + v4 * 8);
}

uint64_t statpunc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  if (*(a1 + 1296) < 2u)
  {
    return 0;
  }

  v20 = v5;
  v11 = 0;
  while (cstdlib_strcmp(__s1, *(*(a1 + 1312) + 8 * v11)))
  {
    if (*(a1 + 1296) - 1 <= ++v11)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a5, ""))
  {
    v14 = *(a4 + 8 * v11);
    v19 = "_";
LABEL_14:
    cstdlib_strcpy(v14, v19);
    return 0;
  }

  if (cstdlib_strlen(a5) <= 0x40)
  {
    v14 = *(a4 + 8 * v11);
    goto LABEL_13;
  }

  v13 = cstdlib_strlen(a5);
  v14 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v11), v13 + 1);
  if (v14)
  {
    *(a4 + 8 * v11) = v14;
LABEL_13:
    v19 = a5;
    goto LABEL_14;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0, v15, v16, v17, v18, v20);
  return 2311069706;
}

uint64_t statpunc_initFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 8 * a4 - 8;
  while (1)
  {
    if (!*(a3 + v7))
    {
      v9 = heap_Calloc(*(a2 + 8), 1, 65);
      *(a3 + v7) = v9;
      if (!v9)
      {
        break;
      }
    }

    result = statpunc_setFeature(a1, a2, *(*(a1 + 1312) + v7), a3, "_");
    if ((result & 0x80000000) == 0)
    {
      v15 = v8 == v7;
      v7 += 8;
      if (!v15)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0, v10, v11, v12, v13, v16);
  return 2311069706;
}

void *statpunc_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2)
      {
        result = heap_Free(v4[1], *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statpunc_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, uint64_t a3, char *__src)
{
  v14 = *MEMORY[0x277D85DE8];
  cstdlib_strncpy(__dst, __src, 0x100uLL);
  __dst[255] = 0;
  if (*(a1 + 1296) >= 2u)
  {
    v10 = 0;
    do
    {
      v11 = cstdlib_strlen(*(a3 + 8 * v10));
      if (v11 + cstdlib_strlen(__dst) + 2 > 0xFF)
      {
        break;
      }

      cstdlib_strcat(__dst, " ");
      cstdlib_strcat(__dst, *(a3 + 8 * v10++));
    }

    while (*(a1 + 1296) - 1 > v10);
  }

  return log_OutText(*(a2 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", v7, v8, v9, __dst);
}

uint64_t statpunc_getIgtreeBrkStr(uint64_t a1, const char *a2, _BYTE *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "statpunc_");
    cstdlib_strcat(__dst, a2);
    LODWORD(result) = brokeraux_ComposeBrokerString(a1, __dst, 0, 1, v9, 0, 0, a3, a4);
    if (result >= 0)
    {
      return result;
    }

    else
    {
      return result | 0x89C02000;
    }
  }

  return result;
}

uint64_t statpunc_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  *v37 = 0;
  IgtreeBrkStr = statpunc_getIgtreeBrkStr(a3, a4, v38, 0x100uLL);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  IgtreeBrkStr = ssftriff_reader_ObjOpen(a1, a2, 2, v38, "IGTR", 1031, v37);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  v10 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v10;
  if (!v10)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN", 35000, 0, v11, v12, v13, v14, v36);
    return 2311069706;
  }

  IgtreeBrkStr = igtree_Init(a1, a2, *v37, v10);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    return IgtreeBrkStr;
  }

  v22 = ssftriff_reader_ObjClose(*v37, v15, v16, v17, v18, v19, v20, v21);
  if ((v22 & 0x80000000) == 0)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 393219;
    *(a5 + 40) = ":;.!?()[]{}#',-<>";
    v23 = *(a5 + 8);
    if (*(v23 + 1336))
    {
      v24 = 0;
      do
      {
        v25 = v24;
        v26 = 16 * v24;
        v27 = cstdlib_strcmp(*(*(v23 + 1328) + v26), "leftcollocation");
        v28 = *(*(a5 + 8) + 1328);
        if (v27)
        {
          v29 = cstdlib_strcmp(*(v28 + v26), "rightcollocation");
          v30 = *(*(a5 + 8) + 1328);
          if (v29)
          {
            v31 = cstdlib_strcmp(*(v30 + v26), "dist2endmaxshort");
            v32 = *(*(a5 + 8) + 1328);
            if (v31)
            {
              v33 = cstdlib_strcmp(*(v32 + v26), "dist2endminlong");
              v34 = *(*(a5 + 8) + 1328);
              if (v33)
              {
                if (!cstdlib_strcmp(*(v34 + v26), "punctuation"))
                {
                  *(a5 + 40) = *(*(*(a5 + 8) + 1328) + 16 * v25 + 8);
                }
              }

              else
              {
                *(a5 + 34) = cstdlib_atoi(*(v34 + 16 * v25 + 8));
              }
            }

            else
            {
              *(a5 + 32) = cstdlib_atoi(*(v32 + 16 * v25 + 8));
            }
          }

          else
          {
            *(a5 + 24) = *(v30 + 16 * v25 + 8);
          }
        }

        else
        {
          *(a5 + 16) = *(v28 + 16 * v25 + 8);
        }

        v24 = v25 + 1;
        v23 = *(a5 + 8);
      }

      while (*(v23 + 1336) > (v25 + 1));
    }
  }

  return v22;
}

uint64_t statpunc_freeIGTree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = igtree_Deinit(a1, a2);
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return v4;
}

BOOL bstartword(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = *--v3;
    v7 = cstdlib_strchr(__s, v6);
  }

  while (v3 > a2 && v7);
  v8 = *v3;
  return v8 == 32 || v3 == a2 && cstdlib_strchr(__s, v8);
}

BOOL bendword(char *__s, uint64_t a2)
{
  v3 = (a2 + 1);
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    ++v3;
    if (!cstdlib_strchr(__s, v4))
    {
      return (*(v3 - 1) & 0xDF) == 0;
    }
  }

  return 1;
}

BOOL bstartsent(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = *--v3;
    v7 = cstdlib_strchr(__s, v6);
  }

  while (v3 > a2 && v7);
  return v3 == a2 && cstdlib_strchr(__s, *v3);
}

BOOL bendsent(char *__s, uint64_t a2)
{
  LOBYTE(v2) = *(a2 + 1);
  if (!v2)
  {
    return 1;
  }

  v4 = (a2 + 2);
  do
  {
    if (!cstdlib_strchr(__s, v2))
    {
      v2 = *(v4 - 1);
      if (v2 != 32)
      {
        break;
      }
    }

    v5 = *v4++;
    v2 = v5;
  }

  while (v5);
  return v2 == 0;
}

uint64_t countspaces(_BYTE *a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    do
    {
      if (*a1 == 32)
      {
        ++v2;
        do
        {
          v3 = *++a1;
        }

        while (v3 == 32);
      }

      ++a1;
    }

    while (a1 < a2);
  }

  return v2;
}

uint64_t statpunc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 && (v11 = cstdlib_strchr(*(a1 + 16), 124)) != 0)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      *v12 = 0;
      v14 = cstdlib_strstr(a3, v10);
      if (v14 && v14 < a4)
      {
        v13 = statpunc_setFeature(v9, a2, "collocation", a6, "left");
      }

      *v12 = 124;
      v10 = v12 + 1;
      v12 = cstdlib_strchr(v12 + 1, 124);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = cstdlib_strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      do
      {
        *v17 = 0;
        if (cstdlib_strstr(a3, v15) > a4)
        {
          v13 = statpunc_setFeature(v9, a2, "collocation", a6, "right");
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = cstdlib_strchr(v17 + 1, 124);
      }

      while (v17);
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

  if (cstdlib_strchr(*(a1 + 40), *v18))
  {
    v19 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *v18))
    {
      goto LABEL_30;
    }

    v19 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "lwordendchar", a6, v19);
LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

    ;
  }

  do
  {
    v22 = *i++;
    v21 = v22;
  }

  while (v22 == 32);
  if (cstdlib_strchr(*(a1 + 40), v21))
  {
    v23 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *(i - 1)))
    {
      goto LABEL_40;
    }

    v23 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rwordbegchar", a6, v23);
LABEL_40:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (a4 > a3)
  {
    if (cstdlib_strchr(*(a1 + 40), *(a4 - 1)))
    {
      v24 = "punc";
    }

    else
    {
      if (!cstdlib_strchr("0123456789", *(a4 - 1)))
      {
        goto LABEL_47;
      }

      v24 = "digit";
    }

    v13 = statpunc_setFeature(v9, a2, "lchar", a6, v24);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

LABEL_47:
  if (cstdlib_strchr(*(a1 + 40), a4[1]))
  {
    v25 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", a4[1]))
    {
      goto LABEL_52;
    }

    v25 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rchar", a6, v25);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

LABEL_52:
  v26 = bstartsent(*(a1 + 40), a3, a4);
  v27 = bendsent(*(a1 + 40), a4);
  if (v26)
  {
    if (v27)
    {
      v28 = "isolated";
LABEL_55:
      v13 = statpunc_setFeature(v9, a2, "sentpos", a6, v28);
      goto LABEL_61;
    }

    if (!cstdlib_strcmp(a5, a1))
    {
      v13 = statpunc_setFeature(v9, a2, "sentpos", a6, "start");
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  else if (v27 && !cstdlib_strcmp(a5, (a1 + 4)))
  {
    v28 = "end";
    goto LABEL_55;
  }

LABEL_61:
  v29 = bstartword(*(a1 + 40), a3, a4);
  v30 = *(a1 + 40);
  if (v29)
  {
    v31 = a4 + 1;
    do
    {
      v32 = *v31;
      if (!*v31)
      {
        goto LABEL_78;
      }

      ++v31;
    }

    while (cstdlib_strchr(v30, v32));
    if ((*(v31 - 1) & 0xDF) == 0)
    {
LABEL_78:
      v37 = "pos";
      v38 = "isolated";
      goto LABEL_79;
    }

    if (!cstdlib_strcmp(a5, a1))
    {
      v13 = statpunc_setFeature(v9, a2, "pos", a6, "start");
      if ((v13 & 0x80000000) == 0)
      {
        v33 = cstdlib_strstr(a4 + 1, (a1 + 4));
        if (v33)
        {
          v34 = v33;
          if (!bstartword(*(a1 + 40), a3, v33) && bendword(*(a1 + 40), v34))
          {
            if (v34 <= a4)
            {
              v35 = 0;
            }

            else
            {
              v35 = 0;
              do
              {
                if (*a4 == 32)
                {
                  ++v35;
                  do
                  {
                    v36 = *++a4;
                  }

                  while (v36 == 32);
                }

                ++a4;
              }

              while (a4 < v34);
            }

            if (*(a1 + 32) <= v35)
            {
              v37 = "dist2end";
              if (*(a1 + 34) <= v35)
              {
                v38 = "long";
              }

              else
              {
                v38 = "medium";
              }
            }

            else
            {
              v37 = "dist2end";
              v38 = "short";
            }

            goto LABEL_79;
          }
        }
      }
    }

    return v13;
  }

  v40 = a4 + 1;
  while (1)
  {
    v41 = *v40;
    if (!*v40)
    {
      break;
    }

    ++v40;
    if (!cstdlib_strchr(v30, v41))
    {
      if ((*(v40 - 1) & 0xDF) != 0)
      {
        return v13;
      }

      break;
    }
  }

  if (cstdlib_strcmp(a5, (a1 + 4)))
  {
    return v13;
  }

  v37 = "pos";
  v38 = "end";
LABEL_79:

  return statpunc_setFeature(v9, a2, v37, a6, v38);
}

uint64_t statpunc_insertMarker(uint64_t a1, unsigned int a2, const char *a3, uint64_t *a4, _WORD *a5, uint64_t *a6, _WORD *a7, char ***a8)
{
  v15 = a1;
  v16 = *(*a8 + 3);
  v17 = *a5;
  if ((((((-13107 * v17) & 0xFFFCu) >> 1) | (v17 << 15)) >> 1) < 0xCCDu)
  {
    v27 = heap_Realloc(*(a1 + 8), *a4, 8 * *a5 + 80);
    if (!v27 || (*a4 = v27, (v18 = heap_Realloc(*(v15 + 8), *a6, 20 * (*a5 / 0xAu + 1))) == 0))
    {
LABEL_36:
      v45 = 2311069706;
      v55 = *(v15 + 32);
LABEL_37:
      log_OutPublic(v55, "FE_PUNCSPTN", 33000, 0, v28, v29, v30, v31, v57);
      return v45;
    }

    *a6 = v18;
    LOWORD(v17) = *a5;
  }

  else
  {
    v18 = *a6;
  }

  *(v18 + 2 * v17) = a2;
  v19 = *a7;
  v59 = a4;
  v60 = v15;
  if (!*a7)
  {
    v22 = 0;
    goto LABEL_34;
  }

  __s1 = a3;
  v20 = *a8;
  v21 = *(*a8 + 3);
  if (v21 - v16 <= a2)
  {
    v32 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v33 = 0;
    v34 = *a8;
    do
    {
      v35 = *v20;
      if (*v20 == 1)
      {
        v22 = v33;
      }

      if (v35 == 1)
      {
        v24 = v21;
      }

      if (v35 == 51)
      {
        v36 = cstdlib_strstr(v20[3], "PUNC");
        v34 = *a8;
        v26 = !v36 || v36 != v34[v32 + 3] && *(v36 - 1) == 95;
        v25 = HIDWORD(v34[v32 + 1]);
        LOWORD(v19) = *a7;
        v23 = v33;
      }

      else
      {
        v26 = 1;
      }

      if (++v33 >= v19)
      {
        break;
      }

      v20 = &v34[4 * v33];
      v21 = *(v20 + 3);
      v32 += 4;
    }

    while (v21 - v16 <= a2);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

  v19 = v19;
  if (!v23)
  {
    a3 = __s1;
    goto LABEL_34;
  }

  v37 = v24 == v25;
  a3 = __s1;
  if (!v37)
  {
LABEL_34:
    v46 = v22 + 1;
    cstdlib_memmove(&(*a8)[4 * v22 + 8], &(*a8)[4 * v46], 32 * (v19 + ~v22));
    v47 = *a8;
    v48 = &(*a8)[4 * v46];
    *v48 = 51;
    v49 = &v47[4 * v22];
    *(v48 + 4) = *(v49 + 1);
    *(v48 + 12) = v49[3];
    v15 = v60;
    v50 = *(v60 + 8);
    v51 = cstdlib_strlen(a3);
    (*a8)[4 * v46 + 3] = heap_Alloc(v50, (v51 + 1));
    v52 = (*a8)[4 * v46 + 3];
    if (v52)
    {
      v53 = *v59;
      v54 = *a5;
      *a5 = v54 + 1;
      *(v53 + 8 * v54) = v52;
      cstdlib_strcpy((*a8)[4 * v46 + 3], a3);
      v45 = 0;
      ++*a7;
      return v45;
    }

    goto LABEL_36;
  }

  if (!v26 && !cstdlib_strstr(__s1, "S_PUNC") && !cstdlib_strstr(__s1, "E_PUNC"))
  {
    return 0;
  }

  v38 = *(v60 + 8);
  v39 = cstdlib_strlen(__s1);
  v40 = cstdlib_strlen((*a8)[4 * v23 + 3]);
  v41 = heap_Alloc(v38, (v39 + v40 + 2));
  if (!v41)
  {
    v45 = 2311069706;
    v55 = *(v60 + 32);
    goto LABEL_37;
  }

  v42 = v41;
  v43 = *v59;
  v44 = *a5;
  *a5 = v44 + 1;
  *(v43 + 8 * v44) = v41;
  cstdlib_strcpy(v41, (*a8)[4 * v23 + 3]);
  cstdlib_strcat(v42, ";");
  cstdlib_strcat(v42, __s1);
  v45 = 0;
  (*a8)[4 * v23 + 3] = v42;
  return v45;
}

char *statpunc_Strpunc(char *a1, const char *a2, const char *a3, const char **a4)
{
  v8 = cstdlib_strstr(a1, a2);
  result = cstdlib_strstr(a1, a3);
  if (v8)
  {
    if (v8 <= result)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (v8 <= result)
    {
      v11 = v8;
    }

    else
    {
      v11 = result;
    }

    if (result)
    {
      a3 = v10;
    }

    else
    {
      a3 = a2;
    }

    if (result)
    {
      result = v11;
    }

    else
    {
      result = v8;
    }
  }

  else if (!result)
  {
    return result;
  }

  *a4 = a3;
  return result;
}

uint64_t statpunc_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v11 = a2;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  __src = 0;
  v97 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v13 = (*(a2 + 104))(a3, a4, 1, 0, &v101);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v14 = 0;
  if (((*(v11 + 184))(a3, a4, v101, 0, &v101 + 2) & 0x80000000) != 0)
  {
    goto LABEL_62;
  }

  if (HIWORD(v101) != 1)
  {
    goto LABEL_62;
  }

  v13 = (*(v11 + 176))(a3, a4, v101, 0, &v99, &v100 + 2);
  v14 = 0;
  if ((v13 & 0x80000000) != 0 || HIWORD(v100) < 2u)
  {
    goto LABEL_62;
  }

  v13 = (*(v11 + 176))(a3, a4, v101, 1, &__src, &v94 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v88 = *(__src + 3);
  v15 = statpunc_Strpunc(v99, a5, (a5 + 4), &v97);
  if (!v15)
  {
    goto LABEL_61;
  }

  v89 = a3;
  v16 = 0;
  do
  {
    ++v16;
    v15 = statpunc_Strpunc(v15 + 1, a5, (a5 + 4), &v97);
  }

  while (v15);
  if (!v16)
  {
LABEL_61:
    v14 = 0;
    goto LABEL_62;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, 32 * (HIWORD(v94) + v16));
  v95 = v17;
  if (!v17)
  {
LABEL_60:
    v13 = 2311069706;
    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0, v18, v19, v20, v21, v80);
    goto LABEL_61;
  }

  cstdlib_memcpy(v17, __src, 32 * HIWORD(v94));
  v22 = statpunc_Strpunc(v99, a5, (a5 + 4), &v97);
  v85 = a7;
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = v99;
      v103 = 0;
      v104[0] = 0;
      v102 = 0;
      v27 = (*(v11 + 104))(v89, a4, 3, v101, &v103 + 2);
      if ((v27 & 0x80000000) != 0)
      {
        break;
      }

      v31 = HIWORD(v103);
      if (HIWORD(v103))
      {
        v32 = 0;
        v33 = (v23 - v26);
        while (1)
        {
          v27 = (*(v11 + 168))(v89, a4, v31, 0, 1, v104, &v103);
          if ((v27 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v27 = (*(v11 + 168))(v89, a4, HIWORD(v103), 1, 1, &v102 + 2, &v103);
          if ((v27 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v27 = (*(v11 + 168))(v89, a4, HIWORD(v103), 2, 1, &v102, &v103);
          if ((v27 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          if (v102 > v33 && HIWORD(v102) <= v33 && (v104[0] & 0xFFFFFFFD) == 4)
          {
            v32 = 1;
          }

          v36 = (*(v11 + 120))(v89, a4, HIWORD(v103), &v103 + 2);
          v13 = v36;
          if ((v36 & 0x80000000) == 0)
          {
            v31 = HIWORD(v103);
            if (HIWORD(v103))
            {
              continue;
            }
          }

          a7 = v85;
          if ((v36 & 0x80000000) != 0)
          {
            goto LABEL_68;
          }

          if (v32)
          {
            goto LABEL_58;
          }

          break;
        }
      }

      if (!v25)
      {
        log_OutText(*(a1 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", v28, v29, v30, v99);
        v25 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a5 + 8) + 1296) - 8);
        if (!v25)
        {
          goto LABEL_60;
        }
      }

      inited = statpunc_initFeatureVector(*(a5 + 8), a1, v25, (*(*(a5 + 8) + 1296) - 1));
      if ((inited & 0x80000000) != 0 || (inited = statpunc_extractFeatures(a5, a1, v99, v23, v97, v25), (inited & 0x80000000) != 0) || v24 && (inited = statpunc_setFeature(*(a5 + 8), a1, "startpred", v25, v24), (inited & 0x80000000) != 0) || (inited = igtree_Process(*(a5 + 8), v25, &v98), (inited & 0x80000000) != 0))
      {
        v13 = inited;
        v14 = 0;
        goto LABEL_100;
      }

      v38 = 0;
      while (cstdlib_strcmp("pos", g_statpunc_FeatureNames[v38]))
      {
        if (++v38 == 9)
        {
          v39 = 0;
          goto LABEL_45;
        }
      }

      v39 = *(v25 + v38 * 8);
LABEL_45:
      if (!cstdlib_strcmp(v39, "start"))
      {
        v24 = v98;
      }

      statpunc_dumpFeatureVectorAndResult(*(a5 + 8), a1, v25, v98);
      if (!cstdlib_strstr(v98, "IGNORE"))
      {
        v40 = v23 - v99;
        if (!cstdlib_strstr(v98, "S_PUNC") && v40)
        {
          v41 = v40 - 1;
          while (1)
          {
            v42 = v99[v41];
            if (v42 != 32 && !cstdlib_strchr(*(a5 + 40), v42))
            {
              break;
            }

            if (!v41--)
            {
              v40 = 0;
              goto LABEL_56;
            }
          }

          v40 = v41 + 1;
        }

LABEL_56:
        inserted = statpunc_insertMarker(a1, v40, v98, &v93, &v94, &v92, &v94 + 1, &v95);
        if ((inserted & 0x80000000) != 0)
        {
          v13 = inserted;
          v14 = 0;
          goto LABEL_100;
        }
      }

      a7 = v85;
LABEL_58:
      v23 = statpunc_Strpunc(v23 + 1, a5, (a5 + 4), &v97);
      if (!v23)
      {
        goto LABEL_70;
      }
    }

LABEL_67:
    v13 = v27;
LABEL_68:
    v14 = 0;
    goto LABEL_99;
  }

  v25 = 0;
LABEL_70:
  v46 = *(a1 + 8);
  v47 = cstdlib_strlen(v99);
  v48 = heap_Calloc(v46, 1, (v47 + 1));
  v14 = v48;
  if (!v48)
  {
    v13 = 2311069706;
    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0, v49, v50, v51, v52, v80);
    goto LABEL_99;
  }

  cstdlib_strcpy(v48, v99);
  v81 = v25;
  if (v8 && v94)
  {
    v90 = 0;
    v87 = 0;
    v8 = v8;
    v83 = v11;
    v84 = a1;
    v82 = v8;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        v54 = (a7 + (i << 9));
        if (!cstdlib_strcmp(v93[v90], v54))
        {
          v55 = cstdlib_strlen(v54 + 256);
          v56 = *(a1 + 8);
          v57 = cstdlib_strlen(v14);
          v58 = heap_Realloc(v56, v14, v55 + v57 + 1);
          if (!v58)
          {
            v13 = 2311069706;
            log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0, v59, v60, v61, v62, v80);
            goto LABEL_98;
          }

          v63 = v58;
          v64 = v92;
          v65 = *(v92 + 2 * v90) + v87;
          v86 = v65 + v55;
          v66 = &v58[v65];
          v67 = cstdlib_strlen(v58);
          cstdlib_memmove(&v63[v86], v66 + 1, v67 - (*(v64 + 2 * v90) + v87));
          v11 = v83;
          cstdlib_memcpy(&v63[*(v64 + 2 * v90) + v87], v54 + 256, v55);
          v68 = HIWORD(v94);
          a7 = v85;
          if (HIWORD(v94))
          {
            v69 = *(v64 + 2 * v90) + v87;
            v70 = v95 + 3;
            do
            {
              if (v69 < (*v70 - v88))
              {
                *v70 += v55 - 1;
              }

              v70 += 8;
              --v68;
            }

            while (v68);
          }

          v87 = v87 + v55 - 1;
          v14 = v63;
          a1 = v84;
          v8 = v82;
        }
      }

      if (++v90 < v94)
      {
        continue;
      }

      break;
    }
  }

  v71 = (*(v11 + 160))(v89, a4, v101, 1, HIWORD(v94), v95, &v100);
  if ((v71 & 0x80000000) != 0)
  {
    v13 = v71;
    goto LABEL_98;
  }

  v72 = *(v11 + 160);
  v73 = v101;
  v74 = cstdlib_strlen(v14);
  v13 = v72(v89, a4, v73, 0, (v74 + 1), v14, &v100);
  if ((v13 & 0x80000000) != 0)
  {
LABEL_98:
    v25 = v81;
    goto LABEL_99;
  }

  v75 = v94;
  if (v94)
  {
    v76 = v93;
    do
    {
      v77 = *v76++;
      heap_Free(*(a1 + 8), v77);
      --v75;
    }

    while (v75);
  }

  if (v92)
  {
    heap_Free(*(a1 + 8), v92);
  }

  v25 = v81;
  if (v93)
  {
    heap_Free(*(a1 + 8), v93);
  }

LABEL_99:
  if (v25)
  {
LABEL_100:
    if (*(*(a5 + 8) + 1296) != 1)
    {
      v78 = (*(*(a5 + 8) + 1296) - 1);
      v79 = v25;
      do
      {
        if (*v79)
        {
          heap_Free(*(a1 + 8), *v79);
        }

        ++v79;
        --v78;
      }

      while (v78);
    }

    heap_Free(*(a1 + 8), v25);
  }

LABEL_62:
  if (v95)
  {
    heap_Free(*(a1 + 8), v95);
  }

  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  return v13;
}

uint64_t fe_puncsptn_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v5 = 2311069703;
  v22 = 0;
  v23 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v25[6], "LINGDB", &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v25[6], "FE_DEPES", &v23);
  v11 = v25[6];
  if ((Object & 0x80000000) != 0)
  {
LABEL_11:
    objc_ReleaseObject(v11, "LINGDB");
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v22);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(v25[6], "FE_DEPES");
    v11 = v25[6];
    goto LABEL_11;
  }

  v13 = heap_Alloc(v25[1], 168);
  if (v13)
  {
    v18 = v13;
    cstdlib_memset(v13, 0, 0xA8uLL);
    *a5 = v18;
    *(a5 + 8) = 62339;
    *v18 = v25;
    *(v18 + 1) = a3;
    *(v18 + 2) = a4;
    *(v18 + 3) = *(v24 + 8);
    v19 = v22;
    v20 = v23;
    *(v18 + 6) = *(v23 + 8);
    *(v18 + 2) = *(v20 + 16);
    *(v18 + 9) = *(v19 + 8);
    *(v18 + 56) = *(v19 + 16);
    *(v18 + 56) = 0;
    *(v18 + 5) = 0u;
    *(v18 + 6) = 0u;
    v5 = hlp_open(v18);
    if ((v5 & 0x80000000) != 0)
    {
      fe_puncsptn_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    log_OutPublic(v25[4], "FE_PUNCSPTN", 33000, 0, v14, v15, v16, v17, v22);
    objc_ReleaseObject(v25[6], "LINGDB");
    objc_ReleaseObject(v25[6], "FE_DEPES");
    objc_ReleaseObject(v25[6], "FE_DCTLKP");
    return 2311069706;
  }

  return v5;
}

uint64_t hlp_open(void *a1)
{
  v1 = 2311069706;
  v46 = 0;
  v43 = -1;
  v42 = 0;
  if (!a1)
  {
    return 2311069702;
  }

  v44 = 0;
  v45 = 0;
  v3 = (*(a1[9] + 88))(a1[7], a1[8], &v46 + 4, &v46);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v5 = v46 == 1 && HIDWORD(v46) == 1;
  a1[15] = 0;
  *(a1 + 29) = v5;
  if ((paramc_ParamGet(*(*a1 + 40), "fecfg", &v45, 0) & 0x80000000) == 0 && (!LH_stricmp(v45, "mpthree") || !LH_stricmp(v45, "vadvde")))
  {
    *(a1 + 30) = 1;
  }

  v43 = -1;
  v3 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "puncsptneos", &v44, &v43, &v42);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (v43 == 1 && v44 && **v44 == 49)
  {
    *(a1 + 31) = 1;
  }

  LOBYTE(v49) = 0;
  LOWORD(__s1) = -1;
  v6 = a1[16];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  v50 = 0;
  a1[16] = 0;
  v7 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "esctn", &v50, &__s1, &v49);
  IGTree = v7;
  if ((v7 & 0x80000000) != 0 || !__s1)
  {
    if ((v7 & 0x80000000) != 0)
    {
      return IGTree;
    }
  }

  else
  {
    v9 = *(*a1 + 8);
    v10 = cstdlib_strlen(*v50);
    v11 = heap_Calloc(v9, 1, (v10 + 1));
    a1[16] = v11;
    if (!v11)
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0, v12, v13, v14, v15, v41);
      return 2311069706;
    }

    cstdlib_strcpy(v11, *v50);
    v16 = a1[16];
    *(v16 + cstdlib_strlen(*v50) - 1) = 124;
  }

  v49 = 0;
  v50 = 0;
  v48 = 0;
  v17 = a1[17];
  if (*(a1 + 72))
  {
    v18 = 0;
    v19 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v17 + v19));
      v17 = a1[17];
      *(v17 + v19) = 0;
      ++v18;
      v19 += 48;
    }

    while (v18 < *(a1 + 72));
  }

  else if (!v17)
  {
    goto LABEL_33;
  }

  heap_Free(*(*a1 + 8), v17);
LABEL_33:
  a1[17] = 0;
  *(a1 + 72) = 0;
  IGTree = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpunc", &v50, &v49, &v48);
  if ((IGTree & 0x80000000) == 0 && v49)
  {
    __s1 = 0;
    paramc_ParamGetStr(*(*a1 + 40), "fevoice", &__s1);
    v20 = heap_Alloc(*(*a1 + 8), 48 * v49);
    a1[17] = v20;
    if (!v20)
    {
      goto LABEL_61;
    }

    if (v49)
    {
      for (i = 0; i < v49; ++i)
      {
        if (__s1 && cstdlib_strstr(__s1, "uni") || !cstdlib_strstr(v50[i], "extended"))
        {
          v26 = v50[i];
          v27 = cstdlib_strchr(v26, 124);
          if (v27)
          {
            *v27 = 0;
            v28 = v27 + 1;
            cstdlib_strcpy((a1[17] + 48 * *(a1 + 72)), v26);
            v29 = cstdlib_strchr(v28, 124);
            if (v29)
            {
              *v29 = 0;
              v30 = v29 + 1;
              cstdlib_strcpy((a1[17] + 48 * *(a1 + 72) + 4), v28);
              v31 = cstdlib_strchr(v30, 124);
              if (v31)
              {
                *v31 = 0;
                IGTree = statpunc_readIGTree(a1[1], a1[2], *a1, v30, a1[17] + 48 * *(a1 + 72));
                if ((IGTree & 0x80000000) != 0)
                {
                  return IGTree;
                }

                ++*(a1 + 72);
              }
            }
          }
        }
      }
    }
  }

  if ((IGTree & 0x80000000) == 0)
  {
    LOBYTE(v49) = 0;
    LOWORD(__s1) = 0;
    v32 = a1[19];
    if (v32)
    {
      heap_Free(*(*a1 + 8), v32);
    }

    v50 = 0;
    a1[19] = 0;
    *(a1 + 80) = 0;
    v33 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpuncorthmap", &v50, &__s1, &v49);
    if ((v33 & 0x80000000) != 0 || !__s1)
    {
      return v33;
    }

    v34 = heap_Alloc(*(*a1 + 8), __s1 << 9);
    a1[19] = v34;
    if (v34)
    {
      if (__s1)
      {
        v35 = 0;
        do
        {
          v36 = v50[v35];
          v37 = cstdlib_strchr(v36, 124);
          if (v37)
          {
            *v37 = 0;
            v38 = v37 + 1;
            cstdlib_strcpy((a1[19] + (*(a1 + 80) << 9)), v36);
            v39 = cstdlib_strchr(v38, 124);
            if (v39)
            {
              *v39 = 0;
              cstdlib_strcpy((a1[19] + (*(a1 + 80) << 9) + 256), v38);
              ++*(a1 + 80);
            }
          }

          ++v35;
        }

        while (v35 < __s1);
      }

      return v33;
    }

LABEL_61:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0, v21, v22, v23, v24, v41);
    return v1;
  }

  return IGTree;
}

uint64_t fe_puncsptn_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62339, 168);
  if ((result & 0x80000000) != 0)
  {
    return 2311069704;
  }

  if (!a1)
  {
    return result;
  }

  v4 = a1[13];
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  a1[13] = 0;
  v5 = a1[10];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  a1[10] = 0;
  v6 = a1[11];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  a1[11] = 0;
  v7 = a1[12];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  a1[12] = 0;
  v8 = a1[16];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[16] = 0;
  v9 = a1[17];
  if (*(a1 + 72))
  {
    v10 = 0;
    v11 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v9 + v11));
      v9 = a1[17];
      *(v9 + v11) = 0;
      ++v10;
      v11 += 48;
    }

    while (v10 < *(a1 + 72));
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_19:
    heap_Free(*(*a1 + 8), v9);
    a1[17] = 0;
  }

  v12 = a1[19];
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
    a1[19] = 0;
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_puncsptn_ObjReopen(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  return hlp_open(a1);
}

uint64_t fe_puncsptn_ProcessStart(uint64_t a1, int a2)
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

uint64_t fe_puncsptn_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v104 = 0;
  v103 = 0;
  __s1 = 0;
  v99 = 0;
  v97 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v102 = 0;
  v100 = 0;
  v98 = 0;
  *a5 = 1;
  v9 = *(a1 + 24);
  LOWORD(v96) = 0;
  v111 = 0;
  v110 = 0;
  *__src = 0;
  updated = (*(v9 + 104))(a3, a4, 1, 0, &v111 + 2);
  if ((updated & 0x80000000) != 0)
  {
    return updated;
  }

  v11 = (*(v9 + 184))(a3, a4, HIWORD(v111), 0, &v110);
  if ((v11 & 0x80000000) == 0 && v110 == 1)
  {
    v11 = (*(v9 + 104))(a3, a4, 3, HIWORD(v111), &v111);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v111;
      if (v111)
      {
        v13 = 0;
        while (1)
        {
          updated = (*(v9 + 168))(a3, a4, v12, 0, 1, __src, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (*__src > 3u)
          {
            v14 = v111;
          }

          else
          {
            updated = (*(v9 + 192))(a3, a4, v111);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v111) = v13;
            v14 = v13;
          }

          if (v14)
          {
            updated = (*(v9 + 120))(a3, a4, v14, &v111);
            v13 = v14;
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          else
          {
            updated = (*(v9 + 104))(a3, a4, 3, HIWORD(v111), &v111);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v12 = v111;
          if (!v111)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

LABEL_21:
  if (*(a1 + 144))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      updated = statpunc_Process(*a1, *(a1 + 24), a3, a4, *(a1 + 136) + v15, *(a1 + 160), *(a1 + 152));
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      ++v16;
      v15 += 48;
    }

    while (v16 < *(a1 + 144));
  }

  v11 = (*(*(a1 + 24) + 104))(a3, a4, 1, 0, &v108 + 2);
  if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 24) + 184))(a3, a4, HIWORD(v108), 0, &v97) & 0x80000000) == 0 && v97 == 1)
  {
    v11 = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v108), 0, &v109, &v107);
    if ((v11 & 0x80000000) == 0 && v107 >= 2u)
    {
      v17 = *(*a1 + 8);
      v18 = (a1 + 104);
      v19 = *(a1 + 104);
      v20 = cstdlib_strlen(v109);
      v21 = heap_Realloc(v17, v19, (v20 + 101));
      if (!v21)
      {
        log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v22, v23, v24, v25, v93);
        return 2311069706;
      }

      *(a1 + 104) = v21;
      cstdlib_strcpy(v21, v109);
      updated = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v108), 1, &v100, &v99);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v26 = (v100 + 12);
      v27 = *(v100 + 12);
      *(a1 + 112) = 0;
      v28 = v99;
      if (v99)
      {
        v29 = 0;
        while (1)
        {
          v30 = *v26;
          v26 += 8;
          if (v30 != v27)
          {
            break;
          }

          if (v99 == ++v29)
          {
            goto LABEL_39;
          }
        }

        v28 = v29;
      }

LABEL_39:
      HIWORD(v111) = v28;
      updated = (*(*(a1 + 48) + 112))(*(a1 + 32), *(a1 + 40), &v98, 0);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      __src[0] = 0;
      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v108), &v108);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v31 = v108;
      if (v108)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          updated = (*(*(a1 + 24) + 168))(a3, a4, v31, 0, 1, &v102, &v107);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v108, 1, 1, &v104, &v107);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v108, 2, 1, &v103, &v107);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v102 == 5)
          {
            if (v104 <= v32 || (v34 = __src[0], v104 >= __src[0]))
            {
              v38 = 0;
              v33 = v108;
            }

            else
            {
              v35 = v33;
              v36 = v103;
              v94 = v35;
              v37 = (*(*(a1 + 24) + 160))(a3, a4, v35, 2, 1, __src, &v106);
              v11 = v37;
              if (v36 > v34)
              {
                if ((v37 & 0x80000000) != 0)
                {
                  return v11;
                }

                updated = (*(*(a1 + 24) + 160))(a3, a4, v108, 1, 1, __src, &v106);
                v33 = v94;
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

LABEL_56:
                v38 = 0;
                goto LABEL_57;
              }

              if ((v37 & 0x80000000) != 0)
              {
                return v11;
              }

              v38 = v108;
              v33 = v94;
            }
          }

          else
          {
            if ((v102 & 0xFFFFFFFD) != 4)
            {
              goto LABEL_56;
            }

            v38 = 0;
            v32 = v104;
            __src[0] = v103;
          }

LABEL_57:
          updated = (*(*(a1 + 24) + 120))(a3, a4, v108, &v108);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v38)
          {
            updated = (*(*(a1 + 24) + 192))(a3, a4, v38);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v31 = v108;
        }

        while (v108);
      }

      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v108), &v108);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v105 = v108;
      v39 = v108;
      if (!v108)
      {
        goto LABEL_81;
      }

      while (1)
      {
        updated = (*(*(a1 + 24) + 168))(a3, a4, v39, 0, 1, &v102, &v107);
        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

        v40 = *(a1 + 24);
        if (v102 == 5)
        {
          updated = (*(v40 + 168))(a3, a4, v105, 1, 1, &v104, &v107);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v105, 2, 1, &v103, &v107);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 176))(a3, a4, v105, 4, &__s1, &v107);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v103 >= v104)
          {
            updated = hlp_Normalize(a1, (a1 + 104), v109, v104, v103, __s1, a3, a4, &v108, v100, &v111 + 1, &v99, v27);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v105 = v108;
            goto LABEL_78;
          }

          updated = (*(*(a1 + 24) + 120))(a3, a4, v105, &v105);
        }

        else
        {
          updated = (*(v40 + 120))(a3, a4, v105, &v105);
        }

        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

LABEL_78:
        if (v108)
        {
          v39 = v105;
          if (v105)
          {
            continue;
          }
        }

        v28 = HIWORD(v111);
LABEL_81:
        v41 = cstdlib_strlen(*v18);
        v42 = v99;
        if (v28 < v99)
        {
          v43 = 0;
          v44 = v27 + v41;
          v45 = v99 - v28;
          v46 = vdupq_n_s64(v45 - 1);
          v47 = (v45 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v48 = (v100 + 32 * v28 + 76);
          do
          {
            v49 = vdupq_n_s64(v43);
            v50 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_26ECC7980)));
            if (vuzp1_s16(v50, *v46.i8).u8[0])
            {
              *(v48 - 16) = v44;
            }

            if (vuzp1_s16(v50, *&v46).i8[2])
            {
              *(v48 - 8) = v44;
            }

            if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_26ECCE810)))).i32[1])
            {
              *v48 = v44;
              v48[8] = v44;
            }

            v43 += 4;
            v48 += 32;
          }

          while (v47 != v43);
          LOWORD(v28) = v42;
        }

        HIWORD(v111) = v28;
        updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v108), &v108);
        if ((updated & 0x80000000) == 0)
        {
          for (i = v108; v108; i = v108)
          {
            updated = (*(*(a1 + 24) + 168))(a3, a4, i, 0, 1, &v102, &v107);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v52 = v108;
            if (v102 != 5)
            {
LABEL_133:
              v69 = 0;
              goto LABEL_134;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v108, 1, 1, &v104, &v107);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v108, 2, 1, &v103, &v107);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v53 = v104;
            if (v104 && v53 < cstdlib_strlen(*v18))
            {
              do
              {
                v54 = *v18;
                v55 = (*v18)[v104 - 1];
                if (v55 == 32)
                {
                  break;
                }

                if (v55 == 95)
                {
                  break;
                }

                v56 = ++v104;
              }

              while (cstdlib_strlen(v54) > v56);
            }

            v57 = v103;
            if (v103)
            {
              if (v57 >= cstdlib_strlen(*v18) || (v58 = v103, v58 >= cstdlib_strlen(*v18)))
              {
LABEL_108:
                v60 = v103;
              }

              else
              {
                while (1)
                {
                  v59 = *v18;
                  v60 = v103;
                  v61 = (*v18)[v103 - 1];
                  if (v61 == 32 || v61 == 95)
                  {
                    break;
                  }

                  ++v103;
                  if (cstdlib_strlen(v59) <= (v60 + 1))
                  {
                    goto LABEL_108;
                  }
                }
              }

              if (v60 && v60 < cstdlib_strlen(*v18) && (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), *(a1 + 104) + v103))
              {
                v62 = v103;
                LOWORD(v111) = 0;
                v96 = 0;
                updated = (*(*(a1 + 24) + 120))(a3, a4, v108, &v111);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (!v111)
                {
                  v96 = 2;
LABEL_122:
                  v63 = *v18;
                  v64 = v103;
                  v65 = cstdlib_strlen(*v18);
                  Utf8Symbol = utf8_GetUtf8Symbol(v63, v64, v65, __src);
                  do
                  {
                    v67 = v62--;
                  }

                  while (v62 && (*v18)[v62] == 32);
                  if (v103 > v67)
                  {
                    v68 = Utf8Symbol;
                    cstdlib_memmove(&(*v18)[v67 + Utf8Symbol], &(*v18)[v67], v103 - v67);
                    cstdlib_strncpy(&(*v18)[v67], __src, v68);
                  }

                  goto LABEL_127;
                }

                updated = (*(*(a1 + 24) + 168))(a3, a4);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v96 != 5)
                {
                  goto LABEL_122;
                }

                updated = (*(*(a1 + 24) + 176))(a3, a4, v111, 4, &__s1, &v107);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v96 != 5 || !__s1 || cstdlib_strcmp(__s1, "phon"))
                {
                  goto LABEL_122;
                }
              }
            }

LABEL_127:
            updated = (*(*(a1 + 24) + 160))(a3, a4, v108, 1, 1, &v104, &v106);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 160))(a3, a4, v108, 2, 1, &v103, &v106);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v52 = v108;
            if (v102 != 5)
            {
              goto LABEL_133;
            }

            if (v104 == v103)
            {
              v69 = v108;
            }

            else
            {
              v69 = 0;
            }

LABEL_134:
            updated = (*(*(a1 + 24) + 120))(a3, a4, v52, &v108);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v69)
            {
              updated = (*(*(a1 + 24) + 192))(a3, a4, v69);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }
          }

          if (*(a1 + 116) != 1 || (updated = updateTokenDomainLanguageTags(a1, a3, a4, HIWORD(v108), *(a1 + 104)), (updated & 0x80000000) == 0))
          {
            hlp_AdjustMarkersToWordBoundaries(*(a1 + 104), v100, v99);
            hlp_AdjustUserTnToWordBoundaries(*(a1 + 104), a3, a4, *(a1 + 24));
            if (cstdlib_strlen(*(a1 + 104)))
            {
              v70 = 0;
              v71 = 1;
              v72 = 1;
              while (1)
              {
                v73 = *v18;
                v74 = v71 - 1;
                v75 = (*v18)[v74];
                if (v75 == 44)
                {
                  if (v73[v72] == 44)
                  {
                    v73[v72] = 32;
                    LOBYTE(v75) = (*v18)[v74];
                  }

                  else
                  {
                    LOBYTE(v75) = 44;
                  }
                }

                if (cstdlib_strchr(" _", v75) && (v72 == 1 || v72 == cstdlib_strlen(*v18) || cstdlib_strchr(" _", (*v18)[v72])))
                {
                  if (v72 != cstdlib_strlen(*v18))
                  {
                    v76 = *v18;
                    if ((*v18)[v74] == 32 && v76[v72] == 95)
                    {
                      v76[v72] = 32;
                      v76 = *v18;
                    }

                    v77 = &v76[v72];
                    v78 = cstdlib_strlen(v76);
                    cstdlib_memmove((v77 - 1), v77, v78 - v72);
                  }

                  v79 = *(a1 + 104);
                  v79[cstdlib_strlen(v79) - 1] = 0;
                  updated = hlp_UpdateLingDBTokensForDeletion(a3, a4, *(a1 + 24), v74);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }

                  hlp_UpdateMarkersForDeletion(v100, v99, v74);
                  --v70;
                }

                else
                {
                  ++v72;
                }

                v71 = v72;
                if (v72 > cstdlib_strlen(*v18))
                {
                  goto LABEL_161;
                }
              }
            }

            v70 = 0;
LABEL_161:
            v80 = *(a1 + 112) + v70;
            *(a1 + 112) = v80;
            v98 += v80;
            updated = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40));
            if ((updated & 0x80000000) == 0)
            {
              v81 = cstdlib_strlen(*(a1 + 104));
              *(v100 + 16) = v81;
              log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Space normalization: |%s|", v82, v83, v84, *(a1 + 104));
              hlp_AdjustPuncMarkers(*(a1 + 104), v100, v99);
              v85 = *(*(a1 + 24) + 160);
              v86 = HIWORD(v108);
              v87 = cstdlib_strlen(*(a1 + 104));
              v11 = v85(a3, a4, v86, 0, (v87 + 1), *(a1 + 104), &v106);
              if ((v11 & 0x80000000) == 0)
              {
                v97 = 0;
                if (((*(*(a1 + 24) + 152))(a3, a4, 3, HIWORD(v108), &v97) & 0x80000000) == 0)
                {
                  if (v97)
                  {
                    v11 = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v108), &v108);
                    if ((v11 & 0x80000000) == 0)
                    {
                      v88 = v108;
                      if (v108)
                      {
                        v89 = 0;
                        while (1)
                        {
                          updated = (*(*(a1 + 24) + 168))(a3, a4, v88, 0, 1, &v102, &v107);
                          if ((updated & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v102 == 4)
                          {
                            updated = (*(*(a1 + 24) + 192))(a3, a4, v108);
                            if ((updated & 0x80000000) != 0)
                            {
                              return updated;
                            }

                            LOWORD(v108) = v89;
                            v90 = v89;
                          }

                          else
                          {
                            v90 = v108;
                          }

                          v91 = *(a1 + 24);
                          if (v90)
                          {
                            v11 = (*(v91 + 120))(a3, a4, v90, &v108);
                            v89 = v90;
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          else
                          {
                            v11 = (*(v91 + 104))(a3, a4, 3, HIWORD(v108), &v108);
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          v88 = v108;
                          if (!v108)
                          {
                            return v11;
                          }
                        }

                        return updated;
                      }
                    }
                  }
                }
              }

              return v11;
            }
          }
        }

        return updated;
      }
    }
  }

  return v11;
}

uint64_t hlp_Normalize(uint64_t a1, const char **a2, const char *a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, unsigned __int16 *a11, unsigned __int16 *a12, int a13)
{
  v16 = a4;
  v259 = *MEMORY[0x277D85DE8];
  v257 = 0;
  v256 = a4;
  v255 = a4;
  v254 = 0;
  v253 = 0;
  v251 = 0;
  v252 = 0;
  v250 = 0;
  v249 = 0;
  v248 = *a9;
  v247 = a4;
  __s = 0;
  v19 = cstdlib_strlen(*a2);
  v245 = 0;
  v20 = a5 - v16;
  v243 = 0;
  v244 = 0;
  v242 = 0;
  cstdlib_strcpy(__dst, "disambiguate_punctuation");
  v237 = cstdlib_strlen(__dst);
  v21 = (a5 - v16 + 129);
  v22 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v21);
  if (!v22)
  {
    goto LABEL_111;
  }

  *(a1 + 80) = v22;
  cstdlib_strcpy(v22, "");
  v27 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v21);
  if (!v27)
  {
    goto LABEL_111;
  }

  *(a1 + 88) = v27;
  cstdlib_strcpy(v27, "");
  v28 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v21);
  if (!v28)
  {
    goto LABEL_111;
  }

  v233 = v19;
  __s1 = a6;
  v240 = a7;
  v235 = a2;
  v236 = a5;
  v29 = 0;
  *(a1 + 96) = v28;
  v30 = *a9;
  v31 = 128;
  if (!*a9)
  {
    v32 = v16;
    v33 = 0;
    v34 = 0;
    goto LABEL_53;
  }

  v32 = v16;
  v33 = 0;
  v34 = 0;
  if (v256 < v236)
  {
    v232 = 0;
    v29 = 0;
    v231 = 1;
    v32 = v16;
    v35 = v236;
    v36 = a8;
    while (1)
    {
      v37 = (*(*(a1 + 24) + 168))(v240, v36, v30, 0, 1, &v253, &v257);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      v34 = (*(*(a1 + 24) + 168))(v240, v36, *a9, 1, 1, &v256, &v257);
      if ((v34 & 0x80000000) != 0)
      {
        return v34;
      }

      v38 = v256;
      if (v256 >= v35 || (v253 & 0xFFFFFFFD) != 4)
      {
        goto LABEL_46;
      }

      (*(*(a1 + 24) + 168))(v240, v36, *a9, 2, 1, &v255, &v257);
      if (v253 == 6)
      {
        v37 = (*(*(a1 + 24) + 176))(v240, v36, *a9, 4, &v254, &v257);
        if ((v37 & 0x80000000) != 0)
        {
          return v37;
        }
      }

      else
      {
        v254 = "_DT_";
      }

      v34 = (*(*(a1 + 24) + 176))(v240, v36, *a9, 3, &__s, &v257);
      if ((v34 & 0x80000000) != 0)
      {
        return v34;
      }

      v39 = cstdlib_strlen(__s);
      v29 = v29 + v39 - v255 + v256;
      v40 = cstdlib_strstr(__s, "▲");
      if (v40)
      {
        v45 = v40;
        do
        {
          v47 = v45[3];
          v46 = v45 + 3;
          if (!v47)
          {
            goto LABEL_243;
          }

          v48 = v29 - 3;
          while (cstdlib_strncmp(v46, "▼", 3uLL))
          {
            v49 = *++v46;
            --v48;
            if (!v49)
            {
              goto LABEL_243;
            }
          }

          if (!*v46)
          {
            goto LABEL_243;
          }

          v29 = v48 - 3;
          __s = v46 + 3;
          v45 = cstdlib_strstr(v46 + 3, "▲");
        }

        while (v45);
        v32 = v247;
      }

      cstdlib_strncat(*(a1 + 80), (*v235 + v32 + *(a1 + 112)), v255 - v32);
      if (v256 > v32)
      {
        for (i = Utf8_LengthInUtf8chars((*v235 + v32 + *(a1 + 112)), v256 - v32); i; --i)
        {
          cstdlib_strcat(*(a1 + 88), " ");
        }
      }

      v51 = Utf8_LengthInUtf8chars((*v235 + v256 + *(a1 + 112)), v255 - v256);
      if (v51 >= (2 * cstdlib_strlen(v254) - 2))
      {
        cstdlib_strcat(*(a1 + 88), "X");
        v54 = *(a1 + 88);
        v55 = v254;
        v56 = cstdlib_strlen(v254);
        cstdlib_strncat(v54, v55 + 1, v56 - 2);
        v57 = v51 + 2;
        if (v57 != 2 * cstdlib_strlen(v254))
        {
          v58 = 0;
          v35 = v236;
          do
          {
            cstdlib_strcat(*(a1 + 88), "~");
            ++v58;
          }

          while (v57 - 2 * cstdlib_strlen(v254) > v58);
          goto LABEL_45;
        }
      }

      else
      {
        v228 = -2 - v51;
        if (v228 + 2 * cstdlib_strlen(v254))
        {
          v59 = 0;
          v52 = v232;
          v53 = v231;
          while (1)
          {
            if (v53 << 7 == v52)
            {
              v60 = (v53 + 1);
              v61 = v20 + 1 + ((v53 + 1) << 7);
              v62 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v61);
              if (!v62)
              {
                goto LABEL_111;
              }

              *(a1 + 80) = v62;
              v63 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v61);
              if (!v63)
              {
                goto LABEL_111;
              }

              *(a1 + 88) = v63;
              v64 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v61);
              if (!v64)
              {
                goto LABEL_111;
              }

              *(a1 + 96) = v64;
              v53 = v60;
            }

            cstdlib_strcat(*(a1 + 80), "~");
            ++v59;
            ++v52;
            if (v228 + 2 * cstdlib_strlen(v254) <= v59)
            {
              goto LABEL_43;
            }
          }
        }

        v52 = v232;
        v53 = v231;
LABEL_43:
        v231 = v53;
        v232 = v52;
        cstdlib_strcat(*(a1 + 88), "X");
        v65 = *(a1 + 88);
        v66 = v254;
        v67 = cstdlib_strlen(v254);
        cstdlib_strncat(v65, v66 + 1, v67 - 2);
      }

      v35 = v236;
LABEL_45:
      cstdlib_strcat(*(a1 + 88), "Y");
      v68 = *(a1 + 88);
      v69 = v254;
      v70 = cstdlib_strlen(v254);
      cstdlib_strncat(v68, v69 + 1, v70 - 2);
      v32 = v255;
      v247 = v255;
      v38 = v256;
      v36 = a8;
LABEL_46:
      if (v38 < v35)
      {
        v34 = (*(*(a1 + 24) + 120))(v240, v36, *a9, a9);
        if ((v34 & 0x80000000) != 0)
        {
          return v34;
        }

        v38 = v256;
      }

      v30 = *a9;
      if (!*a9 || v38 >= v35)
      {
        v33 = v232;
        v31 = v231 << 7;
        break;
      }
    }
  }

LABEL_53:
  v71 = v236 - v32;
  if (v236 > v32)
  {
    cstdlib_strncat(*(a1 + 80), (*v235 + v32 + *(a1 + 112)), v71);
    for (j = Utf8_LengthInUtf8chars((*v235 + v32 + *(a1 + 112)), v71); j; --j)
    {
      cstdlib_strcat(*(a1 + 88), " ");
    }
  }

  if (cstdlib_strstr(__s1, "spell"))
  {
    v73 = cstdlib_strlen(*(a1 + 80));
    v74 = v235;
    if (v73)
    {
      do
      {
        v75 = *(a1 + 80);
        v76 = (v73 - 1);
        if (*(v75 + v76) != 32)
        {
          break;
        }

        *(v75 + v76) = 0;
        *(*(a1 + 88) + Utf8_LengthInUtf8chars(*(a1 + 80), v76)) = 0;
        --v29;
        v73 = v76;
      }

      while (v76);
    }
  }

  else
  {
    v74 = v235;
  }

  if (v31 < v33)
  {
    goto LABEL_63;
  }

  v79 = *(a1 + 80);
  v80 = cstdlib_strlen(v79);
  v81 = Utf8_LengthInUtf8chars(v79, v80);
  v82 = v81;
  if (v81)
  {
    v83 = 0;
    do
    {
      *(*(a1 + 96) + v83++) = 1;
    }

    while (v81 != v83);
  }

  if (cstdlib_strlen(*(a1 + 88)))
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
    do
    {
      v87 = *(a1 + 88);
      v88 = v87[v86];
      if (v88 == 88)
      {
        ++v85;
      }

      if (v88 == 89)
      {
        ++v84;
      }

      ++v86;
    }

    while (cstdlib_strlen(v87) > v86);
  }

  else
  {
    LOWORD(v86) = 0;
    v85 = 0;
    v84 = 0;
  }

  v247 = v86;
  if (*(a1 + 124))
  {
    if (!v16)
    {
      v89 = *(a1 + 88);
      if (*v89 == 32)
      {
        *v89 = 40;
      }
    }

    if (v236 == cstdlib_strlen(a3))
    {
      v90 = *(a1 + 88);
      if (v90[cstdlib_strlen(v90) - 1] == 32)
      {
        v91 = *(a1 + 88);
        v91[cstdlib_strlen(v91) - 1] = 41;
      }
    }
  }

  if (cstdlib_strcmp(__s1, "internal-nuance-system-norm") && cstdlib_strcmp(__s1, "phon") && (!*(a1 + 120) || !cstdlib_strcmp(__s1, "spell") || ToNorm(*(a1 + 80))))
  {
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L1: %s", v92, v93, v94, __dst);
    v196 = *(*(a1 + 48) + 120);
    v197 = *(a1 + 80);
    v198 = cstdlib_strlen(v197);
    v37 = v196(*(a1 + 32), *(a1 + 40), 0, v197, v198);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L2: %s", v199, v200, v201, __dst);
    v202 = *(*(a1 + 48) + 120);
    v203 = *(a1 + 88);
    v204 = cstdlib_strlen(v203);
    v37 = v202(*(a1 + 32), *(a1 + 40), 1, v203, v204);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    v37 = (*(*(a1 + 48) + 88))(*(a1 + 32), *(a1 + 40), *(a1 + 96), v82);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v237 + 2 <= 0x7F)
    {
      cstdlib_strcat(__dst, "_");
      cstdlib_strcat(__dst, __s1);
    }

    if (((*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __dst) & 0x80000000) != 0)
    {
      __dst[v237] = 0;
      v37 = (*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __dst);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }
    }

    v37 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 0, &v252, &v249);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    if (cstdlib_strstr(__s1, "spell"))
    {
      v208 = v249++;
      v252[v208] = 32;
    }

    v252[v249] = 0;
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s O1: %s", v205, v206, v207, __dst);
    v37 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 1, &v251, &v249);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    if (cstdlib_strstr(__s1, "spell"))
    {
      v209 = v249++;
      v251[v209] = 32;
    }

    v251[v249] = 0;
    v210 = v252;
    v211 = cstdlib_strlen(v252);
    LOWORD(v210) = Utf8_LengthInUtf8chars(v210, v211);
    v212 = v251;
    v213 = cstdlib_strlen(v251);
    v214 = Utf8_LengthInUtf8chars(v212, v213) ^ v210;
    v77 = *(*a1 + 32);
    if (v214)
    {
      v34 = 2311069696;
      goto LABEL_64;
    }

    log_OutText(v77, "FE_PUNCSPTN", 5, 0, "%s O2: %s", v42, v43, v44, __dst);
    if (cstdlib_strlen(v251))
    {
      v216 = 0;
      v217 = 0;
      do
      {
        if (v251[v217] == 88)
        {
          ++v216;
        }

        ++v217;
      }

      while (cstdlib_strlen(v251) > v217);
    }

    else
    {
      v216 = 0;
    }

    if (v216 != v85)
    {
      goto LABEL_63;
    }

    if (cstdlib_strlen(v251))
    {
      v218 = 0;
      v219 = 0;
      do
      {
        if (v251[v219] == 89)
        {
          ++v218;
        }

        ++v219;
      }

      while (cstdlib_strlen(v251) > v219);
    }

    else
    {
      LOWORD(v219) = 0;
      v218 = 0;
    }

    v247 = v219;
    if (v218 != v84)
    {
LABEL_63:
      v34 = 2311069696;
      v77 = *(*a1 + 32);
LABEL_64:
      v78 = 33002;
      goto LABEL_244;
    }

    v34 = (*(*(a1 + 48) + 96))(*(a1 + 32), *(a1 + 40), &v250, &v249);
    if ((v34 & 0x80000000) != 0)
    {
      return v34;
    }

    if (cstdlib_strstr(__s1, "spell"))
    {
      v220 = v249++;
      v250[v220] = 0;
    }

    v74 = v235;
  }

  else
  {
    v95 = *(a1 + 80);
    v251 = *(a1 + 88);
    v252 = v95;
    v250 = *(a1 + 96);
  }

  v96 = *(a1 + 80);
  LODWORD(v97) = v236;
  if (*v96 != 32)
  {
    v98 = 0;
    v99 = 0;
    while (v252[v98] == 32)
    {
      v98 = ++v99;
      if (v96[v99] == 32)
      {
        goto LABEL_96;
      }
    }

    LODWORD(v98) = v99;
LABEL_96:
    if (v98)
    {
      v100 = *a12;
      if (v100 >= 2)
      {
        v101 = *(a10 + 12) + v16 + *(a1 + 112);
        v102 = v101 + v98;
        v103 = (a10 + 44);
        v104 = v100 - 1;
        do
        {
          if (v101 <= *v103 && *v103 < v102)
          {
            *v103 = v102;
          }

          v103 += 8;
          --v104;
        }

        while (v104);
      }
    }
  }

  v106 = v29 + cstdlib_strlen(v252);
  v107 = (v106 - cstdlib_strlen(*(a1 + 80)));
  if (v107 <= 0)
  {
    if (v107 < 0)
    {
      for (k = *(a1 + 112) + v236; k <= cstdlib_strlen(*v74); ++k)
      {
        (*v74)[k + v107] = (*v74)[k];
      }
    }

    goto LABEL_114;
  }

  v108 = heap_Realloc(*(*a1 + 8), *v74, (v233 + v107 + 101));
  if (!v108)
  {
LABEL_111:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v23, v24, v25, v26, v221);
    return 2311069706;
  }

  *v74 = v108;
  cstdlib_memset((v108 + v233), 0, (v107 + 101));
  v109 = cstdlib_strlen(*v74);
  if ((*(a1 + 112) + v236) <= v109)
  {
    v110 = v109;
    do
    {
      (*v74)[v110 + v107] = (*v74)[v109--];
      v110 = v109;
    }

    while ((*(a1 + 112) + v236) <= v109);
  }

LABEL_114:
  v112 = 0;
  v113 = 0;
  v114 = a11;
  v256 = v16;
  v247 = 0;
  LOWORD(v242) = 0;
  v115 = *(a1 + 112) + v16;
  v116 = v248;
  if (!v248 || v236 <= v16)
  {
    v184 = 0;
    v185 = 0;
    goto LABEL_246;
  }

  v226 = *(a1 + 112) + v16;
  v229 = 0;
  v224 = 0;
  v223 = a10 + 12;
  v117 = a8;
  v118 = a12;
  while (1)
  {
    v37 = (*(*(a1 + 24) + 168))(v240, v117, v116, 0, 1, &v253, &v257);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    if (v253 != 7)
    {
      v37 = (*(*(a1 + 24) + 168))(v240, v117, v248, 1, 1, &v256, &v257);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      v37 = (*(*(a1 + 24) + 168))(v240, v117, v248, 2, 1, &v255, &v257);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }
    }

    if (v256 >= v97)
    {
      goto LABEL_239;
    }

    if ((v253 & 0xFFFFFFFD) == 4)
    {
      break;
    }

    if (v253 == 5)
    {
      v122 = *(a1 + 112);
      HIWORD(v244) = v122 + v256;
      v123 = v122 + v107 + v255;
LABEL_237:
      LOWORD(v244) = v123;
      v37 = (*(*(a1 + 24) + 160))(v240, v117, v248, 1, 1, &v244 + 2, &v243 + 2);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      v37 = (*(*(a1 + 24) + 160))(v240, v117, v248, 2, 1, &v244, &v243 + 2);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }
    }

LABEL_239:
    v34 = (*(*(a1 + 24) + 120))(v240, v117, v248, &v248);
    if ((v34 & 0x80000000) != 0)
    {
      return v34;
    }

    v116 = v248;
    if (!v248 || v256 >= v97)
    {
      v112 = v247;
      v113 = v242;
      v184 = v224;
      v115 = v226;
      v185 = v229;
LABEL_246:
      v230 = v185;
      do
      {
        v186 = v185;
      }

      while (v251[v185++]);
      hlp_updateBytePositions(v186, v252, v250, *(a1 + 80), &v247, &v242);
      if ((v247 - v112 + v115) <= v107 + v233 + 100)
      {
        cstdlib_memcpy((*v235 + v115), &v252[v112], v247 - v112);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Normalizing to: |%s|", v188, v189, v190, *v235);
        v191 = *v114;
        if (v191 < *a12)
        {
          v192 = a13 + v16;
          do
          {
            v193 = a10 + 32 * v191;
            v195 = *(v193 + 12);
            v194 = (v193 + 12);
            if (v236 < (v195 - a13))
            {
              break;
            }

            hlp_updateMarkerPosition((*(a1 + 80) + v113), &v250[v230], &v252[v112], v192, (v186 - v230), v184 + *(a1 + 112), v194);
            LOWORD(v191) = *a11 + 1;
            *a11 = v191;
          }

          while (*a12 > v191);
        }

        *(a1 + 112) += v107;
        return v34;
      }

      goto LABEL_63;
    }
  }

  v119 = v247;
  v120 = v242;
    ;
  }

  hlp_updateBytePositions(m, v252, v250, *(a1 + 80), &v247, &v242);
  v124 = v247;
  cstdlib_memcpy((*v235 + v226), &v252[v119], v247 - v119);
  v125 = *v114;
  if (v125 < *v118)
  {
    do
    {
      v126 = a10 + 32 * v125;
      v128 = *(v126 + 12);
      v127 = (v126 + 12);
      if (v256 <= (v128 - a13))
      {
        break;
      }

      hlp_updateMarkerPosition((*(a1 + 80) + v120), &v250[v229], &v252[v119], a13 + v16, (m - v229), *(a1 + 112) + v224, v127);
      LOWORD(v125) = *a11 + 1;
      *a11 = v125;
    }

    while (*a12 > v125);
  }

  v129 = 0;
  v227 = v124 - v119 + v226;
  v225 = v16 + v224 + v124 - v119 - v256;
  v16 = v255;
  v130 = a8;
  v118 = a12;
  while (2)
  {
    v131 = v251[m];
    if (v131 == 88)
    {
      v129 = m;
LABEL_138:
      m = (m + 1);
      continue;
    }

    break;
  }

  if (v251[m] && v131 != 89)
  {
    goto LABEL_138;
  }

  v132 = 2 * m;
  if (v131 != 89)
  {
    v132 = 0;
  }

  v133 = v132 - v129;
  v97 = v236;
  do
  {
    if (v131 == 41 && *(a1 + 124))
    {
      break;
    }

    if (!v131)
    {
      break;
    }

    if (v131 == 32)
    {
      break;
    }

    if (v131 == 126)
    {
      break;
    }

    if (v133 == m)
    {
      break;
    }

    m = (m + 1);
    v131 = v251[m];
  }

  while (v131 != 88);
  v229 = m;
  hlp_updateBytePositions(m, v252, v250, *(a1 + 80), &v247, &v242);
  v37 = (*(*(a1 + 24) + 176))(v240, a8, v248, 3, &__s, &v257);
  if ((v37 & 0x80000000) != 0)
  {
    return v37;
  }

  LOWORD(v243) = 0;
  HIWORD(v242) = 0;
  if (v253 == 6 && ((*(*(a1 + 24) + 184))(v240, a8, v248, 5, &v243) & 0x80000000) == 0 && v243 == 1)
  {
    v37 = (*(*(a1 + 24) + 176))(v240, a8, v248, 5, &v245, &v242 + 2);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }
  }

  v134 = cstdlib_strstr(__s, "▲");
  if (!v134)
  {
LABEL_201:
    v37 = (*(*(a1 + 24) + 168))(v240, v130, v248, 0, 1, &v253, &v257);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    LOWORD(v243) = 0;
    if (v253 == 6 && ((*(*(a1 + 24) + 184))(v240, v130, v248, 5, &v243) & 0x80000000) == 0 && v243 == 1)
    {
      v37 = (*(*(a1 + 24) + 176))(v240, v130, v248, 5, &v245, &v257);
      v158 = v235;
      v114 = a11;
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      v159 = cstdlib_strchr(&a3[v256], 32);
      v160 = 0;
      if (v159 && v257 >= 2u)
      {
        v160 = 0;
        do
        {
          v161 = *a11;
          if (v161 < *v118)
          {
            v162 = v245;
            v163 = a13 + v225 + v256;
            v164 = (v223 + 32 * v161);
            do
            {
              if (v159 - a3 <= (*v164 - a13))
              {
                break;
              }

              *v164 = v163 + *(a1 + 112) + *(v162 + 2 * v160);
              v164 += 16;
              *a11 = ++v161;
            }

            while (v161 < *v118);
          }

          v165 = v159 - 1;
          do
          {
            v166 = *++v165;
          }

          while (v166 == 32);
          v159 = cstdlib_strchr(v165, 32);
          ++v160;
        }

        while (v159 && v257 - 1 > v160);
      }

      v167 = *a11;
      if (v167 < *v118)
      {
        v168 = v255;
        v169 = v245;
        v170 = a13 + v225 + v256;
        v171 = (v223 + 32 * v167);
        do
        {
          if (v168 <= (*v171 - a13))
          {
            break;
          }

          *v171 = v170 + *(a1 + 112) + *(v169 + 2 * v160);
          v171 += 16;
          *a11 = ++v167;
        }

        while (v167 < *v118);
      }
    }

    else
    {
      v158 = v235;
      v114 = a11;
      if (cstdlib_strcmp(__s1, "prompt") && cstdlib_strcmp(__s1, "internal-nuance-system-norm"))
      {
        v172 = *a11;
        if (v172 < *v118)
        {
          v173 = v255;
          v174 = a13 + v225 + v256;
          v175 = (v223 + 32 * v172);
          do
          {
            if (v173 <= (*v175 - a13))
            {
              break;
            }

            *v175 = v174 + *(a1 + 112);
            v175 += 16;
            *a11 = ++v172;
          }

          while (v172 < *v118);
        }
      }

      else
      {
        v176 = *a11;
        if (v176 < *v118)
        {
          v177 = v255;
          v178 = (v223 + 32 * v176);
          do
          {
            if (v177 <= (*v178 - a13))
            {
              break;
            }

            *v178 += v225 + *(a1 + 112);
            v178 += 8;
            *a11 = ++v176;
          }

          while (v176 < *v118);
        }
      }
    }

    v179 = (*v158 + v227);
    v180 = __s;
    v181 = cstdlib_strlen(__s);
    cstdlib_memcpy(v179, v180, v181);
    v182 = cstdlib_strlen(__s);
    if (v253 == 6)
    {
      HIWORD(v244) = v256 + v225 + *(a1 + 112);
    }

    v226 = v227 + v182;
    v183 = v225 + cstdlib_strlen(__s);
    v224 = v183 - v255 + v256;
    v117 = a8;
    if (v253 == 6)
    {
      v123 = v183 + v256 + *(a1 + 112);
      goto LABEL_237;
    }

    goto LABEL_239;
  }

  v135 = v134;
  v222 = 0;
  while (1)
  {
    v136 = v97;
    v241 = 0;
    cstdlib_memset(v135, 0, 3uLL);
    v137 = v135 + 3;
    if (!v135[3])
    {
      break;
    }

    v138 = -3 - v135;
    v139 = -6;
    v140 = v135 + 3;
    while (cstdlib_strncmp(v140, "▼", 3uLL))
    {
      v141 = *++v140;
      --v139;
      --v138;
      if (!v141)
      {
        goto LABEL_243;
      }
    }

    if (!*v140)
    {
      break;
    }

    cstdlib_memset(v140, 0, 3uLL);
    v142 = HIWORD(v242);
    if (HIWORD(v242))
    {
      v143 = 0;
      v144 = v245;
      v145 = -v138 - __s;
      do
      {
        if (v144)
        {
          v146 = *(v144 + 2 * v143);
          if (v145 < v146)
          {
            *(v144 + 2 * v143) = v146 + v139;
            v142 = HIWORD(v242);
          }
        }

        ++v143;
      }

      while (v143 < v142);
    }

    LOWORD(v241) = v248;
    v37 = (*(*(a1 + 24) + 168))(v240, a8);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    v147 = v241;
    if (HIWORD(v241) == v256 && v241 != 0)
    {
      while (1)
      {
        v149 = v147;
        v37 = (*(*(a1 + 24) + 120))(v240, a8, v147, &v241);
        if ((v37 & 0x80000000) != 0)
        {
          return v37;
        }

        if (!v241)
        {
          goto LABEL_175;
        }

        v37 = (*(*(a1 + 24) + 168))(v240, a8);
        if ((v37 & 0x80000000) != 0)
        {
          return v37;
        }

        v147 = v241;
        if (HIWORD(v241) != v256 || v241 == 0)
        {
          goto LABEL_175;
        }
      }
    }

    v149 = 0;
LABEL_175:
    LOWORD(v241) = v149;
    v150 = v149;
    if (v222)
    {
      v37 = (*(*(a1 + 24) + 120))(v240, a8, v149, &v241);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      v150 = v241;
    }

    if (v150)
    {
      v37 = (*(*(a1 + 24) + 168))(v240, a8, v150, 0, 1, &v253, &v257);
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      while (v241 && v253 == 7)
      {
        v149 = v241;
        v37 = (*(*(a1 + 24) + 120))(v240, a8, v241, &v241);
        if ((v37 & 0x80000000) != 0)
        {
          return v37;
        }

        if (!v241)
        {
          break;
        }

        v37 = (*(*(a1 + 24) + 168))(v240, a8);
        if ((v37 & 0x80000000) != 0)
        {
          return v37;
        }
      }
    }

    LOWORD(v241) = v149;
    v37 = (*(*(a1 + 24) + 80))(v240, a8, v149, &v241);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    v253 = 7;
    v37 = (*(*(a1 + 24) + 160))(v240, a8, v241, 0, 1, &v253, &v243 + 2);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    HIWORD(v241) = v256 + v225 + *(a1 + 112) + v135 - __s;
    v37 = (*(*(a1 + 24) + 160))(v240, a8, v241, 1, 1, &v241 + 2, &v243 + 2);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    v37 = (*(*(a1 + 24) + 160))(v240, a8, v241, 2, 1, &v241 + 2, &v243 + 2);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    v152 = *(*(a1 + 24) + 160);
    v153 = v241;
    v154 = cstdlib_strlen(v137);
    v37 = v152(v240, a8, v153, 4, (v154 + 1), v137, &v243 + 2);
    if ((v37 & 0x80000000) != 0)
    {
      return v37;
    }

    v155 = __s;
    v156 = cstdlib_strlen(__s);
    v157 = cstdlib_strlen(v140 + 3);
    cstdlib_memmove(&v155[v156], v140 + 3, v157 + 1);
    v135 = cstdlib_strstr(__s, "▲");
    v222 = 1;
    v130 = a8;
    v118 = a12;
    v97 = v136;
    if (!v135)
    {
      goto LABEL_201;
    }
  }

LABEL_243:
  v34 = 2311069696;
  v77 = *(*a1 + 32);
  v78 = 33003;
LABEL_244:
  log_OutPublic(v77, "FE_PUNCSPTN", v78, 0, v41, v42, v43, v44, v221);
  return v34;
}

uint64_t updateTokenDomainLanguageTags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v339 = 0;
  v340[0] = 0;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  LogLevel = log_GetLogLevel(*(*a1 + 32));
  v335 = 0;
  v334 = 0;
  v333 = -1;
  v332 = 0;
  v331 = 0;
  v14 = (*(a1[3] + 152))(a2, a3, 3, a4, &v331);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v331)
  {
    if (LogLevel < 5)
    {
      return v14;
    }

    v33 = *(*a1 + 32);
    v34 = "no tokens to process for langmaps";
LABEL_38:
    log_OutText(v33, "FE_PUNCSPTN", 5, 0, v34, v11, v12, v13, v284);
    return v14;
  }

  v14 = (*(a1[3] + 104))(a2, a3, 3, a4, v340 + 2);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_22:
    v26 = 0;
LABEL_23:
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v15 = HIWORD(v340[0]);
  if (!HIWORD(v340[0]))
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
      v14 = (*(a1[3] + 168))(a2, a3, v15, 0, 1, &v335, v340);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_40;
      }

      v15 = HIWORD(v340[0]);
      if (v335 == 6)
      {
        v14 = (*(a1[3] + 184))(a2, a3, HIWORD(v340[0]), 6, &v339 + 2);
        if ((v14 & 0x80000000) != 0)
        {
LABEL_40:
          v26 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v337 = v16;
          goto LABEL_24;
        }

        v17 = HIWORD(v339) == 1;
        v15 = HIWORD(v340[0]);
      }

      else
      {
        v17 = 0;
      }
    }

    ++v16;
    v18 = (*(a1[3] + 120))(a2, a3, v15, v340 + 2);
    v15 = HIWORD(v340[0]);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = HIWORD(v340[0]) == 0;
    }
  }

  while (!v19);
  v337 = v16;
  if (!v17)
  {
LABEL_37:
    v33 = *(*a1 + 32);
    v34 = "No LangMaps to process";
    goto LABEL_38;
  }

  v20 = cstdlib_strlen(a5);
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
      goto LABEL_57;
    }

    cstdlib_strcpy(v21, a5);
    dumpLingDB(a1, a2, a3, a4, a5, v26, "lingdb at start of langmap expansion", v27);
  }

  __c = v20;
  v36 = v20 + 1;
  v37 = heap_Calloc(*(*a1 + 8), 1, v36);
  v38 = *a1;
  if (!v37)
  {
    v14 = 2311069706;
LABEL_57:
    log_OutPublic(*(v38 + 32), "FE_PUNCSPTN", 33000, 0, v22, v23, v24, v25, v284);
    goto LABEL_23;
  }

  v328 = v37;
  v39 = heap_Calloc(*(v38 + 8), 1, 2 * v36);
  v44 = *a1;
  if (!v39)
  {
    v14 = 2311069706;
    log_OutPublic(*(v44 + 32), "FE_PUNCSPTN", 33000, 0, v40, v41, v42, v43, v284);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_130;
  }

  v321 = v39;
  v45 = heap_Calloc(*(v44 + 8), 1, 4 * v36);
  v50 = *a1;
  v320 = v45;
  if (!v45 || (v51 = heap_Calloc(*(v50 + 8), 1, 28 * v16 + 28), v338 = v51, v50 = *a1, !v51))
  {
    v14 = 2311069706;
    log_OutPublic(*(v50 + 32), "FE_PUNCSPTN", 33000, 0, v46, v47, v48, v49, v284);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_128;
  }

  v52 = v51;
  v308 = LogLevel;
  v30 = heap_Calloc(*(v50 + 8), 1, 48);
  v57 = *a1;
  if (!v30)
  {
    v14 = 2311069706;
    log_OutPublic(*(v57 + 32), "FE_PUNCSPTN", 33000, 0, v53, v54, v55, v56, v284);
    v28 = 0;
    v29 = 0;
    goto LABEL_128;
  }

  __s = a5;
  v29 = heap_Calloc(*(v57 + 8), 1, 1024);
  if (!v29)
  {
    goto LABEL_126;
  }

  v333 = -1;
  v62 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "normal", &v334, &v333, &v332);
  if ((v62 & 0x80000000) != 0)
  {
    v14 = v62;
LABEL_127:
    v28 = 0;
    goto LABEL_128;
  }

  if (v333)
  {
    v63 = cstdlib_strchr(*v334, v332);
    if (v63)
    {
      *v63 = 0;
    }

    v64 = *v334;
  }

  else
  {
    v64 = "normal";
  }

  v65 = *(*a1 + 8);
  __src = v64;
  v66 = cstdlib_strlen(v64);
  v67 = heap_Calloc(v65, 1, (v66 + 1));
  if (!v67)
  {
LABEL_126:
    v14 = 2311069706;
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v58, v59, v60, v61, v284);
    goto LABEL_127;
  }

  v68 = v67;
  cstdlib_strcpy(v67, __src);
  *v30 = v68;
  v69 = (*(a1[3] + 104))(a2, a3, 3, a4, v340 + 2);
  if ((v69 & 0x80000000) != 0)
  {
    v14 = v69;
    v28 = 1;
    goto LABEL_128;
  }

  v337 = 0;
  v73 = HIWORD(v340[0]);
  v74 = 0;
  if (!HIWORD(v340[0]))
  {
    LOWORD(v307) = 1;
LABEL_133:
    if (v308 < 5)
    {
      __srcc = v338;
      v123 = v74;
      v14 = modifyTokenLangMaps(a1, a2, a3, v338, v74, __s);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_346;
      }
    }

    else
    {
      v123 = v74;
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before processing", v70, v71, v72, v284);
      v124 = v338;
      dumpTokDB(a1, a2, a3, v338, v123);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v125, v126, v127, __s);
      v14 = modifyTokenLangMaps(a1, a2, a3, v124, v123, __s);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_346;
      }

      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after langmap realign", v128, v129, v130, v285);
      __srcc = v124;
      dumpTokDB(a1, a2, a3, v124, v123);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v131, v132, v133, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v134, v135, v136, v328);
    }

    v140 = v123;
    v311 = v123;
    if (v123)
    {
      v141 = 0;
      v142 = __srcc;
      while (1)
      {
        v143 = &v142[28 * v141];
        if (*(v143 + 3) != 3 && *(v143 + 2) == 6)
        {
          v302 = v141;
          v14 = (*(a1[3] + 184))(a2, a3, *v143, 6, &v339 + 2);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_346;
          }

          v140 = v311;
          v142 = __srcc;
          if (HIWORD(v339) == 1)
          {
            v14 = (*(a1[3] + 176))(a2, a3, *v143, 6, &v336, v340);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_346;
            }

            v144 = cstdlib_strlen(v336);
            v145 = heap_Calloc(*(*a1 + 8), 1, v144 + 1);
            if (!v145)
            {
LABEL_348:
              v14 = 2311069706;
              goto LABEL_351;
            }

            v146 = v145;
            cstdlib_strcpy(v145, v336);
            v147 = *&__srcc[28 * v302 + 2];
            v148 = *(v143 + 2);
            if (v147 < v148)
            {
              v149 = *v146;
              v150 = &v146[v147];
              do
              {
                if (v150[-*(v143 + 1)] != 32)
                {
                  v149 = v150[-*(v143 + 1)];
                }

                if (v149 != 32)
                {
                  v328[v147] = v149;
                  LOWORD(v148) = *(v143 + 2);
                }

                ++v150;
                ++v147;
              }

              while (v147 < v148);
            }

            v151 = *v143;
            heap_Free(*(*a1 + 8), v146);
            v140 = v311;
            v142 = __srcc;
            v141 = 0;
            while (*&__srcc[28 * v141] != v151)
            {
              if (++v141 >= v311)
              {
                v141 = v311;
                break;
              }
            }
          }
        }

        if (++v141 >= v140)
        {
          goto LABEL_159;
        }
      }
    }

    v142 = __srcc;
LABEL_159:
    if (v308 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP after inserting langMaps", v137, v138, v139, v284);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v152, v153, v154, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v155, v156, v157, v328);
      v140 = v311;
      v142 = __srcc;
    }

    if (v140)
    {
      v158 = 0;
      v159 = v140;
      v160 = v142 + 36;
      v161 = 2;
      v162 = __c;
      v303 = v140;
      do
      {
        v163 = &v142[28 * v158];
        if (*(v163 + 2) != 6 || *(v163 + 5))
        {
          goto LABEL_202;
        }

        v164 = *(v163 + 2);
        v165 = v164;
        v166 = v164;
        if (v162 > v164)
        {
          v166 = *(v163 + 2);
          do
          {
            if (__s[v166] == 32)
            {
              break;
            }

            ++v166;
          }

          while (v162 > v166);
          v165 = v166;
        }

        if (__s[v166] == 32 && v162 > v165)
        {
          do
          {
            if (__s[v166] != 32)
            {
              break;
            }

            ++v166;
          }

          while (v162 > v166);
          v165 = v166;
        }

        if (v162 < v165)
        {
          goto LABEL_202;
        }

        v292 = v161;
        v296 = v160;
        if (v164 != v166)
        {
          v289 = &v142[28 * v158];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting pTokDB[%d].to %d -> %d, as not end of word (u16SentLen=%d)", v137, v138, v139, v158);
          v163 = v289;
          v159 = v303;
          v142 = __srcc;
        }

        if (v158 + 1 >= v159)
        {
          goto LABEL_195;
        }

        v168 = v292;
        for (i = v296; ; i += 28)
        {
          v170 = *(i - 3);
          v171 = v166 <= v170 || *i != 6 || *(i + 1) == 3 || v321[v166] == v321[v170];
          if (v168 >= v159)
          {
            if (!v171)
            {
              goto LABEL_200;
            }

            goto LABEL_195;
          }

          if (v166 <= *(i + 11))
          {
            break;
          }

          if (!v171)
          {
            goto LABEL_200;
          }

LABEL_192:
          ++v168;
        }

        if (*(i + 7) != 6 && v171)
        {
          goto LABEL_192;
        }

        if (!v171)
        {
LABEL_200:
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", v137, v138, v139, *&v142[28 * v168]);
          v159 = v303;
          v142 = __srcc;
          v162 = __c;
          goto LABEL_201;
        }

LABEL_195:
        v172 = &v142[28 * v158];
        v173 = *(v172 + 2);
        if (v173 < v166)
        {
          v174 = &v328[v173];
          v175 = v166 - v173;
          do
          {
            *v174++ = v328[*&v142[28 * v158 + 2]];
            --v175;
          }

          while (v175);
        }

        *(v172 + 2) = v166;
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", v137, v138, v139, *v163);
        v142 = __srcc;
        v162 = __c;
        v159 = v303;
LABEL_201:
        v161 = v292;
        v160 = v296;
LABEL_202:
        ++v158;
        v160 += 28;
        ++v161;
      }

      while (v158 != v159);
      v176 = 0;
      while (1)
      {
        v177 = &v142[28 * v176];
        if (*(v177 + 2) != 6)
        {
          goto LABEL_237;
        }

        v178 = *(v177 + 1);
        v179 = *(v177 + 1);
        if (v178 >= 1)
        {
          break;
        }

        if (v178 < 0)
        {
          goto LABEL_237;
        }

LABEL_211:
        if (*__s == 32)
        {
          v180 = 0;
          v181 = 0;
LABEL_213:
          if ((v180 + 1) != v178)
          {
            __ca = &v142[28 * v176];
            v297 = v180 + 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v137, v138, v139, v179);
            v186 = v297;
            goto LABEL_220;
          }

          if (!v180)
          {
            goto LABEL_219;
          }

          goto LABEL_237;
        }

        if (*(v177 + 1))
        {
          v181 = 0;
LABEL_219:
          __ca = &v142[28 * v176];
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "consider adjusting start pos %d -> %d", v137, v138, v139, v179);
          v186 = 0;
LABEL_220:
          v187 = 0;
          v188 = &__srcc[28 * v176];
          v191 = *(v188 + 1);
          v189 = (v188 + 2);
          v190 = v191;
          do
          {
            v192 = &__srcc[28 * v187];
            v193 = *(v192 + 1);
            if (v193 > v190)
            {
              break;
            }

            if (v176 != v187)
            {
              v194 = *(v192 + 2);
              if (v193 <= v186 && v194 == 6)
              {
                if (*(v192 + 2) > v186)
                {
                  goto LABEL_239;
                }
              }

              else if (v194 == 5 && *(v192 + 3) != 3 && v321[v181] != v321[v193])
              {
LABEL_239:
                log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "block adjusting: bisects token rec %d -> %d,%d", v183, v184, v185, *v192);
                v142 = __srcc;
                v159 = v303;
                goto LABEL_237;
              }
            }

            ++v187;
          }

          while (v187 < v311);
          if (v190 > v186)
          {
            v196 = v328[v190];
            v197 = v186;
            do
            {
              v328[v197++] = v196;
            }

            while (v197 < *v189);
          }

          *v189 = v186;
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "adjusted rec %d -> %d,%d", v183, v184, v185, *__ca);
          v142 = __srcc;
          v159 = v303;
        }

LABEL_237:
        if (++v176 == v159)
        {
          goto LABEL_240;
        }
      }

      v180 = *(v177 + 1);
      while (1)
      {
        v181 = v180;
        if (__s[v180] == 32)
        {
          goto LABEL_213;
        }

        v182 = v180--;
        if (v182 <= 1)
        {
          goto LABEL_211;
        }
      }
    }

LABEL_240:
    if (v308 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Adjusting End Check", v137, v138, v139, v284);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v198, v199, v200, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v201, v202, v203, v328);
    }

    v204 = cstdlib_strlen(__s);
    v208 = v204;
    v209 = v328;
    if (v204)
    {
      v210 = 0;
      v211 = 0;
      v212 = *v328;
      v290 = v204;
      v287 = v204;
      do
      {
        v213 = v209[v211];
        if (v213 == v212 || __s[v211] != 32)
        {
          ++v211;
          v212 = v213;
        }

        else
        {
          v214 = 0;
          v215 = v211;
          do
          {
            v216 = v215;
            v217 = v214;
            if (++v215 >= v204)
            {
              break;
            }

            if (v209[v215] != v213)
            {
              break;
            }

            ++v214;
          }

          while (__s[v215] == 32);
          if (v212 != 80)
          {
            __cb = v212;
            v304 = v216;
            v293 = v211;
            v298 = &v209[v211];
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Append region %d..%d to previous %c region", v205, v206, v207, v210);
            v216 = v304;
            v212 = __cb;
            v208 = v287;
            v204 = v290;
            v209 = v328;
            if (v293 < v215)
            {
              memset(v298, __cb, v217 + 1);
              v216 = v304;
              v212 = __cb;
              v208 = v287;
              v204 = v290;
              v209 = v328;
            }
          }

          v211 = v216 + 2;
        }

        v210 = v211;
      }

      while (v208 > v211);
    }

    v218 = cstdlib_strlen(__s);
    v223 = v328;
    __cc = v218;
    v224 = v311;
    if (v218 >= 2u)
    {
      v225 = v218 - 1;
      v226 = v328 + 1;
      v227 = __s;
      do
      {
        v228 = *(v226 - 1);
        v229 = v228 == 80 || v228 == *v226;
        if (!v229 && *v227 != 32)
        {
          *v226 = v228;
        }

        ++v226;
        ++v227;
        --v225;
      }

      while (v225);
    }

    v305 = v218;
    if (v308 >= 5)
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "After Region Check", v220, v221, v222, v284);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v230, v231, v232, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v233, v234, v235, v328);
      v224 = v311;
      v223 = v328;
    }

    if (v224)
    {
      v236 = v224;
      v237 = (__srcc + 16);
      do
      {
        if (*(v237 - 2) == 5)
        {
          v238 = cstdlib_strcmp(v30[*v237], "phon");
          v223 = v328;
          if (v238)
          {
            *(v237 - 1) = 3;
          }
        }

        v237 += 14;
        --v236;
      }

      while (v236);
    }

    v239 = __cc;
    if (__cc)
    {
      v240 = 0;
      v241 = v321;
      v242 = *v321;
      v243 = *v223;
      v244 = v305;
      do
      {
        if (v239 <= v240)
        {
          v245 = v240;
        }

        else
        {
          v245 = v240;
          while (v223[v245] == v243 && v241[v245] == v242)
          {
            v245 = (v245 + 1);
            if (v239 <= v245)
            {
              v246 = 0;
              goto LABEL_283;
            }
          }

          v246 = 1;
LABEL_283:
          if (v245 != v240)
          {
            v330 = 0;
            v329 = 0;
            v219 = v223[v240];
            if (v219 != 80)
            {
              __srce = v246;
              v247 = v242;
              insertDomainAndLang(a1, &v338, &v337, v241[v240], v219, *(v320 + 4 * v240), v240, v245, v30, &v330 + 1, &v330, &v329);
              LOBYTE(v246) = __srce;
              v242 = v247;
              v239 = __cc;
              v223 = v328;
              v14 = v248;
              v244 = v305;
              v241 = v321;
            }

            if ((v246 & 1) == 0)
            {
              goto LABEL_295;
            }

LABEL_289:
            if (v241[v245] != v242 || v223[v245] != v243)
            {
              v243 = v223[v245];
            }

            v242 = v241[v245];
            goto LABEL_295;
          }

          if (v246)
          {
            goto LABEL_289;
          }
        }

LABEL_295:
        v240 = v245;
      }

      while (v245 < v244);
    }

    if (v308 <= 4)
    {
      v250 = v337;
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "DUMP before update lingdb", v220, v221, v222, v284);
      v250 = v337;
      dumpTokDB(a1, a2, a3, v338, v337);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v251, v252, v253, __s);
      log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v254, v255, v256, v328);
    }

    if (!v250)
    {
LABEL_343:
      if (v308 >= 5)
      {
        dumpLingDB(a1, a2, a3, a4, __s, v26, "lingdb at end of langmap expansion", v222);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Map =%s", v278, v279, v280, v328);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Sent=%s", v281, v282, v283, __s);
      }

      goto LABEL_346;
    }

    v257 = 0;
    __srcd = v250;
    v258 = v338;
    *__cd = v338;
    v299 = v250;
    while (1)
    {
      v259 = (v258 + 28 * v257);
      v260 = *(v259 + 3);
      if (v260 == 1)
      {
        break;
      }

      if (v260 == 3)
      {
        if (*v259)
        {
          v262 = (*(a1[3] + 192))(a2, a3);
          goto LABEL_314;
        }
      }

      else if (v260 == 2)
      {
        v261 = v257;
        v312 = v258 + 28 * v257;
        do
        {
          if (--v261 < 0)
          {
            for (j = v257 + 1; v250 > j; ++j)
            {
              v264 = v258 + 28 * j;
              if (*(v264 + 12) != 3 && *v264)
              {
                v77 = (*(a1[3] + 88))(a2, a3);
                goto LABEL_309;
              }
            }

            v77 = (*(a1[3] + 72))(a2, a3, 3, a4, v340 + 2);
            if ((v77 & 0x80000000) != 0)
            {
              goto LABEL_345;
            }

            goto LABEL_322;
          }
        }

        while (*(v258 + 28 * v261 + 12) == 3);
        if (!*(v258 + 28 * v261))
        {
          log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33004, 0, v219, v259, v221, v222, v284);
          v14 = 2311069696;
          goto LABEL_346;
        }

        v77 = (*(a1[3] + 80))(a2, a3);
LABEL_309:
        if ((v77 & 0x80000000) != 0)
        {
          goto LABEL_345;
        }

LABEL_322:
        v77 = (*(a1[3] + 160))(a2, a3, HIWORD(v340[0]), 0, 1, *__cd + 28 * v257 + 8, &v339);
        if ((v77 & 0x80000000) != 0)
        {
          goto LABEL_345;
        }

        v306 = *__cd + 28 * v257;
        v77 = (*(a1[3] + 160))(a2, a3, HIWORD(v340[0]), 1, 1, v306 + 2, &v339);
        if ((v77 & 0x80000000) != 0)
        {
          goto LABEL_345;
        }

        v77 = (*(a1[3] + 160))(a2, a3, HIWORD(v340[0]), 2, 1, *__cd + 28 * v257 + 4, &v339);
        if ((v77 & 0x80000000) != 0)
        {
          goto LABEL_345;
        }

        *v312 = HIWORD(v340[0]);
        if (*(*__cd + 28 * v257 + 24))
        {
          v77 = (*(a1[3] + 160))(a2, a3);
          if ((v77 & 0x80000000) != 0)
          {
            goto LABEL_345;
          }
        }

        v265 = cstdlib_strlen(v30[v321[*(v306 + 2)]]);
        v266 = cstdlib_strlen("_latin");
        v267 = heap_Calloc(*(*a1 + 8), 1, (v265 + v266 + 1) + 1);
        if (!v267)
        {
          goto LABEL_348;
        }

        v268 = v267;
        if (v321[*(v312 + 2)])
        {
          cstdlib_strcpy(v267, v30[v321[*(v312 + 2)]]);
          v269 = v268;
          v270 = *__cd + 28 * v257;
          v272 = *(v270 + 18);
          v271 = (v270 + 18);
          if (v272 != 78)
          {
            cstdlib_strcat(v269, "_");
            v273 = *(v29 + 8 * *v271);
            if (!v273)
            {
              v273 = "latin";
            }

            cstdlib_strcat(v269, v273);
          }
        }

        else
        {
          v274 = *(v312 + 18);
          if (v274 == 78)
          {
            cstdlib_strcpy(v267, *v30);
            v269 = v268;
          }

          else
          {
            v275 = *(v29 + 8 * v274);
            v269 = v267;
            if (!v275)
            {
              v275 = "latin";
            }

            cstdlib_strcpy(v267, v275);
          }
        }

        v313 = *(a1[3] + 160);
        v276 = HIWORD(v340[0]);
        v277 = cstdlib_strlen(v269);
        v14 = v313(a2, a3, v276, 4, (v277 + 1), v269, &v339);
        heap_Free(*(*a1 + 8), v269);
        v250 = v299;
        v258 = *__cd;
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_346;
        }
      }

LABEL_342:
      if (++v257 == __srcd)
      {
        goto LABEL_343;
      }
    }

    v262 = (*(a1[3] + 160))(a2, a3, *v259, 2, 1, v259 + 2, &v339);
LABEL_314:
    v258 = *__cd;
    v14 = v262;
    if ((v262 & 0x80000000) != 0)
    {
      goto LABEL_346;
    }

    goto LABEL_342;
  }

  v14 = 2311069706;
  v288 = v20;
  v291 = 5;
  v307 = 1;
  while (1)
  {
    v75 = v74;
    v76 = v52 + 28 * v74;
    *v76 = v73;
    *(v76 + 12) = 0;
    *(v76 + 16) = 0;
    *(v76 + 18) = 32;
    v300 = (v76 + 18);
    *(v76 + 24) = 0;
    __srca = (v76 + 24);
    *(v76 + 20) = 0;
    v77 = (*(a1[3] + 168))(a2, a3, HIWORD(v340[0]), 1, 1, v76 + 2, v340);
    if ((v77 & 0x80000000) != 0 || (v77 = (*(a1[3] + 168))(a2, a3, HIWORD(v340[0]), 2, 1, v52 + 28 * v75 + 4, v340), (v77 & 0x80000000) != 0) || (v309 = v52, v78 = v52 + 28 * v75, v77 = (*(a1[3] + 168))(a2, a3, HIWORD(v340[0]), 0, 1, v78 + 8, v340), (v77 & 0x80000000) != 0))
    {
LABEL_345:
      v14 = v77;
      goto LABEL_346;
    }

    if (*(v78 + 8) == 5)
    {
      break;
    }

    LOWORD(v86) = v337;
LABEL_120:
    v120 = v86 + 1;
    v337 = v120;
    v121 = (*(a1[3] + 120))(a2, a3, HIWORD(v340[0]), v340 + 2);
    v74 = v120;
    v73 = HIWORD(v340[0]);
    if (v121)
    {
      v122 = 1;
    }

    else
    {
      v122 = HIWORD(v340[0]) == 0;
    }

    v52 = v309;
    if (v122)
    {
      goto LABEL_133;
    }
  }

  HIWORD(v330) = 0;
  if (((*(a1[3] + 184))(a2, a3, HIWORD(v340[0]), 6, &v330 + 2) & 0x80000000) == 0 && HIWORD(v330) == 1)
  {
    *__srca = 1;
  }

  v77 = (*(a1[3] + 176))(a2, a3, HIWORD(v340[0]), 4, &v336, v340);
  if ((v77 & 0x80000000) != 0)
  {
    goto LABEL_345;
  }

  v79 = a1[16];
  if (!v79)
  {
    goto LABEL_346;
  }

  v286 = cstdlib_strstr(v79, v336);
  v80 = cstdlib_strlen(v336);
  v81 = cstdlib_strlen(*v30);
  v82 = *(*a1 + 8);
  v294 = v80;
  if (v81 <= v80)
  {
    v85 = v80 + 1;
  }

  else
  {
    v83 = *(*a1 + 8);
    v84 = cstdlib_strlen(*v30);
    v82 = v83;
    v52 = v309;
    v85 = (v84 + 1);
  }

  __srcb = heap_Calloc(v82, 1, v85);
  if (!__srcb)
  {
    goto LABEL_351;
  }

  if (cstdlib_strcmp(v336, "phon") && cstdlib_strcmp(v336, "internal-nuance-system-norm") && cstdlib_strcmp(v336, "prompt") && (!cstdlib_strcmp(v336, "latin") || (!v286 || v286[cstdlib_strlen(v336)] != 124) && !cstdlib_strchr(v336, 95)))
  {
    cstdlib_strcpy(__srcb, *v30);
    v99 = cstdlib_toupper(*v336);
    *v300 = v99;
    *(v29 + 8 * v99) = v336;
    goto LABEL_95;
  }

  cstdlib_strcpy(__srcb, v336);
  *v300 = 78;
  v94 = v80;
  if (!v80)
  {
LABEL_95:
    v98 = v328;
    goto LABEL_96;
  }

  if (*v336 == 95)
  {
    LODWORD(v95) = 0;
    v96 = 0;
LABEL_92:
    v295 = v95 + 1;
    v310 = v94;
    v97 = cstdlib_toupper(v336[v295]);
    *v300 = v97;
    *(v29 + 8 * v97) = &v336[v295];
    cstdlib_memset(&__srcb[v96], 0, v310 - v95);
    v52 = v338;
    goto LABEL_95;
  }

  LODWORD(v95) = 0;
  while (1)
  {
    v95 = v95 + 1;
    if (v95 >= v294)
    {
      break;
    }

    v96 = v95;
    if (v336[v95] == 95)
    {
      goto LABEL_92;
    }
  }

  v98 = v328;
  v52 = v309;
LABEL_96:
  v301 = v337;
  v100 = v52 + 28 * v337;
  v101 = *(v100 + 4);
  if (v101 > v288)
  {
    log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 0, 0, "Conflicting depes rules in fe_puncsptn - possible FE data error", v91, v92, v93, v284);
    heap_Free(*(*a1 + 8), __srcb);
    v14 = 2311069962;
    goto LABEL_346;
  }

  v102 = *(v100 + 2);
  if (v102 < v101)
  {
    v103 = *(v100 + 18);
    do
    {
      v98[v102++] = v103;
    }

    while (v102 < *(v100 + 4));
  }

  if (v307)
  {
    v104 = 0;
    while (LH_stricmp(v30[v104], __srcb))
    {
      if (v307 == ++v104)
      {
        v106 = v320;
        v105 = v321;
        goto LABEL_108;
      }
    }

    *(v52 + 28 * v301 + 16) = v104;
    heap_Free(*(*a1 + 8), __srcb);
    __srcb = 0;
  }

  else
  {
    LOWORD(v104) = 0;
  }

  v106 = v320;
  v105 = v321;
  if (v104 != v307)
  {
    v109 = v338;
    v86 = v337;
LABEL_114:
    v309 = v109;
    v111 = (v109 + 28 * v86);
    v113 = v111 + 1;
    v112 = v111[1];
    if (v111[1] < v111[2])
    {
      v114 = v111[8];
      v115 = *(v309 + 28 * v86 + 24);
      do
      {
        v105[v112] = v114;
        *(v106 + 4 * v112++) = v115;
      }

      while (v112 < v111[2]);
    }

    if (!cstdlib_strcmp(v30[v111[8]], "phon"))
    {
      v116 = *v113;
      v117 = v309 + 28 * v86;
      v119 = *(v117 + 4);
      v118 = (v117 + 4);
      if (v116 < v119)
      {
        do
        {
          v328[v116++] = 80;
        }

        while (v116 < *v118);
      }
    }

    goto LABEL_120;
  }

LABEL_108:
  v107 = v307;
  v108 = v291;
  if (v307 < v291)
  {
    v30[v307] = __srcb;
    v109 = v338;
    *&v338[28 * v301 + 16] = v307;
LABEL_113:
    v291 = v108;
    v86 = v337;
    *(v109 + 28 * v337 + 16) = v107;
    v307 = v107 + 1;
    goto LABEL_114;
  }

  v110 = heap_Realloc(*(*a1 + 8), v30, 8 * v291 + 48);
  if (v110)
  {
    v108 = (v291 + 5);
    v107 = v307;
    v106 = v320;
    *(v110 + 8 * v307) = __srcb;
    v109 = v338;
    v30 = v110;
    v105 = v321;
    goto LABEL_113;
  }

  if (__srcb)
  {
    heap_Free(*(*a1 + 8), __srcb);
  }

LABEL_351:
  log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v87, v88, v89, v90, v284);
LABEL_346:
  v28 = v307;
LABEL_128:
  heap_Free(*(*a1 + 8), v321);
  if (v320)
  {
    heap_Free(*(*a1 + 8), v320);
  }

LABEL_130:
  heap_Free(*(*a1 + 8), v328);
LABEL_24:
  if (v338)
  {
    heap_Free(*(*a1 + 8), v338);
    v338 = 0;
    v337 = 0;
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

size_t hlp_AdjustMarkersToWordBoundaries(size_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = result;
    v4 = *(a2 + 12);
    v5 = (a2 + 44);
    v6 = a3 - 1;
    do
    {
      result = hlp_PositionToWordBoundary(v3, (*v5 - v4));
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
  result = cstdlib_strlen(a1);
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
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s", a6, a7, a8, a7);
  result = (*(a1[3] + 104))(a2, a3, 3, a4, &v30 + 2);
  if ((result & 0x80000000) == 0)
  {
    for (i = HIWORD(v30); HIWORD(v30); i = HIWORD(v30))
    {
      result = (*(a1[3] + 168))(a2, a3, i, 1, 1, &v30, &v28);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v30), 2, 1, &v29, &v28);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v30), 0, 1, &v27, &v28);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v27 - 5 <= 1)
      {
        result = (*(a1[3] + 176))(a2, a3, HIWORD(v30), 4, &v24, &v28);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v27 == 6)
        {
          result = (*(a1[3] + 176))(a2, a3, HIWORD(v30), 3, &v23, &v28);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (((*(a1[3] + 184))(a2, a3, HIWORD(v30), 6, &v26 + 2) & 0x80000000) == 0 && HIWORD(v26) == 1)
          {
            result = (*(a1[3] + 176))(a2, a3, HIWORD(v30), 6, &v25, &v26);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      cstdlib_strncpy(a6, (a5 + v30), v29 - v30);
      a6[v29 - v30] = 0;
      if (v27 > 4)
      {
        if (v27 == 5)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d ESC(%-9s) %s", v16, v17, v18, HIWORD(v30));
        }

        else if (v27 == 6)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s %s", v16, v17, v18, HIWORD(v30));
        }
      }

      else
      {
        v22 = 0;
        (*(a1[3] + 264))(a2, a3, v27, &v22);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s", v19, v20, v21, HIWORD(v30));
      }

      result = (*(a1[3] + 120))(a2, a3, HIWORD(v30), &v30 + 2);
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t dumpTokDB(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v7 = result;
    v8 = 0;
    v9 = a5;
    v10 = a4 + 12;
    do
    {
      v15 = 0;
      (*(v7[3] + 264))(a2, a3, *(v10 - 4), &v15);
      v14 = *(*v7 + 32);
      if (*(v10 - 4) == 5)
      {
        result = log_OutText(v14, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s %s %c %s", v11, v12, v13, v8);
      }

      else
      {
        result = log_OutText(v14, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s", v11, v12, v13, v8);
      }

      ++v8;
      v10 += 28;
    }

    while (v9 != v8);
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
            v24 = cstdlib_strlen(__s);
            v26 = *(v20 + 4);
            v25 = (v20 + 4);
            v43 = (v26 + v24 - v14[2]) + 1;
            v27 = heap_Calloc(*(*a1 + 8), 1, v43);
            if (!v27)
            {
              log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v28, v29, v30, v31, v42);
              return 2311069706;
            }

            v32 = v27;
            cstdlib_strcpy(v27, __s);
            cstdlib_strncat(v32, (a6 + v14[2]), *v25 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_LANGMAP field from %s to %s", v33, v34, v35, __s);
            __dst = v32;
            v36 = (*(a1[3] + 160))(a2, a3, *v14, 6, v43, v32, &v46);
            if ((v36 & 0x80000000) != 0)
            {
              goto LABEL_34;
            }

            v12 = 2311069696;
            if (v46 != v43)
            {
              goto LABEL_35;
            }

            cstdlib_strcpy(__dst, __src);
            cstdlib_strncat(__dst, (a6 + v14[2]), *v25 - v14[2]);
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
            v14[2] = *v25;
            v12 = (*(a1[3] + 160))(a2, a3, *v14, 2, 1, v25, &v46);
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

double insertDomainAndLang(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, __int16 a4, char a5, int a6, uint64_t a7, __int16 a8, uint64_t a9, __int16 *a10, __int16 *a11, _WORD *a12)
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
    if (*a3 == v21)
    {
      log_OutText(v32, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] at end", v28, v29, v30, a7);
      v33 = a5;
      v34 = v21;
    }

    else
    {
      v36 = a5;
      v34 = v24;
      v45 = v36;
      v46 = a8;
      log_OutText(v32, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] before rec %d", v28, v29, v30, a7);
      if ((*a3 + 1) > v24)
      {
        v37 = (*a3 + 1) - 1;
        v38 = (v31 + 28 * (*a3 + 1));
        v39 = (*a3 + 1) - 1;
        do
        {
          cstdlib_memcpy(v38, (v31 + 28 * v37--), 0x1CuLL);
          v38 -= 28;
        }

        while (v24 < v39--);
      }

      cstdlib_memset((v31 + 28 * v24), 0, 0x1CuLL);
      v41 = *a10;
      if (v41 >= v24)
      {
        *a10 = v41 + 1;
      }

      v42 = *a11;
      if (v42 >= v24)
      {
        *a11 = v42 + 1;
      }

      LOWORD(v21) = v24;
      v33 = v45;
      a8 = v46;
    }

    v43 = v31 + 28 * v34;
    *v43 = 0;
    *(v43 + 2) = a7;
    *(v43 + 4) = a8;
    *(v43 + 16) = a4;
    *(v43 + 18) = v33;
    *&result = 0x200000005;
    *(v43 + 8) = 0x200000005;
    *(v43 + 24) = a6;
    *a12 = v21;
    ++*a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v27, v28, v29, v30, v44);
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

size_t hlp_PositionToWordBoundary(const char *a1, size_t a2)
{
  v4 = cstdlib_strlen(a1);
  if (v4 > a2)
  {
    a2 = a2;
    while (cstdlib_strchr(" _", a1[a2]))
    {
      if (v4 == ++a2)
      {
        a2 = v4;
        break;
      }
    }
  }

  if (a2)
  {
    a2 = a2;
    do
    {
      if (cstdlib_strchr(",.", a1[a2]))
      {
        break;
      }

      if (!cstdlib_strchr(" _", a1[a2]))
      {
        break;
      }

      --a2;
    }

    while (a2);
  }

  return a2;
}

uint64_t fe_puncsptn_v2_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v31 = 0;
  v32 = 0;
  v5 = 2702188551;
  v30 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v32[6], "LINGDB", &v31);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v32[6], "FE_DCTLKP", &v30);
    if ((Object & 0x80000000) != 0)
    {
      v29 = Object;
      objc_ReleaseObject(v32[6], "LINGDB");
      return v29;
    }

    v11 = heap_Alloc(v32[1], 176);
    if (!v11)
    {
      log_OutPublic(v32[4], "FE_PUNCSPTN_V2", 76000, 0, v12, v13, v14, v15, v30);
      objc_ReleaseObject(v32[6], "LINGDB");
      objc_ReleaseObject(v32[6], "FE_DCTLKP");
      return 2702188554;
    }

    v16 = v11;
    *v11 = v32;
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    *(v11 + 24) = *(v31 + 8);
    v17 = v30;
    v18 = *(v30 + 8);
    *(v11 + 48) = v18;
    v19 = *(v17 + 16);
    *(v11 + 160) = 0;
    v20 = (v11 + 160);
    *(v11 + 32) = v19;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    *(v11 + 144) = 0;
    *(v11 + 168) = "FE_PUNCSPTN_V2";
    v33 = 0;
    v21 = (*(v18 + 88))(*(v11 + 32), *(v11 + 40), &v33 + 4, &v33);
    if ((v21 & 0x80000000) != 0 || (v21 = loc_reload_statpunc_data(v16), (v21 & 0x80000000) != 0))
    {
      v5 = v21;
    }

    else
    {
      *(v16 + 72) = heap_Alloc;
      *(v16 + 80) = heap_Calloc;
      *(v16 + 88) = heap_Realloc;
      *(v16 + 96) = heap_Free;
      v22 = OOCAllocator_Con(v16 + 104, (v16 + 72), *(*v16 + 8));
      v23 = LH_ERROR_to_VERROR(v22);
      if ((v23 & 0x80000000) != 0)
      {
        v5 = v23;
        log_OutPublic(v32[4], "FE_PUNCSPTN_V2", 76002, 0, v24, v25, v26, v27, v30);
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

uint64_t loc_reload_statpunc_data(uint64_t a1)
{
  v18 = 0;
  v16 = 0;
  loc_deallocate_statpunc_v2_data(a1);
  v17 = 0;
  IGTree = (*(*(a1 + 48) + 96))(*(a1 + 32), *(a1 + 40), "fecfg", "statpunc", &v16, &v17, &v18);
  if ((IGTree & 0x80000000) == 0 && v17)
  {
    v3 = heap_Alloc(*(*a1 + 8), 48 * v17);
    *(a1 + 56) = v3;
    if (v3)
    {
      if (v17)
      {
        for (i = 0; i < v17; ++i)
        {
          v9 = *(v16 + 8 * i);
          v10 = cstdlib_strchr(v9, 124);
          if (v10)
          {
            *v10 = 0;
            v11 = v10 + 1;
            cstdlib_strcpy((*(a1 + 56) + 48 * *(a1 + 64)), v9);
            v12 = cstdlib_strchr(v11, 124);
            if (v12)
            {
              *v12 = 0;
              v13 = v12 + 1;
              cstdlib_strcpy((*(a1 + 56) + 48 * *(a1 + 64) + 4), v11);
              v14 = cstdlib_strchr(v13, 124);
              if (v14)
              {
                *v14 = 0;
                IGTree = statpunc_v2_readIGTree(*(a1 + 8), *(a1 + 16), *a1, v13, *(a1 + 56) + 48 * *(a1 + 64));
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
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v4, v5, v6, v7, v16);
      return 2702188554;
    }
  }

  return IGTree;
}