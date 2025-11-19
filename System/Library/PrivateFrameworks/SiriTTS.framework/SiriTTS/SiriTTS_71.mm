uint64_t wparser_impl_dag_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjReopen : Begin", v4, v5, v6, v12);
  MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjReopen : End (%x)", v8, v9, v10, MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_dag_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 7549556;
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v10, a1 + 44);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 32) = a3;
      *(a1 + 40) = a6;
    }
  }

  return result;
}

uint64_t wparser_impl_dag_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    a3[a5] = 0;
    if (*(a1 + 44) != 1 || (result = wordm_mapt2s(*(a1 + 32), a3, a5), (result & 0x80000000) == 0))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);

      return DoDag(v21, v22, v23, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, v27, v28);
    }
  }

  return result;
}

uint64_t wparser_impl_dag_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_dag_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparserDctPlusRules_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDctPlusRules;
  return result;
}

uint64_t wparser_impl_plusrules_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  if (!a5)
  {
    return 2350915591;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v19);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v19 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin", v8, v9, v10, v18);
    v12 = heap_Calloc(*(v19 + 8), 1, 88);
    if (v12)
    {
      *v12 = a3;
      v12[1] = a4;
      v16 = v19;
      v12[2] = v19;
      v12[3] = 0;
      v12[4] = "WPARSER_IMPL";
      *a5 = v12;
      *(a5 + 8) = 87652;
      log_OutText(*(v16 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", v13, v14, v15, inited);
    }

    else
    {
      return 2350915594;
    }
  }

  return inited;
}

uint64_t wparser_impl_plusrules_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t wparser_impl_plusrules_ObjReopen(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v6 & 0x80000000) == 0)
  {
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v3, v4, v5, v11);
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v7, v8, v9, v6);
  }

  return v6;
}

uint64_t wparser_impl_plusrules_Init(uint64_t a1, int a2, void *a3, uint64_t a4, const char *a5, int a6, _BYTE *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a1 + 40) = a3;
  if (!strcmp(a5, "win874"))
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xcode_Utf16leToWin874;
    *(a1 + 56) = 0;
    if (*a7 && (v18 = (*(*a3 + 64))(a3[1], a3[2], a7, a1 + 64), (v18 & 0x80000000) != 0))
    {
      v17 = v18;
      log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1819, 0, v19, v20, v21, v22, v28);
    }

    else
    {
      *(a1 + 48) = 0;
      v17 = o2t_ObjOpen(*a1, *(a1 + 8), (a1 + 48));
      if ((v17 & 0x80000000) != 0)
      {
        log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 52002, "%s%s", v23, v24, v25, v26, a5);
      }

      else
      {
        *(a1 + 80) = a6;
      }
    }
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1802, "%s%s", v13, v14, v15, v16, a5);
    return 2350915591;
  }

  return v17;
}

uint64_t wparser_impl_plusrules_Normalize(uint64_t a1, int a2, const char *a3, unsigned int a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  v40[0] = a5;
  v39 = 0;
  v21 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", v22, v23, v24, a3);
  v26 = Utf8_Utf8NbrOfSymbols(a3);
  v27 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v26 + 1));
  if (v27)
  {
    v28 = v27;
    v29 = utf8_Utf8ToUtf16(a3, a4, 0, v27, 2 * v26, &v39, 0);
    if ((v29 & 0x80000000) != 0)
    {
      v34 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v30, v31, v32, v28);
      v33 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v39 + 1));
      if (!v33)
      {
        return v25;
      }

      v34 = v33;
      v29 = (*(a1 + 72))(*(a1 + 56), v28, v39, v33, v40, *(a1 + 64));
      if ((v29 & 0x80000000) == 0)
      {
        *(v34 + v40[0]) = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v35, v36, v37, v34);
        v29 = DoDctPlusRules(*(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 48), v34, v40[0], a6, a7, a8, a9, a10, a11, a12, a13, a15, *(a1 + 80), a3, v28);
      }
    }

    v25 = v29;
    heap_Free(*(*(a1 + 16) + 8), v28);
    if (v34)
    {
      heap_Free(*(*(a1 + 16) + 8), v34);
    }
  }

  return v25;
}

uint64_t wparser_impl_plusrules_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  v37 = a5;
  v36 = 0;
  v17 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v21 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", v18, v19, v20, a3);
  v22 = Utf8_Utf8NbrOfSymbols(a3);
  v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v22 + 1));
  if (v23)
  {
    v24 = v23;
    v25 = utf8_Utf8ToUtf16(a3, a4, 0, v23, 2 * v22, &v36, 0);
    if ((v25 & 0x80000000) != 0)
    {
      v30 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v26, v27, v28, v24);
      v29 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v36 + 1));
      if (!v29)
      {
        return v21;
      }

      v30 = v29;
      v25 = (*(a1 + 72))(*(a1 + 56), v24, v36, v29, &v37, *(a1 + 64));
      if ((v25 & 0x80000000) == 0)
      {
        *(v30 + v37) = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v31, v32, v33, v30);
        LOWORD(v35) = a9;
        v25 = DoDctPlusRulesSpell(*(a1 + 16), *(a1 + 32), *(a1 + 40), v30, v37, a6, a7, a8, v35, a10, a11);
      }
    }

    v21 = v25;
    heap_Free(*(*(a1 + 16) + 8), v24);
    if (v30)
    {
      heap_Free(*(*(a1 + 16) + 8), v30);
    }
  }

  return v21;
}

uint64_t wparser_impl_plusrules_Latin(uint64_t a1, int a2, char *a3, unsigned int a4, char **a5)
{
  v28 = a4;
  v27 = 0;
  v9 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v13 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", v10, v11, v12, a3);
  v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * a4 + 2);
  if (v14)
  {
    v15 = v14;
    v16 = utf8_Utf8ToUtf16(a3, a4, 0, v14, 2 * a4, &v27, 0);
    if ((v16 & 0x80000000) != 0)
    {
      v21 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v17, v18, v19, v15);
      v20 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v27 + 1));
      if (!v20)
      {
        return v13;
      }

      v21 = v20;
      v16 = (*(a1 + 72))(*(a1 + 56), v15, v27, v20, &v28, *(a1 + 64));
      if ((v16 & 0x80000000) == 0)
      {
        v21[v28] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v22, v23, v24, v21);
        v13 = DoTHTLatin(*(a1 + 16), *(a1 + 40), v21, v28, a5);
        if (a5)
        {
          v25 = *a3;
          if ((v25 & 0x80000000) == 0)
          {
            **a5 = v25;
          }
        }

        goto LABEL_12;
      }
    }

    v13 = v16;
LABEL_12:
    heap_Free(*(*(a1 + 16) + 8), v15);
    if (v21)
    {
      heap_Free(*(*(a1 + 16) + 8), v21);
    }
  }

  return v13;
}

uint64_t wparser_impl_plusrules_End(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a1 + 48);
    if (!v5 || (result = wparser_ObjClose1(v5), (result & 0x80000000) == 0))
    {

      return safeh_HandleCheck(a1, a2, 87652, 88);
    }
  }

  return result;
}

uint64_t wordm_sysdct_Lookup_Thai(void *a1, char *__s, uint64_t a3, unsigned int a4, const char *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  result = 2370838535;
  if (a1 && __s && a3)
  {
    *a3 = 0;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 52) = 0u;
    *(a3 + 68) = 0;
    *(a3 + 70) = 0;
    *(a3 + 76) = 0u;
    *(a3 + 72) = 0;
    *(a3 + 92) = 0u;
    *(a3 + 108) = 0u;
    *(a3 + 124) = 0u;
    *(a3 + 140) = 0u;
    *(a3 + 156) = 0u;
    *(a3 + 172) = 0u;
    *(a3 + 188) = 0u;
    *(a3 + 204) = 0u;
    *(a3 + 220) = 0u;
    *(a3 + 236) = 0u;
    *(a3 + 252) = 0u;
    *(a3 + 332) = 0;
    *(a3 + 268) = 0u;
    *(a3 + 284) = 0u;
    *(a3 + 300) = 0u;
    *(a3 + 316) = 0u;
    *(a3 + 334) = 0;
    v11 = strlen(__s);
    v12 = v11;
    if ((v11 & 0xFFC0) != 0)
    {
      v13 = 64;
    }

    else
    {
      v13 = v11;
    }

    __memmove_chk();
    v28[v13] = 0;
    if (v12)
    {
      *a3 = 2;
      if (v13 <= a4)
      {
        LOWORD(a4) = v13;
      }

      if (a4)
      {
        LOWORD(v14) = 0;
        v15 = a4;
        do
        {
          if ((v28[v15] + 49) >= 0xCu)
          {
            v16 = 0;
            v17 = v28[v15];
            if ((v17 - 231) >= 7 && v17 != 229)
            {
              v16 = 0;
              v20 = v28[v15 - 1];
              if ((v20 - 224) >= 5 && v20 != 230)
              {
                v26 = 256;
                result = sysdct_word_LookUp_Thai(a1, v28, v15, v27, &v26, a5);
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_34;
                }

                LOWORD(v14) = v26;
                v16 = v26 != 256;
              }
            }
          }

          else
          {
            v16 = 0;
          }

          v18 = v15 + v16;
          v15 = v15 + v16 - 1;
        }

        while ((v18 - 2) < a4 && !v16);
        v14 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      if ((v15 - 1) >= a4)
      {
        result = 0;
        *(a3 + 4) = v28[0];
        *(a3 + 5) = 0;
        *(a3 + 70) = 1;
        *a3 = 0;
      }

      else
      {
        v27[v14] = 0;
        __strcpy_chk();
        *(a3 + 72) = 16;
        *(a3 + 334) = v26;
        v24 = v15;
        if (v28[v15] == 230)
        {
          __strcat_chk();
          *(a3 + 334) += v26;
          v24 = ++v15;
        }

        v28[v24] = 0;
        __strcpy_chk();
        result = 0;
        *(a3 + 70) = v15;
      }
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = v21;
        v23 = __s[v21++];
      }

      while (v23 == 32);
      memmove((a3 + 4), __s, v22);
      result = 0;
    }
  }

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DoDctPlusRules(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, _WORD *a13, int a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18)
{
  v122 = *MEMORY[0x1E69E9840];
  v89 = -1;
  memset(__dst, 0, 336);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  memset(v90, 0, sizeof(v90));
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  bzero(v120, 0x244uLL);
  LOWORD(v91) = 0;
  BYTE2(v91) = 0;
  v119 = 0;
  *(a15 + 8) = 0;
  *(a15 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v77 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a8, 0xFFFFu, &v88);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  if (!a6 && *(v88 + 36))
  {
    *(a15 + 16) = 0;
  }

  *(a15 + 16);
  log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v25, v26, v27, a6);
  UTOITrace(v77, a1, a7, a8, "START of normalization");
  if (a16 == 1)
  {
    DomainSegmentations = getDomainSegmentations(a1, a3, a5, a6, a8, a11, &v85, &v84 + 1, 1, 0);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
LABEL_44:
      v49 = DomainSegmentations;
      goto LABEL_66;
    }
  }

  v81 = a2;
  v76 = a8;
  v89 = -1;
  v80 = a6;
  if (a6)
  {
    v28 = 0;
    LOWORD(v29) = 0;
    v30 = 0;
    v31 = 0;
    while (1)
    {
      if (a16 == 1 && HIWORD(v84) > v29)
      {
        v32 = 0;
        v29 = v29;
        v33 = (v85 + 340 * v29);
        while (1)
        {
          v34 = *v33;
          if (v34 > v31)
          {
            break;
          }

          v33 += 170;
          if (v34 == v31)
          {
            v32 = v29;
          }

          ++v29;
          if (v34 == v31 || v29 >= HIWORD(v84))
          {
            if (v34 != v31)
            {
              break;
            }

            memcpy(__dst, (v85 + 340 * v32 + 4), 0x150uLL);
            goto LABEL_23;
          }
        }
      }

      v39 = wordm_sysdct_Lookup_Thai(a3, (a5 + v31), __dst, 0x16u, "normal");
      if ((v39 & 0x80000000) != 0)
      {
        break;
      }

LABEL_23:
      if (__dst[0] == 5 || __dst[0] == 2)
      {
        v39 = handleWordMatch(a1, v81, a4, a5, v31, __dst, &v89, v120, v90, a9, a14, a13, a10, a11, a12, a17, a18, &v84, &v83);
        if ((v39 & 0x80000000) != 0)
        {
          break;
        }

        v39 = bed_GetcElem(a9, &v87);
        if ((v39 & 0x80000000) != 0)
        {
          break;
        }

        v41 = 0;
      }

      else
      {
        log_OutText(*(a1 + 32), v81, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v36, v37, v38, v28);
        if (v89 == -1)
        {
          v89 = v31;
        }

        v41 = 1;
      }

      if (*(a15 + 16) == 1)
      {
        v42 = *(a15 + 8);
        v43 = *a15;
        if (v42 >= *(a15 + 10))
        {
          v44 = heap_Realloc(*(a1 + 8), v43, 12 * *(a15 + 10) + 121);
          if (!v44)
          {
            v49 = 2350915594;
            goto LABEL_64;
          }

          v43 = v44;
          *a15 = v44;
          *(a15 + 10) += 10;
          v42 = *(a15 + 8);
        }

        v45 = v42;
        v46 = v43 + 12 * v42;
        *v46 = v30;
        *(v46 + 2) = 0;
        v47 = HIWORD(__dst[17]);
        if (v41)
        {
          *(v43 + 12 * v45 + 4) = 1;
        }

        v30 += 3 * v47;
        *(a15 + 8) = v45 + 1;
      }

      else
      {
        v47 = HIWORD(__dst[17]);
      }

      v31 += v47;
      v28 = v31;
      v48 = a11;
      if (v31 >= v80)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v31 = 0;
    v48 = a11;
LABEL_46:
    LOBYTE(__dst[1]) = 0;
    HIWORD(__dst[17]) = 0;
    LOBYTE(__dst[19]) = 0;
    HIWORD(__dst[83]) = 0;
    v39 = handleWordMatch(a1, v81, a4, a5, v31, __dst, &v89, v120, v90, a9, a14, a13, a10, v48, a12, a17, a18, &v84, &v83);
    if ((v39 & 0x80000000) == 0)
    {
      v50 = v76;
      if (!v80)
      {
        goto LABEL_77;
      }

      v39 = bed_GetcElem(a9, &v87);
      if ((v39 & 0x80000000) == 0)
      {
        if (!v87)
        {
          log_OutText(*(a1 + 32), v81, 5, 0, "[UTOI] deleting region, no replacement text found", v51, v52, v53, v72);
          goto LABEL_77;
        }

        UTOISubTrace(v77, a1, a9, "replacement string");
        if (*(a15 + 16) != 1)
        {
LABEL_77:
          v49 = utoin_IncrReplaceCurrentRegion(a7, v50, a9, v80, a15);
          if ((v49 & 0x80000000) == 0)
          {
            UTOITrace(v77, a1, a7, v50, "END of normalization");
          }

          goto LABEL_64;
        }

        v39 = bed_GetpElem(a9, 0, &v86);
        if ((v39 & 0x80000000) == 0)
        {
          if (!v87)
          {
            v66 = 1;
            v61 = LogLevel;
            goto LABEL_71;
          }

          v57 = 0;
          v58 = 0;
          v59 = 1;
          v60 = v86;
          v61 = LogLevel;
          while (1)
          {
            if (*(v60 + v57) == 16)
            {
              v62 = *(a15 + 8);
              if (v58 >= v62)
              {
LABEL_69:
                log_OutText(*(a1 + 32), v81, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v54, v55, v56, v59);
                v66 = 0;
LABEL_71:
                if (v61 >= 5 && *(a15 + 8))
                {
                  v69 = 0;
                  v70 = 0;
                  do
                  {
                    v71 = (*a15 + v69);
                    *v74 = v71[4];
                    v75 = *(v71 + 1);
                    v73 = *v71;
                    log_OutText(*(a1 + 32), v81, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v54, v55, v56, v70++);
                    v69 += 12;
                  }

                  while (v70 < *(a15 + 8));
                }

                v50 = v76;
                if (v66)
                {
                  *(a15 + 12) = 0;
                }

                goto LABEL_77;
              }

              v63 = v58;
              v64 = (*a15 + 12 * v58 + 4);
              while (1)
              {
                v65 = *v64;
                v64 += 3;
                if (v65 != 1)
                {
                  break;
                }

                if (v62 == ++v63)
                {
                  goto LABEL_69;
                }
              }

              *(*a15 + 12 * v63 + 8) = v57;
              ++v59;
              v58 = v63 + 1;
            }

            if (++v57 >= v87)
            {
              v66 = 1;
              goto LABEL_71;
            }
          }
        }
      }
    }
  }

  v49 = v39;
LABEL_64:
  if (HIWORD(v84))
  {
    heap_Free(*(a1 + 8), v85);
  }

LABEL_66:
  v67 = *MEMORY[0x1E69E9840];
  return v49;
}

uint64_t handleWordMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned __int16 *a6, _WORD *a7, uint64_t a8, char *__dst, uint64_t a10, int a11, _WORD *a12, uint64_t a13, uint64_t a14, unsigned __int16 a15, uint64_t a16, uint64_t a17, _WORD *a18, _WORD *a19)
{
  *&__n[522] = *MEMORY[0x1E69E9840];
  HexArg = 2350915591;
  if (!a4 || !a6 || !a7 || !a8 || !__dst || !a10)
  {
    goto LABEL_45;
  }

  v60 = 0;
  *__n = 0;
  if (*a7 == -1)
  {
    v26 = 0;
    HexArg = 0;
  }

  else
  {
    memmove(__dst, a6 + 2, a6[35]);
    *(__dst + 32) = a6[35];
    memmove(__dst + 66, a6 + 38, a6[167]);
    *(__dst + 289) = a6[167];
    *__n = 512;
    memset(&__n[2], 0, 512);
    HexArg = o2t_Transcribe(a3, (a4 + *a7), (a5 - *a7), a8, __dst, &__n[2], __n, &v60);
    if ((HexArg & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    v26 = v60;
  }

  v28 = a18;
  v27 = a19;
  v29 = a16;
  v30 = a17;
  v31 = a15;
  v33 = a13;
  v32 = a14;
  v34 = a11;
  v35 = *(a8 + 578);
  if (v35 && (v26 & 1) == 0)
  {
    if (a11)
    {
      v36 = bed_Insert(a10, &szWORD_BEG_2, 1);
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v49 = a17;
      ++*a12;
      v35 = *(a8 + 578);
    }

    else
    {
      v49 = a17;
    }

    v37 = v35 + 1;
    v38 = heap_Alloc(*(a1 + 8), (v35 + 1));
    if (!v38)
    {
      HexArg = 2350915594;
      goto LABEL_45;
    }

    v39 = v38;
    bzero(v38, v37);
    strncpy(v39, (a8 + 66), *(a8 + 578));
    v39[*(a8 + 578)] = 0;
    v40 = bed_Insert(a10, v39, *(a8 + 578));
    if ((v40 & 0x80000000) != 0)
    {
LABEL_44:
      HexArg = v40;
      heap_Free(*(a1 + 8), v39);
      goto LABEL_45;
    }

    *a12 += *(a8 + 578);
    heap_Free(*(a1 + 8), v39);
    v30 = v49;
    if (a11)
    {
      v36 = bed_Insert(a10, &szWORD_END_3, 1);
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      ++*a12;
    }

    HexArg = getHexArg(a1, a2, *(a8 + 64), a13, a15, a14, a16, v49, a18, a19);
    if ((HexArg & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    v26 = v60;
    v29 = a16;
    v31 = a15;
    v27 = a19;
    v32 = a14;
    v33 = a13;
    v28 = a18;
    v34 = a11;
  }

  v41 = *__n;
  if (*__n && ((v26 & 2) == 0 || !*(__dst + 32)))
  {
    v51 = v33;
    v52 = v28;
    v53 = v27;
    v54 = v32;
    v55 = v31;
    v56 = v29;
    v57 = v34;
    if (v34)
    {
      v36 = bed_Insert(a10, &szWORD_BEG_2, 1);
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v50 = v30;
      ++*a12;
      v41 = *__n;
    }

    else
    {
      v50 = v30;
    }

    v42 = v41 + 1;
    v43 = heap_Alloc(*(a1 + 8), (v41 + 1));
    HexArg = 2350915594;
    if (!v43)
    {
      goto LABEL_45;
    }

    v39 = v43;
    bzero(v43, v42);
    strncpy(v39, &__n[2], *__n);
    v39[*__n] = 0;
    v40 = bed_Insert(a10, v39, *__n);
    if ((v40 & 0x80000000) == 0)
    {
      *a12 += *__n;
      heap_Free(*(a1 + 8), v39);
      if (!v57)
      {
LABEL_37:
        HexArg = getHexArg(a1, a2, (a5 - *a7), v51, v55, v54, v56, v50, v52, v53);
        if ((HexArg & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        v26 = v60;
        goto LABEL_39;
      }

      v36 = bed_Insert(a10, &szWORD_END_3, 1);
      if ((v36 & 0x80000000) == 0)
      {
        ++*a12;
        goto LABEL_37;
      }

LABEL_41:
      HexArg = v36;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((v26 & 2) != 0)
  {
    v45 = *a7;
    v46 = a5 - v45;
    memmove(a8, (a4 + v45), (a5 - v45));
    memmove((a8 + v46), a6 + 2, a6[35]);
    *(a8 + 64) = a6[35] + v46;
    memmove((a8 + 66), &__n[2], *__n);
    v44 = __n;
  }

  else
  {
    memmove(a8, a6 + 2, a6[35]);
    *(a8 + 64) = a6[35];
    v44 = a6 + 167;
    memmove((a8 + 66), a6 + 38, a6[167]);
  }

  *(a8 + 578) = *v44;
  *a7 = -1;
LABEL_45:
  v47 = *MEMORY[0x1E69E9840];
  return HexArg;
}

uint64_t DoDctPlusRulesSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v16 = 0;
    for (i = 0; i < a5; v16 = i)
    {
      memset(v30, 0, sizeof(v30));
      v21 = wordm_sysdct_CharLookup_Thai(a3, (a4 + i), (a5 - i), v30, 0x16u, a11, "normal");
      if ((v21 & 0x80000000) != 0)
      {
        break;
      }

      if ((LODWORD(v30[0]) - 2) > 3)
      {
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v18, v19, v20, v16);
      }

      else
      {
        v22 = strlen(&v30[4] + 12) + 3;
        v23 = heap_Alloc(*(a1 + 8), v22);
        if (!v23)
        {
          v21 = 2350915594;
          break;
        }

        v24 = v23;
        bzero(v23, v22);
        if (i)
        {
          strcpy(v24, &v30[4] + 12);
        }

        else
        {
          *v24 = 32;
          strcat(v24, &v30[4] + 12);
        }

        *&v24[strlen(v24)] = 32;
        v25 = strlen(v24);
        v21 = bed_Insert(a6, v24, v25);
        if ((v21 & 0x80000000) != 0)
        {
          heap_Free(*(a1 + 8), v24);
          break;
        }

        heap_Free(*(a1 + 8), v24);
      }

      v26 = strlen(v30 + 4);
      if (v26)
      {
        i += v26;
      }

      else
      {
        i = a5;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t getHexArg(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, _WORD *a10)
{
  v49 = a6;
  if (a3)
  {
    v14 = a6;
    v18 = 2350915584;
    v19 = heap_Calloc(*(a1 + 8), 1, 2 * a3 + 2);
    if (v19)
    {
      v20 = v19;
      v46 = a4;
      v47 = a5;
      v21 = *a9 + a3;
      if (LH_wcslen(a8) >= v21)
      {
        v23 = (a8 + 2 * *a9);
        v22 = a3;
        LH_wcsncpy(v20, v23, a3);
      }

      else
      {
        v22 = 0;
      }

      *(v20 + 2 * v22) = 0;
      v24 = utf8_16BitNbrOfUtf8Chars(v20);
      v28 = v24 - 1;
      if (v24 == 1)
      {
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] converted utf8 word length is 0, cant get hex args", v25, v26, v27, v43);
        v37 = *(a1 + 8);
        v38 = v20;
LABEL_20:
        heap_Free(v37, v38);
        return v18;
      }

      v29 = (v24 - 1);
      v30 = heap_Calloc(*(a1 + 8), 1, v29 + 1);
      if (v30)
      {
        v31 = v30;
        strncpy(v30, (a7 + *a10), v28)[v29] = 0;
        v45 = *a10;
        v44 = *a9;
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] get hex args from UTF16Word(%s,pos=%d) UTF8Word(%s,pos=%d)", v32, v33, v34, v20);
        v35 = *(v14 + 16);
        v36 = v35 + 2 * v28 + 1;
        if (*(v14 + 18) >= v36)
        {
          v18 = 0;
        }

        else
        {
          v18 = datac_RequestBlock(v46, v47, (v35 + 2 * v28 + 1), &v49);
          if ((v18 & 0x80000000) != 0)
          {
LABEL_19:
            heap_Free(*(a1 + 8), v20);
            v37 = *(a1 + 8);
            v38 = v31;
            goto LABEL_20;
          }

          v14 = v49;
          v35 = *(v49 + 16);
        }

        v39 = 0;
        v40 = (*(v14 + 8) + *(v14 + 2) * v35);
        *(v14 + 16) = v36;
        do
        {
          v41 = v40;
          LH_itoa(v31[v39], v48, 0x10u);
          v48[2] = 0;
          *v41 = v48[0];
          v40 = v41 + 2;
          v41[1] = v48[1];
          ++v39;
        }

        while (v29 != v39);
        *v40 = 0;
        *a9 += a3;
        *a10 += v28;
        goto LABEL_19;
      }

      heap_Free(*(a1 + 8), v20);
      return 2350915594;
    }

    else
    {
      return 2350915594;
    }
  }

  else
  {
    v18 = 2350915584;
    log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] that parser : word length is 0, cant get hex args", a6, a7, a8, v43);
  }

  return v18;
}

uint64_t xcode_Utf16leToWin874(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v5 = 2370838535;
  if (a2 && a4 && a5)
  {
    if (a3)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3;
      while (v9 < *a5)
      {
        v11 = *v8++;
        v9 += local_xcode_char_Utf16leToWin874(v11, (a4 + v9));
        if (!--v10)
        {
          goto LABEL_10;
        }
      }

      return 2370838537;
    }

    else
    {
      LOWORD(v9) = 0;
LABEL_10:
      v5 = 0;
      *a5 = v9;
    }
  }

  return v5;
}

uint64_t local_xcode_char_Utf16leToWin874(int a1, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 <= 0xFF)
  {
    v2 = a1;
LABEL_4:
    *a2 = v2;
    return 1;
  }

  if (a1 <= 8219)
  {
    if (a1 > 8215)
    {
      if (a1 == 8216)
      {
        v2 = -111;
        goto LABEL_4;
      }

      if (a1 == 8217)
      {
        v2 = -110;
        goto LABEL_4;
      }
    }

    else
    {
      if (a1 == 8211)
      {
        v2 = -106;
        goto LABEL_4;
      }

      if (a1 == 8212)
      {
        v2 = -105;
        goto LABEL_4;
      }
    }
  }

  else if (a1 <= 8225)
  {
    if (a1 == 8220)
    {
      v2 = -109;
      goto LABEL_4;
    }

    if (a1 == 8221)
    {
      v2 = -108;
      goto LABEL_4;
    }
  }

  else
  {
    switch(a1)
    {
      case 8226:
        v2 = -107;
        goto LABEL_4;
      case 8364:
        v2 = 0x80;
        goto LABEL_4;
      case 8230:
        v2 = -123;
        goto LABEL_4;
    }
  }

  v3 = 0;
  if ((~a1 & 0xE00) == 0 && (a1 - 3585) <= 0x5A)
  {
    v2 = a1 - 96;
    goto LABEL_4;
  }

  return v3;
}

uint64_t mDictFind(char *__s2)
{
  v2 = &pMorp_Dct;
  v3 = 3677;
  while (strcmp(v2, __s2))
  {
    v2 += 11;
    if (!--v3)
    {
      return 82;
    }
  }

  return v2[10];
}

uint64_t o2t_ObjOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v3 = 2370838535;
  v10 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v10) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v10 + 8), 9440);
    if (v7)
    {
      v8 = v7;
      bzero(v7, 0x24E0uLL);
      v3 = 0;
      *v8 = a1;
      v8[1] = a2;
      v8[2] = v10;
      *a3 = v8;
    }

    else
    {
      return 2370838538;
    }
  }

  return v3;
}

uint64_t o2t_Transcribe(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned __int16 *a5, char *__dst, unsigned __int16 *a7, char *a8)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = 2370838535;
  v41 = 0;
  if (!a1 || !a2 || (a3 - 64) < 0xFFC1u)
  {
    goto LABEL_57;
  }

  v11 = a7;
  v39 = *a7;
  v40 = 0;
  v42[0] = 0;
  if (a3 < 2)
  {
    ReadThaiChar(*a2, __dst);
    v17 = *(a4 + 64);
    if (*(a4 + 64) || a5[32])
    {
      v35 = strlen(__dst);
      __memcpy_chk();
      v42[v35] = 0;
      goto LABEL_15;
    }

LABEL_46:
    v8 = 0;
    *v11 = strlen(__dst);
    goto LABEL_47;
  }

  if (SParser(a1, a2, a3) != 255)
  {
    v16 = WParser(a1, __dst, v11, &v41, &v40);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_45:
      v8 = v16;
      goto LABEL_57;
    }

    if (v40 != 255)
    {
      if (v41 && (*(a4 + 64) || a5[32]))
      {
        __strncpy_chk();
        v42[v39] = 0;
        v35 = *v11;
        v17 = *(a4 + 64);
LABEL_15:
        v18 = 0;
        v19 = v17 != 0;
        __src = a5;
        if (v17)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        if (a5[32])
        {
          v19 = v20;
        }

        if (v19 == 3)
        {
          v21 = 7;
        }

        else
        {
          v21 = v19;
        }

        v36 = v11;
        while (1)
        {
          if (v21)
          {
            v22 = *(a4 + 64);
            if (v22 + a3 <= 0x3F)
            {
              break;
            }
          }

          if ((v21 & 2) != 0)
          {
            v24 = __src[32];
            if (v24 + a3 <= 0x3F)
            {
              if (*a2 == 224 && *__src == 224)
              {
                v28 = __src[32];
                __memcpy_chk();
                v43[0] = -31;
                v26 = -3;
                v27 = 2;
                v25 = v24;
              }

              else
              {
                __memcpy_chk();
                memcpy(&v43[a3], __src, v24);
                LOWORD(v24) = v24 + a3;
                v25 = v24;
                v26 = -3;
                v27 = 2;
              }

              goto LABEL_36;
            }
          }

          if ((v21 & 4) == 0)
          {
            goto LABEL_37;
          }

          v29 = *(a4 + 64);
          v24 = __src[32];
          if (v29 + a3 + v24 <= 0x3F)
          {
            v30 = *(a4 + 64);
            __memcpy_chk();
            memcpy(&v43[v29], a2, a3);
            v31 = v29 + a3;
            memcpy(&v43[v31], __src, v24);
            LOWORD(v24) = v31 + v24;
            v25 = v24;
            v26 = -5;
            v27 = 3;
            v11 = v36;
            goto LABEL_36;
          }

          v11 = v36;
LABEL_37:
          if (SParser(a1, v43, v18) == 255)
          {
            goto LABEL_44;
          }

          *v11 = v39;
          v16 = WParser(a1, __dst, v11, &v41, &v40);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (v40 == 255)
          {
LABEL_44:
            v8 = 2370838535;
            goto LABEL_57;
          }

          if (!v21 || !v41)
          {
            if (!v41)
            {
              v8 = 0;
              goto LABEL_57;
            }

            if (a3 == 1 && *a2 - 224 <= 4)
            {
              v8 = 2370838535;
              if (__src[289] + v35 < v39)
              {
                strcpy(__dst, v42);
                memcpy(&__dst[v35], __src + 33, __src[289]);
                v8 = 0;
                v32 = __src[289] + v35;
                *v11 = v32;
                __dst[v32] = 0;
                *a8 = 2;
                goto LABEL_57;
              }

LABEL_56:
              *v11 = 0;
              goto LABEL_57;
            }

            v8 = 2370838535;
            if (v39 <= v35)
            {
              goto LABEL_56;
            }

            strcpy(__dst, v42);
            v8 = 0;
            *v11 = v35;
LABEL_47:
            *a8 = 0;
            goto LABEL_57;
          }
        }

        v23 = *(a4 + 64);
        __memcpy_chk();
        memcpy(&v43[v22], a2, a3);
        LOWORD(v24) = v22 + a3;
        v25 = (v22 + a3);
        v26 = -2;
        v27 = 1;
LABEL_36:
        v43[v25] = 0;
        *a8 = v27;
        v21 &= v26;
        v18 = v24;
        goto LABEL_37;
      }

      goto LABEL_46;
    }
  }

LABEL_57:
  v33 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SParser(uint64_t a1, const void *a2, unsigned int a3)
{
  v316 = *MEMORY[0x1E69E9840];
  *(a1 + 89) = 0u;
  v6 = a1 + 89;
  *(a1 + 249) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 217) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 169) = 0u;
  *(a1 + 153) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 121) = 0u;
  *(a1 + 105) = 0u;
  *(a1 + 313) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 281) = 0u;
  *(a1 + 297) = 0u;
  v7 = a1 + 346;
  *(a1 + 265) = 0u;
  bzero((a1 + 346), 0x2380uLL);
  v8 = a1 + 24;
  memcpy((a1 + 24), a2, a3);
  v9 = 0;
  v10 = 0;
  *(a1 + 24 + a3) = 0;
  *(a1 + 9434) = 0;
  v293 = (a1 + 92);
  *(a1 + 345) = 0;
  v288 = (a1 + 349);
  v11 = 0xFFFFFFFFLL;
  v309 = a1;
  *(a1 + 88) = 0;
  v300 = v6;
  v301 = v7;
  v291 = a3;
  do
  {
    if ((v11 & 0x80000000) != 0)
    {
      v11 = 0;
      v13 = v309[88];
    }

    else
    {
      v12 = v7 + 71 * v11++;
      v13 = *(v12 + 1);
      v309[88] = v13;
    }

    if (v13 >= a3)
    {
      continue;
    }

    if (v10)
    {
      v14 = v10;
      v15 = 78;
      v16 = v293;
      do
      {
        if (*(v16 - 3) == v13)
        {
          if (*(v16 - 2) == 1 && *(v7 + 71 * *v16 + 3) == 69)
          {
            *(v7 + 71 * (v11 - 1) + 3) = 78;
          }

          v15 = 89;
        }

        v16 += 4;
        --v14;
      }

      while (v14);
      if (v15 != 78)
      {
        continue;
      }
    }

    v298 = v11;
    v17 = (v8 + v13);
    if (*v17 - 161 >= 0x2E)
    {
      v18 = csrulesc;
    }

    else
    {
      v18 = 0;
    }

    if (*v17 - 161 >= 0x2E)
    {
      v19 = csrulesv;
    }

    else
    {
      v19 = csrulesc;
    }

    if (v18 >= v19)
    {
      goto LABEL_229;
    }

    v296 = 0;
    LODWORD(v20) = 0;
    HIDWORD(v20) = v13;
    v302 = v20;
    do
    {
      v21 = v17;
      v22 = &psrules + 61 * v18;
      v23 = v22 + 30;
      v24 = *v22;
      v25 = strchr(v22 + 30, 43);
      v27 = v13;
      v28 = v13;
      if (v24)
      {
        v29 = v24;
        *&v26 = v302;
        do
        {
          v30 = *(v8 + BYTE4(v26));
          switch(v29)
          {
            case 'A':
              if (v30 == -61)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'B':
              if (v30 == -57)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'C':
              v34 = *(v8 + BYTE4(v26)) - 161 > 0x29;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 95);
              v36 = 0x2802C50040BLL;
              goto LABEL_89;
            case 'D':
              v37 = *(v8 + BYTE4(v26)) - 164 > 0x13;
              v38 = 1 << (*(v8 + BYTE4(v26)) + 92);
              v39 = 655425;
              goto LABEL_96;
            case 'E':
              if (v30 == -51)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'F':
              v37 = *(v8 + BYTE4(v26)) - 164 > 0x12;
              v38 = 1 << (*(v8 + BYTE4(v26)) + 92);
              v39 = 425985;
              goto LABEL_96;
            case 'G':
              v34 = *(v8 + BYTE4(v26)) - 170 > 0x23;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 86);
              v36 = 0x94840A001;
              goto LABEL_89;
            case 'H':
              if (v30 == -53)
              {
                goto LABEL_126;
              }

LABEL_84:
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'J':
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u || v30 == -57 || *(v8 + BYTE4(v26)) == 205)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'K':
              v34 = *(v8 + BYTE4(v26)) - 164 > 0x26;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 92);
              v36 = 0x4020000001;
              goto LABEL_89;
            case 'L':
              if (v30 != -59 && *(v8 + BYTE4(v26)) != 195)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'M':
              v34 = *(v8 + BYTE4(v26)) - 161 > 0x2A;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 95);
              v36 = 0x40681041401;
              goto LABEL_89;
            case 'N':
              v34 = *(v8 + BYTE4(v26)) - 162 > 0x28;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 94);
              v36 = 0x1A8006F81C5;
LABEL_89:
              v43 = v35 & v36;
              if (!v34 && v43 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'O':
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              v33 = *(v8 + BYTE4(v26)) - 194 > 5 || ((1 << (*(v8 + BYTE4(v26)) + 62)) & 0x23) == 0;
              if (!v33)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'P':
              v40 = *(v8 + BYTE4(v26)) - 184 > 0x13;
              v41 = 1 << (*(v8 + BYTE4(v26)) + 72);
              v42 = 796673;
              goto LABEL_103;
            case 'Q':
              v40 = *(v8 + BYTE4(v26)) - 166 > 7;
              v41 = 1 << (*(v8 + BYTE4(v26)) + 90);
              v42 = 145;
              goto LABEL_103;
            case 'R':
              v40 = *(v8 + BYTE4(v26)) - 195 > 4;
              v41 = 1 << (*(v8 + BYTE4(v26)) + 61);
              v42 = 21;
LABEL_103:
              v47 = v41 & v42;
              if (!v40 && v47 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'S':
              v37 = *(v8 + BYTE4(v26)) - 174 > 0x1B;
              v38 = 1 << (*(v8 + BYTE4(v26)) + 82);
              v39 = 134217731;
LABEL_96:
              v45 = v38 & v39;
              if (!v37 && v45 != 0)
              {
                goto LABEL_111;
              }

              goto LABEL_126;
            case 'T':
              if ((v30 & 0xFFFFFFFC) == 0xFFFFFFE8)
              {
                goto LABEL_117;
              }

              if (v22[60] == 78)
              {
                v31 = -2;
              }

              else
              {
                v31 = -1;
              }

              v32 = v26;
              if (v22[60] == 78)
              {
                v32 = v26 + 1;
              }

              LODWORD(v26) = v32;
              break;
            case 'U':
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u || (*(v8 + BYTE4(v26)) | 4) == 0xC7)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'W':
              if (v30 == -62)
              {
                goto LABEL_126;
              }

              goto LABEL_110;
            case 'X':
              if ((v30 + 95) > 0x2D)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'Y':
              if ((v30 + 95) > 0x2D)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'Z':
              if (v30 == -57)
              {
                goto LABEL_126;
              }

LABEL_110:
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

LABEL_111:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v306 = v26;
              contable(v30, 1, v310);
              v26 = v306;
              if (v310[0] == 45)
              {
                v31 = -1;
              }

              else
              {
                v31 = -2;
              }

              break;
            case 'a':
              if (v30 != -47)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'b':
              if (v30 != -44)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'c':
              if (v30 != -43)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'd':
              if (v30 != -42)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'e':
              if (v30 != -41)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'f':
              if (v30 != -40)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'g':
              if (v30 != -39)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'h':
              if (v30 != -45)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'i':
              if (v30 != -25)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'j':
              if (v30 != -20)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            default:
              if (v29 != *(v8 + BYTE4(v26)))
              {
                goto LABEL_126;
              }

LABEL_117:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v31 = -2;
              break;
          }

          if (v31 != -2)
          {
            break;
          }

          v29 = v22[v26];
        }

        while (v29);
        if (v31 != -2)
        {
LABEL_126:
          v17 = v21;
          goto LABEL_131;
        }

        v28 = BYTE4(v26);
        v27 = BYTE4(v26);
      }

      v49 = *(v8 + v27);
      if ((v49 & 0xFC) == 0xE8)
      {
        goto LABEL_126;
      }

      v50 = v49 - 208 > 9 || v49 == 211;
      v17 = v21;
      if (v50)
      {
        v51 = v28 - v13;
        if (v49 != 236 && v51 != -1)
        {
          v307 = v19;
          v53 = v51;
          __strncpy_chk();
          v286 = v53;
          __s[v53] = 0;
          v19 = v307;
          v54 = v309;
          if (!v25)
          {
            goto LABEL_194;
          }

          v55 = strchr(v25, 39);
          v56 = &v311;
          if (v55)
          {
            while (1)
            {
              v58 = *++v56;
              v57 = v58;
              if (v58 == 88)
              {
                break;
              }

              if (!v57)
              {
                if (patt_check(v56, "X\xE4\x58X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v59 = &v311;
            while (1)
            {
              v61 = *++v59;
              v60 = v61;
              if (v61 == 88)
              {
                break;
              }

              if (!v60)
              {
                if (patt_check(v59, "X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v62 = &v311;
            while (1)
            {
              v64 = *++v62;
              v63 = v64;
              if (v64 == 88)
              {
                break;
              }

              if (!v63)
              {
                if (patt_check(v62, "X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v65 = &v311;
            while (1)
            {
              v67 = *++v65;
              v66 = v67;
              if (v67 == 88)
              {
                break;
              }

              if (!v66)
              {
                if (patt_check(v65, "X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v68 = __s;
            do
            {
              v70 = *v68++;
              v69 = v70;
            }

            while ((v70 - 207) < 0xFFFFFFD2);
            v71 = *v68;
            switch(v71)
            {
              case 199:
                if (v69 == 164)
                {
                  goto LABEL_131;
                }

                break;
              case 197:
                v90 = v69 - 161;
                v34 = v90 > 0x1D;
                v91 = (1 << v90) & 0x2C000001;
                if (!v34 && v91 != 0)
                {
                  goto LABEL_131;
                }

                break;
              case 195:
                v72 = v69 - 161;
                if (v72 <= 0x29 && ((1 << v72) & 0x2802C500403) != 0)
                {
                  goto LABEL_131;
                }

                break;
            }

LABEL_191:
            if (patt_check(__s, "\xE0\x58\x52") == 1)
            {
              goto LABEL_131;
            }

            if (patt_check(__s, "\xE1\x58\x52") == 1)
            {
              goto LABEL_131;
            }

            v93 = patt_check(__s, "\xE2\x58\x52");
            v54 = v309;
            if (v93 == 1)
            {
              goto LABEL_131;
            }

LABEL_194:
            if (v24 == 33)
            {
              v94 = v54[88];
              if (!v94)
              {
                goto LABEL_131;
              }

              if (patt_check(__s, "X\xEC\x58XX\xEC\xECPQS") != 1)
              {
                v97 = patt_check(__s, "XX\xEC\xECPQS");
                v54 = v309;
                if (v97 == 1 && v94 != 1 && *(v8 + (v94 - 1)) - 207 < 0xFFFFFFD2)
                {
                  goto LABEL_131;
                }

                goto LABEL_211;
              }

              if (v94 == 1)
              {
                v96 = -1;
                v54 = v309;
              }

              else
              {
                v95 = *(v8 + (v94 - 1)) - 205 > 7 || ((1 << (*(v8 + (v94 - 1)) + 51)) & 0xA1) == 0;
                v54 = v309;
                if (!v95)
                {
                  goto LABEL_211;
                }

                v96 = v94 - 2;
                if (v94 == 2)
                {
                  goto LABEL_131;
                }
              }

              if (*(v8 + v96) != 226)
              {
                goto LABEL_131;
              }
            }

LABEL_211:
            v98 = v54;
            v99 = v54[345];
            if (v99 > 0x40 || (v100 = v98[9434], v100 > 0x80))
            {
              result = 255;
              goto LABEL_546;
            }

            if (v296)
            {
              v101 = v300 + 4 * v99;
              v102 = *(v101 + 1) + 1;
              v103 = *(v101 + 2) + 1;
              v104 = v309;
            }

            else
            {
              *(v300 + 4 * v99) = 0;
              v104 = v309;
              v99 = v309[345];
              v105 = v300 + 4 * v99;
              *v105 = v309[88];
              *(v105 + 1) = 0;
              *(v105 + 3) = v100;
              v103 = 1;
              v102 = 1;
            }

            v106 = v300 + 4 * v99;
            *(v106 + 1) = v102;
            *(v106 + 2) = v103;
            v107 = v301 + 71 * v100;
            *(v107 + 63) = 0;
            *(v107 + 32) = 0u;
            *(v107 + 48) = 0u;
            *v107 = 0u;
            *(v107 + 16) = 0u;
            v108 = (v301 + 71 * v104[9434]);
            *v108 = v104[88];
            v108[1] = v13 + v286;
            v108[2] = 32;
            v108[5] = v18;
            __strcpy_chk();
            *(v301 + 71 * v104[9434] + 38) = 0;
            v109 = mDictFind(__s);
            v110 = v104[9434];
            v111 = v301 + 71 * v104[9434];
            *(v111 + 4) = v109;
            v112 = (v111 + 4);
            if (*(v112 - 3) == v291)
            {
              v113 = 76;
            }

            else
            {
              v113 = 70;
            }

            *(v112 - 1) = v113;
            if (v109 == 82 && strchr(v23, 33))
            {
              *v112 = 86;
              *(v301 + 71 * v110 + 70) = 0;
              v17 = v21;
            }

            else
            {
              v114 = strchr(v23, 39);
              v115 = v301 + 71 * v110;
              v17 = v21;
              if (v114)
              {
                *(v115 + 70) = 2;
              }

              else
              {
                *(v115 + 70) = 1;
              }
            }

            ++v296;
            v309[9434] = v110 + 1;
            goto LABEL_131;
          }

          v73 = __s;
          do
          {
            v75 = *v73++;
            v74 = v75;
          }

          while ((v75 - 207) < 0xFFFFFFD2);
          if (v74 != 187 || *v73 != 197)
          {
            v76 = &v311;
            v54 = v309;
            do
            {
              v78 = *++v76;
              v77 = v78;
              if (v78 == 224)
              {
                goto LABEL_170;
              }
            }

            while (v77);
            v79 = patt_check(v76, "\xE0\x43\x52");
            v54 = v309;
            if (v79 != 1)
            {
LABEL_170:
              v80 = &v311;
              while (1)
              {
                v82 = *++v80;
                v81 = v82;
                if (v82 == 225)
                {
                  break;
                }

                if (!v81)
                {
                  v83 = patt_check(v80, "\xE1\x43\x52");
                  v54 = v309;
                  if (v83 == 1)
                  {
                    goto LABEL_178;
                  }

                  break;
                }
              }

              v84 = &v311;
              while (1)
              {
                v86 = *++v84;
                v85 = v86;
                if (v86 == 226)
                {
                  goto LABEL_194;
                }

                if (!v85)
                {
                  v87 = patt_check(v84, "\xE2\x43\x52");
                  v54 = v309;
                  if (v87 != 1)
                  {
                    goto LABEL_194;
                  }

                  break;
                }
              }
            }

LABEL_178:
            v88 = strlen(__s);
            v54 = v309;
            if (__s[(v88 - 1)] - 195 > 4 || ((1 << (__s[(v88 - 1)] + 61)) & 0x15) == 0)
            {
              goto LABEL_194;
            }
          }
        }
      }

LABEL_131:
      ++v18;
    }

    while (v18 != v19);
    v10 = v309[345];
    if (v296)
    {
      v309[345] = ++v10;
      v9 = v309[9434];
      v6 = v300;
      v7 = v301;
      a3 = v291;
      v11 = v298;
      continue;
    }

    LOBYTE(v9) = v309[9434];
    v6 = v300;
    a3 = v291;
LABEL_229:
    v116 = v6 + 4 * v10;
    *v116 = v13;
    *(v116 + 1) = 257;
    *(v116 + 3) = v9;
    LODWORD(v116) = v9;
    v7 = v301;
    v117 = v301 + 71 * v9;
    *v117 = v13;
    *(v117 + 1) = v13 + 1;
    *(v117 + 2) = 20000;
    *(v117 + 4) = 85;
    *(v117 + 6) = *v17;
    *(v117 + 7) = 0;
    *(v117 + 38) = 0;
    *(v117 + 70) = 1;
    v309[345] = ++v10;
    v9 = (v116 + 1);
    v309[9434] = v116 + 1;
    v118 = (v116 + 1);
    *(v301 + 71 * v118 - 68) = 21573;
    if ((v9 & 0x100) != 0)
    {
      v9 = 0;
      v11 = v298;
    }

    else
    {
      v119 = v309[88];
      v120 = v288;
      v11 = v298;
      do
      {
        if (*(v120 - 2) == v119 && *v120 != 69)
        {
          *v120 = 78;
        }

        v120 += 71;
        --v118;
      }

      while (v118);
    }
  }

  while (v11 < v9);
  if (v9)
  {
    v121 = 0;
    v122 = v9;
    v123 = v9;
    v124 = v309;
    do
    {
      v125 = (v7 + 71 * v121);
      if (v125[4] == 86)
      {
        if (v121 >= v123)
        {
          v127 = v122;
        }

        else
        {
          v126 = 1;
          v127 = v122;
          v128 = v121;
LABEL_242:
          v129 = &v309[71 * v128 + 352];
          do
          {
            if (*(v129 - 5) == *v125)
            {
              __strcpy_chk();
              __strcat_chk();
              v130 = mDictFind(__s);
              if (v130 != 82)
              {
                v131 = v130;
                __strcat_chk();
                v126 = 0;
                *(v129 - 5) = v125[1];
                *(v129 - 3) = v125[3];
                *(v129 - 2) = v131;
                ++v128;
                v124 = v309;
                v122 = v309[9434];
                v127 = v122;
                v132 = v122;
                if (v128 < v122)
                {
                  goto LABEL_242;
                }

                goto LABEL_264;
              }

              v127 = v309[9434];
            }

            ++v128;
            v129 += 71;
          }

          while (v128 < v127);
          v123 = v127;
          v122 = v127;
          v132 = v127;
          v124 = v309;
          if ((v126 & 1) == 0)
          {
            goto LABEL_264;
          }
        }

        v125[3] = 69;
        if (patt_check(v125 + 6, "X\xECPQS") == 1)
        {
          *(v125 + 19) = 33;
        }

        v125[4] = 84;
        if (v123)
        {
          v133 = *v125;
          v134 = v123;
          v135 = v309 + 349;
          do
          {
            if (*(v135 - 2) == v133 && *v135 != 69)
            {
              *v135 = 78;
            }

            v135 += 71;
            --v134;
          }

          while (v134);
          v122 = v127;
          v132 = v123;
        }

        else
        {
          v132 = 0;
          v122 = v127;
        }

        v124 = v309;
      }

      else
      {
        v132 = v123;
      }

LABEL_264:
      ++v121;
      v123 = v132;
      v7 = v301;
    }

    while (v121 < v132);
    v10 = v124[345];
    v6 = v300;
  }

  else
  {
    LOBYTE(v122) = 0;
  }

  if (v10 < 2u)
  {
    v144 = v122;
  }

  else
  {
    v136 = 0;
    v137 = v309 + 93;
    v138 = 1;
    do
    {
      v139 = v136 + 1;
      if (v136 + 1 < v10)
      {
        v140 = (v6 + 4 * v136);
        v141 = v137;
        v142 = v138;
        do
        {
          if (*v140 > *v141)
          {
            v143 = *v140;
            *v140 = *v141;
            *v141 = v143;
            v10 = v309[345];
          }

          ++v142;
          v141 += 4;
        }

        while (v142 < v10);
      }

      ++v138;
      v137 += 4;
      v136 = v139;
    }

    while (v10 - 1 > v139);
    v144 = v309[9434];
  }

  if (v144 >= 2u)
  {
    v145 = 0;
    v146 = v309 + 417;
    v147 = 1;
    do
    {
      v148 = v145 + 1;
      if (v145 + 1 < v144)
      {
        v149 = (v7 + 71 * v145);
        v150 = v146;
        v151 = v147;
        do
        {
          v152 = *v149;
          v153 = *v150;
          if (v152 > v153 || v152 == v153 && v149[1] < v150[1])
          {
            v154 = *(v149 + 3);
            v314 = *(v149 + 2);
            v315[0] = v154;
            *(v315 + 15) = *(v149 + 63);
            v155 = *(v149 + 1);
            *__s = *v149;
            v313 = v155;
            *v149 = *v150;
            v157 = *(v150 + 2);
            v156 = *(v150 + 3);
            v158 = *(v150 + 1);
            *(v149 + 63) = *(v150 + 63);
            *(v149 + 2) = v157;
            *(v149 + 3) = v156;
            *(v149 + 1) = v158;
            *(v150 + 63) = *(v315 + 15);
            v159 = v315[0];
            *(v150 + 2) = v314;
            *(v150 + 3) = v159;
            v160 = v313;
            *v150 = *__s;
            *(v150 + 1) = v160;
          }

          ++v151;
          v150 += 71;
        }

        while (v151 < v309[9434]);
        v144 = v309[9434];
      }

      ++v147;
      v146 += 71;
      v145 = v148;
    }

    while (v144 - 1 > v148);
  }

  if (v10 >= 2u)
  {
    v161 = v10 - 1;
    v162 = v309 + 96;
    do
    {
      *v162 = *(v162 - 6) + *(v162 - 4);
      v162 += 4;
      --v161;
    }

    while (v161);
  }

  v163 = v309[345];
  if (!v309[345])
  {
    goto LABEL_545;
  }

  v294 = v309 + 348;
  v295 = v309 + 350;
  while (2)
  {
    v164 = (v6 + 4 * --v163);
    v165 = v164[2];
    if (v165 < 2)
    {
      goto LABEL_525;
    }

    v303 = v163;
    v166 = v164[3];
    v297 = (v6 + 4 * v163);
    v167 = v164[1];
    v168 = v167 + v166;
    if (v166 >= (v167 + v166))
    {
      v174 = -1;
      v171 = 0xFFFF;
      v173 = 0xFFFF;
      v176 = -1;
      v182 = v301;
    }

    else
    {
      v169 = (v167 + v166);
      v170 = -1;
      v171 = 0xFFFF;
      v172 = v164[3];
      v173 = 0xFFFF;
      v174 = -1;
      v175 = &v295[71 * v172];
      v176 = -1;
      do
      {
        if (*(v175 - 2) != 89)
        {
          v177 = *(v175 - 1);
          if (v177 == 76)
          {
            v178 = v172;
          }

          else
          {
            v178 = v174;
          }

          if (v177 == 78)
          {
            v178 = v174;
            v179 = v172;
          }

          else
          {
            v179 = v170;
          }

          if (v177 == 70)
          {
            v176 = v172;
          }

          else
          {
            v174 = v178;
            v170 = v179;
          }

          v180 = *v175;
          if (v180 == 88)
          {
            v181 = v172;
          }

          else
          {
            v181 = v173;
          }

          if (v180 == 89)
          {
            v171 = v172;
          }

          else
          {
            v173 = v181;
          }
        }

        v175 += 71;
        ++v172;
      }

      while (v169 != v172);
      v182 = v301;
      if ((v170 & 0x80000000) == 0 && ((v174 & 0x80000000) == 0 || (v176 & 0x80000000) == 0))
      {
        v183 = &v294[71 * v166];
        v184 = v169 - v166;
        do
        {
          if (v183[1] == 78 && *v183 != 89)
          {
            *(v300 + 4 * v163 + 2) = --v165;
            *v183 = 89;
          }

          v183 += 71;
          --v184;
        }

        while (v184);
      }
    }

    if (v174 < 0 && v176 < 0 && (v166 + 1) < v168)
    {
      v185 = *(v182 + 71 * v166 + 1);
      v186 = v166 + 1;
      v187 = &v294[71 * (v166 + 1)];
      v188 = v166;
      while (*(v187 - 1) > v185)
      {
        v189 = v182 + 71 * v188;
        v191 = *(v189 + 2);
        v190 = (v189 + 2);
        v188 = v186;
        if (v191 != 89)
        {
          v185 = *(v187 - 1);
LABEL_333:
          *(v300 + 4 * v163 + 2) = --v165;
          *v190 = 89;
          goto LABEL_334;
        }

        v185 = *(v187 - 1);
LABEL_334:
        ++v186;
        v187 += 71;
        if (v168 == v186)
        {
          goto LABEL_335;
        }
      }

      v190 = v187;
      if (*v187 == 89)
      {
        goto LABEL_334;
      }

      goto LABEL_333;
    }

LABEL_335:
    if (v165 < 2u)
    {
      goto LABEL_525;
    }

    if (v166 >= v168)
    {
      v207 = 0;
      v308 = 0;
      v206 = 0;
    }

    else
    {
      v192 = -1;
      v193 = 0xFFFF;
      v194 = v166;
      v195 = 0xFFFF;
      v196 = 0xFFFF;
      v197 = &v295[71 * v166];
      v198 = 0xFFFF;
      do
      {
        if (*(v197 - 2) != 89)
        {
          if (*(v197 - 1) == 76)
          {
            v192 = v194;
          }

          v199 = *v197;
          if (v199 == 88)
          {
            v200 = v194;
          }

          else
          {
            v200 = v173;
          }

          if (v199 == 89)
          {
            v200 = v173;
            v201 = v194;
          }

          else
          {
            v201 = v171;
          }

          if (v199 == 83)
          {
            v200 = v173;
            v201 = v171;
            v202 = v194;
          }

          else
          {
            v202 = v193;
          }

          if (v199 == 82)
          {
            v203 = v194;
          }

          else
          {
            v203 = v198;
          }

          if (v199 == 81)
          {
            v203 = v198;
            v204 = v194;
          }

          else
          {
            v204 = v195;
          }

          if (v199 == 80)
          {
            v203 = v198;
            v205 = v194;
          }

          else
          {
            v205 = v196;
          }

          if (v199 == 80)
          {
            v204 = v195;
          }

          if (*v197 <= 0x52u)
          {
            v198 = v203;
            v196 = v205;
          }

          else
          {
            v173 = v200;
            v171 = v201;
          }

          if (*v197 > 0x52u)
          {
            v193 = v202;
          }

          else
          {
            v195 = v204;
          }
        }

        v197 += 71;
        ++v194;
      }

      while (v168 != v194);
      v206 = v192 >= 0;
      v308 = (v198 & 0x8000u) == 0;
      v207 = (v196 & v195 & v198 & v193 & 0x8000u) == 0;
      if ((v192 & 0x80000000) == 0 && (v173 & 0x8000) != 0 && (v171 & 0x8000) != 0)
      {
        v208 = v168 - v166;
        v209 = &v294[71 * v166];
        do
        {
          if (v209[1] != 76 && *v209 != 89)
          {
            *(v300 + 4 * v163 + 2) = --v165;
            *v209 = 89;
          }

          v209 += 71;
          --v208;
        }

        while (v208);
        v206 = 1;
      }
    }

    v299 = v163;
    if ((v173 & 0x8000) == 0 || (v171 & 0x8000) == 0)
    {
      if ((v173 & 0x8000) == 0)
      {
        if (v166 < v168)
        {
          v304 = v206;
          v210 = &v295[71 * v166];
          v211 = v166;
          v212 = v309;
          do
          {
            if (v211 != v173 && (*v210 & 0xFE) == 0x58 && *(v210 - 2) != 89)
            {
              v213 = compareXX(v212, v163, v211, v173);
              v212 = v309;
              if (v213)
              {
                LOWORD(v173) = v211;
              }
            }

            ++v211;
            v210 += 71;
          }

          while (v168 != v211);
          goto LABEL_399;
        }

        if (!v206 && v207)
        {
LABEL_444:
          keepLongest(v309, v163);
        }

        goto LABEL_445;
      }

      v214 = v309;
      if (v166 < v168 && (v171 & 0x8000) == 0)
      {
        v304 = v206;
        v215 = &v295[71 * v166];
        v216 = v166;
        do
        {
          if (v216 != v171 && (*v215 & 0xFE) == 0x58 && *(v215 - 2) != 89)
          {
            v217 = compareXX(v214, v163, v216, v171);
            v214 = v309;
            if (v217)
            {
              LOWORD(v171) = v216;
            }
          }

          ++v216;
          v215 += 71;
        }

        while (v168 != v216);
LABEL_399:
        v206 = v304;
      }
    }

    if ((v173 & v171 & 0x8000u) == 0 && v207)
    {
      if (v166 >= v168)
      {
        if (!v206)
        {
          goto LABEL_444;
        }
      }

      else
      {
        v305 = v206;
        v218 = 0;
        v219 = v300 + 4 * v303;
        v220 = &v294[71 * v166];
        v221 = v168 - v166;
        v222 = v166;
        do
        {
          v223 = (v301 + 71 * v222);
          if ((v223[4] & 0xFE) == 0x58 && v223[2] != 89)
          {
            if (v223[3] != 76 && findCfollow(v309, v222, 0x58u) == 255)
            {
              if (v308 && (findCfollow(v309, v222, 0x51u) != 255 || findCfollow(v309, v222, 0x53u) != 255 || findCfollow(v309, v222, 0x50u) != 255))
              {
                v226 = v168 - v166;
                v227 = &v294[71 * v166];
                do
                {
                  if (v227[2] == 82)
                  {
                    if (*v227 != 89)
                    {
                      --*(v219 + 2);
                      *v227 = 89;
                    }

                    v218 = 9;
                  }

                  v227 += 71;
                  --v226;
                }

                while (v226);
              }
            }

            else
            {
              v224 = &v294[71 * v166];
              v225 = v168 - v166;
              do
              {
                if ((v224[2] & 0xFE) != 0x58)
                {
                  if (*v224 != 89)
                  {
                    --*(v219 + 2);
                    *v224 = 89;
                  }

                  v218 = 9;
                }

                v224 += 71;
                --v225;
              }

              while (v225);
            }
          }

          ++v222;
        }

        while (v222 != v168);
        if (v218 != 9 && v308)
        {
          v228 = &v294[71 * v166];
          do
          {
            if (v228[2] == 82 && (allCfollow(v309, v166, 0x52u) || allCfollow(v309, v166, 0x54u)) && *v228 != 89)
            {
              --*(v219 + 2);
              *v228 = 89;
            }

            LOBYTE(v166) = v166 + 1;
            v228 += 71;
          }

          while (v168 != v166);
        }

        v33 = v218 == 9;
        v163 = v299;
        if (!v33)
        {
          if (!v305)
          {
            goto LABEL_444;
          }

          do
          {
            if (v220[1] != 76 && *v220 != 89)
            {
              --*(v219 + 2);
              *v220 = 89;
            }

            v220 += 71;
            --v221;
          }

          while (v221);
        }
      }
    }

LABEL_445:
    v229 = v297[2];
    if (v229 < 2)
    {
      goto LABEL_525;
    }

    v230 = v297[3];
    v231 = v297[1];
    v232 = (v231 + v230);
    v233 = (v231 + v230);
    if (v230 >= (v231 + v230))
    {
      v252 = 0;
      v289 = 1;
      v285 = 1;
      v287 = 1;
      v290 = 1;
    }

    else
    {
      v234 = &v295[71 * v297[3]];
      v235 = 0xFFFF;
      v236 = v297[3];
      v237 = 0xFFFF;
      v238 = 0xFFFF;
      v239 = 0xFFFF;
      v240 = 0xFFFF;
      v241 = 0xFFFF;
      v242 = 0xFFFF;
      do
      {
        if (*(v234 - 2) != 89)
        {
          v243 = *v234;
          if (v243 == 88)
          {
            v244 = v236;
          }

          else
          {
            v244 = v242;
          }

          if (v243 == 89)
          {
            v244 = v242;
            v245 = v236;
          }

          else
          {
            v245 = v241;
          }

          if (v243 == 84)
          {
            v246 = v236;
          }

          else
          {
            v246 = v235;
          }

          if (v243 == 83)
          {
            v247 = v236;
          }

          else
          {
            v247 = v237;
          }

          if (v243 == 83)
          {
            v246 = v235;
          }

          if (*v234 > 0x57u)
          {
            v247 = v237;
            v246 = v235;
          }

          else
          {
            v244 = v242;
            v245 = v241;
          }

          if (v243 == 82)
          {
            v248 = v236;
          }

          else
          {
            v248 = v240;
          }

          if (v243 == 81)
          {
            v248 = v240;
            v249 = v236;
          }

          else
          {
            v249 = v238;
          }

          if (v243 == 80)
          {
            v248 = v240;
            v250 = v236;
          }

          else
          {
            v250 = v239;
          }

          if (v243 == 80)
          {
            v249 = v238;
          }

          if (*v234 <= 0x52u)
          {
            v240 = v248;
            v239 = v250;
          }

          else
          {
            v242 = v244;
            v241 = v245;
          }

          if (*v234 > 0x52u)
          {
            v237 = v247;
          }

          else
          {
            v238 = v249;
          }

          if (*v234 > 0x52u)
          {
            v235 = v246;
          }
        }

        ++v236;
        v234 += 71;
      }

      while (v233 != v236);
      v251 = 0;
      v252 = (v235 & 0x8000u) == 0;
      v290 = (v239 & 0x8000u) != 0;
      v285 = (v240 & 0x8000u) != 0;
      v287 = (v238 & 0x8000u) != 0;
      v289 = (v237 & 0x8000u) != 0;
      if ((v242 & 0x8000) == 0 || (v241 & 0x8000) == 0)
      {
LABEL_515:
        if (v252)
        {
          goto LABEL_516;
        }

        goto LABEL_525;
      }
    }

    v292 = v252;
    v253 = 0;
    do
    {
      v254 = v309;
      if (v230 >= v232)
      {
        LOBYTE(v256) = v230;
      }

      else
      {
        v255 = v232;
        v256 = v230;
        v257 = v230;
        v258 = 71 * v230 + 350;
        while (1)
        {
          if (*(v254 + v258) != 82)
          {
            v259 = aX_4[v253 + 11];
            Cfollow = findCfollow(v254, v256, v259);
            v254 = v309;
            if (Cfollow != 255)
            {
              break;
            }
          }

          ++v256;
          v258 += 71;
          ++v257;
          if (v233 == v256)
          {
            v232 = v255;
            LOBYTE(v256) = v255;
            goto LABEL_507;
          }
        }

        v261 = v257;
        v262 = &v294[71 * v230];
        v263 = v230;
        do
        {
          if (v261 != v263)
          {
            if ((findCfollow(v254, v263, v259) == 255 || v262[2] == 82) && *v262 != 89)
            {
              *(v300 + 4 * v303 + 2) = --v229;
              *v262 = 89;
            }

            v254 = v309;
          }

          ++v263;
          v262 += 71;
        }

        while (v233 != v263);
        v163 = v299;
        v232 = v255;
      }

LABEL_507:
      v264 = v253 + 1;
      if (v256 != v232)
      {
        break;
      }
    }

    while (v253++ < 3);
    v251 = 1;
    if (v256 != v232)
    {
      v252 = v292;
      goto LABEL_515;
    }

    v252 = v292;
    if (v264 != 4)
    {
      goto LABEL_515;
    }

    keepLongest(v309, v163);
    if (v292)
    {
      v229 = v297[2];
      v251 = 1;
LABEL_516:
      if (v229 >= 2u)
      {
        if (v251 & (v290 && v287) & (v285 && v289))
        {
          keepLongest(v309, v163);
        }

        else if (v230 < v232)
        {
          v266 = &v294[71 * v230];
          v267 = v233 - v230;
          do
          {
            if (v266[2] == 84 && *v266 != 89)
            {
              *(v300 + 4 * v303 + 2) = --v229;
              *v266 = 89;
            }

            v266 += 71;
            --v267;
          }

          while (v267);
        }
      }
    }

LABEL_525:
    v6 = v300;
    if (v163)
    {
      continue;
    }

    break;
  }

  v268 = v309[345];
  result = 1;
  if (v309[345])
  {
    v270 = 0;
    v271 = 0;
    v272 = 0;
    while (1)
    {
      v273 = (v300 + 4 * v270);
      if (v273[2] != 2)
      {
        goto LABEL_544;
      }

      v274 = v273[3];
      v275 = v273[1];
      v276 = v275 + v274;
      if (v274 >= (v275 + v274))
      {
        goto LABEL_544;
      }

      v277 = 0;
      v278 = &v309[71 * v273[3] + 347];
      while (v278[1] == 89)
      {
LABEL_534:
        LOBYTE(v274) = v274 + 1;
        v278 += 71;
        if (v276 == v274)
        {
          goto LABEL_544;
        }
      }

      if (!v277)
      {
        break;
      }

      if (v277 == *v278)
      {
        v279 = v278[69];
        if (v271 <= v279 || (v280 = v301 + 71 * v272, v282 = *(v280 + 2), v281 = (v280 + 2), v282 == 89))
        {
          v283 = 1;
        }

        else
        {
          v283 = 0;
          v273[2] = 1;
          *v281 = 89;
        }

        if (v271 < v279 && v278[1] != 89)
        {
          v273[2] = v283;
          v278[1] = 89;
        }
      }

LABEL_544:
      if (++v270 == v268)
      {
LABEL_545:
        result = 1;
        goto LABEL_546;
      }
    }

    v271 = v278[69];
    v272 = v274;
    v277 = *v278;
    goto LABEL_534;
  }

LABEL_546:
  v284 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WParser(uint64_t a1, char *a2, _WORD *a3, _BYTE *a4, int *a5)
{
  *a4 = 0;
  *a2 = 0;
  v8 = *(a1 + 345);
  if (*(a1 + 345))
  {
    v9 = (v8 + 15) & 0x1F0;
    v10 = vdupq_n_s64(v8 - 1);
    v11 = xmmword_1C37CA010;
    v12 = xmmword_1C37CA020;
    v13 = xmmword_1C37CA030;
    v14 = xmmword_1C37CA040;
    v15 = xmmword_1C37BDD80;
    v16 = xmmword_1C37BDD90;
    v17 = xmmword_1C378AEF0;
    v18 = xmmword_1C378AF00;
    v19 = (a1 + 150);
    v20 = vdupq_n_s64(0x10uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v10, v18));
      if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 60) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
      {
        *(v19 - 56) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
      {
        *(v19 - 52) = 0;
        *(v19 - 48) = 0;
      }

      v22 = vmovn_s64(vcgeq_u64(v10, v16));
      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i32[1])
      {
        *(v19 - 44) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i8[5])
      {
        *(v19 - 40) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
      {
        *(v19 - 36) = 0;
        *(v19 - 32) = 0;
      }

      v23 = vmovn_s64(vcgeq_u64(v10, v14));
      if (vuzp1_s8(vuzp1_s16(v23, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 28) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v10), *&v10).i8[1])
      {
        *(v19 - 24) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
      {
        *(v19 - 20) = 0;
        *(v19 - 16) = 0;
      }

      v24 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i32[1])
      {
        *(v19 - 12) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i8[5])
      {
        *(v19 - 8) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
      {
        *(v19 - 4) = 0;
        *v19 = 0;
      }

      v16 = vaddq_s64(v16, v20);
      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s64(v18, v20);
      v15 = vaddq_s64(v15, v20);
      v14 = vaddq_s64(v14, v20);
      v13 = vaddq_s64(v13, v20);
      v12 = vaddq_s64(v12, v20);
      v19 += 64;
      v11 = vaddq_s64(v11, v20);
      v9 -= 16;
    }

    while (v9);
  }

  v25 = *(a1 + 90);
  if (v25 < *(a1 + 91))
  {
    LOBYTE(v25) = v25 + 1;
    *(a1 + 90) = v25;
  }

  v26 = *(a1 + 92);
  v27 = *(a1 + 9434);
  if (v26 < v27)
  {
    v28 = (a1 + 71 * *(a1 + 92) + 348);
    v29 = 1;
    do
    {
      v30 = *v28;
      v28 += 71;
      if (v30 != 89)
      {
        if (v29 == v25)
        {
          goto LABEL_37;
        }

        ++v29;
      }

      LOBYTE(v26) = v26 + 1;
    }

    while (v27 != v26);
  }

  LOBYTE(v26) = -1;
LABEL_37:
  v31 = rule2phone(a1, v26);
  if (v31 < 0)
  {
    v55 = a5;
    v34 = 0;
  }

  else
  {
    v32 = v31;
    v33 = a1 + 71 * v26;
    v34 = strlen((v33 + 384));
    if (*a3 <= v34)
    {
      result = 0;
      v54 = 255;
      goto LABEL_72;
    }

    v55 = a5;
    strcpy(a2, (v33 + 384));
    *a4 = v32;
  }

  if (*(a1 + 345) >= 2u)
  {
    v35 = a1 + 346;
    for (i = 1; i < *(a1 + 345); ++i)
    {
      v37 = (a1 + 89 + 4 * i);
      if (*v37 == *(v35 + 71 * v26 + 1))
      {
        v38 = v37[1];
        if (v38 < v37[2])
        {
          LOBYTE(v38) = v38 + 1;
          v37[1] = v38;
        }

        v26 = v37[3];
        v39 = *(a1 + 9434);
        if (v26 < v39)
        {
          v40 = (a1 + 348 + 71 * v26);
          v41 = 1;
          do
          {
            v42 = *v40;
            v40 += 71;
            if (v42 != 89)
            {
              if (v41 == v38)
              {
                goto LABEL_53;
              }

              ++v41;
            }

            LOBYTE(v26) = v26 + 1;
          }

          while (v39 != v26);
        }

        LOBYTE(v26) = -1;
LABEL_53:
        v43 = rule2phone(a1, v26);
        if ((v43 & 0x80000000) == 0)
        {
          v44 = v43;
          v45 = v35 + 71 * v26;
          v34 += strlen((v45 + 38));
          if (*a3 <= v34)
          {
            result = 0;
LABEL_70:
            v54 = 255;
            goto LABEL_71;
          }

          strcat(a2, (v45 + 38));
          *a4 |= v44;
        }
      }
    }
  }

  v46 = strlen(a2);
  v47 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v46 + 1));
  if (!v47)
  {
    result = 2370838538;
    goto LABEL_70;
  }

  v48 = v47;
  v49 = strcpy(v47, a2);
  if (*a2)
  {
    v50 = 0;
    v49 = v48;
    do
    {
      v51 = a2[v50];
      if (v51 != 39)
      {
        *v49++ = v51;
      }

      ++v50;
    }

    while (v50 < strlen(a2));
  }

  *v49 = 0;
  strcpy(a2, v48);
  heap_Free(*(*(a1 + 16) + 8), v48);
  v52 = strlen(a2);
  result = 0;
  *a3 = v52;
  v54 = 1;
LABEL_71:
  a5 = v55;
LABEL_72:
  *a5 = v54;
  return result;
}

char *ReadThaiChar(char *result, char *__dst)
{
  v2 = cchar_dct;
  if (cchar_dct)
  {
    for (i = &unk_1C37BF0AD; *(i - 1) != result; i += 51)
    {
      if (!--v2)
      {
        return result;
      }
    }

    return strcpy(__dst, i);
  }

  return result;
}

uint64_t contable(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    switch(result)
    {
      case -95:
      case -94:
      case -92:
      case -90:
        goto LABEL_9;
      case -89:
        goto LABEL_17;
      case -88:
      case -86:
      case -85:
      case -82:
      case -81:
      case -80:
      case -79:
      case -78:
      case -76:
      case -75:
      case -74:
      case -73:
      case -72:
      case -56:
      case -55:
      case -54:
        goto LABEL_3;
      case -87:
      case -84:
      case -68:
      case -67:
      case -60:
      case -58:
      case -53:
      case -51:
      case -50:
        v3 = 45;
        goto LABEL_27;
      case -83:
      case -77:
      case -71:
      case -61:
      case -59:
      case -52:
        goto LABEL_7;
      case -70:
      case -69:
      case -66:
      case -65:
      case -64:
        goto LABEL_8;
      case -63:
        goto LABEL_18;
      case -62:
        goto LABEL_12;
      case -57:
        goto LABEL_16;
      default:
        goto LABEL_19;
    }
  }

  switch(result)
  {
    case -95:
LABEL_9:
      v3 = 107;
      goto LABEL_27;
    case -94:
    case -93:
    case -92:
    case -91:
    case -90:
      *(a3 + 2) = 0;
      v3 = 26731;
      goto LABEL_27;
    case -89:
LABEL_17:
      *(a3 + 2) = 0;
      v3 = 26478;
      goto LABEL_27;
    case -88:
      v3 = 99;
      goto LABEL_27;
    case -87:
    case -86:
    case -84:
      *(a3 + 2) = 0;
      v3 = 26723;
      goto LABEL_27;
    case -85:
    case -56:
    case -55:
    case -54:
      v3 = 115;
      goto LABEL_27;
    case -83:
    case -62:
LABEL_12:
      v3 = 106;
      goto LABEL_27;
    case -82:
    case -76:
      v3 = 100;
      goto LABEL_27;
    case -81:
    case -75:
LABEL_3:
      v3 = 116;
      goto LABEL_27;
    case -80:
    case -79:
    case -78:
    case -74:
    case -73:
    case -72:
      *(a3 + 2) = 0;
      v3 = 26740;
      goto LABEL_27;
    case -77:
    case -71:
LABEL_7:
      v3 = 110;
      goto LABEL_27;
    case -70:
      v3 = 98;
      goto LABEL_27;
    case -69:
LABEL_8:
      v3 = 112;
      goto LABEL_27;
    case -68:
    case -66:
    case -64:
      *(a3 + 2) = 0;
      v3 = 26736;
      goto LABEL_27;
    case -67:
    case -65:
      v3 = 102;
      goto LABEL_27;
    case -63:
LABEL_18:
      v3 = 109;
      goto LABEL_27;
    case -61:
    case -60:
      v3 = 114;
      goto LABEL_27;
    case -59:
    case -58:
    case -52:
      v3 = 108;
      goto LABEL_27;
    case -57:
LABEL_16:
      v3 = 119;
      goto LABEL_27;
    case -53:
    case -50:
      v3 = 104;
      goto LABEL_27;
    case -51:
      v3 = 35;
LABEL_27:
      *a3 = v3;
      break;
    default:
LABEL_19:
      *a3 = 0;
      break;
  }

  return result;
}

uint64_t patt_check(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    while (1)
    {
      v3 = *a2;
      if (v3 <= 0x53)
      {
        break;
      }

      if (v3 != 84)
      {
        if (v3 == 88)
        {
          if ((v2 - 161) >= 0x2E)
          {
            return -1;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (v3 != v2)
        {
          return -1;
        }

        goto LABEL_18;
      }

      v7 = (v2 & 0xFC) == 232;
LABEL_19:
      a1 += v7;
      ++a2;
      v2 = *a1;
      if (!*a1)
      {
        goto LABEL_20;
      }
    }

    if (v3 == 67)
    {
      v4 = -1;
      v6 = v2 - 161;
      if (v6 > 0x29 || ((1 << v6) & 0x2802C50040BLL) == 0)
      {
        return v4;
      }
    }

    else
    {
      if (v3 != 82)
      {
        if (!*a2)
        {
          return -1;
        }

        goto LABEL_17;
      }

      v4 = -1;
      v5 = v2 - 195;
      if (v5 > 4 || ((1 << v5) & 0x15) == 0)
      {
        return v4;
      }
    }

LABEL_18:
    v7 = 1;
    goto LABEL_19;
  }

LABEL_20:
  if (*a2)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t compareXX(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = allCfollow(a1, a3, 0x52u);
  result = allCfollow(a1, a4, 0x52u);
  if (!v8 && result)
  {
    goto LABEL_3;
  }

  if (v8)
  {
LABEL_6:
    v12 = a1 + 346;
    if (result)
    {
      if (*(v12 + 71 * a3 + 1) >= *(v12 + 71 * a4 + 1))
      {
        v17 = v12 + 71 * a4;
        v18 = *(v17 + 2);
        v11 = (v17 + 2);
        v14 = v18;
        result = 1;
LABEL_15:
        if (v14 == 89)
        {
          return result;
        }

        goto LABEL_16;
      }

      result = 0;
    }

    v13 = v12 + 71 * a3;
    v15 = *(v13 + 2);
    v11 = (v13 + 2);
    v14 = v15;
    goto LABEL_15;
  }

  v16 = allNfollow(a1, a3);
  result = allNfollow(a1, a4);
  if (v16 || !result)
  {
    if (!v16)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_3:
  v10 = a1 + 71 * a4;
  result = 1;
  if (*(v10 + 348) == 89)
  {
    return result;
  }

  v11 = (v10 + 348);
LABEL_16:
  --*(a1 + 4 * a2 + 91);
  *v11 = 89;
  return result;
}

uint64_t findCfollow(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = a1 + 71 * a2;
  if (*(v3 + 348) != 89)
  {
    v4 = *(a1 + 345);
    if (*(a1 + 345))
    {
      v5 = 0;
      v6 = a1 + 89;
      v7 = *(v3 + 347);
      v8 = a1 + 350;
      do
      {
        v9 = (v6 + 4 * v5);
        if (*v9 == v7)
        {
          v10 = v9[3];
          v11 = v9[1];
          v12 = v11 + v10;
          if (v10 < (v11 + v10))
          {
            v13 = (v8 + 71 * v10);
            do
            {
              v14 = *v13;
              if (a3 == 88)
              {
                if ((v14 & 0xFE) == 0x58 && *(v13 - 1) != 78 && *(v13 - 2) != 89)
                {
                  return v10;
                }
              }

              else if (v14 == a3 && *(v13 - 2) != 89 && *(v13 - 1) != 78)
              {
                return v10;
              }

              LOBYTE(v10) = v10 + 1;
              v13 += 71;
            }

            while (v12 != v10);
          }
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  LOBYTE(v10) = -1;
  return v10;
}

uint64_t allCfollow(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = *(a1 + 345);
  if (!*(a1 + 345))
  {
    return 0;
  }

  for (i = (a1 + 92); *(i - 3) != *(a1 + 71 * a2 + 347); i += 4)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v6 = *i;
  v7 = *(i - 2);
  v8 = v7 + v6;
  if (v6 < (v7 + v6))
  {
    v9 = (a1 + 71 * *i + 350);
    v10 = v6 + 1;
    while (*v9 == a3 || *(v9 - 2) == 89)
    {
      v9 += 71;
      if (v8 == v10++)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t keepLongest(uint64_t result, unsigned int a2)
{
  v2 = result + 89 + 4 * a2;
  v3 = *(v2 + 3);
  v4 = *(v2 + 1) + v3;
  v5 = v3;
  if (v3 < v4)
  {
    v6 = (result + 71 * v3 + 348);
    while (1)
    {
      v7 = *v6;
      v6 += 71;
      if (v7 != 89)
      {
        break;
      }

      LOBYTE(v3) = v3 + 1;
      if (v4 == v3)
      {
        v5 = v4;
        goto LABEL_7;
      }
    }

    v5 = v3;
  }

LABEL_7:
  if ((v5 + 1) < v4)
  {
    v8 = result + 346;
    v9 = *(result + 346 + 71 * v5 + 1);
    v10 = result + 89 + 4 * a2;
    v11 = (v5 + 1);
    v12 = (result + 71 * v11 + 347);
    do
    {
      if (v12[1] != 89)
      {
        result = *v12;
        if (result >= v9)
        {
          if (result == v9)
          {
            result = v12[69];
            if (result >= *(v8 + 71 * v5 + 70))
            {
              v13 = (v8 + 71 * v11 + 2);
            }

            else
            {
              v14 = v8 + 71 * v5;
              v15 = *(v14 + 2);
              v13 = (v14 + 2);
              if (v15 == 89)
              {
                v5 = v11;
                goto LABEL_13;
              }

              v5 = v11;
            }
          }

          else
          {
            v16 = v8 + 71 * v5;
            v17 = *(v16 + 2);
            v13 = (v16 + 2);
            if (v17 == 89)
            {
              v5 = v11;
              v9 = *v12;
              goto LABEL_13;
            }

            v5 = v11;
            v9 = *v12;
          }
        }

        else
        {
          v13 = v12 + 1;
        }

        result = (*(v10 + 2))-- - 1;
        *v13 = 89;
      }

LABEL_13:
      ++v11;
      v12 += 71;
    }

    while (v4 != v11);
  }

  return result;
}

uint64_t allNfollow(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 345);
  if (!*(a1 + 345))
  {
    return 0;
  }

  for (i = (a1 + 92); *(i - 3) != *(a1 + 71 * a2 + 347); i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  v5 = *i;
  v6 = *(i - 2);
  v7 = v6 + v5;
  if (v5 < (v6 + v5))
  {
    v8 = (a1 + 71 * *i + 349);
    v9 = v5 + 1;
    while (*v8 == 78 || *(v8 - 1) == 89)
    {
      v8 += 71;
      if (v7 == v9++)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t rule2phone(uint64_t a1, unsigned int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 71 * a2);
  if (v2[348] == 89)
  {
LABEL_2:
    result = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v4 = v2 + 346;
  v6 = v2 + 384;
  v5 = v2[384];
  if (v5)
  {
    if (v5 == 33)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 1;
    }

    goto LABEL_7;
  }

  v8 = v4 + 6;
  if (!v4[6])
  {
    result = 4294967294;
    goto LABEL_7;
  }

  v9 = v4[4];
  if (v9 != 84)
  {
    result = 0;
    if (v9 == 85 || v4[3] == 69)
    {
      goto LABEL_7;
    }

    v10 = &psrules[61 * v4[5]];
    __strcpy_chk();
    v13 = 0uLL;
    while (1)
    {
      switch(psrules[61 * v4[5] + v13])
      {
        case 'A':
          v14 = v8[BYTE4(v13)];
          if (v14 == -61 || (v8[BYTE4(v13)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v14, 0, v63);
          v15 = 65;
          goto LABEL_125;
        case 'B':
          v32 = v8[BYTE4(v13)];
          if (v32 == -57 || (v8[BYTE4(v13)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v32, 0, v63);
          v15 = 66;
          goto LABEL_125;
        case 'C':
          v35 = v8[BYTE4(v13)];
          if ((v35 - 161) > 0x29 || ((1 << (v35 + 95)) & 0x2802C50040BLL) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v35, 0, v63);
          v15 = 67;
          goto LABEL_125;
        case 'D':
          v40 = v8[BYTE4(v13)];
          if ((v40 - 164) > 0x13 || ((1 << (v40 + 92)) & 0xA0041) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v40, 1, v63);
          v15 = 68;
          goto LABEL_125;
        case 'E':
          v39 = v8[BYTE4(v13)];
          if (v39 == -51 || (v8[BYTE4(v13)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v39, 0, v63);
          v15 = 69;
          goto LABEL_125;
        case 'F':
          v37 = v8[BYTE4(v13)];
          if ((v37 - 164) > 0x12 || ((1 << (v37 + 92)) & 0x68001) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v37, 1, v63);
          v15 = 70;
          goto LABEL_125;
        case 'G':
          v48 = v8[BYTE4(v13)];
          if ((v48 - 170) > 0x23 || ((1 << (v48 + 86)) & 0x94840A001) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v48, 0, v63);
          v15 = 71;
          goto LABEL_125;
        case 'H':
          v24 = v8[BYTE4(v13)];
          if (v24 == -53 || (v8[BYTE4(v13)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v24, 0, v63);
          v15 = 72;
          goto LABEL_125;
        case 'I':
        case 'V':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
          goto LABEL_127;
        case 'J':
          v44 = v8[BYTE4(v13)];
          if ((v44 + 49) < 0xD2u)
          {
            continue;
          }

          v45 = v44;
          if (v45 == -57 || v44 == 205)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v45, 0, v63);
          v15 = 74;
          goto LABEL_125;
        case 'K':
          v21 = v8[BYTE4(v13)];
          if ((v21 - 164) > 0x26 || ((1 << (v21 + 92)) & 0x4020000001) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v21, 0, v63);
          v15 = 75;
          goto LABEL_125;
        case 'L':
          v33 = v8[BYTE4(v13)];
          if (v33 != 197 && v33 != 195)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v33, 0, v63);
          v15 = 76;
          goto LABEL_125;
        case 'M':
          v29 = v8[BYTE4(v13)] - 161 > 0x2A;
          v30 = 1 << (v8[BYTE4(v13)] + 95);
          v31 = 0x40681041401;
          goto LABEL_94;
        case 'N':
          v29 = v8[BYTE4(v13)] - 162 > 0x28;
          v30 = 1 << (v8[BYTE4(v13)] + 94);
          v31 = 0x1A8006F81C5;
LABEL_94:
          v42 = v30 & v31;
          if (!v29 && v42 != 0)
          {
            goto LABEL_98;
          }

          continue;
        case 'O':
          v50 = v8[BYTE4(v13)];
          if ((v50 + 49) < 0xD2u)
          {
            continue;
          }

          v51 = v50;
          v52 = v50 - 194;
          v29 = v52 > 5;
          v53 = (1 << v52) & 0x23;
          if (!v29 && v53 != 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v51, 1, v63);
          v15 = 79;
          goto LABEL_125;
        case 'P':
          if (v8[BYTE4(v13)] - 184 > 0x13 || ((1 << (v8[BYTE4(v13)] + 72)) & 0xC2801) == 0)
          {
            continue;
          }

          goto LABEL_98;
        case 'Q':
          v27 = v8[BYTE4(v13)];
          if ((v27 - 166) > 7 || ((1 << (v27 + 90)) & 0x91) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v27, 0, v63);
          v15 = 81;
          goto LABEL_125;
        case 'R':
          v25 = v8[BYTE4(v13)];
          if ((v25 - 195) > 4 || ((1 << (v25 + 61)) & 0x15) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v25, 0, v63);
          v15 = 82;
          goto LABEL_125;
        case 'S':
          v46 = v8[BYTE4(v13)];
          if ((v46 - 174) > 0x1B || ((1 << (v46 + 82)) & 0x8000003) == 0)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v46, 1, v63);
          v15 = 83;
          goto LABEL_125;
        case 'T':
          if ((v8[BYTE4(v13)] & 0xFC) == 0xE8)
          {
LABEL_98:
            v11.i32[1] = 1;
            *&v13 = vadd_s32(*&v13, 0x100000001);
          }

          else
          {
            if (psrules[61 * v4[5] + 60] == 78)
            {
              v23 = v13 + 1;
            }

            else
            {
              v23 = v13;
            }

            LODWORD(v13) = v23;
          }

          continue;
        case 'U':
          v18 = v8[BYTE4(v13)];
          if ((v18 + 49) < 0xD2u || (v18 | 4) == 0xC7)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v18, 1, v63);
          v15 = 85;
          goto LABEL_125;
        case 'W':
          v56 = v8[BYTE4(v13)];
          if (v56 == -62 || (v8[BYTE4(v13)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v56, 1, v63);
          v15 = 87;
          goto LABEL_125;
        case 'X':
          v19 = v8[BYTE4(v13)];
          if ((v19 + 95) > 0x2D)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v19, 0, v63);
          v15 = 88;
          goto LABEL_125;
        case 'Y':
          v55 = v8[BYTE4(v13)];
          if ((v55 + 95) > 0x2D)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v55, 1, v63);
          v15 = 89;
          goto LABEL_125;
        case 'Z':
          v34 = v8[BYTE4(v13)];
          if (v34 == -57 || (v8[BYTE4(v13)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          v62 = v13;
          contable(v34, 1, v63);
          v15 = 90;
LABEL_125:
          replace(v15, v63, &v64);
          v13 = v62;
          continue;
        case 'a':
          v16 = &v8[BYTE4(v13)];
          v17 = 209;
          goto LABEL_65;
        case 'b':
          v16 = &v8[BYTE4(v13)];
          v17 = 212;
          goto LABEL_65;
        case 'c':
          v16 = &v8[BYTE4(v13)];
          v17 = 213;
          goto LABEL_65;
        case 'd':
          v16 = &v8[BYTE4(v13)];
          v17 = 214;
          goto LABEL_65;
        case 'e':
          v16 = &v8[BYTE4(v13)];
          v17 = 215;
          goto LABEL_65;
        case 'f':
          v16 = &v8[BYTE4(v13)];
          v17 = 216;
          goto LABEL_65;
        case 'g':
          v16 = &v8[BYTE4(v13)];
          v17 = 217;
          goto LABEL_65;
        case 'h':
          v16 = &v8[BYTE4(v13)];
          v17 = 211;
          goto LABEL_65;
        case 'i':
          v16 = &v8[BYTE4(v13)];
          v17 = 231;
          goto LABEL_65;
        case 'j':
          v16 = &v8[BYTE4(v13)];
          v17 = 236;
LABEL_65:
          v11.i32[0] = v17;
          v12.i8[0] = *v16;
          v11 = vdup_lane_s32(vceq_s32(vand_s8(v12, 0xFF000000FFLL), vand_s8(v11, 0xFF000000FFLL)), 0);
          *&v13 = vsub_s32(*&v13, v11);
          continue;
        default:
          if (!psrules[61 * v4[5] + v13])
          {
            tone(&v64, v4 + 6);
            __strcat_chk();
            if (!(v64 ^ 0x3021 | v65))
            {
              LOBYTE(v64) = 0;
            }

            __strcpy_chk();
            transform(v6, v4 + 6);
            result = 0;
            goto LABEL_7;
          }

LABEL_127:
          if (psrules[61 * v4[5] + v13] != v8[BYTE4(v13)])
          {
            goto LABEL_2;
          }

          *&v13 = vadd_s32(*&v13, 0x100000001);
          break;
      }
    }
  }

  if (strlen(v4 + 6) == 1)
  {
    ReadThaiChar(v4[6], v6);
LABEL_139:
    result = 1;
    goto LABEL_7;
  }

  v57 = strlen(v4 + 6);
  *v6 = 0;
  if (!v57)
  {
    goto LABEL_139;
  }

  v58 = v57;
  for (i = 0; i != v58; ++i)
  {
    if (cchar_dct)
    {
      v60 = &unk_1C37BF0AD;
      v61 = cchar_dct;
      while (*(v60 - 1) != v8[i])
      {
        v60 += 51;
        if (!--v61)
        {
          goto LABEL_137;
        }
      }

      strcat(v6, v60);
    }

LABEL_137:
    result = 1;
  }

LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

char *replace(char *result, const char *a2, char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    if (*a3 == result)
    {
      v5 = 0;
LABEL_7:
      v7 = &a3[v5];
      __strcpy_chk();
      strcpy(v7, a2);
      result = strcat(a3, __s2);
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v5 = ++v6;
        if (!a3[v6])
        {
          break;
        }

        if (a3[v6] == result)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tone(char *a1, char *a2)
{
  v46 = 0;
  if (*a1 == 33)
  {
    return 48;
  }

  v4 = a1;
  if (strchr(a1, 39))
  {
    if (strchr(a2, 234) || strchr(a2, 235))
    {
      return 57;
    }

    do
    {
      v7 = *a2++;
      v6 = v7;
    }

    while ((v7 + 49) < 0xD2u);
    v8 = v6 + 95;
    if (v8 > 0x2Cu)
    {
      v10 = 76;
      v9 = "3";
    }

    else
    {
      v9 = off_1E81A5478[v8];
      v10 = byte_1C37CA050[v8];
    }

    replace(0x2B, v9, v4);
    do
    {
      v36 = *v4++;
    }

    while (v36 != 39);
  }

  else
  {
    v10 = 76;
  }

  v11 = 0;
  v12 = &v40;
  v13 = &v44;
  v14 = v45;
  for (i = v4; ; ++i)
  {
    v16 = *i;
    if ((v16 - 64) <= 0x38 && ((1 << (v16 - 64)) & 0x162822200000001) != 0)
    {
      v18 = v12++;
      v11 = 1;
      goto LABEL_18;
    }

    if (!*i || v16 == 43)
    {
      break;
    }

    if (v11)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    if (v11)
    {
      ++v13;
    }

    else
    {
      ++v14;
    }

    if (!v11)
    {
      v11 = 0;
    }

LABEL_18:
    *v18 = v16;
  }

  *v14 = 0;
  *v13 = 0;
  *v12 = 0;
  v19 = v44 - 106;
  v20 = v19 > 0xD;
  v21 = (1 << v19) & 0x2019;
  v22 = v20 || v21 == 0;
  if (!v22 || (v26 = 1, !v44) && v40 == v41)
  {
    if ((patt_check(a2, "\xE0\x58\x54X") == 1 || patt_check(a2, "\xE0\x58\x58TX") == 1) && (strchr(a2, 232) || strchr(a2, 233)) && (v23 = strchr(v4, 101)) != 0 || (patt_check(a2, "\xE0\x58\xD4\xE8\x58\xE0\x58\x58\xD4\xE8X") == 1 || patt_check(a2, "\xE0\x58\x58\xD4\xE8X") == 1) && (v23 = strchr(v4, 113)) != 0 || (patt_check(a2, "\xE1\x58\xE8X") == 1 || patt_check(a2, "\xE1\x58\x58\xE8\x58X\xE8\xCD\x58") == 1) && (v23 = strchr(v4, 120)) != 0 || (patt_check(a2, "X\xE8\xCD\x58") == 1 || patt_check(a2, "XX\xE8\xCD\x58") == 1) && (v23 = strchr(v4, 64)) != 0)
    {
      v24 = v23;
      v25 = strlen(v23 + 1);
      memmove(v24, v24 + 1, v25 + 1);
    }

    v26 = 0;
  }

  v46 = 32;
  v27 = *a2;
  if (*a2)
  {
    v28 = 0;
    v29 = (a2 + 1);
    v30 = v43;
    v31 = v42;
    while ((v27 - 161) > 0x2D)
    {
      if ((v27 & 0xFC) == 0xE8)
      {
        v32 = &v46;
LABEL_62:
        *v32 = v27;
      }

      v33 = *v29++;
      v27 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }
    }

    if (v28)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (v28)
    {
      ++v31;
    }

    else
    {
      ++v30;
    }

    if (!v28)
    {
      v28 = 1;
    }

    goto LABEL_62;
  }

  v31 = v42;
  v30 = v43;
LABEL_66:
  *v31 = 0;
  *v30 = 0;
  if (v45[1] != 104)
  {
    if ((v35 = v45[0] - 98, v35 <= 0x12) && ((1 << v35) & 0x44207) != 0 || v45[0] == 35)
    {
      v34 = v46;
      if (v26)
      {
        v2 = 57;
        if (v46 > 0xE8u)
        {
          if (v46 == 235)
          {
            return v2;
          }

LABEL_86:
          if (v46 != 234)
          {
            goto LABEL_87;
          }

          return 51;
        }

        if (v46 != 32)
        {
          if (v46 == 232)
          {
            return v2;
          }

          return 48;
        }

        return 49;
      }

      if (v46 > 0xE8u)
      {
        if (v46 != 235)
        {
          goto LABEL_86;
        }

        return 52;
      }

      if (v46 == 32)
      {
        return 48;
      }

LABEL_104:
      if (v34 == 232)
      {
        return 49;
      }

      return 48;
    }
  }

  if (v43[0] - 162 <= 0x29 && ((1 << (v43[0] + 94)) & 0x3C00C104081) != 0)
  {
    v34 = v46;
    if (v26)
    {
      v2 = 57;
      if (v46 <= 0xE9u)
      {
        if (v46 == 32)
        {
          return 49;
        }

        if (v46 == 232)
        {
          return v2;
        }

        goto LABEL_87;
      }

LABEL_113:
      if ((v34 - 234) < 2)
      {
        return v2;
      }

      return 48;
    }

    if (v46 <= 0xE8u)
    {
      if (v46 == 32)
      {
        return 52;
      }

      goto LABEL_104;
    }

    if (v46 != 235 && v46 != 234)
    {
LABEL_87:
      if (v34 == 233)
      {
        return 50;
      }

      return 48;
    }

    return 57;
  }

  if (v26)
  {
    v34 = v46;
    if (v40 == v41)
    {
      v2 = 57;
      if (v46 > 0xE9u)
      {
        goto LABEL_113;
      }

      if (v46 != 32)
      {
        if (v46 == 232)
        {
          return v2;
        }

        if (v46 != 233)
        {
          return 48;
        }

        return 51;
      }

LABEL_126:
      v37 = v10 == 77 || v10 == 72;
LABEL_129:
      v2 = 49;
LABEL_130:
      if (!v37)
      {
        ++v2;
      }

      return v2;
    }

    if (v46 - 233 < 3)
    {
      return 57;
    }

    if (v46 != 32)
    {
      if (v46 != 232)
      {
        return 48;
      }

      v37 = v10 == 77;
      goto LABEL_129;
    }

    v38 = v10 == 77 || v10 == 72;
    v2 = 51;
    v39 = 49;
  }

  else
  {
    if (v46 > 0xE9u)
    {
      if (v46 - 234 >= 2)
      {
        return 48;
      }

      return 57;
    }

    if (v46 != 32)
    {
      if (v46 != 232)
      {
        if (v46 != 233)
        {
          return 48;
        }

        v37 = v10 == 72;
        v2 = 50;
        goto LABEL_130;
      }

      goto LABEL_126;
    }

    v38 = v10 == 72;
    v2 = 48;
    v39 = 52;
  }

  if (v38)
  {
    return v39;
  }

  return v2;
}

char *transform(char *__s, char *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (__PAIR64__(a2[1], *a2) == 0xC2000000CDLL)
  {
    v4 = strchr(__s, 39);
    if (v4)
    {
      v5 = v4;
      v6 = strlen(v4 + 1);
      v7 = *MEMORY[0x1E69E9840];
      v8 = v5 + 1;
LABEL_29:
      v22 = v6 + 1;
      v23 = __s;
      goto LABEL_32;
    }
  }

  v9 = strchr(__s, 104);
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 - 1) - 99;
    v12 = v11 > 0x11;
    v13 = (1 << v11) & 0x22101;
    if (v12 || v13 == 0)
    {
      v27 = strchr(__s, 39);
      if (v27 > v10)
      {
        v28 = v27;
        v6 = strlen(v27 + 1);
        v29 = *MEMORY[0x1E69E9840];
        v8 = v28 + 1;
        goto LABEL_29;
      }
    }
  }

  v15 = strchr(a2, 195);
  if (v15)
  {
    v16 = *(v15 - 1);
    if (v16 == 202)
    {
LABEL_13:
      if (!strchr(__s, 39))
      {
        v30 = strchr(__s, 114);
        if (v30)
        {
          v31 = v30;
          v32 = strlen(v30 + 1);
          v33 = *MEMORY[0x1E69E9840];
          v8 = v31 + 1;
          v22 = v32 + 1;
          v23 = v31;
          goto LABEL_32;
        }
      }

      goto LABEL_16;
    }

    if (v16 != 183)
    {
      if (v16 != 171)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (!strchr(__s, 39) && (patt_check(a2, "\xB7\xC3\xC7\xB4") == 1 || patt_check(a2, "\xB7\xC3\xC7\xA7") == 1 || patt_check(a2, "\xB7ç") == 1 || patt_check(a2, "\xB7\xC3\xD2\xBA") == 1 || patt_check(a2, "\xB7\xC3\xD2\xC1\xB7\xC3\xD2\xC2\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xB7\xC3\xD2\xC2\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xB7\xC3\xD5") == 1))
    {
      v34 = strchr(__s, 114);
      if (v34)
      {
        v19 = v34;
        *v34 = 115;
        v35 = v34 - 2;
        v36 = strlen(v34);
        v37 = *MEMORY[0x1E69E9840];
        v22 = v36 + 1;
        v23 = v35;
        goto LABEL_19;
      }
    }
  }

LABEL_16:
  result = strchr(__s, 43);
  if (!result || (v18 = result + 1, result[1] != 39))
  {
    v24 = *__s;
    if (v24 == 116)
    {
      if (__s[1] == 119)
      {
        v26 = 3236212;
      }

      else
      {
        if (__s[2] != 119)
        {
LABEL_49:
          v38 = *MEMORY[0x1E69E9840];
          return result;
        }

        v40 = 0;
        v26 = 828467316;
      }
    }

    else
    {
      if (v24 != 115)
      {
        goto LABEL_49;
      }

      v25 = __s[1] - 108;
      if (v25 > 0xB || ((1 << v25) & 0x841) == 0)
      {
        goto LABEL_49;
      }

      v26 = 3236211;
    }

    *__src = v26;
    __strcat_chk();
    result = strcpy(__s, __src);
    goto LABEL_49;
  }

  *result = 49;
  v19 = result + 2;
  v20 = strlen(result + 2);
  v21 = *MEMORY[0x1E69E9840];
  v22 = v20 + 1;
  v23 = v18;
LABEL_19:
  v8 = v19;
LABEL_32:

  return memmove(v23, v8, v22);
}

uint64_t wparserCrf_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplCrf;
  return result;
}

uint64_t wparser_impl_crf_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2350915591;
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

uint64_t wparser_impl_crf_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  MaxWordLen = 2350915591;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v22);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v22 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjOpen: Begin", v12, v13, v14, v21);
      v15 = heap_Calloc(*(v22 + 8), 1, 88);
      if (v15)
      {
        v16 = v15;
        *v15 = a3;
        v15[1] = a4;
        v15[2] = v22;
        v15[3] = a1;
        v15[4] = a2;
        v15[5] = a1;
        v15[6] = "WPARSER_IMPL_CRF";
        MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(v15);
        *a5 = v16;
        *(a5 + 8) = 87652;
        log_OutText(*(v22 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjOpen: End (%x)", v17, v18, v19, MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_crf_ObjClose(uint64_t *a1, int a2)
{
  Only_DereferenceCnt = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((Only_DereferenceCnt & 0x80000000) == 0)
  {
    v7 = a1[2];
    log_OutText(*(v7 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjClose : Begin", v3, v4, v5, v13);
    v8 = a1[10];
    if (!v8)
    {
LABEL_5:
      heap_Free(*(v7 + 8), a1);
      log_OutText(*(v7 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjClose : End (%x)", v9, v10, v11, Only_DereferenceCnt);
      return Only_DereferenceCnt;
    }

    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1[2], a1[5], v8);
    if ((Only_DereferenceCnt & 0x80000000) == 0)
    {
      a1[10] = 0;
      goto LABEL_5;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t wparser_impl_crf_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjReopen : Begin", v4, v5, v6, v12);
  MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjReopen : End (%x)", v8, v9, v10, MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_crf_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 7549556;
  memset(v28, 0, sizeof(v28));
  v24 = 0;
  inited = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((inited & 0x80000000) != 0 || (inited = (*(*a3 + 72))(a3[1], a3[2], &v25, a1 + 68), (inited & 0x80000000) != 0) || (*(a1 + 56) = a3, *(a1 + 64) = a6, inited = InitRsrcFunction(*a1, *(a1 + 8), &v24), (inited & 0x80000000) != 0))
  {
    Only_ReferenceCnt = inited;
  }

  else
  {
    v10 = v24;
    v26 = 0;
    *v27 = 0;
    Str = paramc_ParamGetStr(*(v24 + 40), "langcode", v27);
    if (Str < 0 || (Str = paramc_ParamGetStr(*(v10 + 40), "fecfg", &v26), Str < 0) || (Str = brokeraux_ComposeBrokerString(v10, "wpcrf", 1, 1, *v27, 0, 0, v28, 0x80uLL), Str < 0))
    {
      v22 = Str;
      log_OutText(*(v24 + 32), "WPARSER_IMPL_CRF", 0, 0, "Could not assemble broker string for WPCRF model", v12, v13, v14, v23);
      Only_ReferenceCnt = v22 | 0x8C202000;
    }

    else
    {
      log_OutText(*(v24 + 32), "WPARSER_IMPL_CRF", 5, 0, "looking for WPCRF model at %s", v12, v13, v14, v28);
      Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), (a1 + 80), 2, v28, "CRPH", 12341, 48, 0);
      if ((Only_ReferenceCnt & 0x80000000) != 0)
      {
        log_OutText(*(v24 + 32), "WPARSER_IMPL_CRF", 5, 0, "no CRF PW model found", v15, v16, v17, v28);
        v19 = *(a1 + 80);
        if (v19)
        {
          Only_ReferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 16), *(a1 + 40), v19);
          if ((Only_ReferenceCnt & 0x80000000) == 0)
          {
            *(a1 + 80) = 0;
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return Only_ReferenceCnt;
}

uint64_t wparser_impl_crf_Normalize(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _WORD *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    *(a3 + a5) = 0;
    if (*(a1 + 68) != 1 || (result = wordm_mapt2s(*(a1 + 56), a3, a5), (result & 0x80000000) == 0))
    {
      v22 = *(a1 + 16);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      v25 = *(a1 + 80);

      return DoWPCRF(v22, v23, v24, v25, a3, a5, a6, a7, a8, a12, a15);
    }
  }

  return result;
}

uint64_t wparser_impl_crf_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 48), *(a1 + 56), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 72));
  }

  return result;
}

uint64_t wparser_impl_crf_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 56);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparser_impl_crf_loc_GetMaxWordLen(uint64_t a1)
{
  v6 = 0;
  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "maxdctwordlen", &v6);
  if ((Str & 0x80000000) != 0)
  {
    v3 = 0;
    LOBYTE(v4) = 7;
    goto LABEL_5;
  }

  v3 = Str;
  v4 = atoi(v6);
  if ((v4 - 1) <= 0xFE)
  {
LABEL_5:
    *(a1 + 72) = v4;
    return v3;
  }

  return 15;
}

uint64_t DoWPCRF(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, uint64_t a11)
{
  v101 = *MEMORY[0x1E69E9840];
  v90 = 0;
  v89 = 0;
  v88 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v83 = LogLevel > 4;
  *__s = 0;
  *(a11 + 8) = 0;
  *(a11 + 16) = 1;
  if ((bed_GetpElem(a8, 0xFFFFu, __s) & 0x80000000) == 0)
  {
    if (!a6 || a6 == *(*__s + 36))
    {
      *(a11 + 16);
    }

    else
    {
      *(a11 + 16) = 0;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "[WPCRF] (length for CRF %d - region length in Marker %d %s)", v19, v20, v21, a6);
  }

  v86 = a2;
  v22 = heap_Calloc(*(a1 + 8), a6, 8);
  if (v22)
  {
    v23 = v22;
    v24 = heap_Calloc(*(a1 + 8), a6, 8);
    if (v24)
    {
      v87 = heap_Calloc(*(a1 + 8), a6, 8);
      if (v87)
      {
        v85 = v24;
        v81 = a7;
        v82 = a8;
        if (a6)
        {
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v100 = 0;
            v98 = 0u;
            v99 = 0u;
            *__s = 0u;
            v97 = 0u;
            v95 = 0;
            v93 = 0u;
            v94 = 0u;
            *__src = 0u;
            v92 = 0u;
            v27 = utf8_determineUTF8CharLength(*(a5 + v25));
            sysdct_wpcrf_LookUp_Chinese(a3, a5 + v25, v27, __s, __src, (v85 + 8 * v26));
            if (LogLevel >= 5)
            {
              log_OutText(*(a1 + 32), v86, 5, 0, "[WPCRF] Feat: %s", v28, v29, v30, __s);
            }

            v31 = heap_Calloc(*(a1 + 8), 1, 65);
            *(v87 + 8 * v26) = v31;
            if (!v31)
            {
              goto LABEL_66;
            }

            if (!__src[0])
            {
              break;
            }

            if (*__src ^ 0x4C4C554E | __src[4])
            {
              strcpy(v31, __src);
LABEL_19:
              v32 = strlen(__s);
              v33 = heap_Calloc(*(a1 + 8), 1, v32 + 1);
              v23[v26] = v33;
              if (!v33)
              {
                goto LABEL_66;
              }

              strcpy(v33, __s);
              ++v26;
              goto LABEL_22;
            }

            heap_Free(*(a1 + 8), v31);
            *(v87 + 8 * v26) = 0;
LABEL_22:
            v25 += v27;
            if (v25 >= a6)
            {
              goto LABEL_30;
            }
          }

          strncpy(v31, (a5 + v25), v27);
          goto LABEL_19;
        }

        v26 = 0;
LABEL_30:
        v39 = a9;
        crf_Process(a4, v23, v26, &v88, &v89);
        v40 = v82;
        if (v89)
        {
          v41 = heap_Calloc(*(a1 + 8), 64, v89);
          if (!v41)
          {
LABEL_66:
            v34 = 2350915594;
LABEL_77:
            v35 = v88;
            LODWORD(v36) = v89;
            if (v26)
            {
              v70 = 0;
              v71 = v26;
              do
              {
                v72 = v23[v70];
                if (v72)
                {
                  heap_Free(*(a1 + 8), v72);
                }

                ++v70;
              }

              while (v26 != v70);
              heap_Free(*(a1 + 8), v23);
              heap_Free(*(a1 + 8), v85);
              v73 = v87;
              do
              {
                if (*v73)
                {
                  heap_Free(*(a1 + 8), *v73);
                }

                ++v73;
                --v71;
              }

              while (v71);
            }

            else
            {
              heap_Free(*(a1 + 8), v23);
              heap_Free(*(a1 + 8), v85);
            }

            v37 = *(a1 + 8);
            v38 = v87;
LABEL_89:
            heap_Free(v37, v38);
            if (!v35)
            {
              goto LABEL_96;
            }

            goto LABEL_90;
          }

          v45 = v41;
          if (v89)
          {
            v46 = 0;
            v47 = v85;
            do
            {
              v48 = v88;
              if (LogLevel >= 5)
              {
                log_OutText(*(a1 + 32), v86, 5, 0, "[WPCRF] Predicted Tag: %s", v42, v43, v44, *(v88 + 8 * v46));
                v48 = v88;
              }

              v49 = **(v48 + 8 * v46);
              if ((v49 == 83 || v49 == 66) && *v45 && (v49 != 83 || *v47 != 1) && (v46 && !*(v47 - 2) || strlen(v45) >= 2))
              {
                hlp_updateWord(a9, v45, a10, a1, a11, &v90);
                bzero(v45, v89 << 6);
              }

              v50 = *(v87 + 8 * v46);
              if (v50)
              {
                strcat(v45, v50);
              }

              ++v46;
              v47 += 2;
            }

            while (v46 < v89);
          }

          if (*v45)
          {
            hlp_updateWord(a9, v45, a10, a1, a11, &v90);
          }

          heap_Free(*(a1 + 8), v45);
          v40 = v82;
          if (a6)
          {
            *__s = 0;
            *__src = 0;
            if ((bed_GetcElem(a9, __src) & 0x80000000) == 0)
            {
              if (*__src)
              {
                UTOISubTrace(v83, a1, a9, "replacement string");
                if (*(a11 + 16) == 1 && (bed_GetpElem(a9, 0, __s) & 0x80000000) == 0)
                {
                  v57 = *__src;
                  if (*__src)
                  {
                    v58 = 0;
                    v59 = 0;
                    v60 = 1;
                    v61 = *__s;
                    do
                    {
                      if (*(v61 + v58) == 16)
                      {
                        v62 = *(a11 + 8);
                        if (v59 >= v62)
                        {
LABEL_68:
                          log_OutText(*(a1 + 32), v86, 5, 0, "[WPCRF] cant find non-deleted word to align new word number %d with", v54, v55, v56, v60);
                          v66 = 0;
                          goto LABEL_69;
                        }

                        v63 = v59;
                        v64 = (*a11 + 12 * v59 + 4);
                        while (1)
                        {
                          v65 = *v64;
                          v64 += 3;
                          if (v65 != 1)
                          {
                            break;
                          }

                          if (v62 == ++v63)
                          {
                            goto LABEL_68;
                          }
                        }

                        *(*a11 + 12 * v63 + 8) = v58;
                        ++v60;
                        v59 = v63 + 1;
                        v57 = *__src;
                      }

                      ++v58;
                    }

                    while (v58 < v57);
                  }

                  v66 = 1;
LABEL_69:
                  if (LogLevel >= 5 && *(a11 + 8))
                  {
                    v67 = 0;
                    v68 = 0;
                    do
                    {
                      v69 = (*a11 + v67);
                      v79 = v69[4];
                      v80 = *(v69 + 1);
                      v78 = *v69;
                      log_OutText(*(a1 + 32), v86, 5, 0, "[WPCRF] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v54, v55, v56, v68++);
                      v67 += 12;
                    }

                    while (v68 < *(a11 + 8));
                  }

                  v40 = v82;
                  v39 = a9;
                  if (v66)
                  {
                    *(a11 + 12) = 0;
                  }
                }
              }

              else
              {
                log_OutText(*(a1 + 32), v86, 5, 0, "[WPCRF] deleting region, no replacement text found", v51, v52, v53, v77);
              }
            }
          }
        }

        v34 = utoin_IncrReplaceCurrentRegion(v81, v40, v39, a6, a11);
        if ((v34 & 0x80000000) == 0)
        {
          UTOITrace(v83, a1, v81, v40, "END of DOWPCRF");
        }

        goto LABEL_77;
      }
    }

    v34 = 2586845194;
    v35 = v88;
    LODWORD(v36) = v89;
    heap_Free(*(a1 + 8), v23);
    if (v24)
    {
      v37 = *(a1 + 8);
      v38 = v24;
      goto LABEL_89;
    }
  }

  else
  {
    v34 = 2586845194;
    v35 = v88;
    LODWORD(v36) = v89;
  }

  if (!v35)
  {
    goto LABEL_96;
  }

LABEL_90:
  if (v36)
  {
    v36 = v36;
    v74 = v35;
    do
    {
      if (*v74)
      {
        heap_Free(*(a1 + 8), *v74);
      }

      ++v74;
      --v36;
    }

    while (v36);
  }

  heap_Free(*(a1 + 8), v35);
LABEL_96:
  v75 = *MEMORY[0x1E69E9840];
  return v34;
}

size_t hlp_updateWord(uint64_t a1, char *a2, _WORD *a3, uint64_t a4, uint64_t a5, __int16 *a6)
{
  if ((bed_Insert(a1, &szWORD_BEG_3, 1) & 0x80000000) == 0)
  {
    ++*a3;
    v12 = strlen(a2);
    if ((bed_Insert(a1, a2, v12) & 0x80000000) == 0)
    {
      *a3 += strlen(a2);
      if ((bed_Insert(a1, &szWORD_END_4, 1) & 0x80000000) == 0)
      {
        ++*a3;
      }
    }
  }

  if (*(a5 + 16) == 1)
  {
    v13 = *a6;
    v14 = *(a5 + 8);
    v15 = *a5;
    if (v14 < *(a5 + 10))
    {
LABEL_9:
      v17 = v15 + 12 * v14;
      *v17 = v13;
      *(v17 + 2) = 0;
      *(a5 + 8) = v14 + 1;
      goto LABEL_10;
    }

    v16 = heap_Realloc(*(a4 + 8), v15, 12 * *(a5 + 10) + 121);
    if (v16)
    {
      v15 = v16;
      *a5 = v16;
      *(a5 + 10) += 10;
      v14 = *(a5 + 8);
      goto LABEL_9;
    }
  }

LABEL_10:
  result = strlen(a2);
  *a6 += result;
  return result;
}

uint64_t wparserDummy_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDummy;
  return result;
}

uint64_t wparser_impl_dummy_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2350915591;
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

uint64_t wparser_impl_dummy_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  MaxWordLen = 2350915591;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v22);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v22 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjOpen: Begin", v12, v13, v14, v21);
      v15 = heap_Calloc(*(v22 + 8), 1, 80);
      if (v15)
      {
        v16 = v15;
        *v15 = a3;
        v15[1] = a4;
        v15[2] = v22;
        v15[3] = a1;
        v15[4] = a2;
        v15[5] = a1;
        v15[6] = "WPARSER_IMPL_DUMMY";
        MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(v15);
        *a5 = v16;
        *(a5 + 8) = 87652;
        log_OutText(*(v22 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjOpen: End (%x)", v17, v18, v19, MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_dummy_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t wparser_impl_dummy_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjReopen : Begin", v4, v5, v6, v12);
  MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjReopen : End (%x)", v8, v9, v10, MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_dummy_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 7549556;
  v10 = 0;
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v11, a1 + 68);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 56) = a3;
      *(a1 + 64) = a6;
      return InitRsrcFunction(*a1, *(a1 + 8), &v10);
    }
  }

  return result;
}

uint64_t wparser_impl_dummy_Normalize(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _WORD *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    *(a3 + a5) = 0;
    if (*(a1 + 68) != 1 || (result = wordm_mapt2s(*(a1 + 56), a3, a5), (result & 0x80000000) == 0))
    {
      v22 = *(a1 + 16);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);

      return DoWPDUMMY(v22, v23, v24, a3, a5, a6, a7, a8, a12, a15);
    }
  }

  return result;
}

uint64_t wparser_impl_dummy_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 48), *(a1 + 56), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 72));
  }

  return result;
}

uint64_t wparser_impl_dummy_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 56);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t DoWPDUMMY(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, uint64_t a10)
{
  v93 = *MEMORY[0x1E69E9840];
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v78 = LogLevel > 4;
  *__s = 0;
  *(a10 + 8) = 0;
  *(a10 + 16) = 1;
  if ((bed_GetpElem(a7, 0xFFFFu, __s) & 0x80000000) == 0)
  {
    if (!a5 || a5 == *(*__s + 36))
    {
      *(a10 + 16);
    }

    else
    {
      *(a10 + 16) = 0;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "[WPDUMMY] (length for DUMMY %d - region length in Marker %d %s)", v19, v20, v21, a5);
  }

  v80 = a2;
  v79 = a8;
  v22 = 2591039498;
  v23 = heap_Calloc(*(a1 + 8), a5, 8);
  if (!v23)
  {
    goto LABEL_55;
  }

  v24 = v23;
  v25 = heap_Calloc(*(a1 + 8), a5, 8);
  v26 = *(a1 + 8);
  v81 = v25;
  if (!v25)
  {
    v46 = v24;
    goto LABEL_54;
  }

  v82 = heap_Calloc(v26, a5, 8);
  if (!v82)
  {
    LODWORD(v28) = 0;
    goto LABEL_47;
  }

  if (!a5)
  {
    LODWORD(v28) = 0;
LABEL_39:
    v38 = v79;
    goto LABEL_40;
  }

  v77 = a6;
  v27 = 0;
  LODWORD(v28) = 0;
  do
  {
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    *__s = 0u;
    v89 = 0u;
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    *__src = 0u;
    v84 = 0u;
    v29 = utf8_determineUTF8CharLength(*(a4 + v27));
    sysdct_wpdummy_LookUp_Chinese(a3, a4 + v27, v29, __s, __src, (v81 + 8 * v28));
    if (LogLevel >= 5)
    {
      log_OutText(*(a1 + 32), v80, 5, 0, "[WPCRF] Feat: %s", v30, v31, v32, __s);
    }

    v33 = heap_Calloc(*(a1 + 8), 1, 65);
    *(v82 + 8 * v28) = v33;
    if (!v33)
    {
LABEL_37:
      v22 = 2350915594;
      goto LABEL_42;
    }

    if (__src[0])
    {
      if (!(*__src ^ 0x4C4C554E | __src[4]))
      {
        heap_Free(*(a1 + 8), v33);
        *(v82 + 8 * v28) = 0;
        goto LABEL_22;
      }

      strcpy(v33, __src);
    }

    else
    {
      strncpy(v33, (a4 + v27), v29);
    }

    v34 = strlen(__s);
    v35 = heap_Calloc(*(a1 + 8), 1, v34 + 1);
    *(v24 + 8 * v28) = v35;
    if (!v35)
    {
      goto LABEL_37;
    }

    strcpy(v35, __s);
    LODWORD(v28) = v28 + 1;
LABEL_22:
    v27 += v29;
  }

  while (v27 < a5);
  a6 = v77;
  if (!v28)
  {
    goto LABEL_39;
  }

  v36 = v28;
  v37 = heap_Calloc(*(a1 + 8), 64, v28);
  v38 = v79;
  if (!v37)
  {
    v22 = 2350915594;
    goto LABEL_43;
  }

  v39 = v37;
  v40 = v82;
  do
  {
    v41 = *v40++;
    strcat(v39, v41);
    --v36;
  }

  while (v36);
  a6 = v77;
  if (*v39)
  {
    if ((bed_Insert(v79, &szWORD_BEG_4, 1) & 0x80000000) == 0)
    {
      ++*a9;
      v42 = strlen(v39);
      if ((bed_Insert(v79, v39, v42) & 0x80000000) == 0)
      {
        *a9 += strlen(v39);
        if ((bed_Insert(v79, &szWORD_END_5, 1) & 0x80000000) == 0)
        {
          ++*a9;
        }
      }
    }

    if (*(a10 + 16) == 1)
    {
      v43 = *(a10 + 8);
      v44 = *a10;
      if (v43 < *(a10 + 10))
      {
        v45 = a10;
        goto LABEL_60;
      }

      v52 = heap_Realloc(*(a1 + 8), v44, 12 * *(a10 + 10) + 121);
      if (v52)
      {
        v44 = v52;
        v45 = a10;
        *a10 = v52;
        *(a10 + 10) += 10;
        v43 = *(a10 + 8);
LABEL_60:
        v53 = v44 + 12 * v43;
        *v53 = 0;
        *(v53 + 2) = 0;
        *(v45 + 8) = v43 + 1;
      }
    }
  }

  heap_Free(*(a1 + 8), v39);
  *__s = 0;
  *__src = 0;
  if ((bed_GetcElem(v79, __src) & 0x80000000) == 0)
  {
    if (*__src)
    {
      UTOISubTrace(v78, a1, v79, "replacement string");
      if (*(a10 + 16) == 1 && (bed_GetpElem(v79, 0, __s) & 0x80000000) == 0)
      {
        v60 = *__src;
        if (*__src)
        {
          v61 = 0;
          v62 = 0;
          v63 = 1;
          v64 = *__s;
          do
          {
            if (*(v64 + v61) == 16)
            {
              v65 = *(a10 + 8);
              if (v62 >= v65)
              {
LABEL_77:
                log_OutText(*(a1 + 32), v80, 5, 0, "[WPDUMMY] cant find non-deleted word to align new word number %d with", v57, v58, v59, v63);
                v76 = 0;
                goto LABEL_78;
              }

              v66 = v62;
              v67 = (*a10 + 12 * v62 + 4);
              while (1)
              {
                v68 = *v67;
                v67 += 3;
                if (v68 != 1)
                {
                  break;
                }

                if (v65 == ++v66)
                {
                  goto LABEL_77;
                }
              }

              *(*a10 + 12 * v66 + 8) = v61;
              ++v63;
              v62 = v66 + 1;
              v60 = *__src;
            }

            ++v61;
          }

          while (v61 < v60);
        }

        v76 = 1;
LABEL_78:
        if (LogLevel >= 5 && *(a10 + 8))
        {
          v69 = 0;
          v70 = 0;
          do
          {
            v71 = (*a10 + v69);
            v74 = v71[4];
            v75 = *(v71 + 1);
            v73 = *v71;
            log_OutText(*(a1 + 32), v80, 5, 0, "[WPDUMMY] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v57, v58, v59, v70++);
            v69 += 12;
          }

          while (v70 < *(a10 + 8));
        }

        a6 = v77;
        if (v76)
        {
          *(a10 + 12) = 0;
        }
      }
    }

    else
    {
      log_OutText(*(a1 + 32), v80, 5, 0, "[WPDUMMY] deleting region, no replacement text found", v54, v55, v56, v72);
    }
  }

LABEL_40:
  v22 = utoin_IncrReplaceCurrentRegion(a6, a7, v38, a5, a10);
  if ((v22 & 0x80000000) == 0)
  {
    UTOITrace(v78, a1, a6, a7, "END of DOWPDUMMY");
  }

LABEL_42:
  if (v28)
  {
LABEL_43:
    v47 = v28;
    v48 = v24;
    do
    {
      if (*v48)
      {
        heap_Free(*(a1 + 8), *v48);
      }

      ++v48;
      --v47;
    }

    while (v47);
  }

LABEL_47:
  heap_Free(*(a1 + 8), v24);
  heap_Free(*(a1 + 8), v81);
  if (v82)
  {
    if (v28)
    {
      v28 = v28;
      v49 = v82;
      do
      {
        if (*v49)
        {
          heap_Free(*(a1 + 8), *v49);
        }

        ++v49;
        --v28;
      }

      while (v28);
    }

    v26 = *(a1 + 8);
    v46 = v82;
LABEL_54:
    heap_Free(v26, v46);
  }

LABEL_55:
  v50 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t get_char_kind_hash(unsigned int a1, int a2)
{
  v2 = a2 + a1;
  if (a2 == 131)
  {
    v2 = 3;
  }

  if (a1 == 130)
  {
    v2 = a2 | 0x100;
  }

  if (!a2)
  {
    v2 = a1;
  }

  v3 = Char_kind_hash_table[v2];
  if (v3 == 0xFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v4 = &(&Char_kind)[2 * v3];
    if (**v4 == a1 && (*v4)[1] == a2)
    {
      break;
    }

    v3 = *(v4 + 5);
    if (v3 == 0xFFFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v4 + 4);
}

unsigned __int8 *get_pron_from_grapheme_hash(unsigned __int8 *result, char *a2, int *a3, _DWORD *a4, int a5)
{
  if (result[1])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;
  while (2)
  {
    *a4 = 0;
    v6 = *result;
    v7 = *a3;
    if (*a3 == 2 && (v8 = result[1]) != 0)
    {
      v9 = v8 + v6;
      if (v8 == 131)
      {
        v9 = 3;
      }

      if (v6 == 130)
      {
        v9 = v8 | 0x100;
      }
    }

    else
    {
      v8 = 0;
      v9 = *result;
    }

    for (i = Char_pron_hash_table[v9]; i != 0xFFFF; i = *(v11 + 9))
    {
      v11 = &(&Char_pron)[3 * i];
      if (**v11 == v6 && (*v11)[1] == v8 && *(v11 + 8) == a5)
      {
        v14 = v11[1];
        v15 = *v14;
        if (*v14)
        {
          v16 = (v14 + 1);
          do
          {
            *a2++ = v15;
            ++*a4;
            v17 = *v16++;
            v15 = v17;
          }

          while (v17);
        }

        *a2 = 0;
        return result;
      }
    }

    v12 = __OFSUB__(v7, 1);
    v13 = v7 - 1;
    *a3 = v13;
    if (!((v13 < 0) ^ v12 | (v13 == 0)))
    {
      continue;
    }

    break;
  }

  *a3 = 0;
  *a4 = 0;
  return result;
}

uint64_t get_name_of_symbol(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0 || a1[2] <= a3)
  {
    return 0;
  }

  virtual_fseek(*a1, a2, a1[1] + 32 * a3, 0);
  v7 = 0;
  while (1)
  {
    v8 = virtual_getc(*a1, a2);
    *(a4 + v7) = v8;
    if (!v8)
    {
      break;
    }

    if (++v7 == 32)
    {
      return 0;
    }
  }

  return a4;
}

uint64_t get_pointer_of_symbol(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || *(a1 + 16) <= a2)
  {
    return 0;
  }

  else
  {
    return **a1 + 32 * a2 + *(a1 + 8);
  }
}

uint64_t get_number_of_symbol(uint64_t **a1, char *__s1)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = **a1;
  v6 = v4 + v5;
  v7 = strcmp(__s1, v4 + v5);
  if (!v7)
  {
    return 0;
  }

  if (v7 < 0)
  {
    return -1;
  }

  v8 = v3 - 1;
  v9 = strcmp(__s1, &v4[4 * v8] + v5);
  if (!v9)
  {
    return v8;
  }

  if (v9 > 0 || v8 == 1)
  {
    return -1;
  }

  v11 = 0;
  v12 = v8;
  while (1)
  {
    v8 = v11 + v8 / 2;
    v13 = strcmp(__s1, (v6 + 32 * v8));
    if (!v13)
    {
      break;
    }

    if (v13 < 0)
    {
      v12 = v8;
    }

    else
    {
      v11 = v8;
    }

    v8 = v12 - v11;
    if (v12 - v11 == 1)
    {
      return -1;
    }
  }

  return v8;
}

uint64_t log_output_cost(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = ssftstring_AppendCStr(a1, "[");
  if ((result & 0x80000000) == 0)
  {
    strcpy(__s, "f^=");
    LH_itoa(*(a2 + 56), v6, 0xAu);
    __strcat_chk();
    __strcat_chk();
    LH_itoa(*(a2 + 64), v6, 0xAu);
    __strcat_chk();
    __strcat_chk();
    result = ssftstring_AppendCStr(a1, __s);
    if ((result & 0x80000000) == 0)
    {
      result = ssftstring_AppendCStr(a1, "]");
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t log_output_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v19 = ssftstring_Clear(a3);
  if ((v19 & 0x80000000) == 0 && get_name_of_symbol(SF_symbol_file, a12, *a4, v51))
  {
    v20 = *(a4 + 32);
    if (v20)
    {
      if (v20 == 1)
      {
        if (!a5 || v51[0] != 95)
        {
          strcpy(__s, "<");
          __strcat_chk();
          if (a5 != 1)
          {
            __strcat_chk();
            LH_itoa(*(a4 + 8), v49, 0xAu);
            __strcat_chk();
          }

          __strcat_chk();
          appended = ssftstring_AppendCStr(a3, __s);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_78;
          }

          if (a11 == 1)
          {
            strcpy(__s, "(");
            LH_itoa(*(a4 + 80), v49, 0xAu);
            __strcat_chk();
            __strcat_chk();
            appended = ssftstring_AppendCStr(a3, __s);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }

          if (a6 == 1)
          {
            appended = log_output_attribute(a3, *(a4 + 24));
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }

          if (a7 == 1)
          {
            appended = log_output_cost(a3, a4);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }
        }

        v32 = *(a1 + 32);
        v33 = ssftstring_CStr(a3);
        log_OutText(v32, a2, 5, 0, "[A*] %s", v34, v35, v36, v33);
        appended = ssftstring_Clear(a3);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

        v27 = *(a4 + 48);
        v28 = a1;
        v29 = a2;
        v30 = a3;
        v31 = a5;
      }

      else
      {
        if (v20 != 2)
        {
LABEL_16:
          v37 = *(a1 + 32);
          v38 = ssftstring_CStr(a3);
          log_OutText(v37, a2, 5, 0, "[A*] %s", v39, v40, v41, v38);
          appended = ssftstring_Clear(a3);
          goto LABEL_78;
        }

        if (!a5 || v51[0] != 95)
        {
          strcpy(__s, "<");
          __strcat_chk();
          if (a5 != 1)
          {
            __strcat_chk();
            LH_itoa(*(a4 + 8), v49, 0xAu);
            __strcat_chk();
          }

          __strcat_chk();
          appended = ssftstring_AppendCStr(a3, __s);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_78;
          }

          if (a11 == 1)
          {
            strcpy(__s, "(");
            LH_itoa(*(a4 + 80), v49, 0xAu);
            __strcat_chk();
            __strcat_chk();
            appended = ssftstring_AppendCStr(a3, __s);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }

          if (a6 == 1)
          {
            appended = log_output_attribute(a3, *(a4 + 24));
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }

          if (a7 == 1)
          {
            appended = log_output_cost(a3, a4);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }
        }

        v21 = *(a1 + 32);
        v22 = ssftstring_CStr(a3);
        log_OutText(v21, a2, 5, 0, "[A*] %s", v23, v24, v25, v22);
        appended = ssftstring_Clear(a3);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

        appended = log_output_tree(a1, a2, a3, *(a4 + 40), a5);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

        v27 = *(a4 + 48);
        v28 = a1;
        v29 = a2;
        v30 = a3;
        v31 = a5;
      }

      appended = log_output_tree(v28, v29, v30, v27, v31);
      if ((appended & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      strcpy(__s, "<");
      __strcat_chk();
      if (a5 != 1)
      {
        __strcat_chk();
        LH_itoa(*(a4 + 8), v49, 0xAu);
        __strcat_chk();
      }

      __strcat_chk();
      appended = ssftstring_AppendCStr(a3, __s);
      if ((appended & 0x80000000) == 0)
      {
        if (a11 != 1 || (strcpy(__s, "("), LH_itoa(*(a4 + 80), v49, 0xAu), __strcat_chk(), __strcat_chk(), appended = ssftstring_AppendCStr(a3, __s), (appended & 0x80000000) == 0))
        {
          if (a6 != 1 || (appended = log_output_attribute(a3, *(a4 + 24)), (appended & 0x80000000) == 0))
          {
            if (a7 != 1 || (appended = log_output_cost(a3, a4), (appended & 0x80000000) == 0))
            {
              appended = ssftstring_AppendCStr(a3, "(");
              if ((appended & 0x80000000) == 0)
              {
                v42 = *(a4 + 48);
                if (v42)
                {
                  v43 = 0;
                  do
                  {
                    if (v43)
                    {
                      appended = ssftstring_AppendCStr(a3, ",");
                      if ((appended & 0x80000000) != 0)
                      {
                        goto LABEL_78;
                      }
                    }

                    appended = ssftstring_AppendCStr(a3, *v42);
                    if ((appended & 0x80000000) != 0)
                    {
                      goto LABEL_78;
                    }

                    appended = ssftstring_AppendCStr(a3, ":");
                    if ((appended & 0x80000000) != 0)
                    {
                      goto LABEL_78;
                    }

                    appended = log_mbs_fput_sjis(a3, *(v42 + 8));
                    if ((appended & 0x80000000) != 0)
                    {
                      goto LABEL_78;
                    }

                    appended = ssftstring_AppendCStr(a3, "");
                    if ((appended & 0x80000000) != 0)
                    {
                      goto LABEL_78;
                    }

                    v42 = *(v42 + 16);
                    v43 = 1;
                  }

                  while (v42);
                }

                appended = ssftstring_AppendCStr(a3, ")");
                if ((appended & 0x80000000) == 0)
                {
                  v44 = *(a4 + 48);
                  while (1)
                  {
                    v44 = *(v44 + 24);
                    if (!v44)
                    {
                      goto LABEL_16;
                    }

                    strcpy(__s, "<");
                    __strcat_chk();
                    if (a5 != 1)
                    {
                      __strcat_chk();
                      LH_itoa(*(a4 + 8), v49, 0xAu);
                      __strcat_chk();
                    }

                    __strcat_chk();
                    appended = ssftstring_AppendCStr(a3, __s);
                    if ((appended & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (a11 == 1)
                    {
                      strcpy(__s, "(");
                      LH_itoa(*(a4 + 80), v49, 0xAu);
                      __strcat_chk();
                      __strcat_chk();
                      appended = ssftstring_AppendCStr(a3, __s);
                      if ((appended & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    if (a6 == 1)
                    {
                      appended = log_output_attribute(a3, *(a4 + 24));
                      if ((appended & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    if (a7 == 1)
                    {
                      appended = log_output_cost(a3, a4);
                      if ((appended & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    v45 = *(a4 + 48);
                    if (v45)
                    {
                      v46 = 0;
                      do
                      {
                        if (v46)
                        {
                          appended = ssftstring_AppendCStr(a3, ",");
                          if ((appended & 0x80000000) != 0)
                          {
                            goto LABEL_78;
                          }
                        }

                        appended = ssftstring_AppendCStr(a3, *v45);
                        if ((appended & 0x80000000) != 0)
                        {
                          goto LABEL_78;
                        }

                        appended = ssftstring_AppendCStr(a3, ":");
                        if ((appended & 0x80000000) != 0)
                        {
                          goto LABEL_78;
                        }

                        appended = log_mbs_fput_sjis(a3, *(v45 + 8));
                        if ((appended & 0x80000000) != 0)
                        {
                          goto LABEL_78;
                        }

                        appended = ssftstring_AppendCStr(a3, "");
                        if ((appended & 0x80000000) != 0)
                        {
                          goto LABEL_78;
                        }

                        v45 = *(v45 + 16);
                        v46 = 1;
                      }

                      while (v45);
                    }

                    v19 = ssftstring_AppendCStr(a3, ")");
                    if ((v19 & 0x80000000) != 0)
                    {
                      goto LABEL_79;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_78:
    v19 = appended;
  }

LABEL_79:
  v47 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t add_unit_product(void *a1, int a2, _DWORD *a3, int a4, int a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11)
{
  leading_tree = cyk_hash_get_leading_tree(a1, a4, a5);
  v18 = 1;
  if (leading_tree)
  {
    v19 = leading_tree;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0;
    if (a4)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2 - 1 == a5;
    }

    v21 = v20;
    v39 = v21;
    while (1)
    {
      *(&v42 + 1) = -1;
      *&v43 = *v19;
      v41 = &v42;
      grammar_right = find_grammar_right(&v41);
      if (grammar_right != -1)
      {
        break;
      }

LABEL_31:
      v19 = v19[11];
      if (!v19)
      {
        return 1;
      }
    }

    next_grammar_right = grammar_right - 1;
    v36 = v19;
    while (1)
    {
      v23 = heap_Alloc(a11, 96);
      if (!v23)
      {
        return 0;
      }

      v24 = v23;
      v25 = v41;
      *v23 = *v41;
      *(v23 + 24) = 0;
      *(v23 + 32) = 1;
      *(v23 + 40) = 0;
      *(v23 + 48) = v19;
      *(v23 + 88) = 0;
      *(v23 + 8) = -1;
      *(v23 + 16) = *(v25 + 32);
      v26 = *(v25 + 72);
      if ((v26 == -1 || *(a6 + 44) == 1 || eval_cond(**(&AC_pac + v26), v23) == 1) && (*(a6 + 32) != 1 || is_internal(*v24) == 1 || *v24 == a8))
      {
        v27 = cyk_hash_get_leading_tree(a1, a4, a5);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *(v27 + 88);
          }

          while (v27);
          *(v28 + 88) = v24;
        }

        else if ((cyk_hash_add_leading_tree(a1, v24, a4, a5, a11) & 0x1FFF) == 0xA)
        {
          return 0;
        }

        v29 = v41;
        if (v39 && *v41 == a8)
        {
          v30 = a8;
          v31 = *a7;
          v32 = tree_duplicate(v24, a6, a10, a11);
          v33 = v31;
          a8 = v30;
          *a7 = tree_append(v33, v32);
          v19 = v36;
          ++*a3;
          v29 = v41;
        }

        v34 = *(v29 + 72);
        if (v34 != -1 && !*(a6 + 44) && !exec_actions(*(*(&AC_pac + v34) + 1), v24, a11))
        {
          return 0;
        }
      }

      else
      {
        heap_Free(a11, v24);
      }

      next_grammar_right = find_next_grammar_right(&v41, grammar_right, next_grammar_right);
      if (next_grammar_right == -1)
      {
        goto LABEL_31;
      }
    }
  }

  return v18;
}

uint64_t check_left_upper(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = a4;
  v14 = a3;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v16 = ~a4;
  v44 = a2 - 1;
  v42 = ~a4;
  do
  {
    v17 = v13 + v16;
    if (v13 + v16 >= 0)
    {
      v45 = v14 + 1;
      v46 = v13;
      if (v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 == v44;
      }

      v19 = v18;
      v49 = v19;
      do
      {
        leading_tree = cyk_hash_get_leading_tree(a1, v14, v17);
        if (leading_tree)
        {
          v20 = ~v17;
          v40 = ~v17;
          v41 = v17;
          while (2)
          {
            v21 = cyk_hash_get_leading_tree(a1, v45 + v17, v13 + v20);
            if (v21)
            {
              v22 = v21;
              do
              {
                *(&v53 + 1) = *leading_tree;
                *&v54 = *v22;
                v52 = &v53;
                grammar_right = find_grammar_right(&v52);
                if (grammar_right != -1)
                {
                  next_grammar_right = grammar_right - 1;
                  do
                  {
                    result = heap_Alloc(a11, 96);
                    if (!result)
                    {
                      return result;
                    }

                    v25 = result;
                    v26 = v52;
                    *result = *v52;
                    *(result + 8) = -1;
                    *(result + 24) = 0;
                    *(result + 32) = 2;
                    *(result + 40) = leading_tree;
                    *(result + 48) = v22;
                    *(result + 88) = 0;
                    *(result + 12) = vmovn_s64(*(v26 + 24));
                    v27 = *(v26 + 72);
                    if ((v27 == -1 || eval_cond(**(&AC_pac + v27), result) == 1) && (*(a5 + 32) != 1 || is_internal(*v25) == 1 || *v25 == a8))
                    {
                      v28 = cyk_hash_get_leading_tree(a1, v14, v13);
                      if (v28)
                      {
                        do
                        {
                          v29 = v28;
                          v28 = *(v28 + 88);
                        }

                        while (v28);
                        *(v29 + 88) = v25;
                      }

                      else if ((cyk_hash_add_leading_tree(a1, v25, v14, v13, a11) & 0x1FFF) == 0xA)
                      {
                        return 0;
                      }

                      v30 = v52;
                      if (v49 && *v52 == a8)
                      {
                        v31 = a1;
                        v32 = v14;
                        v33 = a8;
                        v34 = *a7;
                        v35 = tree_duplicate(v25, a5, a10, a11);
                        v36 = v34;
                        a8 = v33;
                        v14 = v32;
                        a1 = v31;
                        *a7 = tree_append(v36, v35);
                        v13 = v46;
                        ++*a6;
                        v30 = v52;
                      }

                      v37 = *(v30 + 72);
                      if (v37 != -1)
                      {
                        result = exec_actions(*(*(&AC_pac + v37) + 1), v25, a11);
                        if (!result)
                        {
                          return result;
                        }
                      }
                    }

                    else
                    {
                      heap_Free(a11, v25);
                    }

                    next_grammar_right = find_next_grammar_right(&v52, grammar_right, next_grammar_right);
                  }

                  while (next_grammar_right != -1);
                }

                v22 = v22[11];
              }

              while (v22);
              v20 = v40;
              v17 = v41;
              leading_tree = leading_tree[11];
              if (leading_tree)
              {
                continue;
              }
            }

            break;
          }
        }

        v38 = v17-- <= 0;
      }

      while (!v38);
    }

    result = add_unit_product(a1, a2, a6, v14, v13, a5, a7, a8, v39, a10, a11);
    if (!result)
    {
      break;
    }

    ++v13;
    result = 1;
    v38 = v14 <= 0;
    v14 = (v14 - 1);
    v16 = v42;
  }

  while (!v38);
  return result;
}

uint64_t fill_up_table(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9)
{
  v18 = 0;
  if (a2 >= a3)
  {
    return 0;
  }

  v14 = a2;
  while (1)
  {
    result = check_left_upper(a1, a3, v14, 0, a4, &v18, a5, a6, v17, a8, a9);
    if (!result)
    {
      break;
    }

    v14 = (v14 + 1);
    if (a3 == v14)
    {
      return v18;
    }
  }

  return result;
}

uint64_t parse_cyk(uint64_t a1, void *a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v10 = 0;
  v8 = fill_up_table(a2, 0, a3, a1, &v10, a4, a7, a6, a7);
  result = parser_result_create(1, v10, a7);
  *(result + 16) = v8;
  return result;
}

double partial_tree_create_as_step(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v13 = heap_Alloc(a7, 96);
  if (v13)
  {
    *v13 = a5;
    *(v13 + 24) = 0;
    if (a3)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(v13 + 32) = v15;
    result = NAN;
    *(v13 + 8) = -1;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    *(v13 + 88) = 0;
    *(v13 + 16) = -1;
    *(v13 + 72) = a1;
    *(v13 + 76) = a2;
    *(v13 + 80) = a6;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  return result;
}

uint64_t connect_terminals(int *a1, int a2, int a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2 >= a5)
  {
    return 0;
  }

  v12 = a4;
  v15 = 0;
  v16 = (a8 + 8 * a3);
  v17 = a2;
  do
  {
    v18 = ~v17 + a5;
    if (v18 < 0)
    {
      goto LABEL_26;
    }

    v19 = v17 - a2 + 1;
    while (1)
    {
      leading_tree = cyk_hash_get_leading_tree(v12, v17, v18);
      if (leading_tree)
      {
        break;
      }

LABEL_16:
      if (v18-- <= 0)
      {
        v18 = -1;
        goto LABEL_26;
      }
    }

    v21 = leading_tree;
    v22 = *v16;
    while (1)
    {
      v23 = *v21;
      if (*v21 == a7 || v23 == v22)
      {
        v38 = ~a2;
        goto LABEL_30;
      }

      if (!a3)
      {
        break;
      }

      if (*(v16 - 1) == v23)
      {
        goto LABEL_19;
      }

LABEL_15:
      v21 = *(v21 + 88);
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    if (*(v21 + 32))
    {
      goto LABEL_15;
    }

LABEL_19:
    v26 = *(a9 + 8 * a3);
    if (v15)
    {
      v27 = a10;
      partial_tree_create_as_step(a2, v19 + v18, v15, v21, v26, a3, a10);
      if (!v28)
      {
        return 0;
      }

      v15 = v28;
      v29 = *(a6 + 52);
      v30 = v19 + v18;
      v31 = a4;
      v32 = v15;
      v33 = a2;
    }

    else
    {
      v27 = a10;
      partial_tree_create_as_step(a2, v18, 0, v21, v26, a3, a10);
      if (!v34)
      {
        return 0;
      }

      v15 = v34;
      v29 = *(a6 + 52);
      v31 = a4;
      v32 = v15;
      v33 = a2;
      v30 = v18;
    }

    v35 = add_partial_tree_checking_FI(v31, v32, v33, v30, v29, v27);
    if (v35 < 0)
    {
      v36 = v35;
      heap_Free(v27, v15);
      v15 = 0;
      v37 = 0;
      if ((v36 & 0x1FFF) == 0xA)
      {
        return v37;
      }
    }

LABEL_26:
    v17 += v18 + 1;
    v12 = a4;
  }

  while (v17 < a5);
  v38 = ~a2;
  v22 = *v16;
LABEL_30:
  partial_tree_create_as_step(a2, v17 + v38, 0, v15, v22, a3 + 1, a10);
  v37 = v39;
  if (v39)
  {
    v40 = add_partial_tree_checking_FI(a4, v39, a2, v17 + v38, *(a6 + 52), a10);
    if ((v40 & 0x80000000) == 0 || (v41 = v40, heap_Free(a10, v37), v37 = 0, (v41 & 0x1FFF) != 0xA))
    {
      *a1 = v17;
    }
  }

  return v37;
}

uint64_t max_len_parse(int a1, int a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, void *a12, void *a13)
{
  v21 = 0;
  v40 = a1;
  v41 = 0;
  *a13 = 0;
  if (a1 == 1)
  {
    v21 = jp_tree_create(*(a10 + 8 * a2), (a5 + (a2 << 6) + 976), 0, 0, 0, 0, a12);
    if (!v21)
    {
      return 2350915840;
    }
  }

  v37 = v21;
  v38 = a5;
  if (a4 >= 1)
  {
    v22 = 0;
    v39 = a2 + 1;
    do
    {
      v23 = ~v22 + a4;
      if (v23 < 0)
      {
LABEL_15:
        v28 = connect_terminals(&v41, v22, a2, a3, a4, v38, a7, a8, a9, a12);
        if (!v28)
        {
          goto LABEL_33;
        }

        v29 = v28;
        *(v28 + 80) = v39;
        *(a6 + 8) = as_list_insert(v28, *(a6 + 8), a12);
        if (v40 == 1)
        {
          v30 = tree_duplicate(v29, v38, a11, a12);
          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = v30;
          v32 = v37[4];
          if (v32)
          {
            if (!tree_append(v32, v31))
            {
              goto LABEL_33;
            }
          }

          else
          {
            v37[4] = v31;
          }
        }

        v22 = v41;
      }

      else
      {
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(a3, v22, v23);
          if (leading_tree)
          {
            break;
          }

LABEL_13:
          if (v23-- <= 0)
          {
            goto LABEL_15;
          }
        }

        v25 = leading_tree;
        while (*v25 != a7 && *v25 != *(a8 + 8 * a2))
        {
          v25 = *(v25 + 88);
          if (!v25)
          {
            goto LABEL_13;
          }
        }

        *(v25 + 80) = v39;
        *(a6 + 8) = as_list_insert(v25, *(a6 + 8), a12);
        if (v40 == 1)
        {
          v33 = tree_duplicate(v25, v38, a11, a12);
          if (!v33 && *v25 != a7)
          {
LABEL_33:
            v35 = 2350915840;
            jpe_FreeTree(v37, a12);
            return v35;
          }

          v34 = v37[4];
          if (v34)
          {
            if (!tree_append(v34, v33))
            {
              goto LABEL_33;
            }
          }

          else
          {
            v37[4] = v33;
          }
        }

        v22 += v23 + 1;
      }
    }

    while (v22 < a4);
  }

  v35 = 0;
  *a13 = v37;
  return v35;
}

void *as_list_insert(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (*(a1 + 56) <= *(*a2 + 56))
    {
      a2[1] = as_list_insert(a1, a2[1]);
    }

    else
    {
      a2[2] = as_list_insert(a1, a2[2]);
    }
  }

  else
  {
    v5 = heap_Alloc(a3, 24);
    v4 = v5;
    if (v5)
    {
      v5[1] = 0;
      v5[2] = 0;
      *v5 = a1;
    }
  }

  return v4;
}

uint64_t get_word_cost(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v3 = a1;
  while (strcmp(*v3, "PROB"))
  {
    v3 = *(v3 + 16);
    if (!v3)
    {
      return -1;
    }
  }

  v5 = mbs_len_bytes(*(v3 + 8)) + 1;
  v6 = heap_Alloc(a2, v5);
  if (v6)
  {
    v7 = v6;
    if (mbs2sjis(*(v3 + 8), 0, *(*(v3 + 8) + 8), v6, v5) != -1)
    {
      return atoi(v7);
    }

    heap_Free(a2, v7);
  }

  return -1;
}

void *cyk2as_list(void *a1, int a2, uint64_t a3, void *a4)
{
  v29 = heap_Alloc(a4, 24);
  if (!v29)
  {
    return v29;
  }

  *v29 = 0;
  v29[1] = 0;
  v29[2] = 0;
  if (a2 < 1)
  {
    return v29;
  }

  v8 = 0;
  v9 = a2;
  do
  {
    if (v8 < a2)
    {
      v10 = 0;
      do
      {
        leading_tree = cyk_hash_get_leading_tree(a1, v8, v10);
        if (leading_tree)
        {
          v12 = leading_tree;
          do
          {
            if (*(a3 + 64) == 1)
            {
              word_cost = 0;
            }

            else
            {
              word_cost = get_word_cost(v12[6], a4);
            }

            v12[8] = word_cost;
            v12[7] = v12[8] + get_me_terminal(*v12);
            v29[1] = as_list_insert(v12, v29[1], a4);
            v12 = v12[11];
          }

          while (v12);
        }

        ++v10;
      }

      while (v10 != v9);
    }

    ++v8;
    --v9;
  }

  while (v8 != a2);
  v14 = a2 - 2;
  v30 = a2;
  v31 = 1;
  v35 = a2;
  while (2)
  {
    v15 = 0;
    v32 = v14;
    v34 = v35--;
    v33 = 1;
    v36 = v34;
    do
    {
      v16 = cyk_hash_get_leading_tree(a1, v15, v35);
      if (v16)
      {
        v17 = v16;
        v37 = v15;
        while (v34 < 2)
        {
LABEL_39:
          v17 = v17[11];
          if (!v17)
          {
            goto LABEL_40;
          }
        }

        v18 = v32;
        v19 = v33;
        while (1)
        {
          v20 = v15 <= v19 ? v19 : v15;
          if (v35 - v18 >= 0)
          {
            break;
          }

LABEL_38:
          --v18;
          ++v19;
          v15 = v37;
          if (v19 == v36)
          {
            goto LABEL_39;
          }
        }

        v21 = (100 * (v35 - v18));
        v22 = v37;
        while (1)
        {
          v23 = cyk_hash_get_leading_tree(a1, v22, v18);
          if (v23)
          {
            break;
          }

LABEL_36:
          v27 = v22++ == v20;
          if (v27)
          {
            goto LABEL_38;
          }
        }

        v24 = v23;
        while (is_expensive_pos(*v24, *(a3 + 56)))
        {
          v25 = v24 + 8;
          if (v24[8] < v21)
          {
            v24[8] = v21;
            v26 = *v24;
LABEL_30:
            *v25 += get_me_terminal(v26);
          }

LABEL_35:
          v24 = v24[11];
          if (!v24)
          {
            goto LABEL_36;
          }
        }

        if (is_expensive_pos(*v17, *(a3 + 56)))
        {
          goto LABEL_35;
        }

        v26 = *v17;
        if (*v17 != *v24)
        {
          goto LABEL_35;
        }

        v25 = v24 + 8;
        if (v24[8] >= v21)
        {
          goto LABEL_35;
        }

        *v25 = v21;
        goto LABEL_30;
      }

LABEL_40:
      ++v15;
      ++v33;
      ++v36;
    }

    while (v15 != v31);
    v14 = v32 - 1;
    v27 = v31++ == v30;
    if (!v27)
    {
      continue;
    }

    return v29;
  }
}

uint64_t is_expensive_pos(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    pointer_of_symbol = get_pointer_of_symbol(SF_symbol_file, a1);
    if (pointer_of_symbol)
    {
      if (!strcmp(pointer_of_symbol, *v2))
      {
        break;
      }
    }

    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void *as_list_free_all(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    as_list_free_all(result[1]);
    as_list_free_all(*(v3 + 16));

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t add_partial_tree_checking_FI(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  leading_tree = cyk_hash_get_leading_tree(a1, a3, a4);
  if (leading_tree)
  {
    v13 = leading_tree;
    result = 2350907394;
    v15 = *(v13 + 88);
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        v17 = v13;
        v13 = v15;
        if (*v17 == *a2)
        {
          v18 = *(v17 + 32);
          if (v18 == *(a2 + 32) && (v18 == 1 || v18 == 2 && *(v17 + 40) == *(a2 + 40)) && *(v17 + 48) == *(a2 + 48))
          {
            break;
          }
        }

        ++v16;
        v15 = *(v13 + 88);
        if (!v15)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v16 = 0;
LABEL_16:
      if (a5 < 1 || v16 < a5 - 1)
      {
        result = 0;
        *(v13 + 88) = a2;
      }
    }
  }

  else
  {

    return cyk_hash_add_leading_tree(a1, a2, a3, a4, a6);
  }

  return result;
}

uint64_t cyk_as_make_trees(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *a7 = -1;
  if (a3)
  {
    v13 = *(a3 + 72);
    v14 = *(a3 + 76) + 1;
    if (v14 + v13 != *(a4 + 18))
    {
      return 1;
    }

    v15 = v14 + *(a4 + 19);
    v16 = *a3;
  }

  else
  {
    v13 = *(a4 + 18);
    v15 = *(a4 + 19);
    v16 = -1;
  }

  v17 = *a4;
  *(&v38 + 1) = v16;
  *&v39 = v17;
  v37 = &v38;
  grammar_right = find_grammar_right(&v37);
  if (grammar_right == -1)
  {
    return 1;
  }

  v19 = grammar_right;
  v33 = a5;
  next_grammar_right = grammar_right - 1;
  while (1)
  {
    result = heap_Alloc(a8, 96);
    if (!result)
    {
      break;
    }

    v22 = result;
    v23 = v37;
    *result = *v37;
    v24 = -1;
    *(result + 8) = -1;
    *(result + 24) = 0;
    if (a3)
    {
      v24 = *(v23 + 24);
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    *(result + 32) = v25;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 88) = 0;
    v26 = *(v23 + 32);
    *(result + 12) = v24;
    *(result + 16) = v26;
    *(result + 72) = v13;
    *(result + 76) = v15;
    v27 = *(v23 + 72);
    if (v27 == -1 || *(a6 + 44) == 1 || eval_cond(**(&AC_pac + v27), result) == 1)
    {
      if (a3)
      {
        v28 = a4[8] + *(a3 + 64) + *(v37 + 11);
      }

      else
      {
        v28 = *(v37 + 11) + a4[8];
      }

      *(v22 + 56) = v28 + *(v37 + 15);
      *(v22 + 64) = v28;
      v29 = add_partial_tree_checking_FI(a1, v22, v13, v15, *(a6 + 52), a8);
      if (v29 < 0)
      {
        v32 = v29;
        heap_Free(a8, v22);
        if ((v32 & 0x1FFF) == 0xA)
        {
          return 0;
        }
      }

      else
      {
        *(a2 + 8) = as_list_insert(v22, *(a2 + 8), a8);
        v30 = *(v37 + 9);
        if (v30 != -1 && !*(a6 + 44))
        {
          result = exec_actions(*(*(&AC_pac + v30) + 1), v22, a8);
          if (!result)
          {
            return result;
          }
        }

        if (!*(v22 + 72))
        {
          v31 = *(v22 + 76);
          if (v31 > *a7 && *v22 == v33)
          {
            *a7 = v31;
          }
        }
      }
    }

    else
    {
      heap_Free(a8, v22);
    }

    next_grammar_right = find_next_grammar_right(&v37, v19, next_grammar_right);
    if (next_grammar_right == -1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t parse_cyk_as(_DWORD *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v39 = 0;
  v13 = cyk2as_list(a2, a3, a1, a7);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v38 = 0;
    while (1)
    {
      do
      {
        v17 = v14[1];
        v18 = v14;
        do
        {
          if (!v17)
          {
            goto LABEL_38;
          }

          v19 = v17;
          v20 = v18;
          v17 = v17[1];
          v18 = v19;
        }

        while (v17);
        v21 = *v19;
        v20[1] = v19[2];
        heap_Free(a7, v19);
        if (!v21)
        {
LABEL_38:
          as_list_free_all(v14, a7);
          v33 = 1;
          v34 = v16;
          goto LABEL_40;
        }

        v22 = *(v21 + 72);
        if (!v22)
        {
          if (*(v21 + 76) == a3 - 1 && *v21 == a4)
          {
            v23 = tree_duplicate(v21, a1, a6, a7);
            v16 = tree_append(v16, v23);
            if (v38 + 1 >= a1[1])
            {
              goto LABEL_38;
            }

            ++v38;
            v22 = *(v21 + 72);
          }

          else
          {
            v22 = 0;
          }
        }

        v24 = a1[67];
        if (v24 < 0)
        {
          break;
        }

        v25 = *(v21 + 76) + v22;
        if (v25 >= v15 - v24)
        {
          break;
        }
      }

      while (v25 >= a1[66]);
      v36 = a6;
      v37 = v16;
      if (v22 >= 1)
      {
        break;
      }

LABEL_25:
      v29 = v22 + *(v21 + 76) + 1;
      if (v29 < a3)
      {
        v30 = 0;
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(a2, v29, v30);
          if (leading_tree)
          {
            break;
          }

LABEL_33:
          ++v30;
          v29 = *(v21 + 72) + *(v21 + 76) + 1;
          if (v30 >= a3 - v29)
          {
            goto LABEL_34;
          }
        }

        v32 = leading_tree;
        while (cyk_as_make_trees(a2, v14, v21, v32, a4, a1, &v39, a7))
        {
          if (v39 > v15)
          {
            v15 = v39;
          }

          v32 = v32[11];
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_43;
      }

LABEL_34:
      if (!cyk_as_make_trees(a2, v14, 0, v21, a4, a1, &v39, a7))
      {
        goto LABEL_43;
      }

      if (v39 > v15)
      {
        v15 = v39;
      }

      a6 = v36;
      v16 = v37;
    }

    v26 = 0;
    while (1)
    {
      v27 = cyk_hash_get_leading_tree(a2, v22 + ~v26, v26);
      if (v27)
      {
        break;
      }

LABEL_24:
      ++v26;
      v22 = *(v21 + 72);
      if (v26 >= v22)
      {
        goto LABEL_25;
      }
    }

    v28 = v27;
    while (cyk_as_make_trees(a2, v14, v28, v21, a4, a1, &v39, a7))
    {
      if (v39 > v15)
      {
        v15 = v39;
      }

      v28 = *(v28 + 88);
      if (!v28)
      {
        goto LABEL_24;
      }
    }

LABEL_43:
    v33 = 2;
    v34 = v37;
  }

  else
  {
    v33 = 2;
    v34 = 0;
  }

LABEL_40:

  return parser_result_create(v33, v34, a7);
}

void *set_step_partial_tree(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  while (1)
  {
    if (*a2 == a3 && *(a2 + 80) != a4)
    {
      *(a2 + 80) = a4;
      result = as_list_insert(a2, v9[1], a5);
      v9[1] = result;
    }

    v10 = *(a2 + 32);
    if (v10 != 1)
    {
      break;
    }

LABEL_8:
    a2 = *(a2 + 48);
  }

  if (v10 == 2)
  {
    result = set_step_partial_tree(v9, *(a2 + 40), a3, a4, a5);
    goto LABEL_8;
  }

  return result;
}

uint64_t cyk_as_make_trees_step(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7, _DWORD *a8, void *a9)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *a8 = -1;
  if (a3)
  {
    v15 = *(a3 + 72);
    v16 = *(a3 + 76) + 1;
    if (v16 + v15 != *(a4 + 18))
    {
      return 1;
    }

    v17 = v16 + *(a4 + 19);
    v18 = *a3;
  }

  else
  {
    v15 = *(a4 + 18);
    v17 = *(a4 + 19);
    v18 = -1;
  }

  v19 = *a4;
  *(&v42 + 1) = v18;
  *&v43 = v19;
  v41 = &v42;
  grammar_right = find_grammar_right(&v41);
  if (grammar_right == -1)
  {
    return 1;
  }

  v21 = grammar_right;
  v37 = a5;
  next_grammar_right = grammar_right - 1;
  v40 = v17;
  while (1)
  {
    result = heap_Alloc(a9, 96);
    if (!result)
    {
      break;
    }

    v24 = result;
    v25 = v41;
    v26 = *v41;
    *v24 = *v41;
    v27 = -1;
    *(v24 + 8) = -1;
    *(v24 + 24) = 0;
    if (a3)
    {
      v27 = *(v25 + 24);
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *(v24 + 32) = v28;
    *(v24 + 40) = a3;
    *(v24 + 48) = a4;
    *(v24 + 88) = 0;
    v29 = *(v25 + 32);
    *(v24 + 12) = v27;
    *(v24 + 16) = v29;
    *(v24 + 72) = v15;
    *(v24 + 76) = v17;
    *(v24 + 80) = a7;
    v30 = *(v25 + 72);
    if ((!a7 && v30 == -1 || v30 != -1 && *(*(&AC_pac + v30) + 4) == a7) && *(a4 + 20) == a7 && (!a3 || *(a3 + 80) == a7) && (v30 == -1 || *(a6 + 44) == 1 || is_internal(v26) == 1 || eval_cond(**(&AC_pac + v41[9]), v24) == 1))
    {
      if (a3)
      {
        v31 = a4[8] + *(a3 + 64) + v41[11];
      }

      else
      {
        v31 = v41[11] + a4[8];
      }

      *(v24 + 56) = v31 + v41[15];
      *(v24 + 64) = v31;
      v32 = a6;
      v33 = add_partial_tree_checking_FI(a1, v24, v15, v40, *(a6 + 52), a9);
      if (v33 < 0)
      {
        v35 = v33;
        heap_Free(a9, v24);
        v36 = v35 & 0x1FFF;
        a6 = v32;
        v17 = v40;
        if (v36 == 10)
        {
          return 0;
        }
      }

      else
      {
        *(a2 + 8) = as_list_insert(v24, *(a2 + 8), a9);
        if (v41[9] != -1 && !*(a6 + 44) && is_internal(*v24) != 1)
        {
          result = exec_actions(*(*(&AC_pac + v41[9]) + 1), v24, a9);
          if (!result)
          {
            return result;
          }
        }

        v17 = v40;
        if (!*(v24 + 72))
        {
          v34 = *(v24 + 76);
          if (v34 > *a8 && *v24 == *(v37 + 8 * a7))
          {
            *a8 = v34;
          }
        }
      }
    }

    else
    {
      heap_Free(a9, v24);
    }

    next_grammar_right = find_next_grammar_right(&v41, v21, next_grammar_right);
    if (next_grammar_right == -1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t parse_cyk_as_step(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10)
{
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v15 = a1 + 956;
  v16 = 956;
  LODWORD(v17) = *(a1 + 956);
  do
  {
    v18 = *(a1 + v16);
    if (v17 <= v18)
    {
      v17 = v18;
    }

    else
    {
      v17 = v17;
    }

    v16 += 4;
  }

  while (v16 != 976);
  v19 = heap_Calloc(a10, 8, v17);
  if (!v19)
  {

    return parser_result_create(2, 0, a10);
  }

  v20 = v19;
  v21 = cyk2as_list(a2, a3, a1, a10);
  if (!v21)
  {
    v59 = parser_result_create(2, 0, a10);
    heap_Free(a10, v20);
    return v59;
  }

  v22 = v21;
  v65 = v15;
  v67 = a6;
  v68 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v66 = a3 - 1;
  while (1)
  {
    v27 = v22[1];
    v28 = v22;
    do
    {
      if (!v27)
      {
        goto LABEL_75;
      }

      v29 = v27;
      v30 = v28;
      v27 = v27[1];
      v28 = v29;
    }

    while (v27);
    v70 = a3;
    v69 = v20;
    v31 = v26;
    v32 = a4;
    v33 = v24;
    v34 = *v29;
    v30[1] = v29[2];
    heap_Free(a10, v29);
    if (!v34)
    {
      break;
    }

    v26 = v31 + 1;
    v35 = *(a1 + 1300 + 4 * v25);
    if ((v35 & 0x80000000) != 0 || (IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(v35), v26 = v31 + 1, IsUpdatable != 1))
    {
      if (*(v34 + 80) != v25)
      {
        v24 = v33;
        a4 = v32;
LABEL_25:
        v20 = v69;
        goto LABEL_26;
      }

      v24 = v33;
      v20 = v69;
      if (*(v34 + 72))
      {
        a4 = v32;
      }

      else
      {
        a4 = v32;
        if (*(v34 + 76) == v66 && *v34 == *(a7 + 8 * v25))
        {
          v53 = (v24 + 1);
          if (v25 == *(a1 + 952) - 1)
          {
            v54 = v26;
            v55 = tree_duplicate(v34, a1, a9, a10);
            v68 = tree_append(v68, v55);
            v75 = v68;
            v24 = v53;
            if (v53 >= *(v65 + 4 * v25))
            {
              goto LABEL_74;
            }

            v26 = v54;
            goto LABEL_25;
          }

          *(v69 + 8 * v24) = v34;
          if (v53 >= *(v65 + 4 * v25))
          {
            if ((v24 & 0x80000000) != 0)
            {
              v23 = 0;
              v24 = 0;
              v26 = 0;
              ++v25;
            }

            else
            {
              v56 = v69;
              do
              {
                set_step_partial_tree(v22, *v56, *(a5 + 8 * v25), (v25 + 1), a10);
                v57 = *v56++;
                set_step_partial_tree(v22, v57, a4, (v25 + 1), a10);
                --v53;
              }

              while (v53);
              v23 = 0;
              v24 = 0;
              v26 = 0;
              ++v25;
              v20 = v69;
            }
          }

          else
          {
            v24 = (v24 + 1);
          }
        }
      }

LABEL_26:
      a3 = v70;
      if (*(v34 + 80) == v25 || v25 >= 1 && *v34 == *(a5 - 8 + 8 * v25))
      {
        v43 = *(a1 + 292 + 4 * v25);
        v44 = *(v34 + 72);
        if (v43 < 0 || (v45 = *(v34 + 76) + v44, v45 >= v23 - v43) || v45 < *(a1 + 272 + 4 * v25))
        {
          v63 = v26;
          v64 = v24;
          if (v44 >= 1)
          {
            v46 = 0;
            while (1)
            {
              leading_tree = cyk_hash_get_leading_tree(a2, v44 + ~v46, v46);
              if (leading_tree)
              {
                break;
              }

LABEL_40:
              ++v46;
              v44 = *(v34 + 72);
              if (v46 >= v44)
              {
                goto LABEL_41;
              }
            }

            v48 = leading_tree;
            while (cyk_as_make_trees_step(a2, v22, v48, v34, a7, a1, v25, &v74, a10))
            {
              if (v74 > v23)
              {
                v23 = v74;
              }

              v48 = *(v48 + 88);
              if (!v48)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_72;
          }

LABEL_41:
          v49 = v44 + *(v34 + 76) + 1;
          if (v49 < v70)
          {
            v50 = 0;
            while (1)
            {
              v51 = cyk_hash_get_leading_tree(a2, v49, v50);
              if (v51)
              {
                break;
              }

LABEL_49:
              ++v50;
              v49 = *(v34 + 72) + *(v34 + 76) + 1;
              if (v50 >= v70 - v49)
              {
                goto LABEL_50;
              }
            }

            v52 = v51;
            while (cyk_as_make_trees_step(a2, v22, v34, v52, a7, a1, v25, &v74, a10))
            {
              if (v74 > v23)
              {
                v23 = v74;
              }

              v52 = v52[11];
              if (!v52)
              {
                goto LABEL_49;
              }
            }

LABEL_72:
            v60 = parser_result_create(2, v68, a10);
            heap_Free(a10, v69);
            return v60;
          }

LABEL_50:
          if (!cyk_as_make_trees_step(a2, v22, 0, v34, a7, a1, v25, &v74, a10))
          {
            goto LABEL_72;
          }

          if (v74 > v23)
          {
            v23 = v74;
          }

          v20 = v69;
          a3 = v70;
          v24 = v64;
          v26 = v63;
        }
      }
    }

    else
    {
      if (v25 == *(a1 + 952) - 1)
      {
        break;
      }

      v20 = v69;
      if (!v33)
      {
        a4 = v32;
        if ((max_len_parse(0, v25, a2, v70, a1, v22, v32, a5, v67, a7, a9, a10, &v73) & 0x80000000) == 0)
        {
LABEL_60:
          v23 = 0;
          v24 = 0;
          v26 = 0;
          ++v25;
          a3 = v70;
          continue;
        }

        as_list_free_all(v22, a10);
        heap_Free(a10, v69);
        return 0;
      }

      v37 = v33;
      v38 = v33 <= 0;
      a4 = v32;
      if (v38)
      {
        goto LABEL_60;
      }

      v39 = v69;
      v40 = v32;
      v41 = v37;
      do
      {
        set_step_partial_tree(v22, *v39, *(a5 + 8 * v25), (v25 + 1), a10);
        v42 = *v39++;
        set_step_partial_tree(v22, v42, v40, (v25 + 1), a10);
        --v41;
      }

      while (v41);
      v23 = 0;
      v24 = 0;
      v26 = 0;
      ++v25;
      a4 = v40;
      a3 = v70;
      v20 = v69;
    }
  }

  LODWORD(v24) = v33;
  a4 = v32;
LABEL_74:
  v20 = v69;
  a3 = v70;
LABEL_75:
  if (v24)
  {
    as_list_free_all(v22, a10);
    heap_Free(a10, v20);
    return parser_result_create(1, v68, a10);
  }

  else
  {
    v61 = max_len_parse(1, v25, a2, a3, a1, v22, a4, a5, v67, a7, a9, a10, &v75);
    as_list_free_all(v22, a10);
    heap_Free(a10, v20);
    if (v61 < 0)
    {
      return 0;
    }

    if (v75)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    v60 = parser_result_create(v62, v75, a10);
    if (!v60)
    {
      jpe_FreeTree(v75, a10);
    }
  }

  return v60;
}

uint64_t cyk_one_free_all(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = *(v4 + 88);
      heap_Free(a2, v4);
      v4 = v5;
    }

    while (v5);
  }

  heap_Free(a2, a1);
  return 0;
}

uint64_t cyk_hash_get_leading_tree(void *a1, int a2, int a3)
{
  v3 = 20 * (a2 % 200);
  v4 = v3 + a3 % 20;
  if ((a3 / 20))
  {
    v4 = v3 + 20 * (a3 / 20) - a3 + 19;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  while (*(v5 + 10) != a3 || *(v5 + 8) != a2)
  {
    v5 = *(v5 + 16);
    if (!v5)
    {
      return 0;
    }
  }

  return *v5;
}

uint64_t cyk_hash_add_leading_tree(void *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v9 = 20 * (a3 % 200);
  if ((a4 / 20))
  {
    v10 = v9 + 20 * (a4 / 20) - a4 + 19;
  }

  else
  {
    v10 = v9 + a4 % 20;
  }

  v11 = *(*a1 + 8 * v10);
  if (v11)
  {
    while (1)
    {
      v12 = v11;
      if (*(v11 + 10) == a4 && *(v11 + 8) == a3)
      {
        break;
      }

      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v15 = 1;
    return v15 | 0x8C200000;
  }

  v12 = 0;
LABEL_10:
  v13 = heap_Alloc(a5, 24);
  if (!v13)
  {
    v15 = 8202;
    return v15 | 0x8C200000;
  }

  *(v13 + 8) = v6;
  *(v13 + 10) = v5;
  *(v13 + 16) = 0;
  *v13 = a2;
  if (v12)
  {
    v14 = (v12 + 16);
  }

  else
  {
    v14 = (*a1 + 8 * v10);
  }

  v16 = 0;
  *v14 = v13;
  return v16;
}

uint64_t *cyk_hash_free(void *a1, void *a2)
{
  for (i = 0; i != 4000; ++i)
  {
    result = *(*a1 + 8 * i);
    if (result)
    {
      do
      {
        v6 = result[2];
        cyk_one_free_all(result, a2);
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t SearchTERMINALTable(char *__s2)
{
  v2 = 0;
  v3 = 372;
  while (1)
  {
    v4 = v2 + (v3 - v2) / 2;
    v5 = &(&TERMINALTable)[2 * v4];
    v6 = strcmp(*v5, __s2);
    if (!v6)
    {
      break;
    }

    if (v6 >= 0)
    {
      v3 = v4 - 1;
    }

    else
    {
      v2 = v4 + 1;
    }

    if (v2 > v3)
    {
      return 0;
    }
  }

  return *(v5 + 8);
}

uint64_t log_intermediate_tree(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, void *a5, int a6, uint64_t *a7)
{
  v14 = ssftstring_Clear(a3);
  if ((v14 & 0x80000000) == 0)
  {
    if (a5)
    {
      if (a6 >= 1)
      {
        v30 = a5;
        v15 = 0;
        v16 = a6;
        v28 = a6;
        while (v15 >= a6)
        {
LABEL_12:
          v15 = (v15 + 1);
          --v16;
          a6 = v28;
          if (v15 == v28)
          {
            return v14;
          }
        }

        v17 = 0;
        v29 = v16;
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(v30, v15, v17);
          if (leading_tree)
          {
            break;
          }

LABEL_11:
          ++v17;
          v16 = v29;
          if (v17 == v29)
          {
            goto LABEL_12;
          }
        }

        v22 = leading_tree;
        while (1)
        {
          v23 = v22;
          v22 = *(v22 + 88);
          v26 = *(v23 + 72);
          v27 = *(v23 + 76);
          log_OutText(*(a1 + 32), a2, 5, 0, "[A*] (%d,%d) == (%d,%d)", v19, v20, v21, v15);
          LODWORD(v25) = 0;
          v14 = log_output_tree(a1, a2, a3, v23, 0, a4[3], a4[9], 1, v25, 0, a4[324], a7);
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          if (!v22)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

uint64_t parser_result_create(int a1, uint64_t a2, uint64_t a3)
{
  result = heap_Alloc(a3, 56);
  if (result)
  {
    *result = a1;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t connection_table(uint64_t a1, uint64_t a2, void *a3)
{
  result = 100000;
  v5 = *(a3[6] + 4 * a1 + 4);
  if ((v5 & 0x80000000) != 0)
  {
    return result;
  }

  v6 = *(a3[7] + 4 * a2 + 4);
  if ((v6 & 0x80000000) != 0)
  {
    return result;
  }

  LOWORD(v7) = 0;
  v8 = *(a3[3] + 2 * v5);
  v9 = (v8 + ((v8 & 0x8000) >> 15)) << 16 >> 17;
  v10 = (*(a3[2] + 8 * v5) + 8 * v9);
  while (v6 < *v10)
  {
    if (!v9)
    {
      v19 = (*(a3[4] + 8 * v5) + 2 * v6);
      return *v19;
    }

    if (v6 > *(v10 - 3))
    {
      v17 = *(a3[4] + 8 * v5);
      v18 = *(v10 - 2);
      goto LABEL_29;
    }

    v11 = v10 - 4;
    if (v6 >= *(v10 - 4))
    {
      v19 = v10 - 1;
      return *v19;
    }

    if (!v7)
    {
      LOWORD(v7) = v9;
    }

    v12 = v7;
    v7 = (v7 + ((v7 & 0x8000) >> 15)) >> 1;
    ++v12;
    v10 -= 4 * v7;
    v13 = v12 >= 3;
    if (v12 >= 3)
    {
      v14 = -v7;
    }

    else
    {
      LOWORD(v14) = -1;
    }

LABEL_22:
    if (!v13)
    {
      v10 = v11;
    }

    LOWORD(v9) = v14 + v9;
  }

  if (v6 <= v10[1])
  {
    v19 = v10 + 3;
    return *v19;
  }

  if (v8 - 1 == v9 || (v11 = v10 + 4, v6 < v10[4]))
  {
    v17 = *(a3[4] + 8 * v5);
    v18 = v10[2];
LABEL_29:
    v19 = (v17 + 2 * (v6 - v18));
    return *v19;
  }

  if (v6 > v10[5])
  {
    v15 = v8 - v9;
    if (v7)
    {
      v15 = v7;
    }

    v7 = v15 / 2;
    v16 = v15 + 1;
    v10 += 4 * v7;
    v13 = v16 >= 3;
    if (v16 < 3)
    {
      LOWORD(v14) = 1;
    }

    else
    {
      LOWORD(v14) = v7;
    }

    goto LABEL_22;
  }

  v19 = v10 + 7;
  return *v19;
}

uint64_t JpCreate(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, uint64_t *a8, uint64_t a9)
{
  v25 = 0;
  inited = InitRsrcFunction(a1, a2, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v18 = heap_Calloc(*(v25 + 8), 1, 72);
  if (!v18)
  {
    return 2350915594;
  }

  v19 = v18;
  *(v18 + 64) = 0;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v20 = jparser_ClassOpen(a1, a2, v18 + 8);
  if ((v20 & 0x80000000) != 0)
  {
    v22 = v20;
LABEL_13:
    heap_Free(*(v25 + 8), v19);
    return v22;
  }

  v21 = jparser_ObjOpen(a1, a2, *(v19 + 8), *(v19 + 16), (v19 + 24), a3, a4, a5, a6, a7, a9);
  if ((v21 & 0x80000000) != 0)
  {
    v22 = v21;
LABEL_12:
    jparser_ClassClose(*(v19 + 8), *(v19 + 16));
    goto LABEL_13;
  }

  *(v19 + 48) = 0;
  v22 = ssftstring_ObjOpen(*(v25 + 8), (v19 + 48));
  if ((v22 & 0x80000000) != 0)
  {
    jparser_ObjClose((v19 + 24));
    goto LABEL_12;
  }

  *v19 = 1;
  v23 = v25;
  *(v19 + 56) = a1;
  *(v19 + 64) = a2;
  *(v19 + 32) = v23;
  *(v19 + 40) = a9;
  *a8 = v19;
  return v22;
}