char *transform(char *__s, char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (__PAIR64__(a2[1], *a2) == 0xC2000000CDLL)
  {
    v4 = cstdlib_strchr(__s, 39);
    if (v4)
    {
      v5 = v4;
      v6 = cstdlib_strlen(v4 + 1);
      v7 = v5 + 1;
LABEL_30:
      v20 = v6 + 1;
      v21 = __s;
      goto LABEL_43;
    }
  }

  v8 = cstdlib_strchr(__s, 104);
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 - 1) - 99;
    v11 = v10 > 0x11;
    v12 = (1 << v10) & 0x22101;
    if (v11 || v12 == 0)
    {
      v29 = cstdlib_strchr(__s, 39);
      if (v29 > v9)
      {
        v30 = v29;
        v6 = cstdlib_strlen(v29 + 1);
        v7 = v30 + 1;
        goto LABEL_30;
      }
    }
  }

  v14 = cstdlib_strchr(a2, 195);
  if (v14 && ((v15 = *(v14 - 1), v15 == 202) || v15 == 171) && !cstdlib_strchr(__s, 39) && (v26 = cstdlib_strchr(__s, 114)) != 0)
  {
    v27 = v26;
    v28 = cstdlib_strlen(v26 + 1);
    v7 = v27 + 1;
    v20 = v28 + 1;
    v21 = v27;
  }

  else
  {
    v16 = cstdlib_strchr(a2, 195);
    if (v16 && *(v16 - 1) == 183 && !cstdlib_strchr(__s, 39) && (patt_check(a2, "\xB7\xC3\xC7\xB4") == 1 || patt_check(a2, "\xB7\xC3\xC7\xA7") == 1 || patt_check(a2, "\xB7ç") == 1 || patt_check(a2, "\xB7\xC3\xD2\xBA") == 1 || patt_check(a2, "\xB7\xC3\xD2\xC1\xB7\xC3\xD2\xC2\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xB7\xC3\xD2\xC2\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xB7\xC3\xD8\xB4") == 1 || patt_check(a2, "\xB7\xC3\xD5") == 1) && (v31 = cstdlib_strchr(__s, 114)) != 0)
    {
      v19 = v31;
      *v31 = 115;
      v32 = v31 - 2;
      v20 = cstdlib_strlen(v31) + 1;
      v21 = v32;
    }

    else
    {
      result = cstdlib_strchr(__s, 43);
      if (!result || (v18 = result + 1, result[1] != 39))
      {
        v22 = *__s;
        if (v22 == 116)
        {
          v23 = __s + 1;
          if (__s[1] == 119)
          {
            v25 = "ta1";
          }

          else
          {
            v23 = __s + 2;
            if (__s[2] != 119)
            {
              return result;
            }

            v25 = "tha1";
          }
        }

        else
        {
          if (v22 != 115)
          {
            return result;
          }

          v23 = __s + 1;
          v24 = __s[1] - 108;
          if (v24 > 0xB || ((1 << v24) & 0x841) == 0)
          {
            return result;
          }

          v25 = "sa1";
        }

        cstdlib_strcpy(__dst, v25);
        cstdlib_strcat(__dst, v23);
        return cstdlib_strcpy(__s, __dst);
      }

      *result = 49;
      v19 = result + 2;
      v20 = cstdlib_strlen(result + 2) + 1;
      v21 = v18;
    }

    v7 = v19;
  }

LABEL_43:

  return cstdlib_memmove(v21, v7, v20);
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

uint64_t wparser_impl_crf_Init(_WORD **a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 7549556;
  memset(v27, 0, sizeof(v27));
  v23 = 0;
  inited = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = (*(*a3 + 72))(a3[1], a3[2], &v24, a1 + 68);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  a1[7] = a3;
  *(a1 + 16) = a6;
  inited = InitRsrcFunction(*a1, a1[1], &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = v23;
  v25 = 0;
  v26 = 0;
  Str = paramc_ParamGetStr(*(v23 + 40), "langcode", &v26);
  if (Str < 0 || (Str = paramc_ParamGetStr(*(v10 + 40), "fecfg", &v25), Str < 0) || (Str = brokeraux_ComposeBrokerString(v10, "wpcrf", 1, 1, v26, 0, 0, v27, 0x80uLL), Str < 0))
  {
    v21 = Str;
    log_OutText(*(v23 + 32), "WPARSER_IMPL_CRF", 0, 0, "Could not assemble broker string for WPCRF model", v12, v13, v14, v22);
    return v21 | 0x8C202000;
  }

  else
  {
    log_OutText(*(v23 + 32), "WPARSER_IMPL_CRF", 5, 0, "looking for WPCRF model at %s", v12, v13, v14, v27);
    Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(*a1, a1[1], a1[3], a1[4], a1 + 10, 2, v27, "CRPH", 12341, 48, 0);
    if ((Only_ReferenceCnt & 0x80000000) != 0)
    {
      log_OutText(*(v23 + 32), "WPARSER_IMPL_CRF", 5, 0, "no CRF PW model found", v15, v16, v17, v27);
      v19 = a1[10];
      if (v19)
      {
        Only_ReferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1[2], a1[5], v19);
        if ((Only_ReferenceCnt & 0x80000000) == 0)
        {
          a1[10] = 0;
        }
      }
    }
  }

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

uint64_t wparser_impl_crf_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 48), *(a1 + 56), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 72));
  }

  return result;
}

uint64_t wparser_impl_crf_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
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
  v4 = cstdlib_atoi(v6);
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
  v99 = *MEMORY[0x277D85DE8];
  v88 = 0;
  v87 = 0;
  v86 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  *__src = 0;
  *(a11 + 8) = 0;
  *(a11 + 16) = 1;
  if ((bed_GetpElem(a8, 0xFFFFu, __src) & 0x80000000) == 0)
  {
    if (a6 && a6 != *(*__src + 36))
    {
      *(a11 + 16) = 0;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "[WPCRF] (length for CRF %d - region length in Marker %d %s)", v18, v19, v20, a6);
  }

  v84 = a2;
  v21 = heap_Calloc(*(a1 + 8), a6, 8);
  if (v21)
  {
    v22 = v21;
    v81 = LogLevel > 4;
    v23 = heap_Calloc(*(a1 + 8), a6, 8);
    if (v23)
    {
      v24 = heap_Calloc(*(a1 + 8), a6, 8);
      if (v24)
      {
        v25 = v24;
        v80 = a7;
        v83 = v23;
        v79 = a8;
        if (a6)
        {
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v98 = 0;
            v96 = 0u;
            v97 = 0u;
            *__src = 0u;
            v95 = 0u;
            v93 = 0;
            v91 = 0u;
            v92 = 0u;
            *__s = 0u;
            v90 = 0u;
            v28 = utf8_determineUTF8CharLength(*(a5 + v26));
            sysdct_wpcrf_LookUp_Chinese(a3, (a5 + v26), v28, __src, __s, (v83 + 8 * v27));
            if (LogLevel >= 5)
            {
              log_OutText(*(a1 + 32), v84, 5, 0, "[WPCRF] Feat: %s", v29, v30, v31, __src);
            }

            v32 = heap_Calloc(*(a1 + 8), 1, 65);
            v25[v27] = v32;
            if (!v32)
            {
              goto LABEL_65;
            }

            if (!cstdlib_strlen(__s))
            {
              break;
            }

            if (cstdlib_strcmp(__s, "NULL"))
            {
              cstdlib_strcpy(v25[v27], __s);
LABEL_18:
              v33 = *(a1 + 8);
              v34 = cstdlib_strlen(__src);
              v35 = heap_Calloc(v33, 1, v34 + 1);
              v22[v27] = v35;
              if (!v35)
              {
                goto LABEL_65;
              }

              cstdlib_strcpy(v35, __src);
              ++v27;
              goto LABEL_21;
            }

            heap_Free(*(a1 + 8), v25[v27]);
            v25[v27] = 0;
LABEL_21:
            v26 += v28;
            if (v26 >= a6)
            {
              goto LABEL_29;
            }
          }

          cstdlib_strncpy(v25[v27], (a5 + v26), v28);
          goto LABEL_18;
        }

        v27 = 0;
LABEL_29:
        v41 = a9;
        crf_Process(a4, v22, v27, &v86, &v87);
        v42 = v80;
        if (v87)
        {
          v43 = heap_Calloc(*(a1 + 8), 64, v87);
          if (!v43)
          {
LABEL_65:
            v36 = 2350915594;
LABEL_76:
            v37 = v86;
            v38 = v87;
            if (v27)
            {
              v70 = 0;
              v71 = v27;
              do
              {
                v72 = v22[v70];
                if (v72)
                {
                  heap_Free(*(a1 + 8), v72);
                }

                ++v70;
              }

              while (v27 != v70);
              heap_Free(*(a1 + 8), v22);
              heap_Free(*(a1 + 8), v83);
              v73 = v25;
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
              heap_Free(*(a1 + 8), v22);
              heap_Free(*(a1 + 8), v83);
            }

            v39 = *(a1 + 8);
            v40 = v25;
LABEL_88:
            heap_Free(v39, v40);
            if (!v37)
            {
              return v36;
            }

            goto LABEL_89;
          }

          v47 = v43;
          if (v87)
          {
            v48 = 0;
            v49 = v83;
            do
            {
              v50 = v86;
              if (LogLevel >= 5)
              {
                log_OutText(*(a1 + 32), v84, 5, 0, "[WPCRF] Predicted Tag: %s", v44, v45, v46, *(v86 + 8 * v48));
                v50 = v86;
              }

              v51 = **(v50 + 8 * v48);
              if ((v51 == 83 || v51 == 66) && cstdlib_strlen(v47) && (**(v86 + 8 * v48) != 83 || *v49 != 1) && (v48 && !*(v49 - 2) || cstdlib_strlen(v47) >= 2))
              {
                hlp_updateWord(a9, v47, a10, a1, a11, &v88);
                cstdlib_memset(v47, 0, v87 << 6);
              }

              v52 = v25[v48];
              if (v52)
              {
                cstdlib_strcat(v47, v52);
              }

              ++v48;
              v49 += 2;
            }

            while (v48 < v87);
          }

          v41 = a9;
          if (cstdlib_strlen(v47))
          {
            hlp_updateWord(a9, v47, a10, a1, a11, &v88);
          }

          heap_Free(*(a1 + 8), v47);
          if (a6)
          {
            *__src = 0;
            *__s = 0;
            if ((bed_GetcElem(a9, __s) & 0x80000000) == 0)
            {
              if (*__s)
              {
                UTOISubTrace(v81, a1, a9, "replacement string");
                if (*(a11 + 16) == 1 && (bed_GetpElem(a9, 0, __src) & 0x80000000) == 0)
                {
                  v59 = *__s;
                  if (*__s)
                  {
                    v60 = 0;
                    v61 = 0;
                    v62 = 1;
                    v63 = *__src;
                    do
                    {
                      if (*(v63 + v60) == 16)
                      {
                        v64 = *(a11 + 8);
                        if (v61 >= v64)
                        {
LABEL_67:
                          log_OutText(*(a1 + 32), v84, 5, 0, "[WPCRF] cant find non-deleted word to align new word number %d with", v56, v57, v58, v62);
                          v78 = 0;
                          goto LABEL_68;
                        }

                        v65 = v61;
                        v66 = (*a11 + 12 * v61 + 4);
                        while (1)
                        {
                          v67 = *v66;
                          v66 += 3;
                          if (v67 != 1)
                          {
                            break;
                          }

                          if (v64 == ++v65)
                          {
                            goto LABEL_67;
                          }
                        }

                        *(*a11 + 12 * v65 + 8) = v60;
                        ++v62;
                        v61 = v65 + 1;
                        v59 = *__s;
                      }

                      ++v60;
                    }

                    while (v60 < v59);
                  }

                  v78 = 1;
LABEL_68:
                  if (LogLevel >= 5 && *(a11 + 8))
                  {
                    v68 = 0;
                    v69 = 0;
                    do
                    {
                      log_OutText(*(a1 + 32), v84, 5, 0, "[WPCRF] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v56, v57, v58, v69++);
                      v68 += 12;
                    }

                    while (v69 < *(a11 + 8));
                  }

                  v42 = v80;
                  v41 = a9;
                  if (v78)
                  {
                    *(a11 + 12) = 0;
                  }
                }
              }

              else
              {
                log_OutText(*(a1 + 32), v84, 5, 0, "[WPCRF] deleting region, no replacement text found", v53, v54, v55, v77);
              }
            }
          }
        }

        v36 = utoin_IncrReplaceCurrentRegion(v42, v79, v41, a6, a11);
        if ((v36 & 0x80000000) == 0)
        {
          UTOITrace(v81, a1, v42, v79, "END of DOWPCRF");
        }

        goto LABEL_76;
      }
    }

    v36 = 2586845194;
    v37 = v86;
    v38 = v87;
    heap_Free(*(a1 + 8), v22);
    if (v23)
    {
      v39 = *(a1 + 8);
      v40 = v23;
      goto LABEL_88;
    }
  }

  else
  {
    v36 = 2586845194;
    v37 = v86;
    v38 = v87;
  }

  if (!v37)
  {
    return v36;
  }

LABEL_89:
  if (v38)
  {
    v74 = v38;
    v75 = v37;
    do
    {
      if (*v75)
      {
        heap_Free(*(a1 + 8), *v75);
      }

      ++v75;
      --v74;
    }

    while (v74);
  }

  heap_Free(*(a1 + 8), v37);
  return v36;
}

size_t hlp_updateWord(uint64_t a1, char *a2, _WORD *a3, uint64_t a4, uint64_t a5, __int16 *a6)
{
  v12 = cstdlib_strlen(szWORD_BEG_4);
  if ((bed_Insert(a1, szWORD_BEG_4, v12) & 0x80000000) == 0)
  {
    *a3 += cstdlib_strlen(szWORD_BEG_4);
    v13 = cstdlib_strlen(a2);
    if ((bed_Insert(a1, a2, v13) & 0x80000000) == 0)
    {
      *a3 += cstdlib_strlen(a2);
      v14 = cstdlib_strlen(szWORD_END_4);
      if ((bed_Insert(a1, szWORD_END_4, v14) & 0x80000000) == 0)
      {
        *a3 += cstdlib_strlen(szWORD_END_4);
      }
    }
  }

  if (*(a5 + 16) == 1)
  {
    v15 = *a6;
    v16 = *(a5 + 8);
    v17 = *a5;
    if (v16 < *(a5 + 10))
    {
LABEL_9:
      v19 = v17 + 12 * v16;
      *v19 = v15;
      *(v19 + 2) = 0;
      *(a5 + 8) = v16 + 1;
      goto LABEL_10;
    }

    v18 = heap_Realloc(*(a4 + 8), v17, 12 * *(a5 + 10) + 121);
    if (v18)
    {
      v17 = v18;
      *a5 = v18;
      *(a5 + 10) += 10;
      v16 = *(a5 + 8);
      goto LABEL_9;
    }
  }

LABEL_10:
  result = cstdlib_strlen(a2);
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

uint64_t wparser_impl_dummy_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 48), *(a1 + 56), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 72));
  }

  return result;
}

uint64_t wparser_impl_dummy_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
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
  v91 = *MEMORY[0x277D85DE8];
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v76 = LogLevel > 4;
  *__src = 0;
  *(a10 + 8) = 0;
  *(a10 + 16) = 1;
  if ((bed_GetpElem(a7, 0xFFFFu, __src) & 0x80000000) == 0)
  {
    if (a5 && a5 != *(*__src + 36))
    {
      *(a10 + 16) = 0;
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "[WPDUMMY] (length for DUMMY %d - region length in Marker %d %s)", v19, v20, v21, a5);
  }

  v78 = a2;
  v22 = 2591039498;
  v80 = heap_Calloc(*(a1 + 8), a5, 8);
  if (!v80)
  {
    return v22;
  }

  v23 = heap_Calloc(*(a1 + 8), a5, 8);
  v24 = *(a1 + 8);
  v79 = v23;
  if (!v23)
  {
    v64 = v80;
    goto LABEL_71;
  }

  v25 = heap_Calloc(v24, a5, 8);
  if (!v25)
  {
    v27 = 0;
    goto LABEL_64;
  }

  v75 = a8;
  if (!a5)
  {
    v27 = 0;
LABEL_56:
    v38 = a10;
    goto LABEL_57;
  }

  v73 = a7;
  v74 = a6;
  v26 = 0;
  v27 = 0;
  do
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    *__src = 0u;
    v87 = 0u;
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    *__s = 0u;
    v82 = 0u;
    v28 = utf8_determineUTF8CharLength(*(a4 + v26));
    sysdct_wpdummy_LookUp_Chinese(a3, (a4 + v26), v28, __src, __s, (v79 + 8 * v27));
    if (LogLevel >= 5)
    {
      log_OutText(*(a1 + 32), v78, 5, 0, "[WPCRF] Feat: %s", v29, v30, v31, __src);
    }

    v32 = heap_Calloc(*(a1 + 8), 1, 65);
    *(v25 + 8 * v27) = v32;
    if (!v32)
    {
LABEL_54:
      v22 = 2350915594;
      goto LABEL_59;
    }

    if (cstdlib_strlen(__s))
    {
      if (!cstdlib_strcmp(__s, "NULL"))
      {
        heap_Free(*(a1 + 8), *(v25 + 8 * v27));
        *(v25 + 8 * v27) = 0;
        goto LABEL_21;
      }

      cstdlib_strcpy(*(v25 + 8 * v27), __s);
    }

    else
    {
      cstdlib_strncpy(*(v25 + 8 * v27), (a4 + v26), v28);
    }

    v33 = *(a1 + 8);
    v34 = cstdlib_strlen(__src);
    v35 = heap_Calloc(v33, 1, v34 + 1);
    *(v80 + 8 * v27) = v35;
    if (!v35)
    {
      goto LABEL_54;
    }

    cstdlib_strcpy(v35, __src);
    ++v27;
LABEL_21:
    v26 += v28;
  }

  while (v26 < a5);
  a6 = v74;
  if (!v27)
  {
    a7 = v73;
    goto LABEL_56;
  }

  v36 = v27;
  v37 = heap_Calloc(*(a1 + 8), 64, v27);
  a7 = v73;
  v38 = a10;
  if (!v37)
  {
    v22 = 2350915594;
    goto LABEL_60;
  }

  v39 = v37;
  v40 = v25;
  do
  {
    v41 = *v40++;
    cstdlib_strcat(v39, v41);
    --v36;
  }

  while (v36);
  a6 = v74;
  if (cstdlib_strlen(v39))
  {
    v42 = cstdlib_strlen(szWORD_BEG_5);
    if ((bed_Insert(v75, szWORD_BEG_5, v42) & 0x80000000) == 0)
    {
      *a9 += cstdlib_strlen(szWORD_BEG_5);
      v43 = cstdlib_strlen(v39);
      if ((bed_Insert(v75, v39, v43) & 0x80000000) == 0)
      {
        *a9 += cstdlib_strlen(v39);
        v44 = cstdlib_strlen(szWORD_END_5);
        if ((bed_Insert(v75, szWORD_END_5, v44) & 0x80000000) == 0)
        {
          *a9 += cstdlib_strlen(szWORD_END_5);
        }
      }
    }

    v38 = a10;
    if (*(a10 + 16) == 1)
    {
      v45 = *(a10 + 8);
      v46 = *a10;
      if (v45 < *(a10 + 10))
      {
        goto LABEL_35;
      }

      v47 = heap_Realloc(*(a1 + 8), v46, 12 * *(a10 + 10) + 121);
      if (v47)
      {
        v46 = v47;
        *a10 = v47;
        *(a10 + 10) += 10;
        v45 = *(a10 + 8);
LABEL_35:
        v48 = v46 + 12 * v45;
        *v48 = 0;
        *(v48 + 2) = 0;
        *(a10 + 8) = v45 + 1;
      }
    }

    cstdlib_strlen(v39);
  }

  heap_Free(*(a1 + 8), v39);
  *__src = 0;
  *__s = 0;
  if ((bed_GetcElem(v75, __s) & 0x80000000) == 0)
  {
    if (*__s)
    {
      UTOISubTrace(v76, a1, v75, "replacement string");
      if (*(v38 + 16) == 1 && (bed_GetpElem(v75, 0, __src) & 0x80000000) == 0)
      {
        v55 = *__s;
        if (*__s)
        {
          v56 = 0;
          v57 = 0;
          v58 = 1;
          v59 = *__src;
          do
          {
            if (*(v59 + v56) == 16)
            {
              v60 = *(v38 + 8);
              if (v57 >= v60)
              {
LABEL_76:
                log_OutText(*(a1 + 32), v78, 5, 0, "[WPDUMMY] cant find non-deleted word to align new word number %d with", v52, v53, v54, v58);
                v77 = 0;
                goto LABEL_77;
              }

              v61 = v57;
              v62 = (*v38 + 12 * v57 + 4);
              while (1)
              {
                v63 = *v62;
                v62 += 3;
                if (v63 != 1)
                {
                  break;
                }

                if (v60 == ++v61)
                {
                  goto LABEL_76;
                }
              }

              *(*v38 + 12 * v61 + 8) = v56;
              ++v58;
              v57 = v61 + 1;
              v55 = *__s;
            }

            ++v56;
          }

          while (v56 < v55);
        }

        v77 = 1;
LABEL_77:
        if (LogLevel >= 5 && *(v38 + 8))
        {
          v70 = 0;
          v71 = 0;
          do
          {
            log_OutText(*(a1 + 32), v78, 5, 0, "[WPDUMMY] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v52, v53, v54, v71++);
            v70 += 12;
          }

          while (v71 < *(v38 + 8));
        }

        a6 = v74;
        if (v77)
        {
          *(v38 + 12) = 0;
        }
      }
    }

    else
    {
      log_OutText(*(a1 + 32), v78, 5, 0, "[WPDUMMY] deleting region, no replacement text found", v49, v50, v51, v72);
    }
  }

LABEL_57:
  v22 = utoin_IncrReplaceCurrentRegion(a6, a7, v75, a5, v38);
  if ((v22 & 0x80000000) == 0)
  {
    UTOITrace(v76, a1, a6, a7, "END of DOWPDUMMY");
  }

LABEL_59:
  if (v27)
  {
LABEL_60:
    v65 = v27;
    v66 = v80;
    do
    {
      if (*v66)
      {
        heap_Free(*(a1 + 8), *v66);
      }

      ++v66;
      --v65;
    }

    while (v65);
  }

LABEL_64:
  heap_Free(*(a1 + 8), v80);
  heap_Free(*(a1 + 8), v79);
  if (v25)
  {
    if (v27)
    {
      v67 = v27;
      v68 = v25;
      do
      {
        if (*v68)
        {
          heap_Free(*(a1 + 8), *v68);
        }

        ++v68;
        --v67;
      }

      while (v67);
    }

    v24 = *(a1 + 8);
    v64 = v25;
LABEL_71:
    heap_Free(v24, v64);
  }

  return v22;
}

uint64_t char_hash(uint64_t result, int a2)
{
  v2 = a2 + result;
  if (a2 == 131)
  {
    v2 = 3;
  }

  if (result == 130)
  {
    v2 = a2 | 0x100;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return result;
  }
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

uint64_t get_number_of_symbol(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 16);
  v5 = v4 - 1;
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (**a1 + *(a1 + 8));
  }

  v7 = cstdlib_strcmp(__s1, v6);
  if (!v7)
  {
    return 0;
  }

  if (v7 < 0)
  {
    return -1;
  }

  if (v4 >= 1 && *(a1 + 16) >= v4)
  {
    v8 = (**a1 + 32 * v5 + *(a1 + 8));
  }

  else
  {
    v8 = 0;
  }

  v10 = cstdlib_strcmp(__s1, v8);
  if (!v10)
  {
    return v4 - 1;
  }

  v9 = -1;
  if (v10 <= 0 && v5 != 1)
  {
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v9 = v11 + v5 / 2;
      if (v9 < 0 || *(a1 + 16) <= v9)
      {
        v13 = 0;
      }

      else
      {
        v13 = (**a1 + 32 * v9 + *(a1 + 8));
      }

      v14 = cstdlib_strcmp(__s1, v13);
      if (!v14)
      {
        break;
      }

      if (v14 < 0)
      {
        v12 = v11 + v5 / 2;
      }

      else
      {
        v11 += v5 / 2;
      }

      v5 = v12 - v11;
      if (v12 - v11 == 1)
      {
        return -1;
      }
    }
  }

  return v9;
}

uint64_t find_taglist(uint64_t a1, char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  result = 0;
  if (a1 && *__s2)
  {
    while (cstdlib_strcmp(*a1, __s2))
    {
      a1 = *(a1 + 8);
      if (!a1)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t log_output_cost(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = ssftstring_AppendCStr(a1, "[");
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "f^=");
    LH_itoa(*(a2 + 56), __s2, 0xAu);
    cstdlib_strcat(__dst, __s2);
    cstdlib_strcat(__dst, ",g=");
    LH_itoa(*(a2 + 64), __s2, 0xAu);
    cstdlib_strcat(__dst, __s2);
    cstdlib_strcat(__dst, "");
    result = ssftstring_AppendCStr(a1, __dst);
    if ((result & 0x80000000) == 0)
    {
      return ssftstring_AppendCStr(a1, "]");
    }
  }

  return result;
}

uint64_t log_output_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t *a12)
{
  v51 = *MEMORY[0x277D85DE8];
  v19 = ssftstring_Clear(a3);
  if ((v19 & 0x80000000) == 0 && get_name_of_symbol(SF_symbol_file, a12, *a4, __s2))
  {
    v20 = *(a4 + 32);
    if (v20)
    {
      if (v20 == 1)
      {
        if (!a5 || __s2[0] != 95)
        {
          cstdlib_strcpy(__dst, "<");
          cstdlib_strcat(__dst, __s2);
          if (a5 != 1)
          {
            cstdlib_strcat(__dst, ".");
            LH_itoa(*(a4 + 8), v48, 0xAu);
            cstdlib_strcat(__dst, v48);
          }

          cstdlib_strcat(__dst, ">");
          appended = ssftstring_AppendCStr(a3, __dst);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          if (a11 == 1)
          {
            cstdlib_strcpy(__dst, "(");
            LH_itoa(*(a4 + 80), v48, 0xAu);
            cstdlib_strcat(__dst, v48);
            cstdlib_strcat(__dst, ")");
            appended = ssftstring_AppendCStr(a3, __dst);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a6 == 1)
          {
            appended = log_output_attribute(a3, *(a4 + 24));
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a7 == 1)
          {
            appended = log_output_cost(a3, a4);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }
        }

        v32 = *(a1 + 32);
        v33 = ssftstring_CStr(a3);
        log_OutText(v32, a2, 5, 0, "[A*] %s", v34, v35, v36, v33);
        appended = ssftstring_Clear(a3);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
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
          return ssftstring_Clear(a3);
        }

        if (!a5 || __s2[0] != 95)
        {
          cstdlib_strcpy(__dst, "<");
          cstdlib_strcat(__dst, __s2);
          if (a5 != 1)
          {
            cstdlib_strcat(__dst, ".");
            LH_itoa(*(a4 + 8), v48, 0xAu);
            cstdlib_strcat(__dst, v48);
          }

          cstdlib_strcat(__dst, ">");
          appended = ssftstring_AppendCStr(a3, __dst);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          if (a11 == 1)
          {
            cstdlib_strcpy(__dst, "(");
            LH_itoa(*(a4 + 80), v48, 0xAu);
            cstdlib_strcat(__dst, v48);
            cstdlib_strcat(__dst, ")");
            appended = ssftstring_AppendCStr(a3, __dst);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a6 == 1)
          {
            appended = log_output_attribute(a3, *(a4 + 24));
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a7 == 1)
          {
            appended = log_output_cost(a3, a4);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }
        }

        v21 = *(a1 + 32);
        v22 = ssftstring_CStr(a3);
        log_OutText(v21, a2, 5, 0, "[A*] %s", v23, v24, v25, v22);
        appended = ssftstring_Clear(a3);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }

        appended = log_output_tree(a1, a2, a3, *(a4 + 40), a5);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
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
      cstdlib_strcpy(__dst, "<");
      cstdlib_strcat(__dst, __s2);
      if (a5 != 1)
      {
        cstdlib_strcat(__dst, ".");
        LH_itoa(*(a4 + 8), v48, 0xAu);
        cstdlib_strcat(__dst, v48);
      }

      cstdlib_strcat(__dst, ">");
      appended = ssftstring_AppendCStr(a3, __dst);
      if ((appended & 0x80000000) == 0)
      {
        if (a11 != 1 || (cstdlib_strcpy(__dst, "("), LH_itoa(*(a4 + 80), v48, 0xAu), cstdlib_strcat(__dst, v48), cstdlib_strcat(__dst, ")"), appended = ssftstring_AppendCStr(a3, __dst), (appended & 0x80000000) == 0))
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
                        return appended;
                      }
                    }

                    appended = ssftstring_AppendCStr(a3, *v42);
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    appended = ssftstring_AppendCStr(a3, ":");
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    appended = log_mbs_fput_sjis(a3, *(v42 + 8));
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    appended = ssftstring_AppendCStr(a3, "");
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
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

                    cstdlib_strcpy(__dst, "<");
                    cstdlib_strcat(__dst, __s2);
                    if (a5 != 1)
                    {
                      cstdlib_strcat(__dst, ".");
                      LH_itoa(*(a4 + 8), v48, 0xAu);
                      cstdlib_strcat(__dst, v48);
                    }

                    cstdlib_strcat(__dst, ">");
                    appended = ssftstring_AppendCStr(a3, __dst);
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    if (a11 == 1)
                    {
                      cstdlib_strcpy(__dst, "(");
                      LH_itoa(*(a4 + 80), v48, 0xAu);
                      cstdlib_strcat(__dst, v48);
                      cstdlib_strcat(__dst, ")");
                      appended = ssftstring_AppendCStr(a3, __dst);
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
                      }
                    }

                    if (a6 == 1)
                    {
                      appended = log_output_attribute(a3, *(a4 + 24));
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
                      }
                    }

                    if (a7 == 1)
                    {
                      appended = log_output_cost(a3, a4);
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
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
                            return appended;
                          }
                        }

                        appended = ssftstring_AppendCStr(a3, *v45);
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        appended = ssftstring_AppendCStr(a3, ":");
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        appended = log_mbs_fput_sjis(a3, *(v45 + 8));
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        appended = ssftstring_AppendCStr(a3, "");
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        v45 = *(v45 + 16);
                        v46 = 1;
                      }

                      while (v45);
                    }

                    v19 = ssftstring_AppendCStr(a3, ")");
                    if ((v19 & 0x80000000) != 0)
                    {
                      return v19;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return appended;
  }

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

uint64_t as_list_delete_min(void *a1, void *a2, void *a3)
{
  while (a2)
  {
    v4 = a2;
    v5 = a1;
    a2 = a2[1];
    a1 = v4;
    if (!a2)
    {
      v6 = *v4;
      v5[1] = v4[2];
      heap_Free(a3, v4);
      return v6;
    }
  }

  return 0;
}

void *as_list_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = heap_Alloc(a4, 24);
  if (result)
  {
    *result = a1;
    result[1] = a2;
    result[2] = a3;
  }

  return result;
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

uint64_t as_list_get_min(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = a2;
    if (!a2)
    {
      break;
    }

    v4 = a1;
    a2 = *(a2 + 8);
    a1 = result;
    if (!a2)
    {
      *(v4 + 8) = *(result + 16);
      return result;
    }
  }

  return result;
}

void *as_list_delete_one(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 == a2)
  {
    v4 = a1[1];
    v5 = a1[2];
    if (v5)
    {
      if (v4)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          v7 = a1[2];
          do
          {
            v4 = v6;
            v8 = v7;
            v6 = *(v6 + 8);
            v7 = v4;
          }

          while (v6);
          *(v8 + 8) = *(v4 + 16);
          *(v4 + 8) = a1[1];
          *(v4 + 16) = v5;
          goto LABEL_12;
        }

        *(v5 + 8) = v4;
      }

      heap_Free(a3, a1);
      return v5;
    }

LABEL_12:
    heap_Free(a3, a1);
    return v4;
  }

  if (*(a2 + 56) <= *(*a1 + 56))
  {
    a1[1] = as_list_delete_one(a1[1]);
  }

  else
  {
    a1[2] = as_list_delete_one(a1[2]);
  }

  return a1;
}

uint64_t get_word_cost(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v3 = a1;
  while (cstdlib_strcmp(*v3, "PROB"))
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
      return cstdlib_atoi(v7);
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
      if (!cstdlib_strcmp(pointer_of_symbol, *v2))
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
  v74 = 0;
  v73 = 0;
  v72 = 0;
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
    v58 = parser_result_create(2, 0, a10);
    heap_Free(a10, v20);
    return v58;
  }

  v22 = v21;
  v64 = v15;
  v66 = a6;
  v67 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v65 = a3 - 1;
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
    v69 = a3;
    v68 = v20;
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
    if ((*(a1 + 1300 + 4 * v25) & 0x80000000) != 0 || (v35 = times_limit_over(), v26 = v31 + 1, v35 != 1))
    {
      if (*(v34 + 80) != v25)
      {
        v24 = v33;
        a4 = v32;
LABEL_25:
        v20 = v68;
        goto LABEL_26;
      }

      v24 = v33;
      v20 = v68;
      if (*(v34 + 72))
      {
        a4 = v32;
      }

      else
      {
        a4 = v32;
        if (*(v34 + 76) == v65 && *v34 == *(a7 + 8 * v25))
        {
          v52 = (v24 + 1);
          if (v25 == *(a1 + 952) - 1)
          {
            v53 = v26;
            v54 = tree_duplicate(v34, a1, a9, a10);
            v67 = tree_append(v67, v54);
            v74 = v67;
            v24 = v52;
            if (v52 >= *(v64 + 4 * v25))
            {
              goto LABEL_74;
            }

            v26 = v53;
            goto LABEL_25;
          }

          *(v68 + 8 * v24) = v34;
          if (v52 >= *(v64 + 4 * v25))
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
              v55 = v68;
              do
              {
                set_step_partial_tree(v22, *v55, *(a5 + 8 * v25), (v25 + 1), a10);
                v56 = *v55++;
                set_step_partial_tree(v22, v56, a4, (v25 + 1), a10);
                --v52;
              }

              while (v52);
              v23 = 0;
              v24 = 0;
              v26 = 0;
              ++v25;
              v20 = v68;
            }
          }

          else
          {
            v24 = (v24 + 1);
          }
        }
      }

LABEL_26:
      a3 = v69;
      if (*(v34 + 80) == v25 || v25 >= 1 && *v34 == *(a5 - 8 + 8 * v25))
      {
        v42 = *(a1 + 292 + 4 * v25);
        v43 = *(v34 + 72);
        if (v42 < 0 || (v44 = *(v34 + 76) + v43, v44 >= v23 - v42) || v44 < *(a1 + 272 + 4 * v25))
        {
          v62 = v26;
          v63 = v24;
          if (v43 >= 1)
          {
            v45 = 0;
            while (1)
            {
              leading_tree = cyk_hash_get_leading_tree(a2, v43 + ~v45, v45);
              if (leading_tree)
              {
                break;
              }

LABEL_40:
              ++v45;
              v43 = *(v34 + 72);
              if (v45 >= v43)
              {
                goto LABEL_41;
              }
            }

            v47 = leading_tree;
            while (cyk_as_make_trees_step(a2, v22, v47, v34, a7, a1, v25, &v73, a10))
            {
              if (v73 > v23)
              {
                v23 = v73;
              }

              v47 = *(v47 + 88);
              if (!v47)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_72;
          }

LABEL_41:
          v48 = v43 + *(v34 + 76) + 1;
          if (v48 < v69)
          {
            v49 = 0;
            while (1)
            {
              v50 = cyk_hash_get_leading_tree(a2, v48, v49);
              if (v50)
              {
                break;
              }

LABEL_49:
              ++v49;
              v48 = *(v34 + 72) + *(v34 + 76) + 1;
              if (v49 >= v69 - v48)
              {
                goto LABEL_50;
              }
            }

            v51 = v50;
            while (cyk_as_make_trees_step(a2, v22, v34, v51, a7, a1, v25, &v73, a10))
            {
              if (v73 > v23)
              {
                v23 = v73;
              }

              v51 = v51[11];
              if (!v51)
              {
                goto LABEL_49;
              }
            }

LABEL_72:
            v59 = parser_result_create(2, v67, a10);
            heap_Free(a10, v68);
            return v59;
          }

LABEL_50:
          if (!cyk_as_make_trees_step(a2, v22, 0, v34, a7, a1, v25, &v73, a10))
          {
            goto LABEL_72;
          }

          if (v73 > v23)
          {
            v23 = v73;
          }

          v20 = v68;
          a3 = v69;
          v24 = v63;
          v26 = v62;
        }
      }
    }

    else
    {
      if (v25 == *(a1 + 952) - 1)
      {
        break;
      }

      v20 = v68;
      if (!v33)
      {
        a4 = v32;
        if ((max_len_parse(0, v25, a2, v69, a1, v22, v32, a5, v66, a7, a9, a10, &v72) & 0x80000000) == 0)
        {
LABEL_60:
          v23 = 0;
          v24 = 0;
          v26 = 0;
          ++v25;
          a3 = v69;
          continue;
        }

        as_list_free_all(v22, a10);
        heap_Free(a10, v68);
        return 0;
      }

      v36 = v33;
      v37 = v33 <= 0;
      a4 = v32;
      if (v37)
      {
        goto LABEL_60;
      }

      v38 = v68;
      v39 = v32;
      v40 = v36;
      do
      {
        set_step_partial_tree(v22, *v38, *(a5 + 8 * v25), (v25 + 1), a10);
        v41 = *v38++;
        set_step_partial_tree(v22, v41, v39, (v25 + 1), a10);
        --v40;
      }

      while (v40);
      v23 = 0;
      v24 = 0;
      v26 = 0;
      ++v25;
      a4 = v39;
      a3 = v69;
      v20 = v68;
    }
  }

  LODWORD(v24) = v33;
  a4 = v32;
LABEL_74:
  v20 = v68;
  a3 = v69;
LABEL_75:
  if (v24)
  {
    as_list_free_all(v22, a10);
    heap_Free(a10, v20);
    return parser_result_create(1, v67, a10);
  }

  else
  {
    v60 = max_len_parse(1, v25, a2, a3, a1, v22, a4, a5, v66, a7, a9, a10, &v74);
    as_list_free_all(v22, a10);
    heap_Free(a10, v20);
    if (v60 < 0)
    {
      return 0;
    }

    if (v74)
    {
      v61 = 1;
    }

    else
    {
      v61 = 2;
    }

    v59 = parser_result_create(v61, v74, a10);
    if (!v59)
    {
      jpe_FreeTree(v74, a10);
    }
  }

  return v59;
}

uint64_t cyk_one_create(__int16 a1, __int16 a2, uint64_t a3)
{
  result = heap_Alloc(a3, 24);
  if (result)
  {
    *result = 0;
    *(result + 8) = a1;
    *(result + 10) = a2;
    *(result + 16) = 0;
  }

  return result;
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

uint64_t cyk_hash_get_address(int a1, int a2)
{
  v2 = 20 * (a1 % 200);
  if ((a2 / 20))
  {
    return (v2 + 20 * (a2 / 20) - a2 + 19);
  }

  else
  {
    return (v2 + a2 % 20);
  }
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
    v6 = cstdlib_strcmp(*v5, __s2);
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
        v28 = a5;
        v15 = 0;
        v16 = a6;
        v26 = a6;
        while (v15 >= a6)
        {
LABEL_12:
          v15 = (v15 + 1);
          --v16;
          a6 = v26;
          if (v15 == v26)
          {
            return v14;
          }
        }

        v17 = 0;
        v27 = v16;
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(v28, v15, v17);
          if (leading_tree)
          {
            break;
          }

LABEL_11:
          ++v17;
          v16 = v27;
          if (v17 == v27)
          {
            goto LABEL_12;
          }
        }

        v22 = leading_tree;
        while (1)
        {
          v23 = v22;
          v22 = *(v22 + 88);
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
  cstdlib_memset(v18, 0, 0x48uLL);
  v20 = jparser_ClassOpen(a1, a2, v19 + 8);
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

uint64_t JpRemove(void *a1, uint64_t *a2)
{
  if (a2 && *a2)
  {
    jparser_ObjClose((*a2 + 24));
    jparser_ClassClose(*(*a2 + 8), *(*a2 + 16));
    v4 = *a2;
    v5 = *(*a2 + 48);
    if (v5)
    {
      ssftstring_ObjClose(v5);
      *(*a2 + 48) = 0;
      v4 = *a2;
    }

    heap_Free(a1, v4);
    *a2 = 0;
  }

  return 0;
}

uint64_t JpParse(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, _WORD *a10, uint64_t *a11, uint64_t a12, int a13, const char *a14, uint64_t a15)
{
  v21 = 2350915594;
  v89[0] = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  LogLevel = log_GetLogLevel(*(*(a1 + 32) + 32));
  v23 = LogLevel > 4;
  v80 = 0;
  v79 = 0;
  *(a12 + 8) = 0;
  *(a12 + 12) = 0x100000001;
  if (!*a1)
  {
    v21 = 2350915601;
    goto LABEL_56;
  }

  v24 = LogLevel;
  v25 = bed_GetpElem(a5, 0, &v80);
  if ((v25 & 0x80000000) != 0 || (v25 = bed_GetcElem(a5, &v79), (v25 & 0x80000000) != 0) || (v25 = bed_GetpElem(a5, 0xFFFFu, &v84), (v25 & 0x80000000) != 0))
  {
LABEL_55:
    v21 = v25;
LABEL_56:
    if (v88)
    {
      v64 = jparser_FreeTree(*(a1 + 24), &v88);
      if (v64 >= 0 || v21 <= -1)
      {
        return v21;
      }

      else
      {
        return v64;
      }
    }

    return v21;
  }

  v76 = a8;
  if (a13 != 1)
  {
    goto LABEL_12;
  }

  if (v79)
  {
    v26 = (v80 + 20);
    v27 = 1;
    v28 = v79;
    do
    {
      v29 = *v26;
      v26 += 16;
      if (v29 == 21)
      {
        ++v27;
      }

      --v28;
    }

    while (v28);
    if (!v27)
    {
LABEL_12:
      v21 = jparser_Parse(*(a1 + 24), a2, a3, &v88, v23, *(a1 + 48), v80, v79, v84, a8, a13);
      v89[0] = v21;
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v27 = 1;
  }

  v33 = heap_Calloc(*(*(a1 + 32) + 8), 1, v27 << 6);
  if (v33)
  {
    v34 = v33;
    v72 = a4;
    v35 = v79;
    if (v79)
    {
      v73 = v24;
      v74 = v23;
      v71 = a6;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      do
      {
        if (!v36 || *(v80 + v36 + 20) == 21)
        {
          cstdlib_memcpy((v34 + (v38++ << 6)), (v80 + v36), 0x40uLL);
          v35 = v79;
        }

        ++v37;
        v36 += 64;
      }

      while (v37 < v35);
      if (v38)
      {
        v70 = a5;
        v39 = v38;
        v40 = 32;
        while (1)
        {
          if (v40 != 32)
          {
            v41 = *(v80 + 32);
            v42 = (*(v34 + v40) - v41);
            if (*(v34 + v40) != v41)
            {
              v43 = a3;
              v44 = heap_Calloc(*(*(a1 + 32) + 8), (v42 + 1), 1);
              if (!v44)
              {
                heap_Free(*(*(a1 + 32) + 8), v34);
                return v21;
              }

              v45 = v44;
              cstdlib_strncpy(v44, a14, v42);
              v45[v42] = 0;
              *(v34 + v40) = 2 * Utf8_LengthInUtf8chars(v45, v42);
              heap_Free(*(*(a1 + 32) + 8), v45);
              a3 = v43;
            }
          }

          v40 += 64;
          if (!--v39)
          {
            a5 = v70;
            goto LABEL_33;
          }
        }
      }

      v38 = 0;
LABEL_33:
      a6 = v71;
      v24 = v73;
      v23 = v74;
    }

    else
    {
      v38 = 0;
    }

    v21 = jparser_Parse(*(a1 + 24), a2, a3, &v88, v23, *(a1 + 48), v34, v38, v84, v76, 1);
    v89[0] = v21;
    heap_Free(*(*(a1 + 32) + 8), v34);
    a4 = v72;
    if ((v21 & 0x80000000) == 0)
    {
LABEL_35:
      v75 = v23;
      if (a3 && 3 * a3 != 2 * *(v84 + 36))
      {
        *(a12 + 16) = 0;
      }

      log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v30, v31, v32, a3);
      UTOITrace(v23, *(a1 + 32), a4, a5, "START of normalization");
      v83 = 0;
      jparser_extractResult(*(a1 + 32), *(a1 + 40), v88, v89, a6, a7, v76, a9, a10, &v85, &v87 + 1, &v87, &v86 + 1, *(a1 + 48), a11, &v86, a12, &v83, a14, a15);
      v21 = v89[0];
      if ((v89[0] & 0x80000000) != 0)
      {
        goto LABEL_56;
      }

      v46 = a6;
      if (!a3)
      {
        goto LABEL_74;
      }

      v25 = bed_GetcElem(a6, &v81);
      if ((v25 & 0x80000000) == 0)
      {
        v50 = *(a1 + 32);
        if (!v81)
        {
          log_OutText(*(v50 + 32), *(a1 + 40), 5, 0, "[UTOI] deleting region, no replacement text found", v47, v48, v49, v69);
          goto LABEL_74;
        }

        UTOISubTrace(v23, v50, a6, "replacement string");
        if (*(a12 + 16) != 1)
        {
LABEL_74:
          v21 = utoin_IncrReplaceCurrentRegion(a4, a5, v46, a3 >> 1, a12);
          if ((v21 & 0x80000000) == 0)
          {
            UTOITrace(v23, *(a1 + 32), a4, a5, "END of normalization");
          }

          goto LABEL_56;
        }

        v25 = bed_GetpElem(a6, 0, &v82);
        if ((v25 & 0x80000000) == 0)
        {
          if (!v81)
          {
            v63 = 1;
            v58 = v24;
            goto LABEL_68;
          }

          v54 = 0;
          v55 = 0;
          v56 = 1;
          v57 = v82;
          v58 = v24;
          while (1)
          {
            if (*(v57 + v54) == 16)
            {
              v59 = *(a12 + 8);
              if (v55 >= v59)
              {
LABEL_66:
                log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] cannot find non-deleted word to align new word number %d with", v51, v52, v53, v56);
                v63 = 0;
LABEL_68:
                if (v58 >= 5 && *(a12 + 8))
                {
                  v67 = 0;
                  v68 = 0;
                  do
                  {
                    log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v51, v52, v53, v68++);
                    v67 += 12;
                  }

                  while (v68 < *(a12 + 8));
                }

                v23 = v75;
                if (v63)
                {
                  *(a12 + 12) = 0;
                }

                goto LABEL_74;
              }

              v60 = v55;
              v61 = (*a12 + 12 * v55 + 4);
              while (1)
              {
                v62 = *v61;
                v61 += 3;
                if (v62 != 1)
                {
                  break;
                }

                if (v59 == ++v60)
                {
                  goto LABEL_66;
                }
              }

              *(*a12 + 12 * v60 + 8) = v54;
              ++v56;
              v55 = v60 + 1;
            }

            if (++v54 >= v81)
            {
              v63 = 1;
              goto LABEL_68;
            }
          }
        }
      }

      goto LABEL_55;
    }
  }

  return v21;
}

uint64_t jparser_extractResult(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11, _WORD *a12, _WORD *a13, uint64_t a14, uint64_t *a15, unsigned __int16 *a16, uint64_t a17, _WORD *a18, uint64_t a19, uint64_t a20)
{
  v113 = a7;
  if (*a4 < 0)
  {
    return 0;
  }

  v27 = ssftstring_Clear(a14);
  *a4 = v27;
  if (v27 < 0)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v29 = a17;
  while (1)
  {
    v30 = a3[4];
    if (v30)
    {
      v31 = jparser_extractResult(a1, a2, v30, a4, a5, a6, v113, a8, a9, a10, a11, a12, a13, a14, a15, a16, v29, a18, a19, a20);
      v29 = a17;
      if (v31 != 1)
      {
        return 0;
      }

      goto LABEL_7;
    }

    v32 = a3[5];
    if (v32)
    {
      break;
    }

LABEL_7:
    a3 = a3[2];
    if (!a3)
    {
      return 1;
    }
  }

  v110 = a5;
  v111 = a1;
  v108 = a20;
  v109 = a2;
  v106 = a6;
  v107 = a8;
  v33 = 0;
  LOWORD(a8) = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  do
  {
    if (!cstdlib_strcmp(*v32, "WORD"))
    {
      v34 = cstdlib_strlen(*(v32 + 8));
      v38 = *(v32 + 8);
      v39 = *v38;
      if (*v38)
      {
        a8 = 0;
        do
        {
          v40 = v38 + 2;
          if (v39 > 0xFC)
          {
            v41 = v38 + 1;
          }

          else
          {
            v41 = v38 + 2;
          }

          if (v39 > 0xFC)
          {
            v42 = a8;
          }

          else
          {
            v42 = a8 + 1;
          }

          if (v39 == 160)
          {
            v43 = a8;
          }

          else
          {
            v43 = a8 + 1;
          }

          if (v39 <= 0xDF)
          {
            v41 = v38 + 1;
            v42 = v43;
          }

          if (v39 == 128)
          {
            v40 = v38 + 1;
            v44 = a8;
          }

          else
          {
            v44 = a8 + 1;
          }

          if (v39 <= 0x9F)
          {
            v45 = v44;
          }

          else
          {
            v40 = v41;
            v45 = v42;
          }

          if ((v39 & 0x80) != 0)
          {
            v38 = v40;
          }

          else
          {
            ++v38;
          }

          if ((v39 & 0x80) != 0)
          {
            a8 = v45;
          }

          else
          {
            ++a8;
          }

          v39 = *v38;
        }

        while (*v38);
      }

      else
      {
        LOWORD(a8) = 0;
      }

      appended = ssftstring_AppendCStr(a14, "Word ");
      *a4 = appended;
      if (appended < 0)
      {
        return 0;
      }

      v47 = ssftstring_AppendCStr(a14, *(v32 + 8));
      *a4 = v47;
      if (v47 < 0)
      {
        return 0;
      }

      v48 = ssftstring_AppendCStr(a14, "");
      *a4 = v48;
      v37 = v32;
      if (v48 < 0)
      {
        return 0;
      }
    }

    if (!cstdlib_strcmp(*v32, "POS"))
    {
      cstdlib_strlen(*(v32 + 8));
      v49 = ssftstring_AppendCStr(a14, "POS ");
      *a4 = v49;
      if (v49 < 0)
      {
        return 0;
      }

      v50 = ssftstring_AppendCStr(a14, *(v32 + 8));
      *a4 = v50;
      if (v50 < 0)
      {
        return 0;
      }

      v51 = ssftstring_AppendCStr(a14, "");
      *a4 = v51;
      v35 = v32;
      if (v51 < 0)
      {
        return 0;
      }
    }

    if (!cstdlib_strcmp(*v32, "PRON"))
    {
      v33 = cstdlib_strlen(*(v32 + 8));
      v52 = ssftstring_AppendCStr(a14, "Pron ");
      *a4 = v52;
      if (v52 < 0)
      {
        return 0;
      }

      v53 = ssftstring_AppendCStr(a14, *(v32 + 8));
      *a4 = v53;
      if (v53 < 0)
      {
        return 0;
      }

      v54 = ssftstring_AppendCStr(a14, "");
      *a4 = v54;
      v36 = v32;
      if (v54 < 0)
      {
        return 0;
      }
    }

    v32 = *(v32 + 16);
  }

  while (v32);
  if (!v37 || !v36 || !v35)
  {
    v101 = -1944051456;
    goto LABEL_87;
  }

  v55 = *(v111 + 32);
  v56 = ssftstring_CStr(a14);
  log_OutText(v55, v109, 5, 0, "[UTOI RES] %s", v57, v58, v59, v56);
  v60 = ssftstring_Clear(a14);
  *a4 = v60;
  if (v60 < 0)
  {
    return 0;
  }

  v61 = cstdlib_strlen(szWORD_BEG_6);
  v62 = bed_Insert(v110, szWORD_BEG_6, v61);
  *a4 = v62;
  if (v62 < 0)
  {
    return 0;
  }

  *a9 += cstdlib_strlen(szWORD_BEG_6);
  v63 = *a15;
  v64 = *a16 + 1;
  *a16 = v64;
  v65 = *(v111 + 8);
  v66 = 2 * v64 + 2;
  if (!v63)
  {
    v67 = heap_Calloc(v65, 1, v66);
    *a15 = v67;
    if (!v67)
    {
      goto LABEL_84;
    }

LABEL_61:
    *v67 = *a16;
    v68 = SearchTERMINALTable(*(v35 + 8));
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = 42;
    }

    *(*a15 + 2 * *a16) = v69;
    *a4 = bed_Insert(v110, *(v36 + 8), v33);
    *a9 += v33;
    v70 = cstdlib_strlen(szWORD_END_6);
    v71 = bed_Insert(v110, szWORD_END_6, v70);
    *a4 = v71;
    if (v71 < 0)
    {
      return 0;
    }

    *a9 += cstdlib_strlen(szWORD_END_6);
    if (!v34)
    {
      log_OutText(*(v111 + 32), v109, 5, 0, "[UTOI] jparser word length is 0, cannot get hex args", v72, v73, v74, v104);
      v101 = -1944051712;
      goto LABEL_87;
    }

    v75 = heap_Calloc(*(v111 + 8), a8 + 1, 2);
    if (!v75)
    {
      goto LABEL_84;
    }

    v76 = v75;
    LH_wcsncpy(v75, (v108 + 2 * *a13), a8);
    *(v76 + 2 * a8) = 0;
    v77 = utf8_16BitNbrOfUtf8Chars(v76);
    if (v77)
    {
      v81 = (v77 - 1);
      v82 = heap_Calloc(*(v111 + 8), v81 + 1, 1);
      if (v82)
      {
        v83 = v82;
        cstdlib_strncpy(v82, (a19 + *a12), v81);
        *(v83 + v81) = 0;
        log_OutText(*(v111 + 32), v109, 5, 0, "[UTOI] get hex args from UTF16Word(%s,pos=%d) UTF8Word(%s,pos=%d)", v84, v85, v86, v76);
        v87 = v113;
        v88 = *(v113 + 16);
        v89 = v88 + 2 * v81 + 1;
        if (*(v113 + 18) >= v89)
        {
          goto LABEL_72;
        }

        v90 = datac_RequestBlock(v106, v107, (v88 + 2 * v81 + 1), &v113);
        *a4 = v90;
        if ((v90 & 0x80000000) == 0)
        {
          v87 = v113;
          v88 = *(v113 + 16);
LABEL_72:
          v105 = v76;
          v91 = (*(v87 + 8) + *(v87 + 2) * v88);
          *(v87 + 16) = v89;
          if (v81)
          {
            v92 = v81;
            v93 = v83;
            do
            {
              v94 = *v93++;
              LH_itoa(v94, v112, 0x10u);
              v112[2] = 0;
              *v91 = v112[0];
              v95 = v91 + 2;
              v91[1] = v112[1];
              v91 += 2;
              --v92;
            }

            while (v92);
          }

          else
          {
            v95 = v91;
          }

          *v95 = 0;
          *a11 += v34;
          *a12 += v81;
          *a13 += a8;
          a1 = v111;
          heap_Free(*(v111 + 8), v105);
          heap_Free(*(v111 + 8), v83);
          v29 = a17;
          a2 = v109;
          a5 = v110;
          a8 = v107;
          a6 = v106;
          a20 = v108;
          if (*(a17 + 16) == 1)
          {
            v96 = *(a17 + 8);
            v97 = *a17;
            if (v96 >= *(a17 + 10))
            {
              v98 = heap_Realloc(*(v111 + 8), v97, 12 * *(a17 + 10) + 121);
              if (!v98)
              {
                goto LABEL_84;
              }

              v97 = v98;
              v29 = a17;
              *a17 = v98;
              *(a17 + 10) += 10;
              v96 = *(a17 + 8);
            }

            v99 = v97 + 12 * v96;
            *v99 = *a18;
            *(v99 + 2) = 0;
            *a18 += v81;
            ++*(v29 + 8);
          }

          *a10 = *a9;
          goto LABEL_7;
        }

        heap_Free(*(v111 + 8), v76);
        v102 = *(v111 + 8);
        v103 = v83;
LABEL_91:
        heap_Free(v102, v103);
        return 0;
      }

      *a4 = -1944051702;
      v102 = *(v111 + 8);
    }

    else
    {
      log_OutText(*(v111 + 32), v109, 5, 0, "[UTOI] converted utf8 word length is 0, cannot get hex args", v78, v79, v80, v104);
      *a4 = -1944051712;
      v102 = *(v111 + 8);
    }

    v103 = v76;
    goto LABEL_91;
  }

  v67 = heap_Realloc(v65, v63, v66);
  if (v67)
  {
    *a15 = v67;
    goto LABEL_61;
  }

LABEL_84:
  v101 = -1944051702;
LABEL_87:
  *a4 = v101;
  return 0;
}

uint64_t wparserJparser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplJparser;
  return result;
}

uint64_t wparser_impl_jparser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
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
      v12[5] = "WPARSER_IMPL";
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

uint64_t wparser_impl_jparser_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v7 = *(a1 + 16);
  log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v4, v5, v6, v13);
  v8 = JpRemove(*(v7 + 8), (a1 + 32));
  if ((v8 & 0x80000000) == 0)
  {
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v9, v10, v11, v8);
  }

  return v8;
}

uint64_t wparser_impl_jparser_ObjReopen(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v6 & 0x80000000) == 0)
  {
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : Begin", v3, v4, v5, v11);
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : End (%x)", v7, v8, v9, v6);
  }

  return v6;
}

uint64_t wparser_impl_jparser_Init(uint64_t a1, int a2, uint64_t a3, const char *a4, const char *a5, int a6, _BYTE *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  *(a1 + 48) = a3;
  if (cstdlib_strcmp(a5, "win932"))
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 40), 1802, "%s%s", v14, v15, v16, v17, a5);
    return 2350915591;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = xcode_Utf16leToWin932;
  if (*a7)
  {
    v19 = (*(**(a1 + 48) + 64))(*(*(a1 + 48) + 8), *(*(a1 + 48) + 16), a7, a1 + 64);
    if ((v19 & 0x80000000) != 0)
    {
      v18 = v19;
      v26 = *(*(a1 + 16) + 32);
      v27 = *(a1 + 40);
      v28 = 1819;
      v29 = 0;
LABEL_13:
      log_OutPublic(v26, v27, v28, v29, v20, v21, v22, v23, v31);
      return v18;
    }
  }

  *(a1 + 56) = 0;
  if (cstdlib_strcmp(a4, "null"))
  {
    v24 = (*(**(a1 + 48) + 64))(*(*(a1 + 48) + 8), *(*(a1 + 48) + 16), a4, a1 + 56);
    if ((v24 & 0x80000000) != 0)
    {
      v18 = v24;
      v26 = *(*(a1 + 16) + 32);
      v27 = *(a1 + 40);
      v31 = "xlit data : ";
      v29 = "%s%s";
      v28 = 1804;
      goto LABEL_13;
    }
  }

  v25 = *(a1 + 48);
  v18 = JpCreate(*a1, *(a1 + 8), *v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 28), (a1 + 32), *(a1 + 40));
  if ((v18 & 0x80000000) == 0)
  {
    *(a1 + 80) = a6;
  }

  return v18;
}

uint64_t wparser_impl_jparser_Normalize(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, uint64_t a13, uint64_t *a14, uint64_t a15)
{
  v42 = a5;
  v41 = 0;
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
    v29 = utf8_Utf8ToUtf16(a3, a4, 0, v27, 2 * v26, &v41, 0);
    if ((v29 & 0x80000000) != 0)
    {
      v34 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v30, v31, v32, v28);
      v33 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v41 + 1));
      if (!v33)
      {
        return v25;
      }

      v34 = v33;
      v29 = (*(a1 + 72))(*(a1 + 56), v28, v41, v33, &v42, *(a1 + 64));
      if ((v29 & 0x80000000) == 0)
      {
        v34[v42] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN932: %s", v35, v36, v37, v34);
        if (v42)
        {
          v29 = JpParse(*(a1 + 32), v34, v42, a6, a7, a8, a9, a10, a11, a12, a14, a15, *(a1 + 80), a3, v28);
        }

        else
        {
          v40 = 0;
          v29 = bed_GetcElem(a8, &v40);
          if ((v29 & 0x80000000) == 0)
          {
            if (!v40 || (v29 = bed_Remove(a8, 0, v40), (v29 & 0x80000000) == 0))
            {
              v39 = utoin_IncrReplaceCurrentRegion(a6, a7, a8, 0, 0);
              v25 = v39 & (v39 >> 31);
LABEL_11:
              heap_Free(*(*(a1 + 16) + 8), v28);
              if (v34)
              {
                heap_Free(*(*(a1 + 16) + 8), v34);
              }

              return v25;
            }
          }
        }
      }
    }

    v25 = v29;
    goto LABEL_11;
  }

  return v25;
}

uint64_t wparser_impl_jparser_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
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
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN932: %s", v31, v32, v33, v30);
        LOWORD(v35) = a9;
        v25 = DoJPJSpell(*(a1 + 16), *(a1 + 40), *(a1 + 48), v30, v37, a6, a7, a8, v35, a10, a11);
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

uint64_t wparser_impl_jparser_Latin(uint64_t a1, int a2, char *a3, unsigned int a4, char **a5)
{
  v29 = a4;
  v28 = 0;
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
    v16 = utf8_Utf8ToUtf16(a3, a4, 0, v14, 2 * a4, &v28, 0);
    if ((v16 & 0x80000000) != 0)
    {
      v21 = 0;
      v13 = v16;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v17, v18, v19, v15);
      v20 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v28 + 1));
      if (!v20)
      {
        return v13;
      }

      v21 = v20;
      v13 = (*(a1 + 72))(*(a1 + 56), v15, v28, v20, &v29, *(a1 + 64));
      if ((v13 & 0x80000000) == 0)
      {
        v21[v29] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN932: %s", v22, v23, v24, v21);
        v25 = *(a1 + 48);
        if (*(v25 + 28) == 1)
        {
          v13 = DoJPJLatin(*(a1 + 16), *(a1 + 40), v25, v21, a5);
          if (a5)
          {
            if (*a5)
            {
              v26 = *a3;
              if ((v26 & 0x80000000) == 0)
              {
                **a5 = v26;
              }
            }
          }
        }
      }
    }

    heap_Free(*(*(a1 + 16) + 8), v15);
    if (v21)
    {
      heap_Free(*(*(a1 + 16) + 8), v21);
    }
  }

  return v13;
}

uint64_t get_a_rule(uint64_t a1)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && a1 < 1)
  {
    return *(&pBG_grammar + a1);
  }

  return result;
}

uint64_t find_grammar_right(uint64_t *a1)
{
  v1 = *a1;
  v2 = (&Sparse_index + 16 * *(*a1 + 16));
  v3 = *v2;
  if (*v2 != -1)
  {
    v4 = 0;
    v5 = v2[1];
    if ((v3 & 0x8000000000000000) == 0 && v3 < 1)
    {
      v4 = *(&pBG_grammar + v3);
    }

    v6 = 3;
    while (1)
    {
      v7 = *(v1 + 8 * --v6);
      v8 = v4[v6];
      if (v7 < v8)
      {
        return -1;
      }

      if (v7 > v8)
      {
        break;
      }

      if (v6 < 2)
      {
        v9 = v3;
LABEL_21:
        *a1 = v4;
        return v9;
      }
    }

    v4 = 0;
    if ((v5 & 0x8000000000000000) == 0 && v5 < 1)
    {
      v4 = *(&pBG_grammar + v5);
    }

    v10 = 3;
    while (1)
    {
      v11 = *(v1 + 8 * --v10);
      v12 = v4[v10];
      if (v11 < v12)
      {
        break;
      }

      if (v11 > v12)
      {
        return -1;
      }

      if (v10 < 2)
      {
        v9 = v5;
        goto LABEL_21;
      }
    }

    v13 = v5 - v3;
    if (v5 - v3 == 1)
    {
      v4 = 0;
      v9 = -1;
    }

    else
    {
      do
      {
        v4 = 0;
        v9 = v3 + v13 / 2;
        if (!v9)
        {
          v4 = &BG_grammar;
        }

        v15 = 3;
        while (1)
        {
          v16 = *(v1 + 8 * --v15);
          v17 = v4[v15];
          if (v16 < v17)
          {
            break;
          }

          if (v16 > v17)
          {
            v3 = v9;
            goto LABEL_32;
          }

          if (v15 < 2)
          {
            goto LABEL_21;
          }
        }

        v5 = v9;
LABEL_32:
        v4 = 0;
        v13 = v5 - v3;
        v9 = -1;
      }

      while (v5 - v3 != 1);
    }

    goto LABEL_21;
  }

  return -1;
}

uint64_t find_next_grammar_right(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= a3)
  {
    if ((a3 & 0x8000000000000000) == 0 && a3 < 1)
    {
      v3 = *(&pBG_grammar + a3);
      if (v3)
      {
        v4 = 3;
        while (1)
        {
          --v4;
          if (*(*a1 + 8 * v4) != *(v3 + 8 * v4))
          {
            break;
          }

          if (v4 < 2)
          {
            *a1 = v3;
            return a3 - 1;
          }
        }
      }
    }

    a3 = a2 + 1;
  }

  v5 = -1;
  if ((a3 & 0x8000000000000000) == 0 && a3 < 1)
  {
    v6 = *(&pBG_grammar + a3);
    if (v6)
    {
      v7 = 3;
      while (1)
      {
        --v7;
        if (*(*a1 + 8 * v7) != *(v6 + 8 * v7))
        {
          break;
        }

        if (v7 < 2)
        {
          *a1 = v6;
          return a3 + 1;
        }
      }
    }

    return -1;
  }

  return v5;
}

uint64_t get_me_terminal(uint64_t a1)
{
  v1 = 1;
  for (i = &pBG_terminal_line; **i != a1; ++i)
  {
    if (!--v1)
    {
      return -1;
    }
  }

  return *(*i + 8);
}

uint64_t mbs_copy(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v7 = 2350915594;
  if (a4 < 1)
  {
    if (!a4 || *a1)
    {
      v13 = (a1 + 8);
LABEL_11:
      v7 = 0;
      *v13 = a4;
    }
  }

  else
  {
    v10 = 4 * a4;
    v11 = heap_Calloc(a5, 1, (4 * a4));
    *a1 = v11;
    if (v11)
    {
      v12 = 0;
      *(a1 + 8) = a4;
      v13 = (a1 + 8);
      v14 = 4 * a3;
      if (v10 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v10;
      }

      do
      {
        *(*a1 + v12++) = *(*a2 + v14++);
      }

      while (v15 != v12);
      goto LABEL_11;
    }
  }

  return v7;
}

uint64_t mbs_create(uint64_t a1, int a2, const char *a3, void *a4)
{
  v5 = a3;
  v8 = 2350915591;
  if (a3)
  {
    a2 = sjis_len(a3);
    if (a2 == -1)
    {
      return v8;
    }
  }

  if (a2 > 0)
  {
    v9 = heap_Calloc(a4, 1, (4 * a2));
    *a1 = v9;
    goto LABEL_6;
  }

  v9 = *a1;
  if (a2)
  {
LABEL_6:
    if (!v9)
    {
      return 2350915594;
    }
  }

  *(a1 + 8) = a2;
  if (v5)
  {
    v10 = cstdlib_strlen(v5);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = *v5;
        if (v12 == 1)
        {
          v14 = 4 * v11;
          *(*a1 + v14) = 1;
          v15 = (v13 - 224) >= 0x1D && (v13 - 129) >= 0x1F;
          *(*a1 + v14 + 1) = v13;
          ++v11;
          if (v15)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          *(*a1 + 4 * v11 - 4) = 2;
          *(*a1 + 4 * v11 - 2) = v13;
          v12 = 1;
        }

        ++v5;
        --v10;
      }

      while (v10);
    }
  }

  return 0;
}

uint64_t mbs_compare(uint64_t *a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 8);
    if (v4 > v5)
    {
      return 1;
    }

    if (v4 >= v5)
    {
      if (v4 >= 1)
      {
        v6 = 0;
        v7 = *a1;
        v8 = *a2 + 1;
        for (i = (v7 + 1); ; i += 4)
        {
          v10 = *(v7 + 4 * v6);
          v11 = *(*a2 + 4 * v6);
          if (v10 > v11)
          {
            break;
          }

          if (v10 < v11)
          {
            return 0xFFFFFFFFLL;
          }

          v12 = i;
          v13 = v8;
          if (v10 >= 1)
          {
            do
            {
              v15 = *v12++;
              v14 = v15;
              v16 = *v13++;
              v17 = v14 < v16;
              if (v14 > v16)
              {
                return 1;
              }

              if (v17)
              {
                return 0xFFFFFFFFLL;
              }
            }

            while (--v10);
          }

          result = 0;
          ++v6;
          v8 += 4;
          if (v6 == v4)
          {
            return result;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t *mbs_free(uint64_t *result, void *a2)
{
  if (*result)
  {
    return heap_Free(a2, *result);
  }

  return result;
}

uint64_t log_mbs_fput_sjis(uint64_t a1, int *a2)
{
  if (a2[2] < 1)
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *a2;
    if (*(*a2 + 4 * v6) < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        __s[v9] = *(v8 + v7 + v9);
        ++v9;
      }

      while (v9 < *(v8 + 4 * v6));
    }

    __s[v9] = 0;
    result = ssftstring_AppendCStr(a1, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v6;
    v7 += 4;
  }

  while (v6 < a2[2]);
  return result;
}

uint64_t sjis_len(const char *a1)
{
  v1 = a1;
  v2 = cstdlib_strlen(a1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    if (v4 == 1)
    {
      v5 = *v1;
      v6 = (v5 - 224) >= 0x1D && (v5 - 129) >= 0x1F;
      v3 = (v3 + 1);
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    ++v1;
    --v2;
  }

  while (v2);
  return v3;
}

unint64_t mbs_len_bytes(unint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  do
  {
    v4 = *v3;
    v3 += 4;
    result = (result + v4);
    --v1;
  }

  while (v1);
  return result;
}

uint64_t mbs_kanji_count(unsigned int *a1)
{
  v1 = a1[2];
  if (v1 >= 1)
  {
    result = 0;
    for (i = (*a1 + 2); ; i += 4)
    {
      if (*(i - 2) != 2)
      {
        goto LABEL_10;
      }

      v5 = *(i - 1);
      if ((v5 - 136) >= 0x18 && (v5 & 0xF0) != 0xE0)
      {
        goto LABEL_10;
      }

      v6 = *i;
      if (v5 == 136 && v6 == 234)
      {
        goto LABEL_10;
      }

      if (v5 == 147 && v6 == 241)
      {
        goto LABEL_10;
      }

      if (v5 != 142)
      {
        break;
      }

      if (v6 != 79 && v6 != 108 && v6 != 181)
      {
        goto LABEL_16;
      }

LABEL_10:
      if (!--v1)
      {
        return result;
      }
    }

    if (v5 == 140 && v6 == 220 || v5 == 152 && v6 == 90 || v5 == 148 && v6 == 170)
    {
      goto LABEL_10;
    }

LABEL_16:
    if (v5 == 139 && v6 == 227)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t mbs_add_str(uint64_t a1, uint64_t a2, int a3, int a4, char a5, uint64_t *a6)
{
  v6 = 2350915591;
  if (a3 < 0 || *(a2 + 8) < a4 + a3)
  {
    return v6;
  }

  v12 = *(a1 + 8);
  if (!v12)
  {
    v14 = (4 * a4);
    v13 = heap_Alloc(a6, v14);
    *a1 = v13;
    if (v13)
    {
      goto LABEL_7;
    }

    return 2350915594;
  }

  v13 = heap_Realloc(a6, *a1, (4 * (v12 + a4)));
  if (!v13)
  {
    return 2350915594;
  }

  *a1 = v13;
  v14 = (4 * a4);
LABEL_7:
  cstdlib_memcpy((v13 + 4 * v12), (*a2 + (4 * a3)), v14);
  if (a4 >= 1)
  {
    v15 = a4;
    v16 = 4 * v12 + 3;
    do
    {
      *(*a1 + v16) = a5;
      v16 += 4;
      --v15;
    }

    while (v15);
  }

  v6 = 0;
  *(a1 + 8) += a4;
  return v6;
}

uint64_t mbs_add_sjis_str(uint64_t a1, char *__s, char a3, uint64_t *a4)
{
  v10 = 0;
  v11 = 0;
  v8 = cstdlib_strlen(__s);
  result = mbs_create(&v10, v8, __s, a4);
  if ((result & 0x80000000) == 0)
  {
    result = mbs_add_str(a1, &v10, 0, v11, a3, a4);
    if ((result & 0x80000000) == 0)
    {
      if (v10)
      {
        heap_Free(a4, v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t mbs_check_flag(void *a1, int a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  v4 = (*a1 + 4 * a2 + 3);
  while (1)
  {
    v5 = *v4;
    v4 += 4;
    if (v5 == 1)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mbs_len_as_sjis(uint64_t a1, int a2, int a3)
{
  if (a2 > a3)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 8);
  if (v5 <= a2)
  {
    v5 = a2;
  }

  v6 = v5 - a2;
  v7 = 4 * a2;
  v8 = a3 - a2 + 1;
  do
  {
    if (!v6)
    {
      break;
    }

    result = (result + *(*a1 + v7));
    --v6;
    v7 += 4;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t mbs2sjis(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v5 = a3 + a2;
  if (*(a1 + 8) < a3 + a2)
  {
    return -1;
  }

  if (a3 >= 1)
  {
    v6 = 0;
    v7 = 4 * a2;
    v8 = v7 | 1;
    while (1)
    {
      v9 = *(*a1 + v7);
      v10 = v8;
      if (v9 >= 1)
      {
        break;
      }

LABEL_8:
      ++a2;
      v7 += 4;
      v8 += 4;
      if (a2 >= v5)
      {
        goto LABEL_11;
      }
    }

    while (1)
    {
      *(a4 + v6++) = *(*a1 + v10);
      if (a5 < v6)
      {
        return -1;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = 0;
LABEL_11:
  *(a4 + v6) = 0;
  return v6;
}

uint64_t compare_tag(uint64_t a1, int a2, char *__s)
{
  v3 = __s;
  v6 = cstdlib_strlen(__s);
  if (v6 + a2 > *(a1 + 8))
  {
    return 0;
  }

  if (v6 >= 1)
  {
    v8 = v6 & 0x7FFFFFFF;
    for (i = (*a1 + 4 * a2 + 1); *(i - 1) == 1 && *i == *v3; i += 4)
    {
      ++v3;
      if (!--v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t *attribute_copy_one(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = heap_Alloc(a2, 24);
  if (v4)
  {
    v5 = cstdlib_strlen(*a1);
    v6 = heap_Alloc(a2, (v5 + 1));
    *v4 = v6;
    if (v6)
    {
      cstdlib_strcpy(v6, *a1);
      v7 = cstdlib_strlen(*(a1 + 8));
      v8 = heap_Alloc(a2, (v7 + 1));
      v4[1] = v8;
      if (v8)
      {
        cstdlib_strcpy(v8, *(a1 + 8));
        v4[2] = *(a1 + 16);
        return v4;
      }

      heap_Free(a2, *v4);
    }

    heap_Free(a2, v4);
    return 0;
  }

  return v4;
}

uint64_t *attribute_copy_all(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      result = attribute_copy_one(v3, a2);
      if (!result)
      {
        break;
      }

      v7 = result;
      result[2] = 0;
      if ((v6 & 1) == 0)
      {
        v4[2] = result;
        result = v5;
      }

      v6 = 0;
      v3 = *(v3 + 16);
      v4 = v7;
      v5 = result;
      if (!v3)
      {
        return result;
      }
    }

    attribute_free_all(v5, a2);
    return 0;
  }

  return result;
}

uint64_t *attribute_free_all(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      heap_Free(a2, *result);
    }

    v4 = *(v3 + 8);
    if (v4)
    {
      heap_Free(a2, v4);
    }

    attribute_free_all(*(v3 + 16), a2);

    return heap_Free(a2, v3);
  }

  return result;
}

void *attribute_name_free(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

void *attribute_value_free(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

_BYTE *is_internal(uint64_t a1)
{
  result = get_pointer_of_symbol(&SF_symbol_file, a1);
  if (result)
  {
    return (*result == 95 && result[1] == 73);
  }

  return result;
}

uint64_t exist_symbol(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v10[1] = *(a2 + 48);
  if (*(a2 + 32) == 2)
  {
    v3 = 0;
    v4 = *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  v10[0] = v4;
  v5 = a2 + 12;
  while (1)
  {
    v6 = v3;
    v7 = v10[v3];
    pointer_of_symbol = get_pointer_of_symbol(&SF_symbol_file, *v7);
    if (!pointer_of_symbol || *pointer_of_symbol != 95 || pointer_of_symbol[1] != 73)
    {
      break;
    }

    if (exist_symbol(a1, v7))
    {
      return 1;
    }

LABEL_13:
    v3 = 1;
    if (v6)
    {
      return 0;
    }
  }

  if (*a1 != *v7 || *(a1 + 8) != *(v5 + 4 * v6))
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t find_attribute(uint64_t a1, uint64_t a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v13[1] = *(a2 + 48);
  if (*(a2 + 32) == 2)
  {
    v5 = 0;
    v6 = *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  v13[0] = v6;
  v7 = a2 + 12;
  while (1)
  {
    v8 = v5;
    v9 = v13[v5];
    pointer_of_symbol = get_pointer_of_symbol(&SF_symbol_file, *v9);
    if (pointer_of_symbol && *pointer_of_symbol == 95 && pointer_of_symbol[1] == 73)
    {
      result = find_attribute(a1, v9, a3);
      if (result == 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (*a1 == *v9 && *(a1 + 8) == *(v7 + 4 * v8))
    {
      v12 = v9[3];
      if (v12)
      {
        break;
      }
    }

LABEL_16:
    v5 = 1;
    if (v8)
    {
      return 0;
    }
  }

  while (cstdlib_strcmp(*v12, *(a1 + 16)))
  {
    v12 = *(v12 + 16);
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  *a3 = *(v12 + 8);
  return 1;
}

uint64_t get_attribute(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (find_attribute(a1, a2, &v5) == 1)
  {
    return v5;
  }

  if (cstdlib_strcmp(*(a1 + 16), "POS"))
  {
    return 0;
  }

  v4 = *a1;

  return get_pointer_of_symbol(&SF_symbol_file, v4);
}

BOOL compare_operand(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  attribute = *(a2 + 8);
  if (!*a2)
  {
    attribute = get_attribute(*(a2 + 8), a4);
  }

  v8 = *(a3 + 8);
  if (!*a3)
  {
    v8 = get_attribute(*(a3 + 8), a4);
  }

  if (attribute)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v10 = cstdlib_strcmp(attribute, v8);
  result = v10 == 0;
  if (a1 != 2)
  {
    v12 = v10 != 0;
    return a1 == 3 && v12;
  }

  return result;
}

uint64_t eval_cond(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;
  while (1)
  {
    v4 = *v3;
    if (*v3 != 1)
    {
      break;
    }

    if (!eval_cond(*(v3 + 8), a2))
    {
      v3 = *(v3 + 16);
      if (v3)
      {
        continue;
      }
    }

    return 1;
  }

  if ((v4 - 2) >= 2)
  {
    if (v4)
    {
      if (v4 == 4)
      {
        v5 = *(v3 + 8);

        return exist_symbol(v5, a2);
      }

      return 0;
    }

    return eval_cond(*(v3 + 8), a2) && eval_cond(*(v3 + 16), a2);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);

  return compare_operand(v4, v7, v8, a2);
}

uint64_t assign_attribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  attribute = *(a2 + 8);
  if (*a2 || (attribute = get_attribute(*(a2 + 8), a3)) != 0)
  {
    v8 = *(a3 + 24);
    if (v8)
    {
      while (1)
      {
        v9 = (v8 + 16);
        if (!*(v8 + 16))
        {
          break;
        }

        if (!cstdlib_strcmp(*v8, *(*(a1 + 8) + 16)))
        {
          goto LABEL_12;
        }

        v8 = *v9;
      }

      if (!cstdlib_strcmp(*v8, *(*(a1 + 8) + 16)))
      {
LABEL_12:
        *v8 = *(*(a1 + 8) + 16);
        *(v8 + 8) = attribute;
        return 1;
      }

      result = heap_Alloc(a4, 24);
      if (!result)
      {
        return result;
      }

      *result = *(*(a1 + 8) + 16);
      *(result + 8) = attribute;
      *(result + 16) = 0;
      *v9 = result;
    }

    else
    {
      result = heap_Alloc(a4, 24);
      if (!result)
      {
        return result;
      }

      *result = *(*(a1 + 8) + 16);
      *(result + 8) = attribute;
      *(result + 16) = 0;
      *(a3 + 24) = result;
    }
  }

  return 1;
}

uint64_t exec_actions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v5 = a1;
  while (1)
  {
    if (*v5 == 1)
    {
      v7 = *(v5 + 8);
      if (*v7 && !eval_cond(*v7, a2))
      {
        v8 = v7[2];
      }

      else
      {
        v8 = v7[1];
      }

      result = exec_actions(v8, a2, a3);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (*v5)
    {
      return 0;
    }

    result = assign_attribute(**(v5 + 8), *(*(v5 + 8) + 8), a2, a3);
    if (!result)
    {
      return result;
    }

LABEL_12:
    v5 = *(v5 + 16);
    if (!v5)
    {
      return 1;
    }
  }
}

BOOL compare_attribute(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1 || !a2)
  {
    return (v3 | v2) == 0;
  }

  while (!cstdlib_strcmp(*v3, *v2) && !cstdlib_strcmp(*(v3 + 8), *(v2 + 8)))
  {
    v3 = *(v3 + 16);
    v2 = *(v2 + 16);
    if (!v3 || !v2)
    {
      return (v3 | v2) == 0;
    }
  }

  return 0;
}

char *mystrdup2(const char *a1, uint64_t a2)
{
  v4 = cstdlib_strlen(a1);
  v5 = heap_Alloc(a2, (v4 + 1));
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, a1);
  }

  return v6;
}

const char *set_attribute(const char *result, uint64_t a2)
{
  if (result)
  {
    i = result;
    v3 = *result;
    if (*result)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      while (1)
      {
        v8 = i;
        v9 = v6;
        v10 = i + 1;
        if (!v3)
        {
          break;
        }

        while (v3 != 58)
        {
          v11 = *v10++;
          v3 = v11;
          if (!v11)
          {
            return 0;
          }
        }

        *(v10 - 1) = 0;
        for (i = v10; *i; ++i)
        {
          if (*i == 59)
          {
            *i++ = 0;
            break;
          }
        }

        result = heap_Alloc(a2, 24);
        if (result)
        {
          v6 = result;
          result = mystrdup2(v8, a2);
          *v6 = result;
          if (result)
          {
            result = mystrdup2(v10, a2);
            v6[1] = result;
            if (result)
            {
              v6[2] = 0;
              result = v6;
              if ((v7 & 1) == 0)
              {
                v9[2] = v6;
                result = v5;
              }

              v7 = 0;
              v3 = *i;
              v5 = result;
              if (*i)
              {
                continue;
              }
            }
          }
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t log_output_attribute(uint64_t a1, uint64_t a2)
{
  result = ssftstring_AppendCStr(a1, "{");
  if ((result & 0x80000000) == 0)
  {
    if (a2)
    {
      v5 = 0;
      while (1)
      {
        if (v5)
        {
          result = ssftstring_AppendCStr(a1, ",");
          if ((result & 0x80000000) != 0)
          {
            break;
          }
        }

        result = ssftstring_AppendCStr(a1, *a2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = ssftstring_AppendCStr(a1, "=");
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = ssftstring_AppendCStr(a1, *(a2 + 8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = ssftstring_AppendCStr(a1, " ");
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        a2 = *(a2 + 16);
        v5 = 1;
        if (!a2)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      return ssftstring_AppendCStr(a1, "}");
    }
  }

  return result;
}

uint64_t box_hash_get_address(int a1, int a2)
{
  v2 = 20 * (a1 % 200);
  if ((a2 / 20))
  {
    return (v2 + 20 * (a2 / 20) - a2 + 19);
  }

  else
  {
    return (v2 + a2 % 20);
  }
}

uint64_t box_hash_get_leading_word(void *a1, int a2, int a3, int a4)
{
  v4 = *(*a1 + 8 * a4);
  if (!v4)
  {
    return 0;
  }

  while (*(v4 + 10) != a3 || *(v4 + 8) != a2)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  return *v4;
}

uint64_t *box_one_free_all(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      do
      {
        v5 = *(v4 + 24);
        word_data_free_all(v4, a2);
        v4 = v5;
      }

      while (v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t *box_hash_free(void *a1, void *a2)
{
  for (i = 0; i != 4000; ++i)
  {
    result = *(*a1 + 8 * i);
    if (result)
    {
      do
      {
        v6 = result[2];
        box_one_free_all(result, a2);
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t box_hash_set_unknown(uint64_t *a1, int a2, char *__b)
{
  if (a2 >= 1)
  {
    memset_pattern16(__b, &unk_26ECDB6D0, 4 * a2);
  }

  v5 = *(a1 + 2);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = *(v7 + 8 * v6);
      if (v8)
      {
        do
        {
          if (*v8)
          {
            v9 = *(v8 + 10);
            if ((v9 & 0x8000000000000000) == 0)
            {
              bzero(&__b[4 * *(v8 + 8)], 4 * v9 + 4);
            }
          }

          v8 = *(v8 + 16);
        }

        while (v8);
        v5 = *(a1 + 2);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return 1;
}

uint64_t box_one_create(__int16 a1, __int16 a2, uint64_t a3)
{
  result = heap_Alloc(a3, 24);
  if (result)
  {
    *(result + 8) = a1;
    *(result + 10) = a2;
    *(result + 12) = 0;
    *result = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t box_one_add_word(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1;
  do
  {
    v4 = v2;
    v2 = *v3;
    v3 = (*v3 + 24);
  }

  while (v2);
  v5 = (v4 + 24);
  if (!v4)
  {
    v5 = a1;
  }

  *v5 = a2;
  return 1;
}

uint64_t box_hash_add_word(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v11 = *(*a1 + 8 * a5);
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
        goto LABEL_7;
      }
    }

    result = v11;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_7:
  result = heap_Alloc(a6, 24);
  if (result)
  {
    *(result + 8) = v8;
    *(result + 10) = v7;
    *(result + 12) = 0;
    *result = 0;
    *(result + 16) = 0;
    if (v12)
    {
      v14 = (v12 + 16);
    }

    else
    {
      v14 = (*a1 + 8 * a5);
    }

    *v14 = result;
LABEL_13:
    v15 = 0;
    v16 = result;
    do
    {
      v17 = v15;
      v15 = *v16;
      v16 = (*v16 + 24);
    }

    while (v15);
    v18 = (v17 + 24);
    if (!v17)
    {
      v18 = result;
    }

    *v18 = a2;
    return 1;
  }

  return result;
}

uint64_t add_info_to_table(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v26 = *MEMORY[0x277D85DE8];
  if (mbs2sjis(*(*(a1 + 16) + 8), 0, *(*(*(a1 + 16) + 8) + 8), __s1, 64) == -1)
  {
    return 0;
  }

  number_of_symbol = get_number_of_symbol(a4, __s1);
  if (number_of_symbol == -1)
  {
    free_information(a1, a8);
    attribute_free_all(a6, a8);
    return 1;
  }

  v17 = number_of_symbol;
  address = box_hash_get_address(a2, a3);
  if (*(a7 + 40) == 1)
  {
    leading_word = box_hash_get_leading_word(a5, a2, a3, address);
    if (leading_word)
    {
      v20 = leading_word;
      while (mbs_compare(*(a1 + 8), *(*v20 + 8)) || mbs_compare(*(*(a1 + 16) + 8), *(*(*v20 + 16) + 8)) || !compare_attribute(a6, v20[2]))
      {
        v20 = v20[3];
        if (!v20)
        {
          goto LABEL_10;
        }
      }

      *(a1 + 24) = 0;
      v23 = *v20;
      for (i = *(*v20 + 24); i; i = *(i + 24))
      {
        v23 = i;
      }

      *(v23 + 24) = a1;
      return 1;
    }
  }

LABEL_10:
  result = heap_Alloc(a8, 32);
  if (result)
  {
    v22 = result;
    *result = a1;
    *(result + 8) = v17;
    *(result + 16) = a6;
    *(result + 24) = 0;
    result = box_hash_add_word(a5, result, a2, a3, address, a8);
    if (result != 1)
    {
      heap_Free(a8, v22);
      return 0;
    }
  }

  return result;
}

uint64_t get_char_kind(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = mbs2sjis(a1, a2, 1, v3, 256);
  if (result != -1)
  {
    return get_char_kind_hash(v3[0], v3[1]);
  }

  return result;
}

uint64_t *unknown_info_create(const char *a1, const char *a2, const char *a3, const char *a4, void *a5)
{
  info = create_info(0, a1, a5);
  if (info)
  {
    v10 = create_info(1, a2, a5);
    info[2] = v10;
    if (v10 && (v11 = v10, *(v10 + 16) = 0, v12 = create_info(2, a3, a5), (*(v11 + 16) = v12) != 0) && (v13 = v12, *(v12 + 16) = 0, v14 = create_info(3, a4, a5), (*(v13 + 16) = v14) != 0))
    {
      *(v14 + 16) = 0;
    }

    else
    {
      free_information(info, a5);
      return 0;
    }
  }

  return info;
}

_BYTE *get_pron_from_grapheme(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v5 = a3 - a2;
  if (a3 < a2)
  {
    return 0;
  }

  v10 = v5 + 1;
  v11 = heap_Alloc(a5, (2 * (v5 + 1)) | 1u);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = 8 * v10;
  if (a4 == 3)
  {
    v14 = v13 | 2u;
  }

  else
  {
    v14 = v13 | 1u;
  }

  v15 = heap_Alloc(a5, v14);
  if (v15)
  {
    if (mbs2sjis(a1, a2, v10, v12, (2 * v10) | 1u) != -1)
    {
      v24 = 0;
      *v15 = 0;
      if (*v12)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = v12;
        do
        {
          get_pron_from_grapheme_hash(v21, &v15[v19], &v24 + 1, &v24, a4);
          if (HIDWORD(v24))
          {
            v20 += HIDWORD(v24);
            v19 += v24;
            v16 = v17;
            v17 = v18;
            v18 = v19;
          }

          v21 = &v12[v20];
        }

        while (*v21);
        if (a4 == 3 && v16 >= 1)
        {
          if (v19 >= v16)
          {
            do
            {
              v15[v19 + 1] = v15[v19];
            }

            while (v19-- > v16);
          }

          v15[v16] = 39;
        }
      }

      goto LABEL_19;
    }

    heap_Free(a5, v15);
    heap_Free(a5, v12);
    return 0;
  }

LABEL_19:
  heap_Free(a5, v12);
  return v15;
}

uint64_t non_lookup_tag(uint64_t a1, int a2, int a3, const char *a4, const char *a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v9 = a3 - a2;
  if (a3 < a2)
  {
    return 0;
  }

  result = heap_Alloc(a9, (2 * (v9 + 1)) | 1u);
  if (result)
  {
    v16 = result;
    if (mbs2sjis(a1, a2, v9 + 1, result, (2 * (v9 + 1)) | 1u) == -1)
    {
      heap_Free(a9, v16);
    }

    else
    {
      v17 = unknown_info_create(v16, a4, a5, "922", a9);
      heap_Free(a9, v16);
      if (v17)
      {
        if (*(a8 + 68))
        {
          v18 = a2 + 1;
        }

        else
        {
          v18 = a2;
        }

        if (add_info_to_table(v17, v18, v9, a6, a7, 0, a8, a9))
        {
          return 1;
        }

        free_information(v17, a9);
      }
    }

    return 0;
  }

  return result;
}

uint64_t look_up_unknown_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = *(a1 + 8);
  if (*(a2 + 68))
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = heap_Calloc(a5, v11, 4);
  if (v12 && box_hash_set_unknown(a4, v11, v12))
  {
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = (v11 - 1);
      do
      {
        if (v13 == v15)
        {
          v16 = *&v12[4 * v15];
        }

        else
        {
          v16 = *&v12[4 * v13];
          if (*&v12[4 * v13 + 4] == v16)
          {
            ++v13;
            continue;
          }
        }

        if (v16 == 1 && !non_lookup_tag(a1, v14 - (*(a2 + 68) != 0), v13 - (*(a2 + 68) != 0), (a2 + 136), (a2 + 200), a3, a4, a2, a5))
        {
          goto LABEL_17;
        }

        v14 = ++v13;
      }

      while (v13 != v11);
    }

    v17 = 1;
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

  heap_Free(a5, v12);
  return v17;
}

uint64_t mbs_normalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    result = 1;
    if (v2 >= 1)
    {
      while (1)
      {
        v3 = v2 - 1;
        v4 = (*v1 + (4 * (v2 - 1)));
        v5 = v4[1];
        if (*v4 == 1)
        {
          if ((v5 & 0xFE) == 0xDE)
          {
            if (v5 == 222)
            {
              v6 = Norm_in1;
            }

            else
            {
              v6 = &Norm_in2;
            }

            if (v5 == 222)
            {
              v7 = &Norm_out1;
            }

            else
            {
              v7 = Norm_out2;
            }

            if (v2 == 1)
            {
              return 1;
            }

            if (*(v4 - 4) == 1)
            {
              v8 = **v6;
              if (**v6)
              {
                v9 = v6 + 1;
                while (v8 != *(v4 - 3))
                {
                  v10 = *v9++;
                  v8 = *v10;
                  ++v7;
                  if (!*v10)
                  {
                    goto LABEL_50;
                  }
                }

LABEL_47:
                *v4 = 0;
                *(v4 - 4) = 2;
                v21 = *v7;
                *(v4 - 3) = **v7;
                *(v4 - 2) = v21[1];
                v3 = v2 - 2;
              }
            }
          }

          else if ((v5 - 166) <= 0x37)
          {
            v19 = 0;
            v20 = 177;
            while (v20 != v5)
            {
              v20 = *Norm_in3[++v19];
              if (v19 == 56)
              {
                goto LABEL_50;
              }
            }

            *v4 = 2;
            v22 = Norm_out3[v19];
            v4[1] = *v22;
            v4[2] = v22[1];
          }
        }

        else
        {
          v11 = v4[2];
          if (v5 == 129 && (v11 & 0xFE) == 0x4A)
          {
            if (v11 == 74)
            {
              v12 = Norm_in4;
            }

            else
            {
              v12 = Norm_in5;
            }

            if (v11 == 74)
            {
              v7 = &Norm_out4;
            }

            else
            {
              v7 = Norm_out5;
            }

            if (v2 == 1)
            {
              return 1;
            }

            if (*(v4 - 4) == 2)
            {
              v13 = *v12;
              v14 = **v12;
              if (**v12)
              {
                v15 = v12 + 1;
                while (v14 != *(v4 - 3) || v13[1] != *(v4 - 2))
                {
                  v16 = *v15++;
                  v13 = v16;
                  v14 = *v16;
                  ++v7;
                  if (!*v16)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_47;
              }
            }
          }

          else if (v5 == 130 && (v11 - 96) <= 0x3A)
          {
            v17 = &Norm_in6;
            for (i = Norm_out6; ; ++i)
            {
              if (**v17 == 130)
              {
                if ((*v17)[1] == v11)
                {
                  *v4 = 1;
                  v4[1] = **i;
                  break;
                }
              }

              else if (!**v17)
              {
                break;
              }

              ++v17;
            }
          }
        }

LABEL_50:
        v2 = v3;
        if (v3 <= 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *modify_comma(char *a1, unsigned int a2, void *a3)
{
  v4 = a2;
  v6 = a2;
  result = heap_Alloc(a3, a2);
  if (result)
  {
    v8 = result;
    cstdlib_memcpy(result, a1, v6);
    if (v4 >= 1)
    {
      v9 = 0;
      v10 = a1 + 1;
      v11 = -1;
      do
      {
        if (v11 >= 4uLL)
        {
          v12 = 4;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        if (!a1[v9])
        {
          if (v9)
          {
            v14 = 0;
            v15 = v12 + 1;
            v16 = v13 + 1;
            v17 = v11;
            while (a1[v17] == 1)
            {
              ++v14;
              --v17;
              if (v15 == v14)
              {
                v18 = v14 + 1;
                goto LABEL_18;
              }
            }

            v18 = v14 + 1;
            v16 = v14;
LABEL_18:
            v19 = v18;
          }

          else
          {
            v16 = 0;
            v17 = -1;
            v19 = 1;
          }

          v20 = 1;
          v21 = v10;
          while (1)
          {
            if (v4 == v20)
            {
              v22 = v4 - 1;
              goto LABEL_26;
            }

            if (*v21 != 1)
            {
              break;
            }

            ++v21;
            if (++v20 == 6)
            {
              v22 = 5;
              goto LABEL_26;
            }
          }

          v22 = v20 - 1;
LABEL_26:
          if (v16 <= 4 && (v16 > 2 || v16 && ((v17 & 0x80000000) != 0 || v9 == v19 || (v24 = &a1[v17], *v24) || *(v24 - 1) != 1)) && (v22 - 3) < 2)
          {
            v23 = 1;
          }

          else
          {
            v23 = -1;
          }

          v8[v9] = v23;
        }

        ++v9;
        ++v11;
        ++v10;
        --v4;
      }

      while (v9 != v6);
    }

    cstdlib_memcpy(a1, v8, v6);

    return heap_Free(a3, v8);
  }

  return result;
}

uint64_t mark_tag_state(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8) < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 36;
  do
  {
    v8 = v6;
    if (v7 == 36 || v7 == 33)
    {
      if ((v6 + cstdlib_strlen(START_TAG_SAPI_PRN)) <= *(a1 + 8) && compare_tag(a1, v6, START_TAG_SAPI_PRN) == 1)
      {
        LODWORD(v6) = v6 + cstdlib_strlen(START_TAG_SAPI_PRN);
        v7 = 34;
        *(a2 + v8) = 34;
        if (cstdlib_strlen(START_TAG_SAPI_PRN) >= 2)
        {
          v9 = v8 + 1;
          do
          {
            *(a2 + v9++) = 35;
          }

          while (v9 < (v8 + cstdlib_strlen(START_TAG_SAPI_PRN)));
          v4 = 1;
          goto LABEL_16;
        }

        v4 = 1;
        goto LABEL_29;
      }

      if (mbs_one_char(a1, v6) == 30)
      {
        LODWORD(v6) = v6 + cstdlib_strlen(START_TAG);
        v7 = 34;
        *(a2 + v8) = 34;
        if (cstdlib_strlen(START_TAG) >= 2)
        {
          v10 = v8 + 1;
          do
          {
            *(a2 + v10++) = 35;
          }

          while (v10 < (v8 + cstdlib_strlen(START_TAG)));
LABEL_16:
          v7 = 34;
        }

LABEL_29:
        v5 = v8;
        continue;
      }

      v7 = 33;
      goto LABEL_31;
    }

    if (v4 == 1 && (v6 + cstdlib_strlen(END_TAG_SAPI_PRN)) <= *(a1 + 8) && compare_tag(a1, v6, END_TAG_SAPI_PRN) == 1)
    {
      v11 = cstdlib_strlen(END_TAG_SAPI_PRN);
      v6 = v6 + v11;
      if (v8 < v6 - 1)
      {
        memset((a2 + v8), 35, (v11 - 2) + 1);
      }

      v7 = 36;
      *(a2 + v6 - 1) = 36;
      v4 = 0;
    }

    else
    {
      if (mbs_one_char(a1, v6) != 31)
      {
        v7 = 35;
LABEL_31:
        *(a2 + v6) = v7;
        LODWORD(v6) = v6 + 1;
        continue;
      }

      v12 = cstdlib_strlen(END_TAG);
      v6 = v6 + v12;
      if (v8 < v6 - 1)
      {
        memset((a2 + v8), 35, (v12 - 2) + 1);
      }

      v7 = 36;
      *(a2 + v6 - 1) = 36;
    }
  }

  while (v6 < *(a1 + 8));
  result = 1;
  if ((v7 & 0xFFFFFFFE) == 0x22 && v5 < v6)
  {
    memset((a2 + v5), 33, (v6 + ~v5) + 1);
    return 1;
  }

  return result;
}

uint64_t make_add_word_to_table(const char *a1, const char *a2, const char *a3, uint64_t *a4, int a5, int a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  result = unknown_info_create(a1, a2, a3, "0", a11);
  if (result)
  {
    v16 = result;
    if (*(a10 + 68))
    {
      v17 = a5 + 1;
    }

    else
    {
      v17 = a5;
    }

    if (add_info_to_table(result, v17, a6 - a5, a8, a9, a4, a10, a11))
    {
      return 1;
    }

    else
    {
      free_information(v16, a11);
      return 0;
    }
  }

  return result;
}

uint64_t add_user_word_table(uint64_t a1, const char *a2, const char *a3, const char *a4, const char *a5, void *a6, int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = sjis_len(a2);
  result = unknown_info_create(a2, a3, a4, a5, a10);
  if (result)
  {
    v19 = result;
    if (add_info_to_table(result, a7, v17 - 1, a1, a6, 0, a9, a10))
    {
      return 1;
    }

    else
    {
      free_information(v19, a10);
      return 0;
    }
  }

  return result;
}

_BYTE *tagged2pron(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = cstdlib_strlen(START_TAG);
  v9 = a3 - a2 - (cstdlib_strlen(END_TAG) + v8) + 1;
  if (v9 < 4)
  {
    return 0;
  }

  v10 = heap_Alloc(a4, (2 * v9) | 1u);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = cstdlib_strlen(START_TAG);
  if (mbs2sjis(a1, v12 + a2, v9, v11, (2 * v9) | 1u))
  {
    v13 = cstdlib_strlen(v11);
    v14 = heap_Alloc(a4, (v13 + 3));
    v15 = v14;
    if (v14)
    {
      cstdlib_strcpy((v14 + 1), v11);
      *v15 = 30;
      v16 = cstdlib_strlen(v11);
      v15[((v16 << 32) + 0x100000000) >> 32] = v15[v16];
      v17 = ((v16 << 32) - 0x100000000) >> 32;
      v15[v16] = v15[v17];
      v15[v17] = 31;
      v15[((v16 << 32) + 0x200000000) >> 32] = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  heap_Free(a4, v11);
  return v15;
}

uint64_t make_word_tagged_part(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = cstdlib_strlen(START_TAG_SAPI_PRN);
  v14 = a3 - a2 + 1;
  v15 = heap_Alloc(*(a7 + 24), (2 * v14) | 1u);
  if (!v15 || mbs2sjis(a1, a2, a3 - a2 + 1, v15, (2 * v14) | 1u) == -1)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v16 = cstdlib_strlen(v15);
  if (v16 > cstdlib_strlen(START_TAG_SAPI_PRN) && !cstdlib_strncmp(v15, START_TAG_SAPI_PRN, v13))
  {
    v21 = *(a7 + 24);
    v22 = cstdlib_strlen("Xn");
    v23 = heap_Alloc(v21, (v22 + 1));
    v18 = v23;
    if (v23)
    {
      cstdlib_strcpy(v23, "Xn");
      v24 = *(a7 + 24);
      v25 = cstdlib_strlen(v15);
      v26 = heap_Alloc(v24, (v25 + 1));
      if (v26)
      {
        v27 = v26;
        v28 = cstdlib_strlen(START_TAG_SAPI_PRN);
        cstdlib_strcpy(v27, &v15[v28]);
        v29 = cstdlib_strlen(v27);
        v27[(v29 - cstdlib_strlen(END_TAG_SAPI_PRN))] = 0;
        *v15 = 29;
        goto LABEL_6;
      }
    }

LABEL_8:
    add_word_to_table = 0;
    goto LABEL_9;
  }

  v18 = tagged2pron(a1, a2, a3, *(a7 + 24));
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_6:
  add_word_to_table = make_add_word_to_table(v15, "ROMAN", v18, 0, a2, a3, v17, a4, a5, a6, *(a7 + 24));
LABEL_9:
  heap_Free(*(a7 + 24), v15);
  heap_Free(*(a7 + 24), v18);
  return add_word_to_table;
}

uint64_t UD_regist_sapi_prn(uint64_t a1, int a2, int a3, _WORD *a4, uint64_t a5)
{
  v10 = cstdlib_strlen(START_TAG_SAPI_PRN);
  v11 = heap_Alloc(*(a5 + 24), (2 * a3) | 1u);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (mbs2sjis(a1, a2, a3, v11, (2 * a3) | 1u) == -1)
  {
    v15 = 0;
  }

  else
  {
    if (cstdlib_strlen(v12) > v10 && !cstdlib_strncmp(v12, START_TAG_SAPI_PRN, v10))
    {
      v13 = &v12[v10];
      v14 = cstdlib_strlen(v13);
      v13[(v14 - cstdlib_strlen(END_TAG_SAPI_PRN) + 1)] = 0;
      *a4 = 32;
    }

    v15 = 1;
  }

  heap_Free(*(a5 + 24), v12);
  return v15;
}

uint64_t look_up_dictionary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14)
{
  v17 = a14;
  v213 = *MEMORY[0x277D85DE8];
  v205[0] = 0;
  v205[1] = 0;
  v204 = 0;
  v203 = 0;
  v201 = 0;
  v202 = 0;
  __s1 = marker_getMarkerArgStr(1u);
  v199 = *(a8 + 184);
  v200 = *(a8 + 192);
  LOWORD(v201) = *(a8 + 208);
  HIDWORD(v201) = *(a8 + 212);
  bzero(v206, 0x3C0uLL);
  v18 = heap_Alloc(*(a8 + 24), 1024);
  v19 = heap_Alloc(*(a8 + 24), 1025);
  v20 = heap_Alloc(*(a8 + 24), 1025);
  v21 = v20;
  v22 = 0;
  v23 = 0;
  if (!v18 || !v19)
  {
    LODWORD(a1) = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_234;
  }

  v189 = a1;
  v190 = a6;
  LODWORD(a1) = 0;
  v24 = 0;
  v25 = 0;
  if (v20)
  {
    for (i = 0; i != 120; ++i)
    {
      v27 = heap_Alloc(*(a8 + 24), 80);
      v206[i] = v27;
      if (!v27)
      {
        v23 = 0;
        LODWORD(a1) = 0;
        v22 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_234;
      }
    }

    v28 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v24 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v29 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v25 = v28;
    v22 = v29;
    v23 = 0;
    if (!v28 || !v24 || !v29)
    {
      LODWORD(a1) = 0;
      goto LABEL_234;
    }

    v183 = v28;
    if (!mark_tag_state(a2, v28))
    {
      goto LABEL_76;
    }

    v30 = a3;
    v178 = (a3 + 68);
    if (!*(a3 + 68))
    {
LABEL_17:
      LODWORD(v35) = *(a2 + 8);
      if (v35 >= 1)
      {
        v36 = 0;
        do
        {
          *(v24 + v36) = 0;
          *(v22 + v36++) = 0;
          v35 = *(a2 + 8);
        }

        while (v36 < v35);
      }

      if (*(v30 + 132) != 1)
      {
        v43 = 0;
        goto LABEL_64;
      }

      v23 = heap_Alloc(*(a8 + 24), v35);
      if (v23)
      {
        v37 = a2;
        LODWORD(v38) = *(a2 + 8);
        v39 = v183;
        if (v38 >= 1)
        {
          v40 = 0;
          do
          {
            if (*(v39 + v40) != 33 || *(v24 + v40) == 1 || *(v22 + v40) == 1)
            {
              v41 = -2;
            }

            else
            {
              char_kind = get_char_kind(a2, v40);
              v39 = v183;
              if (char_kind == 4)
              {
                v41 = -1;
              }

              else
              {
                v41 = char_kind;
              }

              v37 = a2;
            }

            *(v23 + v40++) = v41;
            v38 = *(v37 + 8);
          }

          while (v40 < v38);
        }

        modify_comma(v23, v38, *(a8 + 24));
        v44 = *(a2 + 8);
        if (v44 >= 1)
        {
          v180 = v24;
          v177 = v21;
          v45 = 0;
          v46 = 0;
          while (1)
          {
            v47 = (v23 + v45);
            if (v45 == v44 - 1)
            {
              break;
            }

            v49 = v47[1];
            v48 = *v47;
            if (v49 != v48)
            {
              goto LABEL_56;
            }

            v50 = v45 - v46;
            if (v49 == 1 && v50 > 30)
            {
              goto LABEL_57;
            }

            if ((v49 & 0xFE) == 2 && v50 > 14)
            {
              goto LABEL_57;
            }

            ++v45;
LABEL_61:
            if (v45 >= v44)
            {
              v17 = a14;
              v24 = v180;
              goto LABEL_63;
            }
          }

          v48 = *v47;
LABEL_56:
          LOBYTE(v49) = v48;
          if (v48 <= 0xFD)
          {
LABEL_57:
            v53 = v19;
            v54 = v18;
            pron_from_grapheme = get_pron_from_grapheme(a2, v46, v45, v49, *(a8 + 24));
            if (!pron_from_grapheme)
            {
              v88 = *(a8 + 24);
              v89 = v23;
              goto LABEL_104;
            }

            v56 = pron_from_grapheme;
            v57 = non_lookup_tag(a2, v46, v45, Dtype[*v47], pron_from_grapheme, a5, v190, a3, *(a8 + 24));
            v58 = *(a8 + 24);
            if (!v57)
            {
              heap_Free(v58, v23);
              v88 = *(a8 + 24);
              v89 = v56;
LABEL_104:
              heap_Free(v88, v89);
              v23 = 0;
              LODWORD(a1) = 0;
              v18 = v54;
              v19 = v53;
              v17 = a14;
              v21 = v177;
LABEL_80:
              v24 = v180;
              goto LABEL_233;
            }

            heap_Free(v58, v56);
            v44 = *(a2 + 8);
            v18 = v54;
            v19 = v53;
            v21 = v177;
          }

          v46 = ++v45;
          goto LABEL_61;
        }

LABEL_63:
        v43 = v23;
LABEL_64:
        heap_Free(*(a8 + 24), v43);
        if ((mbs_copy(v205, a2, 0, *(a2 + 8), *(a8 + 24)) & 0x80000000) != 0)
        {
          v23 = 0;
          LODWORD(a1) = 0;
          goto LABEL_232;
        }

        v59 = a13;
        v175 = v18;
        v181 = v24;
        if (a13 != 1)
        {
          mbs_normalize(v205);
          __s = 0;
          v60 = 0;
          LOWORD(v61) = 0;
          v62 = a2;
LABEL_121:
          v85 = *(v62 + 8);
LABEL_122:
          v184 = v60;
          if (v85 < 1)
          {
            v102 = a3;
            goto LABEL_220;
          }

          v97 = 0;
          v98 = a4;
          if (v61)
          {
            v99 = v59 == 1;
          }

          else
          {
            v99 = 0;
          }

          v100 = !v99;
          v174 = v100;
          v168 = v61;
          __s1c = 1;
          v101 = v183;
          v102 = a3;
          v176 = v17;
          while (1)
          {
            v210 = 0;
            if (v98 < 1)
            {
              goto LABEL_217;
            }

            v103 = 0;
            v187 = 4 * v97;
            v188 = v97;
            v169 = 2 * v97;
            v104 = 1;
            do
            {
              v105 = v104 + v97;
              if (v104 + v97 > *(v62 + 8))
              {
                break;
              }

              v106 = v105 - 1;
              if (*(v101 + v106) != 33 || *(v181 + v106) == 1 || *(v22 + v106) == 1)
              {
                v101 = v183;
                break;
              }

              v107 = v104;
              v108 = v97;
              if (mbs2sjis(v62, v97, v104, v212, 80) == -1 || mbs2sjis(v205, v108, v107, v209, 80) == -1)
              {
LABEL_237:
                LODWORD(a1) = 0;
                v23 = 0;
                goto LABEL_238;
              }

              if (!*(v205[0] + v187))
              {
                v101 = v183;
                v62 = a2;
                v97 = v188;
                v17 = v176;
                break;
              }

              v109 = __s;
              if (a13 != 1)
              {
                v109 = "normal";
              }

              if (v174)
              {
                v110 = v109;
                goto LABEL_152;
              }

              v111 = v168;
              v112 = v184;
              while (v169 < *(v112 + 16) || 2 * v105 > *(v112 + 18))
              {
                v112 += 24;
                if (!--v111)
                {
                  v18 = v175;
                  v110 = __s;
                  goto LABEL_152;
                }
              }

              v113 = __s;
              if (__s)
              {
                v114 = cstdlib_strlen(__s);
                if (v114 < cstdlib_strlen(*v112))
                {
                  v115 = *(a8 + 24);
                  v116 = cstdlib_strlen(*v112);
                  v113 = heap_Realloc(v115, __s, (v116 + 1));
                  if (!v113)
                  {
                    LODWORD(a1) = 0;
                    v23 = 2350915594;
                    v18 = v175;
                    v17 = v176;
                    v24 = v181;
                    v157 = v184;
                    goto LABEL_228;
                  }
                }
              }

              cstdlib_strcpy(v113, *v112);
              v110 = v113;
              v18 = v175;
LABEL_152:
              __s = v110;
              v117 = lookup_JPARSER(&v199, v209, &v204, &v203, v110);
              if (v117 == -1)
              {
                if (v103)
                {
                  v119 = v211[__s1c++];
                  v62 = a2;
                  v97 = v188;
                  if (v119)
                  {
                    v118 = v119 - 48;
LABEL_186:
                    v103 = 1;
                  }

                  else
                  {
                    v103 = 1;
                    v118 = a4 + 1;
                  }

                  v101 = v183;
                }

                else
                {
                  v118 = v107 + 1;
                  v101 = v183;
                  v62 = a2;
                  v97 = v188;
                }

                v17 = v176;
                goto LABEL_190;
              }

              CopyOutput_JPARSER(v206, 120, v204, v117, v203);
              if (v103)
              {
                if (v211[__s1c])
                {
                  v118 = v211[__s1c] - 48;
                }

                else
                {
                  v118 = a4 + 1;
                }

                ++__s1c;
                v62 = a2;
                v97 = v188;
              }

              else
              {
                v120 = 0;
                v121 = v206[0];
                v62 = a2;
                v97 = v188;
                while (*(v206[0] + v120) && *(v206[0] + v120) != 44)
                {
                  ++v120;
                }

                v210 = *(v206[0] + v120);
                if (!v210)
                {
                  goto LABEL_170;
                }

                v122 = 0;
                do
                {
                  v123 = *(v121 + v120 + 1 + v122);
                  v211[v122++] = v123;
                }

                while (v123);
                if (v122)
                {
                  v118 = v211[0] - 48;
                  *(v121 + v120) = 0;
                  __s1c = 1;
                }

                else
                {
LABEL_170:
                  __s1c = 1;
                  v118 = a4 + 1;
                }
              }

              if (!*v206[0])
              {
                goto LABEL_186;
              }

              if (*v178)
              {
                v124 = v97 + 1;
              }

              else
              {
                v124 = v97;
              }

              v167 = v124;
              if (!cstdlib_strlen(v212))
              {
                v23 = 2350915584;
                log_OutPublic(*(*(v189 + 32) + 32), *(v189 + 216), 52003, "%s%s%s%s", v125, v126, v127, v128, "empty field");
                LODWORD(a1) = 0;
LABEL_238:
                v24 = v181;
                v157 = v184;
                v17 = v176;
                if (v184)
                {
                  goto LABEL_228;
                }

                goto LABEL_229;
              }

              info = create_info(0, v212, *(a8 + 24));
              if (!info)
              {
                goto LABEL_237;
              }

              v134 = info;
              v165 = v118;
              v166 = v107 - 1;
              *(info + 16) = 0;
              v135 = v206;
              v136 = 1;
              v137 = info;
              do
              {
                if (!*v135 || !cstdlib_strlen(*v135))
                {
                  v23 = 2350915584;
                  log_OutPublic(*(*(v189 + 32) + 32), *(v189 + 216), 52003, "%s%s%s%s", v130, v131, v132, v133, "empty field");
LABEL_224:
                  free_information(v134, *(a8 + 24));
                  LODWORD(a1) = 0;
                  goto LABEL_225;
                }

                v138 = create_info(v136, *v135, *(a8 + 24));
                v23 = v138;
                *(v137 + 16) = v138;
                if (!v138)
                {
                  goto LABEL_224;
                }

                *(v138 + 16) = 0;
                ++v136;
                ++v135;
                v137 = v138;
              }

              while (v136 != 3);
              if (*v207)
              {
                v17 = v176;
                if (cstdlib_strlen(v207))
                {
                  v143 = create_info(3, v207, *(a8 + 24));
                  *(v23 + 16) = v143;
                  if (v143)
                  {
                    *(v143 + 16) = 0;
                    v23 = v143;
                    goto LABEL_194;
                  }

LABEL_242:
                  free_information(v134, *(a8 + 24));
LABEL_243:
                  LODWORD(a1) = 0;
                  v23 = 0;
                }

                else
                {
LABEL_253:
                  v23 = 2350915584;
                  v163 = *(*(v189 + 32) + 32);
                  v164 = *(v189 + 216);
LABEL_247:
                  log_OutPublic(v163, v164, 52003, "%s%s%s%s", v139, v140, v141, v142, "empty field");
                  free_information(v134, *(a8 + 24));
LABEL_251:
                  LODWORD(a1) = 0;
                }

LABEL_226:
                v18 = v175;
                v24 = v181;
                goto LABEL_227;
              }

              v17 = v176;
LABEL_194:
              v144 = 0;
              v182 = 4;
              v145 = 3;
              while (2)
              {
                v172 = &v208[v144 + 8];
                v146 = *&v208[v144];
                if (*v146 || **&v208[v144 + 8])
                {
                  v147 = 24 * (v145 / 3);
                  if (v147 - 24 == v144)
                  {
                    if (!add_info_to_table(v134, v167, v166, a5, v190, 0, a3, *(a8 + 24)))
                    {
                      goto LABEL_242;
                    }

                    if (!cstdlib_strlen(v212))
                    {
                      v23 = 2350915584;
                      log_OutPublic(*(*(v189 + 32) + 32), *(v189 + 216), 52003, "%s%s%s%s", v148, v149, v150, v151, "empty field");
                      goto LABEL_251;
                    }

                    v152 = create_info(0, v212, *(a8 + 24));
                    if (!v152)
                    {
                      goto LABEL_243;
                    }

                    v134 = v152;
                    *(v152 + 16) = 0;
                    v146 = *(v172 - 1);
                    v23 = v134;
                    if (!v146)
                    {
LABEL_246:
                      v23 = 2350915584;
                      v163 = *(*(v189 + 32) + 32);
                      v164 = *(v189 + 216);
                      goto LABEL_247;
                    }

LABEL_207:
                    if (!cstdlib_strlen(v146))
                    {
                      goto LABEL_246;
                    }

                    v155 = v182 - 3 * (v145 / 3);
                    v153 = *(v172 - 1);
                    v154 = *(a8 + 24);
LABEL_209:
                    v156 = create_info(v155, v153, v154);
                    *(v23 + 16) = v156;
                    if (!v156)
                    {
                      goto LABEL_242;
                    }

                    v23 = v156;
                    *(v156 + 16) = 0;
                  }

                  else
                  {
                    if (v147 - 8 != v144)
                    {
                      goto LABEL_207;
                    }

                    if (*v146)
                    {
                      if (!cstdlib_strlen(v146))
                      {
                        goto LABEL_253;
                      }

                      v153 = *(v172 - 1);
                      v154 = *(a8 + 24);
                      v155 = 3;
                      goto LABEL_209;
                    }
                  }

                  ++v145;
                  v144 += 8;
                  ++v182;
                  if (v144 == 928)
                  {
                    break;
                  }

                  continue;
                }

                break;
              }

              if (!add_info_to_table(v134, v167, v166, a5, v190, 0, a3, *(a8 + 24)))
              {
                goto LABEL_242;
              }

              v103 = 1;
              v18 = v175;
              v101 = v183;
              v62 = a2;
              v97 = v188;
              v118 = v165;
LABEL_190:
              v104 = v118;
            }

            while (v118 <= a4);
            v85 = *(v62 + 8);
            v24 = v181;
            v102 = a3;
            v98 = a4;
LABEL_217:
            if (++v97 >= v85)
            {
LABEL_220:
              if (*(v102 + 136) && !look_up_unknown_word(v62, v102, a5, v190, *(a8 + 24)))
              {
                LODWORD(a1) = 0;
                v23 = 0;
              }

              else
              {
                v23 = 0;
                LODWORD(a1) = 1;
              }

LABEL_227:
              v157 = v184;
              if (v184)
              {
LABEL_228:
                heap_Free(*(a8 + 24), v157);
              }

LABEL_229:
              if (a13 == 1 && __s)
              {
                heap_Free(*(a8 + 24), __s);
              }

LABEL_232:
              mbs_free(v205, *(a8 + 24));
LABEL_233:
              v25 = v183;
              goto LABEL_234;
            }
          }
        }

        if (a10)
        {
          v63 = 0;
          v64 = (a9 + 40);
          v65 = __s1;
          while (*(v64 - 2) <= *(a11 + 32))
          {
            if (*(v64 - 5) == 21)
            {
              v65 = (*(a12 + 8) + *v64);
            }

            ++v63;
            v64 += 16;
            if (a10 == v63)
            {
              __s1 = v65;
              v66 = a10;
              goto LABEL_83;
            }
          }

          __s1 = v65;
          v66 = v63;
        }

        else
        {
          v66 = 0;
        }

LABEL_83:
        v67 = *(a8 + 24);
        MarkerArgStr = marker_getMarkerArgStr(1u);
        v69 = cstdlib_strlen(MarkerArgStr);
        a1 = heap_Calloc(v67, 1, (v69 + 1));
        if (!a1)
        {
          v23 = 2350915594;
          v18 = v175;
          goto LABEL_232;
        }

        v70 = marker_getMarkerArgStr(1u);
        __s = a1;
        cstdlib_strcpy(a1, v70);
        mbs_normalize(v205);
        v71 = *(a11 + 32);
        v72 = *(a9 + 32);
        v73 = heap_Calloc(*(a8 + 24), 1, 264);
        if (!v73)
        {
          LODWORD(a1) = 0;
          v23 = 2350915594;
          v18 = v175;
          v24 = v181;
          goto LABEL_229;
        }

        v60 = v73;
        v74 = v71 - v72;
        v176 = v17;
        if (v66 >= a10)
        {
          LODWORD(v61) = 0;
          v62 = a2;
          v85 = *(a2 + 8);
          v24 = v181;
          v78 = __s1;
          if (v85 <= 0)
          {
            v18 = v175;
            goto LABEL_122;
          }

          v184 = v60;
          LOWORD(v85) = 2 * v85;
          v87 = v74;
          v18 = v175;
        }

        else
        {
          v184 = v73;
          v61 = 0;
          v75 = (v71 - v72);
          v76 = (a9 + (v66 << 6) + 40);
          v77 = a10 - v66;
          v173 = 10;
          v170 = v74;
          LOWORD(v186) = v74;
          v24 = v181;
          v62 = a2;
          v78 = __s1;
          v79 = a12;
          v171 = v74;
          do
          {
            if (v75 + 2 * *(v62 + 8) < (*(v76 - 4) - *(a9 + 32)))
            {
              break;
            }

            if (*(v76 - 5) == 21)
            {
              __s1a = v61;
              v80 = v78;
              if (cstdlib_strcmp(v78, (*(v79 + 8) + *v76)))
              {
                v81 = *v76;
                v82 = __s1a;
                if (__s1a >= v173)
                {
                  v83 = heap_Realloc(*(a8 + 24), v184, 24 * v173 + 264);
                  if (!v83)
                  {
                    LODWORD(a1) = 0;
                    v23 = 2350915594;
LABEL_225:
                    v17 = v176;
                    goto LABEL_226;
                  }

                  v173 += 10;
                  v82 = __s1a;
                }

                else
                {
                  v83 = v184;
                }

                v75 = v171;
                v184 = v83;
                v84 = v83 + 24 * v82;
                *v84 = v80;
                v79 = a12;
                v78 = (*(a12 + 8) + v81);
                *(v84 + 8) = v78;
                *(v84 + 16) = v186;
                v186 = *(v76 - 2) - *(a9 + 32);
                *(v84 + 18) = v186;
                v61 = (v82 + 1);
                v17 = v176;
                v24 = v181;
                v62 = a2;
              }

              else
              {
                v62 = a2;
                v78 = v80;
                v79 = a12;
                v61 = __s1a;
                v75 = v171;
              }
            }

            v76 += 16;
            --v77;
          }

          while (v77);
          v85 = *(v62 + 8);
          v86 = v75 + 2 * v85;
          v87 = v186;
          v18 = v175;
          if (v86 <= v186)
          {
            v60 = v184;
            goto LABEL_109;
          }

          if (v61 >= v173)
          {
            v160 = v61;
            v161 = v78;
            v162 = heap_Realloc(*(a8 + 24), v184, 24 * v173 + 264);
            if (!v162)
            {
              LODWORD(a1) = 0;
              v23 = 2350915594;
              goto LABEL_227;
            }

            v85 = 2 * *(a2 + 8);
            v184 = v162;
            v62 = a2;
            v78 = v161;
            LODWORD(v61) = v160;
            v74 = v170;
            v87 = v186;
          }

          else
          {
            LOWORD(v85) = 2 * v85;
            v74 = v170;
          }
        }

        v90 = v184 + 24 * v61;
        *v90 = v78;
        *(v90 + 8) = 0;
        *(v90 + 16) = v87;
        *(v90 + 18) = v85 + v74;
        v60 = v184;
        v61 = (v61 + 1);
LABEL_109:
        if (v61)
        {
          v91 = 0;
          v92 = v61;
          v185 = v60;
          do
          {
            v93 = v91 + 1;
            if (v93 < v92 && (v94 = (v60 + 24 * v93), (v95 = v94[1]) != 0))
            {
              __s1b = v61;
              v96 = (v60 + 24 * v91);
              if (cstdlib_strcmp(*v96, v95))
              {
                ++v91;
                v24 = v181;
                v62 = a2;
                v60 = v185;
                v61 = __s1b;
              }

              else
              {
                cstdlib_memmove(v96, v94, 24 * (v92 + (~v91 | 0x1FFF0000)));
                v61 = (__s1b - 1);
                v24 = v181;
                v62 = a2;
                v60 = v185;
              }
            }

            else
            {
              ++v91;
            }

            v92 = v61;
          }

          while (v91 < v61);
          v18 = v175;
          v17 = v176;
        }

        else
        {
          LOWORD(v61) = 0;
          v17 = v176;
        }

        v59 = 1;
        goto LABEL_121;
      }

LABEL_77:
      LODWORD(a1) = 0;
      goto LABEL_233;
    }

    a1 = create_info(0, "", *(a8 + 24));
    if (!a1)
    {
      v23 = 0;
      goto LABEL_233;
    }

    v180 = v24;
    v31 = create_info(1, v178, *(a8 + 24));
    *(a1 + 16) = v31;
    if (v31)
    {
      v32 = v31;
      *(v31 + 16) = 0;
      v33 = create_info(2, " ", *(a8 + 24));
      v23 = v33;
      *(v32 + 16) = v33;
      if (v33)
      {
        *(v33 + 16) = 0;
        v34 = create_info(3, "0", *(a8 + 24));
        *(v23 + 16) = v34;
        v24 = v180;
        if (v34)
        {
          *(v34 + 16) = 0;
          v30 = a3;
          if (add_info_to_table(a1, 0, 0, a5, v190, 0, a3, *(a8 + 24)))
          {
            goto LABEL_17;
          }
        }

        free_information(a1, *(a8 + 24));
LABEL_76:
        v23 = 0;
        goto LABEL_77;
      }

      free_information(a1, *(a8 + 24));
    }

    else
    {
      free_information(a1, *(a8 + 24));
      v23 = 0;
    }

    LODWORD(a1) = 0;
    goto LABEL_80;
  }

LABEL_234:
  heap_Free(*(a8 + 24), v25);
  heap_Free(*(a8 + 24), v24);
  heap_Free(*(a8 + 24), v22);
  heap_Free(*(a8 + 24), v18);
  heap_Free(*(a8 + 24), v19);
  heap_Free(*(a8 + 24), v21);
  for (j = 0; j != 120; ++j)
  {
    heap_Free(*(a8 + 24), v206[j]);
  }

  *v17 = a1;
  return v23;
}

uint64_t sapi_prn_tag_conv_replace(uint64_t a1, char *__s, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v6 = cstdlib_strlen(__s);
  v7 = mbs_create(&v24, v6, __s, *(a3 + 24));
  if ((v7 & 0x80000000) == 0)
  {
    *(a1 + 8) = 0;
    v8 = heap_Alloc(*(a3 + 24), v25);
    if (!v8)
    {
      v7 = 2350915594;
      goto LABEL_48;
    }

    if (!mark_tag_state(&v24, v8))
    {
      v7 = 2350915601;
      goto LABEL_48;
    }

    if (v25 < 1)
    {
      goto LABEL_48;
    }

    v23 = 0;
    v9 = 0;
LABEL_6:
    v10 = mbs_one_char(&v24, v9);
    if (v10 <= 0x20 && ((1 << v10) & 0x100002400) != 0)
    {
      goto LABEL_10;
    }

    v12 = v9 + 15 >= v25 ? v25 - v9 : 16;
    if (v12 < 1)
    {
      goto LABEL_10;
    }

    v13 = 0;
    v14 = v12 + 1;
    while (mbs_one_char(&v24, v9 + v13) != 30)
    {
      if (v12 == ++v13)
      {
        goto LABEL_22;
      }
    }

    v14 = v13 + 1;
LABEL_22:
    v15 = v14 - 1;
    if (v14 <= 1)
    {
LABEL_30:
      v16 = v15;
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = mbs_one_char(&v24, v9 + v16);
        if (v17 <= 0x20 && ((1 << v17) & 0x100002400) != 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_30;
        }
      }
    }

    if (v16 < 1)
    {
LABEL_10:
      v7 = mbs_add_str(a1, &v24, v9, 1, 0, *(a3 + 24));
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

    v19 = v23 == 1;
    while (1)
    {
      if (mbs2sjis(&v24, v9, v16, __sa, 1000) == -1)
      {
        v7 = 2350915840;
        goto LABEL_48;
      }

      if (cstdlib_strlen(__sa) < 1)
      {
        if (v19)
        {
LABEL_44:
          v7 = mbs_add_str(a1, &v24, v9, v16, 0, *(a3 + 24));
          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_48;
          }

          v9 = v9 - 1 + v16;
          v23 = 1;
LABEL_11:
          if (++v9 >= v25)
          {
LABEL_48:
            heap_Free(*(a3 + 24), v8);
            mbs_free(&v24, *(a3 + 24));
            return v7;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v20 = 0;
        while ((__sa[v20] & 0xDFu) - 91 >= 0xFFFFFFE6)
        {
          if (++v20 >= cstdlib_strlen(__sa))
          {
            goto LABEL_44;
          }
        }
      }

      v19 = 0;
      if (v16-- < 2)
      {
        v23 = 0;
        goto LABEL_10;
      }
    }
  }

  return v7;
}

uint64_t jparser_codeer(uint64_t result, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  LOBYTE(v6) = result;
  do
  {
    v7 = *a3++;
    v8 = v5 + v7;
    v6 = (v6 + result);
    if (v6 < 16)
    {
      v12 = v8 << result;
    }

    else
    {
      v9 = result + 16 - v6;
      v10 = v8 << v9;
      *(a4 + v4++) = BYTE1(v10);
      v11 = result - v9;
      v12 = v10 << v11;
      LOBYTE(v6) = v11 + 8;
    }

    v5 = v12;
    --a2;
  }

  while (a2);
  *(a4 + v4) = bswap32(v12 << (16 - v6)) >> 16;
  return result;
}

uint64_t jparser_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = heap_Calloc(*(v7 + 8), 1, 8);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *v6 = *(v7 + 8);
      *a3 = v6;
      *(a3 + 8) = 19024;
    }

    else
    {
      return 2350915594;
    }
  }

  return result;
}

uint64_t jparser_ClassClose(void **a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 19024, 8) & 0x80000000) != 0)
  {
    return 2350915592;
  }

  if (a1)
  {
    heap_Free(*a1, a1);
  }

  return 0;
}

uint64_t jparser_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, int a10, uint64_t a11)
{
  v35 = 0;
  inited = InitRsrcFunction(a1, a2, &v35);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v20 = 2350915840;
  if ((safeh_HandleCheck(a3, a4, 19024, 8) & 0x80000000) != 0)
  {
    return 2350915592;
  }

  v21 = 0;
  for (i = 0; i != 1; ++i)
  {
    v23 = *(get_a_rule(i) + 72);
    if (v23 > v21)
    {
      v21 = v23;
    }
  }

  if (v21)
  {
    return 2350907394;
  }

  v24 = heap_Alloc(*(v35 + 8), 232);
  if (!v24)
  {
    return 2350915594;
  }

  v25 = v24;
  cstdlib_memset(v24, 0, 0xE8uLL);
  *(v25 + 8) = a1;
  *(v25 + 16) = a2;
  v26 = v35;
  *(v25 + 24) = *(v35 + 8);
  *(v25 + 32) = v26;
  *(v25 + 216) = a11;
  *(v25 + 224) = 0;
  *(v25 + 184) = a6;
  *(v25 + 192) = a7;
  *(v25 + 200) = a8;
  *(v25 + 208) = a9;
  *(v25 + 212) = a10;
  *(v25 + 48) = get_number_of_symbol(&SF_symbol_file, "SENTENCE");
  number_of_symbol = get_number_of_symbol(&SF_symbol_file, &byte_279DB12C4);
  *(v25 + 56) = number_of_symbol;
  if ((number_of_symbol & 0x8000000000000000) == 0)
  {
    v28 = 3;
    v29 = &unk_279DB14F8;
    for (j = (v25 + 104); ; ++j)
    {
      v31 = get_number_of_symbol(&SF_symbol_file, v29 - 320);
      *(j - 5) = v31;
      if (v31 == -1)
      {
        break;
      }

      v32 = get_number_of_symbol(&SF_symbol_file, v29 + 344);
      j[5] = v32;
      if (v32 == -1)
      {
        break;
      }

      v33 = get_number_of_symbol(&SF_symbol_file, v29);
      *j = v33;
      if (v33 == -1)
      {
        break;
      }

      v29 += 64;
      if (!--v28)
      {
        v20 = 0;
        *a5 = v25;
        return v20;
      }
    }
  }

  heap_Free(*(v35 + 8), v25);
  return v20;
}

uint64_t jparser_ObjClose(uint64_t *a1)
{
  result = 2350915592;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(*(*a1 + 24), *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t jparser_Parse(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, uint64_t a10, int a11)
{
  v33 = 0;
  v11 = 2350915592;
  if (a1)
  {
    *(a1 + 224) = a6;
    v34[0] = 0;
    v34[1] = 0;
    v17 = *(a1 + 208);
    v31[12] = *(a1 + 192);
    v31[13] = v17;
    v32 = a6;
    v18 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v18;
    v19 = *(a1 + 176);
    v31[10] = *(a1 + 160);
    v31[11] = v19;
    v20 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v20;
    v21 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v21;
    v22 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v22;
    v23 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v23;
    v24 = sapi_prn_tag_conv_replace(v34, a2, v31);
    if ((v24 & 0x80000000) != 0)
    {
      v28 = v24;
      mbs_free(v34, *(a1 + 24));
      return v28;
    }

    else
    {
      v25 = iso_parse_fdp_bas(a1, &Inifile_global, v34, CT_connection_table, a5, &v33, a7, a8, a9, a10, a11);
      if ((v25 & 0x80000000) != 0)
      {
        v29 = v25;
        mbs_free(v34, *(a1 + 24));
        return v29;
      }

      else
      {
        v26 = v33;
        mbs_free(v34, *(a1 + 24));
        if (v26)
        {
          v27 = v33;
          if (*v33 == 1)
          {
            *a4 = *(v33 + 8);
            heap_Free(*(a1 + 24), v27);
            return 0;
          }

          else
          {
            heap_Free(*(a1 + 24), v33);
            return 2350915840;
          }
        }

        else
        {
          return 2350915594;
        }
      }
    }
  }

  return v11;
}

uint64_t jparser_FreeTree(uint64_t a1, void **a2)
{
  if (a1)
  {
    return jpe_FreeTree(*a2, *(a1 + 24));
  }

  else
  {
    return 2350915592;
  }
}

uint64_t jpj_sysdct_CharLookup(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6, int a7)
{
  v64 = *MEMORY[0x277D85DE8];
  __c[0] = 0;
  v60 = 0;
  v59 = 0;
  *a5 = 0;
  cstdlib_memset((a5 + 4), 0, 0x41uLL);
  *(a5 + 70) = 0;
  *(a5 + 72) = 0;
  v13 = (a5 + 76);
  cstdlib_memset((a5 + 76), 0, 0x101uLL);
  *(a5 + 334) = 0;
  v14 = cstdlib_strlen(a4);
  v15 = v14;
  if ((v14 & 0xFFC0) != 0)
  {
    v16 = 64;
  }

  else
  {
    v16 = v14;
  }

  cstdlib_memmove(__dst, a4, v16);
  __dst[v16] = 0;
  if (!v15)
  {
    v18 = 0;
    do
    {
      v19 = v18;
      v20 = a4[v18++];
    }

    while (v20 == 32);
    cstdlib_memmove((a5 + 4), a4, v19);
    return 0;
  }

  if (v16 > a6)
  {
    __dst[a6] = 0;
  }

  if (__dst[0] > 0x7Eu)
  {
    v17 = 2;
    *a5 = 2;
    cstdlib_memmove((a5 + 4), __dst, 2uLL);
    *(a5 + 6) = 0;
  }

  else
  {
    *a5 = 3;
    v17 = 1;
    cstdlib_memmove((a5 + 4), __dst, 1uLL);
    *(a5 + 5) = 0;
  }

  *(a5 + 70) = v17;
  if (!*(a3 + 28))
  {
    *&__c[1] = 0;
    v29 = lookup_JPARSER(a3, a5 + 4, &__c[1], __c, "normal");
    if (v29 != -1)
    {
      v30 = v29;
      cstdlib_memmove((a5 + 76), *&__c[1], v29);
      v13[v30] = 0;
      *(a5 + 334) = v30;
      v31 = cstdlib_strchr((a5 + 76), __c[0]);
      if (v31)
      {
        *v31 = 0;
        v36 = v31 + 1;
        v37 = cstdlib_strchr(v31 + 1, __c[0]);
        if (v37)
        {
          *v37 = 0;
          v38 = cstdlib_strlen(v36);
          *(a5 + 334) = v38;
          cstdlib_memmove((a5 + 76), v36, v38);
          v13[*(a5 + 334)] = 0;
LABEL_27:
          v21 = 0;
          goto LABEL_28;
        }

        v40 = 1812;
      }

      else
      {
        v40 = 1813;
      }

      v21 = 2350915584;
      v41 = *(a1 + 32);
      v42 = a2;
      goto LABEL_41;
    }

    *a5 = 0;
    goto LABEL_27;
  }

  v59 = 0;
  v21 = (*(*a3 + 96))(*(a3 + 8), *(a3 + 16), "char", a5 + 4, &v60, &v59, __c);
  if ((v21 & 0x80000000) != 0 || !v59)
  {
    goto LABEL_37;
  }

  __s = 0;
  v57 = 0;
  *&__c[1] = 0u;
  v62 = 0u;
  getDictSolutionJPJ(v59, v60, __c[0], &__s, &v57 + 1, "normal", 4, &v57, &__c[1]);
  if (!HIWORD(v57) || (v26 = *&__c[9], v55 = v62.i64[0], (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*&__c[1]), vceqzq_s64(v62)), xmmword_26ED120B0)) & 0xF) != 0))
  {
    log_OutPublic(*(a1 + 32), a2, 1817, 0, v22, v23, v24, v25, v53);
    *a5 = 0;
  }

  else
  {
    v28 = 1;
    if (**&__c[1])
    {
      v54 = *&__c[9];
      v27 = cstdlib_strcmp(*&__c[1], "1");
      v26 = v54;
      if (v27)
      {
        v28 = 0;
      }
    }

    if (*v26)
    {
      v39 = cstdlib_strcmp(v26, "1");
      if (a7 == 1)
      {
        if (v39)
        {
          goto LABEL_37;
        }
      }
    }

    if (v28)
    {
      if (*__s == __c[0])
      {
LABEL_37:
        *a5 = 0;
        return v21;
      }

      v48 = cstdlib_strlen(__s);
      cstdlib_memmove((a5 + 76), __s, v48);
      v13[v48] = 0;
      *(a5 + 334) = v48;
      v49 = cstdlib_strchr((a5 + 76), __c[0]);
      if (v49)
      {
        *v49 = 0;
        v50 = v49 + 1;
        v51 = cstdlib_strchr(v49 + 1, __c[0]);
        if (v51)
        {
          *v51 = 0;
          v52 = cstdlib_strlen(v50);
          *(a5 + 334) = v52;
          v45 = v52;
          v46 = (a5 + 76);
          v47 = v50;
          goto LABEL_48;
        }

        v21 = 2350915584;
        v41 = *(a1 + 32);
        v42 = a2;
        v40 = 1812;
      }

      else
      {
        v21 = 2350915584;
        v41 = *(a1 + 32);
        v42 = a2;
        v40 = 1813;
      }

LABEL_41:
      log_OutPublic(v41, v42, v40, 0, v32, v33, v34, v35, v53);
      return v21;
    }

    if (*v55)
    {
      v44 = cstdlib_strlen(v55);
      *(a5 + 334) = v44;
      v45 = v44;
      v46 = (a5 + 76);
      v47 = v55;
LABEL_48:
      cstdlib_memmove(v46, v47, v45);
      v13[*(a5 + 334)] = 0;
    }
  }

LABEL_28:
  if (*a5 && *v13 == 35)
  {
    *(a5 + 76) = cstdlib_atoi((a5 + 77));
    *(a5 + 77) = 0;
    *(a5 + 334) = 1;
  }

  return v21;
}