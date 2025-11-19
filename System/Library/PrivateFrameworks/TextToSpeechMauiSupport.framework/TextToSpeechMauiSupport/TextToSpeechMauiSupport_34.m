uint64_t resolveTokensUsingPriorityList(unsigned __int16 *a1, uint64_t a2)
{
  v44 = 0;
  v45 = 0;
  v43 = 0;
  DomainDefBlockInfo = resetSolutionList(a2, *(a2 + 386));
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    if (*(a2 + 386))
    {
      v10 = 0;
      v11 = 0;
      v12 = 4;
      while (1)
      {
        DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a2, *(*(*(a2 + 376) + 8 * v10) + 104), &v43, v4, v5, v6, v7, v8);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          break;
        }

        v13 = *(v43 + 8);
        *(*(a2 + 360) + v12) = v13;
        if (v13 > v11)
        {
          v11 = v13;
        }

        ++v10;
        v14 = *(a2 + 386);
        v12 += 12;
        if (v10 >= v14)
        {
          if (!*(a2 + 386))
          {
            goto LABEL_35;
          }

          v15 = 0;
          v16 = 0;
          v17 = (*(a2 + 360) + 4);
          v18 = 999;
          do
          {
            v19 = *v17;
            v17 += 3;
            if (v19 == v11)
            {
              ++v16;
              v18 = v15;
            }

            ++v15;
          }

          while (v14 != v15);
          if (v16 == 1)
          {
            *a1 = v18;
            log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "priority list resolution by domain type : match %d", v6, v7, v8, v18);
            return 0;
          }

          v42 = a1;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 999;
          do
          {
            *(*(a2 + 360) + 12 * v20) = 999;
            v24 = *(*(a2 + 376) + 8 * v20);
            FEData_blockData_newGetDomainEntry(a2, *(v24 + 104), *(v24 + 106), &v45, v5, v6, v7, v8);
            if (*(v45 + 8) == 1)
            {
              FEData_blockData_newGetPriorityList(a2, *(*(*(a2 + 376) + 8 * v20) + 104), *(v45 + 12), &v44, v5, v6, v7, v8);
              if (!v44 || v44 == v22)
              {
                v22 = v44;
              }

              else
              {
                log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "using priority list from match %d, to resolve", v6, v7, v8, v21);
                v22 = v44;
                if (*(a2 + 386))
                {
                  v25 = 0;
                  v26 = 0;
                  v27 = v44[4];
                  do
                  {
                    if (v44[4])
                    {
                      v28 = 0;
                      v29 = *(*(*(a2 + 376) + 8 * v25) + 88);
                      v30 = (*v44 + 4);
                      while (*(v29 + 2) != *(v30 - 1) || *(v29 + 4) != *v30)
                      {
                        ++v28;
                        v30 += 6;
                        if (v44[4] == v28)
                        {
                          goto LABEL_29;
                        }
                      }

                      log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "token [%d] priority = %d", v6, v7, v8, v26);
                      if (v27 > v28)
                      {
                        v27 = v28;
                        v23 = v25;
                        *(*(a2 + 360) + 12 * v20) = v25;
                      }
                    }

LABEL_29:
                    v26 = ++v25;
                  }

                  while (v25 < *(a2 + 386));
                  v22 = v44;
                }
              }
            }

            ++v20;
            v31 = *(a2 + 386);
            v21 = v20;
          }

          while (v20 < v31);
          if (v23 == 999)
          {
            a1 = v42;
            goto LABEL_35;
          }

          if (*(a2 + 386))
          {
            v33 = 0;
            v34 = 0;
LABEL_39:
            v35 = (*(a2 + 360) + 12 * v33);
            do
            {
              v37 = *v35;
              v35 += 6;
              v36 = v37;
              if (v37 != 999 && v36 != v23)
              {
                log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "priority lists conflict in resolution : solution %d and %d", v6, v7, v8, v36);
                ++v33;
                v34 = 1;
                v31 = *(a2 + 386);
                if (v33 >= v31)
                {
                  *v42 = v23;
                  goto LABEL_50;
                }

                goto LABEL_39;
              }

              ++v33;
            }

            while (v33 < v31);
            *v42 = v23;
            if ((v34 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_50:
            v39 = *(*a2 + 32);
            v40 = *(a2 + 184);
            v41 = "priority list resolution : conflict found, so choosing match %d";
          }

          else
          {
            *v42 = v23;
LABEL_52:
            v39 = *(*a2 + 32);
            v40 = *(a2 + 184);
            v41 = "priority list resolution : match %d";
          }

          log_OutText(v39, v40, 5, 0, v41, v6, v7, v8, v23);
          return DomainDefBlockInfo;
        }
      }
    }

    else
    {
LABEL_35:
      *a1 = 0;
      log_OutText(*(*a2 + 32), *(a2 + 184), 5, 0, "no priority list resolution : return default match %d", v6, v7, v8, 0);
    }
  }

  return DomainDefBlockInfo;
}

uint64_t tokenizer_ResolveMatches(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v38);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (*(a1 + 548) == 1 && FERuntimeData_GetNumMatches(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    FERuntimeData_DumpMatches(a1, "Dump at start of ResolveMatches", 0, a4, a5, a6, a7, a8);
  }

  v42 = 0;
  if (*(a1 + 312))
  {
    v9 = 0;
    v10 = 0;
    matched = 0;
    while (1)
    {
      FERuntimeData_GetKeyAtPos(a1, v10, &v43, &v41);
      a2 = v43;
      if (v43 && v9 == *v43)
      {
        FERuntimeData_FindLongestMatch(a1, v43, &v44);
        LOWORD(v42) = *v43;
        HIWORD(v42) = v44;
        FERuntimeData_DeleteSubsumedkeys(a1, v43, v44);
        AllMatchesAtKey = FERuntimeData_GetAllMatchesAtKey(a1, &v42);
        if ((AllMatchesAtKey & 0x80000000) != 0)
        {
          return AllMatchesAtKey;
        }

        v16 = *(a1 + 386);
        if (v16 >= 2)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "applying token priority lists to resolve %d token clashes at position %d,%d", v13, v14, v15, v16);
          if (*(a1 + 548) == 1 && *(a1 + 386))
          {
            v22 = 0;
            do
            {
              FEData_blockData_getTokenData(a1, *(*(*(a1 + 376) + 8 * v22) + 88), &v40, v17, v18, v19, v20, v21);
              log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "[%d] = token %s", v23, v24, v25, v22++);
            }

            while (v22 < *(a1 + 386));
          }

          AllMatchesAtKey = resolveTokensUsingPriorityList(&v39, a1);
          if ((AllMatchesAtKey & 0x80000000) != 0)
          {
            return AllMatchesAtKey;
          }

          v29 = *(a1 + 386);
          if (v29)
          {
            v30 = 0;
            v31 = v39;
            do
            {
              if (v31 != v30)
              {
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "deleting match %d", v26, v27, v28, v30);
                FERuntimeData_DeleteMatch(a1, &v42, *(*(a1 + 376) + 8 * v30));
                v29 = *(a1 + 386);
              }

              ++v30;
            }

            while (v30 < v29);
          }
        }

        matched = resetMatchList(a1, 0);
        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }

        v10 = v44;
      }

      else
      {
        ++v10;
      }

      v43 = 0;
      v9 = v10;
      if (v10 >= *(a1 + 312))
      {
        goto LABEL_32;
      }
    }
  }

  matched = 0;
LABEL_32:
  if (*(a1 + 548) == 1)
  {
    if (FERuntimeData_GetNumMatches(a1, a2, a3, a4, a5, a6, a7, a8))
    {
      FERuntimeData_DumpMatches(a1, "Dump at end of ResolveMatches", 0, v33, v34, v35, v36, v37);
    }
  }

  return matched;
}

uint64_t addBTokMatchToList(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 634);
  if (*(a1 + 634))
  {
    v5 = *(a1 + 624);
    if (v4 != *(a1 + 632))
    {
LABEL_8:
      v13 = *(a1 + 634);
      *(v5 + 4 * v13) = *a2;
      *(a1 + 634) = v13 + 1;
      return 0;
    }

    v6 = heap_Realloc(*(*a1 + 8), v5, 4 * v4 + 128);
    if (*(a1 + 624))
    {
      v5 = v6;
      *(a1 + 624) = v6;
      v11 = *(a1 + 632) + 32;
LABEL_7:
      *(a1 + 632) = v11;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = heap_Calloc(*(*a1 + 8), 1, 128);
    *(a1 + 624) = v12;
    if (v12)
    {
      v5 = v12;
      v11 = 32;
      goto LABEL_7;
    }
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v7, v8, v9, v10, v15);

  return TOKENTNERROR(10);
}

uint64_t tokenizer_apply_regex_LongestMatch(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 44);
  while (!*(*(a2 + 8) + 48))
  {
    v11 = nuance_pcre_exec2(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v10, *(a2 + 64), v28, 100, CALLOUTCHECK);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = nuance_pcre_ErrorToLhError(v11);
      v14 = v12;
      if (v12 >> 20 != 2213)
      {
        goto LABEL_9;
      }

      if ((v12 & 0x1FFF) != 0x14)
      {
        if ((v12 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(*a1 + 32), a1[23], 11002, "%s%x%s%s", v13, a6, a7, a8, "lhError");
        }

        else
        {
          log_OutPublic(*(*a1 + 32), a1[23], 11027, "%s%x%s%s", v13, a6, a7, a8, "lhError");
        }

        return v14;
      }

      break;
    }
  }

  v14 = 0;
LABEL_9:
  v15 = *(a2 + 8);
  if ((*(v15 + 48) & 0x80000000) != 0)
  {
    return *(v15 + 48);
  }

  v16 = *(v15 + 8);
  if (*v16 || v16[1])
  {
    v27 = 1;
    if (*(v15 + 44) == 1)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", a6, a7, a8, *(a2 + 24));
      v27 = 1;
    }

    else
    {
      v14 = validateCurrentMatch(a1, *v15, v16, a1[38], *(v15 + 24), *(a2 + 48), &v27, a8);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (v27 != 1)
      {
        *(**(a2 + 8) + 40) = 0;
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", v19, v20, v21, *(a2 + 24));
        return v14;
      }
    }

    v22 = *(a2 + 8);
    v24 = *v22;
    v23 = *(v22 + 8);
    v24[11] = *(a2 + 48);
    v14 = FERuntimeData_AddMatch(a1, v23, v24, v17, v18, v19, v20, v21);
    if ((v14 & 0x80000000) == 0)
    {
      v25 = *(a2 + 8);
      if (*(*(*v25 + 11) + 8) == 1)
      {
        return addBTokMatchToList(a1, v25[1]);
      }
    }
  }

  return v14;
}

uint64_t CALLOUTCHECK(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  if ((v8[6] & 0x80000000) == 0)
  {
    v10 = *v8;
    v11 = v8[1];
    if (*(v8 + 20))
    {
      v12 = *(v8 + 20) + 1;
      *(a1 + 36) = v12;
    }

    else
    {
      v12 = *(a1 + 36);
    }

    log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT top=%d: (numsubmatches=%d) (match=%d,%d) token=%s", a6, a7, a8, v12);
    if (!v11[1] && !*v11)
    {
      goto LABEL_16;
    }

    if (*(a1 + 28) < v11[1])
    {
      log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT Match invalidated as start position %d is <= key to position %d", v13, v14, v15, *(a1 + 28));
      return 1;
    }

    v16 = *(*v8 + 88);
    LODWORD(__src[0]) = 0;
    log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT non-overlapping longestMatch found...validating...", v13, v14, v15, v60);
    v18 = validateCurrentMatch(v8[4], *v8, v8[1], v8[2], v8[3], v16, __src, v17);
    if (v18 < 0)
    {
LABEL_34:
      *(v8 + 12) = v18;
      return 1;
    }

    v24 = v8[4];
    if (LODWORD(__src[0]) == 1)
    {
      v18 = FERuntimeData_AddMatch(v24, v8[1], *v8, v19, v20, v21, v22, v23);
      if (v18 < 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      log_OutText(*(*v24 + 32), v24[23], 6, 0, "CALLOUT token invalidated", v21, v22, v23, v61);
    }

    *v8[1] = 0;
    *(v8 + 11) = 0;
    *(*v8 + 40) = 0;
    if (!*v11 || v11[1] - *v11 < *(a1 + 32) - *(a1 + 28))
    {
LABEL_16:
      v66 = 0u;
      v67 = 0u;
      memset(__src, 0, sizeof(__src));
      v63 = 1;
      log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - Longest Match Found %d,%d (num submatches=%d)...validating...", v13, v14, v15, *(a1 + 28));
      v30 = *(a1 + 28);
      v31 = *(a1 + 32);
      v64[0] = v30;
      v64[1] = v31;
      if (*(v8 + 26) > v30 || *(v8 + 27) < v31)
      {
        v32 = v8[4];
        v33 = *(*v32 + 32);
        v34 = v32[23];
        v35 = "CALLOUT - this match is out of domain...";
LABEL_19:
        log_OutText(v33, v34, 6, 0, v35, v27, v28, v29, v62);
        return 1;
      }

      v36 = v8[4];
      if (*(v36 + 960) == 1 && blockedByBtok(v36, v30, v31, v25, v26, v27, v28, v29) == 1)
      {
        v37 = v8[4];
        v33 = *(*v37 + 32);
        v34 = v37[23];
        v35 = "CALLOUT - blocked by prior btok...";
        goto LABEL_19;
      }

      v38 = *(a1 + 36);
      v39 = v38 - 1;
      v40 = *v8;
      v41 = *(*v8 + 88);
      *(&v66 + 1) = v41;
      DWORD2(v67) = *(v40 + 104);
      BYTE2(v66) = v38 - 1;
      WORD4(__src[2]) = 0;
      if (v38 != 1 && v38 >= 2)
      {
        v42 = 0;
        v43 = 2 * v38;
        v44 = *(a1 + 8);
        v45 = 2;
        do
        {
          v46 = (v44 + 4 * v45);
          v47 = &__src[2] + 2 * v42 + 5;
          *v47 = *v46;
          v47[1] = v46[1];
          ++v42;
          v45 += 2;
        }

        while (v43 > v45);
      }

      v18 = validateCurrentMatch(v8[4], __src, v64, v8[2], v8[3], v41, &v63, v29);
      if (v18 < 0)
      {
        goto LABEL_34;
      }

      v51 = v63;
      if (v63 == 1)
      {
        *(v10 + 40) = WORD4(__src[2]);
        cstdlib_memcpy(v10, __src, 0x28uLL);
        v51 = v63;
      }

      if (!v51 && WORD4(__src[2]))
      {
        WORD4(__src[2]) = 0;
LABEL_42:
        log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - INVALIDATING this longest match...", v48, v49, v50, v62);
        *v8[1] = 0;
        *(v8 + 11) = 0;
        *(*v8 + 40) = 0;
        return 1;
      }

      if (!v51)
      {
        goto LABEL_42;
      }

      log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - VALIDATING longest match. saving...", v48, v49, v50, v62);
      *v11 = *(a1 + 28);
      v11[1] = *(a1 + 32);
      *(v8 + 11) = 1;
      if (v39)
      {
        *(v10 + 82) = v39;
        if (*(a1 + 36) >= 2)
        {
          v56 = 0;
          v57 = 2;
          do
          {
            v58 = (*(a1 + 8) + 4 * v57);
            v59 = (v10 + 42 + 4 * v56);
            *v59 = *v58;
            v59[1] = v58[1];
            log_OutText(*(*v8[4] + 32), *(v8[4] + 184), 6, 0, "CALLOUT - setting longest match submatch[%d] = %d,%d", v53, v54, v55, v56++);
            v57 += 2;
          }

          while (2 * *(a1 + 36) > v57);
        }
      }
    }
  }

  return 1;
}

uint64_t tokenizer_CheckGreaterThan(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_GREATERTHAN( %d, %s) = ", a6, a7, a8, *(*(a1 + 328) + 40));
  }

  v25 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v25, a3, a4, a5, a6, a7, a8))
  {
    if (v25 == -1 && HIWORD(v25) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v12, v13, v14, v24);
      }

      v18 = *(*(a1 + 328) + 8);
      v17 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v25, &v26, v10, v11, v12, v13, v14))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v26 + 1);
      v16 = v26 > HIWORD(v26);
      *a2 = v16;
      if (v16)
      {
        v17 = "TRUE";
      }

      else
      {
        v17 = "FALSE";
      }

      v18 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v18 = *(*(a1 + 328) + 8);
    v17 = "FALSE";
  }

  v22 = add2StringV2(a1, v18, v17);
  if ((v22 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v19, v20, v21, **(*(a1 + 328) + 8));
  }

  return v22;
}

uint64_t tokenizer_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen Begin", a6, a7, a8, v48);
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
        v22 = heap_Calloc(*(v20 + 8), 1, 56);
        *(*v14 + 8) = v22;
        v20 = *a1;
        if (v22)
        {
          v23 = heap_Calloc(*(v20 + 8), 1, 4);
          *(*(*v14 + 8) + 8) = v23;
          if (v23)
          {
            *v23 = 0;
            v24 = heap_Calloc(*(*a1 + 8), 1, 112);
            v25 = *v14;
            v26 = *(*v14 + 8);
            *v26 = v24;
            if (v24)
            {
              *(v24 + 88) = 0;
              *(v26 + 40) = 0;
              *(v26 + 48) = 0;
              *(v26 + 16) = 0;
              *(v26 + 24) = 0;
              v27 = *v25;
              *v27 |= 4uLL;
              v27[3] = v26;
              v51 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : InitCheckFunctions Begin", v17, v18, v19, v49);
              Map = FEFunctionMap_GetMap(a1, &v51);
              if ((Map & 0x80000000) != 0)
              {
                v39 = Map;
              }

              else
              {
                v29 = &off_287EECB60;
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
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : InitCheckFunctions End (%x)", v36, v37, v38, v39);
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
    v39 = TOKENTNERROR(10);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen End (%x)", v45, v46, v47, v39);
      return v39;
    }

LABEL_18:
    tokenizer_loc_ObjClose_0(a1, v41, v42, v43, v44, v45, v46, v47);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v49);

  return TOKENTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : loc ObjClose Begin", a6, a7, a8, v16);
  v10 = *v9;
  if (*v9)
  {
    v11 = v10[1];
    if (v11)
    {
      if (v11[1])
      {
        heap_Free(*(*a1 + 8), v11[1]);
        v11 = *(*v9 + 8);
        v11[1] = 0;
      }

      if (*v11)
      {
        heap_Free(*(*a1 + 8), *v11);
        v11 = *(*v9 + 8);
        *v11 = 0;
      }

      heap_Free(*(*a1 + 8), v11);
      v10 = *v9;
      *(*v9 + 8) = 0;
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
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : loc ObjClose End (%x)", v12, v13, v14, 0);
}

uint64_t tokenizer_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjClose Begin", a6, a7, a8, v21);
    tokenizer_loc_ObjClose_0(a1, v10, v11, v12, v13, v14, v15, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : ObjOpen End (%x)", v17, v18, v19, 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t textnormalizer_DoDepes(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v102 = 0;
  *a5 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_%s(%s)", a6, a7, a8, a2);
  }

  v14 = *(a1 + 320);
  if (!*v14 || (v15 = cstdlib_strcmp(*v14, "NULL"), v14 = *(a1 + 320), !v15))
  {
LABEL_15:
    v34 = add2StringV2(a1, *(v14 + 8), "");
    if ((v34 & 0x80000000) != 0)
    {
      return v34;
    }

    goto LABEL_92;
  }

  if (!cstdlib_strcmp(*v14, ""))
  {
    v14 = *(a1 + 320);
    goto LABEL_15;
  }

  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES IN (%s)(running len=%d)", v16, v17, v18, **(a1 + 320));
  }

  v19 = cstdlib_strlen(**(a1 + 320));
  v20 = Utf8_LengthInUtf8chars(**(a1 + 320), v19);
  v21 = (*(*(a1 + 112) + 120))(*(a1 + 120), *(a1 + 128), 0, **(a1 + 320), v19);
  if ((v21 & 0x80000000) != 0)
  {
    v34 = v21;
    v35 = *(*a1 + 32);
    v36 = *(a1 + 184);
    v37 = 24010;
  }

  else
  {
    v26 = growStrRes(a1, a1 + 488, v19);
    if ((v26 & 0x80000000) != 0)
    {
      v34 = v26;
      goto LABEL_92;
    }

    v98 = v20;
    v30 = **(a1 + 320);
    v31 = *(a1 + 488);
    if (v19)
    {
      bzero(*(a1 + 488), v19);
    }

    v96 = a3;
    v97 = a4;
    v99 = v9;
    v100 = a6;
    if (utf8_strchr(g_szSpace_2, v30))
    {
      v32 = 0;
      i = 0;
    }

    else
    {
      i = 1;
      *v31 = 1;
      v32 = utf8_determineUTF8CharLength(*v30);
      v38 = v32;
      if (v32 < v19)
      {
        v39 = &v30[v32];
        for (i = 1; !utf8_strchr(g_szSpace_2, v39); v39 = &v30[v38])
        {
          v40 = utf8_determineUTF8CharLength(*v39);
          v32 = v40 + v38;
          ++i;
          v38 = (v40 + v38);
          if (v38 >= v19)
          {
            break;
          }
        }
      }
    }

    if (v32 < v19)
    {
      while (1)
      {
        v41 = &v30[v32];
        if (!utf8_strchr(g_szSpace_2, v41))
        {
          break;
        }

        v32 += utf8_determineUTF8CharLength(*v41);
        ++i;
        v42 = v32;
        if (v32 >= v19)
        {
LABEL_30:
          v43 = v42;
          while (v43 < v19 && !utf8_strchr(g_szSpace_2, &v30[v42]))
          {
            v42 += utf8_determineUTF8CharLength(v30[v42]);
            v43 = v42;
            ++i;
          }

          v32 = v42;
          if (v42 >= v19)
          {
            goto LABEL_35;
          }
        }
      }

      v31[i] = 1;
      v42 = v32 + utf8_determineUTF8CharLength(*v41);
      ++i;
      goto LABEL_30;
    }

LABEL_35:
    v44 = (*(*(a1 + 112) + 88))(*(a1 + 120), *(a1 + 128), *(a1 + 488), v98);
    if ((v44 & 0x80000000) != 0)
    {
      v34 = v44;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24011, 0, v45, v46, v47, v48, v94);
      v9 = v99;
      goto LABEL_92;
    }

    v49 = (*(*(a1 + 112) + 80))(*(a1 + 120), *(a1 + 128), a2 + 1);
    v9 = v99;
    if ((v49 & 0x80000000) != 0)
    {
      v34 = v49;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24012, "%s%s", v50, v51, v52, v53, "functionName");
      goto LABEL_92;
    }

    v54 = (*(*(a1 + 112) + 96))(*(a1 + 120), *(a1 + 128), &v102, &v106);
    if ((v54 & 0x80000000) != 0)
    {
      v34 = v54;
      v35 = *(*a1 + 32);
      v36 = *(a1 + 184);
      v37 = 24013;
    }

    else
    {
      v55 = (*(*(a1 + 112) + 128))(*(a1 + 120), *(a1 + 128), 0, &v105, &v104);
      if ((v55 & 0x80000000) != 0)
      {
        v34 = v55;
        v35 = *(*a1 + 32);
        v36 = *(a1 + 184);
        v37 = 24014;
      }

      else
      {
        v105[v104] = 0;
        v59 = Utf8_LengthInUtf8chars(v105, v104);
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES Layer 0 OUT strsize(%d bytes, %d chars) -> (%s)", v56, v57, v58, v104);
        }

        v60 = (*(*(a1 + 112) + 128))(*(a1 + 120), *(a1 + 128), 1, &__n[1], __n);
        if ((v60 & 0x80000000) == 0)
        {
          *(*&__n[1] + __n[0]) = 0;
          if (*(a1 + 548) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES layer 1 OUT strsize(%d bytes) -> (%s)", v23, v24, v25, __n[0]);
          }

          v61 = __n[0];
          v62 = (__n[0] - v59);
          if (__n[0] < v59)
          {
            v62 = 0;
          }

          v63 = v104;
          if (__n[0] <= v104)
          {
            v61 = v62;
          }

          else
          {
            v63 = v62;
          }

          v64 = heap_Alloc(*(*a1 + 8), (v63 + v61 + 1));
          if (!v64)
          {
            return 2383421450;
          }

          v65 = v64;
          cstdlib_strncpy(v64, *&__n[1], __n[0]);
          v65[__n[0]] = 0;
          v66 = v104;
          if (v104 != __n[0])
          {
            if (v104)
            {
              v67 = 0;
              v68 = 0;
              v69 = v65 + 1;
              do
              {
                v70 = utf8_determineUTF8CharLength(v105[v68]);
                if (v70 >= 2u)
                {
                  __n[0] = cstdlib_strlen(v65);
                  cstdlib_memmove(&v65[v70 + v67], &v69[v67], __n[0] - v67);
                  cstdlib_memset(&v69[v67], 126, v70 - 1);
                }

                v68 += v70;
                v67 = v68;
              }

              while (v68 < v104);
            }

            __n[0] = cstdlib_strlen(v65);
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "(adjusted) DEPES layer 1 OUT strsize(%d bytes) -> (%s)", v71, v72, v73, __n[0]);
            v66 = __n[0];
          }

          if (v66)
          {
            v74 = 0;
            v75 = 0;
            while (1)
            {
              v76 = &v65[v75];
              if (*v76 == 126)
              {
                *v76 = 32;
              }

              if (utf8_strchr(g_szSpace_2, &v65[v75]))
              {
                goto LABEL_62;
              }

              v77 = *v76;
              if ((v77 | 2) != 0x4E)
              {
                break;
              }

LABEL_64:
              if ((v77 | 2) == 0x4E)
              {
                if (v75)
                {
                  v78 = 0;
                  do
                  {
                    v79 = v78;
                    v78 += utf8_determineUTF8CharLength(v105[v78]);
                  }

                  while (v78 < v75);
                  if (utf8_strchr(g_szSpace_2, &v105[v79]))
                  {
                    goto LABEL_84;
                  }

                  while (1)
                  {
                    v80 = utf8_strchr(g_szSpace_2, &v105[v78]);
                    if (v80)
                    {
                      break;
                    }

                    if (v78 != 1)
                    {
                      v101 = (v78 - 1);
                      utf8_GetPreviousValidUtf8Offset(v105, &v101);
                      v78 = v101;
                      if (v101)
                      {
                        continue;
                      }
                    }

                    v78 = 0;
                    break;
                  }

                  v81 = utf8_determineUTF8CharLength(v105[v78]);
                  if (utf8_strchr(g_szSpace_2, &v105[v78]) && (v95 = v81 + v78, v95 < v104) && !utf8_strchr(g_szSpace_2, &v105[v78 + v81]))
                  {
                    if (utf8_strchr(g_szSpace_2, &v65[v78 + v81]))
                    {
                      v65[v95] = *v76;
                      v75 = v78;
                    }

                    else
                    {
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", v86, v87, v88, v95);
                    }
                  }

                  else
                  {
                    if (v80 || v81 >= v104 || utf8_strchr(g_szSpace_2, &v105[v78 + v81]))
                    {
                      goto LABEL_84;
                    }

                    if (utf8_strchr(g_szSpace_2, &v65[v78]))
                    {
                      v65[v78] = *v76;
                    }

                    else
                    {
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "DEPES language layer problem, trying to overwrite [%d] %c when aligning with [%d] %c; ignore", v82, v83, v84, 0);
                    }
                  }

                  *v76 = 32;
                }

                else
                {
                  v75 = 0;
                }
              }

LABEL_84:
              v75 += utf8_determineUTF8CharLength(v65[v75]);
              v74 = v75;
              if (v75 >= __n[0])
              {
                goto LABEL_99;
              }
            }

            v85 = utf8_determineUTF8CharLength(v77);
            if (v85)
            {
              memset(&v65[v74], 32, v85);
            }

LABEL_62:
            v77 = *v76;
            goto LABEL_64;
          }

LABEL_99:
          v90 = add2StringV2(a1, *(*(a1 + 320) + 8), v105);
          if ((v90 & 0x80000000) != 0)
          {
            v34 = v90;
          }

          else
          {
            v34 = add2StringV2(a1, v100, v65);
            if ((v34 & 0x80000000) == 0)
            {
              v9 = v99;
              if (v97 == 1)
              {
                LOWORD(v101) = v96;
                textnormalizer_markercountlayer_GetWordBegPos(v102, v106, v105, *(a1 + 520), &v101, *(a1 + 544));
                if (v101 > v96)
                {
                  v91 = *(a1 + 320);
                  v92 = (*(a1 + 520) + 2 * v96);
                  v93 = v101 - v96;
                  do
                  {
                    *v92++ += *(v91 + 32);
                    --v93;
                  }

                  while (v93);
                }
              }

              heap_Free(*(*a1 + 8), v65);
              goto LABEL_92;
            }
          }

          heap_Free(*(*a1 + 8), v65);
          return v34;
        }

        v34 = v60;
        v35 = *(*a1 + 32);
        v36 = *(a1 + 184);
        v37 = 24058;
      }
    }
  }

  log_OutPublic(v35, v36, v37, 0, v22, v23, v24, v25, v94);
LABEL_92:
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "TOKEN _%s_, MAP _%s_", v27, v28, v29, **(*(a1 + 320) + 8));
  }

  *v9 = 1;
  return v34;
}

uint64_t textnormalizer_markercountlayer_GetWordBegPos(_BYTE *a1, int a2, const char *a3, uint64_t a4, _WORD *a5, unsigned int a6)
{
  LODWORD(v10) = a2;
  result = TOK_COUNT_SP_WORDS(a3);
  if (v10)
  {
    v13 = result;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    do
    {
      if (*a5 >= a6 || v14 >= v13)
      {
        break;
      }

      if (*a1)
      {
        *(a4 + 2 * (*a5)++) = v15;
        ++v14;
      }

      result = utf8_determineUTF8CharLength(a3[v15]);
      v15 += result;
      ++a1;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t blockedByBtok(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 634);
  if (!*(a1 + 634))
  {
    return 0;
  }

  for (i = (*(a1 + 624) + 2); ; i += 2)
  {
    v10 = *(i - 1);
    if (v10 <= a2 && *i >= a3)
    {
      break;
    }

    if (v10 <= a3 && *i >= a3 || v10 <= a2 && *i >= a2)
    {
      break;
    }

    if (!--v8)
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "match %d,%d blocked by btok %d,%d", a6, a7, a8, a2);
  return 1;
}

uint64_t clearBTokMatchList(uint64_t a1)
{
  if (*(a1 + 634))
  {
    heap_Free(*(*a1 + 8), *(a1 + 624));
    *(a1 + 632) = 0;
  }

  return 0;
}

uint64_t textnormalizer_DoExpansionActions(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v144 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v140 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions Begin", a6, a7, a8, v134);
  if (!a1[38])
  {

    return TOKENTNERROR(7);
  }

  if (*(a1 + 137) == 1)
  {
    dumpTokenRecordsInLingDB(a1, "At Start of DoExpansions", 0, v10, v11, v12, v13, v14);
  }

  if (!*(a1 + 156))
  {
    v16 = 0;
    goto LABEL_197;
  }

  v15 = 0;
  v16 = 0;
  LOWORD(v17) = 0;
  v18 = 0;
  v137 = a2;
  while (1)
  {
    FERuntimeData_GetKeyAtPos(a1, v18, &v143, &v142);
    if (!v143 || v15 != *v143)
    {
      ++v18;
      goto LABEL_182;
    }

    FEData_blockData_getTokenAndExpansionData(a1, *(v142 + 88), &v144, &v140, &v141, v12, v13, v14);
    v19 = *v143;
    v20 = v143[1];
    if (v19 >= v20)
    {
      v21 = *v143;
    }

    else
    {
      while (*(a1[38] + v19) == 32)
      {
        v21 = ++v19;
        if (v19 >= v20)
        {
          goto LABEL_15;
        }
      }

      v21 = v19;
    }

LABEL_15:
    if (v21 >= v20)
    {
      v23 = 1;
    }

    else
    {
      v22 = a1[38];
      v23 = 1;
      do
      {
        if (*(v22 + v19) == 32)
        {
          ++v23;
          do
          {
            v24 = ++v19;
          }

          while (v19 < v20 && *(v22 + v19) == 32);
        }

        else
        {
          v24 = ++v19;
        }
      }

      while (v24 < v20);
    }

    resetAlignmentData(a1);
    v26 = v143;
    v27 = *v143;
    v28 = v143[1];
    if (v27 >= v28)
    {
      v29 = *v143;
    }

    else
    {
      while (*(a1[38] + v27) == 32)
      {
        v29 = ++v27;
        if (v27 >= v28)
        {
          goto LABEL_32;
        }
      }

      v29 = v27;
    }

LABEL_32:
    v30 = a1[67];
    *(v30 + 2 * *(a1 + 272)) = v27;
    v31 = *(a1 + 272) + 1;
    *(a1 + 272) = v31;
    v32 = v26[1];
    if (v29 < v32)
    {
      v33 = v26[1];
      v34 = a1[38];
      do
      {
        if (*(v34 + v27) == 32)
        {
          while (v32 > v27 && *(v34 + v27) == 32)
          {
            ++v27;
          }

          *(v30 + 2 * v31) = v27;
          v31 = *(a1 + 272) + 1;
          *(a1 + 272) = v31;
          v33 = v26[1];
        }

        ++v27;
        v32 = v33;
      }

      while (v33 > v27);
    }

    if (!v141)
    {
      v46 = *(*a1 + 32);
      v47 = a1[23];
      v133 = 24015;
      goto LABEL_195;
    }

    if (*(*(v142 + 88) + 8) == 1)
    {
      v35 = addBTokMatchToList(a1, v26);
      if ((v35 & 0x80000000) != 0)
      {
        goto LABEL_196;
      }
    }

    if (*(a1 + 137) == 1)
    {
      cstdlib_strncpy(a1[69], (a1[38] + *v143), (v143[1] - *v143));
      *(a1[69] - *v143 + v143[1]) = 0;
      v39 = *(*a1 + 32);
      v40 = a1[23];
      if (*(*(v142 + 88) + 8) == 1)
      {
        log_OutText(v39, v40, 5, 0, "DoExpansions : applying method %s with arg %s for btok %3d,%3d %-15s %s (%d input words)", v36, v37, v38, v141[6]);
      }

      else
      {
        log_OutText(v39, v40, 5, 0, "DoExpansions : applying expansion for token %3d,%3d %-15s %s (%d input words)", v36, v37, v38, *v143);
      }
    }

    if (*(a1 + 272))
    {
      v41 = 0;
      v42 = a1[65];
      do
      {
        *(v42 + 2 * v41++) = 9999;
      }

      while (v41 < *(a1 + 272));
    }

    *(a1 + 201) = 0;
    *a1[49] = 0;
    *(a1 + 209) = 0;
    *a1[51] = 0;
    *(a1 + 217) = 0;
    *a1[53] = 0;
    *(a1 + 225) = 0;
    *a1[55] = 0;
    *(a1 + 233) = 0;
    *a1[57] = 0;
    *(a1 + 241) = 0;
    *a1[59] = 0;
    v44 = v142;
    v43 = v143;
    v45 = a1[40];
    *(v45 + 16) = v143;
    *(v45 + 24) = v44;
    *(v45 + 32) = 0;
    if (*(*(v44 + 88) + 8) == 1)
    {
      v35 = tn_nn_predictBTok(a1, v141, (a1 + 49), (a1 + 51), a1 + 53, (a1 + 55), (a1 + 57), a1 + 59, *v43, HIWORD(*v43), a1[38]);
      if ((v35 & 0x80000000) != 0)
      {
        goto LABEL_196;
      }

      goto LABEL_163;
    }

    v35 = applyExpansion(a1, v141, (a1 + 49), (a1 + 51), (a1 + 55), a1[38], v13, v14);
    if ((v35 & 0x80000000) != 0)
    {
      goto LABEL_196;
    }

    v46 = *(*a1 + 32);
    v47 = a1[23];
    if (!*(a1 + 201))
    {
      break;
    }

    log_OutText(v46, v47, 5, 0, "DoExpansions : expansion -> %s", v12, v13, v14, a1[49]);
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "               langmap   -> %s", v48, v49, v50, a1[51]);
    v51 = cstdlib_strlen(a1[49]);
    v52 = TOK_COUNT_SP_WORDS(a1[49]);
    v57 = v52;
    if (v52 == v23)
    {
      v58 = v23;
      v59 = v23 > 1u;
      if (v58 >= 2)
      {
        if (*(a1 + 272))
        {
          v138 = v52;
          v60 = 0;
          do
          {
            if (*(a1[65] + 2 * v60) == 9999)
            {
              v61 = 0;
              if (v51)
              {
                do
                {
                  if (!utf8_strchr(g_szSpace_3, (a1[49] + v61)))
                  {
                    break;
                  }

                  v61 += utf8_determineUTF8CharLength(*(a1[49] + v61));
                }

                while (v61 < v51);
              }

              v62 = 0;
              if (v60 && v51 > v61)
              {
                v63 = 0;
                do
                {
                  if (utf8_strchr(g_szSpace_3, (a1[49] + v61)))
                  {
                    if (v60 == ++v63)
                    {
                      break;
                    }

                    for (i = *(a1[49] + v61); ; i = *(a1[49] + v61))
                    {
                      v61 += utf8_determineUTF8CharLength(i);
                      if (v143[1] <= v61 || !utf8_strchr(g_szSpace_3, (a1[49] + v61)))
                      {
                        break;
                      }
                    }
                  }

                  else
                  {
                    v61 += utf8_determineUTF8CharLength(*(a1[49] + v61));
                  }
                }

                while (v51 > v61);
                v62 = v63;
              }

              v65 = a1[65];
              if (v62 != v60)
              {
                *(v65 + 2 * v60) = 9999;
                log_OutPublic(*(*a1 + 32), a1[23], 24017, "%s%d", v53, v54, v55, v56, "position");
                v59 = 1;
                v66 = 1;
                v57 = v138;
                goto LABEL_82;
              }

              *(v65 + 2 * v60) = v61;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "guessing alignment position for word %d to be %d", v54, v55, v56, v60);
            }

            ++v60;
          }

          while (v60 < *(a1 + 272));
          v66 = 0;
          v59 = 1;
          v57 = v138;
          if (*(a1 + 272))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v66 = 0;
          v59 = 1;
        }

        goto LABEL_98;
      }

      v66 = 0;
    }

    else
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in number of words; in:%d out: %d", v54, v55, v56, v23);
      v59 = v23 > 1u;
      v66 = 1;
    }

LABEL_82:
    if (*(a1 + 272))
    {
LABEL_83:
      v67 = 0;
      v68 = a1[65];
      do
      {
        v69 = *(v68 + 2 * v67);
        v70 = v69 != 9999 && v51 >= v69;
        if (!v70 || v67 && ((v71 = *(v68 + 2 * (v67 - 1)), v71 != 9999) ? (v72 = v69 >= v71) : (v72 = 1), !v72))
        {
          *(v68 + 2 * v67) = 9999;
          v66 = 1;
        }

        ++v67;
        v73 = *(a1 + 272);
      }

      while (v67 < v73);
      v74 = v73 == 0;
      goto LABEL_99;
    }

LABEL_98:
    v74 = 1;
LABEL_99:
    if (v66 == 1)
    {
      if (v57 < 2)
      {
        if (!v74)
        {
          v82 = 0;
          v83 = a1[65];
          do
          {
            *(v83 + 2 * v82++) = 0;
          }

          while (v82 < *(a1 + 272));
        }
      }

      else if (!v74)
      {
        v75 = a1[65];
        *v75 = 0;
        v76 = *(a1 + 272);
        if (v76 >= 2)
        {
          v77 = v75 + 1;
          for (j = 1; j < v76; ++j)
          {
            if (*v77 == 9999)
            {
              *v77 = *(v77 - 1);
              v76 = *(a1 + 272);
            }

            ++v77;
          }

          if (v76 >= 2)
          {
            v79 = a1[65];
            v80 = (v79 + 2);
            v81 = v76 - 1;
            while (*(v80 - 1) <= *v80)
            {
              ++v80;
              if (!--v81)
              {
                goto LABEL_115;
              }
            }

            v131 = 0;
            do
            {
              *(v79 + 2 * v131++) = 0;
            }

            while (v131 < *(a1 + 272));
          }
        }
      }
    }

LABEL_115:
    v84 = cstdlib_strlen(a1[49]);
    CurrentUtf8Offset = v84;
    if (v84)
    {
      CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(a1[49], v84 - 1);
    }

    if (utf8_strchr(g_szSpace_3, a1[49]))
    {
      v89 = 0;
      v17 = 0;
      do
      {
        v17 += utf8_determineUTF8CharLength(*(a1[49] + v89));
        v89 = v17;
      }

      while (utf8_strchr(g_szSpace_3, (a1[49] + v17)));
    }

    else
    {
      LOWORD(v17) = 0;
    }

    for (; v17 < CurrentUtf8Offset; CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(a1[49], CurrentUtf8Offset - 1))
    {
      if (!utf8_strchr(g_szSpace_3, (a1[49] + CurrentUtf8Offset)))
      {
        break;
      }

      *(a1[49] + CurrentUtf8Offset) = 0;
      if (*(a1 + 209) > CurrentUtf8Offset)
      {
        *(a1[51] + CurrentUtf8Offset) = 0;
      }
    }

    v139 = v59;
    if (v59 && *(a1 + 272))
    {
      v90 = 0;
      do
      {
        v91 = a1[65];
        for (k = *(v91 + 2 * v90); k < CurrentUtf8Offset; k = *(v91 + 2 * v90))
        {
          if (!utf8_strchr(g_szSpace_3, (a1[49] + k)))
          {
            break;
          }

          *(v91 + 2 * v90) += utf8_determineUTF8CharLength(*(a1[49] + *(v91 + 2 * v90)));
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted to %d", v93, v94, v95, v90);
        }

        ++v90;
      }

      while (v90 < *(a1 + 272));
    }

    if (v17)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "DoExpansions : adjusted expansion -> %s", v86, v87, v88, a1[49]);
      if (v139)
      {
        if (*(a1 + 272))
        {
          v96 = 0;
          do
          {
            v97 = a1[65];
            if (*(v97 + 2 * v96))
            {
              *(v97 + 2 * v96) -= v17;
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "alignment position for word %d adjusted (by +%d) to %d", v86, v87, v88, v96);
            }

            ++v96;
          }

          while (v96 < *(a1 + 272));
        }
      }
    }

    if (*(a1 + 201) != *(a1 + 209))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "mismatch in langmap and expansion string (length is different: %d vs %d)", v86, v87, v88, *(a1 + 209));
      *(a1 + 209) = 0;
      *a1[51] = 0;
    }

    v101 = cstdlib_strlen(a1[51]);
    if (!v101)
    {
      goto LABEL_156;
    }

    v102 = 0;
    v103 = 0;
    v104 = 32;
    do
    {
      v105 = v103;
      v106 = (a1[51] + v103);
      v107 = *v106;
      if (v107 == v104 && (v108 = utf8_strchr(g_szSpace_3, v106), v107 = *(a1[51] + v105), !v108))
      {
        v109 = utf8_determineUTF8CharLength(v107);
        v110 = v109;
        if (v109)
        {
          v111 = v102;
          do
          {
            *(a1[51] + v111++) = 32;
            --v110;
          }

          while (v110);
        }
      }

      else if ((v107 | 2) == 0x4E)
      {
        v104 = v107;
      }

      v103 = v105 + utf8_determineUTF8CharLength(*(a1[51] + v105));
      v102 = v103;
    }

    while (v101 > v103);
    if (v104 == 32)
    {
LABEL_156:
      *(a1 + 209) = 0;
      *a1[51] = 0;
    }

    if (*(a1 + 209))
    {
      v112 = a1[51];
    }

    else
    {
      v112 = "(empty)";
    }

    a2 = v137;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "sanitized langMap=%s", v98, v99, v100, v112);
    if (*(a1 + 209))
    {
      v113 = cstdlib_strlen(a1[51]);
      if (v113 != cstdlib_strlen(a1[49]))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24061, "%s%s%s%s", v114, v115, v116, v117, "langmap:");
        *(a1 + 209) = 0;
        *a1[51] = 0;
      }
    }

LABEL_163:
    v118 = a1[49];
    if (*(*(v142 + 88) + 8) == 1)
    {
      if (*(a1 + 225))
      {
        v119 = a1[55];
      }

      else
      {
        v119 = 0;
      }

      if (*(a1 + 233))
      {
        v121 = a1[57];
      }

      else
      {
        v121 = 0;
      }

      v16 = saveExpansionInLDO(a1, a1[53], v118, v119, v121, a1[59], v17, v143);
      *(a1 + 217) = 0;
      *a1[53] = 0;
      *(a1 + 225) = 0;
      *a1[55] = 0;
      *(a1 + 233) = 0;
      *a1[57] = 0;
      *(a1 + 241) = 0;
      *a1[59] = 0;
    }

    else
    {
      if (*(a1 + 225))
      {
        v120 = a1[55];
      }

      else
      {
        v120 = 0;
      }

      if (*(a1 + 233))
      {
        v122 = a1[57];
      }

      else
      {
        v122 = 0;
      }

      v16 = saveExpansionInLDO(a1, v144, v118, v120, v122, 0, v17, v143);
    }

    v127 = *(*a1 + 32);
    v128 = a1[23];
    if ((v16 & 0x80000000) != 0)
    {
      log_OutPublic(v127, v128, 24019, 0, v123, v124, v125, v126, v136);
      goto LABEL_197;
    }

    log_OutText(v127, v128, 5, 0, "DoExpansions : created new LDO Label from %d to %d", v124, v125, v126, *v143);
    if (*(a1 + 137) == 1)
    {
      dumpTokenRecordsInLingDB(a1, "After saving expanded token as Label in LDO", 0, v129, v130, v12, v13, v14);
    }

    v18 = v143[1];
    *a2 = v18;
LABEL_182:
    v143 = 0;
    v15 = v18;
    if (v18 >= *(a1 + 156))
    {
      goto LABEL_197;
    }
  }

  v133 = 24016;
LABEL_195:
  log_OutPublic(v46, v47, v133, 0, v25, v12, v13, v14, v135);
  v35 = TOKENTNERROR(266);
LABEL_196:
  v16 = v35;
LABEL_197:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : DoExpansions End (%x)", v12, v13, v14, v16);
  return v16;
}

uint64_t applyExpansion(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v75[0] = 0;
  v75[1] = 0;
  v73 = 0;
  v74 = 0;
  __b = 0;
  __len = 0;
  v70[0] = 0;
  v70[1] = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion Begin", a6, a7, a8, v66);
  if (*(a1 + 153) == 1)
  {
    v14 = a2[5];
    if (v14)
    {
      v15 = cstdlib_strstr(v14, a1[88]);
      if (a6)
      {
        v16 = v15;
        if (v15)
        {
          if (!v15[cstdlib_strlen(a1[88])] || v16[cstdlib_strlen(a1[88])] == 32)
          {
            v17 = a1[22];
            if (*(v17 + 8))
            {
              v18 = v17[1];
              if (v18)
              {
                v68 = a3;
                do
                {
                  v19 = a4;
                  v20 = *(v18 + 106);
                  if (v20)
                  {
                    v21 = 0;
                    do
                    {
                      v22 = v18 + 2 * v21 + 33;
                      v23 = *v22;
                      v24 = v22[1];
                      if (v23 == -1 && v24 == 0xFFFF)
                      {
                        ++v21;
                      }

                      else
                      {
                        cstdlib_strncpy(a1[69], (a6 + v23), (v24 - v23));
                        *(a1[69] - *v22 + v22[1]) = 0;
                        v26 = add2StringV2(a1, a5, a1[69]);
                        if ((v26 & 0x80000000) != 0)
                        {
                          goto LABEL_93;
                        }

                        if (++v21 == *(v18 + 106))
                        {
                          v20 = *(v18 + 106);
                        }

                        else
                        {
                          v26 = add2StringV2(a1, a5, a1[87]);
                          if ((v26 & 0x80000000) != 0)
                          {
                            goto LABEL_93;
                          }

                          v20 = *(v18 + 106);
                        }
                      }
                    }

                    while (v21 < v20);
                  }

                  v18 = *v18;
                  a4 = v19;
                  a3 = v68;
                }

                while (v18);
              }
            }
          }
        }
      }
    }
  }

  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(&v76, 0, 0x10uLL);
  cstdlib_memset(v75, 0, 0x10uLL);
  cstdlib_memset(&v73, 0, 0x10uLL);
  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(v70, 0, 0x10uLL);
  inited = initStrRes(a1, &v78);
  if ((inited & 0x80000000) == 0)
  {
    v26 = initStrRes(a1, &v76);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v26 = initStrRes(a1, v70);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v26 = initStrRes(a1, &v73);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    v26 = initStrRes(a1, v75);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    if (*(a2 + 24))
    {
      v31 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing subexpansion %d ...", v28, v29, v30, v31);
        v26 = applyExpansion(a1, *&a2[2][2 * v31], &v78, &v76, 0, 0);
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_93;
        }

        if (WORD1(v79))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "after subexpansion %d str=%s, langmap=%s", v28, v29, v30, v31);
          if (WORD1(v79))
          {
            if (!**a2)
            {
              v32 = *(a1[40] + 32);
              *(a1[40] + 32) = v32 + cstdlib_strlen(v78);
            }

            v26 = add2StringV3(a1, &v73, &v78);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_93;
            }

            v26 = add2StringV3(a1, v75, &v76);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_93;
            }

            WORD1(v79) = 0;
            *v78 = 0;
            WORD1(v77) = 0;
            *v76 = 0;
          }
        }
      }

      while (++v31 < *(a2 + 24));
    }

    clearStrRes(*a1, &v78);
    clearStrRes(*a1, &v76);
    clearStrRes(*a1, v70);
    if (WORD1(v74) && (**a2 - 1) <= 2)
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "CALL function on expanded string (%s)", v33, v34, v35, v73);
    }

    v40 = initStrRes(a1, &__b);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_94;
    }

    v41 = *a2;
    v42 = **a2;
    if ((v42 - 1) < 2)
    {
      v69 = 0;
      FEFunctionMap_GetFunction(a1, 1u, v41, &v80);
      v43 = a1[40];
      *v43 = a2[5];
      v43[1] = &__b;
      *(v43 + 17) = *(a2 + 4);
      v40 = v80(a1, &v69);
      if ((v40 & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      if (!v69)
      {
        goto LABEL_91;
      }

      v26 = add2StringV3(a1, a3, &__b);
      if ((v26 & 0x80000000) == 0)
      {
        cstdlib_memset(__b, 32, WORD1(__len));
        p_b = &__b;
        goto LABEL_90;
      }

      goto LABEL_93;
    }

    if (v42 != 3)
    {
      goto LABEL_91;
    }

    v45 = *(a2 + 24);
    if (*(a2 + 24))
    {
      v46 = 0;
      v47 = 9999;
      while (1)
      {
        v48 = *&a2[2][2 * v46];
        if (**v48 == 2)
        {
          v49 = *(v48 + 8);
          v50 = a1[40];
          v51 = v50[3];
          if (v49 > *(v51 + 82))
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", v36, v37, v38, v39, "intVal");
            TOKENTNERROR(0);
            v51 = *(a1[40] + 24);
            v45 = *(a2 + 24);
LABEL_57:
            v52 = *(v51 + 4 * (v49 - 1) + 42);
            if (v52 < v47 && ~v52 != 0)
            {
              v47 = v52;
            }

            goto LABEL_62;
          }

          if (v49)
          {
            goto LABEL_57;
          }

          v47 = *v50[2];
        }

LABEL_62:
        if (++v46 >= v45)
        {
          goto LABEL_66;
        }
      }
    }

    v47 = 9999;
LABEL_66:
    v54 = *(a1 + 272);
    if (*(a1 + 272))
    {
      v55 = 0;
      v56 = a1[67];
      do
      {
        v57 = *v56++;
        if (v57 == v47)
        {
          v55 = 1;
        }

        --v54;
      }

      while (v54);
      if (v55 == 1)
      {
        v58 = **(a1[40] + 16);
        if (v58 < v47)
        {
          do
          {
            if (!utf8_strchr(g_szSpace_3, (a1[38] + v58)))
            {
              break;
            }

            v58 += utf8_determineUTF8CharLength(*(a1[38] + v58));
          }

          while (v58 < v47);
        }

        if (v58 < v47)
        {
          v59 = 0;
          do
          {
            v60 = v58;
            if (utf8_strchr(g_szSpace_3, (a1[38] + v58)))
            {
              ++v59;
              if (v58 < v47)
              {
                while (1)
                {
                  v60 = v58;
                  if (!utf8_strchr(g_szSpace_3, (a1[38] + v58)))
                  {
                    break;
                  }

                  v58 += utf8_determineUTF8CharLength(*(a1[38] + v58));
                  if (v58 >= v47)
                  {
                    v60 = v58;
                    break;
                  }
                }
              }
            }

            v58 += utf8_determineUTF8CharLength(*(a1[38] + v60));
          }

          while (v58 < v47);
LABEL_86:
          v61 = a1[40];
          *v61 = v73;
          v61[1] = &__b;
          v69 = 0;
          v40 = textnormalizer_DoDepes(a1, a2[6], v59, v55, &v69, v70, v38, v39);
          if ((v40 & 0x80000000) != 0)
          {
            goto LABEL_94;
          }

          if (!v69)
          {
            goto LABEL_91;
          }

          v26 = add2StringV3(a1, a3, &__b);
          if ((v26 & 0x80000000) == 0)
          {
            p_b = v70;
LABEL_90:
            v40 = add2StringV3(a1, a4, p_b);
            if ((v40 & 0x80000000) == 0)
            {
LABEL_91:
              clearStrRes(*a1, &__b);
              if (!**a2)
              {
                add2StringV3(a1, a3, &v73);
                add2StringV3(a1, a4, v75);
              }
            }

LABEL_94:
            clearStrRes(*a1, v70);
            clearStrRes(*a1, &__b);
            clearStrRes(*a1, &v73);
            clearStrRes(*a1, v75);
            clearStrRes(*a1, &v78);
            clearStrRes(*a1, &v76);
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : applyExpansion End", v62, v63, v64, v67);
            return v40;
          }

LABEL_93:
          v40 = v26;
          goto LABEL_94;
        }
      }
    }

    else
    {
      v55 = 0;
    }

    v59 = 0;
    goto LABEL_86;
  }

  return inited;
}

uint64_t textnormalizer_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjOpen Begin", a6, a7, a8, v23);
  Map = FEFunctionMap_GetMap(a1, &v25);
  if ((Map & 0x80000000) != 0)
  {
LABEL_6:
    v21 = Map;
  }

  else
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = v14;
      v16 = ssftmap_Insert(v25, *(&off_287EECBD8 + 2 * v13), *(&off_287EECBD8 + 2 * v13 + 1));
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      v14 = 0;
      v13 = 1;
      if ((v15 & 1) == 0)
      {
        Map = FEFunctionMap_AddFunctionMap(a1, 1u, v25);
        goto LABEL_6;
      }
    }

    v21 = v16;
    log_OutPublic(*(*a1 + 32), a1[23], 24010, 0, v17, v18, v19, v20, v24);
    ssftmap_ObjClose(v25);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjOpen End (%x)", v10, v11, v12, v21);
  return v21;
}

uint64_t textnormalizer_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjClose Begin", a6, a7, a8, v13);
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : ObjClose End (%x)", v9, v10, v11, 0);
  return 0;
}

uint64_t textnormalizer_DoMatch(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_MATCH( %d) = ", a6, a7, a8, *(*(a1 + 320) + 34));
  }

  v10 = *(a1 + 320);
  v11 = *(v10 + 34);
  if (!*(v10 + 34))
  {
    v15 = *(v10 + 24);
    if (v15[20])
    {
      if (!*v15)
      {
        v17 = 0;
LABEL_19:
        v26 = *(v10 + 8);
        v27 = (*(a1 + 504) + v15[2 * v17 + 1]);
        goto LABEL_68;
      }

      v16 = 0;
      while (v15[20] > ++v16)
      {
        v17 = v16;
        if (!v15[2 * v16])
        {
          goto LABEL_19;
        }
      }
    }

    v22 = add2StringV4(a1, *(v10 + 8), **(v10 + 16), *(*(v10 + 16) + 2));
    goto LABEL_69;
  }

  v12 = *(v10 + 24);
  if (*(v12 + 82) < (v11 - 1))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%d", a5, a6, a7, a8, "intVal");
    v13 = 0;
    v14 = 0;
LABEL_73:
    *v8 = v13;
    return v14;
  }

  v18 = &v12[2 * (v11 - 1)];
  v20 = v18[21];
  v19 = v18 + 21;
  if (v20 == -1 && v19[1] == -1)
  {
    v26 = *(v10 + 8);
    v27 = "";
LABEL_68:
    v22 = add2StringV2(a1, v26, v27);
LABEL_69:
    v14 = v22;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    return v14;
  }

  if (v12[20])
  {
    if (*v12 == v11)
    {
      v21 = 0;
LABEL_23:
      v14 = add2StringV2(a1, *(v10 + 8), (*(a1 + 504) + v12[2 * v21 + 1]));
      if ((v14 & 0x80000000) == 0)
      {
        v41 = v8;
        v29 = (*(a1 + 504) + *(*(*(a1 + 320) + 24) + 4 * v21 + 2));
LABEL_27:
        v30 = cstdlib_strlen(v29);
        if (v30)
        {
          v31 = 0;
          while (v31)
          {
            if (utf8_strchr(g_szSpace_4, &v29[v31]))
            {
              if (v30 > v31)
              {
                v32 = v31;
                do
                {
                  v33 = &v29[v31];
                  if (utf8_strchr(g_szSpace_4, v33))
                  {
                    v34 = v32 + 1 >= v30;
                  }

                  else
                  {
                    v34 = 1;
                  }

                  if (v34)
                  {
                    break;
                  }

                  if (!utf8_strchr(g_szSpace_4, v33 + 1))
                  {
                    break;
                  }

                  v31 += utf8_determineUTF8CharLength(*v33);
                  v32 = v31;
                }

                while (v30 > v31);
              }

              goto LABEL_41;
            }

LABEL_65:
            v31 += utf8_determineUTF8CharLength(v29[v31]);
            if (v31 >= v30)
            {
              goto LABEL_66;
            }
          }

          v31 = 0;
LABEL_41:
          v35 = *v19 + v31;
          if (*(a1 + 544))
          {
            v36 = 0;
            while (*(*(a1 + 536) + v36) != v35)
            {
              v36 += 2;
              if (2 * *(a1 + 544) == v36)
              {
                goto LABEL_47;
              }
            }

            *(*(a1 + 520) + v36) = *(*(a1 + 320) + 32) + v31;
          }

LABEL_47:
          if (v35 && *(a1 + 312) > v35 && TOK_IS_ALPHANUM((*(a1 + 304) + v35)) && TOK_IS_PUNCT((*(a1 + 304) + v35 - 1)))
          {
            PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*(a1 + 304), v35);
            v38 = PreviousUtf8Offset;
            if (PreviousUtf8Offset)
            {
              do
              {
                if (!TOK_IS_PUNCT((*(a1 + 304) + v38)))
                {
                  break;
                }

                if (!TOK_IS_PUNCT((*(a1 + 304) + v38 - 1)))
                {
                  break;
                }

                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*(a1 + 304), v38);
                v38 = PreviousUtf8Offset;
              }

              while (PreviousUtf8Offset);
              v38 = v38;
            }

            else
            {
              v38 = 0;
            }

            if (utf8_strchr(g_szSpace_4, (*(a1 + 304) + v38)))
            {
              PreviousUtf8Offset += utf8_determineUTF8CharLength(*(*(a1 + 304) + v38));
            }

            if (*(a1 + 544))
            {
              v39 = 0;
              while (*(*(a1 + 536) + v39) != PreviousUtf8Offset)
              {
                v39 += 2;
                if (2 * *(a1 + 544) == v39)
                {
                  goto LABEL_65;
                }
              }

              *(*(a1 + 520) + v39) = *(*(a1 + 320) + 32) + v31;
            }
          }

          goto LABEL_65;
        }

LABEL_66:
        v8 = v41;
LABEL_70:
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v23, v24, v25, **(*(a1 + 320) + 8));
        }

        v13 = 1;
        goto LABEL_73;
      }

      return v14;
    }

    v28 = 0;
    while (v12[20] > ++v28)
    {
      v21 = v28;
      if (v12[2 * v28] == v11)
      {
        goto LABEL_23;
      }
    }
  }

  cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + **(v10 + 16)), (*(*(v10 + 16) + 2) - **(v10 + 16)));
  *(*(a1 + 552) - **(*(a1 + 320) + 16) + *(*(*(a1 + 320) + 16) + 2)) = 0;
  v29 = *(a1 + 552);
  v14 = add2StringV4(a1, *(*(a1 + 320) + 8), *v19, v19[1]);
  if ((v14 & 0x80000000) == 0)
  {
    v41 = v8;
    goto LABEL_27;
  }

  return v14;
}

uint64_t textnormalizer_DoString(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_STRING_TTS( %s) = ", a6, a7, a8, **(a1 + 320));
  }

  v13 = add2StringV2(a1, *(*(a1 + 320) + 8), **(a1 + 320));
  if ((v13 & 0x80000000) == 0)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v10, v11, v12, **(*(a1 + 320) + 8));
    }

    *a2 = 1;
  }

  return v13;
}

uint64_t getDctStr(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 82);
  if (*(a2 + 82))
  {
    v7 = 0;
    v8 = 0;
    result = 0;
    v10 = a2 + 42;
    v11 = (a2 + 2);
    while (1)
    {
      v12 = (v10 + 4 * v7);
      if (*v12 != -1 || v12[1] != -1)
      {
        v13 = *(a2 + 40);
        if (v13)
        {
          v14 = 0;
          v15 = v11;
          do
          {
            if (*(v15 - 1) - 1 == v8)
            {
              result = add2StringV2(a1, a3, (a1[63] + *v15));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v13 = *(a2 + 40);
            }

            ++v14;
            v15 += 2;
          }

          while (v14 < v13);
          v3 = *(a2 + 82);
        }
      }

      if (v8 + 1 != v3)
      {
        if (a1[87])
        {
          v16 = a1[87];
        }

        else
        {
          v16 = "|";
        }

        result = add2StringV2(a1, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v3 = *(a2 + 82);
      }

      v8 = ++v7;
      if (v7 >= v3)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t getRegexStr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 82);
  if (*(a2 + 82))
  {
    v9 = 0;
    result = 0;
    for (i = (a2 + 44); ; i += 2)
    {
      v12 = *(i - 1);
      v13 = *i;
      if (v12 == -1 && v13 == 0xFFFF)
      {
        goto LABEL_15;
      }

      cstdlib_strncpy(*(a1 + 552), (a4 + v12), (v13 - v12));
      *(*(a1 + 552) - *(i - 1) + *i) = 0;
      result = add2StringV2(a1, a3, *(a1 + 552));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v15 = *(a1 + 960);
      v4 = *(a2 + 82);
      if (v15 == 1)
      {
        break;
      }

LABEL_16:
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9 + 1 == v4;
      }

      if (!v17)
      {
        if (*(a1 + 696))
        {
          v18 = *(a1 + 696);
        }

        else
        {
          v18 = "|";
        }

        result = add2StringV2(a1, a3, v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v4 = *(a2 + 82);
      }

      if (++v9 >= v4)
      {
        return result;
      }
    }

    if (v9 + 1 != v4)
    {
      if (*(a1 + 696))
      {
        v16 = *(a1 + 696);
      }

      else
      {
        v16 = "|";
      }

      result = add2StringV2(a1, a3, v16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *(a2 + 82);
    }

LABEL_15:
    v15 = *(a1 + 960);
    goto LABEL_16;
  }

  return 0;
}

uint64_t tn_nn_predictBTok(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, char **a8, unsigned __int16 a9, unsigned __int16 a10, char *a11)
{
  *v40 = 0;
  v41 = 0;
  v19 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "textnormalizer : predictBTokAndApplyExpansion Begin", a6, a7, a8, v39);
  if (cstdlib_strcmp(*(a2 + 48), "_NN"))
  {
    if (cstdlib_strcmp(*(a2 + 48), "_UNAMBIG"))
    {
      return 2304778240;
    }

    v31 = *(a2 + 40);
  }

  else
  {
    v21 = *(a2 + 40);
    v22 = cstdlib_strlen(v21);
    v23 = 0;
    if (v22)
    {
      while (v21[v23] == 32)
      {
        if (v22 == ++v23)
        {
          v23 = v22;
          break;
        }
      }
    }

    v24 = add2StringV2(a1, a8, &v21[v23]);
    if ((v24 & 0x80000000) != 0)
    {
      return v24;
    }

    v25 = cstdlib_strchr(*a8, 32);
    if (v25)
    {
      *v25 = 0;
    }

    v26 = ssftmap_Find(a1[85], *a8, v40);
    if ((v26 & 0x80000000) != 0)
    {
      RegexStr = v26;
      log_OutPublic(*(*a1 + 32), a1[23], 24069, "%s%s", v27, v28, v29, v30, "pattern");
      return RegexStr;
    }

    if (*(a1 + 365) >= *(a1 + 364))
    {
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "exceeded max NN calls per sentence %d, fallback to default prediction %s", v28, v29, v30, *(a1 + 364));
      v31 = *(*v40 + 16);
    }

    else
    {
      v24 = nn_tn_process(*a1, a1[23], (a1 + 80), *a8, *v40, a9, a10, a11, &v41);
      ++*(a1 + 365);
      if ((v24 & 0x80000000) != 0)
      {
        return v24;
      }

      v31 = v41;
    }
  }

  v24 = add2StringV2(a1, a5, v31);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  if (a1[88])
  {
    v32 = a1[88];
  }

  else
  {
    v32 = "LUA";
  }

  if ((add2StringV2(a1, a3, v32) & 0x80000000) != 0)
  {
    return 2304778240;
  }

  RegexStr = add2StringV2(a1, a4, "");
  if ((RegexStr & 0x80000000) == 0)
  {
    cstdlib_memset(*a4, 32, *(a4 + 10));
    if (*(v19 + 16) && (v36 = *(v19 + 8)) != 0)
    {
      while (1)
      {
        RegexStr = getRegexStr(a1, (v36 + 3), a6, a11);
        if ((RegexStr & 0x80000000) != 0)
        {
          break;
        }

        if (!*(a1 + 240))
        {
          RegexStr = getDctStr(a1, (v36 + 3), a7);
          if ((RegexStr & 0x80000000) != 0)
          {
            break;
          }
        }

        v36 = *v36;
        if (!v36)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      if (*(a1 + 240) == 1)
      {
        v37 = "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s";
      }

      else
      {
        v37 = "textnormalizer : predictBTokAndApplyExpansion End expansionFunction=%s regexStr=%s dctmatchStr=%s";
      }

      log_OutText(*(*a1 + 32), a1[23], 4, 0, v37, v33, v34, v35, *a5);
    }
  }

  return RegexStr;
}

uint64_t nn_tn_checkIfActive(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v20 = 0;
  v21 = 0;
  *a5 = 0;
  BrokerString = nn_tn_getBrokerString(a3, a4, &v21);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v10 = v21;
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v21, "FINN", 1, &v20) & 0x80000000) != 0)
  {
    v18 = 0;
    if (!v10)
    {
      return v18;
    }

LABEL_9:
    heap_Free(*(a3 + 8), v10);
    return v18;
  }

  v18 = ssftriff_reader_ObjClose(v20, v11, v12, v13, v14, v15, v16, v17);
  if ((v18 & 0x80000000) == 0)
  {
    *a5 = 1;
  }

  if (v10)
  {
    goto LABEL_9;
  }

  return v18;
}

uint64_t nn_tn_getBrokerString(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = "";
  __s2 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__s1 = 0u;
  v16 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v13);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "nn_tn_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v13);
      v7 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a3 = v7;
      if (v7)
      {
        return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v7, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), a2, 24048, 0, v8, v9, v10, v11, v12);
        return 2304778250;
      }
    }
  }

  return result;
}

uint64_t nn_tn_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11)
{
  v82 = 0;
  v83 = 0;
  v84 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a11 = 0;
  NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_modelType", &__c[3], &__c[1], __c);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v18 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v18)
    {
      *v18 = 0;
    }

    if (cstdlib_strcmp(**&__c[3], "char"))
    {
      if (cstdlib_strcmp(**&__c[3], "char"))
      {
        if (cstdlib_strcmp(**&__c[3], "word_and_char"))
        {
          goto LABEL_13;
        }

        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }

    *a11 = v19;
  }

LABEL_13:
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  a11[3] = 0;
  a11[6] = 0;
  if (*a11 == 1)
  {
    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_wordFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  else
  {
    if (*a11)
    {
      goto LABEL_24;
    }

    NumericFeatureValue = (*(a7 + 96))(a9, a10, "fecfg", "nn_tn_charFocusPatternProcessing", &__c[3], &__c[1], __c);
  }

  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v20 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v20)
    {
      *v20 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "Markup"))
    {
      if (*a11 == 1)
      {
        a11[6] = 1;
      }

      else if (!*a11)
      {
        a11[3] = 1;
      }
    }

    if (!cstdlib_strcmp(**&__c[3], "Embedded"))
    {
      if (*a11 == 1)
      {
        a11[6] = 2;
      }

      else if (!*a11)
      {
        a11[3] = 2;
      }
    }
  }

LABEL_24:
  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_maxNNCallsPerSent", a11 + 44);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_charContextWindow", a11 + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_wordContextWindow", a11 + 3);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_charEmbeddingDimension", a11 + 4);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_wordEmbeddingDimension", a11 + 5);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_max_x_len", a11 + 14);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_Y_dict_size", a11 + 15);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getNumericFeatureValue(a7, a9, a10, "nn_tn_addPatternAsFeature", &v84);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_contextPaddingChar", a11 + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  if (v84 == 1)
  {
    a11[8] = 1;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_regexSubmatchSeparator", a11 + 7);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = getStringFeatureValue(a5, a6, a7, a9, a10, "nn_tn_expansionProxyString", a11 + 8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = setModelPredictions(a5, a6, a7, a9, a10, a11);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  v24 = a5;
  log_OutText(*(a5 + 32), a6, 5, 0, "modelType %d", v21, v22, v23, *a11);
  log_OutText(*(a5 + 32), a6, 5, 0, "charContextWindow %d", v25, v26, v27, *(a11 + 2));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordContextWindow %d", v28, v29, v30, *(a11 + 3));
  log_OutText(*(a5 + 32), a6, 5, 0, "charEmbeddingDimension %d", v31, v32, v33, *(a11 + 4));
  log_OutText(*(a5 + 32), a6, 5, 0, "wordEmbeddingDimension %d", v34, v35, v36, *(a11 + 5));
  log_OutText(*(a5 + 32), a6, 5, 0, "charFocusType %d", v37, v38, v39, a11[3]);
  log_OutText(*(a5 + 32), a6, 5, 0, "wordFocusType %d", v40, v41, v42, a11[6]);
  log_OutText(*(a5 + 32), a6, 5, 0, "addPatternAsFeature %d", v43, v44, v45, a11[8]);
  log_OutText(*(a5 + 32), a6, 5, 0, "max_x_len %d", v46, v47, v48, *(a11 + 14));
  log_OutText(*(a5 + 32), a6, 5, 0, "expansionProxyString %s", v49, v50, v51, *(a11 + 8));
  log_OutText(*(a5 + 32), a6, 5, 0, "regexSubmatchSeparator %s", v52, v53, v54, *(a11 + 7));
  v55 = a11[8];
  *(a11 + 18) = v55 == 1;
  if (*a11 == 1)
  {
    v56 = a11[6];
  }

  else
  {
    if (*a11)
    {
      goto LABEL_55;
    }

    v56 = a11[3];
  }

  if (v56 == 2)
  {
    if (v55 == 1)
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    *(a11 + 18) = v57;
  }

LABEL_55:
  NumericFeatureValue = nn_word_lkp_GetInterface(1u, a11 + 16);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  *(a11 + 17) = safeh_GetNullHandle();
  *(a11 + 18) = v58;
  *(a11 + 19) = safeh_GetNullHandle();
  *(a11 + 20) = v59;
  NumericFeatureValue = (*(*(a11 + 16) + 16))(*(a11 + 17), *(a11 + 18), "char", a1, a2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  NumericFeatureValue = (*(*(a11 + 16) + 40))(*(a11 + 19), *(a11 + 20), a11 + 42);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    return NumericFeatureValue;
  }

  log_OutText(*(a5 + 32), a6, 5, 0, "word2vec length %d", v60, v61, v62, a11[42]);
  v63 = heap_Alloc(*(a5 + 8), 4 * a11[42]);
  *(a11 + 22) = v63;
  if (v63)
  {
    BrokerString = nn_tn_getBrokerString(a5, a6, &v83);
    v69 = v83;
    if ((BrokerString & 0x80000000) != 0)
    {
      v77 = BrokerString;
    }

    else
    {
      v70 = fi_init(a1, a2, a3, a4, &v82, 0, v83, "FINN", 1, 0);
      if ((v70 & 0x80000000) != 0)
      {
        v77 = 2304778240;
        log_OutPublic(*(a5 + 32), a6, 24063, 0, v71, v72, v73, v74, v80);
      }

      else
      {
        v75 = *(*v82 + 56);
        if (*(*v82 + 52) == 2 && v75 == *(a11 + 14) && (v76 = *(*v82 + 60), v76 == a11[42] + *(a11 + 18)))
        {
          v77 = v70;
          *(a11 + 13) = v82;
          a11[28] = v76 * v75;
          *(a11 + 23) = 0;
          *(a11 + 96) = 0;
          v24 = a5;
        }

        else
        {
          v24 = a5;
          log_OutPublic(*(a5 + 32), a6, 24067, "%s%d%d%s%d%d", v71, v72, v73, v74, "expected");
          v77 = 2304778265;
        }
      }
    }

    if (v69)
    {
      heap_Free(*(v24 + 8), v69);
    }
  }

  else
  {
    log_OutPublic(*(a5 + 32), a6, 24048, 0, v64, v65, v66, v67, v79);
    return 2304778250;
  }

  return v77;
}

uint64_t nn_tn_UnLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 176);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a3 + 176) = 0;
  }

  v7 = *(a3 + 128);
  if (v7)
  {
    (*(v7 + 24))(*(a3 + 152), *(a3 + 160));
    *(a3 + 128) = 0;
  }

  v8 = *(a3 + 48);
  if (v8)
  {
    ssftmap_ObjClose(v8);
  }

  v9 = *(a3 + 40);
  if (v9)
  {
    ssftmap_ObjClose(v9);
  }

  v10 = *(a3 + 56);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a3 + 56) = 0;
  }

  v11 = *(a3 + 64);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a3 + 64) = 0;
  }

  v12 = *(a3 + 16);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 16) = 0;
  }

  v13 = *(a3 + 80);
  if (v13)
  {
    if (*(a3 + 72))
    {
      v14 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a3 + 80) + 8 * v14));
        *(*(a3 + 80) + 8 * v14++) = 0;
      }

      while (v14 < *(a3 + 72));
      v13 = *(a3 + 80);
    }

    *(a3 + 72) = 0;
    heap_Free(*(a1 + 8), v13);
    *(a3 + 80) = 0;
  }

  v15 = *(a3 + 104);
  if (!v15)
  {
    return 0;
  }

  return fi_deinit(a1, a2, v15);
}

uint64_t nn_tn_freeSentData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    if (*(a2 + 192))
    {
      v5 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 184) + 8 * v5));
        *(*(a2 + 184) + 8 * v5++) = 0;
      }

      while (v5 < *(a2 + 192));
      v3 = *(a2 + 184);
    }

    heap_Free(*(a1 + 8), v3);
    *(a2 + 184) = 0;
  }

  return 0;
}

uint64_t nn_tn_getCharContextString(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, uint64_t *a6, unsigned __int16 *a7, unsigned int a8, int a9, const char *a10, unsigned __int16 a11, unsigned __int16 *a12, _WORD *a13, _WORD *a14)
{
  v78 = cstdlib_strlen(__s);
  *a12 = 0;
  v21 = heap_Calloc(*(a1 + 8), 1, (8 * a11) | 1);
  if (!v21)
  {
    v53 = 2304778250;
    log_OutPublic(*(a1 + 32), a2, 24048, 0, v22, v23, v24, v25, v74);
    return v53;
  }

  v26 = v21;
  v76 = a6;
  *a7 = a11;
  v27 = a8;
  if (!a11)
  {
LABEL_6:
    v35 = a13;
    v36 = a4;
    if ((a5 - a4) >= (a11 - 2 * a8 - 2))
    {
      v37 = a11 - 2 * a8 - 2;
    }

    else
    {
      v37 = a5 - a4;
    }

    v77 = v36;
    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v36);
    v39 = 0;
    if (a8 && (PreviousUtf8Offset & 0x80000000) == 0)
    {
      v39 = 0;
      v40 = PreviousUtf8Offset;
      do
      {
        Utf8_LengthInBytes(&__s[v40], 1);
        ++v39;
        if (!v40)
        {
          break;
        }

        v41 = utf8_GetPreviousUtf8Offset(__s, v40);
        if ((v41 & 0x8000) != 0)
        {
          break;
        }

        v40 = v41;
      }

      while (a8 > v39);
    }

    v42 = a9;
    LOWORD(v43) = v39;
    if (a10)
    {
      v44 = a8 >= a11 ? a11 : a8;
      LOWORD(v43) = a8;
      if (v44)
      {
        v45 = v26;
        do
        {
          v46 = *v45++;
          cstdlib_strcpy(v46, a10);
          --v44;
        }

        while (v44);
        LOWORD(v43) = a8;
        v42 = a9;
        v35 = a13;
      }
    }

    v47 = a14;
    *v35 = v43;
    if (v42 == 1)
    {
      **(v26 + 8 * v43) = -61;
      LOWORD(v43) = v43 + 1;
    }

    v48 = (v37 + v77);
    if (v48 <= v77 || a11 <= v43)
    {
      v49 = v77;
    }

    else
    {
      v75 = v42;
      v43 = v43;
      v49 = v77;
      do
      {
        v50 = Utf8_LengthInBytes(&__s[v49], 1);
        v51 = cstdlib_strncmp(&__s[v49], " ", v50);
        v52 = *(v26 + 8 * v43);
        if (v51)
        {
          cstdlib_strncpy(v52, &__s[v49], v50);
        }

        else
        {
          cstdlib_strcpy(v52, "<sp>");
        }

        ++v43;
        v49 += v50;
      }

      while (v48 > v49 && v43 < a11);
      v27 = a8;
      v42 = v75;
      v47 = a14;
    }

    *v47 = v43;
    if (v42 == 1)
    {
      **(v26 + 8 * v43) = -60;
      LOWORD(v43) = v43 + 1;
    }

    if (a11 <= v43)
    {
      v54 = 0;
    }

    else
    {
      v54 = 0;
      v43 = v43;
      while (v78 > v49 && v27 > v54)
      {
        v55 = Utf8_LengthInBytes(&__s[v49], 1);
        v56 = cstdlib_strncmp(&__s[v49], " ", v55);
        v57 = *(v26 + 8 * v43);
        if (v56)
        {
          cstdlib_strncpy(v57, &__s[v49], v55);
        }

        else
        {
          cstdlib_strcpy(v57, "<sp>");
        }

        ++v43;
        v49 += v55;
        ++v54;
        v27 = a8;
        if (a11 == v43)
        {
          *a12 = a11;
          goto LABEL_63;
        }
      }
    }

    if (a10 && v27 > v54 && a11 > v43)
    {
      v43 = v43;
      do
      {
        v60 = *(v26 + 8 * v43++);
        cstdlib_strcpy(v60, a10);
        if (v43 >= a11)
        {
          break;
        }

        ++v54;
      }

      while (v27 > v54);
    }

    *a12 = v43;
    if (a11 > v43)
    {
      v61 = (v26 + 8 * v43);
      v62 = v43 + 1;
      do
      {
        v63 = *v61++;
        cstdlib_strcpy(v63, "\v");
      }

      while (a11 != v62++);
    }

LABEL_63:
    *v76 = v26;
    v65 = utf8_GetPreviousUtf8Offset(__s, v77);
    v53 = 0;
    if (a10)
    {
      v66 = v27;
    }

    else
    {
      v66 = v39;
    }

    if ((v65 & 0x8000) != 0)
    {
      return v53;
    }

    if (!v27)
    {
      return v53;
    }

    v67 = v66 - 1;
    if (a11 <= (v66 - 1))
    {
      return v53;
    }

    v68 = 0;
    v69 = v65;
    while (1)
    {
      v70 = Utf8_LengthInBytes(&__s[v69], 1);
      v71 = cstdlib_strncmp(&__s[v69], " ", v70);
      v72 = *(v26 + 8 * v67);
      if (v71)
      {
        cstdlib_strncpy(v72, &__s[v69], v70);
        if (v69)
        {
          goto LABEL_72;
        }
      }

      else
      {
        cstdlib_strcpy(v72, "<sp>");
        if (v69)
        {
LABEL_72:
          v69 = utf8_GetPreviousUtf8Offset(__s, v69);
          goto LABEL_75;
        }
      }

      v69 = 0xFFFFLL;
LABEL_75:
      v53 = 0;
      if ((v69 & 0x8000) == 0 && a8 > ++v68 && a11 > --v67)
      {
        continue;
      }

      return v53;
    }
  }

  v28 = 0;
  v29 = 8 * a11;
  while (1)
  {
    v30 = heap_Calloc(*(a1 + 8), 1, 5);
    *(v26 + v28) = v30;
    if (!v30)
    {
      break;
    }

    v28 += 8;
    if (v29 == v28)
    {
      goto LABEL_6;
    }
  }

  log_OutPublic(*(a1 + 32), a2, 24048, 0, v31, v32, v33, v34, v74);
  v58 = 0;
  do
  {
    v59 = *(v26 + v58);
    if (v59)
    {
      heap_Free(*(a1 + 8), v59);
    }

    v58 += 8;
  }

  while (v29 != v58);
  v53 = 2304778250;
  heap_Free(*(a1 + 8), v26);
  *v76 = 0;
  return v53;
}

uint64_t nn_tn_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, char *__s, void *a9)
{
  v11 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  if (*a3)
  {
    goto LABEL_2;
  }

  CharContextString = nn_tn_getCharContextString(a1, a2, __s, a6, a7, (a3 + 184), (a3 + 192), *(a3 + 4), *(a3 + 12), *(a3 + 16), *(a3 + 28), &v85, &v83 + 1, &v83);
  if ((CharContextString & 0x80000000) != 0)
  {
    v11 = CharContextString;
    goto LABEL_2;
  }

  v81 = a4;
  log_OutText(*(a1 + 32), a2, 5, 0, "char context:", v17, v18, v19, 0);
  if (*(a3 + 28))
  {
    v23 = 0;
    do
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[%d] %s%s", v20, v21, v22, v23++);
    }

    while (v23 < *(a3 + 28));
  }

  v24 = heap_Alloc(*(a1 + 8), 4 * *(a3 + 112));
  v86 = v24;
  if (v24)
  {
    v29 = v24;
    v79 = a5;
    v30 = *(a3 + 112);
    if (v30)
    {
      v31 = 0;
      do
      {
        v24[v31++] = 0;
      }

      while (v30 > v31);
    }

    v32 = v85;
    if (v85)
    {
      v33 = 0;
      v80 = HIWORD(v83);
      v78 = v83;
      do
      {
        v34 = *(a3 + 168) + *(a3 + 36);
        v35 = *(*(a3 + 184) + 8 * v33);
        v36 = *v35;
        if (v36 == 195)
        {
          if (v34)
          {
            v39 = 0;
            v40 = v33 * v34;
            do
            {
              v29[v40] = -1082130432;
              ++v39;
              ++v40;
            }

            while (v34 > v39);
          }
        }

        else if (v36 == 196)
        {
          if (v34)
          {
            v37 = 0;
            v38 = v33 * v34;
            do
            {
              v29[v38] = -1073741824;
              ++v37;
              ++v38;
            }

            while (v34 > v37);
          }
        }

        else
        {
          v41 = *(a3 + 16);
          v42 = *(a3 + 168) + *(a3 + 36);
          if (v41 && (v43 = cstdlib_strcmp(v35, v41), v42 = *(a3 + 168) + *(a3 + 36), !v43))
          {
            if (v42)
            {
              v57 = 0;
              v58 = v33 * v34;
              do
              {
                v29[v58] = -1082130432;
                ++v57;
                ++v58;
              }

              while (v42 > v57);
            }
          }

          else
          {
            if (v42)
            {
              v44 = 0;
              v45 = v33 * v34;
              do
              {
                v29[v45] = 0;
                ++v44;
                ++v45;
              }

              while (v42 > v44);
            }

            v46 = (*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), *(*(a3 + 184) + 8 * v33), *(a3 + 176));
            if ((v46 & 0x1FFF) == 0x14)
            {
              if (((*(*(a3 + 128) + 56))(*(a3 + 152), *(a3 + 160), "$MEANW2V$", *(a3 + 176)) & 0x1FFF) == 0x14)
              {
                v11 = 2304778240;
                log_OutPublic(*(a1 + 32), a2, 24066, "%s%s", v51, v52, v53, v54, "expected");
                goto LABEL_2;
              }
            }

            else
            {
              v11 = v46;
              if ((v46 & 0x80000000) != 0)
              {
                v64 = *(a1 + 32);
                v65 = a2;
                v66 = 24068;
LABEL_54:
                log_OutPublic(v64, v65, v66, 0, v47, v48, v49, v50, v77);
                goto LABEL_2;
              }
            }

            v55 = v34 * v33;
            cstdlib_memcpy(&v29[v55], *(a3 + 176), 4 * *(a3 + 168));
            if (*(a3 + 32) == 1)
            {
              LOWORD(v56) = *(v79 + 24);
              *&v29[*(a3 + 168) + v55] = v56;
            }

            if (*(a3 + 12) == 2 && v33 >= v80 && v33 < v78)
            {
              v29[v55 + *(a3 + 168) + 1] = 1065353216;
            }
          }
        }

        ++v33;
      }

      while (v33 != v32);
    }

    v11 = fi_predict(*(a3 + 104), &v86, *(a3 + 28), &v84, v25, v26, v27, v28);
    if ((v11 & 0x80000000) != 0)
    {
      v64 = *(a1 + 32);
      v65 = a2;
      v66 = 24065;
      goto LABEL_54;
    }

    if (*(a3 + 30))
    {
      v59 = 0;
      v60 = 0;
      v61 = 0.0;
      v62 = v79;
      do
      {
        if (v61 < *(v84 + 4 * v59))
        {
          v61 = *(v84 + 4 * v59);
          v60 = v59;
        }

        ++v59;
      }

      while (*(a3 + 30) != v59);
      v63 = v60;
    }

    else
    {
      v63 = 0;
      v61 = 0.0;
      v62 = v79;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "results (threshold=%1.5lf)", v48, v49, v50, COERCE__INT64(*v62));
    if (*(a3 + 30))
    {
      v70 = 0;
      do
      {
        log_OutText(*(a1 + 32), a2, 5, 0, "[%3d] %1.5lf : %s %s", v67, v68, v69, v70++);
      }

      while (v70 < *(a3 + 30));
    }

    if (*(v79 + 4) >= 2u)
    {
      v71 = 0;
      do
      {
        v72 = v71;
        if (!cstdlib_strcmp(*(*(a3 + 80) + 8 * v63), *(*(v79 + 8) + 8 * v71)))
        {
          v73 = ssftmap_Find(*(a3 + 48), *(*(v79 + 8) + 8 * v72), &v82);
          if ((v73 & 0x80000000) != 0 || v61 >= *v82)
          {
            if (v61 >= *v79)
            {
              *a9 = *(*(v79 + 8) + 8 * v72);
              log_OutText(*(a1 + 32), a2, 5, 0, "validated prediction for pattern %s", v74, v75, v76, v81);
              v11 = 0;
              goto LABEL_2;
            }

            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below pattern threshold %1.5lf", v74, v75, v76, v81);
            v11 = 0;
          }

          else
          {
            v11 = v73;
            log_OutText(*(a1 + 32), a2, 5, 0, "blocked selected prediction %s; value %1.5lf below individual threshold for %s (%1.5f)", v74, v75, v76, v81);
          }
        }

        v71 = v72 + 1;
      }

      while (*(v79 + 4) - 1 > (v72 + 1));
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "invalid or blocked prediction for pattern %s, set to default %s", v67, v68, v69, v81);
    *a9 = *(v79 + 16);
LABEL_2:
    nn_tn_freeSentData(a1, a3);
    if (v86)
    {
      heap_Free(*(a1 + 8), v86);
    }
  }

  else
  {
    log_OutPublic(*(a1 + 32), a2, 24048, 0, v25, v26, v27, v28, v77);
    return 2304778250;
  }

  return v11;
}

uint64_t getStringFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a7 = 0;
  v10 = (*(a3 + 96))(a4, a5, "fecfg", a6, &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = *(a1 + 8);
    v14 = cstdlib_strlen(**&__c[3]);
    v15 = heap_Calloc(v13, 1, (v14 + 1));
    *a7 = v15;
    if (v15)
    {
      cstdlib_strcpy(v15, **&__c[3]);
    }

    else
    {
      log_OutPublic(*(a1 + 32), a2, 37000, 0, v16, v17, v18, v19, v21);
      return 2304778250;
    }
  }

  return v10;
}

uint64_t setModelPredictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v151 = *MEMORY[0x277D85DE8];
  v144 = 0;
  v143 = -1;
  v142 = 0;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  __b = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  NumericFeatureValue = getNumericFeatureValue(a3, a4, a5, "nn_tn_numPatterns", &v136);
  if ((NumericFeatureValue & 0x80000000) == 0 && v136)
  {
    cstdlib_memset(&__b, 0, 0x20uLL);
    v13 = getNumericFeatureValue(a3, a4, a5, "nn_tn_numAllPredictions", (a6 + 72));
    if ((v13 & 0x80000000) == 0)
    {
      v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 72));
      *(a6 + 80) = v14;
      if (!v14 || (v19 = *(a1 + 8), v20 = cstdlib_strlen("DEFAULT"), **(a6 + 80) = heap_Calloc(v19, 1, v20 + 1), (v21 = **(a6 + 80)) == 0))
      {
LABEL_76:
        NumericFeatureValue = 2304778250;
        log_OutPublic(*(a1 + 32), a2, 24048, 0, v15, v16, v17, v18, v125);
        return NumericFeatureValue;
      }

      v135 = 1;
      cstdlib_strcpy(v21, "DEFAULT");
      cstdlib_memset(&v139, 0, 0x28uLL);
      *&v139 = ssftmap_ElemCopyString;
      *(&v140 + 1) = patternMap_CopyData;
      *(&v139 + 1) = ssftmap_ElemFreeString;
      v141 = patternMap_FreeData;
      *&v140 = ssftmap_ElemCompareKeysString;
      v22 = *(a1 + 8);
      v148 = v139;
      v149 = v140;
      v150 = patternMap_FreeData;
      v13 = ssftmap_ObjOpen(v22, 0, &v148, (a6 + 40));
      if ((v13 & 0x80000000) == 0)
      {
        cstdlib_memset(&v132, 0, 0x28uLL);
        *&v132 = ssftmap_ElemCopyString;
        *(&v133 + 1) = floatThreshold_CopyData;
        *(&v132 + 1) = ssftmap_ElemFreeString;
        v134 = floatThreshold_FreeData;
        *&v133 = ssftmap_ElemCompareKeysString;
        v23 = *(a1 + 8);
        v148 = v132;
        v149 = v133;
        v150 = floatThreshold_FreeData;
        v13 = ssftmap_ObjOpen(v23, 0, &v148, (a6 + 48));
        if ((v13 & 0x80000000) == 0)
        {
          v24 = 0;
          v131 = a2;
          while (1)
          {
            setDictKeyString(&v148, "nn_tn_patternName", ++v24);
            v143 = -1;
            v13 = (*(a3 + 96))(a4, a5, "fecfg", &v148, &v144, &v143, &v142);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            v127 = v24;
            if (v143)
            {
              v25 = *v144;
              v26 = cstdlib_strchr(*v144, v142);
              if (v26)
              {
                *v26 = 0;
              }

              v27 = *(a1 + 8);
              v28 = cstdlib_strlen(v25);
              v29 = heap_Calloc(v27, 1, v28 + 1);
              if (!v29)
              {
                goto LABEL_76;
              }

              v30 = v29;
              cstdlib_strcpy(v29, v25);
              v24 = v127;
            }

            else
            {
              v30 = 0;
            }

            setDictKeyString(&v148, "nn_tn_patternThreshold", v24);
            v147 = 0;
            v146 = -1;
            v145 = 0;
            LODWORD(__b) = 0;
            v31 = (*(a3 + 96))(a4, a5, "fecfg", &v148, &v147, &v146, &v145);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (v146 == 1 && v147)
            {
              v32 = cstdlib_strchr(*v147, v145);
              if (v32)
              {
                *v32 = 0;
              }

              cstdlib_atof(*v147);
              *&v33 = v33;
              LODWORD(__b) = LODWORD(v33);
            }

            setDictKeyString(&v148, "nn_tn_numPredictions", v24);
            v31 = getNumericFeatureValue(a3, a4, a5, &v148, &__b + 2);
            if ((v31 & 0x80000000) != 0)
            {
LABEL_80:
              NumericFeatureValue = v31;
              goto LABEL_95;
            }

            *(&__b + 1) = heap_Calloc(*(a1 + 8), 1, 8 * WORD2(__b));
            if (!*(&__b + 1))
            {
              NumericFeatureValue = 2304778250;
              log_OutPublic(*(a1 + 32), a2, 24048, 0, v34, v35, v36, v37, v125);
              goto LABEL_95;
            }

            setDictKeyString(&v148, "nn_tn_predictions", v24);
            v128 = *(a6 + 80);
            v129 = *(&__b + 1);
            v147 = 0;
            v146 = -1;
            v145 = 0;
            NumericFeatureValue = (*(a3 + 96))(a4, a5, "fecfg", &v148, &v147, &v146, &v145);
            if ((NumericFeatureValue & 0x80000000) == 0 && v146)
            {
              v126 = v30;
              v38 = *v147;
              v39 = cstdlib_strchr(*v147, v145);
              if (v39)
              {
                *v39 = 0;
              }

              cstdlib_strlen(v38);
              v40 = cstdlib_strchr(v38, 59);
              if (v40)
              {
                v41 = v40;
                LOWORD(v42) = 0;
                while (1)
                {
                  *v41 = 0;
                  v43 = *(a1 + 8);
                  v44 = cstdlib_strlen(v38) + 1;
                  v45 = v43;
                  a2 = v131;
                  v46 = heap_Calloc(v45, 1, v44);
                  *(v129 + 8 * v42) = v46;
                  if (!v46)
                  {
                    break;
                  }

                  cstdlib_strcpy(v46, v38);
                  v51 = addToAllPredictions(a1, v131, v38, v128, &v135);
                  if ((v51 & 0x80000000) != 0)
                  {
                    NumericFeatureValue = v51;
                    goto LABEL_84;
                  }

                  LOWORD(v42) = v42 + 1;
                  v38 = v41 + 1;
                  v41 = cstdlib_strchr(v41 + 1, 59);
                  if (!v41)
                  {
                    v42 = v42;
                    goto LABEL_36;
                  }
                }

LABEL_78:
                NumericFeatureValue = 2304778250;
                v121 = *(a1 + 32);
                v122 = a2;
LABEL_83:
                log_OutPublic(v121, v122, 24048, 0, v47, v48, v49, v50, v125);
                goto LABEL_84;
              }

              if (!v38)
              {
                v24 = v127;
                goto LABEL_39;
              }

              v42 = 0;
LABEL_36:
              v52 = *(a1 + 8);
              v53 = cstdlib_strlen(v38);
              v54 = heap_Calloc(v52, 1, v53 + 1);
              *(v129 + 8 * v42) = v54;
              if (!v54)
              {
                goto LABEL_78;
              }

              cstdlib_strcpy(v54, v38);
              NumericFeatureValue = addToAllPredictions(a1, a2, v38, v128, &v135);
              v30 = v126;
              v24 = v127;
            }

            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_95;
            }

LABEL_39:
            setDictKeyString(&v148, "nn_tn_predictionsThresholds", v24);
            v130 = *(a6 + 48);
            v147 = 0;
            v146 = -1;
            v145 = 0;
            v55 = (*(a3 + 96))(a4, a5, "fecfg", &v148, &v147, &v146, &v145);
            NumericFeatureValue = v55;
            if ((v55 & 0x80000000) != 0 || !v146)
            {
              if ((v55 & 0x80000000) != 0)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v126 = v30;
              v56 = *v147;
              v57 = cstdlib_strchr(*v147, v145);
              if (v57)
              {
                *v57 = 0;
              }

              cstdlib_strlen(v56);
              v58 = cstdlib_strchr(v56, 59);
              if (v58)
              {
                v59 = v58;
                while (1)
                {
                  *v59 = 0;
                  v60 = cstdlib_strchr(v56, 44);
                  if (!v60)
                  {
                    break;
                  }

                  v65 = v60;
                  v66 = *(a1 + 8);
                  v67 = cstdlib_strlen(v56);
                  v68 = heap_Calloc(v66, 1, v67 + 1);
                  if (!v68)
                  {
                    goto LABEL_82;
                  }

                  v69 = v68;
                  v70 = cstdlib_strlen(v68);
                  cstdlib_memset(v69, 0, v70);
                  cstdlib_strncpy(v69, v56, (v65 - v56));
                  v71 = *(a1 + 8);
                  v72 = cstdlib_strlen(v56);
                  v73 = heap_Calloc(v71, 1, v72 + 1);
                  if (!v73)
                  {
                    goto LABEL_85;
                  }

                  v78 = v73;
                  v79 = cstdlib_strlen(v56);
                  cstdlib_memset(v78, 0, v79 + 1);
                  cstdlib_strcpy(v78, v65 + 1);
                  v80 = heap_Calloc(*(a1 + 8), 1, 4);
                  if (!v80)
                  {
                    goto LABEL_86;
                  }

                  v85 = v80;
                  cstdlib_memset(v80, 0, 4uLL);
                  cstdlib_atof(v78);
                  *&v86 = v86;
                  *v85 = LODWORD(v86);
                  log_OutText(*(a1 + 32), v131, 5, 0, "Adding individual threshold %s : %1.5lf", v87, v88, v89, v69);
                  v90 = ssftmap_Insert(v130, v69, v85);
                  if ((v90 & 0x80000000) != 0)
                  {
                    goto LABEL_87;
                  }

                  v56 = v59 + 1;
                  v59 = cstdlib_strchr(v59 + 1, 59);
                  heap_Free(*(a1 + 8), v69);
                  heap_Free(*(a1 + 8), v78);
                  heap_Free(*(a1 + 8), v85);
                  a2 = v131;
                  if (!v59)
                  {
                    goto LABEL_55;
                  }
                }

LABEL_81:
                log_OutPublic(*(a1 + 32), a2, 24048, 0, v61, v62, v63, v64, v125);
                NumericFeatureValue = 2304778246;
LABEL_84:
                v30 = v126;
                goto LABEL_95;
              }

              if (v56)
              {
LABEL_55:
                v91 = cstdlib_strchr(v56, 44);
                if (!v91)
                {
                  goto LABEL_81;
                }

                v92 = v91;
                v93 = *(a1 + 8);
                v94 = cstdlib_strlen(v56);
                v95 = heap_Calloc(v93, 1, v94 + 1);
                if (!v95)
                {
LABEL_82:
                  NumericFeatureValue = 2304778250;
                  v121 = *(a1 + 32);
                  v122 = v131;
                  goto LABEL_83;
                }

                v69 = v95;
                v96 = cstdlib_strlen(v56);
                cstdlib_memset(v69, 0, v96);
                cstdlib_strncpy(v69, v56, (v92 - v56));
                v97 = *(a1 + 8);
                v98 = cstdlib_strlen(v56);
                v99 = heap_Calloc(v97, 1, v98 + 1);
                if (!v99)
                {
LABEL_85:
                  v30 = v126;
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v131, 24048, 0, v74, v75, v76, v77, v125);
                  v123 = *(a1 + 8);
                  v124 = v69;
                  goto LABEL_90;
                }

                v78 = v99;
                v100 = cstdlib_strlen(v56);
                cstdlib_memset(v78, 0, v100 + 1);
                cstdlib_strcpy(v78, v92 + 1);
                v101 = heap_Calloc(*(a1 + 8), 1, 4);
                if (!v101)
                {
LABEL_86:
                  NumericFeatureValue = 2304778250;
                  log_OutPublic(*(a1 + 32), v131, 24048, 0, v81, v82, v83, v84, v125);
                  v85 = 0;
LABEL_88:
                  v30 = v126;
                  heap_Free(*(a1 + 8), v69);
                  heap_Free(*(a1 + 8), v78);
                  if (v85)
                  {
                    v123 = *(a1 + 8);
                    v124 = v85;
LABEL_90:
                    heap_Free(v123, v124);
                  }

LABEL_95:
                  if (v30)
                  {
                    heap_Free(*(a1 + 8), v30);
                  }

                  return NumericFeatureValue;
                }

                v85 = v101;
                cstdlib_memset(v101, 0, 4uLL);
                cstdlib_atof(v78);
                *&v102 = v102;
                *v85 = LODWORD(v102);
                log_OutText(*(a1 + 32), v131, 5, 0, "Adding individual threshold %s : %1.5lf", v103, v104, v105, v69);
                v90 = ssftmap_Insert(v130, v69, v85);
                if ((v90 & 0x80000000) != 0)
                {
LABEL_87:
                  NumericFeatureValue = v90;
                  goto LABEL_88;
                }

                heap_Free(*(a1 + 8), v69);
                heap_Free(*(a1 + 8), v78);
                heap_Free(*(a1 + 8), v85);
                a2 = v131;
              }

              v30 = v126;
              v24 = v127;
            }

            setDictKeyString(&v148, "nn_tn_defaultPrediction", v24);
            v143 = -1;
            v31 = (*(a3 + 96))(a4, a5, "fecfg", &v148, &v144, &v143, &v142);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (v143)
            {
              v106 = v30;
              v107 = *v144;
              v108 = cstdlib_strchr(*v144, v142);
              if (v108)
              {
                *v108 = 0;
              }

              v109 = *(a1 + 8);
              v110 = cstdlib_strlen(v107);
              v111 = heap_Calloc(v109, 1, v110 + 1);
              *&v138 = v111;
              if (!v111)
              {
                NumericFeatureValue = 2304778250;
                log_OutPublic(*(a1 + 32), a2, 24048, 0, v112, v113, v114, v115, v125);
                v30 = v106;
                goto LABEL_95;
              }

              cstdlib_strcpy(v111, v107);
              v30 = v106;
              v24 = v127;
            }

            setDictKeyString(&v148, "nn_tn_patternIndex", v24);
            v31 = getNumericFeatureValue(a3, a4, a5, &v148, &v138 + 4);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            NumericFeatureValue = ssftmap_Insert(*(a6 + 40), v30, &__b);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_95;
            }

            cstdlib_memset(&__b, 0, 0x20uLL);
            if (v30)
            {
              heap_Free(*(a1 + 8), v30);
            }

            if (v136 <= v24)
            {
              if (v135 != *(a6 + 72))
              {
                log_OutPublic(*(a1 + 32), a2, 24071, 0, v116, v117, v118, v119, v125);
                return 2304778240;
              }

              return NumericFeatureValue;
            }
          }
        }
      }
    }

    return v13;
  }

  return NumericFeatureValue;
}

uint64_t patternMap_CopyData(const void *a1, void *a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Calloc(a2, 1, 32);
    if (v6)
    {
      v7 = v6;
      cstdlib_memcpy(v6, a1, 0x20uLL);
      v3 = 0;
      *a3 = v7;
    }

    else
    {
      return 2304778250;
    }
  }

  return v3;
}

void *patternMap_FreeData(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      if (*(result + 2))
      {
        v5 = 0;
        do
        {
          heap_Free(a2, *(*(v3 + 8) + 8 * v5));
          *(*(v3 + 8) + 8 * v5++) = 0;
        }

        while (v5 < *(v3 + 4));
        v4 = *(v3 + 8);
      }

      *(v3 + 4) = 0;
      heap_Free(a2, v4);
      *(v3 + 8) = 0;
    }

    v6 = *(v3 + 16);
    if (v6)
    {
      heap_Free(a2, v6);
      *(v3 + 16) = 0;
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t floatThreshold_CopyData(const void *a1, uint64_t a2, void *a3)
{
  v3 = 2304778247;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 4);
    if (v6)
    {
      v7 = v6;
      cstdlib_memcpy(v6, a1, 4uLL);
      v3 = 0;
      *a3 = v7;
    }

    else
    {
      return 2304778250;
    }
  }

  return v3;
}

void *floatThreshold_FreeData(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

char *setDictKeyString(void *a1, const char *a2, unsigned int a3)
{
  cstdlib_memset(a1, 0, 0x20uLL);
  cstdlib_strcpy(a1, a2);
  v6 = LH_itoa(a3, v8, 0xAu);
  return cstdlib_strcat(a1, v6);
}

uint64_t addToAllPredictions(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, _WORD *a5)
{
  if (*a5)
  {
    v10 = 0;
    while (1)
    {
      result = cstdlib_strcmp(__s, *(a4 + 8 * v10));
      if (!result)
      {
        break;
      }

      if (++v10 >= *a5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = *(a1 + 8);
    v13 = cstdlib_strlen(__s);
    v14 = heap_Calloc(v12, 1, v13 + 1);
    v19 = *a5;
    *(a4 + 8 * v19) = v14;
    if (v14)
    {
      *a5 = v19 + 1;
      cstdlib_strcpy(v14, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), a2, 24048, 0, v15, v16, v17, v18, v20);
      return 2304778250;
    }
  }

  return result;
}

uint64_t fe_luann_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2713722881;
  }

  result = 0;
  *a2 = &IFeLuaNN;
  return result;
}

uint64_t fe_luann_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2713722887;
  v20 = 0;
  v21 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v21);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v10 = heap_Alloc(v21[1], 968);
      if (!v10)
      {
        log_OutPublic(v21[4], "FE_LUANN", 83000, 0, v11, v12, v13, v14, v20);
        return 2713722890;
      }

      v15 = v10;
      Object = objc_GetObject(v21[6], "SYNTHSTREAM", &v20);
      if ((Object & 0x80000000) != 0 || (*v15 = a3, v15[1] = a4, v17 = v20, v15[2] = v21, v15[3] = 0, v15[9] = *(v17 + 8), Allocator = ooc_utils_createAllocator((v15 + 4), a3, a4), Object = LH_ERROR_to_VERROR(Allocator), (Object & 0x80000000) != 0))
      {
        v5 = Object;
LABEL_10:
        fe_luann_ObjClose(*a5, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        return v5;
      }

      *a5 = v15;
      *(a5 + 8) = 1081;
      v5 = fe_luann_ObjReopen(v15, *(a5 + 8));
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  return v5;
}

uint64_t fe_luann_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((v3 & 0x80000000) != 0)
  {
    return 2713722888;
  }

  v4 = v3;
  if (a1)
  {
    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    if (*(a1 + 24))
    {
      luavmldoutil_destroy_lua_vm(a1 + 32, (a1 + 24));
    }

    OOCAllocator_Des();
    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return v4;
}

uint64_t fe_luann_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((result & 0x80000000) != 0)
  {
    return 2713722888;
  }

  if (a1)
  {
    if (*(a1 + 24))
    {
      luavmldoutil_destroy_lua_vm(a1 + 32, (a1 + 24));
    }

    LODWORD(result) = luavmldoutil_initialize_lua_vm(*a1, *(a1 + 8), a1 + 32, "runTNIdentification", "FE_LUANN", (a1 + 24), 0);
    if ((result & 0x80000000) != 0)
    {
      return 2713723392;
    }

    else if (*(a1 + 24))
    {
      return result;
    }

    else
    {
      return 2713723392;
    }
  }

  return result;
}

uint64_t fe_luann_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((v7 & 0x80000000) != 0)
  {
    return 2713722888;
  }

  if (!a1)
  {
    return v7;
  }

  synstrmaux_InitStreamOpener(a1 + 80, *(*(a1 + 16) + 32), "FE_LUANN");
  synstrmaux_RegisterInStream((a1 + 80), "text/plain;charset=utf-8", 0, a1 + 904);
  synstrmaux_RegisterInStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 80), "text/plain;charset=utf-8", a1 + 936);
  synstrmaux_RegisterOutStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", a1 + 952);
  v8 = synstrmaux_OpenStreams((a1 + 80), *(a1 + 72), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 80), *(a1 + 72));
  }

  return v8;
}

uint64_t fe_luann_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  memset(v40, 0, sizeof(v40));
  __src = 0;
  v39 = 0;
  *v36 = 0;
  __n = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  if ((safeh_HandleCheck(a1, a2, 1081, 968) & 0x80000000) != 0)
  {
    return 2713722888;
  }

  *a5 = 1;
  v7 = (*(*(a1 + 72) + 144))(*(a1 + 904), *(a1 + 912), &v40[8], v40);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = (*(*(a1 + 72) + 144))(*(a1 + 920), *(a1 + 928), &v40[4], v40);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (*&v40[8])
  {
    v9 = (*(*(a1 + 72) + 88))(*(a1 + 904), *(a1 + 912), &__src, &__n + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v8 = v9;
      v23 = 0;
      v19 = 0;
      v15 = 0;
    }

    else
    {
      v10 = heap_Alloc(*(*(a1 + 16) + 8), (HIDWORD(__n) + 1));
      v15 = v10;
      if (v10)
      {
        cstdlib_memcpy(v10, __src, HIDWORD(__n));
        *(v15 + HIDWORD(__n)) = 0;
        v16 = (*(*(a1 + 72) + 88))(*(a1 + 920), *(a1 + 928), v36, &__n);
        if ((v16 & 0x80000000) != 0)
        {
          v8 = v16;
          v23 = 0;
          v19 = 0;
        }

        else
        {
          v17 = __n;
          v18 = fe_luann_processLuaFunction(a1, "runTNIdentification", v15, *v36, (__n >> 5), &v35, &v33 + 1, &v31, &v32 + 1);
          v19 = v35;
          if ((v18 & 0x80000000) != 0)
          {
            v8 = v18;
            v23 = 0;
          }

          else
          {
            if (v35)
            {
              v20 = v35;
            }

            else
            {
              v20 = *v36;
            }

            if (v35)
            {
              v21 = HIWORD(v33);
            }

            else
            {
              v21 = v17 >> 5;
            }

            v22 = fe_luann_processLuaFunction(a1, "runHomographDisambiguation", v15, v20, v21, &v34, &v33, &v30, &v32);
            v23 = v34;
            if ((v22 & 0x80000000) == 0)
            {
              v24 = v33;
              v22 = (*(*(a1 + 72) + 104))(*(a1 + 936), *(a1 + 944), __src, HIDWORD(__n));
              if ((v22 & 0x80000000) == 0)
              {
                v25 = v23 ? v24 : v21;
                v26 = v23 ? v23 : v20;
                v22 = (*(*(a1 + 72) + 104))(*(a1 + 952), *(a1 + 960), v26, 32 * v25);
                if ((v22 & 0x80000000) == 0)
                {
                  v22 = (*(*(a1 + 72) + 96))(*(a1 + 904), *(a1 + 912), HIDWORD(__n));
                  if ((v22 & 0x80000000) == 0)
                  {
                    v22 = (*(*(a1 + 72) + 96))(*(a1 + 920), *(a1 + 928), __n);
                  }
                }
              }
            }

            v8 = v22;
          }
        }
      }

      else
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LUANN", 83000, 0, v11, v12, v13, v14, v29);
        v23 = 0;
        v19 = 0;
        v8 = 2713722890;
      }
    }

    fe_luann_FreeMarkersMem(*(a1 + 16), v19, v31, HIWORD(v32));
    fe_luann_FreeMarkersMem(*(a1 + 16), v23, v30, v32);
    if (v15)
    {
      heap_Free(*(*(a1 + 16) + 8), v15);
    }

    return v8;
  }

  v27 = *v40;
  if (*v40)
  {
    if (*&v40[4])
    {
      v7 = (*(*(a1 + 72) + 88))(*(a1 + 920), *(a1 + 928), v36, &__n);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v7 = (*(*(a1 + 72) + 104))(*(a1 + 952), *(a1 + 960), *v36, __n);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v8 = (*(*(a1 + 72) + 96))(*(a1 + 920), *(a1 + 928), __n);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v27 = *v40;
    }

    if (!v27)
    {
      return v8;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 80), *(a1 + 72));
  }

  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", &v39) & 0x80000000) != 0 || !v39 || !*v39)
  {
    *a5 = 0;
  }

  return v8;
}

uint64_t fe_luann_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1081, 968);
  if ((result & 0x80000000) != 0)
  {
    return 2713722888;
  }

  if (a1)
  {
    v4 = *(a1 + 72);

    return synstrmaux_CloseStreams((a1 + 80), v4);
  }

  return result;
}

uint64_t fe_luann_processLuaFunction(uint64_t a1, char *__s1, uint64_t a3, int *a4, unsigned int a5, uint64_t *a6, unsigned __int16 *a7, uint64_t *a8, _WORD *a9)
{
  v58 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v16 = cstdlib_strcmp(__s1, "runTNIdentification");
  *a6 = 0;
  *a7 = 0;
  v17 = PNEW_LDOObject_Con(a1 + 32, a1 + 32, &v56);
  v18 = LH_ERROR_to_VERROR(v17);
  if ((v18 & 0x80000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v19 = LuaVMLDO_RunFunctionWithStringAndMarkerArgumentsReturningTableWithNewMarkersInfo(*(a1 + 24), __s1, a3, a4, a5, v56);
    v20 = LH_ERROR_to_VERROR(v19);
    if ((v20 & 0x80000000) == 0)
    {
      v53 = v16;
      v21 = *(v56 + 32);
      v54 = *(v56 + 40);
      if (((v54 - v21) >> 5))
      {
        v22 = heap_Calloc(*(*(a1 + 16) + 8), ((v54 - v21) >> 5) + a5, 32);
        *a6 = v22;
        if (v22)
        {
          cstdlib_memcpy(v22, a4, 32 * a5);
          *a7 = a5;
          v27 = heap_Calloc(*(*(a1 + 16) + 8), ((v54 - v21) >> 5), 8);
          *a8 = v27;
          if (v27)
          {
            while (1)
            {
              if (v21 >= v54)
              {
                goto LABEL_40;
              }

              v28 = v21[3];
              v29 = LHString_BorrowCPtr(*v21);
              v30 = cstdlib_atoi(v29);
              v31 = LHString_BorrowCPtr(v28);
              v32 = cstdlib_strchr(v31, 20);
              if (!v32 || (v33 = v32, v34 = (v32 - v31), v34 > 0x1D))
              {
                v20 = 2713722880;
                goto LABEL_40;
              }

              cstdlib_strncpy(__dst, v31, v34);
              __dst[v34] = 0;
              v35 = LH_atoi(__dst);
              v36 = *a6;
              v37 = *a9;
              v38 = (*a8 + 8 * v37);
              v39 = *a7;
              if (v53)
              {
                if (!*a7)
                {
                  goto LABEL_35;
                }

                v40 = 0;
                v41 = 12;
                while (*(v36 + v41) <= v30)
                {
                  ++v40;
                  v41 += 32;
                  if (v39 == v40)
                  {
                    goto LABEL_23;
                  }
                }

                LOWORD(v39) = v40;
LABEL_23:
                inserted = auxInsertMarker(a1, v36, a7, v39, v30, v35, 34, v33 + 1, v38);
                goto LABEL_33;
              }

              if (!*a7)
              {
                goto LABEL_35;
              }

              v42 = cstdlib_strcmp(v33 + 1, "normal");
              v43 = *a7;
              if (v42)
              {
                if (v43 >= 2)
                {
                  v44 = (v36 + 44);
                  v45 = 1;
                  while (1)
                  {
                    v46 = *v44;
                    v44 += 8;
                    if (v46 > v30)
                    {
                      break;
                    }

                    if (v43 == ++v45)
                    {
                      goto LABEL_30;
                    }
                  }

                  LOWORD(v43) = v45;
LABEL_30:
                  if (v43 != 1)
                  {
                    LOWORD(v43) = v43 - (*(v36 + 32 * v43 + 12) == v30);
                    goto LABEL_32;
                  }
                }
              }

              else if (v43 >= 2)
              {
                v48 = (v36 + 44);
                v49 = 1;
                while (1)
                {
                  v50 = *v48;
                  v48 += 8;
                  if (v50 >= v30)
                  {
                    break;
                  }

                  if (v43 == ++v49)
                  {
                    goto LABEL_32;
                  }
                }

                LOWORD(v43) = v49;
                goto LABEL_32;
              }

              LOWORD(v43) = 1;
LABEL_32:
              inserted = auxInsertMarker(a1, v36, a7, v43, v30, v35, 21, v33 + 1, v38);
LABEL_33:
              v20 = inserted;
              if ((inserted & 0x80000000) != 0)
              {
                goto LABEL_40;
              }

              LOWORD(v37) = *a9;
LABEL_35:
              v20 = 0;
              *a9 = v37 + 1;
              v21 += 4;
            }
          }
        }

        log_OutPublic(*(*(a1 + 16) + 32), "FE_LUANN", 83000, 0, v23, v24, v25, v26, v52);
        v20 = 2713722890;
      }
    }
  }

LABEL_40:
  if (v56)
  {
    OOC_PlacementDeleteObject(a1 + 32, v56);
  }

  if ((v20 & 0x80000000) != 0)
  {
    fe_luann_FreeMarkersMem(*(a1 + 16), *a6, *a8, *a9);
    *a6 = 0;
    *a7 = 0;
    *a8 = 0;
    *a9 = 0;
  }

  return v20;
}

void *fe_luann_FreeMarkersMem(void *result, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v6 = result;
  if (a2)
  {
    result = heap_Free(result[1], a2);
  }

  if (a3)
  {
    if (v4)
    {
      v4 = v4;
      v7 = a3;
      do
      {
        if (*v7)
        {
          heap_Free(v6[1], *v7);
        }

        ++v7;
        --v4;
      }

      while (v4);
    }

    v8 = v6[1];

    return heap_Free(v8, a3);
  }

  return result;
}

uint64_t auxInsertMarker(uint64_t a1, uint64_t a2, _WORD *a3, unsigned int a4, int a5, int a6, int a7, char *__s, char **a9)
{
  if (*a3 - 1 <= a4)
  {
    v17 = a4;
    goto LABEL_6;
  }

  if (a4)
  {
    v17 = a4;
    if (*(a2 + 32 * a4 - 28) < *(a2 + 32 * a4 + 4))
    {
      goto LABEL_8;
    }

LABEL_6:
    v18 = (a2 + 32 * v17 - 28);
    goto LABEL_9;
  }

  v17 = 0;
LABEL_8:
  v18 = (a2 + 32 * v17 + 4);
LABEL_9:
  v19 = *v18;
  v20 = *(*(a1 + 16) + 8);
  v21 = cstdlib_strlen(__s);
  v22 = heap_Alloc(v20, v21 + 1);
  if (v22)
  {
    v27 = v22;
    cstdlib_strcpy(v22, __s);
    v28 = *a3 - a4;
    if (v28)
    {
      cstdlib_memmove((a2 + 32 * a4 + 32), (a2 + 32 * a4), 32 * v28);
    }

    result = 0;
    v30 = a2 + 32 * a4;
    *(v30 + 24) = v27;
    *(v30 + 12) = a5;
    *(v30 + 16) = a6;
    *v30 = a7;
    *(v30 + 4) = v19;
    *(v30 + 8) = 0;
    *a9 = v27;
    ++*a3;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LUANN", 83000, 0, v23, v24, v25, v26, v31);
    return 2713722890;
  }

  return result;
}

uint64_t fe_udwl_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!a5)
  {
    return 2323652615;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v29 + 48), "SYNTHSTREAM", &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v29 + 48), "FE_DEPES", &v27);
  v10 = *(v29 + 48);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v10, "SYNTHSTREAM");
  }

  else
  {
    objc_GetObject(v10, "DCTEG", &v26);
    v11 = heap_Calloc(*(v29 + 8), 1, 976);
    if (v11)
    {
      v16 = v11;
      *v11 = a3;
      *(v11 + 8) = a4;
      v18 = v28;
      v17 = v29;
      *(v11 + 16) = v29;
      v19 = *(v18 + 8);
      v20 = v27;
      *(v11 + 40) = *(v27 + 8);
      *(v11 + 48) = v19;
      *(v11 + 24) = *(v20 + 16);
      v21 = v26;
      if (v26)
      {
        v22 = *(v26 + 8);
        if (v22)
        {
          *(v11 + 944) = v22;
          *(v11 + 952) = *(v21 + 16);
        }
      }

      *(v11 + 968) = 512;
      if ((paramc_ParamGetUInt(*(v17 + 40), "udctmaxlookuplen", &v25) & 0x80000000) == 0)
      {
        *(v16 + 968) = v25;
      }

      *a5 = v16;
      *(a5 + 8) = 62346;
    }

    else
    {
      log_OutPublic(*(v29 + 32), "FE_UDWL", 40000, 0, v12, v13, v14, v15, v24);
      objc_ReleaseObject(*(v29 + 48), "SYNTHSTREAM");
      objc_ReleaseObject(*(v29 + 48), "FE_DEPES");
      if (v26)
      {
        objc_ReleaseObject(*(v29 + 48), "DCTEG");
      }

      return 2323652618;
    }
  }

  return Object;
}

uint64_t fe_udwl_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((result & 0x80000000) != 0)
  {
    return 2323652616;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    if (*(a1 + 944))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "DCTEG");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_udwl_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v3 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v4 = v3;
  if (a1)
  {
    *(a1 + 968) = 512;
    if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxlookuplen", &v6) & 0x80000000) == 0)
    {
      *(a1 + 968) = v6;
    }
  }

  return v4;
}

uint64_t fe_udwl_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  synstrmaux_InitStreamOpener(a1 + 56, *(*(a1 + 16) + 32), "FE_UDWL");
  synstrmaux_RegisterInStream((a1 + 56), "text/plain;charset=utf-8", 0, a1 + 880);
  synstrmaux_RegisterInStream((a1 + 56), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 56), "text/plain;charset=utf-8", a1 + 912);
  synstrmaux_RegisterOutStream((a1 + 56), "application/x-realspeak-markers-pp;version=4.0", a1 + 928);
  v7 = synstrmaux_OpenStreams((a1 + 56), *(a1 + 48), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 56), *(a1 + 48));
  }

  return v7;
}

BOOL sameLanguage(const char *a1, char *__s1, const char *a3)
{
  if (cstdlib_strcmp(__s1, "normal"))
  {
    return cstdlib_strstr(__s1, a3) != 0;
  }

  else
  {
    return cstdlib_strcmp(a3, a1) == 0;
  }
}

uint64_t fe_udwl_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __src[1] = *MEMORY[0x277D85DE8];
  v400 = 0uLL;
  v8 = 2323652618;
  v396 = 0;
  v397 = 0;
  v395 = 0;
  v393 = 0;
  v392 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 15;
  v387 = 0;
  v386 = 0;
  *__s1 = 0;
  v385 = 0;
  v382 = 0;
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v399 = 0;
  v398 = 0;
  v394 = 0;
  *a5 = 1;
  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "numberoutputtranscriptions", &v382) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v382;
  }

  if (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "udctmaxdictretlen", &v382) < 0)
  {
    v10 = 512;
  }

  else
  {
    v10 = v382;
  }

  v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v400 + 12, &v400 + 4);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v17 = (*(*(a1 + 48) + 144))(*(a1 + 896), *(a1 + 904), &v400 + 8, &v400 + 4);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v12, v13, v14, v15, v16, "BEG");
  if (HIDWORD(v400))
  {
    v11 = (*(*(a1 + 48) + 144))(*(a1 + 880), *(a1 + 888), &v400 + 12, &v400 + 4);
    if ((v11 & 0x80000000) == 0)
    {
      v22 = heap_Calloc(*(*(a1 + 16) + 8), 1, (HIDWORD(v400) + 1));
      if (!v22)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v18, v19, v20, v21, v315);
        v47 = 0;
        v34 = 0;
        v31 = 0;
        v379 = 0;
        v35 = 0;
        v48 = 0;
        v49 = 0;
        v380 = 0;
LABEL_55:
        log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s %s%u", v42, v43, v44, v45, v46, "END");
        if (v47 && v22)
        {
          v51 = v49 + v389;
          if (v51 < 2)
          {
            goto LABEL_65;
          }

          v52 = 1;
          do
          {
            v53 = v52;
            if (*&v22[4 * v52])
            {
              v54 = *(v47 + 8 * v52);
              if (*v54 != 7)
              {
                heap_Free(*(*(a1 + 16) + 8), *(v54 + 24));
                v54 = *(v47 + 8 * v53);
              }

              heap_Free(*(*(a1 + 16) + 8), v54);
            }

            v52 = v53 + 1;
          }

          while (v51 > (v53 + 1));
        }

        if (!v47)
        {
LABEL_66:
          if (v22)
          {
            heap_Free(*(*(a1 + 16) + 8), v22);
            v387 = 0;
          }

          if (v35)
          {
            heap_Free(*(*(a1 + 16) + 8), v35);
          }

          if (v379)
          {
            heap_Free(*(*(a1 + 16) + 8), v379);
          }

          if (v31)
          {
            heap_Free(*(*(a1 + 16) + 8), v31);
          }

          if (v34)
          {
            heap_Free(*(*(a1 + 16) + 8), v34);
          }

          if (v48)
          {
            heap_Free(*(*(a1 + 16) + 8), v48);
          }

          if (v380)
          {
            heap_Free(*(*(a1 + 16) + 8), v380);
          }

          return v8;
        }

LABEL_65:
        heap_Free(*(*(a1 + 16) + 8), v47);
        v390 = 0;
        goto LABEL_66;
      }

      v11 = (*(*(a1 + 48) + 80))(*(a1 + 880), *(a1 + 888), v22, HIDWORD(v400), &v400);
      if ((v11 & 0x80000000) == 0)
      {
        v22[HIDWORD(v400)] = 0;
        log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", v22, v400);
        MainLangLC = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v399, &v398);
        if ((MainLangLC & 0x80000000) != 0)
        {
          v34 = 0;
          v31 = 0;
          v379 = 0;
          v35 = 0;
          v48 = 0;
          LOWORD(v25) = 0;
        }

        else
        {
          v24 = v398;
          v25 = v398 >> 5;
          if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
          {
            log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v399, v24 & 0x1FFFE0);
          }

          v26 = *(a1 + 944);
          if (!v26 || !(*(v26 + 80))(*(a1 + 952), *(a1 + 960)))
          {
            v50 = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v22, v400);
            if ((v50 & 0x80000000) == 0)
            {
              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v22, v400);
              v50 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v399, v398);
              if ((v50 & 0x80000000) == 0)
              {
                if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                {
                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "application/x-realspeak-markers-pp;version=4.0", v399, v24 & 0x1FFFE0);
                }

                v50 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v398);
              }
            }

            v8 = v50;
            v34 = 0;
            v31 = 0;
LABEL_51:
            v379 = 0;
            v35 = 0;
            v48 = 0;
            v380 = 0;
LABEL_54:
            heap_Free(*(*(a1 + 16) + 8), v22);
            v49 = v25;
            v47 = v390;
            v22 = v387;
            goto LABEL_55;
          }

          cstdlib_strcpy(__dst, " §");
          v385 = "normal";
          v392 = "normal";
          MainLangLC = hlp_GetMainLangLC(*(*(a1 + 16) + 40), v383);
          if ((MainLangLC & 0x80000000) == 0)
          {
            v31 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 968) + 1, 1);
            if (v31)
            {
              v32 = v400;
              if (v400 < v10)
              {
                v32 = v10;
              }

              v378 = heap_Calloc(*(*(a1 + 16) + 8), v9 + v9 * v32 + 1, 1);
              if (v378)
              {
                v33 = v9 + v9 * v10;
                if (v33 > 0xFFFE)
                {
                  v34 = 0;
                  v379 = 0;
                  v35 = 0;
                  v380 = 0;
                  v8 = 2323652623;
LABEL_148:
                  v48 = v378;
                  goto LABEL_54;
                }

                __len = v33 + 1;
                v34 = heap_Calloc(*(*(a1 + 16) + 8), __len, 1);
                v59 = *(a1 + 16);
                if (v34)
                {
                  v60 = heap_Alloc(*(v59 + 8), v398);
                  if (v60)
                  {
                    v380 = v60;
                    cstdlib_memcpy(v60, v399, v398);
                    log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Markers IN", v61, v62, v63, v315);
                    v341 = v33;
                    v377 = (v24 >> 5);
                    v336 = v24;
                    if ((v24 >> 5))
                    {
                      v342 = v24 >> 5;
                      v67 = v380 + 2;
                      v68 = (v24 >> 5);
                      do
                      {
                        v69 = *(*(a1 + 16) + 32);
                        v70 = *(v67 - 2);
                        if (v70 == 0x4000)
                        {
                          log_OutText(v69, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v64, v65, v66, *(v67 - 1));
                        }

                        else
                        {
                          log_OutText(v69, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v64, v65, v66, v70);
                        }

                        v67 += 8;
                        --v68;
                      }

                      while (v68);
                      v71 = v380 + 4;
                      v72 = v377;
                      LOWORD(v25) = v342;
                      do
                      {
                        if (*(v71 - 4) == 1)
                        {
                          *v71 = 0;
                        }

                        v71 += 8;
                        --v72;
                      }

                      while (v72);
                    }

                    v73 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v393, 0);
                    if ((v73 & 0x80000000) != 0)
                    {
                      v379 = 0;
                      v35 = 0;
                      v8 = v73;
                      goto LABEL_148;
                    }

                    MultiWordEntry = v73;
                    v390 = heap_Calloc(*(*(a1 + 16) + 8), v377, 8);
                    v78 = *(a1 + 16);
                    v367 = v390;
                    if (!v390 || (v387 = heap_Calloc(*(v78 + 8), v377, 4), v78 = *(a1 + 16), (v363 = v387) == 0) || (v79 = heap_Calloc(*(v78 + 8), (v400 + 1), 2), v78 = *(a1 + 16), (v328 = v79) == 0))
                    {
                      log_OutPublic(*(v78 + 32), "FE_UDWL", 40000, 0, v74, v75, v76, v77, v316);
                      v379 = 0;
                      v35 = 0;
                      goto LABEL_148;
                    }

                    v343 = v25;
                    v379 = heap_Calloc(*(v78 + 8), (v400 + 1), 2);
                    if (!v379)
                    {
                      log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v80, v81, v82, v83, v316);
                      v379 = 0;
                      goto LABEL_460;
                    }

                    v344 = v380 + 3;
                    v376 = v380[3];
                    if (!v377)
                    {
                      v357 = 0;
                      goto LABEL_151;
                    }

                    v84 = 0;
                    do
                    {
                      v85 = &v380[8 * v84];
                      if (v85[3] != v376)
                      {
                        break;
                      }

                      hlp_KeepTrackBeforeMovingOn(&v380[8 * v84], &v388 + 1, &v392, &v385, &v388);
                      *(v367 + 8 * v84) = v85;
                      *(v363 + 4 * v84) = 0;
                      v84 = (v84 + 1);
                    }

                    while (v84 < v25);
                    v357 = v84;
                    v86 = 0;
                    v339 = v385;
                    v347 = v392;
                    v87 = 0xFFFFLL;
                    v88 = v380;
                    v89 = v377;
                    while (1)
                    {
                      v90 = v87;
                      v91 = &v88[8 * v86];
                      v92 = *v91;
                      if (*v91 == 7 || v92 == 21)
                      {
                        v87 = 0xFFFFLL;
                        if (v90 != 0xFFFF)
                        {
                          goto LABEL_123;
                        }
                      }

                      else
                      {
                        if (v92 == 32)
                        {
                          v94 = v91[6];
                          if (!v94)
                          {
                            v350 = v90;
                            v364 = v90;
                            if (v90 == 0xFFFF)
                            {
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword end tag at position %u - start position missing (or ignored)", v81, v82, v83, (v91[3] - v376));
                            }

                            else
                            {
                              v368 = v91[3] - v376;
                              v96 = (*(v91 + 6) - v376);
                              if (v96 == v400 && utf8_BelongsToSet(3u, v22, v96 - 1, v96))
                              {
                                if (v368 == 1)
                                {
                                  LOWORD(v368) = 1;
                                }

                                else
                                {
                                  v97 = (v368 - 1);
                                  if (utf8_BelongsToSet(3u, v22, v97, v400))
                                  {
                                    v98 = v368 - 1;
                                    do
                                    {
                                      LOWORD(v368) = v98;
                                      PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(v22, v97, v400);
                                      if (!PreviousUtf8OffsetLimit)
                                      {
                                        break;
                                      }

                                      v97 = PreviousUtf8OffsetLimit;
                                      v98 = PreviousUtf8OffsetLimit;
                                    }

                                    while (utf8_BelongsToSet(3u, v22, PreviousUtf8OffsetLimit, v400));
                                  }
                                }
                              }

                              LOWORD(v397) = v341;
                              if (v368 - v364 >= *(a1 + 968))
                              {
                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "MW lookup len %u  exceeds maxLookupLen %u - skipping", v81, v82, v83, v368 - v364);
                              }

                              else
                              {
                                *(v328 + 2 * v350) = v368;
                                *(&v318 + 1) = &__s1[4];
                                *&v318 = &v397;
                                if (hlp_ValidateMultiWordMarker(a1, a2, v22, v350, v368, v31, v339, v347, v34, v318, __s1, v395))
                                {
                                  *(v379 + 2 * v350) = v368;
                                }
                              }
                            }

                            v87 = 0xFFFFLL;
                            goto LABEL_140;
                          }

                          if (v94 == 1)
                          {
                            if (v90 != 0xFFFF)
                            {
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword start tag at position %u - nested tag found at position %u, using this as start position", v81, v82, v83, v90);
                            }

                            v87 = (v91[3] - v376);
LABEL_140:
                            v88 = v380;
                            v89 = v377;
                            goto LABEL_141;
                          }
                        }

                        else if (v92 == 34 && ~v90 != 0)
                        {
LABEL_123:
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - contains internal tags (tn, phon)", v81, v82, v83, v90);
                          v89 = v377;
                          v88 = v380;
                          v87 = 0xFFFFLL;
                          goto LABEL_141;
                        }

                        v87 = v90;
                      }

LABEL_141:
                      if (++v86 == v89)
                      {
                        if (v87 != 0xFFFF)
                        {
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Ignoring multiword tag at position %u - no closing tag", v81, v82, v83, v87);
                        }

LABEL_151:
                        v337 = cstdlib_strlen(v22);
                        if (v337)
                        {
                          v103 = 0;
                          v333 = 0;
                          v335 = 0;
                          v104 = 0;
                          v348 = v357;
                          v105 = v337;
                          while (1)
                          {
                            v396 = 0;
                            v106 = v104;
                            v365 = v104;
                            NextUtf8OffsetLimit = v104;
                            if (v104 < v105)
                            {
                              NextUtf8OffsetLimit = v104;
                              if (utf8_BelongsToSet(3u, v22, v104, v105))
                              {
                                do
                                {
                                  NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v22, v106, v105);
                                  v106 = NextUtf8OffsetLimit;
                                }

                                while (NextUtf8OffsetLimit < v105 && utf8_BelongsToSet(3u, v22, NextUtf8OffsetLimit, v105));
                              }
                            }

                            if (v333)
                            {
                              v338 = 0;
                              v107 = v365;
                              v108 = NextUtf8OffsetLimit;
                            }

                            else
                            {
                              v109 = HIWORD(v386);
                              v110 = v386;
                              if (v365 <= NextUtf8OffsetLimit)
                              {
                                v111 = v365;
                                do
                                {
                                  v112 = *(v328 + 2 * v111);
                                  if (*(v328 + 2 * v111))
                                  {
                                    v110 = *(v328 + 2 * v111);
                                    v109 = v111;
                                  }

                                  ++v111;
                                }

                                while (v111 <= NextUtf8OffsetLimit && !v112);
                                v338 = v112 != 0;
                              }

                              else
                              {
                                v338 = 0;
                              }

                              HIWORD(v386) = v109;
                              LOWORD(v386) = v110;
                              v108 = NextUtf8OffsetLimit;
                              if (v365 == NextUtf8OffsetLimit)
                              {
                                v107 = v365;
                                v113 = *(v328 + 2 * v365);
                                if (v113)
                                {
                                  HIWORD(v386) = v365;
                                  LOWORD(v386) = v113;
                                  v338 = 1;
                                }
                              }

                              else
                              {
                                v107 = v365;
                              }
                            }

                            v114 = v108;
                            if (v108 > v107)
                            {
                              if (v108 >= HIWORD(v386))
                              {
                                v114 = HIWORD(v386);
                              }

                              if (v338 && v108 < v386)
                              {
                                v108 = v114;
                              }

                              else
                              {
                                v108 = v108;
                              }

                              v370 = v108;
                              v115 = v108 - v103;
                              if (v115 >= 1)
                              {
                                v116 = &v22[v107];
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v116, v115);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v116, v115);
                              }

                              v108 = v370;
                              v107 = v370;
                            }

                            v371 = v108;
                            v117 = v348;
                            if (v377 > v348)
                            {
                              v118 = v107;
                              v351 = v387;
                              v358 = v390;
                              v119 = v348 + v389;
                              do
                              {
                                v120 = &v380[8 * v117];
                                v121 = v120[3];
                                if (v118 < (v121 - v376))
                                {
                                  break;
                                }

                                v120[3] = v121 + v335;
                                *(v358 + 8 * v119) = v120;
                                *(v351 + 4 * v119) = 0;
                                hlp_KeepTrackBeforeMovingOn(v120, &v388 + 1, &v392, &v385, &v388);
                                v117 = (v117 + 1);
                                ++v119;
                              }

                              while (v377 > v117);
                            }

                            v348 = v117;
                            LOWORD(v397) = v341;
                            if (v338)
                            {
                              v372 = v386;
                              v122 = HIWORD(v386);
                              v123 = v386 - HIWORD(v386);
                              HIWORD(v397) = v386 - HIWORD(v386);
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET MW %u %u", v100, v101, v102, HIWORD(v386));
                              cstdlib_strncpy(v31, &v22[v122], v123);
                              v330 = 0;
                              v31[v123] = 0;
                              v340 = v123;
                              v124 = v372;
                              goto LABEL_190;
                            }

                            v381 = 0;
                            MultiWordEntry = hlp_FindMultiWordEntry(a1, a2, v22, v337, v380, (v336 >> 5), v379, v371, v385, v392, &v386 + 1, &v386, v31, &v397 + 1, v341, &__s1[4], __s1, &v381);
                            if ((MultiWordEntry & 0x80000000) != 0)
                            {
                              goto LABEL_422;
                            }

                            if (v381)
                            {
                              break;
                            }

                            cstdlib_memset(v31, 0, *(a1 + 968) + 1);
                            v340 = 0;
                            if (v371 >= v337)
                            {
                              v366 = v371;
                              LODWORD(v158) = v371;
LABEL_266:
                              v159 = v337;
                            }

                            else
                            {
                              v340 = 0;
                              v158 = v371;
                              v366 = v371;
                              v159 = v337;
                              while (!utf8_BelongsToSet(3u, v22, v158, v159))
                              {
                                Utf8Symbol = utf8_GetUtf8Symbol(v22, v158, v159, __src);
                                if (Utf8Symbol + v340 >= *(a1 + 968))
                                {
                                  LODWORD(v158) = v366;
                                  goto LABEL_266;
                                }

                                v161 = Utf8Symbol;
                                cstdlib_strcpy(&v31[v340], __src);
                                v340 += v161;
                                v159 = v337;
                                v366 = utf8_GetNextUtf8OffsetLimit(v22, v158, v337);
                                v158 = v366;
                                if (v366 >= v337)
                                {
                                  break;
                                }
                              }
                            }

                            HIWORD(v397) = v340;
                            if (v158 >= v159 || utf8_BelongsToSet(3u, v22, v158, v337))
                            {
                              if (v340)
                              {
                                v332 = 0;
                                v330 = 0;
                                v130 = v377;
                                v131 = v348;
                                v124 = v366;
                                LOWORD(v122) = v371;
                                goto LABEL_191;
                              }
                            }

                            else
                            {
                              for (i = v366; v366 < v337; i = v366)
                              {
                                if (utf8_BelongsToSet(3u, v22, i, v337))
                                {
                                  break;
                                }

                                v366 = utf8_GetNextUtf8OffsetLimit(v22, i, v337);
                              }

                              v184 = i - v371;
                              if (v184 >= 1)
                              {
                                MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v22[v371], v184);
                                if ((MultiWordEntry & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v22[v371], v184);
                              }
                            }

LABEL_407:
                            v104 = v366;
LABEL_408:
                            v103 = v104;
                            v105 = v337;
                            if (v104 >= v337)
                            {
                              v285 = v389;
                              v286 = v335;
                              LODWORD(v357) = v348;
                              goto LABEL_424;
                            }
                          }

                          v122 = HIWORD(v386);
                          v128 = v386;
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "SET UMW %u %u", v125, v126, v127, HIWORD(v386));
                          v129 = HIWORD(v397);
                          cstdlib_strncpy(v31, &v22[v122], HIWORD(v397));
                          v31[v129] = 0;
                          v330 = 1;
                          v340 = v129;
                          v124 = v128;
LABEL_190:
                          v332 = !v338;
                          v130 = v377;
                          v131 = v348;
LABEL_191:
                          v394 = 1;
                          v132 = v131;
                          v366 = v124;
                          v373 = v122;
                          if (v130 <= v131)
                          {
                            v325 = v131;
                          }

                          else
                          {
                            v133 = v122;
                            v352 = v390;
                            v349 = v389;
                            v134 = v387;
                            while (1)
                            {
                              v135 = &v380[8 * v132];
                              v136 = v135[3];
                              if (v133 < (v136 - v376))
                              {
                                break;
                              }

                              v135[3] = v136 + v335;
                              v137 = v349 + v132;
                              *(v352 + 8 * v137) = v135;
                              *(v134 + 4 * v137) = 0;
                              hlp_KeepTrackBeforeMovingOn(v135, &v388 + 1, &v392, &v385, &v388);
                              v132 = (v132 + 1);
                              if (v377 <= v132)
                              {
                                v348 = v132;
                                v325 = v132;
                                goto LABEL_198;
                              }
                            }

                            v325 = v132;
                            v348 = v132;
                          }

LABEL_198:
                          LOWORD(v397) = v341;
                          __s1[4] = 0;
                          v138 = v392;
                          if (cstdlib_strcmp(v392, "spell"))
                          {
                            v144 = HIDWORD(v388) == 0;
                          }

                          else
                          {
                            v144 = 0;
                          }

                          LODWORD(v334) = v341;
                          if (v144)
                          {
                            cstdlib_strncpy(v378, &v22[v373], v340);
                            v378[v340] = 0;
                            log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "lookup = %s", v145, v146, v147, v378);
                            cstdlib_memset(v34, 0, __len);
                            *(&v317 + 1) = &__s1[4];
                            *&v317 = &v397;
                            MultiWordEntry = fe_udwl_MatchUDctWord(a1, a2, 1, v31, v385, v138, &v394, v34, v317, __s1, &v395, &v396 + 1, &v396);
                            if ((MultiWordEntry & 0x80000000) == 0)
                            {
                              v148 = cstdlib_strlen(v34);
                              log_OutEvent(*(*(a1 + 16) + 32), 32, "%s%s%s%s", v149, v150, v151, v152, v153, "TEXT");
                              LODWORD(v334) = v148;
                              goto LABEL_205;
                            }

                            LODWORD(v334) = v341;
                          }

                          else
                          {
LABEL_205:
                            if ((MultiWordEntry & 0x80000000) == 0 && v397 && v341 > v397)
                            {
                              log_OutEvent(*(*(a1 + 16) + 32), 19, "%s%s", v139, v140, v141, v142, v143, "URI");
                              log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "return string = %s", v154, v155, v156, v34);
                              v329 = v376 + v373 + v335;
                              v324 = sameLanguage(v383, v385, &__s1[4]);
                              if (!v324)
                              {
                                if ((cstdlib_strncmp(&__s1[4], "he", 2uLL) || cstdlib_strncmp(v383, "he", 2uLL)) && (cstdlib_strncmp(&__s1[4], "ar", 2uLL) || cstdlib_strncmp(v383, "ar", 2uLL)) && (cstdlib_strncmp(&__s1[4], "fa", 2uLL) || cstdlib_strncmp(v383, "fa", 2uLL)))
                                {
                                  v157 = &__s1[4];
                                }

                                else
                                {
                                  v157 = "normal";
                                }

                                inserted = hlp_InsertLangMarker(a1, v157, v329, v329, &v390, &v387, (v336 >> 5), v348, &v389);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_451;
                                }

                                MultiWordEntry = 0;
                              }

                              if (v394 == 4)
                              {
                                if (v397 >= 4u && !cstdlib_memcmp("\x11/<", v34, 3uLL) && !cstdlib_memcmp("\x11/<", &v34[v334 - 3], 3uLL))
                                {
                                  cstdlib_memmove(v34, v34 + 3, v334 - 6);
                                  v334 = v334 - 6;
                                  v34[v334] = 0;
                                  LOWORD(v397) = v397 - 6;
                                  log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "transformed lookup = %s", v203, v204, v205, v34);
                                  v355 = v389;
                                  v206 = v377 + v389;
                                  v207 = heap_Realloc(*(*(a1 + 16) + 8), v390, 8 * v206 + 16);
                                  if (!v207)
                                  {
                                    goto LABEL_459;
                                  }

                                  v208 = v207;
                                  v390 = v207;
                                  v209 = heap_Realloc(*(*(a1 + 16) + 8), v387, 4 * v206 + 8);
                                  if (!v209)
                                  {
                                    goto LABEL_459;
                                  }

                                  v210 = v209;
                                  v387 = v209;
                                  *(v209 + 4 * v206) = 0;
                                  v211 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  if (!v211)
                                  {
                                    goto LABEL_459;
                                  }

                                  v211[6] = 60;
                                  *v211 = 7;
                                  v211[1] = v329;
                                  v211[2] = 0;
                                  v211[3] = v329;
                                  v211[4] = 0;
                                  v212 = (v208 + 8 * (v325 + v355));
                                  *v212 = v211;
                                  v213 = (v210 + 4 * (v325 + v355));
                                  *v213 = 1;
                                  v214 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  if (!v214)
                                  {
                                    v389 = v355 + 1;
                                    goto LABEL_459;
                                  }

                                  LOWORD(v359) = 0;
                                  v214[6] = v388;
                                  v215 = v329 + v334;
                                  *v214 = 7;
                                  v214[1] = v215;
                                  v214[2] = 0;
                                  v214[3] = v215;
                                  v214[4] = 0;
                                  v212[1] = v214;
                                  v213[1] = 1;
                                  v389 = v355 + 2;
                                  goto LABEL_353;
                                }
                              }

                              else if (v394 == 1)
                              {
                                v354 = v389;
                                v163 = v377 + v389;
                                v323 = heap_Realloc(*(*(a1 + 16) + 8), v390, 8 * v163 + 16);
                                if (!v323)
                                {
                                  goto LABEL_459;
                                }

                                v390 = v323;
                                v322 = heap_Realloc(*(*(a1 + 16) + 8), v387, 4 * v163 + 8);
                                if (!v322)
                                {
                                  goto LABEL_459;
                                }

                                v387 = v322;
                                *(v322 + 4 * v163) = 0;
                                v320 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                if (!v320)
                                {
                                  goto LABEL_459;
                                }

                                v168 = cstdlib_strlen(v34);
                                if (cstdlib_strlen(__s1) == 3)
                                {
                                  v169 = 14;
                                }

                                else
                                {
                                  v169 = 10;
                                }

                                __s = heap_Calloc(*(*(a1 + 16) + 8), (v169 + v168), 1);
                                if (!__s)
                                {
                                  log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v170, v171, v172, v173, v316);
                                  v313 = *(*(a1 + 16) + 8);
                                  v314 = v320;
                                  goto LABEL_453;
                                }

                                cstdlib_strcpy(__s, v34);
                                if (v338 || v332)
                                {
                                  v174 = cstdlib_strlen(v31);
                                  if (v340)
                                  {
                                    v175 = v174;
                                    if (!utf8_BelongsToSet(3u, v31, 0, v174))
                                    {
                                      v178 = 0;
                                      goto LABEL_279;
                                    }

                                    v176 = 0;
                                    while (1)
                                    {
                                      NextUtf8Offset = utf8_GetNextUtf8Offset(v31, v176);
                                      v178 = NextUtf8Offset;
                                      if (v340 <= NextUtf8Offset)
                                      {
                                        break;
                                      }

                                      v176 = NextUtf8Offset;
                                      if (!utf8_BelongsToSet(3u, v31, NextUtf8Offset, v175))
                                      {
                                        goto LABEL_279;
                                      }
                                    }

                                    if (v340)
                                    {
LABEL_279:
                                      PreviousUtf8Offset = v340;
                                      while (1)
                                      {
                                        v186 = PreviousUtf8Offset;
                                        if (!utf8_BelongsToSet(3u, v31, PreviousUtf8Offset, v175))
                                        {
                                          break;
                                        }

                                        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v31, v186);
                                        if (!PreviousUtf8Offset)
                                        {
                                          goto LABEL_293;
                                        }
                                      }

                                      v319 = v186;
                                      if (v186 > v178)
                                      {
                                        v360 = 1;
                                        do
                                        {
                                          if (!v31[v178])
                                          {
                                            break;
                                          }

                                          v187 = v178;
                                          if (utf8_BelongsToSet(3u, v31, v178, v175))
                                          {
                                            ++v360;
                                            if (v178 < v340)
                                            {
                                              while (1)
                                              {
                                                v187 = v178;
                                                if (!utf8_BelongsToSet(3u, v31, v178, v175))
                                                {
                                                  break;
                                                }

                                                v188 = utf8_GetNextUtf8Offset(v31, v178);
                                                v178 = v188;
                                                if (v340 <= v188)
                                                {
                                                  v187 = v188;
                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          v178 = utf8_GetNextUtf8Offset(v31, v187);
                                        }

                                        while (v319 >= v178);
LABEL_294:
                                        LOWORD(__src[0]) = 0;
                                        LOWORD(v381) = 0;
                                        v189 = v397;
                                        v190 = cstdlib_strchr(__s, 18);
                                        v191 = v190 - __s;
                                        if (!v190)
                                        {
                                          v191 = v189;
                                        }

                                        v192 = utf8_countNbrOfPhonWords(__s, v191, __src, &v381);
                                        v196 = v360;
                                        v225 = v360 >= v192;
                                        v197 = v360 > v192;
                                        v361 = v360 - v192;
                                        if (!v225)
                                        {
                                          v359 = v192 - v196;
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", v193, v194, v195, (v192 - v196));
                                          goto LABEL_332;
                                        }

                                        if (v197)
                                        {
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v193, v194, v195, v196);
                                          v198 = v340;
                                          cstdlib_strncpy(v378, &v22[v373], v340);
                                          v378[v340] = 0;
                                          v202 = v340;
                                          while (--v202)
                                          {
                                            if (v378[v202] != 32)
                                            {
                                              while (v378[v202] != 32)
                                              {
                                                if (!--v202)
                                                {
                                                  goto LABEL_320;
                                                }
                                              }

                                              while (v361)
                                              {
                                                while (v378[v202] == 32)
                                                {
                                                  v378[v202--] = 45;
                                                  if (!v202)
                                                  {
                                                    goto LABEL_320;
                                                  }
                                                }

                                                --v361;
                                                while (v378[v202] != 32)
                                                {
                                                  if (!--v202)
                                                  {
                                                    goto LABEL_320;
                                                  }
                                                }
                                              }

                                              break;
                                            }
                                          }

LABEL_320:
                                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "TYPE2 modification : now %s", v199, v200, v201, v378);
                                          if (v340)
                                          {
                                            v219 = &v22[v373];
                                            v220 = v378;
                                            do
                                            {
                                              v221 = *v220++;
                                              *v219++ = v221;
                                              --v198;
                                            }

                                            while (v198);
                                          }

                                          if (v377)
                                          {
                                            v222 = 0;
                                            v223 = v380 + 3;
                                            do
                                            {
                                              v224 = *v223 - *v344;
                                              v225 = v224 <= v373 || v224 >= v373 + v340;
                                              if (!v225)
                                              {
                                                log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v216, v217, v218, v222);
                                                *v223 = v376 + (v373 + v335);
                                              }

                                              ++v222;
                                              v223 += 8;
                                            }

                                            while (v377 != v222);
                                          }
                                        }

LABEL_331:
                                        v359 = 0;
                                        goto LABEL_332;
                                      }
                                    }
                                  }

LABEL_293:
                                  v360 = 0;
                                  goto LABEL_294;
                                }

                                if (v397 < 3u)
                                {
                                  goto LABEL_331;
                                }

                                v359 = 0;
                                v179 = 1;
                                do
                                {
                                  v180 = &__s[v179];
                                  v181 = *v180;
                                  if (v181 == 35 || v181 == 95)
                                  {
                                    if (v180[1] == 18)
                                    {
                                      v182 = v359;
                                    }

                                    else
                                    {
                                      v182 = v359 + 1;
                                    }

                                    v359 = v182;
                                  }

                                  else if (v181 == 18)
                                  {
                                    break;
                                  }

                                  ++v179;
                                }

                                while ((v397 - 1) > v179);
LABEL_332:
                                if (v340)
                                {
                                  v226 = v340;
                                  v227 = &v22[v373];
                                  do
                                  {
                                    if (*v227 == 95)
                                    {
                                      *v227 = 45;
                                    }

                                    ++v227;
                                    --v226;
                                  }

                                  while (v226);
                                }

                                cstdlib_strcat(__s, "\x14");
                                cstdlib_strcat(__s, "EXTDCT");
                                if (cstdlib_strlen(__s1) == 3)
                                {
                                  cstdlib_strcat(__s, "\x14");
                                  cstdlib_strcat(__s, __s1);
                                }

                                *(v320 + 3) = __s;
                                *v320 = 34;
                                *(v320 + 1) = v329;
                                v228 = v325 + v354;
                                v229 = v348;
                                *(v320 + 2) = 0;
                                *(v320 + 3) = v329;
                                *(v320 + 4) = 0;
                                *(v323 + 8 * v228) = v320;
                                *(v322 + 4 * v228) = 1;
                                if (v377 > v348)
                                {
                                  while (1)
                                  {
                                    v230 = &v380[8 * v229];
                                    v231 = v230[3];
                                    if (v366 < (v231 - v376))
                                    {
                                      break;
                                    }

                                    v232 = v231 + v335;
                                    if (*v230 == 36)
                                    {
                                      v232 = v376 + v335 + v366 + 3 * v359;
                                    }

                                    if (*v230 == 21)
                                    {
                                      v232 = v376 + v335 + v366 + 3 * v359;
                                    }

                                    v230[3] = v232;
                                    v233 = v354 + v229;
                                    *(v323 + 8 + 8 * v233) = v230;
                                    *(v322 + 4 + 4 * v233) = 0;
                                    hlp_KeepTrackBeforeMovingOn(v230, &v388 + 1, &v392, &v385, &v388);
                                    v229 = (v229 + 1);
                                    if (v377 <= v229)
                                    {
                                      v348 = v229;
                                      LODWORD(v229) = v229;
                                      goto LABEL_348;
                                    }
                                  }

                                  v348 = v229;
                                }

LABEL_348:
                                if (v366 < v337)
                                {
                                  v234 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
                                  v239 = *(a1 + 16);
                                  v326 = v234;
                                  if (!v234)
                                  {
                                    log_OutPublic(*(v239 + 32), "FE_UDWL", 40000, 0, v235, v236, v237, v238, v316);
LABEL_457:
                                    v389 = v354 + 1;
                                    goto LABEL_460;
                                  }

                                  v240 = *(v239 + 8);
                                  v321 = v392;
                                  v241 = cstdlib_strlen(v392);
                                  v242 = heap_Alloc(v240, (v241 + 1));
                                  if (!v242)
                                  {
                                    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v243, v244, v245, v246, v316);
                                    heap_Free(*(*(a1 + 16) + 8), v326);
                                    goto LABEL_457;
                                  }

                                  v247 = v242;
                                  cstdlib_strcpy(v242, v321);
                                  *(v326 + 24) = v247;
                                  v248 = v376 + v335 + v366 + 3 * v359;
                                  *v326 = 21;
                                  *(v326 + 4) = v248;
                                  *(v326 + 8) = 0;
                                  *(v326 + 12) = v248;
                                  *(v326 + 16) = 0;
                                  *(v323 + 8 * (v229 + v354) + 8) = v326;
                                  *(v322 + 4 * (v229 + v354) + 4) = 1;
                                  LOWORD(v354) = v354 + 1;
                                }

                                v335 += 3 * v359;
                                v389 = v354 + 1;
LABEL_353:
                                if (v324)
                                {
                                  v353 = (v330 | v338) == 0;
                                  goto LABEL_355;
                                }

                                if (v394 == 1)
                                {
                                  v251 = v366;
                                }

                                else
                                {
                                  v251 = v334;
                                }

                                v252 = v376;
                                if (v394 != 1)
                                {
                                  v252 = v376 + v373;
                                }

                                inserted = hlp_InsertLangMarker(a1, v385, v252 + v251 + v335, v252 + v251 + v335, &v390, &v387, (v336 >> 5), v348, &v389);
                                if ((inserted & 0x80000000) != 0)
                                {
                                  goto LABEL_451;
                                }

                                v250 = 0;
                                v353 = (v330 | v338) == 0;
                                v249 = v373;
LABEL_363:
                                v253 = v366 - v249;
                                if (v253 < 1)
                                {
                                  goto LABEL_369;
                                }

                                if (v397 >= v10)
                                {
                                  v250 = 1;
                                }

                                if (v394 == 1 || !v397 || v250)
                                {
                                  v277 = v396;
                                  if (v253 <= v396)
                                  {
                                    v277 = 0;
                                    LOWORD(v396) = 0;
                                  }

                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v22[v373], (v253 - v277));
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v22[v373], v253 - v396);
                                  v256 = v396;
                                  v331 = v253 - v396;
                                  if (v359)
                                  {
                                    v278 = 0;
                                    v279 = v331;
                                    while (1)
                                    {
                                      v280 = *(*(a1 + 48) + 104);
                                      v281 = cstdlib_strlen(__dst);
                                      MultiWordEntry = v280(*(a1 + 912), *(a1 + 920), __dst, v281);
                                      if ((MultiWordEntry & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v282 = *(*(a1 + 16) + 32);
                                      v283 = cstdlib_strlen(__dst);
                                      log_OutTraceTuningDataBinary(v282, 106, "", "text/plain;charset=utf-8", __dst, v283);
                                      v279 += cstdlib_strlen(__dst);
                                      if (++v278 >= v359)
                                      {
                                        v256 = v396;
                                        goto LABEL_418;
                                      }
                                    }

LABEL_422:
                                    v8 = MultiWordEntry;
                                    goto LABEL_460;
                                  }

LABEL_418:
                                  if (v256)
                                  {
                                    v284 = &v22[v366];
                                    MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), &v284[-v256]);
                                    if ((MultiWordEntry & 0x80000000) != 0)
                                    {
                                      goto LABEL_422;
                                    }

                                    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", &v284[-v396], v396);
                                  }
                                }

                                else
                                {
LABEL_369:
                                  MultiWordEntry = (*(*(a1 + 48) + 104))(*(a1 + 912), *(a1 + 920), v34, v334);
                                  if ((MultiWordEntry & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "", "text/plain;charset=utf-8", v34, v334);
                                  v254 = cstdlib_strlen(v31);
                                  if (v254)
                                  {
                                    for (j = 0; j < v254; j = utf8_GetNextUtf8Offset(v31, j))
                                    {
                                      if (utf8_BelongsToSet(3u, v31, j, v254))
                                      {
                                        while (j < v254 && utf8_BelongsToSet(3u, v31, j, v254))
                                        {
                                          j = utf8_GetNextUtf8Offset(v31, j);
                                        }
                                      }
                                    }
                                  }

                                  v258 = cstdlib_strlen(v34);
                                  if (v258)
                                  {
                                    for (k = 0; k < v258; k = utf8_GetNextUtf8Offset(v34, k))
                                    {
                                      if (utf8_BelongsToSet(3u, v34, k, v258))
                                      {
                                        while (k < v258 && utf8_BelongsToSet(3u, v34, k, v258))
                                        {
                                          k = utf8_GetNextUtf8Offset(v34, k);
                                        }
                                      }
                                    }
                                  }

                                  v260 = v353;
                                  if (!v377)
                                  {
                                    v260 = 1;
                                  }

                                  v261 = v377;
                                  if ((v260 & 1) == 0)
                                  {
                                    v262 = 0;
                                    v263 = HIWORD(v386);
                                    v264 = v386;
                                    v362 = v376 + HIWORD(v386);
                                    v265 = v380 + 3;
                                    v374 = v386;
                                    v356 = HIWORD(v386);
                                    do
                                    {
                                      v266 = *v265 - *v344;
                                      if (v266 > v263 && v266 < v264)
                                      {
                                        log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "realign Markers in midword postions to start of word Mrk[%u].posCur from %u to %u", v100, v101, v102, v262);
                                        v264 = v374;
                                        v263 = v356;
                                        v261 = v377;
                                        *v265 = v362;
                                      }

                                      ++v262;
                                      v265 += 8;
                                    }

                                    while (v261 != v262);
                                  }

                                  v335 += v334 - v340;
                                }

                                if (v329 != -1)
                                {
                                  log_OutTraceTuningData(*(*(a1 + 16) + 32), 109, "%s%d %s%d %s%s", v256, v257, v100, v101, v102, "POSREF");
                                }

                                if (v338 || v332)
                                {
                                  v366 = v386;
                                  if (v377 > v348)
                                  {
                                    v268 = v348;
                                    v375 = v390;
                                    v269 = v387;
                                    v270 = v348 + v389;
                                    while (1)
                                    {
                                      v271 = &v380[8 * v268];
                                      v272 = v271[3];
                                      v104 = v366;
                                      if (v366 <= (v272 - v376))
                                      {
                                        break;
                                      }

                                      v273 = (v375 + 8 * v270);
                                      v274 = *(v273 - 1);
                                      v275 = (v269 + 4 * v270);
                                      if (v272 >= v274[3])
                                      {
                                        *v273 = v271;
                                      }

                                      else
                                      {
                                        *v273 = v274;
                                        v276 = *--v275;
                                        *(v269 + 4 * v270) = v276;
                                        *(v273 - 1) = v271;
                                      }

                                      *v275 = 0;
                                      hlp_KeepTrackBeforeMovingOn(v271, &v388 + 1, &v392, &v385, &v388);
                                      v268 = (v268 + 1);
                                      ++v270;
                                      if (v377 <= v268)
                                      {
                                        v333 = 0;
                                        v348 = v268;
                                        goto LABEL_407;
                                      }
                                    }

                                    v333 = 0;
                                    v348 = v268;
                                    goto LABEL_408;
                                  }
                                }

                                v333 = 0;
                                goto LABEL_407;
                              }

                              LOWORD(v359) = 0;
                              goto LABEL_353;
                            }
                          }

                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "Warning : Found user dictionary entries are ignored as return buffer too small; consider increasing value with parameter SSFT_PARAMC_UDCTMAXDICTRETLEN", v141, v142, v143, v316);
                          LOWORD(v359) = 0;
                          v329 = -1;
                          v353 = (v330 | v338) == 0;
                          if (v330 | v338 && (MultiWordEntry & 0x80000000) != 0)
                          {
                            if (v338 || v332)
                            {
                              v104 = HIWORD(v386);
                            }

                            else
                            {
                              v104 = v366;
                            }

                            v333 = 1;
                            goto LABEL_408;
                          }

LABEL_355:
                          v249 = v373;
                          v250 = MultiWordEntry >> 31;
                          goto LABEL_363;
                        }

                        v285 = 0;
                        v286 = 0;
LABEL_424:
                        if (v377 > v357)
                        {
                          v287 = (v390 + 8 * (v285 + v357));
                          v288 = v357;
                          do
                          {
                            v289 = &v380[8 * v288];
                            v289[3] += v286;
                            *v287++ = v289;
                            ++v288;
                          }

                          while (v377 > v288);
                        }

                        v380[4] += v286;
                        v290 = v377 + v285;
                        v291 = heap_Calloc(*(*(a1 + 16) + 8), (v377 + v285), 32);
                        if (v291)
                        {
                          v292 = v291;
                          if (!v290)
                          {
                            goto LABEL_436;
                          }

                          v293 = 0;
                          v294 = v390;
                          do
                          {
                            v295 = (v291 + 32 * v293);
                            v296 = *(v294 + 8 * v293);
                            v297 = v296[1];
                            *v295 = *v296;
                            v295[1] = v297;
                            ++v293;
                          }

                          while (v290 > v293);
                          if (*(v291 + 12) == v376)
                          {
                            v298 = 0;
                            do
                            {
                              v299 = ++v298;
                            }

                            while (v290 > v298 && *(v291 + 32 * v298 + 12) == v376);
                          }

                          else
                          {
LABEL_436:
                            v299 = 0;
                          }

                          stableArraySort(v291, v299, v290 - v299);
                          log_OutText(*(*(a1 + 16) + 32), "FE_UDWL", 5, 0, "New Markers OUT", v300, v301, v302, v316);
                          v303 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v292, 32 * v290);
                          v304 = *(a1 + 16);
                          if ((v303 & 0x80000000) != 0)
                          {
                            v8 = v303;
                            v313 = *(v304 + 8);
                            v314 = v292;
LABEL_453:
                            heap_Free(v313, v314);
                          }

                          else
                          {
                            if (log_GetLogLevel(*(v304 + 32)) >= 5 && v290 != 0)
                            {
                              v309 = 0;
                              do
                              {
                                v310 = (v292 + 32 * v309);
                                v311 = *(*(a1 + 16) + 32);
                                v312 = *v310;
                                if (v312 == 0x4000)
                                {
                                  log_OutText(v311, "FE_UDWL", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v305, v306, v307, v310[1]);
                                }

                                else
                                {
                                  log_OutText(v311, "FE_UDWL", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v305, v306, v307, v312);
                                }

                                ++v309;
                              }

                              while (v290 > v309);
                            }

                            heap_Free(*(*(a1 + 16) + 8), v292);
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 106, "PTRARRAY", "application/x-realspeak-markers-pp;version=4.0", v390, 8 * v290);
                            }

                            inserted = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v398);
                            if ((inserted & 0x80000000) == 0)
                            {
                              v393 += v286;
                              inserted = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
                            }

LABEL_451:
                            v8 = inserted;
                          }
                        }

                        else
                        {
LABEL_459:
                          log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v164, v165, v166, v167, v316);
                        }

LABEL_460:
                        LOWORD(v25) = v343;
                        v48 = v378;
                        v35 = v328;
                        goto LABEL_54;
                      }
                    }
                  }

                  v59 = *(a1 + 16);
                }

                log_OutPublic(*(v59 + 32), "FE_UDWL", 40000, 0, v55, v56, v57, v58, v315);
                v379 = 0;
                v35 = 0;
                v380 = 0;
                goto LABEL_148;
              }
            }

            log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v27, v28, v29, v30, v315);
            v34 = 0;
            goto LABEL_51;
          }

          v34 = 0;
          v31 = 0;
          v379 = 0;
          v35 = 0;
          v48 = 0;
        }

        v380 = 0;
        v8 = MainLangLC;
        goto LABEL_54;
      }
    }

    return v11;
  }

  if (!*(&v400 + 4))
  {
    __src[0] = 0;
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", __src) & 0x80000000) != 0 || !__src[0] || !*__src[0])
    {
      *a5 = 0;
    }

    goto LABEL_41;
  }

  if (!DWORD2(v400))
  {
    goto LABEL_34;
  }

  v11 = (*(*(a1 + 48) + 88))(*(a1 + 896), *(a1 + 904), &v399, &v398);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v11 = (*(*(a1 + 48) + 104))(*(a1 + 928), *(a1 + 936), v399, v398);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "application/x-realspeak-markers-pp;version=4.0", v399, v398);
  }

  v17 = (*(*(a1 + 48) + 96))(*(a1 + 896), *(a1 + 904), v398);
  v8 = v17;
  if ((v17 & 0x80000000) == 0)
  {
LABEL_34:
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 105, "", "text/plain;charset=utf-8", "", 0);
    if (DWORD1(v400))
    {
      v17 = synstrmaux_CloseOutStreamsOnly((a1 + 56), *(a1 + 48));
    }

LABEL_41:
    log_OutTraceTuningData(*(*(a1 + 16) + 32), 104, "%s%s", v36, v37, v38, v39, v40, "END");
    return v17;
  }

  return v8;
}

uint64_t hlp_GetMainLangLC(uint64_t a1, char *a2)
{
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(a1, "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v4 = 2323652608;
  if (__s && cstdlib_strlen(__s) == 3)
  {
    cstdlib_strcpy(a2, __s);
    if (cstdlib_strlen(a2))
    {
      v5 = 0;
      do
      {
        a2[v5] = cstdlib_tolower(a2[v5]);
        ++v5;
      }

      while (v5 < cstdlib_strlen(a2));
    }

    return Str;
  }

  return v4;
}

int *hlp_KeepTrackBeforeMovingOn(int *result, int *a2, void *a3, void *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = *result;
  if (*a2)
  {
    if (v6 == 34)
    {
      goto LABEL_15;
    }

    if (v6 == 21)
    {
      goto LABEL_17;
    }

    if (v6 != 7)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (result[6] != 43)
    {
LABEL_17:
      if (v5 == 1)
      {
        *a2 = 0;
      }

      goto LABEL_20;
    }

LABEL_15:
    if (!v5)
    {
      *a2 = 1;
      goto LABEL_20;
    }

    if (v6 != 7)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v6 > 33)
  {
    if (v6 == 34)
    {
      goto LABEL_15;
    }

    if (v6 == 36)
    {
      *a4 = *(result + 3);
    }
  }

  else
  {
    if (v6 == 7)
    {
      goto LABEL_10;
    }

    if (v6 == 21)
    {
      *a3 = *(result + 3);
    }
  }

LABEL_20:
  if (*result == 7)
  {
    *a5 = result[6];
  }

  return result;
}

BOOL hlp_ValidateMultiWordMarker(uint64_t *a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, char *__dst, uint64_t a7, uint64_t a8, _BYTE *a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v16 = a5 - a4;
  cstdlib_strncpy(__dst, (a3 + a4), v16);
  __dst[v16] = 0;
  v19 = 1;
  *&v18 = &v19;
  *(&v18 + 1) = a9;
  return (udwl_MatchUdctWord(a1[2], a1[118], a1[119], a1[120], 1, __dst, a7, a8, v18, a10, a11, &a12, 0, 0, 0) & 0x80000000) == 0 && *a9 != 0;
}

uint64_t hlp_FindMultiWordEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _DWORD *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, _WORD *a11, _WORD *a12, char *a13, _WORD *a14, unsigned __int16 a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  v23 = a1;
  v103 = *MEMORY[0x277D85DE8];
  v98 = 1;
  v97 = 1;
  v96 = 0;
  v95 = a15;
  *a18 = 0;
  v24 = heap_Calloc(*(*(a1 + 16) + 8), a15 + 1, 1);
  v29 = *(v23 + 16);
  if (v24)
  {
    v30 = v24;
    v93 = heap_Calloc(*(v29 + 8), a15 + 1, 1);
    if (!v93)
    {
      v55 = 2323652618;
      log_OutPublic(*(*(v23 + 16) + 32), "FE_UDWL", 40000, 0, v31, v32, v33, v34, v86);
LABEL_76:
      heap_Free(*(*(v23 + 16) + 8), v30);
      return v55;
    }

    v90 = a5;
    v101 = a15;
    *__dst = 1;
    v35 = heap_Calloc(*(*(v23 + 16) + 8), *(v23 + 968) + 1, 1);
    if (v35)
    {
      v40 = v35;
      v94 = v23;
      v41 = a4;
      v100 = a8;
      do
      {
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a3, v41);
        v41 = PreviousUtf8Offset;
      }

      while (PreviousUtf8Offset > a8 && utf8_BelongsToSet(0, a3, PreviousUtf8Offset, a4));
      v43 = a7;
      hlp_Skip(1, 1, a3, &v100, a8, a4);
      v44 = v100;
      v99 = v100;
      if (v98)
      {
        v45 = 0;
        v91 = 0;
        v46 = v41;
        v47 = v94;
        while (v99 <= v46)
        {
          hlp_Skip(1, 1, a3, &v99, v44, a4);
          if (hlp_Skip(2, 1, a3, &v99, v44, a4))
          {
            if (v45)
            {
              ++v45;
            }

            else
            {
              if (*(v47 + 968) <= (v99 - v44))
              {
                *v40 = 0;
              }

              else
              {
                v48 = (v99 - v44);
                cstdlib_strncpy(v40, &a3[v44], v48);
                v40[v48] = 0;
                v47 = v94;
                *__dst = 1;
                v49 = udwl_LookupMultiWordLengths(*(v94 + 16), *(v94 + 944), *(v94 + 952), *(v94 + 960), v40, __dst, v93, &v101, &v98);
                v53 = 0;
                if ((v49 & 0x1FFF) != 0x14)
                {
                  if ((v49 & 0x80000000) != 0)
                  {
                    v45 = 1;
                    v91 = v49;
                    break;
                  }

                  v53 = v49;
                }

                v91 = v53;
                v54 = *(*(v94 + 16) + 32);
                if (v98 < 2u)
                {
                  log_OutText(v54, "FE_UDWL", 5, 0, "lookup UMW: start word '%s': not found", v50, v51, v52, v40);
                }

                else
                {
                  log_OutText(v54, "FE_UDWL", 5, 0, "lookup UMW: start word '%s': found", v50, v51, v52, v40);
                }
              }

              v45 = 1;
            }
          }

          if (v45 >= v98)
          {
            break;
          }
        }
      }

      else
      {
        v45 = 0;
        v91 = 0;
        v47 = v23;
      }

      heap_Free(*(*(v47 + 16) + 8), v40);
      v59 = *a18 == 0;
      if (*a18)
      {
        v60 = 0;
      }

      else
      {
        v60 = v45 >= 2;
      }

      if (v60)
      {
        v89 = (v43 + 2 * v44);
        while (1)
        {
          v61 = v99;
          v62 = v99 - v44;
          if (v62 >= 1 && v62 <= *(v94 + 968))
          {
            cstdlib_strcpy(__dst, " ");
            LH_itoa(v45, &__dst[1], 0xAu);
            cstdlib_strcat(__dst, " ");
            if (cstdlib_strstr(v93, __dst))
            {
              if (a6)
              {
                v63 = v90;
                v64 = 1;
                while (1)
                {
                  if (*v63 > 0x22u || ((1 << *v63) & 0x400200080) == 0)
                  {
                    v68 = 1;
                  }

                  else
                  {
                    v66 = v63[3] - v90[3];
                    v68 = v66 <= v44 || v66 >= v61;
                    if (!v68)
                    {
                      goto LABEL_57;
                    }
                  }

                  v63 += 8;
                  v60 = v64++ >= a6;
                  if (v60)
                  {
                    goto LABEL_57;
                  }
                }
              }

              v68 = 1;
LABEL_57:
              if (v61 > v44)
              {
                v70 = v44 + 1;
                v69 = v89;
                if (v68)
                {
                  do
                  {
                    v72 = *v69++;
                    v71 = v72;
                    if (v72)
                    {
                      v73 = 1;
                    }

                    else
                    {
                      v73 = v70 >= v61;
                    }

                    ++v70;
                  }

                  while (!v73);
                  v68 = v71 == 0;
                }
              }

              if (v68)
              {
                cstdlib_strncpy(a13, &a3[v44], (v61 - v44));
                a13[(v61 - v44)] = 0;
                v95 = a15;
                v97 = 1;
                log_OutTraceTuningData(*(*(v94 + 16) + 32), 110, "%s%s %s%s %s%s", v74, v75, v76, v77, v78, "BEG");
                *(&v88 + 1) = a16;
                *&v88 = &v95;
                *&v87 = &v97;
                *(&v87 + 1) = v30;
                matched = udwl_MatchUdctWord(*(v94 + 16), *(v94 + 944), *(v94 + 952), *(v94 + 960), 1, a13, a9, a10, v87, v88, a17, &v96, 2, 0, 0);
                v91 = 0;
                if ((matched & 0x1FFF) != 0x14)
                {
                  v55 = matched;
                  if ((matched & 0x80000000) != 0)
                  {
                    v23 = v94;
                    goto LABEL_75;
                  }

                  log_OutTraceTuningData(*(*(v94 + 16) + 32), 110, "%s%s %s%u %s%d %s%s %s%s", v80, v81, v82, v83, v84, "END");
                  *a18 = 1;
                  *a11 = v44;
                  *a12 = v61;
                  v91 = v55;
                  *a14 = v61 - v44;
                }
              }
            }
          }

          hlp_Skip(2, -1, a3, &v99, v44, a4);
          hlp_Skip(1, -1, a3, &v99, v44, a4);
          v59 = *a18 == 0;
          if (!*a18 && (--v45 & 0xFFFE) != 0)
          {
            continue;
          }

          break;
        }
      }

      v55 = v91;
      v23 = v94;
      if (v59)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v55 = 2323652618;
      log_OutPublic(*(*(v23 + 16) + 32), "FE_UDWL", 40000, 0, v36, v37, v38, v39, v86);
      if (!*a18)
      {
LABEL_72:
        if (v98 >= 2u)
        {
          log_OutText(*(*(v23 + 16) + 32), "FE_UDWL", 5, 0, "lookup UMW: no UMW found", v56, v57, v58, a13);
        }

        *a13 = 0;
LABEL_75:
        heap_Free(*(*(v23 + 16) + 8), v93);
        goto LABEL_76;
      }
    }

    log_OutText(*(*(v23 + 16) + 32), "FE_UDWL", 5, 0, "lookup UMW: '%s': found", v56, v57, v58, a13);
    goto LABEL_75;
  }

  v55 = 2323652618;
  log_OutPublic(*(v29 + 32), "FE_UDWL", 40000, 0, v25, v26, v27, v28, v86);
  return v55;
}

uint64_t fe_udwl_MatchUDctWord(uint64_t *a1, int a2, int a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, _WORD *a12, _WORD *a13)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 107, "%s%s %s%s %s%s", v20, v21, v22, v23, v24, "BEG");
  *&v33 = a7;
  *(&v33 + 1) = a8;
  matched = udwl_MatchUdctWord(a1[2], a1[118], a1[119], a1[120], a3, a4, a5, a6, v33, a9, a10, a11, 1, a12, a13);
  v31 = *(a1[2] + 32);
  if ((matched & 0x80000000) != 0)
  {
    log_OutTraceTuningData(v31, 107, "%s%s %s%u", v25, v26, v27, v28, v29, "END");
  }

  else
  {
    log_OutTraceTuningData(v31, 107, "%s%s %s%u %s%d %s%s %s%s", v25, v26, v27, v28, v29, "END");
  }

  return matched;
}

uint64_t hlp_InsertLangMarker(uint64_t a1, const char *a2, int a3, int a4, uint64_t *a5, uint64_t *a6, int a7, unsigned int a8, _WORD *a9)
{
  v17 = heap_Realloc(*(*(a1 + 16) + 8), *a5, 8 * (*a9 + a7) + 8);
  if (!v17 || (*a5 = v17, (v22 = heap_Realloc(*(*(a1 + 16) + 8), *a6, 4 * (*a9 + a7) + 4)) == 0))
  {
    v34 = 2323652618;
    v24 = *(a1 + 16);
LABEL_7:
    log_OutPublic(*(v24 + 32), "FE_UDWL", 40000, 0, v18, v19, v20, v21, v38);
    return v34;
  }

  *a6 = v22;
  *(v22 + 4 * (*a9 + a7)) = 0;
  v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32);
  v24 = *(a1 + 16);
  if (!v23)
  {
    v34 = 2323652618;
    goto LABEL_7;
  }

  v25 = v23;
  v26 = *(v24 + 8);
  v27 = cstdlib_strlen(a2);
  v28 = heap_Calloc(v26, (v27 + 1), 1);
  if (v28)
  {
    v33 = v28;
    cstdlib_strcpy(v28, a2);
    v34 = 0;
    *(v25 + 24) = v33;
    *v25 = 36;
    *(v25 + 4) = a3;
    *(v25 + 8) = 0;
    *(v25 + 12) = a4;
    v35 = *a9;
    v36 = v35 + a8;
    *(*a5 + 8 * v36) = v25;
    *(v25 + 16) = 0;
    *(*a6 + 4 * v36) = 1;
    *a9 = v35 + 1;
  }

  else
  {
    v34 = 2323652618;
    log_OutPublic(*(*(a1 + 16) + 32), "FE_UDWL", 40000, 0, v29, v30, v31, v32, v38);
    heap_Free(*(*(a1 + 16) + 8), v25);
  }

  return v34;
}

uint64_t stableArraySort(uint64_t result, int a2, int a3)
{
  if (a2 < a3)
  {
    v3 = result + 32 * a2 + 32;
    v4 = a2;
    do
    {
      v5 = v4++;
      if (v5 >= a2)
      {
        v6 = v3;
        v7 = v4;
        do
        {
          if (*(v6 + 12) >= *(v6 - 20))
          {
            break;
          }

          v9 = *v6;
          v8 = *(v6 + 16);
          v10 = *(v6 - 16);
          *v6 = *(v6 - 32);
          *(v6 + 16) = v10;
          *(v6 - 32) = v9;
          *(v6 - 16) = v8;
          v6 -= 32;
          --v7;
        }

        while (v7 > a2);
      }

      v3 += 32;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t fe_udwl_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v3 = *(a1 + 48);

  return synstrmaux_CloseStreams((a1 + 56), v3);
}

uint64_t fe_udwl_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  result = 0;
  *a3 = fe_udwl_ResourceTypes_SZ_FE_UDWL_CONTENT_TYPES_DCTEG;
  return result;
}

uint64_t fe_udwl_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62346, 976) & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v7 = a1[118];
  if (!v7)
  {
    return 2323652616;
  }

  v8 = *(v7 + 64);
  v9 = a1[119];
  v10 = a1[120];

  return v8(v9, v10, a3, a4);
}

uint64_t fe_udwl_IsUDictAvailable(void *a1, int a2, _DWORD *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v5 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v6 = v5;
  *a3 = 1;
  v7 = a1[118];
  if (!v7 || !(*(v7 + 80))(a1[119], a1[120]))
  {
    *a3 = 0;
  }

  return v6;
}

uint64_t fe_udwl_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2323652609;
  }

  result = 0;
  *a2 = &IFeUdwl;
  return result;
}

BOOL hlp_Skip(int a1, int a2, _BYTE *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v10 = *a4;
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      if (v10 < a6)
      {
        v15 = *a4;
        do
        {
          if (!utf8_BelongsToSet(0, a3, v15, a6))
          {
            break;
          }

          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(a3, *a4, a6);
          v15 = NextUtf8OffsetLimit;
          *a4 = NextUtf8OffsetLimit;
        }

        while (NextUtf8OffsetLimit < a6);
      }
    }

    else if (a2 == -1)
    {
      do
      {
        v11 = *a4;
        PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(a3, *a4, a6);
        *a4 = PreviousUtf8OffsetLimit;
      }

      while (PreviousUtf8OffsetLimit > a5 && utf8_BelongsToSet(0, a3, PreviousUtf8OffsetLimit, a6));
LABEL_22:
      *a4 = v11;
    }
  }

  else if (a2 == -1)
  {
    if (v10 > a5)
    {
      do
      {
        v11 = *a4;
        v17 = utf8_GetPreviousUtf8OffsetLimit(a3, *a4, a6);
        *a4 = v17;
      }

      while (v17 > a5 && !utf8_BelongsToSet(0, a3, v17, a6));
      goto LABEL_22;
    }
  }

  else if (a2 == 1 && v10 < a6)
  {
    v13 = *a4;
    do
    {
      if (utf8_BelongsToSet(0, a3, v13, a6))
      {
        break;
      }

      v14 = utf8_GetNextUtf8OffsetLimit(a3, *a4, a6);
      v13 = v14;
      *a4 = v14;
    }

    while (v14 < a6);
  }

  return v10 != *a4;
}

uint64_t fe_udwl_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7)
{
  v51 = *MEMORY[0x277D85DE8];
  bzero(__s1, 0x400uLL);
  v44 = 0;
  v45 = 0;
  v14 = safeh_HandleCheck(a1, a2, 62346, 976);
  if ((v14 & 0x80000000) != 0)
  {
    return 2323652616;
  }

  v49 = 0;
  __b = 0u;
  v48 = 0u;
  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

  v19 = v14;
  if (a4)
  {
    v20 = a6 != 0;
    if (a5 || !a6)
    {
      goto LABEL_11;
    }

LABEL_38:
    log_OutPublic(*(a1[2] + 32), "FE_UDWL", 40001, 0, v15, v16, v17, v18, v43);
    return 2323652615;
  }

  if (!a5 || !a6)
  {
    goto LABEL_38;
  }

  v20 = 1;
LABEL_11:
  v46 = 0;
  cstdlib_memset(&__b, 0, 0x28uLL);
  v49 = a3;
  if (a5 != 0 && v20)
  {
    v26 = 0;
  }

  else
  {
    v26 = a4;
  }

  *&__b = v26;
  *(&__b + 1) = a4;
  *&v48 = a5;
  DWORD2(v48) = a6;
  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%s %s%s", v21, v22, v23, v24, v25, "BEG");
  if (v20 || !cstdlib_strstr(a3, ";loader=broker"))
  {
    goto LABEL_30;
  }

  v32 = brk_DataOpenEx(*(a1[2] + 24), a4, 1, &v45);
  v33 = v32;
  if (a4 && v32 < 0)
  {
    Str = paramc_ParamGetStr(*(a1[2] + 40), "langcode", &v46);
    if ((Str & 0x80000000) != 0)
    {
LABEL_32:
      v19 = Str;
      goto LABEL_33;
    }

    if ((brokeraux_ComposeBrokerString(a1[2], a4, 0, 1, v46, 0, 0, __s1, 0x400uLL) & 0x80000000) != 0)
    {
LABEL_40:
      v19 = 0;
      goto LABEL_33;
    }

    v33 = brk_DataOpenEx(*(a1[2] + 24), __s1, 1, &v45);
  }

  if (v33 < 0)
  {
    goto LABEL_40;
  }

  v19 = brk_DataMapEx(*(a1[2] + 24), v45, 0, &v48 + 8, &v44);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  *&__b = 0;
  __s1[0] = 0;
  cstdlib_strcat(__s1, a3);
  v35 = cstdlib_strchr(__s1, 59);
  if (v35)
  {
    *v35 = 0;
  }

  v36 = cstdlib_strstr(a3, "mode=");
  if (v36)
  {
    v37 = v36;
    v38 = cstdlib_strchr(v36, 59);
    LOWORD(v39) = v38;
    if (!v38)
    {
      v39 = (v37 + cstdlib_strlen(v37));
    }

    cstdlib_strcat(__s1, ";");
    cstdlib_strncat(__s1, v37, (v39 - v37));
  }

  v49 = __s1;
  *&v48 = v44;
LABEL_30:
  v40 = a1[118];
  if (v40)
  {
    Str = (*(v40 + 56))(a1[119], a1[120], &__b, a7);
    goto LABEL_32;
  }

LABEL_33:
  v41 = v45;
  if (v44)
  {
    brk_DataUnmap(*(a1[2] + 24), v45, v44);
    v44 = 0;
    v41 = v45;
  }

  if (v41)
  {
    brk_DataClose(*(a1[2] + 24), v41);
    v45 = 0;
  }

  log_OutTraceTuningData(*(a1[2] + 32), 101, "%s%s %s%u", v27, v28, v29, v30, v31, "END");
  return v19;
}

uint64_t hlp_udwl_Lookup(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *__s, uint64_t a8, uint64_t a9, _DWORD *a10, char *a11, _WORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, _WORD *a18, _WORD *a19)
{
  v81[1] = *MEMORY[0x277D85DE8];
  __s1 = __s;
  v56 = 0;
  v80 = 0;
  v81[0] = 0;
  if (!__s)
  {
    return 2323652615;
  }

  v20 = 2323652628;
  if (a3 && a4)
  {
    v27 = cstdlib_strlen(__s) + 1;
    v58[0] = udwl_nbs_TakeAsIs;
    v58[1] = &__s1;
    v58[2] = &__s1;
    v59 = 0;
    if (a1)
    {
      v28 = &v71;
      v60 = udwl_nbs_TrimLeftBlanksAndQuotes;
      p_s1 = &__s1;
      v62 = &v80;
      v63 = 0;
      v64 = udwl_nbs_TrimHead;
      v65 = &v80;
      v66 = v81;
      v67 = 0;
      v68 = udwl_nbs_ToLower;
      v29 = 4;
    }

    else
    {
      v60 = udwl_nbs_TrimBlanksAndMatchingQuotes;
      p_s1 = &__s1;
      v62 = &v80;
      v63 = 0;
      v64 = udwl_nbs_TrimHeadAndTail;
      v65 = &v80;
      v66 = v81;
      v67 = 0;
      v68 = udwl_nbs_TrimTrailingDots;
      v71 = 0;
      v72 = udwl_nbs_ToLower;
      v73 = v81;
      v74 = &v80;
      v75 = 0;
      v76 = udwl_nbs_TrimTrailingDots;
      v77 = &v80;
      v78 = v81;
      v28 = &v79;
      v29 = 6;
    }

    v69 = v81;
    v70 = &v80;
    *v28 = 0;
    v30 = heap_Alloc(*(a2 + 8), v27);
    v80 = v30;
    if (v30 && (cstdlib_memset(v30, 0, v27), v31 = heap_Alloc(*(a2 + 8), v27), (v81[0] = v31) != 0))
    {
      v54 = a6;
      v55 = a1;
      v53 = v29;
      v52 = a5;
      v51 = a8;
      cstdlib_memset(v31, 0, v27);
      v32 = 0;
      v49 = *a12;
      v50 = v27;
      while (1)
      {
        v33 = &v58[4 * v32];
        v20 = (*v33)(*v33[1], *v33[2], v27, &v56, v33 + 3);
        if ((v20 & 0x80001FFF) == 0x80000009)
        {
          v34 = 0;
          v35 = v55;
          while (v34 < 3)
          {
            LOWORD(v27) = 2 * v27 + 10;
            v36 = heap_Realloc(*(a2 + 8), v80, v27 & 0xFFFE);
            v80 = v36;
            if (!v36)
            {
              return 2323652618;
            }

            cstdlib_memset(v36, 0, v27 & 0xFFFE);
            v37 = heap_Realloc(*(a2 + 8), v81[0], v27 & 0xFFFE);
            v81[0] = v37;
            if (!v37)
            {
              return 2323652618;
            }

            ++v34;
            cstdlib_memset(v37, 0, v27 & 0xFFFE);
            v20 = (*v33)(*v33[1], *v33[2], v27, &v56, v33 + 3);
            if ((v20 & 0x80001FFF) != 0x80000009)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_53;
        }

        v35 = v55;
LABEL_19:
        if (v56)
        {
          v38 = *v33[2];
          v39 = v35 ? (*(a3 + 120))(a4, v52, v38, a12, a11, a16) : (*(a3 + 112))(a4, v52, v38, v51, a9, a12, a11, a10, a13, a14, a15, a17);
          v20 = v39;
          if ((v39 & 0x1FFF) != 0x14 && (v39 & 0x1FFF) != 0x404 && v39 < 1)
          {
            break;
          }
        }

        v41 = 0;
        ++v32;
        if (!v54 || v53 <= v32)
        {
          goto LABEL_30;
        }
      }

      if ((v39 & 0x80000000) == 0)
      {
        LODWORD(v20) = 0;
        v41 = 1;
        if (a18 && a19)
        {
          v43 = __s1;
          *a18 = 0;
          v44 = &v58[4 * v32];
          v45 = cstdlib_strstr(*v44[1], *v44[2]);
          if (v45)
          {
            v46 = &v45[-*v44[1]];
            *a18 = v46;
            if (v32)
            {
              v47 = v63 + v46;
              *a18 = v47;
              if (v32 != 1)
              {
                *a18 = v67 + v47;
              }
            }
          }

          v48 = cstdlib_strlen(v43);
          LODWORD(v20) = 0;
          *a19 = v48 - *a18 - cstdlib_strlen(*v44[2]);
          v41 = 1;
        }

LABEL_30:
        if (*a10 == 4)
        {
          if (v32 == 4 && v56)
          {
            LODWORD(v20) = udwl_RestoreHeadAndTail(a11, a12, v49, __s1, v50, *v74, *v73);
          }

          else if (v41)
          {
            LODWORD(v20) = udwl_RestoreHeadAndTail(a11, a12, v49, __s1, v50, *v58[4 * v32 + 2], 0);
          }
        }

        if (v80)
        {
          heap_Free(*(a2 + 8), v80);
        }

        if (v81[0])
        {
          heap_Free(*(a2 + 8), v81[0]);
        }

        if (v41)
        {
          return v20;
        }

        else
        {
          return 2323652628;
        }
      }

LABEL_53:
      if (v80)
      {
        heap_Free(*(a2 + 8), v80);
      }

      if (v81[0])
      {
        heap_Free(*(a2 + 8), v81[0]);
      }
    }

    else
    {
      return 2323652618;
    }
  }

  return v20;
}

uint64_t udwl_RestoreHeadAndTail(char *a1, _WORD *a2, int a3, char *__s1, __int16 a5, char *__s2, const char *a7)
{
  v14 = cstdlib_strstr(__s1, __s2);
  if (v14)
  {
    v15 = (v14 - __s1);
  }

  else if (a7)
  {
    v16 = cstdlib_strstr(__s1, a7);
    if (v16)
    {
      v15 = (v16 - __s1);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = 2323652615;
  v18 = cstdlib_strlen(__s2);
  if (a1 && a2 && __s1 && __s2)
  {
    v19 = v18;
    v20 = *a2;
    v21 = (a5 - 1) - v18;
    if (v21 + v20 <= a3)
    {
      if (v15)
      {
        cstdlib_memmove(&a1[v15], a1, v20);
        cstdlib_memmove(a1, __s1, v15);
        LODWORD(v20) = *a2;
      }

      if ((v21 - v15) >= 1)
      {
        cstdlib_memmove(&a1[v15 + v20], &__s1[v15 + v19], v21 - v15);
        LOWORD(v20) = *a2;
      }

      v17 = 0;
      *a2 = v20 + v21;
    }

    else
    {
      return 2323652617;
    }
  }

  return v17;
}

uint64_t udwl_nbs_TakeAsIs(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v9 = 2323652615;
  if (__s && a2)
  {
    if (__s == a2)
    {
      if (a4)
      {
        *a4 = 1;
      }

      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      if (cstdlib_strlen(__s) >= a3)
      {
        return 2323652617;
      }

      cstdlib_strcpy(a2, __s);
      if (a4)
      {
        *a4 = 1;
      }

      if (!a5)
      {
        return 0;
      }
    }

    v9 = 0;
    *a5 = 0;
  }

  return v9;
}

uint64_t udwl_nbs_TrimBlanksAndMatchingQuotes(char *__s, char *a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  result = 2323652615;
  if (__s && a2 && *__s)
  {
    NextUtf8Offset = 0;
    v11 = cstdlib_strlen(__s);
    if (!v11)
    {
      goto LABEL_12;
    }

    while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      if (NextUtf8Offset >= v11)
      {
        goto LABEL_12;
      }
    }

    if (utf8_BelongsToSet(7u, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      v12 = 0;
    }

    else
    {
LABEL_12:
      v12 = 1;
    }

    if (NextUtf8Offset >= v11)
    {
      return 2323652628;
    }

    else
    {
      while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v11)
        {
          return 2323652628;
        }
      }

      if (a5)
      {
        *a5 = NextUtf8Offset;
      }

      PreviousUtf8Offset = v11;
      do
      {
        v14 = PreviousUtf8Offset;
        if (PreviousUtf8Offset <= NextUtf8Offset)
        {
          v17 = 1;
          goto LABEL_25;
        }

        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
      }

      while (utf8_BelongsToSet(0, __s, PreviousUtf8Offset, v11));
      v15 = utf8_GetPreviousUtf8Offset(__s, v14);
      v16 = utf8_BelongsToSet(7u, __s, v15, v11);
      v17 = v16 == 0;
      if (v16)
      {
        v14 = v15;
      }

      do
      {
LABEL_25:
        v18 = v14 - NextUtf8Offset;
        if (v14 <= NextUtf8Offset)
        {
          break;
        }

        v14 = utf8_GetPreviousUtf8Offset(__s, v14);
      }

      while (utf8_BelongsToSet(0, __s, v14, v11));
      if (v18 == v11)
      {
        cstdlib_strcpy(a2, __s);
      }

      else
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v18);
        a2[v18] = 0;
        if (a4)
        {
          *a4 = 1;
        }
      }

      if (v12 | v17)
      {
        return 2323652628;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t udwl_nbs_TrimHeadAndTail(char *__s, char *a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = cstdlib_strlen(__s);
    if (v11)
    {
      NextUtf8Offset = 0;
      while (IsHeadPunctuationMark(__s, NextUtf8Offset, v11))
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v11)
        {
          return 2323652628;
        }
      }

      if (a5)
      {
        *a5 = NextUtf8Offset;
      }

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v11);
      v15 = v11;
      if (NextUtf8Offset < v11)
      {
        v16 = v11;
        do
        {
          v15 = v16;
          v16 = PreviousUtf8Offset;
          WCharFromUtf8 = utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v11);
          if (((WCharFromUtf8 - 33) > 0x3C || ((1 << (WCharFromUtf8 - 33)) & 0x1800000066000947) == 0) && ((WCharFromUtf8 - 125) > 0x3E || ((1 << (WCharFromUtf8 - 125)) & 0x4080000000A000A1) == 0) && ((WCharFromUtf8 - 8217) > 0x21 || ((1 << (WCharFromUtf8 - 25)) & 0x200000055) == 0) && utf8_GetWCharFromUtf8(__s, v16, v11) != 46)
          {
            break;
          }

          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v16);
          v15 = v16;
        }

        while (v16 > NextUtf8Offset);
      }

      if (utf8_GetWCharFromUtf8(__s, v15, v11) == 46)
      {
        v15 = utf8_GetNextUtf8Offset(__s, v15);
      }

      v18 = v15 - NextUtf8Offset;
      if (a4 && v18 != v11)
      {
        *a4 = 1;
      }

      v10 = 2323652617;
      if (v15 != NextUtf8Offset && v18 < a3)
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v15 - NextUtf8Offset);
        v10 = 0;
        a2[v18] = 0;
      }
    }

    else
    {
      return 2323652628;
    }
  }

  return v10;
}

uint64_t udwl_nbs_TrimTrailingDots(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = cstdlib_strlen(__s);
    v12 = v11;
    if (a5)
    {
      *a5 = 0;
    }

    PreviousUtf8Offset = v11;
    do
    {
      v14 = PreviousUtf8Offset;
      if (!PreviousUtf8Offset)
      {
        break;
      }

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
    }

    while (utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v12) == 46);
    if (a4 && v14 != v12)
    {
      *a4 = 1;
    }

    if (v14 >= a3)
    {
      return 2323652617;
    }

    else
    {
      cstdlib_strncpy(a2, __s, v14);
      v10 = 0;
      a2[v14] = 0;
    }
  }

  return v10;
}

uint64_t udwl_nbs_ToLower(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = cstdlib_strlen(__s);
    v12 = v11;
    if (a5)
    {
      *a5 = 0;
    }

    *a2 = 0;
    if (v11)
    {
      NextUtf8Offset = 0;
      v14 = a3;
      while (1)
      {
        v15 = utf8_ToLower(__s, NextUtf8Offset, __sa);
        if (a4 && v15)
        {
          *a4 = 1;
        }

        v16 = cstdlib_strlen(__sa);
        if (cstdlib_strlen(a2) + v16 >= v14)
        {
          break;
        }

        cstdlib_strcat(a2, __sa);
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v12)
        {
          return 0;
        }
      }

      return 2323652617;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t udwl_nbs_TrimLeftBlanksAndQuotes(char *__s, char *a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v9 = 2323652615;
  if (__s && a2 && *__s)
  {
    NextUtf8Offset = 0;
    v11 = cstdlib_strlen(__s);
    if (!v11)
    {
      goto LABEL_12;
    }

    while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      if (NextUtf8Offset >= v11)
      {
        goto LABEL_12;
      }
    }

    if (utf8_BelongsToSet(7u, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      v9 = 0;
    }

    else
    {
LABEL_12:
      v9 = 2323652628;
    }

    if (NextUtf8Offset >= v11)
    {
      return 2323652628;
    }

    else
    {
      while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v11)
        {
          return 2323652628;
        }
      }

      if (a5)
      {
        *a5 = NextUtf8Offset;
      }

      if (NextUtf8Offset)
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v11 - NextUtf8Offset);
        a2[v11 - NextUtf8Offset] = 0;
        if (a4)
        {
          *a4 = 1;
        }
      }

      else
      {
        cstdlib_strcpy(a2, __s);
      }
    }
  }

  return v9;
}

uint64_t udwl_nbs_TrimHead(char *__s, char *a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = cstdlib_strlen(__s);
    if (v11)
    {
      NextUtf8Offset = 0;
      while (IsHeadPunctuationMark(__s, NextUtf8Offset, v11))
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v11)
        {
          return 2323652628;
        }
      }

      if (a5)
      {
        *a5 = NextUtf8Offset;
      }

      v14 = v11 - NextUtf8Offset;
      if (a4 && NextUtf8Offset)
      {
        *a4 = 1;
      }

      if (v14 >= a3)
      {
        return 2323652617;
      }

      else
      {
        cstdlib_strncpy(a2, &__s[NextUtf8Offset], v11 - NextUtf8Offset);
        v10 = 0;
        a2[v14] = 0;
      }
    }

    else
    {
      return 2323652628;
    }
  }

  return v10;
}

uint64_t IsHeadPunctuationMark(uint64_t a1, unsigned int a2, unsigned int a3)
{
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, a2, a3);
  result = 1;
  if (WCharFromUtf8 <= 129)
  {
    if (((WCharFromUtf8 - 60) > 0x3F || ((1 << (WCharFromUtf8 - 60)) & 0x8000000180000001) == 0) && (WCharFromUtf8 - 39) >= 2)
    {
      return 0;
    }
  }

  else if ((WCharFromUtf8 - 130) > 0x3D || ((1 << (WCharFromUtf8 + 126)) & 0x2004020080028005) == 0)
  {
    v5 = WCharFromUtf8 - 8216;
    if (v5 > 0x21 || ((1 << v5) & 0x200000055) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t unixlit_spec_depes_ascii_to_utf8_mapping(int a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  if (a1)
  {
    v4 = CharMappings[a1];
  }

  return utf8_Utf16ToUtf8(&v4, 1u, 0, a2, 5u, a3, 0);
}

uint64_t unixlit_replace_utf8char(unsigned __int8 *a1, char *a2)
{
  v3 = a1;
  v4 = utf8_determineUTF8CharLength(*a1);
  result = utf8_determineUTF8CharLength(*a2);
  v6 = result;
  if (v6 != v4)
  {
    v7 = &v3[v4];
    v8 = cstdlib_strlen(v7);
    result = cstdlib_memmove(&v3[v6], v7, v8 + 1);
  }

  if (v6 >= 1)
  {
    do
    {
      v9 = *a2++;
      *v3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t fe_unixlit_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v5 = 2321555463;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v29[6], "SYNTHSTREAM", &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v29[6], "FE_DEPES", &v26);
  v9 = v29[6];
  if ((Object & 0x80000000) != 0)
  {
    v20 = "SYNTHSTREAM";
LABEL_29:
    objc_ReleaseObject(v9, v20);
    return Object;
  }

  v10 = objc_GetObject(v9, "FE_DCTLKP", &v27);
  if ((v10 & 0x80000000) != 0)
  {
    Object = v10;
    objc_ReleaseObject(v29[6], "SYNTHSTREAM");
    v9 = v29[6];
    v20 = "FE_DEPES";
    goto LABEL_29;
  }

  v11 = heap_Alloc(v29[1], 984);
  if (v11)
  {
    v16 = v11;
    *v11 = v29;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 56) = *(v28 + 8);
    v17 = v26;
    v18 = v27;
    v19 = *(v27 + 8);
    *(v11 + 24) = v19;
    *(v11 + 8) = *(v18 + 16);
    *(v11 + 48) = *(v17 + 8);
    *(v11 + 32) = *(v17 + 16);
    *(v11 + 952) = 0;
    *(v11 + 960) = 0;
    *(v11 + 968) = 0;
    *(v11 + 976) = 0;
    if (((*(v19 + 96))(*(v11 + 8), *(v11 + 16), "fecfg", "uselatin", &v25, &v24, &v23) & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    if (v24 == 1 && v25 && **v25 == 49)
    {
      *(v16 + 952) = 1;
    }

    v24 = 0;
    if (((*(*(v16 + 24) + 96))(*(v16 + 8), *(v16 + 16), "fecfg", "unixlitlatinsp", &v25, &v24, &v23) & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    if (v24 == 1 && v25 && **v25 == 49)
    {
      *(v16 + 956) = 1;
    }

    v24 = 0;
    v5 = (*(*(v16 + 24) + 96))(*(v16 + 8), *(v16 + 16), "fecfg", "lookupa2z", &v25, &v24, &v23);
    if ((v5 & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    if (v24 == 1 && v25 && **v25 == 49)
    {
      *(v16 + 960) = 1;
    }

    *a5 = v16;
    *(a5 + 8) = 62345;
    synstrmaux_InitStreamOpener(v16 + 64, *(*v16 + 32), "FE_UNIXLIT");
  }

  else
  {
    log_OutPublic(v29[4], "FE_UNIXLIT", 39000, 0, v12, v13, v14, v15, v22);
    objc_ReleaseObject(v29[6], "SYNTHSTREAM");
    objc_ReleaseObject(v29[6], "FE_DEPES");
    objc_ReleaseObject(v29[6], "FE_DCTLKP");
    return 2321555466;
  }

  return v5;
}

uint64_t fe_unixlit_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62345, 984);
  if ((result & 0x80000000) != 0)
  {
    return 2321555464;
  }

  if (a1)
  {
    v4 = *(a1 + 968);
    if (v4)
    {
      if (*(a1 + 976))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          heap_Free(*(*a1 + 8), *(v4 + v5));
          v7 = (*(a1 + 968) + v5);
          *v7 = 0;
          heap_Free(*(*a1 + 8), v7[1]);
          v4 = *(a1 + 968);
          *(v4 + v5 + 8) = 0;
          ++v6;
          v5 += 16;
        }

        while (v6 < *(a1 + 976));
      }

      heap_Free(*(*a1 + 8), v4);
      *(a1 + 968) = 0;
    }

    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_unixlit_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_UNIXLIT");
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "uselatin", &v6, &v5, &v4);
  if ((result & 0x80000000) == 0)
  {
    if (v5 == 1 && v6 && **v6 == 49)
    {
      *(a1 + 952) = 1;
    }

    v5 = 0;
    result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "unixlitlatinsp", &v6, &v5, &v4);
    if ((result & 0x80000000) == 0)
    {
      if (v5 == 1 && v6 && **v6 == 49)
      {
        *(a1 + 956) = 1;
      }

      v5 = 0;
      result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "lookupa2z", &v6, &v5, &v4);
      if ((result & 0x80000000) == 0 && v5 == 1 && v6 && **v6 == 49)
      {
        *(a1 + 960) = 1;
      }
    }
  }

  return result;
}

uint64_t fe_unixlit_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_UNIXLIT");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 56), a3, a4);
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40), 0, 1), (v7 & 0x80000000) != 0))
  {
    v8 = v7;
LABEL_7:
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 56));
    return v8;
  }

  v8 = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40), 0, 0);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t unixlit_growMapCharStr(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v6 = a5 + a4;
  v7 = *a3;
  if (a5 + a4 < v7)
  {
    return 0;
  }

  v13 = v7 + 32;
  if (v6 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6 + 32;
  }

  v15 = heap_Realloc(*(*a1 + 8), *a2, 8 * v14);
  if (v15)
  {
    *a2 = v15;
    if (a4 < v14)
    {
      v20 = (v15 + 8 * a4 + 4);
      v21 = v14 - a4;
      do
      {
        *(v20 - 2) = 9999;
        *v20 = 0;
        v20 += 2;
        --v21;
      }

      while (v21);
    }

    result = 0;
    *a3 = v14;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v16, v17, v18, v19, v5);
    return 2321555466;
  }

  return result;
}

uint64_t unixlit_addLangStrs(uint64_t *a1, uint64_t *a2, __int16 *a3, char *__s2, __int16 *a5)
{
  if (*a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (!cstdlib_strcmp(*(*a2 + v10), __s2))
      {
        v31 = 0;
        *a5 = v11;
        return v31;
      }

      ++v11;
      v12 = *a3;
      v10 += 16;
    }

    while (v11 < v12);
    v13 = heap_Realloc(*(*a1 + 8), *a2, 16 * v12 + 17);
    if (v13)
    {
      v18 = v13;
      *a2 = v13;
      v19 = *(*a1 + 8);
      v20 = cstdlib_strlen(__s2);
      v21 = heap_Calloc(v19, 1, v20 + 1);
      *(v18 + 16 * *a3) = v21;
      v22 = *a1;
      if (!v21)
      {
        goto LABEL_14;
      }

      v23 = *(v22 + 8);
      v24 = cstdlib_strlen(__s2);
      v25 = heap_Calloc(v23, 1, (v24 + 1));
      v30 = *a3;
      *(v18 + 16 * v30 + 8) = v25;
      if (!v25)
      {
        v31 = 2321555466;
        log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v26, v27, v28, v29, v52);
        v32 = *(*a1 + 8);
        v33 = *(v18 + 16 * *a3);
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v31 = 2321555466;
    v22 = *a1;
LABEL_16:
    log_OutPublic(*(v22 + 32), "FE_UNIXLIT", 40000, 0, v14, v15, v16, v17, v52);
    return v31;
  }

  v34 = heap_Calloc(*(*a1 + 8), 1, 17);
  v22 = *a1;
  if (!v34)
  {
LABEL_14:
    v31 = 2321555466;
    goto LABEL_16;
  }

  v18 = v34;
  v35 = *(v22 + 8);
  v36 = cstdlib_strlen(__s2);
  v37 = heap_Calloc(v35, 1, v36 + 1);
  *(v18 + 16 * *a3) = v37;
  v42 = *a1;
  if (v37)
  {
    v43 = *(v42 + 8);
    v44 = cstdlib_strlen(__s2);
    v45 = heap_Calloc(v43, 1, (v44 + 1));
    v30 = *a3;
    *(v18 + 16 * v30 + 8) = v45;
    if (v45)
    {
LABEL_12:
      cstdlib_strcpy(*(v18 + 16 * v30), __s2);
      cstdlib_strcpy(*(v18 + 16 * *a3 + 8), __s2);
      v31 = 0;
      v50 = *a3;
      *a5 = *a3;
      *a3 = v50 + 1;
      *a2 = v18;
      return v31;
    }

    v31 = 2321555466;
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v46, v47, v48, v49, v52);
    heap_Free(*(*a1 + 8), *(v18 + 16 * *a3));
  }

  else
  {
    v31 = 2321555466;
    log_OutPublic(*(v42 + 32), "FE_UNIXLIT", 40000, 0, v38, v39, v40, v41, v52);
  }

  v32 = *(*a1 + 8);
  v33 = v18;
LABEL_20:
  heap_Free(v32, v33);
  return v31;
}

uint64_t unixlit_lookup(void *a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  __s1[0] = 0;
  if (cstdlib_strlen(__s))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      LH_itoa(__s[v12], v15, 0x10u);
      cstdlib_strcat(__s1, v15);
      v12 = ++v13;
    }

    while (cstdlib_strlen(__s) > v13);
  }

  return (*(a1[3] + 96))(a1[1], a1[2], a2, __s1, a4, a5, a6);
}

uint64_t fe_unixlit_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v448 = *MEMORY[0x277D85DE8];
  v442 = 0uLL;
  v441 = 0;
  v440 = 0;
  v439 = 0;
  v437 = 0;
  v436 = 0;
  v432 = 0;
  v431 = 0;
  v430 = 9999;
  v429[3] = 9999;
  strcpy(v429, "latin");
  strcpy(v428, "normal");
  __s1 = 0;
  cstdlib_strcpy(__dst, "spell");
  cstdlib_strcpy(v434, "spell:");
  cstdlib_strcpy(v446, "spell:alphanumeric");
  cstdlib_strcpy(v445, "alphanumeric");
  cstdlib_strcpy(v433, "digits");
  cstdlib_strcpy(v444, "characters");
  cstdlib_strcpy(__s2, "normal");
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  *a5 = 1;
  v8 = (*(a1[7] + 144))(a1[111], a1[112], &v442 + 12, &v442 + 4);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1[7] + 144))(a1[113], a1[114], &v442 + 8, &v442 + 4);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!HIDWORD(v442))
  {
    v54 = DWORD1(v442);
    if (!*(&v442 + 4))
    {
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (DWORD2(v442))
    {
      v8 = (*(a1[7] + 88))(a1[113], a1[114], &v441, &v440);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v8 = (*(a1[7] + 104))(a1[117], a1[118], v441, v440);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v9 = (*(a1[7] + 96))(a1[113], a1[114], v440);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v54 = DWORD1(v442);
    }

    if (!v54)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly(a1 + 32, a1[7]);
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v437, 1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v436, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = (*(a1[7] + 88))(a1[111], a1[112], &v439, &v442);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v10 = v442;
  v8 = (*(a1[7] + 88))(a1[113], a1[114], &v441, &v440);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v11 = v440;
  v12 = v440 >> 5;
  v13 = heap_Calloc(*(*a1 + 8), 1, (32 * v12) | 1);
  v423 = (v11 >> 5);
  if (!v13)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v14, v15, v16, v17, v381);
    v25 = 0;
    v9 = 2321555466;
    goto LABEL_706;
  }

  v424 = v13;
  cstdlib_memcpy(v13, v441, v440);
  if ((v11 >> 5))
  {
    v18 = (v424 + 16);
    v19 = v12;
    do
    {
      if (*(v18 - 4) == 1)
      {
        *v18 = 0;
      }

      v18 += 8;
      --v19;
    }

    while (v19);
  }

  v20 = heap_Alloc(*(*a1 + 8), 8 * v12);
  if (!v20)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v21, v22, v23, v24, v381);
LABEL_65:
    heap_Free(*(*a1 + 8), v424);
    return 2321555466;
  }

  v25 = v20;
  if (v12)
  {
    bzero(v20, 8 * v12);
  }

  v26 = *(v424 + 12);
  if (!v26)
  {
    LODWORD(v437) = 0;
    v27 = (*(a1[6] + 104))(a1[4], a1[5], 0, 1);
    if ((v27 & 0x80000000) != 0)
    {
      v9 = v27;
      goto LABEL_77;
    }
  }

  v414 = v26;
  v431 = v10 + 32;
  v28 = heap_Calloc(*(*a1 + 8), 1, (8 * (v10 + 32)) | 1);
  v432 = v28;
  if (!v28)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v29, v30, v31, v32, v381);
    heap_Free(*(*a1 + 8), v25);
    goto LABEL_65;
  }

  v33 = (v10 + 32);
  if (v10 != 0xFFE0)
  {
    v34 = (v33 + 7) & 0x1FFF8;
    v35 = vdupq_n_s64(v33 - 1);
    v36 = xmmword_26ECDB2A0;
    v37 = xmmword_26ECDB2B0;
    v38 = xmmword_26ECCE810;
    v39 = xmmword_26ECC7980;
    v40 = (v28 + 32);
    v41 = vdupq_n_s64(8uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v35, v39));
      if (vuzp1_s8(vuzp1_s16(v42, *v35.i8), *v35.i8).u8[0])
      {
        *(v40 - 16) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(v42, *&v35), *&v35).i8[1])
      {
        *(v40 - 12) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v38))), *&v35).i8[2])
      {
        *(v40 - 8) = 9999;
        *(v40 - 4) = 9999;
      }

      v43 = vmovn_s64(vcgeq_u64(v35, v37));
      if (vuzp1_s8(*&v35, vuzp1_s16(v43, *&v35)).i32[1])
      {
        *v40 = 9999;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(v43, *&v35)).i8[5])
      {
        v40[4] = 9999;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v36)))).i8[6])
      {
        v40[8] = 9999;
        v40[12] = 9999;
      }

      v37 = vaddq_s64(v37, v41);
      v38 = vaddq_s64(v38, v41);
      v39 = vaddq_s64(v39, v41);
      v40 += 32;
      v36 = vaddq_s64(v36, v41);
      v34 -= 8;
    }

    while (v34);
  }

  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, " ", v30, v31, v32, v381);
  do
  {
    v44 = v10;
    v45 = v10;
  }

  while (!v439[v10-- - 1]);
  v390 = (32 * (v11 >> 5)) | 1;
  if (v44)
  {
    v47 = 0;
    while (1)
    {
      v48 = v439[v47];
      v49 = v48 > 0x20;
      v50 = (1 << v48) & 0x100002600;
      if (v49 || v50 == 0)
      {
        break;
      }

      if (v44 == ++v47)
      {
        LOBYTE(v47) = v44;
LABEL_46:
        LOWORD(v52) = v44;
        v53 = v44;
        goto LABEL_79;
      }
    }
  }

  else
  {
    LOWORD(v47) = 0;
  }

  if (v47 >= v44)
  {
    LOWORD(v52) = v47;
    v53 = v47;
  }

  else
  {
    v52 = v47;
    while (1)
    {
      v56 = v439[v52];
      v49 = v56 > 0x20;
      v57 = (1 << v56) & 0x100002600;
      if (!v49 && v57 != 0)
      {
        break;
      }

      if (++v52 >= v45)
      {
        goto LABEL_46;
      }
    }

    v53 = v52;
  }

LABEL_79:
  v60 = v47;
  v413 = v44;
  if (v47 >= v44 || v47 + utf8_determineUTF8CharLength(v439[v47]) != v52)
  {
    goto LABEL_91;
  }

  if (v52 < v413)
  {
    v52 = v52;
    while (1)
    {
      v61 = v439[v52];
      v49 = v61 > 0x20;
      v62 = (1 << v61) & 0x100002600;
      if (v49 || v62 == 0)
      {
        break;
      }

      if (++v52 >= v45)
      {
        goto LABEL_90;
      }
    }
  }

  if (v52 == v413)
  {
LABEL_90:
    v388 = (v413 - v53);
    v64 = 1;
  }

  else
  {
LABEL_91:
    v64 = 0;
    v388 = 0;
  }

  if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &__s1))
  {
    v68 = 1;
  }

  else
  {
    v68 = __s1 == 0;
  }

  v391 = v11;
  if (!v68 && !cstdlib_strcmp(__s1, "internal"))
  {
    v64 = 0;
  }

  v425 = v64;
  v389 = v60;
  v387 = v53;
  v400 = v25;
  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers IN", v65, v66, v67, v382);
  v72 = (v11 >> 5);
  if (v423)
  {
    v73 = v424;
    while (1)
    {
      v74 = *(*a1 + 32);
      v75 = *v73;
      if (v75 == 0x4000)
      {
        log_OutText(v74, "FE_UNIXLIT", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v69, v70, v71, v73[1]);
      }

      else
      {
        log_OutText(v74, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v69, v70, v71, v75);
      }

      v76 = *v73;
      if (*v73 <= 33)
      {
        break;
      }

      if (v76 == 34 || v76 == 40)
      {
        goto LABEL_110;
      }

LABEL_112:
      if (v76 == 26)
      {
        v77 = v439;
        v78 = *v439;
        v49 = v78 > 0x3F;
        v79 = (1 << v78) & 0x8C00700200000000;
        if (!v49 && v79 != 0)
        {
          goto LABEL_117;
        }

        if (cstdlib_strlen(v439) < 3)
        {
          goto LABEL_118;
        }

        v81 = *v77;
        if (v81 == 239)
        {
          if (v77[1] != 188 || v77[2] - 129 > 0x1E)
          {
            goto LABEL_118;
          }

          v82 = 1 << (v77[2] + 127);
          v83 = 1174407169;
LABEL_133:
          if ((v82 & v83) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v81 != 227)
          {
            if (v81 != 226 || v77[1] != 128 || v77[2] - 147 > 0x13)
            {
              goto LABEL_118;
            }

            v82 = 1 << (v77[2] + 109);
            v83 = 524291;
            goto LABEL_133;
          }

          if (v77[1] != 128 || v77[2] - 129 >= 2)
          {
            goto LABEL_118;
          }
        }

        *v77 = 8224;
        v77 += 2;
LABEL_117:
        v425 = 0;
        *v77 = 32;
      }

LABEL_118:
      v73 += 8;
      if (!--v72)
      {
        goto LABEL_135;
      }
    }

    if (v76 == 7)
    {
      goto LABEL_110;
    }

    if (v76 != 21)
    {
      goto LABEL_112;
    }

    if (cstdlib_strcmp(*(v73 + 3), __s2))
    {
LABEL_110:
      v425 = 0;
    }

    v76 = *v73;
    goto LABEL_112;
  }

LABEL_135:
  v84 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v429, &v430);
  if ((v84 & 0x80000000) != 0)
  {
    goto LABEL_703;
  }

  v84 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v428, &v430);
  if ((v84 & 0x80000000) != 0)
  {
    goto LABEL_703;
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v396 = 0;
  v90 = 0;
  v91 = 0;
  v392 = 0;
  v92 = 0;
  v93 = v413;
  v385 = a1 + 121;
  __s = __s2;
  v386 = 2;
  v411 = 0;
  v412 = 1;
  v94 = v423;
  v95 = v424;
  j = v414;
  while (1)
  {
    memset(__c, 0, sizeof(__c));
    if (v94 > v92)
    {
      break;
    }

LABEL_332:
    v128 = v87;
    v129 = v86;
    LOWORD(v127) = v85;
LABEL_333:
    v127 = v127;
    if (v127 >= v93)
    {
      LOWORD(v87) = v128;
LABEL_562:
      if (!v89 || !v87)
      {
        goto LABEL_574;
      }

      if (v87 != v129)
      {
        goto LABEL_573;
      }

      v273 = cstdlib_strlen("§");
      v274 = *(a1[7] + 104);
      v275 = cstdlib_strlen("§");
      v274(a1[115], a1[116], "§", v275);
      v84 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v273);
      if ((v84 & 0x80000000) != 0)
      {
        goto LABEL_703;
      }

      if (v273)
      {
        v276 = 0;
        v277 = v429[3];
        v278 = v432;
        do
        {
          *(v278 + 8 * v88) = v277;
          LOWORD(v88) = v88 + 1;
          ++v276;
        }

        while (v273 > v276);
      }

      v91 += cstdlib_strlen("§");
LABEL_573:
      v94 = v423;
      v95 = v424;
LABEL_574:
      while (v94 > v92)
      {
        *(v95 + 32 * v92 + 12) = (*(v95 + 32 * v92 + 12) + v91 + v437) & ~((*(v95 + 32 * v92 + 12) + v91 + v437) >> 31);
        ++v92;
      }

      v84 = (*(a1[7] + 104))(a1[115], a1[116], "", 1);
      if ((v84 & 0x80000000) != 0)
      {
        goto LABEL_703;
      }

      v422 = v91;
      v84 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
      if ((v84 & 0x80000000) != 0)
      {
        goto LABEL_703;
      }

      v84 = (*(a1[7] + 96))(a1[111], a1[112], v442);
      if ((v84 & 0x80000000) != 0)
      {
        goto LABEL_703;
      }

      v282 = v88 + 1;
      *(v424 + 16) += v422;
      if (v88 == 0xFFFF)
      {
        goto LABEL_677;
      }

      v283 = 0;
      v284 = v432;
      v285 = (v88 + 1);
      do
      {
        v286 = v283;
        v287 = v283;
        v288 = (v283 + 1);
        v289 = v88 + 1;
        if (v288 > v282)
        {
          v289 = v288;
        }

        v290 = 8 * v287;
        v291 = (v284 + 4 + 8 * v286);
        v292 = v287;
        while (1)
        {
          v293 = *v291;
          v291 += 2;
          if (v293 == 1)
          {
            break;
          }

          if (++v292 >= v285)
          {
            goto LABEL_588;
          }
        }

        v289 = v292;
LABEL_588:
        if ((v289 + 1) <= v282)
        {
          v294 = v88 + 1;
        }

        else
        {
          v294 = v289 + 1;
        }

        v283 = v289;
        while (++v283 < v282)
        {
          if (*(v284 + 8 * v283 + 4) != 1)
          {
            goto LABEL_596;
          }
        }

        v283 = v294;
LABEL_596:
        if (v287 < v289 && v287 < v282)
        {
          v295 = (v284 + v290);
          v296 = v287 + 1;
          do
          {
            v298 = *v295;
            v295 += 4;
            v297 = v298;
            if (v298)
            {
              v299 = v296 >= v289;
            }

            else
            {
              v299 = 1;
            }
          }

          while (!v299 && v296++ < v285);
          if (!v297 && v287 < v283)
          {
            v301 = 0;
            v302 = v283 - v287;
            v303 = vdupq_n_s64(v302 - 1);
            v304 = (v284 + 32 + v290);
            do
            {
              v305 = vdupq_n_s64(v301);
              v306 = vmovn_s64(vcgeq_u64(v303, vorrq_s8(v305, xmmword_26ECC7980)));
              if (vuzp1_s8(vuzp1_s16(v306, 6), 6).u8[0])
              {
                *(v304 - 16) = 0;
              }

              if (vuzp1_s8(vuzp1_s16(v306, 6), 6).i8[1])
              {
                *(v304 - 12) = 0;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v303, vorrq_s8(v305, xmmword_26ECCE810)))), 6).i8[2])
              {
                *(v304 - 8) = 0;
                *(v304 - 4) = 0;
              }

              v307 = vmovn_s64(vcgeq_u64(v303, vorrq_s8(v305, xmmword_26ECDB2B0)));
              if (vuzp1_s8(6, vuzp1_s16(v307, 6)).i32[1])
              {
                *v304 = 0;
              }

              if (vuzp1_s8(6, vuzp1_s16(v307, 6)).i8[5])
              {
                v304[4] = 0;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v303, vorrq_s8(v305, xmmword_26ECDB2A0))))).i8[6])
              {
                v304[8] = 0;
                v304[12] = 0;
              }

              v301 += 8;
              v304 += 32;
            }

            while (((v302 + 7) & 0xFFFFFFFFFFFFFFF8) != v301);
          }
        }
      }

      while (v283 < v282);
      v308 = v432;
      v309 = (v88 + 1);
      do
      {
        if (*v308 == 9999)
        {
          *v308 = 1;
        }

        v308 += 4;
        --v309;
      }

      while (v309);
      LOWORD(v310) = 0;
      v311 = 0;
      while (1)
      {
        v310 = v310;
        v312 = v432[4 * v310];
        if (v312 != 9999)
        {
          break;
        }

        v313 = v310 == 0;
        LOWORD(v310) = v310 + 1;
LABEL_635:
        v311 += v313;
        if (v310 >= v282)
        {
          goto LABEL_638;
        }
      }

      v314 = &v432[4 * v310 + 4];
      while (++v310 < v285)
      {
        v315 = *v314;
        v314 += 4;
        if (v312 != v315)
        {
          v313 = 1;
          goto LABEL_635;
        }
      }

      ++v311;
LABEL_638:
      v316 = v311;
      if (!v311)
      {
LABEL_677:
        v319 = v423;
        goto LABEL_678;
      }

      v317 = 0;
      v318 = v432 + 2;
      do
      {
        log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "LANGMAP[%u] = %s [%s]", v279, v280, v281, v317++);
        v318 += 4;
      }

      while (v285 != v317);
      v319 = v423 + v316;
      v320 = heap_Realloc(*(*a1 + 8), v424, (32 * (v423 + v316)) | 1u);
      if (v320)
      {
        v325 = v320;
        cstdlib_memset((v320 + v390), 0, ((32 * v319) | 1) - v390);
        v326 = 0;
        v327 = 0;
        v328 = 0;
        v329 = 0;
        v330 = 0;
        v331 = v432;
        do
        {
          v332 = (v331 + 8 * v328);
          v333 = (v328 + 1);
          if (v333 <= v282)
          {
            LOWORD(v333) = v88 + 1;
          }

          v334 = v423;
          while (++v328 < v282)
          {
            v334 = v423;
            if (*v332 != *(v331 + 8 * v328))
            {
              goto LABEL_650;
            }
          }

          v328 = v333;
LABEL_650:
          v335 = v330;
          if (v334 > v330)
          {
            v336 = (v325 + 32 * (v330 + v329));
            while (v336[3] <= (*(v325 + 12) + v326))
            {
              if (*v336 == 34)
              {
                v327 = v336;
              }

              if (*v336 == 21)
              {
                v327 = 0;
              }

              ++v335;
              v336 += 8;
              v334 = v423;
              if (v423 <= v335)
              {
                v330 = v335;
                v335 = v335;
                goto LABEL_660;
              }
            }

            v330 = v335;
            v334 = v423;
          }

LABEL_660:
          if (v334 != v335 && v330 != (v391 >> 5))
          {
            v337 = v335 + v329 + ((v391 >> 5) - v330);
            v338 = ((v391 >> 5) - v330) - 1;
            do
            {
              v339 = (v325 + 32 * v337);
              v340 = *(v339 - 1);
              *v339 = *(v339 - 2);
              v339[1] = v340;
              --v337;
              LODWORD(v339) = v338--;
            }

            while (v339);
          }

          v341 = v325 + 32 * (v335 + v329);
          v342 = *v332;
          if (v342 == 9999)
          {
            v343 = (*v385 + 24);
          }

          else
          {
            v343 = (*v385 + 16 * v342 + 8);
          }

          *(v341 + 24) = *v343;
          *v341 = 36;
          v344 = *(v325 + 12) + v326;
          *(v341 + 8) = 0;
          *(v341 + 12) = v344;
          if (v327)
          {
            v345 = v327[3];
            v346 = *(v325 + 12);
            v347 = (v346 + v326);
            v348 = -v346;
            v349 = -1;
            do
            {
              ++v349;
              if (*(v331 + 8 * (v345 + v348++) + 4))
              {
                v351 = v349 + v345 >= v347;
              }

              else
              {
                v351 = 1;
              }
            }

            while (!v351);
            v327[3] = v345 + v349;
          }

          *(v341 + 16) = 0;
          ++v329;
          v326 = v328;
        }

        while (v328 < v282);
        v424 = v325;
LABEL_678:
        marker_sort(v424 + 32, (v319 - 1));
        v84 = (*(a1[7] + 104))(a1[117], a1[118], v424, 32 * v319);
        if ((v84 & 0x80000000) == 0)
        {
          log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers OUT", v352, v353, v354, v383);
          v358 = v424;
          if (v319)
          {
            v359 = 0;
            v360 = v432;
            do
            {
              v361 = (v358 + 32 * v359);
              v362 = *v361;
              v363 = *(*a1 + 32);
              if (v362 == 36)
              {
                v364 = *(v360 + 8 * (v361[3] - *(v424 + 12)));
                if (v364 == 9999)
                {
                  v365 = (*v385 + 16);
                }

                else
                {
                  v365 = (*v385 + 16 * v364);
                }

                log_OutText(v363, "FE_UNIXLIT", 5, 0, "Marker [type=SET_LANG(%s)] Ref (%u,%u) Cur(%u,%u)", v355, v356, v357, *v365);
              }

              else if (v362 == 0x4000)
              {
                log_OutText(v363, "FE_UNIXLIT", 5, 0, "Marker[type=SYNC] Ref (%u,%u) Cur(%u,%u)", v355, v356, v357, v361[1]);
              }

              else
              {
                log_OutText(v363, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v355, v356, v357, v362);
              }

              ++v359;
              v358 = v424;
            }

            while (v319 > v359);
          }

          v84 = (*(a1[7] + 96))(a1[113], a1[114], v440);
          if ((v84 & 0x80000000) == 0)
          {
            v441 = 0;
            if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &__s1))
            {
              v366 = 1;
            }

            else
            {
              v366 = __s1 == 0;
            }

            if ((v366 || cstdlib_strcmp(__s1, "internal")) && v425 && *(v424 + 16))
            {
              v367 = heap_Calloc(*(*a1 + 8), 1, 32);
              if (!v367)
              {
                goto LABEL_716;
              }

              v372 = v367;
              *v367 = 21;
              *(v367 + 24) = __dst;
              v373 = v437 + v414;
              *(v367 + 4) = (v437 + v414 + v389);
              *(v367 + 12) = v373 & ~(v373 >> 31);
              *(v367 + 16) = 0;
              v374 = (*(a1[7] + 104))(a1[117], a1[118], v367, 32);
              heap_Free(*(*a1 + 8), v372);
              if ((v374 & 0x80000000) != 0)
              {
                v9 = v374;
                goto LABEL_719;
              }

              v375 = heap_Calloc(*(*a1 + 8), 1, 32);
              if (v375)
              {
                v376 = v375;
                *v375 = 21;
                *(v375 + 24) = __s2;
                v377 = v388 + v387 + v414 + v437;
                *(v375 + 4) = v377;
                *(v375 + 8) = 0;
                *(v375 + 12) = (v377 + v422) & ~((v377 + v422) >> 31);
                v378 = (*(a1[7] + 104))(a1[117], a1[118], v375, 32);
                heap_Free(*(*a1 + 8), v376);
                if ((v378 & 0x80000000) == 0)
                {
                  goto LABEL_702;
                }

                v9 = v378;
LABEL_719:
                v25 = v400;
              }

              else
              {
LABEL_716:
                log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v368, v369, v370, v371, v384);
                v25 = v400;
                v9 = 2321555466;
              }

LABEL_77:
              v59 = v424;
              goto LABEL_705;
            }

LABEL_702:
            v436 += v422;
            v84 = (*(a1[6] + 104))(a1[4], a1[5]);
          }
        }

LABEL_703:
        v9 = v84;
        v25 = v400;
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v321, v322, v323, v324, v383);
        v25 = v400;
        v9 = 2321555466;
      }

      v59 = v424;
      goto LABEL_705;
    }

    v416 = v129;
    v430 = 9999;
    v181 = v438;
    UTF8Char = utf8_getUTF8Char(v439, v127, v438);
    if (v411)
    {
      v405 = v89;
      v407 = 0;
      v183 = 2;
      v392 = v438;
LABEL_336:
      j = v414;
      goto LABEL_337;
    }

    v409 = v127;
    v191 = &v439[v127];
    v192 = *v191;
    if (v192 == 32 && v412 != 0)
    {
      v392 = 0;
      j = v414;
LABEL_379:
      v127 = v409;
      goto LABEL_380;
    }

    v9 = UTF8Char;
    v194 = *(a1 + 240);
    v198 = v90 || v396 || v194 != 1 || v425 == 1;
    if (v194 && v198)
    {
      if (v192 == 32 && v194 == 1 && v425 == 1)
      {
        goto LABEL_423;
      }
    }

    else
    {
      v209 = v192 - 48 >= 0xA && (v192 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (!v209 || v192 == 32)
      {
LABEL_423:
        v405 = v89;
        if (*(a1 + 238) != 1)
        {
          v407 = 0;
          v392 = v438;
          v183 = 2;
LABEL_523:
          j = v414;
          v127 = v409;
          goto LABEL_337;
        }

        v127 = v409;
        if (v192 > 0x60 || v192 - 65 <= 0x19)
        {
          v103 = unixlit_addLangStrs(a1, v385, a1 + 488, v429, &v430);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v407 = 0;
          v392 = v438;
          v183 = 1;
        }

        else
        {
          v407 = 0;
          v392 = v438;
          v183 = 2;
        }

        goto LABEL_336;
      }
    }

    if (v89)
    {
      v210 = cstdlib_strlen("§");
      if (!cstdlib_strncmp(v191, "§", v210))
      {
        v405 = v89;
        v407 = 0;
        v392 = v438;
        v183 = 2;
        v181 = v438;
        goto LABEL_523;
      }
    }

    v59 = v424;
    v127 = v409;
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_559;
    }

    *&__c[1] = -1;
    v103 = unixlit_lookup(a1, "utfunixlit", v438, &__c[3], &__c[1], __c);
    if ((v103 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    if (!*&__c[1])
    {
      j = v414;
LABEL_380:
      v91 -= utf8_determineUTF8CharLength(v439[v127]);
      if (v439[v127] == 32)
      {
        if (v89 && v128 && v128 == v416)
        {
          v410 = v127;
          v202 = cstdlib_strlen("§");
          v203 = *(a1[7] + 104);
          v204 = cstdlib_strlen("§");
          v203(a1[115], a1[116], "§", v204);
          v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v202);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          if (v202)
          {
            v205 = 0;
            v206 = v429[3];
            v207 = v432;
            do
            {
              *(v207 + 8 * v88++) = v206;
              ++v205;
            }

            while (v202 > v205);
          }

          v249 = cstdlib_strlen("§");
          (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
          v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v412 = 0;
          v420 = 0;
          v208 = 0;
          v250 = &v432[4 * v88];
          *v250 = v429[3];
          *(v250 + 1) = 1;
          ++v88;
          v91 += v249 + 1;
          j = v414;
          goto LABEL_536;
        }

        v420 = 0;
        v208 = 0;
      }

      else
      {
        v420 = v128 + 1;
        v208 = v416 + 1;
      }

      goto LABEL_552;
    }

    if (v89)
    {
      v211 = "-";
    }

    else
    {
      v211 = " ";
    }

    v212 = **&__c[3];
    if (cstdlib_strstr(**&__c[3], "░") == v212 && cstdlib_strcmp(__s, __dst))
    {
      unixlit_replace_utf8char(v212, v211);
    }

    v405 = v89;
    v213 = v212;
    v214 = cstdlib_strchr(v212, __c[0]);
    v421 = v91;
    if (!v214)
    {
      v216 = __s;
LABEL_538:
      v407 = 0;
LABEL_539:
      v220 = 2;
LABEL_540:
      v403 = v220;
      goto LABEL_541;
    }

    v215 = v214;
    v216 = __s;
    if (v214 != v213)
    {
      v217 = utf8_determineUTF8CharLength(0xE2u);
      if (&v215[-v217] >= v213)
      {
        v218 = &v215[-v217];
        if (cstdlib_strstr(v218, "░") == v218)
        {
          if (cstdlib_strcmp(__s, __dst))
          {
            unixlit_replace_utf8char(v218, v211);
            v215 += -utf8_determineUTF8CharLength(0xE2u) + 1;
          }
        }
      }
    }

    *v215 = 0;
    v392 = v215 + 1;
    v219 = cstdlib_strchr(v215 + 1, __c[0]);
    if (!v219)
    {
      goto LABEL_538;
    }

    v407 = v219;
    *v219 = 0;
    if (!cstdlib_strcmp(v213, ""))
    {
      goto LABEL_539;
    }

    if (!cstdlib_strcmp(++v407, ""))
    {
      goto LABEL_538;
    }

    v103 = unixlit_addLangStrs(a1, v385, a1 + 488, v407, &v430);
    if ((v103 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    if (cstdlib_strcmp(v407, "normal"))
    {
      if (cstdlib_strcmp(v407, "latin"))
      {
        v220 = 2;
      }

      else
      {
        v220 = 1;
      }

      goto LABEL_540;
    }

    v403 = 0;
LABEL_541:
    __s = v216;
    if (!v213 || !cstdlib_strcmp(v213, ""))
    {
      j = v414;
      v91 = v421;
      v89 = v405;
      goto LABEL_379;
    }

    if (v392 && cstdlib_strcmp(v392, ""))
    {
      j = v414;
      v91 = v421;
      v127 = v409;
      v181 = v213;
    }

    else
    {
      v392 = v213;
      j = v414;
      v91 = v421;
      v181 = v213;
      v127 = v409;
    }

    v183 = v403;
LABEL_337:
    if (!cstdlib_strcmp(v181, " ") && !(v127 + v91) && !v425)
    {
      v89 = v405;
      goto LABEL_380;
    }

    if (*v181 == 32)
    {
      v184 = 0;
      if (v405 && v128 && v128 == v416)
      {
        v417 = v181;
        v185 = cstdlib_strlen("§");
        v186 = *(a1[7] + 104);
        v187 = cstdlib_strlen("§");
        v186(a1[115], a1[116], "§", v187);
        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v185);
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        if (v185)
        {
          v188 = 0;
          v189 = v429[3];
          v190 = v432;
          j = v414;
          do
          {
            *(v190 + 8 * v88++) = v189;
            ++v188;
          }

          while (v185 > v188);
        }

        else
        {
          j = v414;
        }

        v221 = cstdlib_strlen("§");
        v412 = 0;
        v184 = 0;
        v201 = 0;
        v91 += v221;
        v181 = v417;
      }

      else
      {
        v201 = 0;
      }
    }

    else
    {
      v184 = v128 + 1;
      v201 = v416;
    }

    if (v405 || (v386 != 1 || v183) && (v386 || v183 != 1))
    {
      if (v183 >= 2u && *(a1 + 239) && *v181 != 32)
      {
        goto LABEL_442;
      }
    }

    else
    {
      v394 = v90;
      v222 = v183;
      v223 = v184;
      v224 = v201;
      v103 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      *&v432[4 * v88++ + 2] = 1;
      ++v91;
      j = v414;
      v201 = v224;
      v184 = v223;
      v183 = v222;
      v90 = v394;
    }

    v386 = v183;
LABEL_442:
    v418 = v201;
    v420 = v184;
    if (v411 || !(v90 | v425) || !v90 && v439[v127] <= 0x20u)
    {
      v89 = v405;
      if (v405 && cstdlib_strlen(v181) != 1 && (cstdlib_strchr(v181, 32) || cstdlib_strchr(v181, 95)) && cstdlib_strlen(v181))
      {
        v225 = 0;
        v226 = 0;
        do
        {
          v227 = v181[v225];
          if (v227 == 95 || v227 == 32)
          {
            v181[v225] = 45;
          }

          v225 = ++v226;
        }

        while (cstdlib_strlen(v181) > v226);
      }

      if (!cstdlib_strcmp(v181, ""))
      {
        goto LABEL_551;
      }

      v228 = *(a1[7] + 104);
      v229 = cstdlib_strlen(v181);
      v9 = v228(a1[115], a1[116], v181, v229);
      if (!cstdlib_strcmp(v181, " "))
      {
        v236 = cstdlib_strlen(v181);
        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v236);
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v237 = v432;
        if (v88)
        {
          v238 = v88;
          v432[4 * v88] = v432[4 * v88 - 4];
        }

        else
        {
          v238 = 0;
        }

        v412 = 0;
        ++v88;
        *(v237 + 8 * v238 + 4) = 1;
        goto LABEL_551;
      }

      if (!cstdlib_strcmp(v181, "\x15"))
      {
        v246 = cstdlib_strlen(v181);
        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v246);
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        if (v429[3] == 9999)
        {
          v247 = v432;
          if (v88)
          {
            v248 = v88;
            v432[4 * v88] = v432[4 * v88 - 4];
          }

          else
          {
            v248 = 0;
          }

          v412 = 0;
          ++v88;
          *(v247 + 8 * v248 + 4) = 1;
        }

        else
        {
          v412 = 0;
          v432[4 * v88++] = v429[3];
        }

        goto LABEL_551;
      }

      v230 = v430;
      if (!v407 && v430 == 9999 && v429[3] == 9999)
      {
        v231 = cstdlib_strlen(v181);
        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v231);
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v232 = v231;
        if (v231)
        {
          v233 = v432;
          v234 = v181;
          do
          {
            v235 = *v234++;
            if (v235 == 32)
            {
              *(v233 + 8 * v88 + 4) = 1;
            }

            ++v88;
            --v232;
          }

          while (v232);
          v412 = 0;
          goto LABEL_551;
        }
      }

      else
      {
        if (v430 != 9999 || v429[3] != 9999)
        {
          v395 = v90;
          v259 = v91;
          v260 = cstdlib_strlen(v181);
          v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v260);
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          if (cstdlib_strlen(v181))
          {
            v261 = 0;
            v262 = 0;
            v263 = v432;
            if (v429[3] != 9999)
            {
              v230 = v429[3];
            }

            do
            {
              *(v263 + 8 * v88) = v230;
              if (v181[v261] == 32)
              {
                *(v263 + 8 * v88 + 4) = 1;
              }

              v88 = v88 + 1;
              v261 = ++v262;
            }

            while (cstdlib_strlen(v181) > v262);
            v412 = 0;
          }

          else
          {
            v412 = 0;
          }

          v91 = v259;
          v89 = v405;
          v90 = v395;
          goto LABEL_551;
        }

        v59 = v424;
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_559;
        }
      }

      v412 = 0;
LABEL_551:
      v269 = cstdlib_strlen(v181);
      v91 += v269 - utf8_determineUTF8CharLength(v439[v127]);
      j = v414;
      v208 = v418;
      goto LABEL_552;
    }

    v89 = v405;
    if (!v396 || (v239 = v439[v127], v240 = v439[v127], v239 <= 122) && (v239 - 91) >= 6u && (v239 - 58) >= 7u && v240 >= 0xE && (v239 & 0xFFFFFFF0) != 0x20)
    {
      v410 = v127;
      v241 = cstdlib_strlen(v392);
      if (Utf8_LengthInUtf8chars(v392, v241) < 2)
      {
        v242 = __s;
      }

      else
      {
        v242 = __s;
        v443 = 9668;
        utf8_Utf16ToUtf8(&v443, 1u, 0, v438, 5u, &v437 + 1, 0);
        v103 = (*(a1[7] + 104))(a1[115], a1[116], v438, HIDWORD(v437));
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, WORD2(v437));
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v243 = HIDWORD(v437);
        if (HIDWORD(v437))
        {
          v244 = 0;
          v245 = v432;
          do
          {
            if (v438[v244] == 32)
            {
              *(v245 + 8 * v88 + 4) = 1;
              v243 = HIDWORD(v437);
            }

            ++v88;
            ++v244;
          }

          while (v243 > v244);
        }

        v91 += v243;
      }

      v251 = *(a1[7] + 104);
      v252 = cstdlib_strlen(v392);
      v103 = v251(a1[115], a1[116], v392, v252);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v253 = cstdlib_strlen(v392);
      v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v253);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v254 = v253;
      if (v253)
      {
        v255 = v432;
        v256 = v392;
        v257 = v392;
        do
        {
          v258 = *v257++;
          if (v258 == 32)
          {
            *(v255 + 8 * v88 + 4) = 1;
          }

          ++v88;
          --v254;
        }

        while (v254);
      }

      else
      {
        v256 = v392;
      }

      v264 = cstdlib_strlen(v256);
      v91 += v264 - utf8_determineUTF8CharLength(v439[v410]);
      v265 = cstdlib_strlen(v256);
      v411 = 0;
      __s = v242;
      if (Utf8_LengthInUtf8chars(v256, v265) < 2)
      {
        v412 = 0;
      }

      else
      {
        v443 = 9668;
        utf8_Utf16ToUtf8(&v443, 1u, 0, v438, 5u, &v437 + 1, 0);
        v103 = (*(a1[7] + 104))(a1[115], a1[116], v438, HIDWORD(v437));
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, WORD2(v437));
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v266 = HIDWORD(v437);
        if (HIDWORD(v437))
        {
          v267 = 0;
          v268 = v432;
          do
          {
            if (v438[v267] == 32)
            {
              *(v268 + 8 * v88 + 4) = 1;
              v266 = HIDWORD(v437);
            }

            ++v88;
            ++v267;
          }

          while (v266 > v267);
        }

        v412 = 0;
        v91 += v266;
      }

      j = v414;
      v208 = v418;
LABEL_536:
      v127 = v410;
      goto LABEL_552;
    }

    v91 -= utf8_determineUTF8CharLength(v240);
    v208 = v418;
LABEL_552:
    v270 = utf8_determineUTF8CharLength(v439[v127]);
    v85 = (v127 + v270);
    v93 = v413;
    v86 = v208;
    v94 = v423;
    v95 = v424;
    LOWORD(v129) = v208;
    v87 = v420;
    if ((v127 + v270) > v413)
    {
      goto LABEL_562;
    }
  }

  while (1)
  {
    v406 = v92;
    v97 = v95 + 32 * v92;
    v98 = *(v97 + 12);
    v408 = v85;
    if (v85 != (v98 - j))
    {
      goto LABEL_332;
    }

    v415 = v85;
    if (v89 && v87 && v87 == v86)
    {
      v99 = v95 + 32 * v92;
      v100 = cstdlib_strlen("§");
      v101 = *(a1[7] + 104);
      v102 = cstdlib_strlen("§");
      v101(a1[115], a1[116], "§", v102);
      v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, v100);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      if (v100)
      {
        v104 = 0;
        v105 = v429[3];
        v106 = v432;
        j = v414;
        do
        {
          *(v106 + 8 * v88++) = v105;
          ++v104;
        }

        while (v100 > v104);
      }

      else
      {
        j = v414;
      }

      v412 = 0;
      v91 += cstdlib_strlen("§");
      v97 = v99;
      v98 = *(v99 + 12);
      v85 = v415;
    }

    *(v97 + 12) = (v98 + v91 + v437) & ~((v98 + v91 + v437) >> 31);
    v107 = *v97;
    if (*v97 == 21)
    {
      if (v90)
      {
        v90 = !cstdlib_strcmp(*(v97 + 24), __dst) || !cstdlib_strncmp(*(v97 + 24), v434, 6uLL) || !cstdlib_strcmp(*(v97 + 24), v445) || !cstdlib_strcmp(*(v97 + 24), v433) || cstdlib_strcmp(*(v97 + 24), v444) == 0;
        v85 = v415;
      }

      else
      {
        v90 = 0;
      }

      __s = *(v97 + 24);
      v107 = *v97;
    }

    if (v107 == 21 || v107 == 36)
    {
      if (!v85)
      {
        goto LABEL_176;
      }
    }

    else if (v107 != 8 || (v90 | v89) != 0 || v85 == 0)
    {
      goto LABEL_176;
    }

    if (v439[v85 - 1] != 32)
    {
      v103 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      *&v432[4 * v88++ + 2] = 1;
      ++*(v97 + 12);
      ++v91;
      v107 = *v97;
      j = v414;
      v85 = v415;
    }

LABEL_176:
    if (v107 == 21)
    {
      v411 = 0;
      v89 = 0;
LABEL_189:
      if (cstdlib_strcmp(*(v97 + 24), __dst) && cstdlib_strncmp(*(v97 + 24), v434, 6uLL) && cstdlib_strcmp(*(v97 + 24), v445) && cstdlib_strcmp(*(v97 + 24), v433) && cstdlib_strcmp(*(v97 + 24), v444))
      {
        v123 = *v97 != 21 && v90;
        v124 = v90 && *v97 == 21;
        v125 = v396;
        if (v124)
        {
          v125 = 0;
        }

        v396 = v125;
        v90 = v123;
      }

      else if (cstdlib_strcmp(*(v97 + 24), v446) && cstdlib_strcmp(*(v97 + 24), v445) && cstdlib_strcmp(*(v97 + 24), v433))
      {
        v396 = cstdlib_strcmp(*(v97 + 24), v444) == 0;
        v90 = 1;
      }

      else
      {
        v90 = 1;
        v396 = 1;
      }

LABEL_208:
      v94 = v423;
      v95 = v424;
      v93 = v413;
      goto LABEL_216;
    }

    if (v107 == 34)
    {
      v121 = cstdlib_strstr(*(v97 + 24), "\x14EXTCLC");
      v122 = v411;
      if (v121)
      {
        v122 = 1;
      }

      v411 = v122;
      v89 = 1;
      if (*v97 != 21)
      {
        goto LABEL_208;
      }

      goto LABEL_189;
    }

    if (v107 != 36)
    {
      v94 = v423;
      v95 = v424;
      v93 = v413;
      goto LABEL_217;
    }

    v110 = *(*a1 + 8);
    v111 = cstdlib_strlen(*(v97 + 24));
    v112 = heap_Alloc(v110, (v111 + 1));
    if (!v112)
    {
      v271 = *(*a1 + 32);
      v272 = 30000;
LABEL_571:
      log_OutPublic(v271, "FE_UNIXLIT", v272, 0, v113, v114, v115, v116, v383);
      v9 = 2321555466;
      goto LABEL_558;
    }

    v117 = v112;
    v401 = v97;
    v118 = **(v97 + 24);
    if (v118)
    {
      v119 = 0;
      v120 = 0;
      do
      {
        v117[v119] = ssft_tolower(v118);
        v119 = ++v120;
        v118 = *(*(v401 + 24) + v120);
      }

      while (v118);
    }

    else
    {
      v119 = 0;
    }

    v117[v119] = 0;
    if (cstdlib_strcmp(v117, "normal"))
    {
      v126 = unixlit_addLangStrs(a1, v385, a1 + 488, v117, &v429[3]);
      if ((v126 & 0x80000000) != 0)
      {
        v9 = v126;
        heap_Free(*(*a1 + 8), v117);
        goto LABEL_558;
      }
    }

    else
    {
      v429[3] = 9999;
    }

    heap_Free(*(*a1 + 8), v117);
    v97 = v401;
    *v401 = 0x4000;
    *(v401 + 16) = 0;
    *(v401 + 8) = 0;
    v94 = v423;
    v95 = v424;
    j = v414;
    v93 = v413;
LABEL_216:
    v85 = v415;
LABEL_217:
    if (*v97 != 7 || *(v97 + 24) != 43)
    {
      v127 = v85;
      goto LABEL_223;
    }

    v404 = v89;
    v393 = v90;
    v402 = v97;
    if (v85 && v439[v85 - 1] != 32)
    {
      v103 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      *&v432[4 * v88++ + 2] = 1;
      ++*(v97 + 12);
      v419 = v91 + 1;
      v94 = v423;
      v95 = v424;
      j = v414;
      v93 = v413;
      v85 = v415;
    }

    else
    {
      v419 = v91;
    }

    v130 = 0;
    v131 = 0;
    ++v92;
    v132 = 1;
    v399 = v429[3];
    v127 = v85;
LABEL_229:
    v133 = v127;
    v397 = v127 < v93;
    while (1)
    {
      if (v94 <= v92)
      {
        v140 = v94 == v92;
        if (v94 != v92 || v127 >= v93)
        {
          goto LABEL_283;
        }

        goto LABEL_247;
      }

      v134 = v95 + 32 * v92;
      if (*v134 == 7 && v133 >= (*(v134 + 12) - j))
      {
        break;
      }

      v135 = (v95 + 32 * v92);
      v136 = v135 + 3;
      for (i = v135[3]; v127 == (i - j); i = v135[3])
      {
        v138 = *v135;
        if (*v135 == 21 || v138 == 36)
        {
          *v135 = 0x4000;
          v135[4] = 0;
          v135[2] = 0;
        }

        else if (v138 == 7)
        {
          break;
        }

        *v136 = (i + v419 + v437) & ~((i + v419 + v437) >> 31);
        if (v94 <= ++v92)
        {
          break;
        }

        v139 = v95 + 32 * v92;
        if (v127 == (*(v139 + 12) - j) && *v139 == 7)
        {
          v131 = 1;
        }

        v135 = (v95 + 32 * v92);
        v136 = v135 + 3;
      }

LABEL_247:
      v141 = &v439[v127];
      v142 = *v141;
      if (v131)
      {
        v143 = 1;
      }

      else
      {
        v143 = v142 == 32;
      }

      if (!v143)
      {
        v130 = 0;
      }

      if ((v142 == 95 || v142 == 35) && v127 != v85)
      {
        v144 = *(v141 - 1);
        v145 = (v144 - 32) > 0x3F || ((1 << (v144 - 32)) & 0x8000000000000009) == 0;
        if (v145 && (v127 < 4u || v144 != 92 || (*(v141 - 3) | 0x20) != 0x74 || v439[v127 - 4] != 92))
        {
          if (v142 == 35)
          {
            v130 = 1;
          }

          v146 = v133;
          if (!v132)
          {
            v103 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
            if ((v103 & 0x80000000) != 0)
            {
              goto LABEL_557;
            }

            v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
            if ((v103 & 0x80000000) != 0)
            {
              goto LABEL_557;
            }

            v147 = &v432[4 * v88];
            *v147 = v399;
            *(v147 + 1) = 1;
            ++v88;
            ++v419;
          }

          v443 = 167;
          utf8_Utf16ToUtf8(&v443, 1u, 0, v438, 5u, &v437 + 1, 0);
          v103 = (*(a1[7] + 104))(a1[115], a1[116], v438, HIDWORD(v437));
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, WORD2(v437));
          if ((v103 & 0x80000000) != 0)
          {
            goto LABEL_557;
          }

          v148 = HIDWORD(v437);
          v94 = v423;
          v95 = v424;
          if (HIDWORD(v437))
          {
            v149 = 0;
            v150 = v432;
            j = v414;
            v93 = v413;
            v85 = v415;
            do
            {
              *(v150 + 8 * v88) = v399;
              if (v438[v149] == 32)
              {
                *(v150 + 8 * v88 + 4) = 1;
                v148 = HIDWORD(v437);
              }

              v88 = v88 + 1;
              ++v149;
            }

            while (v148 > v149);
          }

          else
          {
            j = v414;
            v93 = v413;
            v85 = v415;
          }

          v412 = 0;
          v132 = 0;
          v419 += v148;
          v133 = v146;
        }
      }

      if (!v131)
      {
        v151 = v132;
        v419 -= utf8_determineUTF8CharLength(v439[v127]);
        v152 = utf8_determineUTF8CharLength(v439[v127]);
        v132 = v151;
        v85 = v415;
        v93 = v413;
        v127 = (v127 + v152);
        v94 = v423;
        v95 = v424;
        goto LABEL_229;
      }
    }

    v140 = v94 == v92;
    v397 = v127 < v93;
LABEL_283:
    v153 = v127 == v93 && v140;
    if (v94 <= v92 && !v153)
    {
      v127 = v85;
      v91 = v419;
      v89 = v404;
      goto LABEL_223;
    }

    v154 = v132;
    v155 = v127 - v408;
    v156 = heap_Alloc(*(*a1 + 8), v155 + 1);
    if (!v156)
    {
LABEL_570:
      v271 = *(*a1 + 32);
      v272 = 39000;
      goto LABEL_571;
    }

    v157 = v156;
    cstdlib_memcpy(v156, &v439[v415], v155);
    v157[v155] = 0;
    *v402 = 34;
    *(v402 + 24) = v157;
    *(v400 + 8 * v406) = v157;
    if (v130)
    {
      v158 = v424;
      v91 = v419;
      v93 = v413;
      v89 = v404;
      v159 = v413;
      v90 = v393;
      v160 = v127;
      goto LABEL_304;
    }

    v161 = v419;
    if (!v154)
    {
      break;
    }

LABEL_296:
    v443 = 167;
    utf8_Utf16ToUtf8(&v443, 1u, 0, v438, 5u, &v437 + 1, 0);
    v103 = (*(a1[7] + 104))(a1[115], a1[116], v438, HIDWORD(v437));
    v90 = v393;
    if ((v103 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, WORD2(v437));
    v89 = v404;
    if ((v103 & 0x80000000) != 0)
    {
      goto LABEL_557;
    }

    v163 = HIDWORD(v437);
    v158 = v424;
    v93 = v413;
    v159 = v413;
    v160 = v127;
    if (HIDWORD(v437))
    {
      v164 = 0;
      v165 = v432;
      do
      {
        *(v165 + 8 * v88) = v399;
        if (v438[v164] == 32)
        {
          *(v165 + 8 * v88 + 4) = 1;
          v163 = HIDWORD(v437);
        }

        v88 = v88 + 1;
        ++v164;
      }

      while (v163 > v164);
    }

    v412 = 0;
    v91 = v161 + v163;
LABEL_304:
    if (!v140)
    {
      v166 = *(*a1 + 8);
      v167 = cstdlib_strlen(__s);
      v168 = heap_Alloc(v166, (v167 + 1));
      if (!v168)
      {
        goto LABEL_570;
      }

      v169 = v168;
      cstdlib_strcpy(v168, __s);
      v158 = v424;
      v170 = v424 + 32 * v92;
      *v170 = 21;
      *(v170 + 24) = v169;
      *(v400 + 8 * v92) = v169;
      v171 = *(v170 + 12) + v91 + v437;
      *(v170 + 12) = v171 & ~(v171 >> 31);
      v93 = v413;
      v159 = v413;
      v160 = v127;
    }

    if (v397)
    {
      v172 = v127;
      v173 = v439[v127] != 32;
      while (v439[v172] == 32)
      {
        if (v159 == ++v172)
        {
          v174 = v93;
          goto LABEL_314;
        }
      }

      v174 = v172;
LABEL_314:
      v160 = v174;
    }

    else
    {
      v173 = 1;
      v174 = v127;
    }

    v175 = v160 + 1;
    if (v175 != *(v158 + 16) || ((v176 = v439[v174], v49 = v176 > 0x3F, v177 = (1 << v176) & 0x8800400200000000, !v49) ? (v178 = v177 == 0) : (v178 = 1), v178))
    {
      if (v173)
      {
        v103 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_557;
        }

        *&v432[4 * v88++ + 2] = 1;
        ++v91;
        v94 = v423;
        v95 = v424;
        j = v414;
        v93 = v413;
      }

      else
      {
        v94 = v423;
        v95 = v424;
        j = v414;
      }
    }

    else
    {
      utf8_getUTF8Char(v439, v160, v438);
      v103 = (*(a1[7] + 104))(a1[115], a1[116], v438, 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_557;
      }

      v94 = v423;
      v95 = v424;
      v93 = v413;
      if (v438[0] == 32)
      {
        *&v432[4 * v88 + 2] = 1;
      }

      ++v88;
      v179 = v424 + 32 * v92;
      v180 = *(v179 + 12) + 1;
      *(v179 + 12) = v180;
      for (j = v414; v423 > v92; ++v92)
      {
        *(v424 + 32 * v92 + 12) = v180;
      }

      v127 = v175;
    }

LABEL_223:
    v86 = 0;
    v87 = 0;
    v128 = 0;
    v129 = 0;
    ++v92;
    v85 = v127;
    if (v94 <= v92)
    {
      goto LABEL_333;
    }
  }

  v103 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
  if ((v103 & 0x80000000) == 0)
  {
    v103 = unixlit_growMapCharStr(a1, &v432, &v431, v88, 1);
    if ((v103 & 0x80000000) == 0)
    {
      v162 = &v432[4 * v88];
      *v162 = v399;
      *(v162 + 1) = 1;
      ++v88;
      v161 = v419 + 1;
      goto LABEL_296;
    }
  }

LABEL_557:
  v9 = v103;
LABEL_558:
  v59 = v424;
LABEL_559:
  v25 = v400;
LABEL_705:
  heap_Free(*(*a1 + 8), v59);
LABEL_706:
  if (v432)
  {
    heap_Free(*(*a1 + 8), v432);
  }

  if (v25)
  {
    if (v423 >= 2)
    {
      v379 = (v25 + 8);
      v380 = v423 - 1;
      do
      {
        if (*v379)
        {
          heap_Free(*(*a1 + 8), *v379);
        }

        ++v379;
        --v380;
      }

      while (v380);
    }

    heap_Free(*(*a1 + 8), v25);
  }

  return v9;
}