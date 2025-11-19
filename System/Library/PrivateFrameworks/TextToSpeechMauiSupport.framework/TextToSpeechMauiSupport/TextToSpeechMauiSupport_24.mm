uint64_t hlp_UnLoadDTData(uint64_t *a1)
{
  v15[100] = *MEMORY[0x277D85DE8];
  v14 = 0;
  bzero(v15, 0x320uLL);
  if ((ssftmap_IteratorOpen(a1[71], 0, 1, &v14) & 0x80000000) != 0)
  {
    return ssftmap_Clear(a1[71]);
  }

  v12 = 0;
  v13 = 0;
  if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  LOBYTE(v2) = 0;
  do
  {
    if (!v2)
    {
      v3 = 0;
LABEL_11:
      LOBYTE(v2) = v2 + 1;
      v15[v3] = v12;
      continue;
    }

    v3 = v2;
    v4 = v15;
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while (v6 != v12);
    if (v6 != v12)
    {
      goto LABEL_11;
    }
  }

  while ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) == 0);
  v2 = v2;
LABEL_16:
  ssftmap_IteratorClose(v14);
  result = ssftmap_Clear(a1[71]);
  if (v2)
  {
    v9 = v2;
    v10 = v15;
    do
    {
      v11 = *v10++;
      OOC_PlacementDeleteObject((a1 + 111), *(v11 + 16));
      ssftriff_reader_ReleaseChunkData(*v11);
      result = heap_Free(*(*a1 + 8), v11);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t fe_oneword_ObjReopen(uint64_t a1, int a2)
{
  v19 = 0;
  v18 = 0;
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (!a1)
  {
    return result;
  }

  result = (*(*(a1 + 80) + 88))(*(a1 + 64), *(a1 + 72), &v19, &v18);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = v18 == 1 && v19 == 1;
  v5 = v4;
  *(a1 + 560) = v5;
  *(a1 + 556) = 1;
  result = checkStatCOMP(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 2000));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkSkipCrosstoken(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 936));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkFeOneWordCLM(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 940));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkParaDCT(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 1996));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = oneword_posparser_Reopen(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v6 = *(a1 + 2176);
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  *(a1 + 2176) = 0;
  result = hlp_setKeyword(*a1, *(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_latinPOStag", (a1 + 2176));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = *(a1 + 2184);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  *(a1 + 2184) = 0;
  result = hlp_setKeyword(*a1, *(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_latin2enx", (a1 + 2184));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a1 + 2168) == 1)
  {
    crf_mde_seg_unload(*a1, *(a1 + 8), a1 + 2016);
  }

  *(a1 + 2168) = 0;
  result = crf_mde_seg_load(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *a1, *(a1 + 8), *(a1 + 64), *(a1 + 72), *(a1 + 80), a1 + 2016, (a1 + 2168));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = (a1 + 2192);
  v9 = *(a1 + 2192);
  result = com_mosynt_UseMosynt(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 2192));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = *v8;
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v17 = 1;
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  if (v10 != 1)
  {
    if (v10)
    {
      goto LABEL_64;
    }

    if (*(a1 + 2200))
    {
      result = kbsymtab_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2200));
      *(a1 + 2200) = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a1 + 2232))
    {
      result = wgram_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2232));
      *(a1 + 2232) = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a1 + 2240))
    {
      result = fst_UnloadData(*(a1 + 16), *(a1 + 24), (a1 + 2240));
      *(a1 + 2240) = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v11 = *(a1 + 2208);
    if (v11)
    {
      kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v11);
      *(a1 + 2208) = 0;
    }

    v12 = *(a1 + 2216);
    if (v12)
    {
      kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v12);
      *(a1 + 2216) = 0;
    }

    v13 = *(a1 + 2224);
    if (v13)
    {
      kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v13);
      *(a1 + 2224) = 0;
    }

    if (*v8 != 1)
    {
LABEL_64:
      cstdlib_strcpy((a1 + 300), "normal");
      result = oneword_GetMdeSettings(a1, "normal");
      if ((result & 0x80000000) == 0)
      {
        result = hlp_GetPart(a1);
        if ((result & 0x80000000) == 0)
        {
          hlp_UnLoadDTData(a1);
          return hlp_common_ObjOpenReopen(a1);
        }
      }

      return result;
    }
  }

  v17 = 1;
  if (!*(a1 + 2200) || (result = kbsymtab_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2200)), *(a1 + 2200) = 0, (result & 0x80000000) == 0))
  {
    if (!*(a1 + 2232) || (result = wgram_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2232)), *(a1 + 2232) = 0, (result & 0x80000000) == 0))
    {
      if (!*(a1 + 2240) || (result = fst_UnloadData(*(a1 + 16), *(a1 + 24), (a1 + 2240)), *(a1 + 2240) = 0, (result & 0x80000000) == 0))
      {
        v14 = *(a1 + 2208);
        if (v14)
        {
          kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v14);
          *(a1 + 2208) = 0;
        }

        v15 = *(a1 + 2216);
        if (v15)
        {
          kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v15);
          *(a1 + 2216) = 0;
        }

        v16 = *(a1 + 2224);
        if (v16)
        {
          kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v16);
          *(a1 + 2224) = 0;
        }

LABEL_57:
        result = hlp_GetParams(a1, (a1 + 2248), &v17);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = wgram_LoadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2232));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kbsymtab_LoadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2200), v17);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = fst_LoadData(*(a1 + 16), *(a1 + 24), (a1 + 2240));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 1228, *(a1 + 64), *(a1 + 72), *(a1 + 80), 0, (a1 + 2208));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 1228, *(a1 + 64), *(a1 + 72), *(a1 + 80), 1u, (a1 + 2216));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 1228, *(a1 + 64), *(a1 + 72), *(a1 + 80), 2u, (a1 + 2224));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_64;
      }
    }
  }

  return result;
}

uint64_t fe_oneword_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (*(a1 + 2004))
  {

    return oneword_posparser_Start(a1);
  }

  return result;
}

uint64_t fe_oneword_MosyntGetMosyntParamVal(void *a1, uint64_t a2, char *__src, char *__dst, int a5)
{
  *&v14[3] = 0;
  *&v14[1] = -1;
  v14[0] = 0;
  v12 = 0;
  cstdlib_strcpy(__dst, __src);
  TermSubstr = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", a2, &v14[3], &v14[1], v14);
  if ((TermSubstr & 0x80000000) == 0)
  {
    if (*&v14[1])
    {
      v13 = 0;
      TermSubstr = mosynt_GetTermSubstr(**&v14[3], &v13, v14[0], &v12, __dst, a5);
      if ((TermSubstr & 0x80000000) == 0 && !v12)
      {
        cstdlib_strcpy(__dst, __src);
      }
    }
  }

  return TermSubstr;
}

const char *hlp_FindWordSep(const char *a1, int a2, unsigned int a3)
{
  LODWORD(v4) = a2;
  v6 = cstdlib_strlen(a1);
  result = 0;
  if (v6 > v4 && v4 < a3)
  {
    v4 = v4;
    while (1)
    {
      v8 = a1[v4];
      if (v8 == 32 || v8 == 95)
      {
        break;
      }

      ++v4;
      v9 = cstdlib_strlen(a1);
      result = 0;
      if (v4 >= v9 || v4 >= a3)
      {
        return result;
      }
    }

    return &a1[v4];
  }

  return result;
}

uint64_t hlp_ShouldAddAsVariant(const char *a1, char *a2, char *__s2)
{
  result = cstdlib_strcmp(a1, __s2);
  if (result)
  {
    v6 = cstdlib_strstr(a2, __s2);
    if (v6)
    {
      v7 = v6;
      v8 = a2;
      while (v7 != a2 && *(v7 - 1) == 18 || v8[cstdlib_strlen(__s2)] && v8[cstdlib_strlen(__s2)] != 18)
      {
        v8 = &v7[cstdlib_strlen(__s2)];
        v7 = cstdlib_strstr(v8, __s2);
        if (!v7)
        {
          return 1;
        }
      }

      cstdlib_strlen(__s2);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t fe_oneword_SplitMW(void *a1, uint64_t a2, uint64_t a3)
{
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v94 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, HIWORD(v94), 0, &v87, &v91 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v94), &v94);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v94;
    if (v94)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (*(a1[7] + 168))(a2, a3, v8, 0, 1, &v92 + 4, &v91 + 2);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_119:
          v7 = v13;
LABEL_120:
          if (!v11)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        if (HIDWORD(v92) == 4)
        {
          if (v11)
          {
            *v11 = 0;
          }

          if (v10)
          {
            *v10 = 0;
          }

          v13 = (*(a1[7] + 176))(a2, a3, v94, 3, &v90, &v91 + 2);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_119;
          }

          PhonWordSep = oneword_FindPhonWordSep(v90, &v83);
          if (PhonWordSep)
          {
            v15 = PhonWordSep;
            v13 = (*(a1[7] + 168))(a2, a3, v94, 1, 1, &v86 + 2, &v91 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            v13 = (*(a1[7] + 168))(a2, a3, v94, 2, 1, &v85 + 2, &v91 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            WordSep = hlp_FindWordSep(v87, HIWORD(v86), HIWORD(v85));
            if (WordSep)
            {
              break;
            }
          }
        }

LABEL_114:
        v7 = (*(a1[7] + 120))(a2, a3, v94, &v94);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v94;
          if (v94)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

      __s = 0;
      LOWORD(v85) = HIWORD(v85);
      HIWORD(v85) = WordSep - v87;
      v13 = (*(a1[7] + 160))(a2, a3, v94, 2, 1, &v85 + 2, &v91);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_119;
      }

      v84 = HIWORD(v85) + 1;
      if (((*(a1[7] + 184))(a2, a3, v94, 11, &v78) & 0x80000000) != 0 || v78 != 1 || ((*(a1[7] + 176))(a2, a3, v94, 11, &__s, &v91 + 2) & 0x80000000) != 0)
      {
        __src = v11;
LABEL_67:
        v45 = v15;
        *v15 = 0;
        v46 = v83;
        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v94, 5, &v88, &v91 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_127;
        }

        v75 = v10;
        v48 = cstdlib_strstr(v88, "\");
        if (v48)
        {
          *v48 = 0;
          v49 = v48 + 1;
        }

        else
        {
          v49 = v88;
        }

        v50 = (*(a1[7] + 176))(a2, a3, v94, 6, &v89, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v50 = (*(a1[7] + 176))(a2, a3, v94, 9, &v81, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v50 = (*(a1[7] + 176))(a2, a3, v94, 4, &v80, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v50 = (*(a1[7] + 168))(a2, a3, v94, 7, 1, &v79 + 2, &v91 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v51 = (*(a1[7] + 184))(a2, a3, v94, 17, &v78) >= 0 && v78 == 1;
        v52 = v51;
        if (v51)
        {
          v50 = (*(a1[7] + 168))(a2, a3, v94, 17, 1, &v79, &v91 + 2);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }
        }

        v73 = v9;
        v82 = 0;
        v53 = (*(a1[7] + 184))(a2, a3, v94, 12, &v78) >= 0 && v78 == 1;
        v54 = v53;
        if (v53)
        {
          v50 = (*(a1[7] + 176))(a2, a3, v94, 12, &v82, &v91 + 2);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }
        }

        v55 = v94;
        v93 = v94;
        if (v94)
        {
          v56 = &v79;
          if (!v52)
          {
            v56 = 0;
          }

          __s2a = v56;
          while (1)
          {
            v12 = v55;
            v50 = (*(a1[7] + 168))(a2, a3, v55, 1, 1, &v86, &v91 + 2);
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            v50 = (*(a1[7] + 168))(a2, a3, v93, 0, 1, &v92, &v91 + 2);
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v85) + 1 < v86 || v86 >= HIWORD(v85) && v92 == 16)
            {
              v59 = v82;
              if (!v54)
              {
                v59 = 0;
              }

              v62 = v49;
              v10 = v75;
              WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 1, v93, &v84, &v85, &v45[v46], v75, v62, v89, v81, v80, &v79 + 2, __s2a, v59);
              goto LABEL_112;
            }

            v50 = (*(a1[7] + 120))(a2, a3, v93, &v93);
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            v55 = v93;
            if (!v93)
            {
              goto LABEL_104;
            }
          }

LABEL_124:
          v7 = v50;
          v10 = v75;
LABEL_125:
          v11 = __src;
          if (!__src)
          {
LABEL_122:
            if (v10)
            {
              heap_Free(*(*a1 + 8), v10);
            }

            return v7;
          }

LABEL_121:
          heap_Free(*(*a1 + 8), v11);
          goto LABEL_122;
        }

LABEL_104:
        v57 = &v79;
        if (!v52)
        {
          v57 = 0;
        }

        v58 = v82;
        if (!v54)
        {
          v58 = 0;
        }

        v61 = v49;
        v10 = v75;
        WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 0, v12, &v84, &v85, &v45[v46], v75, v61, v89, v81, v80, &v79 + 2, v57, v58);
LABEL_112:
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
LABEL_127:
          v7 = WordDctBeforOrAfter;
          goto LABEL_125;
        }

        v9 = v73;
        v11 = __src;
        goto LABEL_114;
      }

      if (v11 | v10)
      {
        if (cstdlib_strlen(__s) + 1 <= v9)
        {
          goto LABEL_27;
        }

        v22 = v11;
        v23 = v15;
        v24 = *(*a1 + 8);
        v25 = cstdlib_strlen(__s);
        v26 = heap_Realloc(v24, v22, v25 + 1);
        v27 = *(*a1 + 8);
        v28 = cstdlib_strlen(__s) + 1;
        v29 = v27;
        v15 = v23;
        v11 = v26;
        v21 = heap_Realloc(v29, v10, v28);
      }

      else
      {
        v17 = *(*a1 + 8);
        v18 = cstdlib_strlen(__s);
        v11 = heap_Alloc(v17, v18 + 1);
        v19 = *(*a1 + 8);
        v20 = cstdlib_strlen(__s);
        v21 = heap_Alloc(v19, v20 + 1);
      }

      v10 = v21;
      v9 = cstdlib_strlen(__s) + 1;
LABEL_27:
      v7 = 2310021130;
      if (!v11 || !v10)
      {
        goto LABEL_120;
      }

      __src = v11;
      v69 = v15;
      v30 = v90;
      if (v90 && (v31 = __s) != 0 && cstdlib_strlen(__s) + 1 <= v9)
      {
        v95[0] = 0;
        *__src = 0;
        *v10 = 0;
        v33 = cstdlib_strlen(v30);
        v34 = oneword_CountPhoneticWords(v30, &v30[v33]);
        v35 = oneword_FindPhonWordSep(v30, v95);
        v72 = v9;
        if (v35)
        {
          v65 = &v35[v95[0]];
        }

        else
        {
          v65 = 0;
          v35 = &v30[cstdlib_strlen(v30)];
        }

        v63 = *v35;
        v64 = v35;
        *v35 = 0;
        if (cstdlib_strlen(v31))
        {
          v37 = v34 == 2 && v65 != 0;
          v66 = v37;
          v67 = v34;
          v74 = v10;
          v68 = v12;
          do
          {
            v38 = cstdlib_strstr(v31, "\x12");
            if (!v38)
            {
              v38 = &v31[cstdlib_strlen(v31)];
            }

            v39 = oneword_CountPhoneticWords(v31, v38);
            v40 = *v38;
            if (v34 == v39)
            {
              *v38 = 0;
              v41 = oneword_FindPhonWordSep(v31, v95);
              if (v41)
              {
                v42 = v41;
                __s2 = &v41[v95[0]];
              }

              else
              {
                v95[0] = 0;
                __s2 = 0;
                v42 = &v31[cstdlib_strlen(v31)];
              }

              v43 = *v42;
              *v42 = 0;
              if (hlp_ShouldAddAsVariant(v30, __src, v31))
              {
                if (cstdlib_strlen(__src))
                {
                  cstdlib_strcat(__src, "\x12");
                }

                cstdlib_strcat(__src, v31);
              }

              *v42 = v43;
              v10 = v74;
              v12 = v68;
              if (cstdlib_strlen(&v42[v95[0]]))
              {
                v44 = v66;
                if (!__s2)
                {
                  v44 = 0;
                }

                if (!v44 || hlp_ShouldAddAsVariant(v65, v74, __s2))
                {
                  if (cstdlib_strlen(v74))
                  {
                    cstdlib_strcat(v74, "\x12");
                  }

                  cstdlib_strcat(v74, &v42[v95[0]]);
                }
              }

              *v38 = v40;
              v34 = v67;
            }

            if (!v40)
            {
              break;
            }

            v31 = v38 + 1;
          }

          while (cstdlib_strlen(v38 + 1));
        }

        *v64 = v63;
        v9 = v72;
        v32 = __src;
      }

      else
      {
        v32 = __src;
        *__src = 0;
        *v10 = 0;
      }

      cstdlib_strcpy(__s, v32);
      v15 = v69;
      goto LABEL_67;
    }
  }

  return v7;
}

uint64_t hlp_CreateWordDctBeforOrAfter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, char *__s, char *a10, char *a11, char *a12, char *a13, uint64_t a14, uint64_t a15, const char *a16)
{
  v45 = 0;
  v22 = 88;
  if (!a4)
  {
    v22 = 80;
  }

  result = (*(*(a1 + 56) + v22))(a2, a3, a5, &v45);
  if ((result & 0x80000000) == 0)
  {
    v46 = 4;
    result = (*(*(a1 + 56) + 160))(a2, a3, v45, 0, 1, &v46, &v45 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, v45, 1, 1, a6, &v45 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, v45, 2, 1, a7, &v45 + 2);
        if ((result & 0x80000000) == 0)
        {
          v24 = *(*(a1 + 56) + 160);
          v25 = v45;
          v26 = cstdlib_strlen(a8);
          result = v24(a2, a3, v25, 3, (v26 + 1), a8, &v45 + 2);
          if ((result & 0x80000000) == 0)
          {
            if (!__s || !cstdlib_strlen(__s) || (v27 = *(*(a1 + 56) + 160), v28 = v45, v29 = cstdlib_strlen(__s), result = v27(a2, a3, v28, 11, (v29 + 1), __s, &v45 + 2), (result & 0x80000000) == 0))
            {
              v30 = *(*(a1 + 56) + 160);
              v31 = v45;
              v32 = cstdlib_strlen(a10);
              result = v30(a2, a3, v31, 5, (v32 + 1), a10, &v45 + 2);
              if ((result & 0x80000000) == 0)
              {
                v33 = *(*(a1 + 56) + 160);
                v34 = v45;
                v35 = cstdlib_strlen(a11);
                result = v33(a2, a3, v34, 6, (v35 + 1), a11, &v45 + 2);
                if ((result & 0x80000000) == 0)
                {
                  v36 = *(*(a1 + 56) + 160);
                  v37 = v45;
                  v38 = cstdlib_strlen(a12);
                  result = v36(a2, a3, v37, 9, (v38 + 1), a12, &v45 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    v39 = *(*(a1 + 56) + 160);
                    v40 = v45;
                    v41 = cstdlib_strlen(a13);
                    result = v39(a2, a3, v40, 4, (v41 + 1), a13, &v45 + 2);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a2, a3, v45, 7, 1, a14, &v45 + 2);
                      if ((result & 0x80000000) == 0)
                      {
                        if (!a15)
                        {
                          if (!a16)
                          {
                            return result;
                          }

                          goto LABEL_19;
                        }

                        result = (*(*(a1 + 56) + 160))(a2, a3, v45, 17, 1, a15, &v45 + 2);
                        if (a16 && (result & 0x80000000) == 0)
                        {
LABEL_19:
                          v42 = *(*(a1 + 56) + 160);
                          v43 = v45;
                          v44 = cstdlib_strlen(a16);
                          return v42(a2, a3, v43, 12, (v44 + 1), a16, &v45 + 2);
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

  return result;
}

uint64_t fe_oneword_MosyntCleanup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  __s = 0;
  v37 = 0;
  v38 = 0;
  __src = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__src);
  if ((result & 0x80000000) == 0)
  {
    result = fe_oneword_MosyntGetMosyntParamVal(a1, "mosynt_defaultpos_stressed", "XN()", v48, 200);
    if ((result & 0x80000000) == 0)
    {
      result = fe_oneword_MosyntGetMosyntParamVal(a1, "mosynt_defaultpos_unstressed", "XX()", v47, 200);
      if ((result & 0x80000000) == 0)
      {
        result = fe_oneword_MosyntGetMosyntParamVal(a1, "mosynt_usepkupos", "no", __s1, 10);
        if ((result & 0x80000000) == 0)
        {
          v7 = cstdlib_strcmp(__s1, "yes");
          result = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v45);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 176))(a2, a3, v45, 0, &v33, &v42 + 2);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(a1 + 56) + 104))(a2, a3, 2, v45, &v44);
              if ((result & 0x80000000) == 0)
              {
                v8 = v44;
                if (v44)
                {
                  v30 = 0;
                  v31 = 0;
                  v9 = "¡";
                  while (1)
                  {
                    result = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v43, &v42 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    v10 = v43;
                    if (v43 == 8)
                    {
                      v43 = 9;
                      result = (*(*(a1 + 56) + 160))(a2, a3, v44, 0, 1, &v43, &v42);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v10 = v43;
                    }

                    v11 = v10 > 0xA;
                    v12 = (1 << v10) & 0x610;
                    if (v11 || v12 == 0)
                    {
                      v17 = 0;
                    }

                    else
                    {
                      result = (*(*(a1 + 56) + 176))(a2, a3, v44, 3, &__s, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = mosynt_SubstAllSubstrOcc(__s, v9, "~", v53, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = mosynt_SubstAllSubstrOcc(v53, "[SVOX]", "", __s, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v14 = *(*(a1 + 56) + 160);
                      v15 = v44;
                      v16 = cstdlib_strlen(__s);
                      result = v14(a2, a3, v15, 3, (v16 + 1), __s, &v42);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(*(a1 + 56) + 168))(a2, a3, v44, 1, 1, &v35 + 2, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(*(a1 + 56) + 168))(a2, a3, v44, 2, 1, &v35, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(*(a1 + 56) + 176))(a2, a3, v44, 5, &v38, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(*(a1 + 56) + 176))(a2, a3, v44, 6, &v39, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      if (v43 == 9)
                      {
                        if (cstdlib_strcmp(v39, "Y"))
                        {
                          if (v43 == 9 && cstdlib_strcmp(v39, "X") && (HIWORD(v35) < v31 || v35 < v30))
                          {
                            HIWORD(v35) = v31;
                            LOWORD(v35) = v30;
                          }
                        }

                        else
                        {
                          v30 = v35;
                          v31 = HIWORD(v35);
                        }
                      }

                      result = (*(*(a1 + 56) + 176))(a2, a3, v44, 9, &v37, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      if (!cstdlib_strcmp(v37, "normal"))
                      {
                        cstdlib_strcpy(__dst, __src);
                        v18 = *(*(a1 + 56) + 160);
                        v19 = v44;
                        v20 = cstdlib_strlen(__dst);
                        result = v18(a2, a3, v19, 9, (v20 + 1), __dst, &v42);
                        if ((result & 0x80000000) != 0)
                        {
                          return result;
                        }
                      }

                      result = (*(*(a1 + 56) + 160))(a2, a3, v44, 1, 1, &v35 + 2, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(*(a1 + 56) + 160))(a2, a3, v44, 2, 1, &v35, &v42 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v41 = 0;
                      result = mosynt_GetTermSubstr(v39, &v41, 0x21u, &v32, v50, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = mosynt_GetTermSubstr(v39, &v41, 0x21u, &v32, v52, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v17 = cstdlib_strcmp(v39, "Y") == 0;
                      v34 = 0;
                      if (!cstdlib_strcmp(v52, ""))
                      {
                        v34 = 1;
                        if (cstdlib_strcmp(v38, "*"))
                        {
                          com_mosynt_GetBacktrans2POS(*(a1 + 64), *(a1 + 72), *(a1 + 80), v38, 0x1388u, v52);
                        }

                        if (!cstdlib_strcmp(v52, ""))
                        {
                          if (cstdlib_strstr(__s, "'") || cstdlib_strstr(__s, "'2"))
                          {
                            v21 = v48;
                          }

                          else
                          {
                            v21 = v47;
                          }

                          cstdlib_strcpy(v52, v21);
                        }
                      }

                      if (!cstdlib_strcmp(v50, ""))
                      {
                        cstdlib_strcpy(v50, "*");
                      }

                      if (v52[0] - 48 > 9)
                      {
                        cstdlib_strcpy(v51, v52);
                      }

                      else
                      {
                        result = mosynt_NumPOSListToPOSList(*(a1 + 48), *(a1 + 2200), v52, v51, 5000);
                        if ((result & 0x80000000) != 0)
                        {
                          return result;
                        }
                      }

                      v22 = v9;
                      if (v7)
                      {
                        v23 = *(*(a1 + 56) + 160);
                        v24 = v44;
                        v25 = cstdlib_strlen(v51);
                        result = v23(a2, a3, v24, 5, (v25 + 1), v51, &v42);
                        if ((result & 0x80000000) != 0)
                        {
                          return result;
                        }
                      }

                      v26 = *(*(a1 + 56) + 160);
                      v27 = v44;
                      v28 = cstdlib_strlen(v50);
                      result = v26(a2, a3, v27, 6, (v28 + 1), v50, &v42);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(*(a1 + 56) + 160))(a2, a3, v44, 17, 1, &v34, &v42 + 2);
                      v9 = v22;
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }
                    }

                    v29 = v44;
                    result = (*(*(a1 + 56) + 120))(a2, a3, v44, &v44);
                    if ((result & 0x80000000) == 0)
                    {
                      if (!v17 || (result = (*(*(a1 + 56) + 192))(a2, a3, v29), (result & 0x80000000) == 0))
                      {
                        v8 = v44;
                        if (v44)
                        {
                          continue;
                        }
                      }
                    }

                    return result;
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

uint64_t fe_oneword_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v364 = *MEMORY[0x277D85DE8];
  v344 = 0;
  __s = 0;
  v9 = 2310021130;
  v342 = 0;
  v339 = 0;
  __src = 0;
  __s2 = 0;
  v334 = 0;
  v331 = 0;
  v329 = 0;
  v328 = 1601400688;
  *&__c[1] = -1;
  v325 = 0;
  v326 = 0;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v343 = 0;
  v341 = 0;
  v340 = 0;
  v338 = 0;
  v335 = 0;
  v333 = 0;
  v332 = 0;
  v330 = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v324 = 0;
  *a5 = 1;
  v10 = (paramc_ParamGet(*(*a1 + 40), "clmvariants", &v324, 0) & 0x80000000) == 0 && LH_stricmp(v324, "no") != 0;
  *(a1 + 844) = v10;
  v12 = (paramc_ParamGetStr(*(*a1 + 40), "clcmlextramaintrans", &v324) & 0x80000000) == 0 && LH_stricmp(v324, "no") && *(a1 + 852) != 0;
  *(a1 + 848) = v12;
  __s1[0] = 0;
  *__dst = 0;
  if (((*(*(a1 + 128) + 96))(*(a1 + 112), *(a1 + 120), __dst) & 0x80000000) != 0 || !*__dst)
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "clm", __s1);
    v15 = 1;
    if ((Str & 0x80000000) == 0 && __s1[0])
    {
      v15 = cstdlib_strcmp(__s1[0], "yes") == 0;
    }

    v13 = (!v15 || *(a1 + 1204) != 1) && *(a1 + 940) != 1;
  }

  else
  {
    v13 = 1;
  }

  if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v324) & 0x80000000) == 0 && v324 && *v324)
  {
    fe_oneword_ResetCarryOverSentenceParams(a1);
  }

  v16 = *(a1 + 1201);
  *(a1 + 1201) = 1;
  if ((paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &v324, 0) & 0x80000000) == 0 && v324)
  {
    v17 = cstdlib_atoi(v324);
    if (v16 == v17)
    {
      *(a1 + 1201) = v16;
      v18 = *(a1 + 1200);
      if (v18 >= v17)
      {
        LOBYTE(v18) = v16;
      }
    }

    else
    {
      *(a1 + 1201) = v17;
      hlp_UnLoadDTData(a1);
      DTData = hlp_LoadDTData(a1);
      if ((DTData & 0x80000000) != 0)
      {
        return DTData;
      }

      v18 = *(a1 + 1200);
      if (v18 >= *(a1 + 1201))
      {
        LOBYTE(v18) = *(a1 + 1201);
      }
    }

    *(a1 + 1200) = v18;
  }

  v20 = (paramc_ParamGet(*(*a1 + 40), "norichtranscription", &v324, 0) & 0x80000000) == 0 && LH_stricmp(v324, "false") != 0;
  *(a1 + 840) = v20;
  v21 = paramc_ParamGet(*(*a1 + 40), "fecfg", &v324, 0);
  if (*(a1 + 840) && (v21 & 0x80000000) == 0 && LH_stricmp(v324, "mpthree") && LH_stricmp(v324, "mpthreeml") && LH_stricmp(v324, "vadvde"))
  {
    *(a1 + 840) = 0;
  }

  if (ssftmap_GetSize(*(a1 + 568)))
  {
    __s1[0] = 0;
    *__dst = 0;
    v346[0] = 0;
    v322 = 0;
    v323 = 0;
    v321 = 0;
    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreescorepruning", __s1) & 0x80000000) != 0)
    {
      __s1[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreehistogrampruning", __dst) & 0x80000000) != 0)
    {
      *__dst = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreevariantpruning", v346) & 0x80000000) != 0)
    {
      v346[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "numberoutputtranscriptions", &v323) & 0x80000000) != 0)
    {
      v323 = 0;
    }

    if ((ssftmap_IteratorOpen(*(a1 + 568), 0, 1, &v321) & 0x80000000) == 0)
    {
      v319 = 0;
      *v320 = 0;
      while ((ssftmap_IteratorNext(v321, v320, &v319) & 0x80000000) == 0)
      {
        if (!__s1[0] || (LODWORD(v322) = 1, HIDWORD(v322) = cstdlib_atoi(__s1[0]), v22 = LexDT_SetParamList(*(v319 + 16), &v322, 1u), v23 = LH_ERROR_to_VERROR(v22), (v23 & 0x80000000) == 0))
        {
          if (!*__dst || (LODWORD(v322) = 2, HIDWORD(v322) = cstdlib_atoi(*__dst), v28 = LexDT_SetParamList(*(v319 + 16), &v322, 1u), v23 = LH_ERROR_to_VERROR(v28), (v23 & 0x80000000) == 0))
          {
            if (!v346[0] || (LODWORD(v322) = 5, HIDWORD(v322) = cstdlib_atoi(v346[0]), v29 = LexDT_SetParamList(*(v319 + 16), &v322, 1u), v23 = LH_ERROR_to_VERROR(v29), (v23 & 0x80000000) == 0))
            {
              if (!v323)
              {
                continue;
              }

              LODWORD(v322) = 0;
              HIDWORD(v322) = cstdlib_atoi(v323);
              v30 = LexDT_SetParamList(*(v319 + 16), &v322, 1u);
              v23 = LH_ERROR_to_VERROR(v30);
              if ((v23 & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }

        v11 = v23;
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v24, v25, v26, v27, v303);
        return v11;
      }

      ssftmap_IteratorClose(v321);
    }
  }

  if (*(a1 + 2004))
  {
    DTData = oneword_posparser_Process(a1, a3, a4);
    if ((DTData & 0x80000000) != 0)
    {
      return DTData;
    }
  }

  v31 = a1 + 56;
  v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v343 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (((*(*v31 + 184))(a3, a4, HIWORD(v343), 0, &v331) & 0x80000000) != 0)
  {
    return v11;
  }

  if (v331 != 1)
  {
    return v11;
  }

  v11 = (*(*v31 + 176))(a3, a4, HIWORD(v343), 0, &__s, &v341);
  if ((v11 & 0x80000000) != 0 || v341 < 2u)
  {
    return v11;
  }

  v32 = *(*a1 + 8);
  v33 = cstdlib_strlen(__s);
  v34 = heap_Alloc(v32, (v33 + 1));
  v344 = v34;
  if (!v34)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v35, v36, v37, v38, v303);
    return 2310021130;
  }

  cstdlib_strcpy(v34, __s);
  *__s1 = 0u;
  v349 = 0u;
  v350 = 0u;
  v351 = 0u;
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v355 = 0u;
  v356 = 0u;
  v357 = 0u;
  v358 = 0u;
  v359 = 0u;
  v360 = 0u;
  v361 = 0u;
  v362 = 0u;
  v363 = 0u;
  HIWORD(v339) = 128;
  v39 = (*(*v31 + 176))(a3, a4, HIWORD(v343), 1, &v335, &v334 + 2);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_96;
  }

  HIWORD(v339) = 0;
  if (HIWORD(v334))
  {
    v40 = 0;
    do
    {
      v41 = v335 + 32 * v40;
      if (*v41 == 34)
      {
        v42 = cstdlib_strstr(*(v41 + 24), "\x14");
        if (v42)
        {
          *v42 = 0;
        }
      }

      v40 = HIWORD(v339) + 1;
      HIWORD(v339) = v40;
      v43 = HIWORD(v334);
    }

    while (HIWORD(v334) > v40);
    v44 = v335;
    v45 = *(v335 + 12);
    *(a1 + 224) = 0;
    v46 = (a1 + 224);
    if (v334 < v43)
    {
      v47 = (v44 + 32 * v334 + 12);
      v48 = v43 - v334;
      v49 = v334 + 1;
      do
      {
        v50 = *v47;
        v47 += 8;
        if (v50 != v45)
        {
          break;
        }

        LOWORD(v334) = v49++;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    v45 = *(v335 + 12);
    *(a1 + 224) = 0;
    v46 = (a1 + 224);
  }

  v39 = (*(*(a1 + 104) + 112))(*(a1 + 88), *(a1 + 96), &v332, 0);
  if ((v39 & 0x80000000) != 0 || (*(a1 + 932) = 0, v39 = (*(*(a1 + 56) + 104))(a3, a4, 3, HIWORD(v343), &v343), (v39 & 0x80000000) != 0) || (*&__c[1] = -1, v39 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "normal", &__c[3], &__c[1], __c), (v39 & 0x80000000) != 0))
  {
LABEL_96:
    v58 = 0;
    v59 = 0;
    v9 = v39;
    goto LABEL_97;
  }

  cstdlib_strcpy(__dst, "normal");
  if (*&__c[1])
  {
    v51 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v51)
    {
      *v51 = 0;
    }

    cstdlib_strcpy(__dst, **&__c[3]);
  }

  if (*(a1 + 560) == 1)
  {
    v52 = heap_Calloc(*(*a1 + 8), 1, 352);
    if (!v52)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v53, v54, v55, v56, v303);
      v58 = 0;
      v59 = 0;
      goto LABEL_97;
    }

    v309 = v46;
    v311 = v45;
    v57 = *(v335 + 12);
    *(v52 + 12) = v57;
    *v52 = 0x4000;
    *(v52 + 44) = v57;
    *(v52 + 32) = 36;
    *(v52 + 56) = "normal";
    v315 = 10;
    v318 = v52;
    v312 = 2;
  }

  else
  {
    v309 = v46;
    v311 = v45;
    v315 = 0;
    v318 = 0;
    v312 = 0;
  }

  v60 = 78;
  v61 = 1;
  while (v343)
  {
    v62 = (*(*v31 + 168))(a3, a4);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v63 = v333;
    if ((v333 - 5) <= 2)
    {
      v62 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 176))(a3, a4, v343, 4, &__s2, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      if (!cstdlib_strcmp(__s2, "phon"))
      {
        v62 = (*(*v31 + 176))(a3, a4, v343, 3, &__src, &v341);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      v64 = v333;
      if (v333 == 5)
      {
        v331 = 0;
        v326 = 0;
        if (((*(*v31 + 184))(a3, a4, v343, 6, &v331) & 0x80000000) == 0 && v331 == 1)
        {
          v62 = (*(*v31 + 176))(a3, a4, v343, 6, &v326, &v341);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }

        v64 = v333;
      }

      if (v64 == 6)
      {
        v331 = 0;
        v325 = 0;
        if (((*(*v31 + 184))(a3, a4, v343, 7, &v331) & 0x80000000) == 0 && v331 == 1)
        {
          v62 = (*(*v31 + 176))(a3, a4, v343, 7, &v325, &v341);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }
      }

      v65 = *v31;
      if (v61)
      {
        v62 = (*(v65 + 72))(a3, a4, 2, HIWORD(v343), &v342);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v62 = (*(v65 + 80))(a3, a4, v342, &v342);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 0, 1, &v333, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 1, 1, &v339, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 2, 1, &v338, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v66 = *(*v31 + 160);
      v67 = v342;
      v68 = cstdlib_strlen(__s2);
      v62 = v66(a3, a4, v67, 4, (v68 + 1), __s2, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      if (!cstdlib_strcmp(__s2, "phon"))
      {
        if (__src)
        {
          v69 = *(*v31 + 160);
          v70 = v342;
          v71 = cstdlib_strlen(__src);
          v62 = v69(a3, a4, v70, 3, (v71 + 1), __src, &v340 + 2);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }
      }

      v63 = v333;
      if (v333 == 5 && v326)
      {
        v72 = *(*v31 + 160);
        v73 = v342;
        v74 = cstdlib_strlen(v326);
        v62 = v72(a3, a4, v73, 9, (v74 + 1), v326, &v340 + 2);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v63 = v333;
      }

      v61 = 0;
      if (v63 == 6 && v325)
      {
        v75 = *(*v31 + 160);
        v76 = v342;
        v77 = cstdlib_strlen(v325);
        v62 = v75(a3, a4, v76, 19, (v77 + 1), v325, &v340 + 2);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v61 = 0;
        v63 = v333;
      }
    }

    if (*(a1 + 560) != 1 || v63 != 5 || __s2 == 0)
    {
      goto LABEL_167;
    }

    if (!cstdlib_strcmp(__s2, "phon") || !cstdlib_strcmp(__s2, "prompt") || !cstdlib_strcmp(__s2, "internal-nuance-system-norm"))
    {
LABEL_164:
      v83 = 78;
LABEL_165:
      v85 = v315;
      goto LABEL_166;
    }

    v80 = *(a1 + 1216);
    if (!v80)
    {
      v59 = 0;
      v58 = 0;
      v9 = 2310021126;
      goto LABEL_282;
    }

    v81 = cstdlib_strstr(v80, __s2);
    if (!cstdlib_strcmp(__s2, "latin"))
    {
      goto LABEL_180;
    }

    if (!cstdlib_strcmp(__s2, __dst))
    {
      goto LABEL_164;
    }

    if (!v81 || v81[cstdlib_strlen(__s2)] != 124)
    {
LABEL_180:
      v83 = 76;
      goto LABEL_165;
    }

    v82 = cstdlib_strlen(__s2);
    if (!v82)
    {
      goto LABEL_164;
    }

    LODWORD(v83) = 78;
    v84 = __s2;
    v85 = v315;
    do
    {
      v86 = *v84++;
      if (v86 == 95)
      {
        v83 = 76;
      }

      else
      {
        v83 = v83;
      }

      --v82;
    }

    while (v82);
LABEL_166:
    if (v60 != v83)
    {
      v88 = v339;
      if (v339)
      {
        v89 = v318;
        if (v312 >= v85)
        {
          v90 = v85;
          v91 = heap_Realloc(*(*a1 + 8), v318, 32 * v85 + 352);
          if (!v91)
          {
LABEL_497:
            v243 = *a1;
LABEL_498:
            log_OutPublic(*(v243 + 32), "FE_ONEWORD", 34000, 0, v92, v93, v94, v95, v303);
            goto LABEL_499;
          }

          v315 = v90 + 10;
          v88 = v339;
          v89 = v91;
        }

        v318 = v89;
        v96 = v89 + 32 * v312;
        *v96 = 36;
        *(v96 + 12) = *(v335 + 12) + v88;
        v97 = "normal";
        if (v83 == 76)
        {
          v97 = "latin";
        }

        *(v96 + 24) = v97;
        ++v312;
      }

      else if (v83 == 76)
      {
        *(v318 + 56) = "latin";
        v83 = 76;
      }

      else
      {
        *(v318 + 56) = "normal";
      }

      goto LABEL_168;
    }

LABEL_167:
    v83 = v60;
LABEL_168:
    v87 = v343;
    v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
    if ((v62 & 0x80000000) == 0)
    {
      v62 = (*(*v31 + 192))(a3, a4, v87);
      v60 = v83;
      if ((v62 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_280;
  }

  if (*(a1 + 560) == 1)
  {
    v98 = *(a1 + 64);
    v99 = *(a1 + 72);
    v100 = v312;
    v101 = a3;
    v102 = a4;
    v103 = v318;
  }

  else
  {
    v103 = v335;
    v100 = HIWORD(v334);
    v98 = *(a1 + 64);
    v99 = *(a1 + 72);
    v101 = a3;
    v102 = a4;
  }

  v62 = (*(*(a1 + 80) + 56))(v98, v99, v101, v102, v103, v100);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v62 = (*(*v31 + 104))(a3, a4, 3, HIWORD(v343), &v343);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v342);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v62 = (*(*v31 + 168))(a3, a4, v342, 1, 1, &v338 + 2, &v341);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  if (HIWORD(v338))
  {
    v62 = (*(*v31 + 88))(a3, a4, v342, &v342);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 0, 1, &v333, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 160))(a3, a4, v342, 0, 1, &v333, &v340 + 2);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 160))(a3, a4, v342, 1, 1, &v339, &v340 + 2);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 160))(a3, a4, v342, 2, 1, &v338, &v340 + 2);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }
  }

  LOWORD(v339) = 0;
  while (1)
  {
    v104 = *v31;
    if (!v343)
    {
      break;
    }

    v62 = (*(v104 + 168))(a3, a4);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v105 = v342;
    v106 = v339;
    v107 = HIWORD(v338);
    if (v339 > HIWORD(v338) && v342 != 0)
    {
      while (1)
      {
        v109 = v105;
        v62 = (*(*v31 + 120))(a3, a4, v105, &v342);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        if (v342)
        {
          v62 = (*(*v31 + 168))(a3, a4);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          v107 = HIWORD(v338);
        }

        else
        {
          v110 = cstdlib_strlen(__s);
          v107 = v110;
          HIWORD(v338) = v110;
        }

        v106 = v339;
        v105 = v342;
        if (v339 <= v107 || v342 == 0)
        {
          v105 = v109;
          break;
        }
      }
    }

    if (v106 != v107)
    {
      v342 = v105;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v342, 0, 1, &v332 + 4, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    if (HIDWORD(v332) == 5 && v339 == HIWORD(v338))
    {
      v62 = (*(*v31 + 88))(a3, a4, v342, &v342);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 0, 1, &v333, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 1, 1, &v339, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 2, 1, &v338, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 120))(a3, a4, v342, &v342);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      v62 = (*(*v31 + 80))(a3, a4, v342, &v342);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 0, 1, &v333, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 1, 1, &v339, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      v62 = (*(*v31 + 160))(a3, a4, v342, 2, 1, &v338, &v340 + 2);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }
    }

    v112 = v343;
    v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
    if ((v62 & 0x80000000) == 0)
    {
      v62 = (*(*v31 + 192))(a3, a4, v112);
      if ((v62 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_280;
  }

  v62 = (*(v104 + 104))(a3, a4, 2, HIWORD(v343), &v343);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v113 = v343;
  *(a1 + 280) = v343;
  LOWORD(v340) = v113;
  if (v113)
  {
    LOWORD(v114) = 0;
    while (1)
    {
      v62 = (*(*v31 + 168))(a3, a4, v113, 0, 1, &v332 + 4, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        break;
      }

      v115 = *v31;
      v116 = v340;
      if (HIDWORD(v332) != 5)
      {
        goto LABEL_261;
      }

      v62 = (*(v115 + 168))(a3, a4, v340, 1, 1, &v339, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        break;
      }

      v114 = v339 <= v114 ? v114 : v339;
      v62 = (*(*v31 + 168))(a3, a4, v340, 2, 1, &v338, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        break;
      }

      v115 = *v31;
      v116 = v340;
      if (v114 < v338)
      {
        v62 = (*(v115 + 176))(a3, a4, v340, 4, &__s2, &v341);
        if ((v62 & 0x80000000) != 0)
        {
          break;
        }

        if (cstdlib_strcmp(__s2, "phon"))
        {
          v331 = 0;
          v118 = (*(*(a1 + 56) + 184))(a3, a4, v340, 9, &v331) >= 0 && v331 == 1;
          v62 = oneword_G2PLookup(a1, &v344, v114, &v338, __s2, a3, a4, &v343, v335, &v334, &v334 + 1, v311, v118);
          if (v338 > v114)
          {
            LOWORD(v114) = v338;
          }

          if ((v62 & 0x80000000) != 0)
          {
            break;
          }
        }

        else
        {
          v62 = (*(*v31 + 176))(a3, a4, v340, 3, &__src, &v341);
          if ((v62 & 0x80000000) != 0)
          {
            break;
          }

          v62 = oneword_ConvertPhon(a1, __s, __src, v339, v338, a3, a4, &v343, v335, &v334, &v334 + 1, v311);
          if ((v62 & 0x80000000) != 0)
          {
            break;
          }
        }

        LOWORD(v340) = v343;
      }

      else
      {
LABEL_261:
        v62 = (*(v115 + 120))(a3, a4, v116, &v340);
        if ((v62 & 0x80000000) != 0)
        {
          break;
        }
      }

      if (v343)
      {
        LOWORD(v113) = v340;
        if (v340)
        {
          continue;
        }
      }

      goto LABEL_268;
    }

LABEL_280:
    v59 = 0;
    v58 = 0;
LABEL_281:
    v9 = v62;
    goto LABEL_282;
  }

LABEL_268:
  v119 = *v309;
  if (*v309)
  {
    v120 = HIWORD(v334);
    if (v334 < HIWORD(v334))
    {
      v121 = (v335 + 32 * v334 + 12);
      v122 = HIWORD(v334) - v334;
      do
      {
        *v121 += v119;
        v121 += 8;
        --v122;
      }

      while (v122);
      LOWORD(v334) = v120;
    }

    LOWORD(v346[0]) = 0;
    LOWORD(v323) = 0;
    if (!*(a1 + 280))
    {
      v124 = 0;
      goto LABEL_285;
    }

LABEL_274:
    v123 = (*(*v31 + 168))(a3, a4);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    while (1)
    {
      v124 = LOWORD(v346[0]);
LABEL_285:
      if (v124 > cstdlib_strlen(__s) || !*(a1 + 280))
      {
        break;
      }

      v123 = (*(*v31 + 168))(a3, a4);
      if ((v123 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      if ((HIDWORD(v332) & 0xFFFFFFFC) == 4 || (HIDWORD(v332) - 9) <= 1)
      {
        v123 = (*(*v31 + 168))(a3, a4, *(a1 + 280), 2, 1, &v323, &v341);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v127 = *v309;
        LOWORD(v346[0]) += *v309;
        LOWORD(v323) = v323 + v127;
        v123 = (*(*v31 + 160))(a3, a4, *(a1 + 280), 1, 1, v346, &v340 + 2);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v123 = (*(*v31 + 160))(a3, a4, *(a1 + 280), 2, 1, &v323, &v340 + 2);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }
      }

      v123 = (*(*v31 + 120))(a3, a4, *(a1 + 280), a1 + 280);
      if ((v123 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      if (*(a1 + 280))
      {
        v123 = (*(*v31 + 168))(a3, a4);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v128 = LOWORD(v346[0]);
        if (v128 > cstdlib_strlen(__s))
        {
          while (*(a1 + 280))
          {
            v123 = (*(*v31 + 168))(a3, a4);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (HIDWORD(v332) != 17)
            {
              break;
            }

            v123 = (*(*v31 + 120))(a3, a4, *(a1 + 280), a1 + 280);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }
          }

          goto LABEL_274;
        }
      }
    }

    v119 = *v309;
  }

  LODWORD(v332) = v332 + v119;
  v62 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96));
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v129 = cstdlib_strlen(v344);
  *(v335 + 16) = v129;
  v130 = *(*v31 + 160);
  v131 = HIWORD(v343);
  v132 = cstdlib_strlen(v344);
  v62 = v130(a3, a4, v131, 0, (v132 + 1), v344, &v340 + 2);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v343);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v133 = v343;
  if (v343)
  {
    v134 = 0;
    do
    {
      v62 = (*(*v31 + 168))(a3, a4, v133, 0, 1, &v332 + 4, &v341);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      if (HIDWORD(v332) > 3)
      {
        v135 = v343;
      }

      else
      {
        v62 = (*(*v31 + 192))(a3, a4, v343);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        LOWORD(v343) = v134;
        v135 = v134;
      }

      v136 = *v31;
      if (v135)
      {
        v62 = (*(v136 + 120))(a3, a4, v135, &v343);
        v134 = v135;
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v62 = (*(v136 + 104))(a3, a4, 2, HIWORD(v343), &v343);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }
      }

      v133 = v343;
    }

    while (v343);
  }

  LOWORD(v334) = 0;
  v137 = cstdlib_strlen(v344);
  v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v343);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_280;
  }

  v308 = 0;
  v310 = 0;
  v316 = 0;
  v313 = v137;
  while (2)
  {
    if (!v343)
    {
      if (HIDWORD(v308) && v308 && v310)
      {
        v195 = v310;
        v196 = __s1;
        do
        {
          v197 = *v196;
          v196 = (v196 + 2);
          v62 = (*(*v31 + 192))(a3, a4, v197);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }

        while (--v195);
      }

      if (*(a1 + 1200))
      {
        v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v343);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        while (v343)
        {
          v62 = (*(*v31 + 168))(a3, a4);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          if (HIDWORD(v332) == 9)
          {
            v331 = 0;
            if (((*(*v31 + 184))(a3, a4, v343, 11, &v331) & 0x80000000) != 0)
            {
              v331 = 0;
            }

            else if (v331)
            {
              goto LABEL_495;
            }

            v322 = 0;
            v323 = 0;
            LOWORD(v319) = 0;
            v321 = 0;
            v123 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v123 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v198 = v338;
            v199 = v339;
            v200 = v338 - v339;
            v201 = *(a1 + 160);
            if (v200 >= *(a1 + 192))
            {
              v202 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (v200 + 1));
              if (!v202)
              {
                goto LABEL_497;
              }

              v201 = v202;
              *(a1 + 160) = v202;
              v198 = v338;
              v199 = v339;
              *(a1 + 192) = v338 - v339 + 1;
            }

            cstdlib_strncpy(v201, &v344[v199], v198 - v199);
            *(*(a1 + 160) - v339 + v338) = 0;
            v203 = *(*(a1 + 80) + 112);
            v204 = __s2;
            v205 = *(a1 + 160);
            v206 = cstdlib_strlen(v205);
            v203(*(a1 + 64), *(a1 + 72), v204, v205, (v206 + 1));
            v123 = (*(*(a1 + 56) + 176))(a3, a4, v343, 3, &__src, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v123 = (*(*v31 + 176))(a3, a4, v343, 9, &v321, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            cstdlib_strcpy(*(a1 + 168), "");
            if (*(a1 + 1200))
            {
              v317 = 0;
              v314 = 3;
              do
              {
                LH_itoa(++v317, v320, 0xAu);
                cstdlib_strcpy(v346, "multi_trans_");
                cstdlib_strcat(v346, v320);
                v207 = *(*(a1 + 104) + 120);
                v208 = __src;
                v209 = cstdlib_strlen(__src);
                v123 = v207(*(a1 + 88), *(a1 + 96), 0, v208, v209);
                if ((v123 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v123 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v323, &v319);
                if ((v123 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v323[v319] = 0;
                HIWORD(v339) = 0;
                if (cstdlib_strlen(v323))
                {
                  do
                  {
                    v213 = v323;
                    v214 = HIWORD(v339);
                    if (v323[HIWORD(v339)] == 126)
                    {
                      v215 = &v213[cstdlib_strlen("¡") - 1 + v214];
                      v216 = v323;
                      v217 = HIWORD(v339);
                      v218 = cstdlib_strlen(&v323[HIWORD(v339)]);
                      cstdlib_memmove(v215, &v216[v217], v218 + 1);
                      v219 = v323;
                      v214 = HIWORD(v339);
                      v220 = cstdlib_strlen("¡");
                      cstdlib_memcpy(&v219[v214], "¡", v220);
                      LOWORD(v214) = HIWORD(v339);
                      v213 = v323;
                    }

                    HIWORD(v339) = v214 + 1;
                  }

                  while (cstdlib_strlen(v213) > (v214 + 1));
                }

                if (*v321)
                {
                  v123 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v322, &v319);
                  if ((v123 & 0x80000000) != 0)
                  {
                    goto LABEL_277;
                  }

                  *(v322 + v319) = 0;
                  HIWORD(v339) = 0;
                  if (v319)
                  {
                    v221 = 0;
                    do
                    {
                      *(v322 + v221) = *v321;
                      v221 = HIWORD(v339) + 1;
                      HIWORD(v339) = v221;
                    }

                    while (v319 > v221);
                  }
                }

                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v210, v211, v212, v346);
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v222, v223, v224, v346);
                if (*v321)
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v225, v226, v227, v346);
                }

                v228 = *(*(a1 + 104) + 120);
                v229 = *(a1 + 160);
                v230 = cstdlib_strlen(v229);
                v123 = v228(*(a1 + 88), *(a1 + 96), 1, v229, v230);
                if ((v123 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v123 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v346);
                if ((v123 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v123 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v323, &v319);
                if ((v123 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                v323[v319] = 0;
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v231, v232, v233, v346);
                if (cstdlib_strlen(v323))
                {
                  v234 = 0;
                  v235 = 0;
                  do
                  {
                    v236 = &v323[v234];
                    if (v323[v234] == 126)
                    {
                      v237 = cstdlib_strlen(v236 + 1);
                      cstdlib_memmove(v236, v236 + 1, v237 + 1);
                    }

                    else
                    {
                      v238 = cstdlib_strlen("¡");
                      if (!cstdlib_strncmp(v236, "¡", v238))
                      {
                        v239 = &v323[v234];
                        v240 = cstdlib_strlen(&v323[v234 + 2]);
                        cstdlib_memmove(v239 + 1, v239 + 2, v240 + 1);
                        v323[v234] = 126;
                      }
                    }

                    v234 = ++v235;
                  }

                  while (cstdlib_strlen(v323) > v235);
                }

                if (cstdlib_strcmp(__src, v323))
                {
                  v314 += cstdlib_strlen(v323) + 1;
                  if (*(a1 + 200) < v314)
                  {
                    v241 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v314);
                    if (!v241)
                    {
                      goto LABEL_497;
                    }

                    *(a1 + 168) = v241;
                    *(a1 + 200) = v314;
                  }

                  v242 = dynamic_strcat((a1 + 168), v323, (a1 + 200), *(*a1 + 8));
                  v243 = *a1;
                  if (!v242)
                  {
                    goto LABEL_498;
                  }

                  if (!dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(v243 + 8)))
                  {
                    goto LABEL_497;
                  }
                }
              }

              while (v317 < *(a1 + 1200));
            }

            v244 = *(a1 + 168);
            if (*v244)
            {
              v244[cstdlib_strlen(*(a1 + 168)) - 1] = 0;
              v245 = *(*v31 + 160);
              v246 = v343;
              v247 = cstdlib_strlen(*(a1 + 168));
              v123 = v245(a3, a4, v246, 11, (v247 + 1), *(a1 + 168), &v340 + 2);
              if ((v123 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }
            }
          }

LABEL_495:
          v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }
      }

      if (*(a1 + 1204) && *(a1 + 848) && *(a1 + 1201) >= 2u)
      {
        v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v343);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v248 = 0;
        v249 = 0;
        v250 = 0;
        v251 = 0;
        while (v343)
        {
          v62 = (*(*v31 + 168))(a3, a4);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          if (HIDWORD(v332) == 9 || HIDWORD(v332) == 4)
          {
            v346[0] = 0;
            v123 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v123 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v123 = (*(*v31 + 176))(a3, a4, v343, 9, v346, &v341);
            if ((v123 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v339 != v249)
            {
              if (!v251)
              {
                if (v249 | v250)
                {
                  v123 = hlp_GenXtraMainVarMW(a1, a3, a4, v248, v249, v250, v344);
                  if ((v123 & 0x80000000) != 0)
                  {
                    goto LABEL_277;
                  }
                }
              }

              v251 = 0;
            }

            if (!LH_stricmp(v346[0], *(a1 + 1208)) || !cstdlib_strcmp(v346[0], "") || !cstdlib_strcmp(v346[0], "normal"))
            {
              v251 = 1;
            }

            v249 = v339;
            v250 = v338;
          }

          v248 = v343;
          v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }
        }

        if (!v251)
        {
          if (v249 | v250)
          {
            v62 = hlp_GenXtraMainVarMW(a1, a3, a4, v248, v249, v250, v344);
            if ((v62 & 0x80000000) != 0)
            {
              goto LABEL_280;
            }
          }
        }
      }

      v253 = *(a1 + 2184);
      if (v253)
      {
        if (cstdlib_strlen(v253) == 3)
        {
          v254 = *(a1 + 2184);
          if (*v254 == 101 && v254[1] == 110)
          {
            v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v343);
            if ((v62 & 0x80000000) != 0)
            {
              goto LABEL_280;
            }

            while (v343)
            {
              v62 = (*(*v31 + 168))(a3, a4);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_280;
              }

              if (HIDWORD(v332) <= 0xA && ((1 << SBYTE4(v332)) & 0x610) != 0)
              {
                v346[0] = 0;
                v123 = (*(*v31 + 176))(a3, a4, v343, 9, v346, &v341);
                if ((v123 & 0x80000000) != 0)
                {
                  goto LABEL_277;
                }

                if (!cstdlib_strcmp(v346[0], "latin"))
                {
                  v256 = *(*(a1 + 56) + 160);
                  v257 = v343;
                  v258 = cstdlib_strlen(*(a1 + 2184));
                  v123 = v256(a3, a4, v257, 9, (v258 + 1), *(a1 + 2184), &v340 + 2);
                  if ((v123 & 0x80000000) != 0)
                  {
                    goto LABEL_277;
                  }
                }
              }

              v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_280;
              }
            }
          }
        }
      }

      if (!v13)
      {
        v62 = (*(*v31 + 104))(a3, a4, 2, HIWORD(v343), &v343);
        if ((v62 & 0x80000000) == 0)
        {
          v59 = 0;
          v58 = 0;
          while (1)
          {
            if (!v343)
            {
              goto LABEL_548;
            }

            v62 = (*(*v31 + 168))(a3, a4);
            if ((v62 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }

            if (HIDWORD(v332) <= 0xA && ((1 << SBYTE4(v332)) & 0x610) != 0)
            {
              v346[0] = 0;
              v62 = (*(*v31 + 176))(a3, a4, v343, 3, &__src, &v341);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              v62 = (*(*v31 + 176))(a3, a4, v343, 9, v346, &v341);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              v331 = 0;
              v62 = (*(*v31 + 184))(a3, a4, v343, 12, &v331);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              if (v331 != 1)
              {
                if (v346[0] && (!cstdlib_strlen(v346[0]) || cstdlib_strlen(v346[0]) == 3))
                {
                  v260 = *(*v31 + 160);
                  v261 = v343;
                  v262 = cstdlib_strlen(v346[0]) + 1;
                  v263 = v346[0];
                }

                else
                {
                  v260 = *(*(a1 + 56) + 160);
                  v261 = v343;
                  v262 = cstdlib_strlen(*(a1 + 1208)) + 1;
                  v263 = *(a1 + 1208);
                }

                v62 = v260(a3, a4, v261, 12, v262, v263, &v340 + 2);
                if ((v62 & 0x80000000) != 0)
                {
                  goto LABEL_281;
                }
              }

              if (LH_stricmp(v346[0], *(a1 + 1208)))
              {
                if (cstdlib_strcmp(v346[0], ""))
                {
                  if (cstdlib_strcmp(v346[0], "normal"))
                  {
                    if (cstdlib_strcmp(v346[0], "latin"))
                    {
                      v264 = hlp_checkDoClmForForeignLanguage(a1, v346[0]);
                      if (v264 || *(a1 + 844))
                      {
                        v265 = cstdlib_strlen(__src);
                        v266 = 0;
                        LOWORD(v322) = v343;
                        v267 = v346[0];
                        do
                        {
                          v268 = v267[v266];
                          if (v268 > 0x60)
                          {
                            LOBYTE(v268) = v268 - 32;
                          }

                          *(&v323 + v266++) = v268;
                        }

                        while (v266 != 3);
                        v269 = (4 * v265 + 4);
                        BYTE3(v323) = 0;
                        v270 = heap_Realloc(*(*a1 + 8), v59, v269);
                        v59 = v270;
                        if (!v270)
                        {
                          goto LABEL_622;
                        }

                        cstdlib_strcpy(v270, "");
                        if (!v264 && *(a1 + 844))
                        {
                          LOWORD(v321) = 1;
                          v278 = (*(*v31 + 80))(a3, a4, v343, &v322);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          HIDWORD(v332) = 16;
                          v278 = (*(*v31 + 160))(a3, a4, v322, 0, 1, &v332 + 4, &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 160))(a3, a4, v322, 1, 1, &v339, &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 160))(a3, a4, v322, 2, 1, &v338, &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 160))(a3, a4, v322, 5, 1, "*", &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 160))(a3, a4, v322, 6, 1, "*", &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v278 = (*(*v31 + 160))(a3, a4, v322, 7, 1, &v321, &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          v62 = (*(*v31 + 160))(a3, a4, v322, 12, 4, "map", &v340 + 2);
                          if ((v62 & 0x80000000) != 0)
                          {
                            goto LABEL_281;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", v275, v276, v277, &v323);
                        if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v323, __src, v59, 0, 0, v269) & 0x80000000) != 0 && *(a1 + 940))
                        {
                          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", v279, v280, v281, __src);
                        }

                        else
                        {
                          v278 = (*(*v31 + 160))(a3, a4, v322, 9, 1, "", &v340 + 2);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", v282, v283, v284, &v323);
                        v285 = *(*(a1 + 56) + 160);
                        v286 = v322;
                        v287 = cstdlib_strlen(v59);
                        v278 = v285(a3, a4, v286, 3, (v287 + 1), v59, &v340 + 2);
                        if ((v278 & 0x80000000) != 0)
                        {
LABEL_621:
                          v9 = v278;
                          goto LABEL_623;
                        }

                        v331 = 0;
                        if (((*(*v31 + 184))(a3, a4, v343, 11, &v331) & 0x80000000) == 0 && v331 == 1)
                        {
                          v278 = (*(*v31 + 176))(a3, a4, v343, 11, &__src, &v341);
                          if ((v278 & 0x80000000) != 0)
                          {
                            goto LABEL_621;
                          }

                          if (cstdlib_strcmp(__src, ""))
                          {
                            v288 = *(*a1 + 8);
                            v289 = cstdlib_strlen(__src);
                            v290 = heap_Realloc(v288, v58, (4 * v289 + 4));
                            v58 = v290;
                            if (!v290)
                            {
                              goto LABEL_622;
                            }

                            cstdlib_strcpy(v290, "");
                            v291 = __src;
                            if (__src)
                            {
                              while (1)
                              {
                                v292 = cstdlib_strchr(v291, 18);
                                v293 = v292;
                                if (v292)
                                {
                                  *v292 = 0;
                                }

                                if (*v58)
                                {
                                  cstdlib_strcat(v58, "\x12");
                                }

                                cstdlib_strcpy(v59, "_");
                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", v294, v295, v296, &v323);
                                if (4 * cstdlib_strlen(__src) + 4 > v269)
                                {
                                  v269 = 4 * cstdlib_strlen(__src) + 4;
                                  v59 = heap_Realloc(*(*a1 + 8), v59, v269);
                                  if (!v59)
                                  {
                                    break;
                                  }
                                }

                                if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v323, __src, v59, 0, 0, v269) & 0x80000000) != 0)
                                {
                                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", v297, v298, v299, __src);
                                }

                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", v297, v298, v299, &v323);
                                cstdlib_strcat(v58, v59);
                                if (!v293)
                                {
                                  __src = 0;
                                  goto LABEL_618;
                                }

                                *v293 = 18;
                                v291 = v293 + 1;
                                __src = v291;
                              }

LABEL_622:
                              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v271, v272, v273, v274, v303);
LABEL_623:
                              v62 = v9;
                              goto LABEL_281;
                            }

LABEL_618:
                            v300 = *(*v31 + 160);
                            v301 = v322;
                            v302 = cstdlib_strlen(v58);
                            v62 = v300(a3, a4, v301, 11, (v302 + 1), v58, &v340 + 2);
                            if ((v62 & 0x80000000) != 0)
                            {
                              goto LABEL_281;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
            if ((v62 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }
          }
        }

        goto LABEL_280;
      }

      v59 = 0;
      v58 = 0;
LABEL_548:
      v62 = fe_oneword_SplitMW(a1, a3, a4);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_281;
      }

      if (*(a1 + 2192))
      {
        v62 = fe_oneword_MosyntCleanup(a1, a3, a4);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_281;
        }
      }

      DTData = fe_oneword_TreatNLUMarkup(a1, a3, a4);
      if ((DTData & 0x80000000) == 0)
      {
        v9 = fe_oneword_ProcessPinyinMarkup(a1, a3, a4);
        v11 = v9;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_282;
        }

        return v11;
      }

      return DTData;
    }

    v62 = (*(*v31 + 168))(a3, a4);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 1, 1, &v339, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v62 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    v138 = HIDWORD(v332);
    switch(HIDWORD(v332))
    {
      case 4:
LABEL_329:
        v346[0] = 0;
        v331 = 0;
        if (((*(*v31 + 184))(a3, a4, v343, 11, &v331) & 0x80000000) == 0 && v331 == 1)
        {
          v62 = (*(*v31 + 176))(a3, a4, v343, 11, v346, &v341);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          v139 = cstdlib_strstr(v346[0], "\x12;_");
          if (v139)
          {
            *v139 = 0;
          }

          v140 = cstdlib_strstr(v346[0], ";_");
          if (v140)
          {
            *v140 = 0;
          }
        }

LABEL_336:
        v141 = v339;
        if (v339 == v313)
        {
          HIDWORD(v308) = 1;
          v141 = v313;
          v142 = v310;
        }

        else
        {
          v142 = 0;
          if (HIDWORD(v308) && v308)
          {
            v308 = 0;
            v316 = 0;
            if (v310)
            {
              v150 = v310;
              v151 = __s1;
              while (1)
              {
                v152 = *v151;
                v151 = (v151 + 2);
                v62 = (*(*v31 + 192))(a3, a4, v152);
                if ((v62 & 0x80000000) != 0)
                {
                  goto LABEL_280;
                }

                if (!--v150)
                {
                  v142 = 0;
                  v308 = 0;
                  v316 = 0;
                  v141 = v339;
                  break;
                }
              }
            }
          }

          else
          {
            v308 = 0;
            v316 = 0;
          }
        }

        for (i = v334; HIWORD(v334) > i; LOWORD(v334) = i)
        {
          v144 = v335 + 32 * i;
          if ((*(v144 + 12) - v311) >= (v339 + 1))
          {
            break;
          }

          if (*v144 == 14)
          {
            v148 = *(v144 + 24);
            if (v148 != 64)
            {
              v329 = v148;
              *&__c[1] = -1;
              v62 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", &v328, &__c[3], &__c[1], __c);
              if ((v62 & 0x80000000) != 0)
              {
                goto LABEL_280;
              }

              if (*&__c[1])
              {
                v149 = ***&__c[3];
              }

              else
              {
                v149 = v329;
              }

              v316 = v149;
            }
          }

          else if (*v144 == 37)
          {
            v145 = *(*v31 + 160);
            v146 = v343;
            v147 = cstdlib_strlen(*(v144 + 24));
            v62 = v145(a3, a4, v146, 10, (v147 + 1), *(v335 + 32 * v334 + 24), &v340 + 2);
            if ((v62 & 0x80000000) != 0)
            {
              goto LABEL_280;
            }
          }

          i = v334 + 1;
        }

        if (v316)
        {
          v62 = (*(*v31 + 176))(a3, a4, v343, 5, &v330, &v341);
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_280;
          }

          if (cstdlib_strchr(v330, v316))
          {
            LODWORD(v308) = 1;
          }

          else
          {
            *(__s1 + v142) = v343;
            v142 = (v142 + 1);
          }

          *v330 = v316;
          v330[1] = 0;
        }

        v310 = v142;
        if (((*(*v31 + 184))(a3, a4, v343, 21, &v331) & 0x80000000) != 0)
        {
          v331 = 0;
        }

        else if (v331)
        {
LABEL_369:
          v138 = HIDWORD(v332);
          v313 = v141;
          break;
        }

        v62 = (*(*v31 + 160))(a3, a4, v343, 21, 6, "OTHER", &v340 + 2);
        if ((v62 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        goto LABEL_369;
      case 0xA:
        goto LABEL_336;
      case 9:
        goto LABEL_329;
    }

    if (v138 != 9)
    {
      goto LABEL_436;
    }

    v346[0] = 0;
    LOWORD(v322) = 0;
    v323 = 0;
    LOWORD(v321) = 0;
    *v320 = 0;
    v123 = (*(*v31 + 176))(a3, a4, v343, 3, &__src, &v341);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    if (!cstdlib_strchr(__src, 32))
    {
LABEL_436:
      v62 = (*(*v31 + 120))(a3, a4, v343, &v343);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_280;
      }

      continue;
    }

    break;
  }

  v123 = (*(*v31 + 168))(a3, a4, v343, 2, 1, &v338, &v341);
  if ((v123 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v123 = (*(*v31 + 168))(a3, a4, v343, 7, 1, &v322, &v341);
  if ((v123 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v123 = (*(*v31 + 176))(a3, a4, v343, 9, &v323, &v341);
  if ((v123 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v331 = 0;
  if (((*(*v31 + 184))(a3, a4, v343, 8, &v331) & 0x80000000) == 0 && v331 == 1)
  {
    v123 = (*(*v31 + 168))(a3, a4, v343, 8, 1, &v321, &v341);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }
  }

  v123 = (*(*v31 + 176))(a3, a4, v343, 5, &v330, &v341);
  if ((v123 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  v123 = (*(*v31 + 176))(a3, a4, v343, 6, v346, &v341);
  if ((v123 & 0x80000000) != 0)
  {
    goto LABEL_277;
  }

  if (cstdlib_strlen(__src) - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v153 = *(*a1 + 8);
    v154 = *(a1 + 240);
    v155 = cstdlib_strlen(__src);
    v156 = heap_Realloc(v153, v154, (v155 + 1));
    if (!v156)
    {
      goto LABEL_497;
    }

    *(a1 + 240) = v156;
  }

  if (cstdlib_strlen(v330) - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v157 = *(*a1 + 8);
    v158 = *(a1 + 248);
    v159 = cstdlib_strlen(v330);
    v160 = heap_Realloc(v157, v158, (v159 + 1));
    if (!v160)
    {
      goto LABEL_497;
    }

    *(a1 + 248) = v160;
  }

  if (cstdlib_strlen(v346[0]) - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v161 = *(*a1 + 8);
    v162 = *(a1 + 256);
    v163 = cstdlib_strlen(v346[0]);
    v164 = heap_Realloc(v161, v162, (v163 + 1));
    if (!v164)
    {
      goto LABEL_497;
    }

    *(a1 + 256) = v164;
  }

  cstdlib_strcpy(*(a1 + 240), __src);
  cstdlib_strcpy(*(a1 + 248), v330);
  cstdlib_strcpy(*(a1 + 256), v346[0]);
  v165 = *(a1 + 240);
  v307 = *(a1 + 248);
  v166 = *(a1 + 256);
  v167 = cstdlib_strchr(v165, 32);
  v306 = cstdlib_strchr(*(a1 + 248), 32);
  v304 = v167;
  v305 = cstdlib_strchr(*(a1 + 256), 32);
  HIWORD(v339) = v339;
  if (!v167)
  {
LABEL_431:
    v123 = (*(*v31 + 160))(a3, a4, v343, 2, 1, &v338, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v186 = *(*v31 + 160);
    v187 = v343;
    v188 = cstdlib_strlen(v165);
    v123 = v186(a3, a4, v187, 3, (v188 + 1), v165, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v189 = *(*v31 + 160);
    v190 = v343;
    v191 = cstdlib_strlen(v307);
    v123 = v189(a3, a4, v190, 5, (v191 + 1), v307, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v192 = *(*v31 + 160);
    v193 = v343;
    v194 = cstdlib_strlen(v166);
    v123 = v192(a3, a4, v193, 6, (v194 + 1), v166, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    *v320 = 0;
    v123 = (*(*v31 + 160))(a3, a4, v343, 8, 1, &v321, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    goto LABEL_436;
  }

  while (1)
  {
    for (j = HIWORD(v339); ; HIWORD(v339) = ++j)
    {
      v169 = v344[j];
      v170 = v169 > 0x20 || ((1 << v169) & 0x100002601) == 0;
      if (!v170 || v169 == 95)
      {
        break;
      }
    }

    v123 = (*(*v31 + 160))(a3, a4, v343, 2, 1, &v339 + 2, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    ++HIWORD(v339);
    *v304 = 0;
    v171 = *(*v31 + 160);
    v172 = v343;
    v173 = cstdlib_strlen(v165);
    v123 = v171(a3, a4, v172, 3, (v173 + 1), v165, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    if (v306)
    {
      *v306 = 0;
    }

    v174 = *(*v31 + 160);
    v175 = v343;
    v176 = cstdlib_strlen(v307);
    v123 = v174(a3, a4, v175, 5, (v176 + 1), v307, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v177 = v307;
    if (v306)
    {
      v177 = v306 + 1;
    }

    v307 = v177;
    if (v305)
    {
      *v305 = 0;
    }

    v178 = *(*v31 + 160);
    v179 = v343;
    v180 = cstdlib_strlen(v166);
    v123 = v178(a3, a4, v179, 6, (v180 + 1), v166, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    if (v305)
    {
      v166 = v305 + 1;
    }

    *v320 = 0;
    v123 = (*(*v31 + 160))(a3, a4, v343, 8, 1, v320, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v181 = v343;
    if (v343 && HIWORD(v339) > v339)
    {
      while (1)
      {
        v182 = v181;
        v123 = (*(*v31 + 120))(a3, a4, v181, &v343);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        if (!v343)
        {
          goto LABEL_421;
        }

        v123 = (*(*v31 + 168))(a3, a4);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        v181 = v343;
        if (!v343 || HIWORD(v339) <= v339)
        {
          goto LABEL_421;
        }
      }
    }

    v182 = v343;
LABEL_421:
    v123 = (*(*v31 + 80))(a3, a4, v182, &v343);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v123 = (*(*v31 + 160))(a3, a4, v343, 1, 1, &v339 + 2, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v123 = (*(*v31 + 160))(a3, a4, v343, 0, 1, &v332 + 4, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v123 = (*(*v31 + 160))(a3, a4, v343, 7, 1, &v322, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v183 = *(*v31 + 160);
    v184 = v343;
    v185 = cstdlib_strlen(v323);
    v123 = v183(a3, a4, v184, 9, (v185 + 1), v323, &v340 + 2);
    if ((v123 & 0x80000000) != 0)
    {
      break;
    }

    v165 = v304 + 1;
    v304 = cstdlib_strchr(v304 + 1, 32);
    if (v307)
    {
      v306 = cstdlib_strchr(v307, 32);
    }

    if (v166)
    {
      v305 = cstdlib_strchr(v166, 32);
    }

    if (!v304)
    {
      goto LABEL_431;
    }
  }

LABEL_277:
  v9 = v123;
LABEL_499:
  v59 = 0;
  v58 = 0;
LABEL_282:
  if (v318)
  {
    heap_Free(*(*a1 + 8), v318);
  }

LABEL_97:
  if (v344)
  {
    heap_Free(*(*a1 + 8), v344);
  }

  if (v59)
  {
    heap_Free(*(*a1 + 8), v59);
  }

  if (v58)
  {
    heap_Free(*(*a1 + 8), v58);
  }

  return v9;
}

char *fe_oneword_ResetCarryOverSentenceParams(uint64_t a1)
{
  v2 = *(a1 + 2256);
  if (v2 && cstdlib_strlen(v2))
  {
    cstdlib_strcpy(*(a1 + 2256), "");
  }

  result = *(a1 + 2264);
  if (result)
  {
    result = cstdlib_strlen(result);
    if (result)
    {
      v4 = *(a1 + 2264);

      return cstdlib_strcpy(v4, "");
    }
  }

  return result;
}

uint64_t hlp_LoadDTData(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *__s1 = 0u;
  v50 = 0u;
  memset(v48, 0, sizeof(v48));
  *&__c[3] = 0;
  v46 = 0;
  __c[0] = 0;
  v43 = 0;
  __s2 = 0;
  __s = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "dtlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 576) = *&__c[1] != 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "dtcharsetutf8", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v3 = *&__c[1] ? **&__c[3] : "";
  cstdlib_strcpy((a1 + 584), v3);
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "phonlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 580) = *&__c[1] == 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "extramaintrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 852) = *&__c[1] || cstdlib_strstr("eng,ena,enu,dun,frc,frf,ged,iti,ptb,ptp,sws,spe,spm", *(a1 + 1208));
  *(a1 + 1204) = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && cstdlib_strlen(__s) >= 4 && (paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v46) & 0x80000000) != 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "lidenx", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 928) = *&__c[1] != 0;
  *(a1 + 932) = 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "lidenxchars", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    v4 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
    }

    v5 = **&__c[3];
  }

  else
  {
    v5 = "";
  }

  cstdlib_strcpy((a1 + 944), v5);
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "dpsmultitrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = cstdlib_atoi(**&__c[3]);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 1200) = v7;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v43);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  __s1[0] = 0;
  cstdlib_strcat(__s1, "dt/");
  cstdlib_strcat(__s1, __s2);
  cstdlib_strcat(__s1, "/");
  cstdlib_strcat(__s1, v43);
  v8 = brokeraux_ComposeBrokerString(*a1, __s1, 0, 1, __s2, 0, 0, v48, 0x100uLL);
  if (v8 < 0)
  {
    return v8 | 0x89B02000;
  }

  if ((ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 2, v48, "DETR", 1031, &v39) & 0x80000000) != 0)
  {
    return 0;
  }

  while (2)
  {
    if ((ssftriff_reader_OpenChunk(v39, &v40, &v37, &v38) & 0x80000000) != 0)
    {
      return ssftriff_reader_ObjClose(v39, v9, v10, v11, v12, v13, v14, v15);
    }

    v36 = 256;
    Str = ssftriff_reader_ReadStringZ(v39, v38, v37, 0, __dst, &v36);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v16 = heap_Alloc(*(*a1 + 8), 24);
    if (!v16)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v17, v18, v19, v20, v35);
      return 2310021130;
    }

    v21 = v16;
    Str = ssftriff_reader_DetachChunkData(v39, v21, v21 + 1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v22 = v36;
    if ((v36 & 3) != 0)
    {
      v22 = v36 - (v36 | 0xFFFFFFFC);
      v36 = v22;
    }

    PNEW_LexDT_Con(a1 + 888, a1 + 888, 0, (v21[1] + v22), 0, v21 + 2);
    v24 = LH_ERROR_to_VERROR(v23);
    if ((v24 & 0x80000000) != 0)
    {
      v29 = v24;
      ssftriff_reader_ReleaseChunkData(*v21);
      heap_Free(*(*a1 + 8), v21);
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v31, v32, v33, v34, v35);
    }

    else
    {
      v25 = __dst;
      do
      {
        v26 = cstdlib_strchr(v25, 44);
        v27 = v26;
        if (v26)
        {
          *v26 = 0;
        }

        v28 = ssftmap_Insert(*(a1 + 568), v25, v21);
        if ((v28 & 0x80000000) != 0)
        {
          v29 = v28;
          ssftriff_reader_ReleaseChunkData(*v21);
          heap_Free(*(*a1 + 8), v21);
          return v29;
        }

        v25 = v27 + 1;
      }

      while (v27);
      v29 = ssftriff_reader_CloseChunk(v39);
      if ((v29 & 0x80000000) == 0)
      {
        continue;
      }
    }

    break;
  }

  return v29;
}

uint64_t hlp_GenXtraMainVarMW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = a4;
  if (a5 >= a6)
  {
    return 0;
  }

  v9 = a6 - a5;
  if ((a6 - a5) > 127)
  {
    return 0;
  }

  cstdlib_strncpy(__dst, (a7 + a5), a6 - a5);
  v17 = &__dst[v9];
  *v17 = 0;
  if (oneword_CountOrthographicWords(__dst, v17, 0x23u, 0x23u) < 2)
  {
    return hlp_GenXtraMainVar(a1, a2, a3, a4, a5, a6, a7, &v18);
  }

  oneword_ReplaceAllCharactersInOrthography(__dst, v17, 0x23u, 32);
  v10 = 0;
  v19 = 0;
  do
  {
    oneword_FindNextWord(__dst, 5u, v9, &v19 + 1, &v19);
    if (HIDWORD(v19) < v9)
    {
      v10 = hlp_GenXtraMainVar(a1, a2, a3, v18, (WORD2(v19) + a5), (v19 + a5), a7, &v18);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }
    }

    HIDWORD(v19) = v19;
  }

  while (v19 < v9);
  return v10;
}

BOOL hlp_checkDoClmForForeignLanguage(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  cstdlib_strcpy(__dst, "clm");
  cstdlib_strcat(__dst, a2);
  if ((paramc_ParamGetStr(*(*a1 + 40), __dst, &__s1) & 0x80000000) != 0 || (v4 = __s1) == 0)
  {
    __s1 = 0;
    Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1);
    v4 = __s1;
    if (Str < 0 || !__s1)
    {
      if (!__s1)
      {
        return 1;
      }
    }

    else
    {
      if (cstdlib_strstr(__s1, a2))
      {
        v4 = "no";
      }

      else
      {
        v4 = "yes";
      }

      __s1 = v4;
    }
  }

  return cstdlib_strcmp(v4, "yes") == 0;
}

uint64_t fe_oneword_TreatNLUMarkup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v149 = 0;
  __n = 0;
  v146 = 0;
  __s = 0;
  v145 = 0;
  v143 = 0;
  v142 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v149 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v149), 0, &v142) & 0x80000000) == 0 && v142 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v149), 0, &v145, &__n + 4);
    if ((v6 & 0x80000000) == 0 && WORD2(__n) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v149), 1, &v143, &v142 + 2);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v149), &v149);
      if ((v6 & 0x80000000) == 0)
      {
        v147 = 0;
        LOWORD(v8) = v149;
        if (!v149)
        {
          v22 = 0;
          v10 = 0;
          v137 = 0;
          LODWORD(v9) = 0;
LABEL_267:
          v127 = HIWORD(v142);
          if (v9 < HIWORD(v142))
          {
            v9 = v9;
            v128 = 32 * v9;
            do
            {
              v129 = v143;
              if (*(v143 + v128) == 51)
              {
                v130 = *(*a1 + 8);
                v131 = *(a1 + 2264);
                if (v131)
                {
                  v132 = cstdlib_strlen(*(a1 + 2264)) + 2;
                  v129 = v143;
                }

                else
                {
                  v132 = 2;
                }

                v133 = cstdlib_strlen(*(v129 + v128 + 24));
                v134 = heap_Realloc(v130, v131, (v133 + v132));
                if (!v134)
                {
                  goto LABEL_283;
                }

                *(a1 + 2264) = v134;
                hlp_NLUStrOverride(v134, *(v143 + v128 + 24), 0);
                v127 = HIWORD(v142);
              }

              ++v9;
              v128 += 32;
            }

            while (v9 < v127);
          }

          v11 = v22;
          goto LABEL_280;
        }

        v9 = 0;
        v137 = 0;
        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v146, &__n + 4);
          if ((v12 & 0x80000000) != 0)
          {
LABEL_279:
            v6 = v12;
            goto LABEL_280;
          }

          if ((v146 - 9) >= 6 && v146 != 4)
          {
            goto LABEL_82;
          }

          v12 = (*(*(a1 + 56) + 168))(a2, a3, v149, 1, 1, &v147 + 2, &__n + 4);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_279;
          }

          v12 = (*(*(a1 + 56) + 168))(a2, a3, v149, 2, 1, &v147, &__n + 4);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_279;
          }

          v138 = v11;
          if (v9 >= HIWORD(v142))
          {
LABEL_25:
            v17 = *(v143 + 16);
          }

          else
          {
            v14 = *(v143 + 12);
            v15 = (v143 + 32 * v9);
            v16 = HIWORD(v142) - v9;
            while (1)
            {
              v17 = v15[3] - v14;
              v18 = (*(v15 + 6) - v14);
              if (*v15 == 1 && v18 >= v147)
              {
                break;
              }

              v15 += 8;
              if (!--v16)
              {
                goto LABEL_25;
              }
            }

            v37 = *(v15 + 6) == v14 || v18 == *(v143 + 16);
            if (!v37 && *(v145 + v18) != 32)
            {
              LODWORD(v141) = v18 - 1;
              utf8_GetPreviousValidUtf8Offset(v145, &v141);
              v38 = utf8_determineUTF8CharLength(*(v145 + v18));
              v39 = v141;
              v40 = *(v145 + v141);
              if (v40 != 95 && v40 != 32)
              {
                v39 = v38 + v17;
              }

              v17 = v39;
            }
          }

          LOWORD(__n) = 0;
          v20 = *(a1 + 2264);
          if (v20 && *v20)
          {
            v21 = cstdlib_strlen(v20);
            LOWORD(__n) = v21 + __n + 1;
            v22 = v138;
            v23 = heap_Realloc(*(*a1 + 8), v138, __n);
            if (!v23)
            {
              goto LABEL_283;
            }

            v28 = v23;
            cstdlib_strcpy(v23, *(a1 + 2264));
            cstdlib_strcpy(*(a1 + 2264), "");
            v138 = v28;
          }

          else
          {
            v28 = 0;
          }

          v29 = HIWORD(v142);
          if (v9 < HIWORD(v142))
          {
            v136 = v10;
            v30 = 32 * v9;
            v31 = v9;
            while (v17 << 16 > (*(v143 + v30 + 12) - *(v143 + 12)) << 16)
            {
              if (*(v143 + v30) == 51)
              {
                v32 = cstdlib_strlen(*(v143 + v30 + 24));
                LOWORD(__n) = v32 + __n + 1;
                v22 = v138;
                v33 = heap_Realloc(*(*a1 + 8), v138, __n);
                if (!v33)
                {
                  v64 = v136;
                  goto LABEL_284;
                }

                v34 = v33;
                if (v28)
                {
                  v35 = v143;
                  v36 = *(v143 + v30 + 12) + 1 == *(v143 + 16) + *(v143 + 12);
                }

                else
                {
                  cstdlib_strcpy(v33, "");
                  v36 = 0;
                  v35 = v143;
                }

                hlp_NLUStrOverride(v34, *(v35 + v30 + 24), v36);
                v29 = HIWORD(v142);
                v138 = v34;
                v28 = v34;
              }

              else
              {
                v34 = v28;
              }

              ++v31;
              v30 += 32;
              if (v31 >= v29)
              {
                goto LABEL_53;
              }
            }

            v34 = v28;
LABEL_53:
            v9 = v31;
            v28 = v34;
            v10 = v136;
          }

          if (!v28)
          {
            break;
          }

          LOWORD(__n) = 2 * cstdlib_strlen(v28) + 2;
          if (cstdlib_strcmp(*(a1 + 2256), ""))
          {
            v41 = cstdlib_strlen(*(a1 + 2256));
            v42 = v41 + __n + 1;
            LOWORD(__n) = v42;
          }

          else
          {
            v42 = __n;
          }

          v58 = heap_Realloc(*(*a1 + 8), v138, v42);
          if (!v58)
          {
            v22 = v138;
LABEL_283:
            v64 = v10;
LABEL_284:
            v107 = v137;
LABEL_285:
            v6 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v24, v25, v26, v27, v136);
            v11 = v22;
            v10 = v64;
            goto LABEL_286;
          }

          v22 = v58;
          v59 = heap_Realloc(*(*a1 + 8), v10, __n);
          if (!v59)
          {
            v6 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v60, v61, v62, v63, v136);
            v107 = v137;
            goto LABEL_287;
          }

          v64 = v59;
          v136 = v9;
          v65 = v17;
          __s = v22;
          v66 = v22;
          do
          {
            if ((*v66 | 0x20) == 0x72 && v66[1] == 95)
            {
              cstdlib_strcpy(v64, *(a1 + 2256));
              LOWORD(__n) = hlp_NLUStrKeyLen(__s);
              if (v22 < __s)
              {
                v67 = v22;
                do
                {
                  v68 = __n;
                  if (v68 == hlp_NLUStrKeyLen(v67) && !cstdlib_strncmp(__s + 2, v67 + 2, __n - 2))
                  {
                    v69 = *v67;
                    if (v69 > 0x64)
                    {
                      if (v69 == 101)
                      {
LABEL_105:
                        if (v67[1] == 95)
                        {
                          hlp_NLUStrRemoveI(v64, v67);
                        }

                        goto LABEL_94;
                      }

                      if (v69 == 115)
                      {
LABEL_102:
                        if (v67[1] == 95)
                        {
                          hlp_NLUStrAddI(v64, v67);
                        }
                      }
                    }

                    else
                    {
                      if (v69 == 69)
                      {
                        goto LABEL_105;
                      }

                      if (v69 == 83)
                      {
                        goto LABEL_102;
                      }
                    }
                  }

LABEL_94:
                  v67 = hlp_NLUStrNext(v67);
                }

                while (v67 < __s);
              }

              v70 = v64;
              do
              {
                if (*v70)
                {
                  *v70 = 69;
                }

                v70 = hlp_NLUStrNext(v70);
              }

              while (v70);
              LOWORD(__n) = cstdlib_strlen(v64);
              v71 = __s;
              v72 = &__s[__n];
              v73 = cstdlib_strlen(__s);
              cstdlib_memmove(v72 + 1, v71, v73 + 1);
              cstdlib_strncpy(__s, v64, __n);
              cstdlib_strncpy(&__s[__n], ";", 1uLL);
              __s += __n + 1;
              v66 = hlp_NLUStrStrip(__s);
            }

            else
            {
              v66 = hlp_NLUStrNext(v66);
            }

            __s = v66;
          }

          while (v66);
          __s = v22;
          v74 = v22;
          while (2)
          {
            if ((*v74 | 0x20) == 0x65 && v74[1] == 95)
            {
              v75 = hlp_NLUStrNext(v74);
              LOWORD(__n) = hlp_NLUStrLength(__s);
              if (v75)
              {
                while (1)
                {
                  if ((*v75 | 0x20) == 0x73 && v75[1] == 95)
                  {
                    v76 = __n;
                    if (v76 == hlp_NLUStrLength(v75) && !cstdlib_strncmp(__s + 2, v75 + 2, __n - 2))
                    {
                      break;
                    }
                  }

                  v75 = hlp_NLUStrNext(v75);
                  if (!v75)
                  {
                    goto LABEL_123;
                  }
                }

                hlp_NLUStrStrip(v75);
                v74 = hlp_NLUStrStrip(__s);
                goto LABEL_125;
              }

LABEL_123:
              v74 = __s;
            }

            v74 = hlp_NLUStrNext(v74);
LABEL_125:
            __s = v74;
            if (v74)
            {
              continue;
            }

            break;
          }

          __s = v22;
          v77 = v22;
LABEL_128:
          while (2)
          {
            if ((*v77 | 0x20) != 0x73 || v77[1] != 95)
            {
              goto LABEL_145;
            }

            v78 = hlp_NLUStrNext(v77);
            LOWORD(__n) = hlp_NLUStrLength(__s);
            if (v78)
            {
              v79 = 0;
              do
              {
                if (v79)
                {
                  v80 = *v78;
                  if ((v80 | 0x20) != 0x65)
                  {
                    goto LABEL_138;
                  }

                  if (v78[1] == 95)
                  {
                    v81 = __n;
                    if (v81 == hlp_NLUStrLength(v78) && !cstdlib_strncmp(__s + 2, v78 + 2, __n - 2))
                    {
                      hlp_NLUStrStrip(v78);
                      hlp_NLUStrStrip(__s);
                      v77 = __s;
                      if (!__s)
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_128;
                    }
                  }
                }

                v80 = *v78;
LABEL_138:
                if (v80)
                {
                  if (v78[1] == 95)
                  {
                    v82 = __n;
                    if (v82 == hlp_NLUStrLength(v78) && !cstdlib_strncmp(__s + 2, v78 + 2, __n - 2))
                    {
                      v79 = 1;
                    }
                  }
                }

                v78 = hlp_NLUStrNext(v78);
              }

              while (v78);
            }

            v77 = __s;
LABEL_145:
            v77 = hlp_NLUStrNext(v77);
            __s = v77;
            if (v77)
            {
              continue;
            }

            break;
          }

LABEL_148:
          __s = v22;
          v83 = v22;
          while (2)
          {
            if ((*v83 | 0x20) != 0x65 || v83[1] != 95 || (v84 = hlp_NLUStrSearchI(*(a1 + 2256), v83), v83 = __s, v84))
            {
              v85 = v83;
              goto LABEL_153;
            }

            LOWORD(__n) = hlp_NLUStrLength(__s);
            v85 = __s;
            if (v22 >= __s)
            {
              goto LABEL_165;
            }

            v87 = 0;
            v88 = v22;
            do
            {
              if ((*v88 | 0x20) == 0x73 && v88[1] == 95)
              {
                v89 = __n;
                if (v89 == hlp_NLUStrLength(v88) && !cstdlib_strncmp(__s + 2, v88 + 2, __n - 2))
                {
                  v87 = 1;
                }
              }

              v88 = hlp_NLUStrNext(v88);
              v85 = __s;
            }

            while (v88 < __s);
            if (v87)
            {
LABEL_153:
              v86 = hlp_NLUStrNext(v85);
            }

            else
            {
LABEL_165:
              v86 = hlp_NLUStrStrip(v85);
            }

            v83 = v86;
            __s = v86;
            if (v86)
            {
              continue;
            }

            break;
          }

          hlp_NLUStrJoin(v22, "");
          HIWORD(__n) = v149;
          v139 = HIWORD(v147);
          v90 = (*(*(a1 + 56) + 120))(a2, a3);
          v6 = v90;
          if ((v90 & 0x80000000) != 0)
          {
            goto LABEL_278;
          }

          if (HIWORD(__n))
          {
            v6 = (*(*(a1 + 56) + 168))(a2, a3);
            if ((v6 & 0x80000000) != 0)
            {
              goto LABEL_278;
            }

            v91 = HIWORD(__n);
            if (HIWORD(__n))
            {
              v92 = HIWORD(v147);
              v93 = v139;
              while (1)
              {
                if (v92 >= v65)
                {
                  goto LABEL_186;
                }

                v94 = (*(*(a1 + 56) + 168))(a2, a3, v91, 0, 1, &v146, &__n + 4);
                if ((v94 & 0x80000000) != 0)
                {
                  break;
                }

                if ((v146 - 9) < 6 || v146 == 4)
                {
                  v93 = HIWORD(v147);
                }

                v6 = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(__n), &__n + 6);
                if ((v6 & 0x80000000) != 0)
                {
                  goto LABEL_278;
                }

                if (!HIWORD(__n))
                {
                  v91 = 0;
                  goto LABEL_186;
                }

                v6 = (*(*(a1 + 56) + 168))(a2, a3);
                if ((v6 & 0x80000000) != 0)
                {
                  goto LABEL_278;
                }

                v91 = HIWORD(__n);
                if (!HIWORD(__n))
                {
                  goto LABEL_186;
                }

                v92 = HIWORD(v147);
              }

LABEL_277:
              v6 = v94;
LABEL_278:
              v11 = v22;
              v10 = v64;
LABEL_280:
              v107 = v137;
LABEL_286:
              v22 = v11;
              if (v11)
              {
LABEL_287:
                heap_Free(*(*a1 + 8), v22);
              }

              if (v10)
              {
                heap_Free(*(*a1 + 8), v10);
              }

              if (v107)
              {
                heap_Free(*(*a1 + 8), v107);
              }

              return v6;
            }
          }

          else
          {
            v91 = 0;
          }

          v93 = v139;
LABEL_186:
          v8 = v149;
          if (v149 && v149 != v91)
          {
            v96 = 0;
            while (1)
            {
              v94 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v146, &__n + 4);
              if ((v94 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if ((v146 - 9) < 6 || v146 == 4)
              {
                break;
              }

LABEL_258:
              v6 = (*(*(a1 + 56) + 120))(a2, a3);
              if ((v6 & 0x80000000) != 0)
              {
                goto LABEL_278;
              }

              v8 = v149;
              if (!v149 || v149 == HIWORD(__n))
              {
                goto LABEL_261;
              }
            }

            if (v96)
            {
              v94 = (*(*(a1 + 56) + 168))(a2, a3, v96, 1, 1, &__n, &__n + 4);
              if ((v94 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }
            }

            v94 = (*(*(a1 + 56) + 168))(a2, a3, v149, 1, 1, &v147 + 2, &__n + 4);
            if ((v94 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            v94 = (*(*(a1 + 56) + 168))(a2, a3, v149, 2, 1, &v147, &__n + 4);
            if ((v94 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v96 && __n == HIWORD(v147))
            {
              v94 = (*(*(a1 + 56) + 176))(a2, a3, v96, 14, &__s, &__n + 4);
              if ((v94 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              v98 = *(*(a1 + 56) + 160);
              v99 = v149;
              v100 = cstdlib_strlen(__s);
              v94 = v98(a2, a3, v99, 14, (v100 + 1), __s, &__n + 2);
              if ((v94 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

LABEL_257:
              v96 = v149;
              goto LABEL_258;
            }

            LOWORD(__n) = cstdlib_strlen(v22) + 1;
            if (cstdlib_strcmp(*(a1 + 2256), ""))
            {
              v101 = cstdlib_strlen(*(a1 + 2256));
              v102 = v101 + __n + 1;
              LOWORD(__n) = v102;
            }

            else
            {
              v102 = __n;
            }

            v103 = heap_Realloc(*(*a1 + 8), *(a1 + 2256), v102);
            if (!v103)
            {
              goto LABEL_284;
            }

            *(a1 + 2256) = v103;
            v104 = *(*a1 + 8);
            v105 = __n;
            v106 = v105 + cstdlib_strlen(v22) + 1;
            v107 = v137;
            v108 = heap_Realloc(v104, v137, v106);
            if (!v108)
            {
              goto LABEL_285;
            }

            v109 = v108;
            v110 = cstdlib_strcpy(v108, v22);
            if (v110)
            {
              v111 = v110;
              do
              {
                v112 = *v111;
                if (v112 > 0x64)
                {
                  if (v112 != 101)
                  {
                    if (v112 != 115)
                    {
                      goto LABEL_228;
                    }

LABEL_217:
                    if (v111[1] != 95)
                    {
                      goto LABEL_228;
                    }

                    v113 = hlp_NLUStrSearchI(*(a1 + 2256), v111);
                    if (HIWORD(v147) == v139)
                    {
                      hlp_NLUStrAddI(*(a1 + 2256), v111);
                    }

                    if (!v113)
                    {
                      goto LABEL_228;
                    }

                    goto LABEL_227;
                  }
                }

                else if (v112 != 69)
                {
                  if (v112 != 83)
                  {
                    goto LABEL_228;
                  }

                  goto LABEL_217;
                }

                if (v111[1] != 95)
                {
                  goto LABEL_228;
                }

                if (HIWORD(v147) == v93)
                {
                  hlp_NLUStrRemoveI(*(a1 + 2256), v111);
                }

                if (!hlp_NLUStrSearchI(*(a1 + 2256), v111))
                {
LABEL_228:
                  v114 = hlp_NLUStrNext(v111);
                  goto LABEL_229;
                }

LABEL_227:
                v114 = hlp_NLUStrStrip(v111);
LABEL_229:
                v111 = v114;
              }

              while (v114);
            }

            hlp_NLUStrJoin(v109, *(a1 + 2256));
            __s = v109;
            v115 = v109;
            do
            {
              if ((*v115 | 0x20) != 0x69)
              {
                goto LABEL_243;
              }

              if (v115[1] != 95)
              {
                goto LABEL_243;
              }

              LOWORD(__n) = hlp_NLUStrLength(v115);
              v115 = __s;
              if (v109 >= __s)
              {
                goto LABEL_243;
              }

              v116 = 0;
              v117 = v109;
              do
              {
                if (*v117)
                {
                  if (v117[1] == 95)
                  {
                    v118 = __n;
                    if (v118 == hlp_NLUStrLength(v117) && !cstdlib_strncmp(__s + 2, v117 + 2, __n - 2))
                    {
                      v116 = 1;
                    }
                  }
                }

                v117 = hlp_NLUStrNext(v117);
                v115 = __s;
              }

              while (v117 < __s);
              if (v116)
              {
                v115 = hlp_NLUStrStrip(__s);
              }

              else
              {
LABEL_243:
                v115 = hlp_NLUStrNext(v115);
              }

              __s = v115;
            }

            while (v115);
            hlp_NLUStrJoin(v109, "");
            if (HIWORD(v147) == v93)
            {
              v141 = 0;
              v140 = 0;
              v119 = hlp_NLUStrFind(v109, "PUNC", &v141, &v140);
              if (!v119)
              {
                goto LABEL_255;
              }

              v120 = v119;
              if (!cstdlib_strstr(v119, ":DASH"))
              {
                goto LABEL_255;
              }

LABEL_253:
              if (*(v145 + v147 - 1) != 44)
              {
LABEL_254:
                hlp_NLUStrStrip(v120);
              }

LABEL_255:
              v123 = *(*(a1 + 56) + 160);
              v124 = v149;
              v125 = cstdlib_strlen(v109);
              v126 = v123(a2, a3, v124, 14, (v125 + 1), v109, &__n + 2);
              if ((v126 & 0x80000000) != 0)
              {
                v6 = v126;
                v10 = v64;
                v107 = v109;
                v11 = v22;
                goto LABEL_286;
              }

              v137 = v109;
              goto LABEL_257;
            }

            v141 = 0;
            v140 = 0;
            v121 = hlp_NLUStrFind(v109, "BND", &v141, &v140);
            if (v121)
            {
              hlp_NLUStrStrip(v121);
            }

            v122 = hlp_NLUStrFind(v109, "PUNC", &v141, &v140);
            if (!v122)
            {
              goto LABEL_255;
            }

            v120 = v122;
            if (cstdlib_strstr(v122, ":DASH"))
            {
              goto LABEL_253;
            }

            goto LABEL_254;
          }

LABEL_261:
          v10 = v64;
          v9 = v136;
LABEL_262:
          v11 = v22;
          if (!v8)
          {
            goto LABEL_267;
          }
        }

        v43 = (*(*(a1 + 56) + 168))(a2, a3, v149, 0, 1, &v146, &__n + 4);
        if ((v43 & 0x80000000) != 0)
        {
          v6 = v43;
          v107 = v137;
          v11 = v138;
          goto LABEL_286;
        }

        v44 = (v146 - 9) < 6 || v146 == 4;
        v11 = v138;
        if (v44 && cstdlib_strcmp(*(a1 + 2256), ""))
        {
          v45 = *(*a1 + 8);
          v46 = cstdlib_strlen(*(a1 + 2256)) + 1;
          v47 = heap_Realloc(v45, v137, v46);
          if (!v47)
          {
            v22 = v138;
            v64 = v10;
            v107 = v137;
            goto LABEL_285;
          }

          v48 = v47;
          v49 = v9;
          cstdlib_strcpy(v47, *(a1 + 2256));
          __s = v48;
          v50 = v48;
          do
          {
            if ((*v50 | 0x20) != 0x69)
            {
              goto LABEL_78;
            }

            if (v50[1] != 95)
            {
              goto LABEL_78;
            }

            LOWORD(__n) = hlp_NLUStrLength(v50);
            v50 = __s;
            if (v48 >= __s)
            {
              goto LABEL_78;
            }

            v51 = 0;
            v52 = v48;
            do
            {
              if (*v52)
              {
                if (v52[1] == 95)
                {
                  v53 = __n;
                  if (v53 == hlp_NLUStrLength(v52) && !cstdlib_strncmp(__s + 2, v52 + 2, __n - 2))
                  {
                    v51 = 1;
                  }
                }
              }

              v52 = hlp_NLUStrNext(v52);
              v50 = __s;
            }

            while (v52 < __s);
            if (v51)
            {
              v50 = hlp_NLUStrStrip(__s);
            }

            else
            {
LABEL_78:
              v50 = hlp_NLUStrNext(v50);
            }

            __s = v50;
          }

          while (v50);
          hlp_NLUStrJoin(v48, "");
          v54 = *(*(a1 + 56) + 160);
          v55 = v149;
          v56 = cstdlib_strlen(v48);
          v57 = v54(a2, a3, v55, 14, (v56 + 1), v48, &__n + 2);
          if ((v57 & 0x80000000) != 0)
          {
            v6 = v57;
            v107 = v48;
            v11 = v138;
            goto LABEL_286;
          }

          v137 = v48;
          v9 = v49;
          v11 = v138;
        }

LABEL_82:
        v6 = (*(*(a1 + 56) + 120))(a2, a3, v149, &v149);
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_280;
        }

        v8 = v149;
        v22 = v11;
        goto LABEL_262;
      }
    }
  }

  return v6;
}

uint64_t fe_oneword_ProcessPinyinMarkup(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = 0;
  v67 = 0;
  __src = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v68 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 176))(a2, a3, HIWORD(v68), 1, &__src, &v67);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v67;
    if (v67)
    {
      v9 = 0;
      LOWORD(v10) = 0;
      v11 = 0;
      v12 = __src + 12;
      do
      {
        v13 = *(v12 - 3);
        if (v13 == 99)
        {
          *v12 -= v11;
          v9 = 1;
        }

        else if (v13 == 0x4000)
        {
          v11 = *v12;
          v10 = v12[1] + *v12;
        }

        v12 += 8;
        --v8;
      }

      while (v8);
      v14 = v9 == 0;
      v15 = v10;
    }

    else
    {
      v11 = 0;
      v15 = 0;
      v14 = 1;
    }

    if (cstdlib_strlen(a1[285]) || !v14)
    {
      v16 = heap_Calloc(*(*a1 + 8), 1, 32 * v67);
      if (v16)
      {
        v21 = v16;
        cstdlib_memcpy(v16, __src, 32 * v67);
        v22 = cstdlib_strlen(a1[285]);
        v23 = v67;
        if (v22)
        {
          ++v67;
          v24 = heap_Realloc(*(*a1 + 8), v21, 32 * (v23 + 1));
          if (!v24)
          {
            v7 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v25, v26, v27, v28, v61);
            goto LABEL_82;
          }

          v29 = v24;
          v23 = v67;
          if (v67)
          {
            v30 = 0;
            v31 = 32 * v67;
            v32 = 1;
            while (1)
            {
              if (v30)
              {
                if (*(v24 + v30) == 1 && v32 < v67)
                {
                  break;
                }
              }

              ++v32;
              v30 += 32;
              if (v31 == v30)
              {
                goto LABEL_30;
              }
            }

            v34 = v24 + v30;
            cstdlib_memmove((v24 + v30 + 32), (v24 + v30), v31 - v30 - 32);
            *v34 = 99;
            *(v34 + 12) = (*(v34 + 44) - v11);
            v23 = v67;
          }

LABEL_30:
          v21 = v29;
        }

        if (*(a1 + 499))
        {
          v35 = HIWORD(v68);
          v75 = 0;
          v74 = 0;
          v72 = 0;
          v73 = 0;
          __s = 0;
          v71 = 0;
          v69 = 0;
          v36 = (*(a1[7] + 176))(a2, a3, HIWORD(v68), 0, &__s, &v75);
          if ((v36 & 0x80000000) != 0)
          {
            v7 = v36;
            v43 = 0;
          }

          else
          {
            v37 = *(*a1 + 8);
            v38 = cstdlib_strlen(__s);
            v43 = heap_Calloc(v37, 1, v38 + 1);
            v44 = *a1;
            if (v43)
            {
              v45 = ssftstring_ObjOpen(*(v44 + 8), &v69);
              if ((v45 & 0x80000000) == 0)
              {
                v45 = ssftstring_Reserve(v69, 30);
                if ((v45 & 0x80000000) == 0)
                {
                  if (v23)
                  {
                    v46 = 0;
                    do
                    {
                      v65 = v21 + 32 * v46;
                      if (*v65 == 99)
                      {
                        v45 = (*(a1[7] + 104))(a2, a3, 2, v35, &v75 + 2);
                        if ((v45 & 0x80000000) != 0)
                        {
                          goto LABEL_62;
                        }

                        v64 = v46;
                        while (HIWORD(v75))
                        {
                          v45 = (*(a1[7] + 168))(a2, a3);
                          if ((v45 & 0x80000000) == 0)
                          {
                            v45 = (*(a1[7] + 168))(a2, a3, HIWORD(v75), 1, 1, &v72, &v75);
                            if ((v45 & 0x80000000) == 0)
                            {
                              v45 = (*(a1[7] + 168))(a2, a3, HIWORD(v75), 2, 1, &v72 + 2, &v75);
                              if ((v45 & 0x80000000) == 0)
                              {
                                cstdlib_strncpy(v43, &__s[v72], HIWORD(v72) - v72);
                                v43[HIWORD(v72) - v72] = 0;
                                if (v73 != 9 && v73 != 4)
                                {
                                  goto LABEL_58;
                                }

                                if (!utf8_IsChineseLetter(v43))
                                {
                                  goto LABEL_58;
                                }

                                v47 = *(v65 + 12);
                                if (v47 >= HIWORD(v72) || v47 < v72)
                                {
                                  goto LABEL_58;
                                }

                                v45 = (*(a1[7] + 176))(a2, a3, HIWORD(v75), 3, &v71, &v75);
                                if ((v45 & 0x80000000) != 0)
                                {
                                  goto LABEL_62;
                                }

                                ChineseUTFCharNum = utf8_GetChineseUTFCharNum(__s, *(v65 + 12));
                                v49 = utf8_GetChineseUTFCharNum(__s, v72);
                                v50 = *(v65 + 24);
                                if (v50)
                                {
                                  v45 = hlpProcessWordPhon(a1, v71, (ChineseUTFCharNum - v49 + 1), v50, v69);
                                  v46 = v64;
                                  if ((v45 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }
                                }

                                else
                                {
                                  v45 = hlpProcessWordPhon(a1, v71, (ChineseUTFCharNum - v49 + 1), a1[285], v69);
                                  if ((v45 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  cstdlib_strcpy(a1[285], "");
                                  v46 = v64;
                                }

                                if (!ssftstring_Size(v69) || (v63 = *(a1[7] + 160), v62 = HIWORD(v75), v51 = ssftstring_Size(v69) + 1, v52 = ssftstring_CStr(v69), v45 = v63(a2, a3, v62, 3, v51, v52, &v74), (v45 & 0x80000000) == 0))
                                {
LABEL_58:
                                  v45 = (*(a1[7] + 120))(a2, a3, HIWORD(v75), &v75 + 2);
                                  if ((v45 & 0x80000000) == 0)
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

                      ++v46;
                    }

                    while (v46 != v23);
                  }

                  v45 = (*(a1[7] + 160))(a2, a3, v35, 1, v23, v21, &v74);
                }
              }

LABEL_62:
              v7 = v45;
            }

            else
            {
              v7 = 2310021130;
              log_OutPublic(*(v44 + 32), "FE_ONEWORD", 34000, 0, v39, v40, v41, v42, v61);
            }
          }

          if (v69)
          {
            ssftstring_ObjClose(v69);
          }

          if (v43)
          {
            heap_Free(*(*a1 + 8), v43);
          }

          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          LODWORD(v23) = v67;
        }

        if (v23)
        {
          v53 = 0;
          v54 = 0;
          do
          {
            v55 = v21 + 32 * v54;
            if (*v55 == 99)
            {
              v56 = (v53 + 1);
              if (v23 > v56)
              {
                cstdlib_memmove((v21 + 32 * v54), (v21 + 32 * v56), 32 * (v23 - v56));
              }

              if (*(v55 + 12) >= v15)
              {
                v57 = a1[285];
                v58 = *(v55 + 24);
                v59 = cstdlib_strlen(v58);
                cstdlib_memcpy(v57, v58, v59 + 1);
              }

              LOWORD(v23) = --v67;
            }

            else
            {
              ++v54;
            }

            v53 = v54;
          }

          while (v54 < v23);
        }

        v7 = (*(a1[7] + 160))(a2, a3, HIWORD(v68), 1, v23, v21, &v68);
LABEL_82:
        heap_Free(*(*a1 + 8), v21);
        return v7;
      }

      v7 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v17, v18, v19, v20, v61);
    }
  }

  return v7;
}

uint64_t fe_oneword_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((v3 & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v4 = v3;
  fe_oneword_ResetCarryOverSentenceParams(a1);
  if (!*(a1 + 2004))
  {
    return v4;
  }

  return oneword_posparser_End(a1);
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

uint64_t hlp_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  __c_1 = -1;
  __c = 0;
  v10 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, &__c_1, &__c);
  if ((v7 & 0x80000000) == 0 && __c_1)
  {
    v8 = cstdlib_strchr(*v10, __c);
    if (v8)
    {
      *v8 = 0;
    }

    *a6 = *v10;
  }

  return v7;
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
    v15 = cstdlib_strchr(v14, __c);
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
    v18 = cstdlib_strstr(&a2[v16], "{SEP");
    v19 = cstdlib_strchr(&a2[v16], 46);
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
    v27 = cstdlib_strlen(a2);
    v16 = v27 - cstdlib_strlen(v25);
    if (++v17 >= a3)
    {
      goto LABEL_26;
    }
  }

  if (v18 && v19)
  {
    v26 = cstdlib_strlen(v18);
    if (v26 <= cstdlib_strlen(v24))
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
    v30 = cstdlib_strstr(v29, "{SEP");
    v31 = cstdlib_strchr(v29, 46);
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
        v36 = cstdlib_strlen(v30);
        if (v36 > cstdlib_strlen(v32))
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
  v70 = *MEMORY[0x277D85DE8];
  v67 = a5;
  v66 = a6;
  v64 = 0;
  v62 = 32;
  if (a5 >= a6)
  {
    return 0;
  }

  v8 = a6 - a5;
  if ((a6 - a5) > 127)
  {
    return 0;
  }

  v65 = 0;
  cstdlib_strncpy(__dst, (a7 + a5), a6 - a5);
  v16 = &__dst[v8];
  *v16 = 0;
  oneword_ReplaceAllCharactersInOrthography(__dst, v16, 0x23u, 45);
  v9 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), "normal", __dst, 128);
  if ((v9 & 0x80000000) == 0)
  {
    cstdlib_strcpy(*(a1 + 240), "");
    cstdlib_strcpy(*(a1 + 248), "");
    cstdlib_strcpy(*(a1 + 256), "");
    cstdlib_strcpy(*(a1 + 264), "");
    if (cstdlib_strlen(__dst))
    {
      if (cstdlib_strlen(__dst) == 1)
      {
        appended = oneword_TranscribeAcronym(a1, "normal", __dst, &v62, v69);
      }

      else
      {
        v32 = mde_stemafx_Main(a1, "normal", __dst, v17, v18, v19, v20, v21);
        if ((v32 & 0x80000000) != 0)
        {
          return v32;
        }

        cstdlib_strcpy(v69, "one_word");
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v42, v43, v44, v69);
        v45 = *(*(a1 + 104) + 120);
        v46 = *(a1 + 160);
        v47 = cstdlib_strlen(v46);
        v32 = v45(*(a1 + 88), *(a1 + 96), 0, v46, v47);
        if ((v32 & 0x80000000) != 0)
        {
          return v32;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v48, v49, v50, v69);
        v51 = *(*(a1 + 104) + 120);
        v52 = *(a1 + 168);
        v53 = cstdlib_strlen(v52);
        v32 = v51(*(a1 + 88), *(a1 + 96), 2, v52, v53);
        if ((v32 & 0x80000000) != 0)
        {
          return v32;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v54, v55, v56, v69);
        v57 = *(*(a1 + 104) + 120);
        v58 = *(a1 + 176);
        v59 = cstdlib_strlen(v58);
        v32 = v57(*(a1 + 88), *(a1 + 96), 3, v58, v59);
        if ((v32 & 0x80000000) != 0)
        {
          return v32;
        }

        if ((ssftmap_Find(*(a1 + 568), "normal", &v65) & 0x80000000) != 0)
        {
          v60 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v69);
          if ((v60 & 0x80000000) != 0)
          {
            v9 = v60;
            goto LABEL_32;
          }

          *v61 = 0;
          v63 = 0;
          appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v61, &v63);
          if ((appended & 0x80000000) == 0)
          {
            *(*v61 + v63) = 0;
            appended = oneword_AppendPhon(a1, *v61, "", "", 0, 1);
          }
        }

        else
        {
          appended = dt_Main(a1, 0, a2, a3, *(v65 + 16), "normal");
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
      if (!cstdlib_strcmp(*(a1 + 240), ""))
      {
        goto LABEL_32;
      }

      v23 = *(a1 + 240);
      v24 = cstdlib_strlen(v23);
      v23[v24 - cstdlib_strlen("◄")] = 0;
      v25 = *(a1 + 240);
      v26 = cstdlib_strlen("◄");
      v27 = *(a1 + 240);
      v28 = cstdlib_strlen(v27);
      if (oneword_CountPhoneticWords((v25 + v26), &v27[v28]) != 1)
      {
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mismatch between number of ortographic words (%d) and phonetic words (%d) in DT(%s)", v29, v30, v31, 1);
        goto LABEL_32;
      }

      v61[0] = 16;
      v32 = (*(*(a1 + 56) + 80))(a2, a3, a4, &v64 + 2);
      if ((v32 & 0x80000000) == 0)
      {
        v32 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v64), 0, 1, v61, &v64);
        if ((v32 & 0x80000000) == 0)
        {
          v32 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v64), 1, 1, &v67, &v64);
          if ((v32 & 0x80000000) == 0)
          {
            v32 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v64), 2, 1, &v66, &v64);
            if ((v32 & 0x80000000) == 0)
            {
              v33 = *(*(a1 + 56) + 160);
              v34 = HIWORD(v64);
              v35 = *(a1 + 240);
              v36 = cstdlib_strlen("◄");
              LOWORD(v35) = cstdlib_strlen((v35 + v36)) + 1;
              v37 = *(a1 + 240);
              v38 = cstdlib_strlen("◄");
              v32 = v33(a2, a3, v34, 3, v35, v37 + v38, &v64);
              if ((v32 & 0x80000000) == 0)
              {
                v32 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v64), 5, 2, "*", &v64);
                if ((v32 & 0x80000000) == 0)
                {
                  v32 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v64), 6, 2, "*", &v64);
                  if ((v32 & 0x80000000) == 0)
                  {
                    v63 = 1;
                    v32 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v64), 7, 1, &v63, &v64);
                    if ((v32 & 0x80000000) == 0)
                    {
                      v39 = *(*(a1 + 56) + 160);
                      v40 = HIWORD(v64);
                      v41 = cstdlib_strlen(*(a1 + 1208));
                      v9 = v39(a2, a3, v40, 9, (v41 + 1), *(a1 + 1208), &v64);
                      if ((v9 & 0x80000000) != 0)
                      {
                        return v9;
                      }

                      if (a8)
                      {
                        *a8 = HIWORD(v64);
                      }

LABEL_32:
                      if ((v9 & 0x1FFF) == 0x10A || (v9 & 0x1FFF) == 4)
                      {
                        return 0;
                      }

                      return v9;
                    }
                  }
                }
              }
            }
          }
        }
      }

      return v32;
    }
  }

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
  v22 = cstdlib_strstr(a3, ";loader=broker");
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

uint64_t oneword_Lid(uint64_t a1, _DWORD *a2)
{
  v33 = 0;
  v32 = -1;
  v31 = 0;
  v4 = cstdlib_strlen(*(a1 + 160));
  v8 = v4;
  v9 = 0;
  v10 = v4;
  if (!v4)
  {
LABEL_16:
    if (*(a1 + 932))
    {
      *a2 = 1;
      v20 = *(*a1 + 32);
      v21 = "LID found ENX context";
    }

    else
    {
      if (v10)
      {
        v22 = 0;
        v23 = v10 - 1;
        do
        {
          v24 = *(a1 + 160);
          if (v22)
          {
            v25 = v22;
            v26 = *(v24 + v22 - 1);
          }

          else
          {
            v25 = 0;
            v26 = 95;
          }

          v34 = v26;
          v27 = (v24 + v25);
          v35 = *v27;
          v28 = v23 ? v27[1] : 95;
          v36 = v28;
          v37 = 0;
          v9 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "lidenx", &v34, &v33, &v32, &v31);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          if (v32)
          {
            *a2 = 1;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX trigram", v5, v6, v7, v30);
            goto LABEL_20;
          }

          ++v22;
          --v23;
        }

        while (v22 < v8);
      }

      *a2 = 0;
      v20 = *(*a1 + 32);
      v21 = "LID default to LNG";
    }

    log_OutText(v20, "FE_ONEWORD", 5, 0, v21, v5, v6, v7, v30);
    return v9;
  }

  v11 = v4;
  do
  {
    v12 = *(*(a1 + 160) + v9);
    if (v12 >= 0x7B)
    {
      *a2 = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found diacritic", v5, v6, v7, v30);
      v9 = 0;
LABEL_35:
      *(a1 + 932) = 0;
      return v9;
    }

    if (cstdlib_strchr((a1 + 944), v12))
    {
      *a2 = 1;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX character", v5, v6, v7, v30);
      v9 = 0;
LABEL_20:
      *(a1 + 932) = 1;
      return v9;
    }

    LODWORD(v9) = v9 + 1;
  }

  while (v9 < v11);
  v13 = 0;
  v14 = v10 - 1;
  while (1)
  {
    v15 = *(a1 + 160);
    if (v13)
    {
      v16 = v13;
      v17 = *(v15 + v13 - 1);
    }

    else
    {
      v16 = 0;
      v17 = 95;
    }

    v34 = v17;
    v18 = (v15 + v16);
    v35 = *v18;
    v19 = v14 ? v18[1] : 95;
    v36 = v19;
    v37 = 0;
    v9 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "lidlng", &v34, &v33, &v32, &v31);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    if (v32)
    {
      *a2 = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found LNG trigram", v5, v6, v7, v30);
      goto LABEL_35;
    }

    ++v13;
    --v14;
    if (v13 >= v11)
    {
      goto LABEL_16;
    }
  }
}

uint64_t oneword_NonDctDpsMde(void *a1, unsigned int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v43 = a5;
  v41 = 0;
  v42 = 0;
  __s = 0;
  v39 = 0;
  v38 = 0;
  cstdlib_strcpy(__dst, "nondctbased_mde");
  v16 = cstdlib_strlen(__dst);
  result = (*(a1[7] + 168))(a7, a8, v11, 0, 1, &v42, &v41);
  if ((result & 0x80000000) == 0)
  {
    if (v11)
    {
      v18 = v42;
      if (v42 != 3)
      {
        v36 = a2 + 128;
        v19 = a3 - a2;
        v34 = v16;
        v35 = v16 + 2;
        v20 = 1;
        while (1)
        {
          if (!v18)
          {
            result = (*(a1[7] + 168))(a7, a8, v11, 1, 1, &v39, &v41);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[7] + 168))(a7, a8, v43, 2, 1, &v38, &v41);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v39 + 1 < v38 && v36 > v38)
            {
              v24 = (v19 + v39);
              v25 = *(v19 + v38);
              *(v19 + v38) = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v21, v22, v23, __dst);
              v26 = *(a1[13] + 120);
              v27 = cstdlib_strlen(v24);
              result = v26(a1[11], a1[12], 0, v24, v27);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              *(v19 + v38) = v25;
              if (cstdlib_strcmp(a4, "normal") && v35 + cstdlib_strlen(a4) <= 0x7F)
              {
                cstdlib_strcat(__dst, "_");
                cstdlib_strcat(__dst, a4);
              }

              if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
              {
                __dst[v34] = 0;
                if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
                {
                  return 0;
                }
              }

              result = (*(a1[13] + 128))(a1[11], a1[12], 0, &__s, &v39 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              __s[HIWORD(v39)] = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v28, v29, v30, __dst);
              v31 = cstdlib_strchr(__s, 43);
              if (v31)
              {
                break;
              }
            }
          }

LABEL_6:
          result = (*(a1[7] + 120))(a7, a8, v43, &v43);
          if ((result & 0x80000000) == 0)
          {
            if (v43)
            {
              result = (*(a1[7] + 168))(a7, a8);
              if ((result & 0x80000000) == 0)
              {
                LOWORD(v11) = v43;
                if (v43)
                {
                  v18 = v42;
                  if (v42 != 3)
                  {
                    continue;
                  }
                }
              }
            }
          }

          return result;
        }

        v32 = v31;
        v33 = v20 == 0;
        while (1)
        {
          v37 = v39 + v32 - __s;
          result = (*(a1[7] + 160))(a7, a8, v43, 2, 1, &v37, &v41 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 80))(a7, a8, v43, &v43);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v42 = 0;
          result = (*(a1[7] + 160))(a7, a8, v43, 0, 1, &v42, &v41 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v43, 1, 1, &v37, &v41 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v43, 2, 1, &v38, &v41 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          LOWORD(v39) = v37;
          if (!v33)
          {
            *a6 = v43;
          }

          __s = v32 + 1;
          v32 = cstdlib_strchr(v32 + 1, 43);
          v20 = 0;
          v33 = 1;
          if (!v32)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t oneword_DpsMde(void *a1, const char *a2, const char *a3, uint64_t a4, const char *a5, __int16 a6, unsigned __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v139 = *MEMORY[0x277D85DE8];
  v133 = a6;
  v132 = a7;
  *&__c[3] = 0;
  *&__c[1] = 0;
  __c[0] = 0;
  v130 = 8;
  v129 = 0;
  v128 = 1;
  __s1 = 0;
  __s = 0;
  v125 = 0;
  cstdlib_strcpy(__dst, "dctbased_mde");
  v16 = cstdlib_strlen(__dst);
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v17, v18, v19, __dst);
  v20 = *(a1[13] + 120);
  v21 = cstdlib_strlen(a2);
  v22 = v20(a1[11], a1[12], 0, a2, v21);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v23, v24, v25, __dst);
  v26 = *(a1[13] + 120);
  v27 = cstdlib_strlen(a3);
  v22 = v26(a1[11], a1[12], 1, a3, v27);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (cstdlib_strcmp(a5, "normal") && cstdlib_strlen(a5) + v16 + 2 <= 0x7F)
  {
    cstdlib_strcat(__dst, "_");
    cstdlib_strcat(__dst, a5);
  }

  if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
  {
    __dst[v16] = 0;
    if (((*(a1[13] + 80))(a1[11], a1[12], __dst) & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v22 = (*(a1[13] + 128))(a1[11], a1[12], 0, &__s, &v125);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  __s[v125] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v28, v29, v30, __dst);
  v31 = (*(a1[13] + 128))(a1[11], a1[12], 1, &__s1, &v125);
  if ((v31 & 0x80000000) == 0)
  {
    v123 = a3;
    __s2 = a5;
    memset(v137, 0, 80);
    memset(v135, 0, sizeof(v135));
    memset(v136, 0, sizeof(v136));
    memset(v134, 0, sizeof(v134));
    v32 = __s;
    if (*__s == 123)
    {
      *__s = 0;
      v137[0] = v32 + 1;
      v137[1] = "0";
      v136[0] = "0";
      v136[1] = v32 + 1;
      v33 = cstdlib_strchr(__s + 1, 125);
      if (v33)
      {
        *v33 = 0;
        v32 = v33 + 1;
        v34 = cstdlib_strchr(v33 + 1, 123);
        v121 = 2;
        if (!v34)
        {
          v35 = 0;
LABEL_21:
          v117 = 1;
LABEL_24:
          v124 = 0;
          v40 = v35;
          v119 = v35;
          while (!v40)
          {
LABEL_37:
            ++v124;
            v40 = v119;
            if (v121 <= v124)
            {
              return v31;
            }
          }

          v41 = v136[v124];
          v42 = v134;
          v43 = v135;
          while (1)
          {
            if (cstdlib_strcmp(v41, "0") || cstdlib_strcmp(*v42, "0"))
            {
              v44 = v137[v124];
              if (cstdlib_strcmp(v44, "0"))
              {
                cstdlib_strcpy(__s1, v44);
                cstdlib_strcat(__s1, v32);
              }

              else
              {
                cstdlib_strcpy(__s1, v32);
              }

              v45 = *v43;
              if (cstdlib_strcmp(*v43, "0"))
              {
                cstdlib_strcat(__s1, v45);
              }

              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", v46, v47, v48, __s1);
              v31 = (*(a1[10] + 152))(a1[8], a1[9], a4, __s1, &__c[3], &__c[1], __c, *(a1 + 556));
              if ((v31 & 0x80000000) != 0)
              {
                return v31;
              }

              if (*&__c[1])
              {
                break;
              }
            }

            ++v42;
            ++v43;
            if (!--v40)
            {
              goto LABEL_37;
            }
          }

          v49 = 0;
          v116 = 0;
          v50 = a10;
          while (1)
          {
            v51 = *(*&__c[3] + 8 * v49);
            v52 = cstdlib_strchr(v51, __c[0]);
            if (!v52)
            {
              break;
            }

            *v52 = 0;
            v57 = cstdlib_strchr(v52 + 1, __c[0]);
            v58 = v57;
            if (!v57)
            {
              goto LABEL_50;
            }

            *v57 = 0;
            v58 = v57 + 1;
            v59 = cstdlib_strchr(v57 + 1, __c[0]);
            v60 = v59;
            if (!v59)
            {
              goto LABEL_51;
            }

            *v59 = 0;
            v60 = v59 + 1;
            v61 = cstdlib_strchr(v59 + 1, __c[0]);
            if (!v61)
            {
              goto LABEL_51;
            }

            *v61 = 0;
            v122 = v61 + 1;
            v62 = cstdlib_strchr(v61 + 1, __c[0]);
            if (!v62)
            {
              goto LABEL_52;
            }

            *v62 = 0;
            v120 = v62 + 1;
            v63 = cstdlib_strchr(v62 + 1, __c[0]);
            v64 = v63;
            if (v63)
            {
              *v63 = 0;
              v64 = v63 + 1;
              v65 = cstdlib_strchr(v63 + 1, __c[0]);
              if (v65)
              {
                *v65 = 0;
                v116 = v65 + 1;
                v66 = cstdlib_strchr(v65 + 1, __c[0]);
                if (v66)
                {
                  *v66 = 0;
                }
              }
            }

LABEL_53:
            v67 = *(*a1 + 32);
            if (!v51)
            {
              v31 = 2310021127;
              log_OutPublic(v67, "FE_ONEWORD", 34001, 0, v53, v54, v55, v56, v115);
              return v31;
            }

            log_OutText(v67, "FE_ONEWORD", 5, 0, "G2P Validating %s", v54, v55, v56, v51);
            if (v58 && cstdlib_strcmp(v58, "") && !cstdlib_strstr(v58, __s2))
            {
              v97 = "G2P Domain validation not OK";
              goto LABEL_78;
            }

            if (v64 && !cstdlib_strcmp(v64, "0"))
            {
              v97 = "G2P MDE usage validation not OK";
LABEL_78:
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, v97, v68, v69, v70, v115);
              goto LABEL_94;
            }

            v71 = v133;
            *a11 = v71 + cstdlib_strlen(v123);
            v22 = (*(a1[7] + 88))(a9, v50, v132, &v132);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            v22 = (*(a1[7] + 160))(a9, v50, v132, 0, 1, &v130, &v129);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            v22 = (*(a1[7] + 160))(a9, v50, v132, 1, 1, &v133, &v129);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            v22 = (*(a1[7] + 160))(a9, v50, v132, 2, 1, a11, &v129);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            if ((v117 & 1) == 0)
            {
              v72 = cstdlib_strlen(v51);
              if (v72 + cstdlib_strlen(v34) - 124 <= 0xFFFFFFFFFFFFFF7ELL)
              {
                v73 = *(*a1 + 8);
                v74 = a1[30];
                v75 = cstdlib_strlen(v51);
                v76 = cstdlib_strlen(v34);
                v77 = heap_Realloc(v73, v74, (v75 + v76 + 5));
                if (!v77)
                {
                  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v78, v79, v80, v81, v115);
                  return 2310021130;
                }

                a1[30] = v77;
                v50 = a10;
              }
            }

            v82 = v136[v124];
            v83 = cstdlib_strcmp(v82, "0");
            v84 = a1[30];
            if (v83)
            {
              cstdlib_strcpy(v84, v82);
              cstdlib_strcat(a1[30], "◄");
            }

            else
            {
              cstdlib_strcpy(v84, "◄");
            }

            cstdlib_strcat(a1[30], v51);
            cstdlib_strcat(a1[30], "◄");
            v85 = *v42;
            if (cstdlib_strcmp(*v42, "0"))
            {
              cstdlib_strcat(a1[30], v85);
            }

            v86 = *(a1[7] + 160);
            v87 = v132;
            v88 = cstdlib_strlen(a1[30]);
            v22 = v86(a9, v50, v87, 3, (v88 + 1), a1[30], &v129);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            if (v60)
            {
              v89 = cstdlib_strcmp(v60, "");
              v90 = *(a1[7] + 160);
              v91 = v132;
              if (v89)
              {
                v92 = (cstdlib_strlen(v60) + 1);
                v93 = a9;
                v94 = v50;
                v95 = v91;
                v96 = v60;
              }

              else
              {
                v93 = a9;
                v94 = v50;
                v95 = v132;
                v92 = 2;
                v96 = "*";
              }

              v22 = v90(v93, v94, v95, 5, v92, v96, &v129);
              if ((v22 & 0x80000000) != 0)
              {
                return v22;
              }
            }

            if (v122)
            {
              v98 = cstdlib_strcmp(v122, "");
              v99 = *(a1[7] + 160);
              v100 = v132;
              if (v98)
              {
                v101 = (cstdlib_strlen(v122) + 1);
                v102 = a9;
                v103 = v50;
                v104 = v100;
                v105 = v122;
              }

              else
              {
                v102 = a9;
                v103 = v50;
                v104 = v132;
                v101 = 2;
                v105 = "*";
              }

              v22 = v99(v102, v103, v104, 6, v101, v105, &v129);
              if ((v22 & 0x80000000) != 0)
              {
                return v22;
              }
            }

            v106 = v120 ? LH_atou(v120) : 1;
            v128 = v106;
            v22 = (*(a1[7] + 160))(a9, v50, v132, 7, 1, &v128, &v129);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            v107 = *(a1[7] + 160);
            v108 = v132;
            if (v116)
            {
              v109 = (cstdlib_strlen(v116) + 1);
              v110 = a9;
              v111 = v50;
              v112 = v108;
              v113 = v116;
            }

            else
            {
              v110 = a9;
              v111 = v50;
              v112 = v132;
              v109 = 1;
              v113 = "";
            }

            v31 = v107(v110, v111, v112, 9, v109, v113, &v129);
            if ((v31 & 0x80000000) != 0)
            {
              return v31;
            }

LABEL_94:
            if (++v49 >= *&__c[1])
            {
              return v31;
            }
          }

          v58 = 0;
LABEL_50:
          v60 = 0;
LABEL_51:
          v122 = 0;
LABEL_52:
          v120 = 0;
          v64 = 0;
          goto LABEL_53;
        }

LABEL_16:
        v35 = 0;
        while (*v34 != 125)
        {
          v37 = v35;
          v135[v35] = v34 + 1;
          *v34 = 0;
          v38 = cstdlib_strchr(v34 + 1, 43);
          if (!v38)
          {
            return v31;
          }

          ++v35;
          *v38 = 0;
          v39 = v38 + 1;
          *(v134 + v37) = v39;
          v34 = cstdlib_strchr(v39, 44);
          if (!v34)
          {
            v34 = cstdlib_strchr(*(v134 + v35 - 1), 125);
            if (!v34)
            {
              goto LABEL_21;
            }
          }
        }

        v117 = 0;
        *v34 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v137[0] = "0";
      v136[0] = "0";
      v36 = cstdlib_strchr(__s, 123);
      if (v36)
      {
        v34 = v36;
        v121 = 1;
        goto LABEL_16;
      }
    }
  }

  return v31;
}

uint64_t crf_mde_seg_get_broker_string(uint64_t a1, void *a2, char **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = "";
  __s2 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__s1 = 0u;
  v21 = 0u;
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v18);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  cstdlib_strcat(__s1, "crf_mde_seg_");
  cstdlib_strcat(__s1, __s2);
  cstdlib_strcat(__s1, "_");
  cstdlib_strcat(__s1, v18);
  v7 = heap_Calloc(*(a1 + 8), 1, 1024);
  *a2 = v7;
  if (v7 && (v12 = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, v7, 0x400uLL), v13 = *(a1 + 8), v14 = cstdlib_strlen(__s2), v15 = heap_Calloc(v13, 1, v14 + 1), (*a3 = v15) != 0))
  {
    cstdlib_strcpy(v15, __s2);
  }

  else
  {
    v12 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v8, v9, v10, v11, v17);
  }

  return v12;
}

uint64_t getUmlautMap(uint64_t a1, char *__s1, uint64_t *a3, unsigned __int16 *a4)
{
  v6 = __s1;
  v8 = cstdlib_strstr(__s1, ",");
  for (i = 1; v8; v8 = cstdlib_strstr(v8 + 1, ","))
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
        v17 = cstdlib_strchr(v6, 44);
        v18 = v17;
        if (v17)
        {
          *v17 = 0;
        }

        v19 = cstdlib_strchr(v6, 59);
        if (v19)
        {
          *v19 = 0;
          v20 = v19 + 1;
          v21 = *(a1 + 8);
          v22 = cstdlib_strlen(v6);
          *(*a3 + j) = heap_Calloc(v21, 1, v22 + 1);
          v23 = *(*a3 + j);
          if (!v23)
          {
            goto LABEL_18;
          }

          cstdlib_strcpy(v23, v6);
          v24 = *(a1 + 8);
          v25 = cstdlib_strlen(v20);
          *(*a3 + j + 8) = heap_Calloc(v24, 1, v25 + 1);
          v26 = *(*a3 + j + 8);
          if (!v26)
          {
            goto LABEL_18;
          }

          cstdlib_strcpy(v26, v20);
          if (v18)
          {
            v27 = v10 - 16 == j;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            v6 = v18 + 1;
          }
        }
      }
    }

    v28 = 0;
    *a4 = i;
  }

  else
  {
LABEL_18:
    v28 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v12, v13, v14, v15, v30);
  }

  return v28;
}

uint64_t crf_mde_seg_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  v61 = 0;
  v60 = 0;
  __s1 = 0;
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

  fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegumlautmap", &__s1, 0, "STR");
  v23 = __s1;
  if ((fecfgparam_string & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  if (!__s1 || (UmlautMap = getUmlautMap(a5, __s1, (a10 + 96), (a10 + 104)), (UmlautMap & 0x80000000) == 0))
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
  v7 = 0u;
  v8 = 0u;
  cstdlib_memset(&v7, 0, 0x20uLL);
  result = crf_mde_seg_parse_params(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = DWORD1(v8);
    }

    crf_free_conf(a1, &v7);
    return 0;
  }

  return result;
}

uint64_t crf_mde_seg_get_fecfgparam_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6, _DWORD *a7, char *__s1)
{
  *&__c[1] = -1;
  if (!cstdlib_strcmp(__s1, "BOOL"))
  {
    *a7 = 0;
  }

  if (!cstdlib_strcmp(__s1, "STR"))
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
    v22 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v22)
    {
      *v22 = 0;
    }

    if (!cstdlib_strcmp(__s1, "STR"))
    {
      v24 = *(a1 + 8);
      v25 = cstdlib_strlen(**&__c[3]);
      v26 = heap_Calloc(v24, 1, (v25 + 1));
      *a6 = v26;
      if (v26)
      {
        cstdlib_strcpy(v26, **&__c[3]);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde seg param %s = %s", v27, v28, v29, a5);
        return v21;
      }

      goto LABEL_6;
    }

    if (!cstdlib_strcmp(__s1, "BOOL"))
    {
      *a7 = 0;
      if (!cstdlib_strcmp(**&__c[3], "1"))
      {
        *a7 = 1;
      }
    }
  }

  return v21;
}

uint64_t crf_mde_seg_parse_params(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 10) = 0;
  v3 = (a3 + 10);
  *(a3 + 12) = 0;
  v65 = (a3 + 12);
  *(a3 + 16) = 0;
  v64 = (a3 + 16);
  *(a3 + 20) = 1;
  v63 = (a3 + 20);
  if (!*(a2 + 40))
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  while (1)
  {
    v8 = cstdlib_strcmp(*(*(v5 + 32) + 16 * v7), "features");
    v9 = *(v5 + 32);
    if (!v8)
    {
      break;
    }

    v10 = cstdlib_strcmp(*(v9 + 16 * v7), "settings");
    v11 = *(v5 + 32);
    if (v10)
    {
      if (!cstdlib_strcmp(*(v11 + 16 * v7), "featureparam"))
      {
        v12 = *(*(a2 + 32) + 16 * v7 + 8);
        v13 = cstdlib_strlen(v12);
        v14 = v13;
        if (v13)
        {
          v15 = v13;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
LABEL_8:
          v20 = 0;
          while (2)
          {
            v21 = !v20;
            v22 = v18;
            while (!v21)
            {
              if (v12[v22] != 32)
              {
                v20 = 1;
                goto LABEL_20;
              }

              v12[v22] = 0;
              if (!v17)
              {
                v18 = v22 + 1;
                v17 = 1;
                v16 = v19;
                if ((v22 + 1) < v15)
                {
                  goto LABEL_8;
                }

                goto LABEL_75;
              }

              result = crf_mde_seg_set_featureparam_value(a1, v12, v16, v19, (a3 + 24));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = 0;
              ++v22;
              v21 = 1;
              if (v22 >= v14)
              {
                goto LABEL_76;
              }
            }

            v24 = v12[v22];
            v20 = v24 != 32;
            if (v24 != 32)
            {
              v19 = v22;
            }

LABEL_20:
            v18 = v22 + 1;
            if ((v22 + 1) < v15)
            {
              continue;
            }

            break;
          }

          if (v17 != 1)
          {
            goto LABEL_76;
          }

LABEL_75:
          result = crf_mde_seg_set_featureparam_value(a1, v12, v16, v19, (a3 + 24));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          do
          {
LABEL_76:
            if (!*v12)
            {
              *v12 = 32;
            }

            ++v12;
            --v14;
          }

          while (v14);
        }
      }
    }

    else
    {
      v35 = *(v11 + 16 * v7 + 8);
      v36 = cstdlib_strlen(v35);
      v37 = heap_Alloc(*(a1 + 8), v36 + 1);
      if (!v37)
      {
        goto LABEL_81;
      }

      v42 = v37;
      cstdlib_strcpy(v37, v35);
      if (v36)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = v36;
        v47 = -v36;
        v48 = 0;
LABEL_38:
        v49 = 0;
        while (2)
        {
          v50 = !v49;
          ++v43;
          while (1)
          {
            v51 = *(v42 + v43 - 1);
            if (v50)
            {
              break;
            }

            if (v51 != 32)
            {
              v49 = 1;
              goto LABEL_49;
            }

            *(v42 + v43 - 1) = 0;
            if (!v45)
            {
              v45 = 1;
              v44 = v48;
              if (v47 + v43)
              {
                goto LABEL_38;
              }

              goto LABEL_66;
            }

            crf_mde_seg_set_param_value(a1, v42, v44, v48, v3, v65, v64, v63);
            v45 = 0;
            ++v43;
            v50 = 1;
            if (v47 + v43 == 1)
            {
              goto LABEL_67;
            }
          }

          v49 = v51 != 32;
          if (v51 != 32)
          {
            v48 = v43 - 1;
          }

LABEL_49:
          if (v47 + v43)
          {
            continue;
          }

          break;
        }

        if (v45 == 1)
        {
LABEL_66:
          crf_mde_seg_set_param_value(a1, v42, v44, v48, v3, v65, v64, v63);
        }

LABEL_67:
        v61 = v42;
        do
        {
          if (!*v61)
          {
            *v61 = 32;
          }

          ++v61;
          --v46;
        }

        while (v46);
      }

      heap_Free(*(a1 + 8), v42);
    }

LABEL_72:
    ++v7;
    v5 = a2;
    if (v7 >= *(a2 + 40))
    {
      return 0;
    }
  }

  v25 = *(v9 + 16 * v7 + 8);
  v26 = cstdlib_strlen(v25);
  v27 = v26;
  *(a3 + 8) = 0;
  if (v26)
  {
    v28 = 0;
    v29 = 0;
    v30 = v26;
    v31 = v25;
    do
    {
      v32 = *v31++;
      v33 = v32 == 32;
      if (v29)
      {
        v29 = !v33;
      }

      else if (v33)
      {
        v29 = 0;
      }

      else
      {
        *(a3 + 8) = ++v28;
        v29 = 1;
      }

      --v30;
    }

    while (v30);
    v34 = 8 * v28 + 8;
  }

  else
  {
    v34 = 8;
  }

  v52 = heap_Calloc(*(a1 + 8), 1, v34);
  *a3 = v52;
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    do
    {
      v57 = v56;
      v58 = v25[v56];
      if (v58 == 32)
      {
        LOBYTE(v58) = 0;
        v59 = 0;
        v53 = 0;
        v60 = *(*a3 + 8 * v55++);
      }

      else
      {
        if (v53)
        {
          v60 = *(*a3 + 8 * v55);
        }

        else
        {
          *(*a3 + 8 * v55) = heap_Alloc(*(a1 + 8), 64);
          v60 = *(*a3 + 8 * v55);
          if (!v60)
          {
            goto LABEL_81;
          }

          LOBYTE(v58) = v25[v57];
        }

        v59 = v54 + 1;
        v53 = 1;
      }

      *(v60 + v54) = v58;
      v56 = v57 + 1;
      v54 = v59;
    }

    while (v57 + 1 <= v27);
    goto LABEL_72;
  }

LABEL_81:
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v38, v39, v40, v41, a2);
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
  v11 = cstdlib_strlen(__s);
  __s2 = a4;
  v12 = cstdlib_strlen(a4);
  if (a5)
  {
    v13 = cstdlib_strlen(a5);
    v31 = cstdlib_strlen(a6);
  }

  else
  {
    v13 = 0;
    v31 = 0;
  }

  v32 = a1;
  v33 = a6;
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
      if (v12 + v15 < v14 && !cstdlib_strncmp(v19, __s2, v12))
      {
        cstdlib_strncat(a3[v17++], &__s[v16], v15 - v16);
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

  cstdlib_strncat(a3[v17], &__s[v16], (v14 - v16));
  if (a5 && v17 != 0xFFFF)
  {
    v20 = (v17 + 1);
    v21 = 28;
    do
    {
      v22 = *a3;
      if (*(*(v32 + 8) + v21))
      {
        cstdlib_strcat(v22, a5);
        v23 = *a3;
        v24 = cstdlib_strlen(*a3);
        cstdlib_memmove(&v23[v13], v23, v24 + v13);
        v25 = *a3;
        v26 = a5;
        v27 = v13;
      }

      else
      {
        cstdlib_strcat(v22, v33);
        v28 = *a3;
        v29 = cstdlib_strlen(*a3);
        cstdlib_memmove(&v28[v31], v28, v29 + v31);
        v25 = *a3;
        v26 = v33;
        v27 = v31;
      }

      cstdlib_memcpy(v25, v26, v27);
      ++a3;
      v21 += 48;
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t crf_mde_seg_label(uint64_t a1, char *__s, uint64_t a3, const char *a4, unsigned int a5, int a6, _WORD *a7, unsigned __int16 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22, uint64_t *a23, uint64_t *a24, uint64_t *a25, char **a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t *a30, char *a31, char *a32, char *a33, char *a34, char *a35, int a36)
{
  v417 = *MEMORY[0x277D85DE8];
  v413[0] = 0;
  v413[1] = 0;
  v411 = 0;
  v412 = 0;
  v410 = 0;
  v400 = cstdlib_strlen(__s);
  v42 = cstdlib_strlen(a4);
  v396 = cstdlib_strlen(a4);
  v407 = 0;
  v408 = 0;
  v406 = 0;
  __s1[1] = 0;
  __s1[0] = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v409 = 0;
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
      v51 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v51)
      {
        *v51 = 0;
      }

      v49 = cstdlib_atoi(**&__c[3]);
    }
  }

  v381 = v49;
  v386 = a5;
  v52 = crf_mde_utils_dynstr_init(a1, __s1, (v42 + 16), 16);
  if ((v52 & 0x80000000) != 0)
  {
    v48 = v52;
    goto LABEL_15;
  }

  v48 = crf_mde_utils_dynstr_add(a1, __s1, a4, 2);
  if ((v48 & 0x80000000) != 0)
  {
LABEL_15:
    v387 = v42;
    v388 = 0;
    LOWORD(v57) = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v383 = 0;
    v385 = 0;
    v62 = 0;
    v397 = 0;
    v391 = 0;
    v393 = 0;
    v63 = 0;
    goto LABEL_16;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Doing CRF MDE segmentation for token %s", v45, v46, v47, __s1[0]);
  v53 = *(v50 + 88);
  if (v53 && cstdlib_strstr(__s1[0], v53))
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "found %s in token, skip CRF MDE segmentation", v54, v55, v56, *(v50 + 88));
    return v48;
  }

  v378 = a6;
  v377 = a8;
  if (!*(v50 + 96) || (v403 = 0, v92 = Utf8_LengthInBytes(__s1[0], 1), !v42))
  {
    v58 = 0;
    LOWORD(v57) = 0;
    goto LABEL_106;
  }

  v93 = v92;
  v375 = a7;
  v57 = 0;
  v94 = 0;
  do
  {
    v57 += isUmlaut(&__s1[0][v94], v93, *(v50 + 96), *(v50 + 104), &v403);
    v94 += v93;
    v93 = Utf8_LengthInBytes(&__s1[0][v94], 1);
  }

  while (v94 < v42);
  if (v57)
  {
    v416 = 0;
    *v415 = 0;
    v95 = heap_Calloc(*(a1 + 8), 1, 4 * v57);
    if (!v95)
    {
      goto LABEL_2;
    }

    v58 = v95;
    v96 = crf_mde_utils_dynstr_init(a1, v415, (v42 + 16), 16);
    if ((v96 & 0x80000000) != 0)
    {
      v48 = v96;
      v387 = v42;
    }

    else
    {
      v379 = v58;
      v97 = Utf8_LengthInBytes(__s1[0], 1);
      v98 = 0;
      v99 = 0;
      do
      {
        if (isUmlaut(&__s1[0][v99], v97, *(v50 + 96), *(v50 + 104), &v403))
        {
          v100 = v403;
          cstdlib_strcpy(__dst, *(*(v50 + 96) + 16 * v403 + 8));
          v101 = crf_mde_utils_dynstr_add(a1, v415, __dst, 1);
          if ((v101 & 0x80000000) != 0)
          {
            return v101;
          }

          v102 = (v379 + 4 * v98);
          *v102 = v99;
          v102[1] = cstdlib_strlen(*(*(v50 + 96) + 16 * v100 + 8));
          ++v98;
        }

        else
        {
          cstdlib_strncpy(__dst, &__s1[0][v99], v97);
          __dst[v97] = 0;
          v101 = crf_mde_utils_dynstr_add(a1, v415, __dst, 1);
          if ((v101 & 0x80000000) != 0)
          {
            return v101;
          }
        }

        v99 += v97;
        v97 = Utf8_LengthInBytes(&__s1[0][v99], 1);
      }

      while (v99 < v42);
      crf_mde_utils_dynstr_free(a1, __s1);
      v42 = cstdlib_strlen(*v415);
      v103 = crf_mde_utils_dynstr_init(a1, __s1, (v42 + 16), 16);
      if ((v103 & 0x80000000) != 0)
      {
        v48 = v103;
        v387 = v42;
        LOWORD(v57) = v98;
      }

      else
      {
        v104 = crf_mde_utils_dynstr_add(a1, __s1, *v415, 2);
        LOWORD(v57) = v98;
        if ((v104 & 0x80000000) == 0)
        {
          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "expanded umlaut token %s", v45, v46, v47, __s1[0]);
          crf_mde_utils_dynstr_free(a1, v415);
          if (v98)
          {
            v108 = 0;
            v109 = v379 + 2;
            do
            {
              v109 += 4;
              log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "umlaut[%d] pos=%d len=%d", v105, v106, v107, v108++);
            }

            while (v98 != v108);
          }

          v58 = v379;
          LOWORD(v57) = v98;
          goto LABEL_105;
        }

        v48 = v104;
        v387 = v42;
      }

      v58 = v379;
    }

    v388 = 0;
    v391 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v383 = 0;
    v385 = 0;
    v62 = 0;
    v397 = 0;
    v393 = 0;
    v63 = 0;
    goto LABEL_16;
  }

  v58 = 0;
  LOWORD(v57) = 0;
LABEL_105:
  a7 = v375;
LABEL_106:
  v110 = cstdlib_strlen(__s1[0]) + v386 == v400;
  v111 = heap_Calloc(*(a1 + 8), 1, 16 * *(v50 + 10) + 8 * v42);
  if (!v111)
  {
    goto LABEL_2;
  }

  v63 = v111;
  v48 = crf_mde_seg_fv_new(a1, *(v50 + 8), v413);
  v387 = v42;
  if ((v48 & 0x80000000) != 0)
  {
    v388 = 0;
    v391 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v383 = 0;
    v385 = 0;
    v62 = 0;
    v397 = 0;
    v393 = 0;
    goto LABEL_16;
  }

  v384 = v110;
  v376 = a7;
  v380 = v58;
  if (*(v50 + 144) == 1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "szSent %s", v45, v46, v47, __s);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "word %s", v112, v113, v114, __s1[0]);
    if (*(v50 + 8))
    {
      v118 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "FEAT[%d] %s", v115, v116, v117, v118++);
      }

      while (v118 < *(v50 + 8));
    }
  }

  if (v42)
  {
    v119 = v57;
    v120 = 0;
    v121 = 0;
    do
    {
      v122 = v121;
      v123 = Utf8_LengthInBytes(&__s1[0][v121], 1);
      v124 = v123;
      v125 = *(v50 + 12);
      if (v125 == 1 || v125 == 2 && ((v126 = *(v50 + 80)) != 0 && !cstdlib_strncmp(&__s1[0][v122], v126, v123) || (v127 = *(v50 + 64)) != 0 && !cstdlib_strncmp(&__s1[0][v122], v127, v124)))
      {
        ++v120;
      }

      v121 = v122 + v124;
    }

    while ((v122 + v124) < v42);
    v128 = v120 + 1;
    LOWORD(v57) = v119;
  }

  else
  {
    v128 = 1;
  }

  v389 = v128;
  v129 = v128;
  v130 = heap_Calloc(*(a1 + 8), 1, 8 * v128);
  if (!v130)
  {
    goto LABEL_2;
  }

  v131 = v130;
  if (*(v50 + 12) == 2)
  {
    v385 = heap_Calloc(*(a1 + 8), 1, 4 * v129);
    if (!v385)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v385 = 0;
    v389 = 0;
  }

  v369 = v378 + v386;
  v393 = v131;
  v370 = v378 + v386 + v396;
  if (!v42)
  {
    v391 = 0;
    v146 = 0;
    v145 = v385;
    goto LABEL_195;
  }

  v397 = 0;
  v132 = 0;
  v133 = 0;
  v392 = v42;
  while (1)
  {
    v134 = v133;
    v135 = Utf8_LengthInBytes(&__s1[0][v133], 1);
    v136 = v135;
    v137 = *(v50 + 12);
    if (v137 != 1)
    {
      break;
    }

    if (v135)
    {
      v142 = v135;
LABEL_148:
      v143 = heap_Calloc(*(a1 + 8), 1, v142 + 1);
      *(v393 + 8 * v397) = v143;
      if (!v143)
      {
        goto LABEL_2;
      }

      cstdlib_strncpy(v143, &__s1[0][v132], v142);
      if (*(v50 + 12) == 2)
      {
        *(v385 + 4 * v397) = 0;
      }

      ++v397;
      v132 = v134 + v136;
      v42 = v387;
    }

LABEL_152:
    v133 = v134 + v136;
    v144 = (v134 + v136);
    if (v144 >= v42)
    {
      if (v144 == v132)
      {
        v391 = 0;
        v131 = v393;
        v145 = v385;
        v146 = v397;
        goto LABEL_195;
      }

      v147 = (v133 - v132);
      v148 = heap_Calloc(*(a1 + 8), 1, v147 + 1);
      v131 = v393;
      *(v393 + 8 * v397) = v148;
      if (!v148)
      {
        goto LABEL_2;
      }

      cstdlib_strncpy(v148, &__s1[0][v132], v147);
      if (*(v50 + 12) == 2)
      {
        v149 = v57;
        v150 = v392 + v386;
        if (v392 + v386 < v400 && (v151 = &__s[v386 + v42], TOK_IS_PUNCT(v151)))
        {
          v152 = *(v50 + 72);
          v145 = v385;
          if (v152 && (v153 = cstdlib_strlen(*(v50 + 72)), !cstdlib_strncmp(v151, v152, v153)))
          {
            v160 = 0;
            v391 = 0;
          }

          else
          {
            v154 = v392 + v386;
            do
            {
              v155 = v154++;
            }

            while (v154 < v400 && TOK_IS_PUNCT(&__s[v154]));
            if (TOK_IS_PUNCT(&__s[v154]))
            {
              v156 = v154;
            }

            else
            {
              v156 = v155;
            }

            v157 = v156 - v150;
            v158 = heap_Calloc(*(a1 + 8), 1, v157 + 2);
            if (!v158)
            {
              goto LABEL_2;
            }

            v159 = v158;
            cstdlib_strncpy(v158, &__s[v150], v157 + 1);
            v391 = v159;
            v159[v157 + 1] = 0;
            v160 = 1;
          }
        }

        else
        {
          v160 = 0;
          v391 = 0;
          v145 = v385;
        }

        *(v145 + 4 * v397) = v160;
        LOWORD(v57) = v149;
        v131 = v393;
      }

      else
      {
        v391 = 0;
        v145 = v385;
      }

      v146 = v397 + 1;
LABEL_195:
      v397 = v146;
      v371 = v146;
      LODWORD(v173) = *(v50 + 10);
      if (*(v50 + 10))
      {
        v174 = 0;
        do
        {
          features = crf_mde_seg_set_padding_features(a1, v174, *(v50 + 8), v413, 1);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_225;
          }

          features = crf_mde_seg_concat_strings(a1, v413, &v412);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_225;
          }

          v63[v174] = v412;
          v412 = 0;
          ++v174;
          v173 = *(v50 + 10);
        }

        while (v174 < v173);
      }

      if (v397)
      {
        v176 = 0;
        do
        {
          features = crf_mde_seg_get_features(a1, v131, v397, v145, v389, v176, *(v50 + 24), *v50, *(v50 + 8), v413, v386 == 0, v384);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_225;
          }

          features = crf_mde_seg_concat_strings(a1, v413, &v412);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_225;
          }

          LODWORD(v173) = *(v50 + 10);
          v63[*(v50 + 10) + v176] = v412;
          v412 = 0;
        }

        while (v397 != ++v176);
      }

      if (v173)
      {
        v177 = 0;
        while (1)
        {
          features = crf_mde_seg_set_padding_features(a1, v177, *(v50 + 8), v413, 0);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          features = crf_mde_seg_concat_strings(a1, v413, &v412);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          v173 = *(v50 + 10);
          v63[v397 + v177 + v173] = v412;
          v412 = 0;
          if (++v177 >= v173)
          {
            goto LABEL_210;
          }
        }

LABEL_225:
        v48 = features;
        v388 = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v383 = 0;
        v62 = 0;
LABEL_226:
        v397 = v371;
        v58 = v380;
        goto LABEL_16;
      }

LABEL_210:
      if (*(v50 + 144) == 1 && v397)
      {
        for (i = 0; i != v397; ++i)
        {
          v179 = *(v50 + 12);
          if (v179 == 1)
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "token[%d] %s", v45, v46, v47, i);
          }

          else if (v179 == 2)
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "token[%d] %s punc = %d", v45, v46, v47, i);
          }
        }

        LODWORD(v173) = *(v50 + 10);
      }

      v48 = crf_Process(*(v50 + 40), v63, v397 + 2 * v173, &v411, &v410);
      v58 = v380;
      if ((v48 & 0x80000000) == 0)
      {
        if (*(v50 + 144) == 1)
        {
          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "results : %d best", v45, v46, v47, *(v50 + 20));
          if (!v410)
          {
            goto LABEL_293;
          }

          v180 = 0;
          do
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s ==> _%s_", v45, v46, v47, v63[v180++]);
            v181 = v410;
          }

          while (v410 > v180);
          v58 = v380;
        }

        else
        {
          v181 = v410;
        }

        if (v181)
        {
          v182 = heap_Calloc(*(a1 + 8), 1, 8 * *(v50 + 20) * v397);
          if (v182)
          {
            v62 = v182;
            if (*(v50 + 20))
            {
              v183 = 0;
              do
              {
                v184 = heap_Calloc(*(a1 + 8), 1, 40 * v397);
                v62[v183] = v184;
                if (!v184)
                {
                  goto LABEL_2;
                }

                *(v62[v183] + 1) = heap_Calloc(*(a1 + 8), 1, 48 * v397);
                v185 = v62[v183];
                if (!*(v185 + 1))
                {
                  goto LABEL_2;
                }

                *v185 = 0;
                *(v185 + 8) = 0;
              }

              while (*(v50 + 20) > ++v183);
            }

            v48 = crf_mde_utils_dynstr_init(a1, &v408, 2 * (v387 & 0x7FFFu), 128);
            if ((v48 & 0x80000000) != 0)
            {
              v388 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v383 = 0;
              goto LABEL_226;
            }

            v186 = *(v50 + 20);
            v368 = v57;
            if (v186)
            {
              v187 = 0;
              v188 = v410;
              do
              {
                v189 = v62[v187];
                *v189 = 0;
                if (v188)
                {
                  v190 = 0;
                  v191 = 0;
                  v192 = *(v50 + 10);
                  v193 = v411;
                  do
                  {
                    if (v192 <= v190 && v192 + v397 > v190)
                    {
                      v194 = *(*(v193 + 8 * v190) + 2 * v187);
                      if (v194 == 83 || v194 == 66)
                      {
                        *v189 = ++v191;
                      }
                    }

                    ++v190;
                  }

                  while (v188 > v190);
                  v195 = v191 + 1;
                }

                else
                {
                  v195 = 1;
                }

                *v189 = v195;
                v196 = v187 + 1;
                v187 = (v187 + 1);
              }

              while (v186 > v196);
              v197 = 0;
              LOWORD(v198) = 0;
              while (1)
              {
                cstdlib_memset(v408, 0, v409);
                v198 = v198;
                *v62[v198] = 0;
                if (v410)
                {
                  break;
                }

LABEL_275:
                if (cstdlib_strlen(v408))
                {
                  v217 = v198;
                  v198 = *(a1 + 8);
                  v218 = cstdlib_strlen(v408) + 1;
                  v219 = v198;
                  LOWORD(v198) = v217;
                  *(*(v62[v217] + 1) + 48 * *v62[v217]) = heap_Calloc(v219, 1, v218);
                  v220 = *(*(v62[v217] + 1) + 48 * *v62[v217]);
                  if (!v220)
                  {
                    goto LABEL_2;
                  }

                  cstdlib_strcpy(v220, v408);
                  ++*v62[v217];
                }

                LOWORD(v198) = v198 + 1;
                v197 = v198;
                if (*(v50 + 20) <= v198)
                {
                  goto LABEL_279;
                }
              }

              v199 = 0;
              v390 = 0;
              v200 = 0;
              v372 = 2 * v197;
              v201 = v397;
              while (1)
              {
                v202 = *(v50 + 10);
                if (v202 <= v200 && v202 + v201 > v199)
                {
                  v204 = *(*(v411 + 8 * v200) + v372);
                  if ((v204 == 83 || v204 == 66) && cstdlib_strlen(v408))
                  {
                    v205 = v198;
                    v206 = *(a1 + 8);
                    v207 = cstdlib_strlen(v408) + 1;
                    v208 = v206;
                    v198 = v205;
                    *(*(v62[v205] + 1) + 48 * *v62[v205]) = heap_Calloc(v208, 1, v207);
                    v209 = *(*(v62[v198] + 1) + 48 * *v62[v198]);
                    if (!v209)
                    {
                      goto LABEL_2;
                    }

                    cstdlib_strcpy(v209, v408);
                    v210 = v62[v205];
                    v211 = *v210;
                    *(*(v210 + 1) + 48 * *v210 + 28) = 1;
                    *v210 = v211 + 1;
                    cstdlib_memset(v408, 0, v409);
                    v201 = v397;
                  }

                  if (cstdlib_strlen(v408))
                  {
                    v212 = a1;
                    v213 = 1;
                  }

                  else
                  {
                    v212 = a1;
                    v213 = 2;
                  }

                  v48 = crf_mde_utils_dynstr_add(v212, &v408, *(v393 + 8 * v390), v213);
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_299;
                  }

                  ++v390;
                  if (v199 + 1 < v410)
                  {
                    v214 = *(*(v411 + 8 * (v199 + 1)) + v372);
                    if (v214 != 66 && v214 != 83 && *(v50 + 80))
                    {
                      if (cstdlib_strlen(v408))
                      {
                        v215 = a1;
                        v216 = 1;
                      }

                      else
                      {
                        v215 = a1;
                        v216 = 2;
                      }

                      v48 = crf_mde_utils_dynstr_add(v215, &v408, *(v50 + 80), v216);
                      if ((v48 & 0x80000000) != 0)
                      {
                        goto LABEL_299;
                      }
                    }
                  }
                }

                v199 = ++v200;
                if (v410 <= v200)
                {
                  goto LABEL_275;
                }
              }
            }

LABEL_279:
            v407 = heap_Calloc(*(a1 + 8), 1, 1024);
            if (!v407)
            {
              v48 = 2310021130;
              log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v221, v45, v46, v47, v354);
LABEL_299:
              v388 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v383 = 0;
              v397 = v371;
              v58 = v380;
              goto LABEL_16;
            }

            HIWORD(v406) = 1024;
            if (*(v50 + 144) == 1)
            {
              log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Segmentation results:", v45, v46, v47, 0);
              v222 = *(a3 + 20);
              if (v222)
              {
                v223 = 0;
                v224 = 0;
                while (1)
                {
                  cstdlib_strcpy(v407, "");
                  __sprintf_chk(v415, 0, 0x40uLL, "nbest[%d] ", v223);
                  v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, v415);
                  if ((v48 & 0x80000000) != 0)
                  {
                    goto LABEL_391;
                  }

                  v225 = v62[v224];
                  if (*v225)
                  {
                    v226 = 0;
                    v227 = 0;
                    do
                    {
                      v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, *(*(v225 + 1) + v226));
                      if ((v48 & 0x80000000) != 0)
                      {
                        goto LABEL_391;
                      }

                      v225 = v62[v224];
                      v228 = *v225;
                      if (v227 + 1 < v228)
                      {
                        v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, " | ");
                        if ((v48 & 0x80000000) != 0)
                        {
                          goto LABEL_391;
                        }

                        v225 = v62[v224];
                        v228 = *v225;
                      }

                      ++v227;
                      v226 += 48;
                    }

                    while (v227 < v228);
                  }

                  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v45, v46, v47, v407);
                  v223 = ++v224;
                  v222 = *(a3 + 20);
                  if (v222 <= v224)
                  {
                    goto LABEL_301;
                  }
                }
              }
            }

            else
            {
              v222 = *(a3 + 20);
LABEL_301:
              if (v222)
              {
                v230 = 0;
                v373 = 0;
                v231 = 0;
                v232 = a3;
                do
                {
                  if (*(v232 + 96))
                  {
                    v233 = v231;
                    v234 = v62[v231];
                    if (*v234)
                    {
                      v365 = v231;
                      v235 = 0;
                      v236 = 0;
                      do
                      {
                        v237 = cstdlib_strlen(*(*(v234 + 1) + 48 * v235));
                        if (v368)
                        {
                          v238 = v237 + v236;
                          v239 = v368;
                          v240 = (v380 + 2);
                          do
                          {
                            v241 = *(v240 - 1);
                            if (v241 >= v236)
                            {
                              v242 = *v240 + v241;
                              if (v238 > v241 && v242 > v238)
                              {
                                *(v62[v233] + 8) = 5;
                                v230 = 1;
                              }

                              if (v242 < v238)
                              {
                                *(*(v62[v233] + 1) + 48 * v235 + 36) = 1;
                              }
                            }

                            v240 += 2;
                            --v239;
                          }

                          while (v239);
                        }

                        v236 += v237;
                        ++v235;
                        v234 = v62[v233];
                      }

                      while (v235 < *v234);
                      v232 = a3;
                      v222 = *(a3 + 20);
                      v231 = v365;
                    }
                  }

                  v244 = v231 + 1;
                  if (v222 > (v231 + 1))
                  {
                    v245 = v231;
                    v366 = v231 + 1;
                    v246 = v231 + 1;
                    do
                    {
                      v247 = v246;
                      if (*v62[v245] == *v62[v246])
                      {
                        v248 = v62[v245];
                        v249 = v62[v246];
                        if (*v248)
                        {
                          v250 = 0;
                          v251 = 0;
                          while (1)
                          {
                            v252 = *(v249 + 1);
                            if (*(v252 + v250 + 28) == 1)
                            {
                              if (cstdlib_strcmp(*(*(v248 + 1) + v250), *(v252 + v250)))
                              {
                                break;
                              }
                            }

                            v248 = v62[v245];
                            ++v251;
                            v249 = v62[v247];
                            v250 += 48;
                            if (v251 >= *v248)
                            {
                              goto LABEL_328;
                            }
                          }
                        }

                        else
                        {
LABEL_328:
                          *(v249 + 8) = 4;
                          v373 = 1;
                        }

                        v232 = a3;
                      }

                      v246 = v247 + 1;
                      v222 = *(v232 + 20);
                    }

                    while (v222 > (v247 + 1));
                    v244 = v366;
                  }

                  v231 = v244;
                }

                while (v222 > v244);
                if ((v373 == 1 || v230 == 1) && *(a3 + 144) == 1)
                {
                  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Segmentation results (remove duplicates):", v45, v46, v47, 0);
                  v222 = *(a3 + 20);
                  if (v222)
                  {
                    v253 = 0;
                    v254 = 0;
                    do
                    {
                      cstdlib_strcpy(v407, "");
                      __sprintf_chk(v415, 0, 0x40uLL, "nbest[%d] ", v253);
                      v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, v415);
                      if ((v48 & 0x80000000) != 0)
                      {
                        goto LABEL_391;
                      }

                      v255 = v62[v254];
                      if (*v255)
                      {
                        v256 = 0;
                        v257 = 0;
                        do
                        {
                          v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, *(*(v255 + 1) + v256));
                          if ((v48 & 0x80000000) != 0)
                          {
                            goto LABEL_391;
                          }

                          v255 = v62[v254];
                          v258 = *v255;
                          if (v257 + 1 < v258)
                          {
                            v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, " | ");
                            if ((v48 & 0x80000000) != 0)
                            {
                              goto LABEL_391;
                            }

                            v255 = v62[v254];
                            v258 = *v255;
                          }

                          ++v257;
                          v256 += 48;
                        }

                        while (v257 < v258);
                      }

                      v259 = *(v255 + 8);
                      if (v259 == 4)
                      {
                        v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, " MDE_Duplicate");
                        if ((v48 & 0x80000000) != 0)
                        {
                          goto LABEL_391;
                        }

                        v259 = *(v62[v254] + 8);
                      }

                      if (v259 == 5)
                      {
                        v48 = crf_mde_utils_add2Str(a1, &v407, &v406 + 1, " MDE_UmlautSplit");
                        if ((v48 & 0x80000000) != 0)
                        {
                          goto LABEL_391;
                        }
                      }

                      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v45, v46, v47, v407);
                      v253 = ++v254;
                      v222 = *(a3 + 20);
                    }

                    while (v222 > v254);
                  }
                }
              }
            }

            v260 = *(a3 + 56);
            if (v260 == 1)
            {
              if (!*(a3 + 120))
              {
                goto LABEL_355;
              }
            }

            else if (v260 || *(a3 + 120))
            {
LABEL_355:
              if (a21 == 1)
              {
                v261 = cstdlib_strchr(a22, 95);
                if (v261)
                {
                  v262 = v261 + 1;
                }

                else
                {
                  v262 = a22;
                }

                v364 = v262;
                v363 = *v262;
                v222 = *(a3 + 20);
              }

              else
              {
                v364 = 0;
                v363 = 32;
              }

              v48 = crf_mde_utils_do_validation(a1, a12, a13, a14, a15, a16, a17, *(a3 + 112), *(a3 + 120), *(a3 + 128), *(a3 + 136), v62, v222, *(a3 + 144), *(a3 + 64), &v407, &v406 + 2);
              if ((v48 & 0x80000000) == 0)
              {
                v265 = *(a3 + 20);
                if (v265)
                {
                  v266 = 0;
                  for (j = 0; j < v265; ++j)
                  {
                    v268 = v62[j];
                    v269 = *(v268 + 8);
                    if (v269 < 2 || v269 == 3 && !*(a3 + 136))
                    {
                      v270 = *v268;
                      if (v270 > v266)
                      {
                        v266 = v270;
                      }
                    }
                  }

                  v388 = v266;
                  if (v266)
                  {
                    v271 = v266;
                    v383 = heap_Calloc(*(a1 + 8), 1, 2 * v266);
                    if (!v383)
                    {
                      v48 = 2310021130;
                      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v272, v273, v274, v275, v355);
                      goto LABEL_392;
                    }

                    v61 = heap_Calloc(*(a1 + 8), 1, 8 * v271);
                    if (!v61)
                    {
                      v48 = 2310021130;
                      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v276, v277, v278, v279, v355);
                      v59 = 0;
                      v60 = 0;
                      goto LABEL_393;
                    }

                    v60 = heap_Calloc(*(a1 + 8), 1, 8 * v271);
                    if (!v60)
                    {
                      v48 = 2310021130;
                      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v280, v281, v282, v283, v355);
                      v59 = 0;
                      goto LABEL_393;
                    }

                    v59 = heap_Calloc(*(a1 + 8), 1, 8 * v271);
                    if (v59)
                    {
                      v288 = 0;
                      while (1)
                      {
                        v289 = heap_Calloc(*(a1 + 8), 1, 128);
                        v61[v288] = v289;
                        if (!v289)
                        {
                          break;
                        }

                        v290 = heap_Calloc(*(a1 + 8), 1, 128);
                        v60[v288] = v290;
                        if (!v290)
                        {
                          break;
                        }

                        v291 = heap_Calloc(*(a1 + 8), 1, 128);
                        v59[v288] = v291;
                        if (!v291)
                        {
                          break;
                        }

                        cstdlib_strcpy(v61[v288], "");
                        cstdlib_strcpy(v60[v288], "");
                        cstdlib_strcpy(v59[v288++], "");
                        if (v271 == v288)
                        {
                          v361 = 0;
                          goto LABEL_396;
                        }
                      }
                    }

                    v48 = 2310021130;
                    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v284, v285, v286, v287, v355);
LABEL_466:
                    v397 = v371;
                    goto LABEL_394;
                  }
                }

                v388 = 0;
                v383 = 0;
                v61 = 0;
                v60 = 0;
                v59 = 0;
                v361 = 1;
LABEL_396:
                v292 = v369 + cstdlib_strlen(__s1[0]);
                v293 = Utf8_LengthInBytes(&__s[v292], 1);
                v357 = v292;
                v358 = v400;
                if (v400 > v292 && (v294 = v293, v295 = &__s[v292], (*(a12 + 128))(a13, a14, v295)))
                {
                  LOWORD(v370) = v292;
                  do
                  {
                    if (!cstdlib_strncmp(v295, "_", v294))
                    {
                      break;
                    }

                    v296 = Utf8_LengthInBytes(&__s[(v370 + v294)], 1);
                    v357 = (v370 + v294);
                    LOWORD(v370) = v370 + v294;
                    if (v400 <= v370)
                    {
                      break;
                    }

                    v294 = v296;
                    v295 = &__s[v370];
                  }

                  while ((*(a12 + 128))(a13, a14, v295));
                }

                else
                {
                  LOWORD(v370) = v292;
                }

                if (*(a3 + 20))
                {
                  v367 = 0;
                  v382 = 0;
                  v374 = 0;
                  v297 = 0;
                  v360 = a36;
                  v359 = a35;
                  while (1)
                  {
                    v401 = v297;
                    v298 = *(v62[v297] + 8);
                    if (v298 < 2 || v298 == 3 && !*(a3 + 136))
                    {
                      cstdlib_strcpy(a31, "");
                      cstdlib_strcpy(a32, "");
                      cstdlib_strcpy(a33, "");
                      v299 = v62[v401];
                      if (*(v299 + 16))
                      {
                        v300 = 0;
                        v362 = v367 + 1;
                        while (1)
                        {
                          v394 = v300;
                          v301 = 5 * v300;
                          crf_mde_getStrForCrossToken(v299, *(*(v299 + 24) + 80 * v300), v60, *(a3 + 64), "◄", "◖");
                          v302 = v401;
                          crf_mde_getStrForCrossToken(v62[v401], *(*(v62[v401] + 3) + 16 * v301 + 48), v61, *(a3 + 64), 0, 0);
                          crf_mde_getStrForCrossToken(v62[v302], *(*(v62[v302] + 3) + 16 * v301 + 64), v59, *(a3 + 64), 0, 0);
                          if (*v62[v401])
                          {
                            v303 = 0;
                            do
                            {
                              v304 = v61[v303];
                              v305 = cstdlib_strlen(v304);
                              *(v383 + 2 * v303) = Utf8_LengthInUtf8chars(v304, v305);
                              v306 = v60[v303];
                              v307 = cstdlib_strlen(v306);
                              v308 = Utf8_LengthInUtf8chars(v306, v307);
                              v309 = v59[v303];
                              v310 = cstdlib_strlen(v309);
                              v311 = Utf8_LengthInUtf8chars(v309, v310);
                              v312 = *(v383 + 2 * v303);
                              if (v308 > v312)
                              {
                                *(v383 + 2 * v303) = v308;
                                v312 = v308;
                              }

                              if (v312 < v311)
                              {
                                *(v383 + 2 * v303) = v311;
                              }

                              ++v303;
                            }

                            while (v303 < *v62[v401]);
                            v302 = v401;
                            if (*v62[v401])
                            {
                              v313 = 0;
                              do
                              {
                                v314 = v61[v313];
                                v315 = cstdlib_strlen(v314);
                                v316 = Utf8_LengthInUtf8chars(v314, v315);
                                if (*(v383 + 2 * v313) > v316)
                                {
                                  v317 = v316;
                                  do
                                  {
                                    cstdlib_strcat(v61[v313], "~");
                                    ++v317;
                                  }

                                  while (v317 < *(v383 + 2 * v313));
                                }

                                v318 = v60[v313];
                                v319 = cstdlib_strlen(v318);
                                v320 = Utf8_LengthInUtf8chars(v318, v319);
                                if (*(v383 + 2 * v313) > v320)
                                {
                                  v321 = v320;
                                  do
                                  {
                                    cstdlib_strcat(v60[v313], "~");
                                    ++v321;
                                  }

                                  while (v321 < *(v383 + 2 * v313));
                                }

                                v322 = v59[v313];
                                v323 = cstdlib_strlen(v322);
                                v324 = Utf8_LengthInUtf8chars(v322, v323);
                                if (*(v383 + 2 * v313) > v324)
                                {
                                  v325 = v324;
                                  do
                                  {
                                    cstdlib_strcat(v59[v313], "~");
                                    ++v325;
                                  }

                                  while (v325 < *(v383 + 2 * v313));
                                }

                                ++v313;
                                v302 = v401;
                              }

                              while (v313 < *v62[v401]);
                            }
                          }

                          cstdlib_strcpy(a31, "");
                          cstdlib_strcpy(a32, "");
                          cstdlib_strcpy(a33, "");
                          if (*v62[v302])
                          {
                            v329 = 0;
                            do
                            {
                              cstdlib_strcat(a31, v60[v329]);
                              cstdlib_strcat(a32, v61[v329]);
                              cstdlib_strcat(a33, v59[v329++]);
                            }

                            while (v329 < *v62[v401]);
                          }

                          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call nbest[%d] solution[%d] segpat:%s patPOS:%s pos:%s pron:%s feat:%s", v326, v327, v328, v367);
                          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call phon:%s", v330, v331, v332, a31);
                          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call pos :%s", v333, v334, v335, a32);
                          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call cgn :%s", v336, v337, v338, a33);
                          cstdlib_strcpy(a34, "");
                          cstdlib_strcpy(__dst, "normal");
                          v339 = oneword_crosstoken(a1, a18, a19, a20, a21, a22, 0, v363, v364, __dst, 0, a23, a24, a25, a26, a27, a28, a29, a30, &a31, &a32, &a33, &a34);
                          if ((v339 & 0x80000000) != 0)
                          {
                            break;
                          }

                          HIWORD(v356) = WORD1(a31);
                          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "write to lingdb nbest[%d] solution[%d] pos:%s pron:%s cgn:%s", v45, v46, v47, v367);
                          v340 = v62[v401];
                          v341 = *(v340 + 8);
                          if (v360)
                          {
                            if (v341 == 3 && !*(a3 + 136))
                            {
                              v342 = &a32;
                            }

                            else
                            {
                              v342 = (*(v340 + 3) + 80 * v394 + 16);
                            }

                            v343 = *v342;
                            v344 = a31;
                            v345 = a33;
                            v346 = v362 + v381 * *v340;
                            v347 = *(a3 + 52);
                          }

                          else
                          {
                            if (v341 == 3 && !*(a3 + 136))
                            {
                              v348 = &a32;
                            }

                            else
                            {
                              v348 = (*(v340 + 3) + 80 * v394 + 16);
                            }

                            v343 = *v348;
                            v344 = a31;
                            v345 = a33;
                            v346 = v362 + v381 * *v340;
                            v347 = 1;
                          }

                          LOWORD(v356) = v346;
                          v48 = hlp_Write2WordRec(a9, a10, a11, v377, v386, v370 - v378, v382, v343, v344, v345, v359, v356, v347);
                          if ((v48 & 0x80000000) != 0)
                          {
                            goto LABEL_460;
                          }

                          if ((v361 & 1) == 0)
                          {
                            v399 = v388;
                            v395 = v59;
                            v349 = v60;
                            v350 = v61;
                            do
                            {
                              v351 = *v350++;
                              cstdlib_strcpy(v351, "");
                              v352 = *v349++;
                              cstdlib_strcpy(v352, "");
                              v353 = *v395++;
                              cstdlib_strcpy(v353, "");
                              --v399;
                            }

                            while (v399);
                          }

                          ++v382;
                          v300 = v394 + 1;
                          v299 = v62[v401];
                          if (v394 + 1 >= *(v299 + 16))
                          {
                            goto LABEL_452;
                          }
                        }

                        v48 = v339;
                        goto LABEL_460;
                      }

LABEL_452:
                      v374 = 1;
                    }

                    v297 = v401 + 1;
                    v367 = (v401 + 1);
                    if (*(a3 + 20) <= (v401 + 1))
                    {
                      goto LABEL_457;
                    }
                  }
                }

                v374 = 0;
LABEL_457:
                if (v358 != v357)
                {
                  v370 = v369 + cstdlib_strlen(__s1[0]);
                }

LABEL_460:
                if (v374 != 1)
                {
                  goto LABEL_466;
                }

                v58 = v380;
                LOWORD(v57) = v368;
                v50 = a3;
LABEL_462:
                v172 = v370;
                goto LABEL_184;
              }

              goto LABEL_391;
            }

            if (v222)
            {
              v374 = 0;
              v263 = 0;
              v50 = a3;
              do
              {
                v48 = crf_mde_utils_write_morphemes(a1, *(a3 + 56), *(a3 + 120), a12, a13, a14, a9, v47, a10, a11, v377, v386, v378, v62[v263], __s, &v406);
                if ((v48 & 0x80000000) != 0)
                {
                  v383 = 0;
                  v61 = 0;
                  v60 = 0;
                  v59 = 0;
                  v388 = 0;
                  goto LABEL_460;
                }

                if (v406 == v400)
                {
                  v264 = v400;
                }

                else
                {
                  v264 = v370;
                }

                v370 = v264;
                ++v263;
                v374 = 1;
              }

              while (*(a3 + 20) > v263);
              v388 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v383 = 0;
              v58 = v380;
              LOWORD(v57) = v368;
              goto LABEL_462;
            }

LABEL_391:
            v388 = 0;
LABEL_392:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v383 = 0;
LABEL_393:
            v397 = v371;
LABEL_394:
            v58 = v380;
            LOWORD(v57) = v368;
            v50 = a3;
            goto LABEL_16;
          }

LABEL_2:
          v48 = 2310021130;
          log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v44, v45, v46, v47, v354);
          return v48;
        }
      }

LABEL_293:
      v388 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v383 = 0;
      v62 = 0;
      v229 = v371;
LABEL_294:
      v397 = v229;
      goto LABEL_16;
    }
  }

  if (v137 != 2)
  {
    goto LABEL_152;
  }

  v138 = *(v50 + 80);
  if (!v138 || cstdlib_strncmp(&__s1[0][v134], v138, v135))
  {
    v139 = *(v50 + 64);
    if (!v139 || cstdlib_strncmp(&__s1[0][v134], v139, v136))
    {
      goto LABEL_152;
    }
  }

  v140 = *(v50 + 64);
  if (!v140 || cstdlib_strncmp(&__s1[0][v134], v140, v136))
  {
    v141 = *(v50 + 80);
    if (v141)
    {
      cstdlib_strncmp(&__s1[0][v134], v141, v136);
    }
  }

  v142 = v134 - v132;
  if (v134 != v132 && cstdlib_strcmp(a22, "prompt") && cstdlib_strcmp(a22, "internal-nuance-system-norm"))
  {
    goto LABEL_148;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Error Parsing For Morpheme - character=%d, word=%s", v45, v46, v47, v134);
  v161 = *(v50 + 56);
  if (!v161)
  {
    v58 = v380;
    v162 = v386;
    v163 = __s;
    if (!*(v50 + 120))
    {
      goto LABEL_175;
    }

LABEL_191:
    v388 = 0;
    v391 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v383 = 0;
    v62 = 0;
    goto LABEL_16;
  }

  v58 = v380;
  v162 = v386;
  v163 = __s;
  if (v161 != 1 || !*(v50 + 120))
  {
    goto LABEL_191;
  }

LABEL_175:
  v164 = heap_Calloc(*(a1 + 8), 1, 8 * *(v50 + 20));
  if (!v164)
  {
    goto LABEL_2;
  }

  v62 = v164;
  v165 = heap_Calloc(*(a1 + 8), 1, 40);
  *v62 = v165;
  if (!v165)
  {
    goto LABEL_2;
  }

  *(*v62 + 1) = heap_Calloc(*(a1 + 8), 1, 48);
  v166 = *v62;
  if (!*(*v62 + 1))
  {
    goto LABEL_2;
  }

  *v166 = 0;
  *(v166 + 8) = 0;
  v167 = *(a1 + 8);
  v168 = cstdlib_strlen(__s1[0]);
  *(*(*v62 + 1) + 48 * **v62) = heap_Calloc(v167, 1, v168 + 1);
  v169 = *(*(*v62 + 1) + 48 * **v62);
  if (!v169)
  {
    goto LABEL_2;
  }

  cstdlib_strcpy(v169, __s1[0]);
  v170 = *v62;
  *v170 = **v62 + 1;
  v48 = crf_mde_utils_write_morphemes(a1, 0, 0, a12, a13, a14, a9, v171, a10, a11, v377, v162, v378, v170, v163, &v406);
  if ((v48 & 0x80000000) != 0)
  {
    v388 = 0;
    v391 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v383 = 0;
    v229 = 1;
    goto LABEL_294;
  }

  v388 = 0;
  v391 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v383 = 0;
  if (v406 == v400)
  {
    v172 = v400;
  }

  else
  {
    v172 = v370;
  }

  v397 = 1;
LABEL_184:
  *v376 = v172 - v378;
LABEL_16:
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "CRF MDE segmentation for token %s : %s", v45, v46, v47, __s1[0]);
  crf_mde_seg_fv_dealloc(a1, v413);
  if (v407)
  {
    heap_Free(*(a1 + 8), v407);
    v407 = 0;
  }

  if (v57)
  {
    heap_Free(*(a1 + 8), v58);
  }

  if (v388)
  {
    for (k = 0; k != v388; ++k)
    {
      if (v61)
      {
        v65 = v61[k];
        if (v65)
        {
          heap_Free(*(a1 + 8), v65);
          v61[k] = 0;
        }
      }

      if (v60)
      {
        v66 = v60[k];
        if (v66)
        {
          heap_Free(*(a1 + 8), v66);
          v60[k] = 0;
        }
      }

      if (v59)
      {
        v67 = v59[k];
        if (v67)
        {
          heap_Free(*(a1 + 8), v67);
          v59[k] = 0;
        }
      }
    }

    if (v383)
    {
      heap_Free(*(a1 + 8), v383);
    }

    if (v61)
    {
      heap_Free(*(a1 + 8), v61);
    }

    if (v60)
    {
      heap_Free(*(a1 + 8), v60);
    }

    if (v59)
    {
      heap_Free(*(a1 + 8), v59);
    }
  }

  crf_mde_utils_dynstr_free(a1, __s1);
  if (v408)
  {
    heap_Free(*(a1 + 8), v408);
    v408 = 0;
  }

  if (v391)
  {
    heap_Free(*(a1 + 8), v391);
  }

  if (v393)
  {
    if (v397)
    {
      v68 = v397;
      v69 = v393;
      do
      {
        if (*v69)
        {
          heap_Free(*(a1 + 8), *v69);
          *v69 = 0;
        }

        ++v69;
        --v68;
      }

      while (v68);
    }

    heap_Free(*(a1 + 8), v393);
    heap_Free(*(a1 + 8), v385);
  }

  if (v63)
  {
    v70 = *(v50 + 10);
    if (v387 | (2 * v70))
    {
      v71 = 0;
      do
      {
        v72 = v71;
        v73 = v63[v71];
        if (v73)
        {
          heap_Free(*(a1 + 8), v73);
          v63[v72] = 0;
          v70 = *(v50 + 10);
        }

        v71 = v72 + 1;
      }

      while (v387 + 2 * v70 > (v72 + 1));
    }

    heap_Free(*(a1 + 8), v63);
  }

  v74 = v411;
  if (v411)
  {
    v75 = v410;
    if (v410)
    {
      v76 = 0;
      do
      {
        v77 = v76;
        v78 = *(v411 + 8 * v76);
        if (v78)
        {
          heap_Free(*(a1 + 8), v78);
          *(v411 + 8 * v77) = 0;
          v75 = v410;
        }

        v76 = v77 + 1;
      }

      while (v75 > (v77 + 1));
      v74 = v411;
    }

    heap_Free(*(a1 + 8), v74);
    v411 = 0;
  }

  if (v62)
  {
    if (*(v50 + 20))
    {
      v79 = 0;
      do
      {
        v80 = v79;
        v81 = v62[v79];
        if (*v81)
        {
          v82 = 0;
          do
          {
            heap_Free(*(a1 + 8), *(*(v81 + 1) + 48 * v82));
            *(*(v62[v80] + 1) + 48 * v82) = 0;
            v83 = v62[v80];
            v84 = *(v83 + 1);
            if (*(v84 + 48 * v82 + 8))
            {
              v85 = 0;
              v86 = 0;
              do
              {
                v87 = *(*(v84 + 48 * v82 + 16) + v85 + 8);
                if (v87)
                {
                  heap_Free(*(a1 + 8), v87);
                  *(*(*(v62[v80] + 1) + 48 * v82 + 16) + v85 + 8) = 0;
                  v83 = v62[v80];
                }

                v84 = *(v83 + 1);
                v88 = *(v84 + 48 * v82 + 16);
                v89 = *(v88 + v85 + 16);
                if (v89)
                {
                  heap_Free(*(a1 + 8), v89);
                  *(*(*(v62[v80] + 1) + 48 * v82 + 16) + v85 + 16) = 0;
                  v83 = v62[v80];
                  v84 = *(v83 + 1);
                  v88 = *(v84 + 48 * v82 + 16);
                }

                v90 = *(v88 + v85 + 24);
                if (v90)
                {
                  heap_Free(*(a1 + 8), v90);
                  *(*(*(v62[v80] + 1) + 48 * v82 + 16) + v85 + 24) = 0;
                  v83 = v62[v80];
                  v84 = *(v83 + 1);
                }

                ++v86;
                v85 += 32;
              }

              while (v86 < *(v84 + 48 * v82 + 8));
            }

            heap_Free(*(a1 + 8), *(v84 + 48 * v82 + 16));
            *(*(v62[v80] + 1) + 48 * v82++ + 16) = 0;
            v81 = v62[v80];
          }

          while (v82 < *v81);
        }

        heap_Free(*(a1 + 8), *(v81 + 1));
        *(v62[v80] + 1) = 0;
        crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v62[v80] + 3, v62[v80][8]);
        heap_Free(*(a1 + 8), v62[v80]);
        v62[v80] = 0;
        v79 = v80 + 1;
      }

      while (*(v50 + 20) > (v80 + 1));
    }

    heap_Free(*(a1 + 8), v62);
  }

  return v48;
}