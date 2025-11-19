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
  v101[0] = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  LogLevel = log_GetLogLevel(*(*(a1 + 32) + 32));
  v23 = LogLevel > 4;
  v92 = 0;
  v91 = 0;
  *(a12 + 8) = 0;
  *(a12 + 12) = 0x100000001;
  if (!*a1)
  {
    v21 = 2350915601;
    goto LABEL_55;
  }

  v24 = LogLevel;
  v25 = bed_GetpElem(a5, 0, &v92);
  if ((v25 & 0x80000000) != 0 || (v25 = bed_GetcElem(a5, &v91), (v25 & 0x80000000) != 0) || (v25 = bed_GetpElem(a5, 0xFFFFu, &v96), (v25 & 0x80000000) != 0))
  {
LABEL_54:
    v21 = v25;
LABEL_55:
    if (v100)
    {
      v72 = jparser_FreeTree(*(a1 + 24), &v100);
      if (v72 >= 0 || v21 <= -1)
      {
        return v21;
      }

      else
      {
        return v72;
      }
    }

    return v21;
  }

  v88 = a8;
  if (a13 != 1)
  {
    goto LABEL_12;
  }

  if (v91)
  {
    v26 = (v92 + 20);
    v27 = 1;
    v28 = v91;
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
      v21 = jparser_Parse(*(a1 + 24), a2, a3, &v100, v23, *(a1 + 48), v92, v91, v96, a8, a13);
      v101[0] = v21;
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      goto LABEL_33;
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
    v84 = a4;
    v35 = v91;
    if (v91)
    {
      v36 = 0;
      v37 = 0;
      v38 = v92;
      v39 = v91;
      do
      {
        if (!v36 || *(v38 + 20) == 21)
        {
          v40 = (v33 + (v37 << 6));
          v41 = *v38;
          v42 = *(v38 + 16);
          v43 = *(v38 + 48);
          v40[2] = *(v38 + 32);
          v40[3] = v43;
          *v40 = v41;
          v40[1] = v42;
          ++v37;
          v35 = v39;
        }

        ++v36;
        v38 += 64;
      }

      while (v36 < v35);
      if (v37)
      {
        v85 = v24;
        v86 = v23;
        v82 = a6;
        v83 = a5;
        v44 = v37;
        v45 = 32;
        while (1)
        {
          if (v45 != 32)
          {
            v46 = *(v92 + 32);
            v47 = (*(v34 + v45) - v46);
            v48 = (*(v34 + v45) - v46);
            if (*(v34 + v45) != v46)
            {
              v49 = a3;
              v50 = heap_Calloc(*(*(a1 + 32) + 8), (v48 + 1), 1);
              if (!v50)
              {
                heap_Free(*(*(a1 + 32) + 8), v34);
                return v21;
              }

              v51 = v50;
              v52 = strncpy(v50, a14, v48);
              v52[v48] = 0;
              *(v34 + v45) = 2 * Utf8_LengthInUtf8chars(v52, v48);
              heap_Free(*(*(a1 + 32) + 8), v51);
              a3 = v49;
            }
          }

          v45 += 64;
          if (!--v44)
          {
            a6 = v82;
            a5 = v83;
            v24 = v85;
            v23 = v86;
            goto LABEL_32;
          }
        }
      }
    }

    v37 = 0;
LABEL_32:
    v21 = jparser_Parse(*(a1 + 24), a2, a3, &v100, v23, *(a1 + 48), v34, v37, v96, v88, 1);
    v101[0] = v21;
    heap_Free(*(*(a1 + 32) + 8), v34);
    a4 = v84;
    if ((v21 & 0x80000000) == 0)
    {
LABEL_33:
      v87 = v23;
      if (a3)
      {
        if (3 * a3 != 2 * *(v96 + 36))
        {
          *(a12 + 16) = 0;
        }
      }

      else
      {
        v53 = *(v96 + 36);
      }

      *(a12 + 16);
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v30, v31, v32, a3);
      UTOITrace(v23, *(a1 + 32), a4, a5, "START of normalization");
      v95 = 0;
      jparser_extractResult(*(a1 + 32), *(a1 + 40), v100, v101, a6, a7, v88, a9, a10, &v97, &v99 + 1, &v99, &v98 + 1, *(a1 + 48), a11, &v98, a12, &v95, a14, a15);
      v21 = v101[0];
      if ((v101[0] & 0x80000000) != 0)
      {
        goto LABEL_55;
      }

      v54 = a6;
      if (!a3)
      {
        goto LABEL_73;
      }

      v25 = bed_GetcElem(a6, &v93);
      if ((v25 & 0x80000000) == 0)
      {
        v58 = *(a1 + 32);
        if (!v93)
        {
          log_OutText(*(v58 + 32), *(a1 + 40), 5, 0, "[UTOI] deleting region, no replacement text found", v55, v56, v57, v78);
          goto LABEL_73;
        }

        UTOISubTrace(v23, v58, a6, "replacement string");
        if (*(a12 + 16) != 1)
        {
LABEL_73:
          v21 = utoin_IncrReplaceCurrentRegion(a4, a5, v54, a3 >> 1, a12);
          if ((v21 & 0x80000000) == 0)
          {
            UTOITrace(v23, *(a1 + 32), a4, a5, "END of normalization");
          }

          goto LABEL_55;
        }

        v25 = bed_GetpElem(a6, 0, &v94);
        if ((v25 & 0x80000000) == 0)
        {
          if (!v93)
          {
            v71 = 1;
            v66 = v24;
            goto LABEL_67;
          }

          v62 = 0;
          v63 = 0;
          v64 = 1;
          v65 = v94;
          v66 = v24;
          while (1)
          {
            if (*(v65 + v62) == 16)
            {
              v67 = *(a12 + 8);
              if (v63 >= v67)
              {
LABEL_65:
                log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] cannot find non-deleted word to align new word number %d with", v59, v60, v61, v64);
                v71 = 0;
LABEL_67:
                if (v66 >= 5 && *(a12 + 8))
                {
                  v75 = 0;
                  v76 = 0;
                  do
                  {
                    v77 = (*a12 + v75);
                    v80 = v77[4];
                    v81 = *(v77 + 1);
                    v79 = *v77;
                    log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v59, v60, v61, v76++);
                    v75 += 12;
                  }

                  while (v76 < *(a12 + 8));
                }

                v23 = v87;
                if (v71)
                {
                  *(a12 + 12) = 0;
                }

                goto LABEL_73;
              }

              v68 = v63;
              v69 = (*a12 + 12 * v63 + 4);
              while (1)
              {
                v70 = *v69;
                v69 += 3;
                if (v70 != 1)
                {
                  break;
                }

                if (v67 == ++v68)
                {
                  goto LABEL_65;
                }
              }

              *(*a12 + 12 * v68 + 8) = v62;
              ++v64;
              v63 = v68 + 1;
            }

            if (++v62 >= v93)
            {
              v71 = 1;
              goto LABEL_67;
            }
          }
        }
      }

      goto LABEL_54;
    }
  }

  return v21;
}

uint64_t jparser_extractResult(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11, _WORD *a12, _WORD *a13, uint64_t a14, uint64_t *a15, unsigned __int16 *a16, uint64_t a17, _WORD *a18, uint64_t a19, uint64_t a20)
{
  v116 = a7;
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
      v31 = jparser_extractResult(a1, a2, v30, a4, a5, a6, v116, a8, a9, a10, a11, a12, a13, a14, a15, a16, v29, a18, a19, a20);
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

  v110 = a20;
  v111 = a2;
  v112 = a5;
  v113 = a1;
  v108 = a6;
  v109 = a8;
  v33 = 0;
  LOWORD(a6) = 0;
  v114 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    v37 = *v32;
    if (!strcmp(*v32, "WORD"))
    {
      v38 = *(v32 + 8);
      v114 = strlen(v38);
      v39 = *v38;
      if (*v38)
      {
        a6 = 0;
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
            v42 = a6;
          }

          else
          {
            v42 = a6 + 1;
          }

          if (v39 == 160)
          {
            v43 = a6;
          }

          else
          {
            v43 = a6 + 1;
          }

          if (v39 <= 0xDF)
          {
            v41 = v38 + 1;
            v42 = v43;
          }

          if (v39 == 128)
          {
            v40 = v38 + 1;
            v44 = a6;
          }

          else
          {
            v44 = a6 + 1;
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
            a6 = v45;
          }

          else
          {
            ++a6;
          }

          v39 = *v38;
        }

        while (*v38);
      }

      else
      {
        LOWORD(a6) = 0;
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
      if (v48 < 0)
      {
        return 0;
      }

      v37 = *v32;
      v36 = v32;
    }

    if (!strcmp(v37, "POS"))
    {
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
      if (v51 < 0)
      {
        return 0;
      }

      v37 = *v32;
      v34 = v32;
    }

    if (!strcmp(v37, "PRON"))
    {
      v33 = strlen(*(v32 + 8));
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
      v35 = v32;
      if (v54 < 0)
      {
        return 0;
      }
    }

    v32 = *(v32 + 16);
  }

  while (v32);
  if (!v36 || !v35 || !v34)
  {
    v99 = -1944051456;
    goto LABEL_89;
  }

  v55 = *(v113 + 32);
  v56 = ssftstring_CStr(a14);
  log_OutText(v55, v111, 5, 0, "[UTOI RES] %s", v57, v58, v59, v56);
  v60 = ssftstring_Clear(a14);
  *a4 = v60;
  if (v60 < 0)
  {
    return 0;
  }

  v61 = bed_Insert(v112, &szWORD_BEG_5, 1);
  *a4 = v61;
  if (v61 < 0)
  {
    return 0;
  }

  ++*a9;
  v62 = *a15;
  v63 = *a16 + 1;
  *a16 = v63;
  v64 = *(v113 + 8);
  v65 = 2 * v63 + 2;
  if (v62)
  {
    v66 = heap_Realloc(v64, v62, v65);
    if (!v66)
    {
      goto LABEL_86;
    }

    *a15 = v66;
  }

  else
  {
    v66 = heap_Calloc(v64, 1, v65);
    *a15 = v66;
    if (!v66)
    {
      goto LABEL_86;
    }
  }

  *v66 = *a16;
  v67 = SearchTERMINALTable(*(v34 + 8));
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    v68 = 42;
  }

  *(*a15 + 2 * *a16) = v68;
  *a4 = bed_Insert(v112, *(v35 + 8), v33);
  *a9 += v33;
  v69 = bed_Insert(v112, &szWORD_END_6, 1);
  *a4 = v69;
  if (v69 < 0)
  {
    return 0;
  }

  ++*a9;
  if (!v114)
  {
    log_OutText(*(v113 + 32), v111, 5, 0, "[UTOI] jparser word length is 0, cannot get hex args", v70, v71, v72, v103);
    v99 = -1944051712;
    goto LABEL_89;
  }

  a1 = v113;
  v73 = heap_Calloc(*(v113 + 8), a6 + 1, 2);
  if (!v73)
  {
    goto LABEL_86;
  }

  v74 = v73;
  LH_wcsncpy(v73, (v110 + 2 * *a13), a6);
  *(v74 + 2 * a6) = 0;
  v75 = utf8_16BitNbrOfUtf8Chars(v74);
  if (!v75)
  {
    log_OutText(*(v113 + 32), v111, 5, 0, "[UTOI] converted utf8 word length is 0, cannot get hex args", v76, v77, v78, v103);
    v100 = -1944051712;
    goto LABEL_92;
  }

  v79 = (v75 - 1);
  v80 = heap_Calloc(*(v113 + 8), v79 + 1, 1);
  a2 = v111;
  if (v80)
  {
    v81 = v80;
    strncpy(v80, (a19 + *a12), v79)[v79] = 0;
    v105 = *a12;
    v104 = *a11;
    log_OutText(*(v113 + 32), v111, 5, 0, "[UTOI] get hex args from UTF16Word(%s,pos=%d) UTF8Word(%s,pos=%d)", v82, v83, v84, v74);
    v85 = v116;
    v86 = *(v116 + 16);
    v87 = v86 + 2 * v79 + 1;
    v106 = v74;
    if (*(v116 + 18) < v87)
    {
      v88 = datac_RequestBlock(v108, v109, (v86 + 2 * v79 + 1), &v116);
      *a4 = v88;
      if (v88 < 0)
      {
        heap_Free(*(v113 + 8), v74);
        v101 = *(v113 + 8);
        v102 = v81;
        goto LABEL_93;
      }

      v85 = v116;
      v86 = *(v116 + 16);
    }

    v89 = (*(v85 + 8) + *(v85 + 2) * v86);
    *(v85 + 16) = v87;
    v107 = v79;
    if (v79)
    {
      v90 = v79;
      v91 = v81;
      do
      {
        v92 = *v91++;
        LH_itoa(v92, v115, 0x10u);
        v115[2] = 0;
        *v89 = v115[0];
        v93 = v89 + 2;
        v89[1] = v115[1];
        v89 += 2;
        --v90;
      }

      while (v90);
    }

    else
    {
      v93 = v89;
    }

    *v93 = 0;
    *a11 += v114;
    *a12 += v107;
    *a13 += a6;
    heap_Free(*(v113 + 8), v106);
    heap_Free(*(v113 + 8), v81);
    v29 = a17;
    a8 = v109;
    a6 = v108;
    a5 = v112;
    a20 = v110;
    if (*(a17 + 16) != 1)
    {
      goto LABEL_84;
    }

    v94 = *(a17 + 8);
    v95 = *a17;
    if (v94 < *(a17 + 10))
    {
LABEL_83:
      v97 = v95 + 12 * v94;
      *v97 = *a18;
      *(v97 + 2) = 0;
      *a18 += v107;
      ++*(v29 + 8);
LABEL_84:
      *a10 = *a9;
      goto LABEL_7;
    }

    v96 = heap_Realloc(*(v113 + 8), v95, 12 * *(a17 + 10) + 121);
    if (v96)
    {
      v95 = v96;
      v29 = a17;
      *a17 = v96;
      *(a17 + 10) += 10;
      v94 = *(a17 + 8);
      goto LABEL_83;
    }

LABEL_86:
    v99 = -1944051702;
LABEL_89:
    *a4 = v99;
    return 0;
  }

  v100 = -1944051702;
LABEL_92:
  *a4 = v100;
  v101 = *(v113 + 8);
  v102 = v74;
LABEL_93:
  heap_Free(v101, v102);
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

uint64_t wparser_impl_jparser_Init(uint64_t a1, int a2, void *a3, const char *a4, const char *a5, int a6, _BYTE *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  *(a1 + 48) = a3;
  if (strcmp(a5, "win932"))
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 40), 1802, "%s%s", v14, v15, v16, v17, a5);
    return 2350915591;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = xcode_Utf16leToWin932;
  if (*a7)
  {
    v19 = (*(*a3 + 64))(a3[1], a3[2], a7, a1 + 64);
    if ((v19 & 0x80000000) != 0)
    {
      v18 = v19;
      v25 = *(*(a1 + 16) + 32);
      v26 = *(a1 + 40);
      v27 = 1819;
      v28 = 0;
LABEL_15:
      log_OutPublic(v25, v26, v27, v28, v20, v21, v22, v23, v30);
      return v18;
    }

    a3 = *(a1 + 48);
  }

  *(a1 + 56) = 0;
  if (!strcmp(a4, "null"))
  {
    goto LABEL_11;
  }

  v24 = (*(*a3 + 64))(a3[1], a3[2], a4, a1 + 56);
  if ((v24 & 0x80000000) != 0)
  {
    v18 = v24;
    v25 = *(*(a1 + 16) + 32);
    v26 = *(a1 + 40);
    v30 = "xlit data : ";
    v28 = "%s%s";
    v27 = 1804;
    goto LABEL_15;
  }

  a3 = *(a1 + 48);
LABEL_11:
  v18 = JpCreate(*a1, *(a1 + 8), *a3, a3[1], a3[2], *(a3 + 12), *(a3 + 7), (a1 + 32), *(a1 + 40));
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

uint64_t wparser_impl_jparser_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, __int16 a5, uint64_t a6, int a7, int a8, __int16 a9, uint64_t a10, int a11)
{
  LOWORD(v37) = a5;
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
    v10 = strlen(v5);
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
  v2 = strlen(a1);
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
  memcpy((v13 + 4 * v12), (*a2 + (4 * a3)), v14);
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
  v6 = strlen(__s);
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
    v5 = strlen(*a1);
    v6 = heap_Alloc(a2, (v5 + 1));
    *v4 = v6;
    if (v6)
    {
      strcpy(v6, *a1);
      v7 = strlen(*(a1 + 8));
      v8 = heap_Alloc(a2, (v7 + 1));
      v4[1] = v8;
      if (v8)
      {
        strcpy(v8, *(a1 + 8));
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
  v11[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v11[1] = *(a2 + 48);
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

    v11[0] = v4;
    v5 = a2 + 12;
    do
    {
      v6 = v3;
      v7 = v11[v3];
      pointer_of_symbol = get_pointer_of_symbol(&SF_symbol_file, *v7);
      if (pointer_of_symbol && *pointer_of_symbol == 95 && pointer_of_symbol[1] == 73)
      {
        if (exist_symbol(a1, v7))
        {
          goto LABEL_15;
        }
      }

      else if (*a1 == *v7 && *(a1 + 8) == *(v5 + 4 * v6))
      {
LABEL_15:
        result = 1;
        goto LABEL_16;
      }

      v3 = 1;
    }

    while (!v6);
  }

  result = 0;
LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t find_attribute(uint64_t a1, uint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_18:
    result = 0;
    goto LABEL_20;
  }

  v15[1] = *(a2 + 48);
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

  v15[0] = v6;
  v7 = a2 + 12;
  while (1)
  {
    v8 = v5;
    v9 = v15[v5];
    pointer_of_symbol = get_pointer_of_symbol(&SF_symbol_file, *v9);
    if (pointer_of_symbol && *pointer_of_symbol == 95 && pointer_of_symbol[1] == 73)
    {
      result = find_attribute(a1, v9, a3);
      if (result == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (*a1 == *v9 && *(a1 + 8) == *(v7 + 4 * v8))
    {
      v12 = v9[3];
      if (v12)
      {
        break;
      }
    }

LABEL_17:
    v5 = 1;
    if (v8)
    {
      goto LABEL_18;
    }
  }

  v13 = *(a1 + 16);
  while (strcmp(*v12, v13))
  {
    v12 = *(v12 + 16);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  *a3 = *(v12 + 8);
  result = 1;
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_attribute(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (find_attribute(a1, a2, &v5) == 1)
  {
    return v5;
  }

  if (strcmp(*(a1 + 16), "POS"))
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

  v10 = strcmp(attribute, v8);
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
      v9 = *(*(a1 + 8) + 16);
      while (1)
      {
        v10 = v8;
        v8 = *(v8 + 16);
        v11 = strcmp(*v10, v9);
        if (!v8)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      if (!v11)
      {
LABEL_13:
        *v10 = v9;
        *(v10 + 8) = attribute;
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
      *(v10 + 16) = result;
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

  while (!strcmp(*v3, *v2) && !strcmp(*(v3 + 8), *(v2 + 8)))
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
    memset_pattern16(__b, &unk_1C37BE170, 4 * a2);
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

uint64_t add_info_to_table(uint64_t a1, int a2, int a3, uint64_t **a4, void *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (mbs2sjis(*(*(a1 + 16) + 8), 0, *(*(*(a1 + 16) + 8) + 8), __s1, 64) == -1)
  {
    goto LABEL_13;
  }

  number_of_symbol = get_number_of_symbol(a4, __s1);
  if (number_of_symbol == -1)
  {
    free_information(a1, a8);
    attribute_free_all(a6, a8);
LABEL_15:
    result = 1;
    goto LABEL_16;
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
      v24 = *v20;
      for (i = *(*v20 + 24); i; i = *(i + 24))
      {
        v24 = i;
      }

      *(v24 + 24) = a1;
      goto LABEL_15;
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
LABEL_13:
      result = 0;
    }
  }

LABEL_16:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_char_kind(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  result = mbs2sjis(a1, a2, 1, v4, 256);
  if (result != -1)
  {
    result = get_char_kind_hash(v4[0], v4[1]);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *unknown_info_create(const char *a1, const char *a2, const char *a3, const char *a4, void *a5)
{
  info = create_info(0, a1, a5);
  if (info)
  {
    v10 = create_info(1, a2, a5);
    info[2] = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = v10;
    *(v10 + 16) = 0;
    v12 = create_info(2, a3, a5);
    *(v11 + 16) = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    *(v12 + 16) = 0;
    v14 = create_info(3, a4, a5);
    *(v13 + 16) = v14;
    if (v14)
    {
      *(v14 + 16) = 0;
    }

    else
    {
LABEL_6:
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

uint64_t non_lookup_tag(uint64_t a1, int a2, int a3, const char *a4, const char *a5, uint64_t **a6, void *a7, uint64_t a8, void *a9)
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

uint64_t look_up_unknown_word(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, void *a5)
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
    memcpy(result, a1, v6);
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

    memcpy(a1, v8, v6);

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

  v3 = *(a1 + 8);
  if (v3 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 36;
  do
  {
    v9 = v7;
    if (v8 == 36 || v8 == 33)
    {
      v7 += 4;
      if (v7 <= v3 && compare_tag(a1, v9, START_TAG_SAPI_PRN) == 1)
      {
        v10 = (a2 + v9);
        v8 = 34;
        *v10 = 34;
        v11 = v10 + 1;
        v12 = v9 + 2;
        if (v7 > v9 + 2)
        {
          v12 = v7;
        }

        memset(v11, 35, (v12 - v9 - 2) + 1);
        v5 = 1;
        goto LABEL_13;
      }

      if (mbs_one_char(a1, v9) == 30)
      {
        v7 = v9 + 1;
        v8 = 34;
        *(a2 + v9) = 34;
LABEL_13:
        v6 = v9;
        goto LABEL_23;
      }

      v8 = 33;
    }

    else
    {
      if (v5 == 1)
      {
        v7 += 4;
        if (v7 <= v3 && compare_tag(a1, v9, END_TAG_SAPI_PRN) == 1)
        {
          v5 = 0;
          *(a2 + v9) = 606282531;
          v8 = 36;
          goto LABEL_23;
        }
      }

      if (mbs_one_char(a1, v9) == 31)
      {
        v7 = v9 + 1;
        v8 = 36;
        *(a2 + v9) = 36;
        goto LABEL_23;
      }

      v8 = 35;
    }

    *(a2 + v9) = v8;
    v7 = v9 + 1;
LABEL_23:
    v3 = *(a1 + 8);
  }

  while (v7 < v3);
  result = 1;
  if ((v8 & 0xFFFFFFFE) == 0x22 && v6 < v7)
  {
    memset((a2 + v6), 33, (v7 + ~v6) + 1);
    return 1;
  }

  return result;
}

uint64_t look_up_dictionary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t **a5, uint64_t pron_from_grapheme, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14)
{
  v18 = a14;
  v211 = *MEMORY[0x1E69E9840];
  v203[0] = 0;
  v203[1] = 0;
  v202 = 0;
  v201 = 0;
  v199 = 0;
  v200 = 0;
  __s1 = marker_getMarkerArgStr(1u);
  v197 = *(a8 + 184);
  v198 = *(a8 + 192);
  LOWORD(v199) = *(a8 + 208);
  HIDWORD(v199) = *(a8 + 212);
  bzero(v204, 0x3C0uLL);
  v19 = heap_Alloc(*(a8 + 24), 1024);
  v20 = heap_Alloc(*(a8 + 24), 1025);
  v21 = heap_Alloc(*(a8 + 24), 1025);
  v22 = 0;
  v23 = 0;
  v196 = v21;
  if (!v19 || !v20)
  {
    LODWORD(pron_from_grapheme) = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_225;
  }

  v186 = a5;
  v187 = pron_from_grapheme;
  LODWORD(pron_from_grapheme) = 0;
  v24 = 0;
  v25 = 0;
  if (v21)
  {
    v194 = v20;
    for (i = 0; i != 120; ++i)
    {
      v27 = heap_Alloc(*(a8 + 24), 80);
      v204[i] = v27;
      if (!v27)
      {
        v23 = 0;
        LODWORD(pron_from_grapheme) = 0;
        v22 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_225;
      }
    }

    v28 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v24 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v29 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v25 = v28;
    v22 = v29;
    v23 = 0;
    if (!v28)
    {
      LODWORD(pron_from_grapheme) = 0;
      goto LABEL_225;
    }

    if (!v24 || !v29)
    {
      LODWORD(pron_from_grapheme) = 0;
      goto LABEL_225;
    }

    v182 = v28;
    if (!mark_tag_state(a2, v28))
    {
      v23 = 0;
      goto LABEL_25;
    }

    v179 = (a3 + 68);
    if (*(a3 + 68))
    {
      info = create_info(0, "", *(a8 + 24));
      if (info)
      {
        v31 = info;
        v32 = create_info(1, v179, *(a8 + 24));
        pron_from_grapheme = v32;
        v31[2] = v32;
        if (!v32)
        {
          free_information(v31, *(a8 + 24));
          v23 = 0;
          goto LABEL_210;
        }

        v176 = v19;
        *(v32 + 16) = 0;
        v33 = create_info(2, " ", *(a8 + 24));
        *(pron_from_grapheme + 16) = v33;
        if (!v33 || (v34 = v33, *(v33 + 16) = 0, v35 = create_info(3, "0", *(a8 + 24)), (*(v34 + 16) = v35) == 0))
        {
          free_information(v31, *(a8 + 24));
          v23 = 0;
          LODWORD(pron_from_grapheme) = 0;
          goto LABEL_209;
        }

        *(v35 + 16) = 0;
        v19 = v176;
        if (add_info_to_table(v31, 0, 0, v186, v187, 0, a3, *(a8 + 24)))
        {
          goto LABEL_17;
        }

        free_information(v31, *(a8 + 24));
      }

      v23 = 0;
      LODWORD(pron_from_grapheme) = 0;
      goto LABEL_210;
    }

LABEL_17:
    LODWORD(v36) = *(a2 + 8);
    if (v36 < 1)
    {
      v20 = v194;
    }

    else
    {
      v37 = 0;
      v20 = v194;
      do
      {
        *(v24 + v37) = 0;
        *(v22 + v37++) = 0;
        v36 = *(a2 + 8);
      }

      while (v37 < v36);
    }

    if (*(a3 + 132) != 1)
    {
      v23 = 0;
      goto LABEL_68;
    }

    v23 = heap_Alloc(*(a8 + 24), v36);
    if (v23)
    {
      LODWORD(v38) = *(a2 + 8);
      v39 = v182;
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
            v39 = v182;
            if (char_kind == 4)
            {
              v41 = -1;
            }

            else
            {
              v41 = char_kind;
            }
          }

          *(v23 + v40++) = v41;
          v38 = *(a2 + 8);
        }

        while (v40 < v38);
      }

      modify_comma(v23, v38, *(a8 + 24));
      v43 = *(a2 + 8);
      if (v43 >= 1)
      {
        v176 = v19;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v46 = (v23 + v44);
          if (v44 == v43 - 1)
          {
            break;
          }

          v48 = v46[1];
          v47 = *v46;
          if (v48 != v47)
          {
            goto LABEL_60;
          }

          v49 = v44 - v45;
          if (v48 == 1 && v49 > 30)
          {
            goto LABEL_61;
          }

          if ((v48 & 0xFE) == 2 && v49 > 14)
          {
            goto LABEL_61;
          }

          ++v44;
LABEL_65:
          if (v44 >= v43)
          {
            v18 = a14;
            v19 = v176;
            goto LABEL_67;
          }
        }

        v47 = *v46;
LABEL_60:
        LOBYTE(v48) = v47;
        if (v47 <= 0xFD)
        {
LABEL_61:
          pron_from_grapheme = get_pron_from_grapheme(a2, v45, v44, v48, *(a8 + 24));
          if (!pron_from_grapheme)
          {
            heap_Free(*(a8 + 24), v23);
            v23 = 0;
            goto LABEL_208;
          }

          v52 = non_lookup_tag(a2, v45, v44, Dtype[*v46], pron_from_grapheme, v186, v187, a3, *(a8 + 24));
          v53 = *(a8 + 24);
          if (!v52)
          {
            heap_Free(v53, v23);
            heap_Free(*(a8 + 24), pron_from_grapheme);
            v23 = 0;
            LODWORD(pron_from_grapheme) = 0;
LABEL_208:
            v18 = a14;
LABEL_209:
            v19 = v176;
LABEL_210:
            v20 = v194;
            goto LABEL_224;
          }

          heap_Free(v53, pron_from_grapheme);
          v43 = *(a2 + 8);
        }

        v45 = ++v44;
        goto LABEL_65;
      }

LABEL_67:
      v20 = v194;
LABEL_68:
      heap_Free(*(a8 + 24), v23);
      if ((mbs_copy(v203, a2, 0, *(a2 + 8), *(a8 + 24)) & 0x80000000) != 0)
      {
        v23 = 0;
        LODWORD(pron_from_grapheme) = 0;
        goto LABEL_223;
      }

      if (a13 != 1)
      {
        mbs_normalize(v203);
        __s = 0;
        v54 = 0;
        LOWORD(v55) = 0;
        goto LABEL_71;
      }

      if (a10)
      {
        v117 = 0;
        v118 = a11;
        v119 = (a9 + 40);
        v120 = __s1;
        while (*(v119 - 2) <= *(a11 + 32))
        {
          if (*(v119 - 5) == 21)
          {
            v120 = (*(a12 + 8) + *v119);
          }

          ++v117;
          v119 += 16;
          if (a10 == v117)
          {
            __s1 = v120;
            v168 = a10;
            goto LABEL_188;
          }
        }

        __s1 = v120;
        v168 = v117;
      }

      else
      {
        v168 = 0;
        v118 = a11;
      }

LABEL_188:
      v23 = 2350915594;
      v121 = *(a8 + 24);
      MarkerArgStr = marker_getMarkerArgStr(1u);
      v123 = strlen(MarkerArgStr);
      pron_from_grapheme = heap_Calloc(v121, 1, (v123 + 1));
      if (!pron_from_grapheme)
      {
        v20 = v194;
        goto LABEL_223;
      }

      v124 = marker_getMarkerArgStr(1u);
      __s = pron_from_grapheme;
      strcpy(pron_from_grapheme, v124);
      mbs_normalize(v203);
      v125 = *(v118 + 32);
      v126 = *(a9 + 32);
      v54 = heap_Calloc(*(a8 + 24), 1, 264);
      if (!v54)
      {
        LODWORD(pron_from_grapheme) = 0;
        v20 = v194;
        goto LABEL_220;
      }

      v127 = v125 - v126;
      v178 = v19;
      if (v168 >= a10)
      {
        LODWORD(v55) = 0;
        v58 = *(a2 + 8);
        if (v58 <= 0)
        {
          v20 = v194;
          v56 = a3;
          v57 = a4;
LABEL_73:
          v183 = v54;
          if (v58 >= 1)
          {
            v59 = 0;
            v159 = v57 + 1;
            if (v55)
            {
              v60 = a13 == 1;
            }

            else
            {
              v60 = 0;
            }

            v61 = !v60;
            v172 = v61;
            v163 = v55;
            v184 = 1;
            v62 = v182;
            v170 = v18;
            v177 = v19;
            do
            {
              v208 = 0;
              if (v57 >= 1)
              {
                v63 = 0;
                v180 = 4 * v59;
                v181 = v59;
                v165 = 2 * v59;
                v64 = 1;
                while (1)
                {
                  v65 = v64 + v59;
                  if (v64 + v59 > *(a2 + 8))
                  {
                    break;
                  }

                  v66 = v65 - 1;
                  if (*(v62 + v66) != 33 || *(v24 + v66) == 1 || *(v22 + v66) == 1)
                  {
                    v20 = v194;
                    v62 = v182;
LABEL_169:
                    v58 = *(a2 + 8);
                    v56 = a3;
                    v57 = a4;
                    goto LABEL_170;
                  }

                  __s1a = v63;
                  v67 = v64;
                  v68 = v59;
                  if (mbs2sjis(a2, v59, v64, v210, 80) == -1 || (v69 = v68, v70 = v67, mbs2sjis(v203, v69, v67, v207, 80) == -1))
                  {
                    LODWORD(pron_from_grapheme) = 0;
                    v23 = 0;
                    goto LABEL_217;
                  }

                  if (!*(v203[0] + v180))
                  {
                    v20 = v194;
                    v62 = v182;
                    v59 = v181;
                    goto LABEL_169;
                  }

                  v71 = __s;
                  if (a13 != 1)
                  {
                    v71 = "normal";
                  }

                  if (v172)
                  {
                    v72 = v71;
                  }

                  else
                  {
                    v73 = 2 * v65;
                    v74 = v163;
                    v75 = v183;
                    v20 = v194;
                    while (v165 < *(v75 + 16) || v73 > *(v75 + 18))
                    {
                      v75 += 24;
                      if (!--v74)
                      {
                        v18 = v170;
                        v72 = __s;
                        v19 = v177;
                        goto LABEL_105;
                      }
                    }

                    v76 = *v75;
                    v160 = strlen(__s);
                    v77 = strlen(*v75);
                    if (v160 >= v77)
                    {
                      v78 = __s;
                    }

                    else
                    {
                      v78 = heap_Realloc(*(a8 + 24), __s, (v77 + 1));
                      if (!v78)
                      {
                        LODWORD(pron_from_grapheme) = 0;
                        v23 = 2350915594;
                        v18 = v170;
                        v19 = v177;
                        v20 = v194;
                        v141 = v183;
                        goto LABEL_219;
                      }

                      v76 = *v75;
                    }

                    v72 = strcpy(v78, v76);
                    v18 = v170;
                    v19 = v177;
                  }

                  v20 = v194;
LABEL_105:
                  __s = v72;
                  v79 = lookup_JPARSER(&v197, v207, &v202, &v201, v72);
                  if (v79 == -1)
                  {
                    if (__s1a)
                    {
                      v85 = v209[v184++];
                      v59 = v181;
                      if (v85)
                      {
                        v84 = v85 - 48;
                        v63 = 1;
                      }

                      else
                      {
                        v63 = 1;
                        v84 = v159;
                      }

                      v62 = v182;
                    }

                    else
                    {
                      v63 = 0;
                      v84 = v67 + 1;
                      v62 = v182;
                      v59 = v181;
                    }
                  }

                  else
                  {
                    CopyOutput_JPARSER(v204, 120, v202, v79, v201);
                    if (__s1a)
                    {
                      if (v209[v184])
                      {
                        v84 = v209[v184] - 48;
                      }

                      else
                      {
                        v84 = a4 + 1;
                      }

                      ++v184;
                      v59 = v181;
                    }

                    else
                    {
                      v86 = 0;
                      v87 = v204[0];
                      v59 = v181;
                      while (*(v204[0] + v86) && *(v204[0] + v86) != 44)
                      {
                        ++v86;
                      }

                      v208 = *(v204[0] + v86);
                      if (!v208)
                      {
                        goto LABEL_123;
                      }

                      v88 = 0;
                      do
                      {
                        v89 = *(v87 + v86 + 1 + v88);
                        v209[v88++] = v89;
                      }

                      while (v89);
                      if (v88)
                      {
                        v84 = v209[0] - 48;
                        *(v87 + v86) = 0;
                        v184 = 1;
                      }

                      else
                      {
LABEL_123:
                        v184 = 1;
                        v84 = v159;
                      }
                    }

                    v62 = v182;
                    if (*v204[0])
                    {
                      if (*v179)
                      {
                        v90 = v59 + 1;
                      }

                      else
                      {
                        v90 = v59;
                      }

                      v161 = v90;
                      if (v210[0])
                      {
                        v91 = create_info(0, v210, *(a8 + 24));
                        if (!v91)
                        {
                          goto LABEL_228;
                        }

                        v157 = v84;
                        v158 = v70 - 1;
                        *(v91 + 16) = 0;
                        v96 = v204;
                        v97 = 1;
                        __s1b = v91;
                        v98 = v91;
                        do
                        {
                          v99 = *v96;
                          if (!*v96 || !*v99)
                          {
                            v155 = off_1E81A9718[v97];
                            log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", v92, v93, v94, v95, "empty field");
                            free_information(__s1b, *(a8 + 24));
LABEL_186:
                            LODWORD(pron_from_grapheme) = 0;
                            v23 = 2350915584;
LABEL_215:
                            v18 = v170;
                            goto LABEL_216;
                          }

                          v100 = create_info(v97, v99, *(a8 + 24));
                          v23 = v100;
                          *(v98 + 16) = v100;
                          if (!v100)
                          {
                            free_information(__s1b, *(a8 + 24));
                            LODWORD(pron_from_grapheme) = 0;
                            goto LABEL_215;
                          }

                          *(v100 + 16) = 0;
                          ++v97;
                          ++v96;
                          v98 = v100;
                        }

                        while (v97 != 3);
                        if (!*v205)
                        {
                          goto LABEL_138;
                        }

                        v101 = create_info(3, v205, *(a8 + 24));
                        *(v23 + 16) = v101;
                        v18 = v170;
                        if (v101)
                        {
                          *(v101 + 16) = 0;
                          v23 = v101;
LABEL_138:
                          v102 = 0;
                          v103 = 4;
                          v104 = 3;
                          while (2)
                          {
                            v105 = *&v206[v102];
                            if (!*v105 && !**&v206[v102 + 8])
                            {
                              v18 = v170;
LABEL_164:
                              if (add_info_to_table(__s1b, v161, v158, v186, v187, 0, a3, *(a8 + 24)))
                              {
                                v63 = 1;
                                v19 = v177;
                                v20 = v194;
                                v62 = v182;
                                v59 = v181;
                                v84 = v157;
                                goto LABEL_161;
                              }

                              v153 = *(a8 + 24);
                              v154 = __s1b;
                              goto LABEL_247;
                            }

                            v106 = 24 * (v104 / 3);
                            if (v106 - 24 == v102)
                            {
                              v107 = v103;
                              if (!add_info_to_table(__s1b, v161, v158, v186, v187, 0, a3, *(a8 + 24)))
                              {
                                free_information(__s1b, *(a8 + 24));
LABEL_251:
                                LODWORD(pron_from_grapheme) = 0;
                                v23 = 0;
                                goto LABEL_215;
                              }

                              if (!v210[0])
                              {
                                log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", v108, v109, v110, v111, "empty field");
                                goto LABEL_186;
                              }

                              v112 = create_info(0, v210, *(a8 + 24));
                              if (!v112)
                              {
                                goto LABEL_251;
                              }

                              *(v112 + 16) = 0;
                              v105 = *&v206[v102];
                              __s1b = v112;
                              v23 = v112;
                              v18 = v170;
                              v103 = v107;
                              if (!v105)
                              {
LABEL_245:
                                v156 = off_1E81A9718[v103 - 3 * (v104 / 3)];
                                log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", v92, v93, v94, v95, "empty field");
                                free_information(__s1b, *(a8 + 24));
                                LODWORD(pron_from_grapheme) = 0;
                                v23 = 2350915584;
                                goto LABEL_216;
                              }

LABEL_151:
                              if (!*v105)
                              {
                                goto LABEL_245;
                              }

                              v113 = v103;
                              v115 = v103 - 3 * (v104 / 3);
                              v114 = *(a8 + 24);
LABEL_153:
                              v116 = create_info(v115, v105, v114);
                              *(v23 + 16) = v116;
                              if (!v116)
                              {
                                break;
                              }

                              v23 = v116;
                              v103 = v113;
                              *(v116 + 16) = 0;
                            }

                            else
                            {
                              if (v106 - 8 != v102)
                              {
                                v18 = v170;
                                goto LABEL_151;
                              }

                              v18 = v170;
                              if (*v105)
                              {
                                v113 = v103;
                                v114 = *(a8 + 24);
                                v115 = 3;
                                goto LABEL_153;
                              }
                            }

                            ++v104;
                            v102 += 8;
                            ++v103;
                            if (v102 == 928)
                            {
                              goto LABEL_164;
                            }

                            continue;
                          }
                        }

                        v153 = *(a8 + 24);
                        v154 = __s1b;
LABEL_247:
                        free_information(v154, v153);
                        LODWORD(pron_from_grapheme) = 0;
                        v23 = 0;
LABEL_216:
                        v19 = v177;
LABEL_217:
                        v20 = v194;
                      }

                      else
                      {
                        log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", v80, v81, v82, v83, "empty field");
                        LODWORD(pron_from_grapheme) = 0;
                        v23 = 2350915584;
                      }

LABEL_218:
                      v141 = v183;
                      if (v183)
                      {
LABEL_219:
                        heap_Free(*(a8 + 24), v141);
                      }

LABEL_220:
                      if (a13 == 1 && __s)
                      {
                        heap_Free(*(a8 + 24), __s);
                      }

LABEL_223:
                      mbs_free(v203, *(a8 + 24));
LABEL_224:
                      v25 = v182;
                      goto LABEL_225;
                    }

                    v63 = 1;
                  }

LABEL_161:
                  v64 = v84;
                  if (v84 > a4)
                  {
                    goto LABEL_169;
                  }
                }

                v20 = v194;
                goto LABEL_169;
              }

LABEL_170:
              ++v59;
            }

            while (v59 < v58);
          }

          if (*(v56 + 136) && !look_up_unknown_word(a2, v56, v186, v187, *(a8 + 24)))
          {
LABEL_228:
            LODWORD(pron_from_grapheme) = 0;
            v23 = 0;
          }

          else
          {
            v23 = 0;
            LODWORD(pron_from_grapheme) = 1;
          }

          goto LABEL_218;
        }

        v183 = v54;
        v171 = v18;
        LOWORD(v58) = 2 * v58;
        v139 = v125 - v126;
        v20 = v194;
        v56 = a3;
        v57 = a4;
        v132 = __s1;
      }

      else
      {
        v183 = v54;
        v171 = v18;
        v173 = 0;
        v128 = (v125 - v126);
        v129 = *(a9 + 32);
        v130 = (a9 + (v168 << 6) + 40);
        v131 = a10 - v168;
        v166 = 10;
        v162 = v127;
        v167 = v127;
        v132 = __s1;
        v164 = v127;
        do
        {
          v133 = *(v130 - 2);
          if (v128 + 2 * *(a2 + 8) < (v133 - v129))
          {
            break;
          }

          if (*(v130 - 5) == 21)
          {
            v185 = v129;
            v134 = *(a12 + 8);
            v169 = *v130;
            __s1c = v132;
            if (!strcmp(v132, (v134 + v169)))
            {
              v19 = v178;
              v132 = __s1c;
              v128 = v164;
              v129 = v185;
            }

            else
            {
              v135 = v173;
              v136 = v183;
              v129 = v185;
              if (v173 >= v166)
              {
                v137 = heap_Realloc(*(a8 + 24), v183, 24 * v166 + 264);
                if (!v137)
                {
                  LODWORD(pron_from_grapheme) = 0;
                  v18 = v171;
                  v141 = v183;
                  v19 = v178;
                  v20 = v194;
                  goto LABEL_219;
                }

                v166 += 10;
                v134 = *(a12 + 8);
                v133 = *(v130 - 2);
                v136 = v137;
                v129 = *(a9 + 32);
                v135 = v173;
              }

              v128 = v164;
              v183 = v136;
              v138 = v136 + 24 * v135;
              *v138 = __s1c;
              v132 = (v134 + v169);
              *(v138 + 8) = v134 + v169;
              *(v138 + 16) = v167;
              v167 = v133 - v129;
              *(v138 + 18) = v133 - v129;
              v173 = (v135 + 1);
              v19 = v178;
            }
          }

          v130 += 16;
          --v131;
        }

        while (v131);
        v58 = *(a2 + 8);
        v139 = v167;
        v20 = v194;
        if (v128 + 2 * v58 <= v167)
        {
          v56 = a3;
          v57 = a4;
          v55 = v173;
          goto LABEL_231;
        }

        LODWORD(v55) = v173;
        if (v173 >= v166)
        {
          v151 = v132;
          v152 = heap_Realloc(*(a8 + 24), v183, 24 * v166 + 264);
          if (!v152)
          {
            LODWORD(pron_from_grapheme) = 0;
            v18 = v171;
            goto LABEL_218;
          }

          v58 = 2 * *(a2 + 8);
          v183 = v152;
          v56 = a3;
          v57 = a4;
          v132 = v151;
          LODWORD(v55) = v173;
          v127 = v162;
          v139 = v167;
        }

        else
        {
          LOWORD(v58) = 2 * v58;
          v56 = a3;
          v57 = a4;
          v127 = v162;
        }
      }

      v140 = v183 + 24 * v55;
      *v140 = v132;
      *(v140 + 8) = 0;
      *(v140 + 16) = v139;
      *(v140 + 18) = v58 + v127;
      v55 = (v55 + 1);
LABEL_231:
      v54 = v183;
      if (!v55)
      {
        LOWORD(v55) = 0;
        v18 = v171;
        goto LABEL_72;
      }

      v145 = 0;
      v146 = v55;
      do
      {
        v147 = v145 + 1;
        if (v147 < v146 && (v148 = (v54 + 24 * v147), (v149 = v148[1]) != 0))
        {
          v174 = v55;
          v150 = (v54 + 24 * v145);
          if (!strcmp(*v150, v149))
          {
            memmove(v150, v148, 24 * (v146 + (~v145 | 0x1FFF0000)));
            v55 = (v174 - 1);
            v20 = v194;
            v54 = v183;
          }

          else
          {
            ++v145;
            v20 = v194;
            v54 = v183;
            v55 = v174;
          }
        }

        else
        {
          ++v145;
        }

        v146 = v55;
      }

      while (v145 < v55);
      v18 = v171;
      v19 = v178;
LABEL_71:
      v56 = a3;
      v57 = a4;
LABEL_72:
      v58 = *(a2 + 8);
      goto LABEL_73;
    }

LABEL_25:
    LODWORD(pron_from_grapheme) = 0;
    goto LABEL_224;
  }

LABEL_225:
  heap_Free(*(a8 + 24), v25);
  heap_Free(*(a8 + 24), v24);
  heap_Free(*(a8 + 24), v22);
  heap_Free(*(a8 + 24), v19);
  heap_Free(*(a8 + 24), v20);
  heap_Free(*(a8 + 24), v196);
  for (j = 0; j != 120; ++j)
  {
    heap_Free(*(a8 + 24), v204[j]);
  }

  *v18 = pron_from_grapheme;
  v143 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sapi_prn_tag_conv_replace(uint64_t a1, char *__s, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v6 = strlen(__s);
  v7 = mbs_create(&v28, v6, __s, *(a3 + 24));
  if ((v7 & 0x80000000) == 0)
  {
    *(a1 + 8) = 0;
    v8 = heap_Alloc(*(a3 + 24), v29);
    if (!v8)
    {
      v7 = 2350915594;
      goto LABEL_48;
    }

    if (!mark_tag_state(&v28, v8))
    {
      v7 = 2350915601;
      goto LABEL_48;
    }

    if (v29 < 1)
    {
      goto LABEL_48;
    }

    v27 = 0;
    v9 = 0;
LABEL_6:
    v10 = mbs_one_char(&v28, v9);
    if (v10 <= 0x20 && ((1 << v10) & 0x100002400) != 0)
    {
      goto LABEL_10;
    }

    v12 = v9 + 15 >= v29 ? v29 - v9 : 16;
    if (v12 < 1)
    {
      goto LABEL_10;
    }

    v13 = 0;
    v14 = v12 + 1;
    while (mbs_one_char(&v28, v9 + v13) != 30)
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
        v17 = mbs_one_char(&v28, v9 + v16);
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
      v7 = mbs_add_str(a1, &v28, v9, 1, 0, *(a3 + 24));
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

    v19 = v27 == 1;
    while (1)
    {
      if (mbs2sjis(&v28, v9, v16, __sa, 1000) == -1)
      {
        v7 = 2350915840;
        goto LABEL_48;
      }

      v20 = strlen(__sa);
      if (v20 < 1)
      {
        if (v19)
        {
LABEL_44:
          v7 = mbs_add_str(a1, &v28, v9, v16, 0, *(a3 + 24));
          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_48;
          }

          v9 = v9 - 1 + v16;
          v27 = 1;
LABEL_11:
          if (++v9 >= v29)
          {
LABEL_48:
            heap_Free(*(a3 + 24), v8);
            mbs_free(&v28, *(a3 + 24));
            break;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v21 = v20 & 0x7FFFFFFF;
        v22 = __sa;
        while (1)
        {
          v23 = *v22++;
          if ((v23 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_44;
          }
        }
      }

      v19 = 0;
      if (v16-- < 2)
      {
        v27 = 0;
        goto LABEL_10;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v7;
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
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 192) = 0u;
  *(v24 + 208) = 0u;
  *(v24 + 224) = 0;
  *(v24 + 160) = 0u;
  *(v24 + 176) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 8) = a1;
  *(v24 + 16) = a2;
  v26 = v35;
  *(v24 + 24) = *(v35 + 8);
  *(v24 + 32) = v26;
  *(v24 + 216) = a11;
  *(v24 + 184) = a6;
  *(v24 + 192) = a7;
  *(v24 + 200) = a8;
  *(v24 + 208) = a9;
  *(v24 + 212) = a10;
  *(v24 + 48) = get_number_of_symbol(&SF_symbol_file, "SENTENCE");
  number_of_symbol = get_number_of_symbol(&SF_symbol_file, &byte_1E81A861C);
  *(v25 + 56) = number_of_symbol;
  if ((number_of_symbol & 0x8000000000000000) == 0)
  {
    v28 = 3;
    v29 = &unk_1E81A8850;
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

uint64_t jpj_sysdct_CharLookup(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, unsigned int a6, int a7)
{
  v63 = *MEMORY[0x1E69E9840];
  __c[0] = 0;
  v59 = 0;
  v58 = 0;
  *a5 = 0;
  *(a5 + 4) = 0u;
  v12 = (a5 + 4);
  *(a5 + 20) = 0u;
  *(a5 + 36) = 0u;
  *(a5 + 52) = 0u;
  *(a5 + 68) = 0;
  *(a5 + 70) = 0;
  *(a5 + 76) = 0u;
  v13 = (a5 + 76);
  *(a5 + 72) = 0;
  *(a5 + 92) = 0u;
  *(a5 + 108) = 0u;
  *(a5 + 124) = 0u;
  *(a5 + 140) = 0u;
  *(a5 + 156) = 0u;
  *(a5 + 172) = 0u;
  *(a5 + 188) = 0u;
  *(a5 + 204) = 0u;
  *(a5 + 220) = 0u;
  *(a5 + 236) = 0u;
  *(a5 + 252) = 0u;
  *(a5 + 332) = 0;
  *(a5 + 268) = 0u;
  *(a5 + 284) = 0u;
  *(a5 + 300) = 0u;
  *(a5 + 316) = 0u;
  *(a5 + 334) = 0;
  v14 = strlen(__s);
  v15 = v14;
  if ((v14 & 0xFFC0) != 0)
  {
    v16 = 64;
  }

  else
  {
    v16 = v14;
  }

  __memmove_chk();
  v62[v16] = 0;
  if (!v15)
  {
    v18 = 0;
    do
    {
      v19 = v18;
      v20 = __s[v18++];
    }

    while (v20 == 32);
    memmove(v12, __s, v19);
    v21 = 0;
    goto LABEL_46;
  }

  if (v16 > a6)
  {
    v62[a6] = 0;
  }

  if (v62[0] > 0x7Eu)
  {
    v17 = 2;
    *a5 = 2;
    *(a5 + 4) = *v62;
    *(a5 + 6) = 0;
  }

  else
  {
    *a5 = 3;
    *(a5 + 4) = v62[0];
    *(a5 + 5) = 0;
    v17 = 1;
  }

  *(a5 + 70) = v17;
  if (!*(a3 + 28))
  {
    *&__c[1] = 0;
    v27 = lookup_JPARSER(a3, v12, &__c[1], __c, "normal");
    if (v27 != -1)
    {
      v28 = v27;
      memmove(v13, *&__c[1], v27);
      v13[v28] = 0;
      *(a5 + 334) = v28;
      v29 = strchr(v13, __c[0]);
      if (v29)
      {
        *v29 = 0;
        v34 = v29 + 1;
        v35 = strchr(v29 + 1, __c[0]);
        if (v35)
        {
          *v35 = 0;
          v36 = strlen(v34);
          *(a5 + 334) = v36;
          memmove(v13, v34, v36);
          v13[*(a5 + 334)] = 0;
LABEL_28:
          v21 = 0;
          goto LABEL_29;
        }

        v37 = 1812;
      }

      else
      {
        v37 = 1813;
      }

      v21 = 2350915584;
      v39 = a2;
      v40 = *(a1 + 32);
      goto LABEL_39;
    }

    *a5 = 0;
    goto LABEL_28;
  }

  v58 = 0;
  v21 = (*(*a3 + 96))(*(a3 + 8), *(a3 + 16), "char", v12, &v59, &v58, __c);
  if ((v21 & 0x80000000) != 0 || !v58)
  {
    goto LABEL_45;
  }

  __sa = 0;
  v56 = 0;
  *&__c[1] = 0u;
  v61 = 0u;
  getDictSolutionJPJ(v58, v59, __c[0], &__sa, &v56 + 1, "normal", 4, &v56, &__c[1]);
  if (!HIWORD(v56) || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*&__c[1]), vceqzq_s64(v61)), xmmword_1C3791520)) & 0xF) != 0)
  {
    log_OutPublic(*(a1 + 32), a2, 1817, 0, v22, v23, v24, v25, v53);
    *a5 = 0;
  }

  else
  {
    v26 = !**&__c[1] || **&__c[1] == 49 && !*(*&__c[1] + 1);
    if (**&__c[9])
    {
      v38 = **&__c[9] != 49 || *(*&__c[9] + 1) != 0;
      if (a7 == 1 && v38)
      {
        goto LABEL_45;
      }
    }

    if (v26)
    {
      if (*__sa == __c[0])
      {
LABEL_45:
        *a5 = 0;
        goto LABEL_46;
      }

      v48 = strlen(__sa);
      memmove(v13, __sa, v48);
      v13[v48] = 0;
      *(a5 + 334) = v48;
      v49 = strchr(v13, __c[0]);
      if (v49)
      {
        *v49 = 0;
        v50 = v49 + 1;
        v51 = strchr(v49 + 1, __c[0]);
        if (v51)
        {
          *v51 = 0;
          v52 = strlen(v50);
          *(a5 + 334) = v52;
          v45 = v52;
          v46 = v13;
          v47 = v50;
          goto LABEL_52;
        }

        v21 = 2350915584;
        v39 = a2;
        v40 = *(a1 + 32);
        v37 = 1812;
      }

      else
      {
        v21 = 2350915584;
        v39 = a2;
        v40 = *(a1 + 32);
        v37 = 1813;
      }

LABEL_39:
      log_OutPublic(v40, v39, v37, 0, v30, v31, v32, v33, v53);
      goto LABEL_46;
    }

    v43 = v61.i64[0];
    if (*v61.i64[0])
    {
      v44 = strlen(v61.i64[0]);
      *(a5 + 334) = v44;
      v45 = v44;
      v46 = v13;
      v47 = v43;
LABEL_52:
      memmove(v46, v47, v45);
      v13[*(a5 + 334)] = 0;
    }
  }

LABEL_29:
  if (*a5 && *v13 == 35)
  {
    *(a5 + 76) = atoi((a5 + 77));
    *(a5 + 77) = 0;
    *(a5 + 334) = 1;
  }

LABEL_46:
  v41 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t DoJPJSpell(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v16 = 0;
    for (i = 0; i < a5; v16 = i)
    {
      memset(v30, 0, sizeof(v30));
      v21 = jpj_sysdct_CharLookup(a1, a2, a3, (a4 + i), v30, 0x16u, a11);
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

uint64_t DoJPJLatin(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char **a5)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v7 = jpj_sysdct_CharLookup(a1, a2, a3, a4, v12, 0x16u, 0);
  if (!v7)
  {
    v8 = strlen(&v12[4] + 12);
    v9 = heap_Alloc(*(a1 + 8), (v8 + 3));
    *a5 = v9;
    if (v9)
    {
      strcpy(v9, &v12[4] + 12);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

size_t getDictSolutionJPJ(unsigned int a1, uint64_t a2, int a3, const char **a4, _WORD *a5, const char *a6, int a7, _WORD *a8, __int128 *a9)
{
  v11 = a9;
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (!a1)
  {
    LOWORD(v14) = 0;
    v17 = 0;
    v25 = &v40;
    goto LABEL_40;
  }

  v29 = a8;
  v30 = a4;
  v31 = 0;
  v14 = 0;
  v32 = 0;
  v33 = a7 != 0;
  v34 = a1;
  while (1)
  {
    v36 = 0u;
    v37 = 0u;
    v15 = *(a2 + 8 * v14);
    v16 = strlen(v15);
    *a5 = v16;
    v17 = 0;
    if (v16)
    {
      v18 = a7 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = *(a2 + 8 * v14);
        if (!*(&v36 + v23))
        {
          *(&v36 + v23) = &v24[v17];
        }

        if (a7 == 1 && !v17 && *v24 != a3)
        {
          break;
        }

        if (v24[v17] == a3)
        {
          ++v23;
          v24[v17] = 0;
        }

        ++v17;
        if (v22)
        {
          goto LABEL_30;
        }

        if (v23 + 1 == a7)
        {
          v15 = (*(a2 + 8 * v14) + v17);
LABEL_30:
          v22 = 1;
          goto LABEL_31;
        }

        v22 = 0;
LABEL_31:
        v19 = a7 != v23;
        if (*a5 <= v17 || a7 == v23)
        {
          goto LABEL_9;
        }
      }

      v17 = 1;
      goto LABEL_30;
    }

    v19 = v33;
LABEL_9:
    if (v19)
    {
      *a5 = 0;
    }

    if (*v15)
    {
      break;
    }

    v40 = v36;
    v41 = v37;
    v31 = v14;
    v32 = v17;
LABEL_36:
    if (++v14 >= v34)
    {
      v25 = &v40;
      v11 = a9;
      a4 = v30;
      a8 = v29;
      LOWORD(v14) = v31;
      v17 = v32;
      goto LABEL_40;
    }
  }

  v20 = strchr(v15, 44);
  while (1)
  {
    if (v20)
    {
      *v20 = 0;
    }

    if (!strcmp(v15, a6))
    {
      break;
    }

    if (v20)
    {
      v21 = v20[1];
      v15 = v20 + 1;
      v20 = strchr(v20 + 1, 44);
      if (v21)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  v38 = v36;
  v39 = v37;
  v25 = &v38;
  v11 = a9;
  a4 = v30;
  a8 = v29;
LABEL_40:
  *a8 = v14;
  *a4 = (*(a2 + 8 * v14) + v17);
  v26 = v25[1];
  *v11 = *v25;
  v11[1] = v26;
  result = strlen(*a4);
  *a5 = result;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t lookup_JPARSER(uint64_t a1, uint64_t a2, const char **a3, unsigned __int8 *a4, const char *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  if (*(a1 + 28))
  {
    v17 = 0;
    if (((*(*a1 + 152))(*(a1 + 8), *(a1 + 16), "word", a2, &v16, &v17, a4, *(a1 + 24)) & 0x80000000) == 0 && v17)
    {
      v18 = 0u;
      v19 = 0u;
      getDictSolutionJPJ(v17, v16, *a4, a3, &v15, a5, 1, &v14, &v18);
LABEL_5:
      result = v15;
      goto LABEL_14;
    }

    if (*(a1 + 28) != 1)
    {
      result = -1;
      goto LABEL_14;
    }

    v17 = 0;
    v12 = (*(*a1 + 96))(*(a1 + 8), *(a1 + 16), "char", a2, &v16, &v17, a4);
    result = -1;
    if ((v12 & 0x80000000) == 0 && v17)
    {
      v18 = 0u;
      v19 = 0u;
      getDictSolutionJPJ(v17, v16, *a4, a3, &v15, a5, 4, &v14, &v18);
      goto LABEL_5;
    }
  }

  else
  {
    v17 = -1;
    v11 = (*(*a1 + 152))(*(a1 + 8), *(a1 + 16), "word", a2, &v16, &v17, a4, *(a1 + 24));
    result = -1;
    if ((v11 & 0x80000000) == 0 && v17 == 1)
    {
      LOWORD(result) = strlen(*v16);
      *a3 = *v16;
      result = result;
    }
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FillFields(uint64_t result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    for (i = (result + 8); ; ++i)
    {
      v8 = (a4 - v6);
      if (a4 <= v6)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        v10 = *(a3 + v6 + v9);
        if (v10 == a5)
        {
          break;
        }

        *(*(result + 8 * v5) + v9++) = v10;
        if (v8 == v9)
        {
          goto LABEL_11;
        }
      }

      *(*(result + 8 * v5) + v9) = 0;
      v6 += v9 + 1;
      if (++v5 == a2)
      {
        return result;
      }
    }

    v8 = 0;
LABEL_11:
    *(*(result + 8 * v5) + v8) = 0;
    for (j = 1; j != 5; ++j)
    {
      if (v5 + j >= a2)
      {
        break;
      }

      v12 = *i++;
      *v12 = 0;
    }
  }

  return result;
}

uint64_t virtual_fseek(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 0:
      goto LABEL_6;
    case 1:
      a3 += *a2;
      goto LABEL_6;
    case 2:
      a3 = *(a1 + 8) + ~a3;
LABEL_6:
      result = 0;
      *a2 = a3;
      return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t virtual_getc(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0 || v2 >= a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*a1 + v2);
  *a2 = v2 + 1;
  return result;
}

uint64_t xcode_Utf16leToWin932(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  v6 = 2370838535;
  if (a2 && a4 && a5)
  {
    if (a3)
    {
      v10 = a2;
      v12 = 0;
      v13 = a3;
      while (*a5 > v12)
      {
        v14 = *v10++;
        v12 += XLIT_chUnicodeWideToSJIS(v14, (a4 + v12), a1, a6);
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      return 2370838537;
    }

    else
    {
      LOWORD(v12) = 0;
LABEL_10:
      v6 = 0;
      *a5 = v12;
    }
  }

  return v6;
}

void *mas_list_insert(void *result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      if (result[5] <= a2[5])
      {
        v4 = a2[1];
        a2[1] = mas_list_insert();
      }

      else
      {
        v3 = a2[2];
        a2[2] = mas_list_insert();
      }

      return a2;
    }

    else
    {
      result[1] = 0;
      result[2] = 0;
    }
  }

  return result;
}

uint64_t lattice_word_print_all(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v37 = *MEMORY[0x1E69E9840];
  appended = ssftstring_Reserve(a3, 64);
  if ((appended & 0x80000000) != 0)
  {
LABEL_27:
    v16 = appended;
    goto LABEL_28;
  }

  v16 = ssftstring_Clear(a3);
  if ((v16 & 0x80000000) == 0 && a5 >= -1)
  {
    v17 = 0;
    v18 = 560;
    if (a6 == 1)
    {
      v18 = 552;
    }

    v33 = a4;
    v34 = v18;
    v32 = (a5 + 2);
    while (1)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[FDP] x=%d", v13, v14, v15, v17);
      v19 = *(a4 + 8 * v17);
      if (v19)
      {
        break;
      }

LABEL_25:
      ++v17;
      a4 = v33;
      if (v17 == v32)
      {
        goto LABEL_28;
      }
    }

    v20 = 0;
    while (1)
    {
      v21 = *(v19 + v34);
      __sprintf_chk(__s, 0, 0x40uLL, "[FDP] (%3d,%3d,%3d)", v17, *(v19 + 580), v20);
      appended = ssftstring_AssignCStr(a3, __s);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v22 = *v19;
      if (*v19)
      {
        for (i = *v22; i; i = *(i + 16))
        {
          appended = ssftstring_AppendCStr(a3, *i);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          appended = ssftstring_AppendCStr(a3, ":");
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          appended = log_mbs_fput_sjis(a3, *(i + 8));
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          appended = ssftstring_AppendCStr(a3, " ");
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (*(v19 + 568) == 1)
        {
          v24 = "<_START>";
        }

        else
        {
          v24 = "<_END>";
        }

        appended = ssftstring_AppendCStr(a3, v24);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      strcpy(__s, "cost_h = ");
      LH_itoa(*(v19 + 8), v35, 0xAu);
      __strcat_chk();
      __strcat_chk();
      LH_itoa(*(v19 + 16), v35, 0xAu);
      __strcat_chk();
      appended = ssftstring_AppendCStr(a3, __s);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v25 = *(a1 + 32);
      v26 = ssftstring_CStr(a3);
      log_OutText(v25, a2, 5, 0, "%s", v27, v28, v29, v26);
      v16 = ssftstring_Clear(a3);
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      ++v20;
      v19 = v21;
      if (!v21)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_28:
  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

void *lattice_word_free_all(void *result, int a2, void *a3)
{
  if (a2 >= -1)
  {
    v4 = result;
    v5 = 0;
    v6 = (a2 + 2);
    do
    {
      v7 = v4[v5];
      if (v7)
      {
        do
        {
          v8 = *(v7 + 552);
          result = heap_Free(a3, v7);
          v7 = v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t add_to_lattice(_DWORD *a1, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v10 = a2;
  if (!a2)
  {
    v18 = heap_Alloc(a10, 584);
    v10 = v18;
    if (!v18)
    {
      return v10;
    }

    *(v18 + 544) = 0;
    *(v18 + 536) = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 552) = 0;
    *(v18 + 568) = 0;
    *(v18 + 560) = 0;
    *v18 = a3;
    if (a3)
    {
      v19 = *a3;
      if (!*a3)
      {
        return 0;
      }

      while (strcmp(*v19, "WCOST"))
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          return 0;
        }
      }

      v31 = mbs_len_bytes(*(v19 + 8)) + 1;
      v32 = heap_Alloc(a10, v31);
      if (!v32)
      {
        heap_Free(a10, v10);
        return 0;
      }

      v33 = v32;
      bzero(v32, v31);
      if (mbs2sjis(*(v19 + 8), 0, *(*(v19 + 8) + 8), v33, v31) == -1)
      {
        return 0;
      }

      *(v10 + 16) = atoi(v33);
      heap_Free(a10, v33);
    }

    else
    {
      *(v18 + 572) = 1;
      *(v18 + 16) = 0;
    }

    *(v10 + 576) = a4;
    *(v10 + 580) = a5;
    v25 = (a6 + 8 * (a4 + 1));
    v26 = *v25;
    if (*v25)
    {
      do
      {
        v27 = v26;
        v26 = *(v26 + 552);
      }

      while (v26);
      v25 = (v27 + 552);
    }

    *v25 = v10;
    v28 = (a7 + 8 * (a4 + 1 + a5));
    v29 = *v28;
    if (*v28)
    {
      do
      {
        v30 = v29;
        v29 = *(v29 + 560);
      }

      while (v29);
      v28 = (v30 + 560);
    }

    *v28 = v10;
  }

  v12 = *(v10 + 544);
  if (v12 > 31)
  {
    return 0;
  }

  if (a1)
  {
    *(v10 + 8 * v12 + 280) = a1;
    if (a1[142] == 1)
    {
      v20 = -1;
    }

    else
    {
      v20 = *(*a1 + 8);
    }

    if (*(v10 + 572) == 1)
    {
      v21 = -1;
    }

    else
    {
      v21 = *(*v10 + 8);
    }

    v22 = connection_table(v20, v21, a9);
    v23 = *(v10 + 544);
    *(v10 + 8 * v23 + 24) = v22;
    *(v10 + 544) = v23 + 1;
  }

  return v10;
}

uint64_t forward_dp(int a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7)
{
  if (a1 >= -1)
  {
    v13 = (a1 + 2);
    v14 = a4;
    v15 = a5;
    do
    {
      *v14++ = 0;
      *v15++ = 0;
      --v13;
    }

    while (v13);
  }

  result = heap_Alloc(a7, 584);
  if (result)
  {
    *(result + 544) = 0;
    *(result + 536) = 0;
    *result = 0;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 568) = 0u;
    *(result + 568) = 1;
    *a4 = result;
    *a5 = result;
    if (a1 <= 0)
    {
      v19 = a1;
LABEL_22:
      v27 = &a5[v19];
      v28 = *v27;
      if (*v27)
      {
        v29 = 0;
        while (1)
        {
          result = add_to_lattice(v28, v29, 0, a1, 0, a4, a5, v17, a6, a7);
          if (!result)
          {
            break;
          }

          v29 = result;
          v28 = *(v28 + 560);
          if (!v28)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        result = add_to_lattice(0, 0, 0, a1, 0, a4, a5, v17, a6, a7);
        if (result)
        {
LABEL_28:
          if ((a1 & 0x80000000) == 0)
          {
            v30 = 0;
            do
            {
              for (i = a4[++v30]; i; i = *(i + 552))
              {
                v32 = *(i + 544);
                if (v32)
                {
                  v33 = *(i + 280);
                  v34 = *(i + 24) + *(v33 + 8) + *(v33 + 16);
                  *(i + 8) = v34;
                  *(i + 536) = v33;
                  if (v32 >= 1)
                  {
                    v35 = (i + 280);
                    do
                    {
                      v36 = *v35;
                      v37 = *(v35 - 32) + *(*v35 + 8) + *(*v35 + 16);
                      if (v37 < v34)
                      {
                        *(i + 8) = v37;
                        *(i + 536) = v36;
                        v34 = v37;
                      }

                      ++v35;
                      --v32;
                    }

                    while (v32);
                  }
                }

                else
                {
                  *(i + 8) = 1000000;
                  *(i + 536) = 0;
                }
              }
            }

            while (v30 != a1 + 1);
          }

          return v27[1];
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = a1;
      v20 = a1;
      while (v18 >= v19)
      {
LABEL_19:
        ++v18;
        --v20;
        if (v18 == v19)
        {
          goto LABEL_22;
        }
      }

      v21 = 0;
      v38 = v19;
      v39 = a3;
      while (1)
      {
        address = box_hash_get_address(v18, v21);
        leading_word = box_hash_get_leading_word(a3, v18, v21, address);
        if (leading_word)
        {
          break;
        }

LABEL_18:
        ++v21;
        v19 = v38;
        a3 = v39;
        if (v21 == v20)
        {
          goto LABEL_19;
        }
      }

      v24 = leading_word;
      while (1)
      {
        v25 = a5[v18];
        if (v25)
        {
          break;
        }

        result = add_to_lattice(0, 0, v24, v18, v21, a4, a5, v17, a6, a7);
        if (!result)
        {
          return result;
        }

LABEL_17:
        v24 = v24[3];
        if (!v24)
        {
          goto LABEL_18;
        }
      }

      v26 = 0;
      while (1)
      {
        result = add_to_lattice(v25, v26, v24, v18, v21, a4, a5, v17, a6, a7);
        if (!result)
        {
          break;
        }

        v26 = result;
        v25 = *(v25 + 560);
        if (!v25)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t add_lattice_word_to_cyk_table(void *a1, uint64_t a2, int *a3, void *a4)
{
  leading_tree = cyk_hash_get_leading_tree(a1, a3[144], a3[145]);
  if (leading_tree)
  {
    while (*(leading_tree + 32) || *(leading_tree + 48) != **a3)
    {
      leading_tree = *(leading_tree + 88);
      if (!leading_tree)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = heap_Alloc(a4, 96);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = **a3;
    *result = *(*a3 + 8);
    *(result + 32) = 0;
    *(result + 88) = 0;
    *(result + 48) = v10;
    *(result + 24) = *(*a3 + 16);
    *(result + 40) = 0;
    v11 = a3[144];
    v12 = a3[145];
    *(result + 72) = v11;
    *(result + 76) = v12;
    *(result + 8) = -1;
    v13 = cyk_hash_get_leading_tree(a1, v11, v12);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *(v13 + 88);
      }

      while (v13);
      *(v14 + 88) = v9;
    }

    else if ((cyk_hash_add_leading_tree(a1, v9, a3[144], a3[145], a4) & 0x1FFF) == 0xA)
    {
      heap_Free(a4, v9);
      return 0;
    }
  }

  return 1;
}

uint64_t add_word_to_cyk_table(void *a1, uint64_t a2, int **a3, void *a4)
{
  if ((*a3)[142] != 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v5 = v5[3];
    if (!v5 || (*v5)[143] == 1)
    {
      break;
    }

    result = add_lattice_word_to_cyk_table(a1, a2, *v5, a4);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t add_unknown_to_cyk_table(uint64_t a1, int a2, int a3, char *__s1, const char *a5, uint64_t **a6, void *a7, int a8, uint64_t a9, void *a10)
{
  number_of_symbol = get_number_of_symbol(a6, __s1);
  result = 0;
  v18 = a3 - a2;
  if (a3 >= a2 && number_of_symbol != -1)
  {
    result = heap_Alloc(a10, (2 * (v18 + 1)) | 1u);
    if (result)
    {
      v19 = result;
      if (mbs2sjis(a1, a2, v18 + 1, result, (2 * (v18 + 1)) | 1u) == -1)
      {
        heap_Free(a10, v19);
        return 0;
      }

      v20 = unknown_info_create(v19, __s1, a5, "0", a10);
      heap_Free(a10, v19);
      if (!v20)
      {
        return 0;
      }

      if (*(a9 + 68))
      {
        v21 = a2 + 1;
      }

      else
      {
        v21 = a2;
      }

      result = heap_Alloc(a10, 96);
      if (result)
      {
        v22 = result;
        *result = number_of_symbol;
        *(result + 32) = 0;
        *(result + 88) = 0;
        *(result + 24) = 0;
        *(result + 40) = 0;
        *(result + 48) = v20;
        *(result + 72) = v21;
        *(result + 76) = v18;
        *(result + 80) = 0;
        *(result + 8) = -1;
        leading_tree = cyk_hash_get_leading_tree(a7, v21, v18);
        if (leading_tree)
        {
          do
          {
            v24 = leading_tree;
            leading_tree = *(leading_tree + 88);
          }

          while (leading_tree);
          *(v24 + 88) = v22;
          return 1;
        }

        return (cyk_hash_add_leading_tree(a7, v22, v21, v18, a10) & 0x1FFF) != 0xA;
      }
    }
  }

  return result;
}

void *backward_as(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, void *a8, uint64_t a9, void *a10)
{
  v16 = heap_Alloc(a10, 48);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v18 = *(a1 + 8);
  v19 = heap_Alloc(a10, 48);
  if (!v19)
  {
    v17[1] = 0;
    goto LABEL_26;
  }

  v50 = a6;
  v51 = a7;
  v21 = 0;
  v22 = a1;
  v23 = 0;
  v24 = 0;
  v48 = v22;
  v49 = 0;
  *v19 = v22;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = 0;
  v19[5] = v18;
  v17[1] = v19;
  v53 = a4;
  v54 = a8;
  v52 = a2;
  while (1)
  {
    ++v21;
    if ((*(a4 + 1320) & 0x80000000) == 0)
    {
      break;
    }

LABEL_7:
    v26 = v17;
    while (v19)
    {
      v27 = v19;
      v28 = v26;
      v19 = v19[1];
      v26 = v27;
      if (!v19)
      {
        v29 = v28[1];
        v28[1] = v27[2];
        goto LABEL_12;
      }
    }

    v29 = 0;
LABEL_12:
    v30 = *v29;
    if (*(*v29 + 568) == 1)
    {
      add_word_to_cyk_table(a8, v20, v29, a10);
      if (++v23 >= a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v24;
      v57 = v21;
      if (v30[136] >= 1)
      {
        v31 = 0;
        do
        {
          v32 = *(v29 + 32);
          v33 = &v30[2 * v31];
          v34 = *(v33 + 35);
          v35 = *(v33 + 3);
          v37 = *(v34 + 8);
          v36 = *(v34 + 16);
          v38 = heap_Alloc(a10, 48);
          if (!v38)
          {
            return 0;
          }

          v39 = v36 + v32 + v35;
          *v38 = v34;
          v38[1] = 0;
          v38[2] = 0;
          v38[3] = v29;
          v38[4] = v39;
          v38[5] = v39 + v37;
          v17[1] = mas_list_insert(v38, v17[1]);
          ++v31;
          v30 = *v29;
        }

        while (v31 < *(*v29 + 544));
      }

      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      if (v56)
      {
        *(v56 + 8) = v29;
      }

      else
      {
        v49 = v29;
      }

      v24 = v29;
      a4 = v53;
      a8 = v54;
      a2 = v52;
      v21 = v57;
    }

    v19 = v17[1];
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  if (kaldi::nnet1::UpdatableComponent::IsUpdatable(*(a4 + 1320)) != 1)
  {
    v19 = v17[1];
    goto LABEL_7;
  }

  if (v23)
  {
LABEL_30:
    as_list_free_all(v17, a10);
    as_list_free_all(v49, a10);
    return a8;
  }

  v41 = 0;
  v42 = *(v48 + 536);
  for (i = v42; ; v42 = *(i + 536))
  {
    v44 = *(i + 576);
    v45 = v41;
    while (!v42)
    {
      v46 = v44 - 1;
      v41 = v45;
      if (v44 >= 1)
      {
        v46 = v44;
        while (1)
        {
          v41 = *(a5 + 8 * --v46);
          if (v41)
          {
            break;
          }

          if (v46 <= 0)
          {
            v41 = 0;
            v46 = -1;
            break;
          }
        }
      }

      if (*(a4 + 68))
      {
        v47 = v44 - 2;
      }

      else
      {
        v47 = v44 - 1;
      }

      if (!add_unknown_to_cyk_table(v50, v46 - (*(a4 + 68) != 0), v47, (a4 + 136), (a4 + 200), v51, a8, v25, a4, a10))
      {
        goto LABEL_49;
      }

      v42 = 0;
      v45 = 0;
      i = v41;
      if (v41)
      {
        goto LABEL_46;
      }
    }

    v41 = v45;
    i = v42;
LABEL_46:
    if (*(i + 568) == 1)
    {
      goto LABEL_30;
    }

    if (!add_lattice_word_to_cyk_table(a8, v20, i, a10))
    {
      break;
    }
  }

LABEL_49:
  cyk_hash_free(a8, a10);
LABEL_26:
  as_list_free_all(v17, a10);
  return 0;
}

uint64_t iso_parse_fdp_bas(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t *a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, uint64_t a10, int a11)
{
  v19 = heap_Alloc(*(a1 + 24), 96800);
  if (!v19)
  {
    v26 = 0;
    goto LABEL_7;
  }

  v24 = v19;
  v25 = *(a3 + 8);
  if (*(a2 + 68))
  {
    ++v25;
  }

  if (v25 < 2049)
  {
    v57 = v25;
    v60 = 0;
    v63[1] = 4000;
    v62 = 0;
    v63[0] = v19 + 32800;
    bzero((v19 + 32800), 0x7D00uLL);
    v29 = *(a1 + 176);
    v30 = *(a1 + 208);
    v58[12] = *(a1 + 192);
    v58[13] = v30;
    v31 = *(a1 + 112);
    v32 = *(a1 + 144);
    v33 = *(a1 + 160);
    v58[8] = *(a1 + 128);
    v58[9] = v32;
    v58[10] = v33;
    v58[11] = v29;
    v34 = *(a1 + 48);
    v35 = *(a1 + 80);
    v36 = *(a1 + 96);
    v58[4] = *(a1 + 64);
    v58[5] = v35;
    v37 = *(a1 + 40);
    v59 = *(a1 + 224);
    v58[6] = v36;
    v58[7] = v31;
    v38 = *(a1 + 16);
    v58[0] = *a1;
    v58[1] = v38;
    v58[2] = *(a1 + 32);
    v58[3] = v34;
    v27 = look_up_dictionary(a1, a3, a2, 0x14u, SF_symbol_file, v63, v37, v58, a7, a8, a9, a10, a11, &v60);
    if ((v27 & 0x80000000) != 0)
    {
      return v27;
    }

    if (v60 != 1)
    {
      log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52001, 0, v40, v41, v42, v43, v55);
      box_hash_free(v63, *(a1 + 24));
      v26 = parser_result_create(2, 0, *(a1 + 24));
      goto LABEL_24;
    }

    v47 = forward_dp(v57, v39, v63, v24 + 2050, v24, a4, *(a1 + 24));
    if (a5 == 1)
    {
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 216), 5, 0, "[FDP] Dumping LATTICE (RESULT OF FORWARD DP)", v44, v45, v46, v55);
      v27 = lattice_word_print_all(*(a1 + 32), *(a1 + 216), *(a1 + 224), (v24 + 2050), v57, 1);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    if (!v47 || (v61 = v24 + 8100, LODWORD(v62) = 4000, bzero(v24 + 8100, 0x7D00uLL), !backward_as(v47, *(a2 + 8), v57, a2, v24, a3, SF_symbol_file, &v61, v55, *(a1 + 24))))
    {
      box_hash_free(v63, *(a1 + 24));
      v26 = parser_result_create(2, 0, *(a1 + 24));
      lattice_word_free_all(v24 + 2050, v57, *(a1 + 24));
      goto LABEL_24;
    }

    if (a5 == 1)
    {
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 216), 5, 0, "[A*] RESULT OF BACKWARD A Star", v48, v49, v50, v56);
      v27 = log_intermediate_tree(*(a1 + 32), *(a1 + 216), *(a1 + 224), a2, &v61, v57, a1);
      if ((v27 & 0x80000000) != 0)
      {
LABEL_25:
        v26 = 0;
        goto LABEL_8;
      }
    }

    lattice_word_free_all(v24 + 2050, v57, *(a1 + 24));
    if (*(a2 + 48) == 1)
    {
      v51 = *(a1 + 24);
      v52 = 1;
    }

    else
    {
      v54 = *(a2 + 24);
      switch(v54)
      {
        case 3:
          v53 = parse_cyk_as_step(a2, &v61, v57, *(a1 + 56), a1 + 64, a1 + 104, a1 + 144, *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
        case 2:
          v53 = parse_cyk_as(a2, &v61, v57, *(a1 + 48), *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
        case 1:
          v53 = parse_cyk(a2, &v61, v57, *(a1 + 48), *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
      }

      v51 = *(a1 + 24);
      v52 = 2;
    }

    v53 = parser_result_create(v52, 0, v51);
LABEL_21:
    v26 = v53;
    cyk_hash_free(&v61, *(a1 + 24));
    box_hash_free(v63, *(a1 + 24));
LABEL_24:
    heap_Free(*(a1 + 24), v24);
    goto LABEL_8;
  }

  log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52000, "%s%d", v20, v21, v22, v23, "maxlength");
  v26 = parser_result_create(2, 0, *(a1 + 24));
  heap_Free(*(a1 + 24), v24);
LABEL_7:
  v27 = 0;
LABEL_8:
  *a6 = v26;
  return v27;
}

uint64_t tree_append(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return a2;
  }

  v2 = result;
  do
  {
    v3 = v2;
    v2 = *(v2 + 16);
  }

  while (v2);
  *(v3 + 16) = a2;
  return result;
}

uint64_t *info_copy_sjis(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = heap_Calloc(a2, 1, 24);
    v5 = v4 == 0;
    if (v4)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        v10 = v4;
        if (v9)
        {
          v7 = v4;
        }

        v11 = strlen(*v3);
        v12 = heap_Alloc(a2, (v11 + 1));
        *v4 = v12;
        if (!v12)
        {
          break;
        }

        strcpy(v12, *v3);
        v13 = mbs_len_bytes(*(v3 + 8)) + 1;
        v14 = heap_Alloc(a2, v13);
        if (!v14 || mbs2sjis(*(v3 + 8), 0, *(*(v3 + 8) + 8), v14, v13) == -1)
        {
          goto LABEL_23;
        }

        v10[1] = v14;
        if ((v9 & 1) == 0)
        {
          v6[2] = v10;
        }

        v3 = *(v3 + 16);
        if (!v3)
        {
          v10[2] = 0;
          return v7;
        }

        v8 = 1;
        v4 = heap_Calloc(a2, 1, 24);
        v9 = 0;
        v5 = v4 == 0;
        v6 = v10;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      v14 = 0;
LABEL_23:
      v4 = v10;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
LABEL_15:
      v14 = 0;
      if (v8)
      {
LABEL_16:
        WordInfo_free(v7, a2);
      }
    }

    if (!v5)
    {
      heap_Free(a2, *v4);
      heap_Free(a2, v4);
    }

    heap_Free(a2, v14);
  }

  return 0;
}

uint64_t *WordInfo_free(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    heap_Free(a2, *result);
    heap_Free(a2, *(v3 + 8));
    WordInfo_free(*(v3 + 16), a2);

    return heap_Free(a2, v3);
  }

  return result;
}

void *tree_duplicate(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = heap_Alloc(a4, 64);
  if (v8)
  {
    v9 = v8;
    if (get_name_of_symbol(SF_symbol_file, a3, *a1, v8))
    {
      v10 = *(a1 + 32);
      switch(v10)
      {
        case 0:
          if (*v9 == 95 && *(a2 + 28) == 1)
          {
            break;
          }

          v17 = info_copy_sjis(*(a1 + 48), a4);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          v19 = *(a1 + 24);
          if (v19 && *(a2 + 12) == 1)
          {
            v20 = attribute_copy_all(v19, a4);
            if (!v20)
            {
              WordInfo_free(v18, a4);
              break;
            }
          }

          else
          {
            v20 = 0;
          }

          v12 = jp_tree_create(*a1, v9, 0, v20, 0, v18, a4);
          if (!v12)
          {
            WordInfo_free(v18, a4);
          }

          goto LABEL_42;
        case 1:
          v12 = tree_duplicate(*(a1 + 48), a2, a3, a4);
          if (!v12 || *v9 == 95 && *(a2 + 28) == 1)
          {
            goto LABEL_42;
          }

          v15 = *(a1 + 24);
          if (v15 && *(a2 + 12) == 1)
          {
            v16 = attribute_copy_all(v15, a4);
            if (!v16)
            {
              break;
            }
          }

          else
          {
            v16 = 0;
          }

          v23 = jp_tree_create(*a1, v9, 0, v16, v12, 0, a4);
          if (v23)
          {
            goto LABEL_36;
          }

          jpe_FreeTree(v12, a4);
          break;
        case 2:
          v11 = tree_duplicate(*(a1 + 40), a2, a3, a4);
          if (v11)
          {
            v12 = v11;
            v13 = v11;
            do
            {
              v14 = v13;
              v13 = *(v13 + 16);
            }

            while (v13);
            *(v14 + 16) = tree_duplicate(*(a1 + 48), a2, a3, a4);
          }

          else
          {
            v12 = tree_duplicate(*(a1 + 48), a2, a3, a4);
            if (!v12)
            {
LABEL_42:
              heap_Free(a4, v9);
              return v12;
            }
          }

          if (*v9 == 95 && *(a2 + 28) == 1)
          {
            goto LABEL_42;
          }

          v21 = *(a1 + 24);
          if (v21 && *(a2 + 12) == 1)
          {
            v22 = attribute_copy_all(v21, a4);
            if (!v22)
            {
              break;
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = jp_tree_create(*a1, v9, 0, v22, v12, 0, a4);
LABEL_36:
          v12 = v23;
          goto LABEL_42;
      }
    }

    v12 = 0;
    goto LABEL_42;
  }

  return 0;
}

void *jp_tree_create(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = heap_Calloc(a7, 1, 48);
  v15 = v14;
  if (v14)
  {
    *v14 = a1;
    v16 = strlen(a2);
    v17 = heap_Alloc(a7, (v16 + 1));
    v15[1] = v17;
    if (v17)
    {
      strcpy(v17, a2);
      v15[2] = a3;
      v15[3] = a4;
      v15[4] = a5;
      v15[5] = a6;
    }

    else
    {
      heap_Free(a7, v15);
      return 0;
    }
  }

  return v15;
}

uint64_t jpe_FreeTree(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = v3[4];
      if (v4)
      {
        jpe_FreeTree(v4, a2);
      }

      else
      {
        v5 = v3[5];
        if (v5)
        {
          WordInfo_free(v5, a2);
        }
      }

      v6 = v3[2];
      jpe_FreeTreeOne(v3, a2);
      v3 = v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t jpe_FreeTreeOne(uint64_t a1, void *a2)
{
  if (a1)
  {
    heap_Free(a2, *(a1 + 8));
    attribute_free_all(*(a1 + 24), a2);
    heap_Free(a2, a1);
  }

  return 1;
}

uint64_t *free_information(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    heap_Free(a2, *result);
    mbs_free(*(v3 + 8), a2);
    heap_Free(a2, *(v3 + 8));
    free_information(*(v3 + 16), a2);

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t create_info(int a1, const char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = heap_Calloc(a3, 1, 32);
  if (v6)
  {
    v7 = heap_Calloc(a3, 1, 16);
    *(v6 + 8) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = strlen(a2);
      if ((mbs_create(v8, v9, a2, a3) & 0x80000000) == 0)
      {
        v10 = off_1E81ACE08[a1];
        __strcpy_chk();
        v11 = strlen(__s);
        v12 = heap_Alloc(a3, (v11 + 1));
        *v6 = v12;
        if (v12)
        {
          strcpy(v12, __s);
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          goto LABEL_9;
        }

        mbs_free(*(v6 + 8), a3);
      }

      heap_Free(a3, *(v6 + 8));
    }

    heap_Free(a3, v6);
    v6 = 0;
  }

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

void *word_data_free_all(uint64_t **a1, void *a2)
{
  v4 = *a1;
  v5 = (*a1)[3];
  if (v5)
  {
    do
    {
      v6 = v5[3];
      free_information(v5, a2);
      v5 = v6;
    }

    while (v6);
  }

  free_information(v4, a2);
  attribute_free_all(a1[2], a2);

  return heap_Free(a2, a1);
}

uint64_t BSCompareUniToTts(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t XLIT_chUnicodeWideToSJIS(unsigned int a1, char *a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  if (a1 - 65534 < 2 || a1 == 65279)
  {
    return 0;
  }

  if (a1 <= 0x7E)
  {
    *a2 = a1;
    return 1;
  }

  if (a1 - 1025 <= 0x50)
  {
    *a2 = -124;
    if (a1 == 1025)
    {
      v8 = 70;
    }

    else
    {
      if (a1 <= 0x415)
      {
        v13 = 48;
      }

      else
      {
        v13 = 49;
      }

      v14 = v13 + a1;
      if (a1 > 0x42F)
      {
        v14 += 15;
      }

      v15 = a1 > 0x435;
      if (a1 > 0x43D)
      {
        ++v15;
      }

      v8 = v15 + v14;
    }

    a2[1] = v8;
    return 2;
  }

  if (a1 - 913 <= 0x38)
  {
    if (a1 > 0x3A1)
    {
      v9 = -32755;
    }

    else
    {
      v9 = -32754;
    }

    v10 = v9 + a1;
    if (a1 > 0x3A9)
    {
      ++v10;
    }

    v11 = v10 - (a1 > 0x3C1);
    goto LABEL_21;
  }

  if ((a1 + 159) <= 0x3Eu)
  {
    *a2 = a1 + 64;
    return 1;
  }

  if ((a1 + 255) > 0x5Du)
  {
    if (a1 - 12353 <= 0x52)
    {
      a2[1] = a1 + 94;
      v18 = -126;
LABEL_46:
      *a2 = v18;
      return 2;
    }

    if (a1 - 12449 <= 0x55)
    {
      if (a1 >> 5 <= 0x186)
      {
        v19 = -97;
      }

      else
      {
        v19 = -96;
      }

      a2[1] = v19 + a1;
      v18 = -125;
      goto LABEL_46;
    }

    if ((a1 - 19968) <= 0x51A5u)
    {
      v20 = jpj_UniToCTts(a1);
      if (v20 != 0x1FFF)
      {
        LOWORD(v12) = __rev16(jpj_CTtsToTts(v20));
        goto LABEL_22;
      }

      v21 = ssft_bsearch(&v27, BSUniToTts, 0x93uLL, 2, BSCompareUniToTts);
      if (v21)
      {
        v11 = BSUniToTts[((v21 - BSUniToTts) >> 1) + 147];
LABEL_21:
        v12 = bswap32(v11) >> 16;
LABEL_22:
        *a2 = v12;
        return 2;
      }

      return 0;
    }

    if (a1 > 65503)
    {
      if (a1 > 65505)
      {
        if (a1 == 65506)
        {
          v12 = 33226;
        }

        else
        {
          if (a1 != 65509)
          {
LABEL_101:
            v24 = ssft_bsearch(&v27, BSUniToTts, 0x93uLL, 2, BSCompareUniToTts);
            if (v24)
            {
              v11 = BSUniToTts[((v24 - BSUniToTts) >> 1) + 147];
              goto LABEL_21;
            }

            if (a4 && *(a4 + 2))
            {
              if (v27 == *(a4 + 2))
              {
                v25 = 1;
LABEL_144:
                v11 = *(a4 + 2 * v25 - 2);
                goto LABEL_21;
              }

              v26 = 1;
              while (1)
              {
                v26 += 2;
                v25 = v26;
                if (!*(a4 + 2 * v26))
                {
                  break;
                }

                if (v27 == *(a4 + 2 * v26))
                {
                  goto LABEL_144;
                }
              }
            }

            return 0;
          }

          v12 = 33167;
        }
      }

      else if (a1 == 65504)
      {
        v12 = 33169;
      }

      else
      {
        v12 = 33170;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x2500u:
          v12 = 33951;
          break;
        case 0x2501u:
          v12 = 33962;
          break;
        case 0x2502u:
          v12 = 33952;
          break;
        case 0x2503u:
          v12 = 33963;
          break;
        case 0x2504u:
        case 0x2505u:
        case 0x2506u:
        case 0x2507u:
        case 0x2508u:
        case 0x2509u:
        case 0x250Au:
        case 0x250Bu:
        case 0x250Du:
        case 0x250Eu:
        case 0x2511u:
        case 0x2512u:
        case 0x2515u:
        case 0x2516u:
        case 0x2519u:
        case 0x251Au:
        case 0x251Eu:
        case 0x251Fu:
        case 0x2521u:
        case 0x2522u:
        case 0x2526u:
        case 0x2527u:
        case 0x2529u:
        case 0x252Au:
        case 0x252Du:
        case 0x252Eu:
        case 0x2531u:
        case 0x2532u:
        case 0x2535u:
        case 0x2536u:
        case 0x2539u:
        case 0x253Au:
        case 0x253Du:
        case 0x253Eu:
        case 0x2540u:
        case 0x2541u:
        case 0x2543u:
        case 0x2544u:
        case 0x2545u:
        case 0x2546u:
        case 0x2547u:
        case 0x2548u:
        case 0x2549u:
        case 0x254Au:
          goto LABEL_101;
        case 0x250Cu:
          v12 = 33953;
          break;
        case 0x250Fu:
          v12 = 33964;
          break;
        case 0x2510u:
          v12 = 33954;
          break;
        case 0x2513u:
          v12 = 33965;
          break;
        case 0x2514u:
          v12 = 33956;
          break;
        case 0x2517u:
          v12 = 33967;
          break;
        case 0x2518u:
          v12 = 33955;
          break;
        case 0x251Bu:
          v12 = 33966;
          break;
        case 0x251Cu:
          v12 = 33957;
          break;
        case 0x251Du:
          v12 = 33978;
          break;
        case 0x2520u:
          v12 = 33973;
          break;
        case 0x2523u:
          v12 = 33968;
          break;
        case 0x2524u:
          v12 = 33959;
          break;
        case 0x2525u:
          v12 = 33980;
          break;
        case 0x2528u:
          v12 = 33975;
          break;
        case 0x252Bu:
          v12 = 33970;
          break;
        case 0x252Cu:
          v12 = 33958;
          break;
        case 0x252Fu:
          v12 = 33974;
          break;
        case 0x2530u:
          v12 = 33979;
          break;
        case 0x2533u:
          v12 = 33969;
          break;
        case 0x2534u:
          v12 = 33960;
          break;
        case 0x2537u:
          v12 = 33976;
          break;
        case 0x2538u:
          v12 = 33981;
          break;
        case 0x253Bu:
          v12 = 33971;
          break;
        case 0x253Cu:
          v12 = 33961;
          break;
        case 0x253Fu:
          v12 = 33977;
          break;
        case 0x2542u:
          v12 = 33982;
          break;
        case 0x254Bu:
          v12 = 33972;
          break;
        default:
          if (a1 != 8741)
          {
            goto LABEL_101;
          }

          v12 = 33121;
          break;
      }
    }

    LOWORD(v12) = __rev16(v12);
    goto LABEL_22;
  }

  if (a1 > 0x5Au)
  {
    if (a1 > 0x5Cu)
    {
      if (a1 == 93)
      {
        v16 = -127;
        v17 = 112;
        goto LABEL_92;
      }

      if (a1 == 94)
      {
        v16 = -127;
        v17 = 96;
        goto LABEL_92;
      }
    }

    else
    {
      if (a1 == 91)
      {
        v16 = -127;
        v17 = 111;
        goto LABEL_92;
      }

      if (a1 == 92)
      {
        v16 = -127;
        v17 = 98;
LABEL_92:
        a2[1] = v17;
        *a2 = v16;
        return 2;
      }
    }

LABEL_88:
    if (a1 <= 0xFF3A)
    {
      v23 = 63;
    }

    else
    {
      v23 = 64;
    }

    v17 = v23 + a1;
    v16 = -126;
    goto LABEL_92;
  }

  v5 = 0;
  v16 = -127;
  v17 = 73;
  switch(a1)
  {
    case 1:
      goto LABEL_92;
    case 2:
    case 7:
      return v5;
    case 3:
      v17 = -108;
      goto LABEL_92;
    case 4:
      v17 = -112;
      goto LABEL_92;
    case 5:
      v17 = -109;
      goto LABEL_92;
    case 6:
      v17 = -107;
      goto LABEL_92;
    case 8:
      v17 = 105;
      goto LABEL_92;
    case 9:
      v17 = 106;
      goto LABEL_92;
    case 10:
      v17 = -106;
      goto LABEL_92;
    case 11:
      v17 = 123;
      goto LABEL_92;
    case 12:
      v17 = 67;
      goto LABEL_92;
    case 13:
      v17 = 124;
      goto LABEL_92;
    case 14:
      v17 = 68;
      goto LABEL_92;
    case 15:
      v17 = 94;
      goto LABEL_92;
    case 26:
      v17 = 70;
      goto LABEL_92;
    case 27:
      v17 = 71;
      goto LABEL_92;
    case 28:
      v17 = -125;
      goto LABEL_92;
    case 29:
      v17 = -127;
      goto LABEL_92;
    case 30:
      v17 = -124;
      goto LABEL_92;
    case 31:
      v17 = 72;
      goto LABEL_92;
    case 32:
      v17 = -105;
      goto LABEL_92;
    case 59:
      v17 = 109;
      goto LABEL_92;
    case 60:
      v17 = 95;
      goto LABEL_92;
    case 61:
      v17 = 110;
      goto LABEL_92;
    case 62:
      v17 = 79;
      goto LABEL_92;
    case 63:
      v17 = 81;
      goto LABEL_92;
    case 64:
      v17 = 77;
      goto LABEL_92;
    default:
      goto LABEL_88;
  }

  return v5;
}

uint64_t jpj_UniToCTts(__int16 a1)
{
  if ((a1 - 19968) > 0x51A5u)
  {
    return 0x1FFFLL;
  }

  v1 = (&CUni2CTts + 2 * CUni2CTtsindex[(a1 - 19968) >> 6]);
  LOWORD(v2) = a1 & 0x3F;
  if ((a1 & 0x3F) == 0)
  {
    return *v1 >> 3;
  }

  do
  {
    v3 = *v1 & 7;
    if ((*v1 & 7) != 0)
    {
      ++v1;
    }

    else
    {
      v3 = v1[1];
      v1 += 2;
    }

    v2 = (v2 - v3);
  }

  while (v2 > 0);
  if (v2)
  {
    return 0x1FFFLL;
  }

  else
  {
    return *v1 >> 3;
  }
}

uint64_t jpj_CTtsToTts(unsigned int a1)
{
  if (a1)
  {
    v1 = a1 + 43;
    if (a1 <= 0xB95)
    {
      v1 = a1;
    }

    v2 = v1 + 1409;
    v3 = v2 / 0xBCu;
    LOBYTE(v2) = v2 % 0xBCu;
    v4 = v2 + 64;
    v5 = (v2 + 64);
    v6 = v2 + 65;
    if (v5 <= 0x7E)
    {
      v6 = v4;
    }

    v7 = v3 - 127;
    v8 = (v3 - 127);
    v9 = v3 - 63;
    if (v8 <= 0x9F)
    {
      v9 = v7;
    }

    return (v6 | (v9 << 8));
  }

  else
  {
    return -32425;
  }
}

const char *marker_getMarkerArgStr(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "__not_defined__";
  }

  else
  {
    return off_1E81ACE30[a1];
  }
}

uint64_t marker_tag2string(int a1, const char **a2, _DWORD *a3)
{
  v3 = 0;
  v4 = "MARKER_PHONEME";
  do
  {
    v5 = *(v4 + 12);
    if (v5 != a1)
    {
      ++v3;
    }

    v4 = &markerTable[56 * v3];
    if (*v4)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  if (v5 == a1)
  {
    result = 0;
    v8 = v4 + 7;
    v7 = *(v4 + 13);
  }

  else
  {
    v7 = 0;
    v8 = "";
    result = 20;
  }

  *a2 = v8;
  *a3 = v7;
  return result;
}

BOOL marker_hasNonConstCharPtrArg(int a1)
{
  v1 = &dword_1C37F8EE4;
  v2 = 56;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1 == 3;
}

BOOL marker_hasCharPtrArg(int a1)
{
  v1 = &dword_1C37F8EE4;
  v2 = 56;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return (*v1 - 3) < 2;
}

const char *marker_getString(int a1)
{
  result = "MARKER_PHONEME";
  v3 = 56;
  while (*(result + 12) != a1)
  {
    result += 56;
    if (!--v3)
    {
      return "MARKER_UNDEF";
    }
  }

  return result;
}

uint64_t marker_serialize_tostring(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v33 = "UNKNOWN";
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (a4)
  {
    v8 = (a3 + 24);
    v24 = (a3 + 36);
    v9 = (a3 + 32);
    v10 = (a3 + 40);
    v11 = (a3 + 48);
    v12 = (a3 + 56);
    v13 = *(a3 + 20);
    v14 = (a3 + 28);
  }

  else
  {
    v13 = *a3;
    v15 = *(a3 + 4);
    v16 = *(a3 + 12);
    HIDWORD(v29) = *(a3 + 8);
    v30 = v15;
    v28 = *(a3 + 16);
    LODWORD(v29) = v16;
    v17 = *(a3 + 24);
    v10 = &v27;
    v24 = &v28;
    v9 = &v29;
    v11 = &v26;
    v12 = &v25;
    v26 = 0;
    v27 = v17;
    v5 = &v31;
    v14 = &v29 + 1;
    v8 = &v30;
  }

  v32 = 0;
  marker_tag2string(v13, &v33, &v32);
  LH_utoa(*v8, v34, 0xAu);
  a1(a2, v34);
  a1(a2, " ");
  LH_utoa(*v14, v34, 0xAu);
  a1(a2, v34);
  if (a4)
  {
    a1(a2, " ");
    v18 = *v5 ? "INT" : "EXT";
    a1(a2, v18);
    a1(a2, " ");
    LH_utoa(*v12, v34, 0xAu);
    a1(a2, v34);
    if (*v12)
    {
      v19 = *v11;
      a1(a2, " [");
      if (v19)
      {
        v20 = strlen(v19);
        LH_utoa(v20, v34, 0xAu);
        a1(a2, v34);
        a1(a2, " ");
        a1(a2, v19);
      }

      a1(a2, "]");
    }
  }

  a1(a2, " ");
  a1(a2, v33);
  if ((v32 - 3) <= 1)
  {
    v21 = *v10;
    a1(a2, " (");
    if (!v21)
    {
      v21 = "";
    }

    goto LABEL_18;
  }

  if ((v32 - 1) <= 1)
  {
    v21 = v34;
    LH_utoa(*v10, v34, 0xAu);
    a1(a2, " (");
LABEL_18:
    a1(a2, v21);
    a1(a2, ")");
  }

  a1(a2, " ");
  LH_utoa(*v9, v34, 0xAu);
  a1(a2, v34);
  a1(a2, " ");
  LH_utoa(*v24, v34, 0xAu);
  result = (a1)(a2, v34);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t marker_copyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a3)
  {
    if (!marker_hasNonConstCharPtrArg(*a1))
    {
      return 1;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = strlen(v7);
    }

    else
    {
      v8 = 0;
    }

    result = heap_Alloc(a2, (v8 + 1));
    if (result)
    {
      if (v8)
      {
        result = strcpy(result, *(a1 + 24));
      }

      else
      {
        *result = 0;
      }

      *(a3 + 24) = result;
      return 1;
    }
  }

  return result;
}

int *marker_freeParts(int *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = marker_hasNonConstCharPtrArg(*result);
    if (result)
    {
      v4 = *(v3 + 3);
      if (v4)
      {
        result = heap_Free(a2, v4);
        *(v3 + 3) = 0;
      }
    }
  }

  return result;
}

uint64_t compare_3(int *a1, int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v6 = *a2;
  if (*a1 == 0x4000)
  {
    if (v6 != 0x4000)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = a1[4];
    v8 = a2[4];
    if (v7 | v8)
    {
      return (v8 - v7);
    }

    v6 = 0x4000;
  }

  else if (v6 == 0x4000)
  {
    return 1;
  }

  v9 = 255;
  v10 = 5;
  v11 = 255;
  v12 = &word_1C37F9B2C;
  do
  {
    v13 = *(v12 - 1);
    if (v13 == *a1)
    {
      v11 = *v12;
    }

    if (v13 == v6)
    {
      v9 = *v12;
    }

    v12 += 4;
    --v10;
  }

  while (v10);
  if (v9 != 255 && v11 != 255)
  {
    v4 = (v11 - v9);
    if (v11 != v9)
    {
      return v4;
    }
  }

  v14 = a1[1];
  v15 = a2[1];
  if (v14 < v15)
  {
    return 0xFFFFFFFFLL;
  }

  if (v14 > v15)
  {
    return 1;
  }

  v16 = a1[2];
  v17 = a2[2];
  if (v16 <= v17)
  {
    return v17 > v16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t marker_logOutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v29 = 0;
  v28 = 0;
  if ((marker_tag2string(*a5, &v29, &v28) & 0x80000000) != 0 || !v29)
  {
    v14 = *a5;
    v16 = a5[3];
    v21 = a5[4];
    v13 = "%s MARKER_%d : posCur %d, lenCur %d";
  }

  else if ((v28 - 3) <= 1 && *(a5 + 3))
  {
    v20 = a5[3];
    v25 = a5[4];
    v13 = "%s MARKER_%s [%s] : posCur %u, lenCur %u";
  }

  else if (v28 == 1)
  {
    v23 = a5[3];
    v27 = a5[4];
    v18 = a5[6];
    v13 = "%s MARKER_%s [%u] : posCur %u, lenCur %u";
  }

  else if (v28 == 2)
  {
    v22 = a5[3];
    v26 = a5[4];
    v17 = *(a5 + 24);
    v13 = "%s MARKER_%s [%c] : posCur %u, lenCur %u";
  }

  else
  {
    v19 = a5[3];
    v24 = a5[4];
    v13 = "%s MARKER_%s [] : posCur %u, lenCur %u";
  }

  return log_OutText(a1, a2, a3, 0, v13, v10, v11, v12, a4);
}

uint64_t ppint_marker_copyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (!a1 || !a3)
  {
    return result;
  }

  if (marker_hasNonConstCharPtrArg(*(a1 + 20)))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = strlen(v7);
    }

    else
    {
      v8 = 0;
    }

    result = heap_Alloc(a2, (v8 + 1));
    if (!result)
    {
      return result;
    }

    if (v8)
    {
      result = strcpy(result, *(a1 + 40));
    }

    else
    {
      *result = 0;
    }

    *(a3 + 40) = result;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = strlen(v9);
    result = heap_Alloc(a2, (v10 + 1));
    if (!result)
    {
      return result;
    }

    if (v10)
    {
      result = strcpy(result, *(a1 + 48));
    }

    else
    {
      *result = 0;
    }

    *(a3 + 48) = result;
  }

  return 1;
}

void *ppint_marker_freeParts(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = marker_hasNonConstCharPtrArg(*(result + 5));
    if (result)
    {
      v4 = v3[5];
      if (v4)
      {
        result = heap_Free(a2, v4);
        v3[5] = 0;
      }
    }

    v5 = v3[6];
    if (v5)
    {
      result = heap_Free(a2, v5);
      v3[6] = 0;
    }
  }

  return result;
}

uint64_t ttteg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2288001025;
  }

  result = 0;
  *a2 = &ITtteg;
  return result;
}

uint64_t ttteg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2288001031;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    if ((InitRsrcFunction(a3, a4, &v25) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v25 + 8), 1, 136);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[15] = safeh_GetNullHandle();
        *(v11 + 128) = v12;
        Object = objc_GetObject(*(v25 + 48), "SYNTHSTREAM", &v23);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        *(v11 + 40) = *(v23 + 8);
        Object = sub_ObjOpen(a3, a4, (v11 + 16));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        v14 = *(v25 + 8);
        *v21 = xmmword_1C37F9B50;
        *&v21[16] = 0;
        if (!vector_ObjOpen(v14, v21, 1, (v11 + 24)))
        {
          v11 = 0;
LABEL_36:
          v5 = 0;
          *a5 = v11;
          *(a5 + 2) = 269;
          return v5;
        }

        if ((paramc_ParamGetStr(*(v25 + 40), "rulesetsfrommarkup", &v24) & 0x80000000) != 0)
        {
          *(v11 + 32) = 0;
          Object = paramc_ParamSetStr(*(v25 + 40), "rulesetsfrommarkup", "0");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

LABEL_20:
          v16 = *(v25 + 40);
          *v21 = v11;
          *&v21[8] = xmmword_1F42D5DF8;
          Object = paramc_ListenerAdd(v16, "rulesetsfrommarkup", v21);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

          *(v11 + 112) = 0;
          if ((paramc_ParamGetStr(*(v25 + 40), "clcpppipelinemode", &v22) & 0x80000000) == 0 && v22 && *v22)
          {
            *(v11 + 112) = 1;
          }

          else if (!*(v11 + 112))
          {
            *v21 = 0;
            Object = nuance_pcre_ObjOpen(a3, a4, v11 + 120);
            if ((Object & 0x80000000) != 0)
            {
              goto LABEL_37;
            }

            if (paramc_ParamGetUInt(*(v25 + 40), "retttmaxpcreframeblocks", v21) < 0)
            {
              v17 = 10;
            }

            else
            {
              v17 = *v21;
            }

            UInt = paramc_ParamGetUInt(*(v25 + 40), "retttnumframesinblock", v21);
            v19 = *v21;
            if (UInt < 0)
            {
              v19 = 10;
            }

            nuance_pcre_Init(*(v11 + 120), *(v11 + 128), v17, v19);
            goto LABEL_35;
          }

          Object = esc_seq_init(a3, a4, (v11 + 120));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_37;
          }

LABEL_35:
          Object = paramc_ParamSetInt(*(v25 + 40), "enablerett", 1u);
          if ((Object & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_37:
          v5 = Object;
          ttteg_pObjClose(v11);
          return v5;
        }

        if (v24)
        {
          v15 = *v24;
          if (!*v24)
          {
LABEL_19:
            *(v11 + 32) = v15;
            goto LABEL_20;
          }

          if (!LH_stricmp(v24, "true"))
          {
            v15 = 1;
            goto LABEL_19;
          }

          if (*v24 == 49)
          {
            v15 = v24[1] == 0;
            goto LABEL_19;
          }
        }

        v15 = 0;
        goto LABEL_19;
      }

      return 2288001034;
    }
  }

  return v5;
}

uint64_t ttteg_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 269, 136);
  if ((result & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      if ((InitRsrcFunction(*a1, a1[1], &v8) & 0x80000000) == 0)
      {
        Size = vector_GetSize(a1[3]);
        if (Size)
        {
          v6 = Size - 1;
          do
          {
            if (!vector_GetElemAt(a1[3], v6, &v7))
            {
              break;
            }

            ruleset_UnloadRules(v7);
            ruleset_ObjClose(v7);
            vector_Remove(a1[3], v6--);
          }

          while (v6 != -1);
        }
      }
    }

    ttteg_ProcessEnd(a1, a2);
    return ttteg_pObjClose(a1);
  }

  return result;
}

uint64_t ttteg_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 269, 136);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *a3 = ttteg_ResourceTypes_SZ_RETTT_CONTENT_TYPES;
  }

  return result;
}

uint64_t ttteg_ResourceLoad(_WORD **a1, int a2, char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7)
{
  v37[128] = *MEMORY[0x1E69E9840];
  v35 = 0;
  *v36 = 0;
  v7 = 2288001031;
  v34 = 0;
  v33 = 0;
  if (!a3 || !a7)
  {
    goto LABEL_50;
  }

  if (a4)
  {
    v14 = a6 != 0;
    if (!a5 && a6)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (!a5 || !a6)
    {
      goto LABEL_50;
    }

    v14 = 1;
  }

  Str = safeh_HandleCheck(a1, a2, 269, 136);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  *a7 = 0;
  *(a7 + 8) = 0;
  if ((InitRsrcFunction(*a1, a1[1], v36) & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (a4)
  {
    if (*a4)
    {
      v37[0] = 0;
      if (vector_GetElemAt(a1[3], 0, v37))
      {
        v16 = 0;
        while (!*(v37[0] + 44))
        {
          if (*(v37[0] + 24))
          {
            Name = ruleset_GetName(v37[0]);
            if (!strcmp(Name, a4))
            {
LABEL_42:
              v7 = 2288001048;
              goto LABEL_50;
            }

            if (*(v37[0] + 32))
            {
              AbsName = ruleset_GetAbsName(v37[0]);
LABEL_18:
              if (!strcmp(AbsName, a4))
              {
                goto LABEL_42;
              }
            }
          }

          if (!vector_GetElemAt(a1[3], ++v16, v37))
          {
            goto LABEL_25;
          }
        }

        AbsName = ruleset_GetName(v37[0]);
        goto LABEL_18;
      }
    }
  }

LABEL_25:
  v19 = !v14;
  if (!a5)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v34 = a5;
    v33 = a6;
LABEL_36:
    v22 = ruleset_ObjOpen(*a1, a1[1], a1[15], a1[16], a1[2], v26);
    if ((v22 & 0x80000000) == 0)
    {
      Rules = ruleset_LoadRules(v26, a4, 0, a3, v34, v33);
      if ((Rules & 0x80000000) == 0)
      {
        if (vector_Add(a1[3], v26) == 1)
        {
          *a7 = v27;
          *(a7 + 8) = 300;
          goto LABEL_45;
        }

        Rules = 2288001034;
      }

      ruleset_ObjClose(v26);
      goto LABEL_45;
    }

LABEL_41:
    Rules = v22;
    goto LABEL_45;
  }

  *v25 = 0;
  bzero(v37, 0x400uLL);
  Rules = brk_DataOpenEx(*(*v36 + 24), a4, 1, &v35);
  if (strstr(a3, ";loader=broker") && (Rules & 0x80000000) != 0)
  {
    Str = paramc_ParamGetStr(*(*v36 + 40), "langcode", v25);
    if ((Str & 0x80000000) == 0)
    {
      v21 = brokeraux_ComposeBrokerString(*v36, a4, 0, 1, *v25, 0, 0, v37, 0x400uLL);
      if (v21 < 0)
      {
        Rules = v21 | 0x88602000;
        goto LABEL_45;
      }

      Rules = brk_DataOpenEx(*(*v36 + 24), v37, 0, &v35);
      goto LABEL_34;
    }

LABEL_40:
    v7 = Str;
    goto LABEL_50;
  }

LABEL_34:
  if ((Rules & 0x80000000) == 0)
  {
    v22 = brk_DataMapEx(*(*v36 + 24), v35, 0, &v33, &v34);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_45:
  if (v34)
  {
    brk_DataUnmap(*(*v36 + 24), v35, v34);
    v34 = 0;
  }

  if (v35)
  {
    brk_DataClose(*(*v36 + 24), v35);
  }

  v7 = Rules;
LABEL_50:
  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ttteg_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = 0;
  v7 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = safeh_HandleCheck(a3, a4, 300, 8);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2288002061;
  if (!vector_GetElemAt(*(a1 + 24), 0, &v11))
  {
    return v8;
  }

  v9 = 0;
  while (*(v11 + 80) != a3)
  {
    if (!vector_GetElemAt(*(a1 + 24), ++v9, &v11))
    {
      return v8;
    }
  }

  v7 = ruleset_UnloadRules(v11);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = ruleset_ObjClose(v11);
  if ((v8 & 0x80000000) == 0)
  {
    vector_Remove(*(a1 + 24), v9);
  }

  return v8;
}

uint64_t ttteg_ProcessStart(_WORD **a1, int a2, _WORD *a3, _WORD *a4)
{
  v15 = 0;
  v14 = 0;
  Int = 2288001031;
  if ((safeh_HandleCheck(a1, a2, 269, 136) & 0x80000000) != 0)
  {
    return 2288001032;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v15) & 0x80000000) == 0)
  {
    v9 = 0;
    a1[10] = a3;
    a1[11] = a4;
    do
    {
      v10 = (*(a1[5] + 8))(a3, a4, 134, ttteg_ProcessStart_szInput[v9], 0, 0, a1 + 12);
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    while (v9++ != 6);
    if (v10 < 0)
    {
      a1[12] = 0;
    }

    Int = paramc_ParamGetInt(*(v15 + 40), "enablerett", &v14);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (v14 == 1)
    {
      v12 = (*(a1[5] + 8))(a3, a4, 134, "text/plain;charset=utf-8", 0, 0, a1 + 6);
      if ((v12 & 0x80000000) != 0)
      {
        Int = v12;
LABEL_17:
        ttteg_ProcessEnd(a1, a2);
        return Int;
      }

      Int = (*(a1[5] + 8))(a3, a4, 134, "text/plain;charset=utf-8", 0, 1, a1 + 8);
      if ((Int & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1[6] = 0;
      a1[8] = 0;
    }
  }

  return Int;
}

uint64_t ttteg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v52 = 0;
  __src = 0;
  v51 = 0;
  __s = 0;
  v49 = 0;
  v46 = 0;
  __n = 0;
  v45 = 0;
  v7 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v52) & 0x80000000) == 0)
  {
    Int = paramc_ParamGetInt(*(v52 + 40), "enablerett", &v45);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (!*(a1 + 48))
    {
      Str = 0;
LABEL_56:
      v15 = 1;
      goto LABEL_57;
    }

    Str = 0;
    v15 = 1;
    if (!*(a1 + 64) || !v45)
    {
      goto LABEL_57;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 40) + 144))(*(a1 + 48), *(a1 + 56), &__n + 4, &__n);
    if ((v7 & 0x80000000) == 0)
    {
      v15 = *(a1 + 112) | __n;
      if (!v15)
      {
        Str = 0;
LABEL_57:
        *a5 = v15;
        return Str;
      }

      v7 = (*(*(a1 + 40) + 88))(*(a1 + 48), *(a1 + 56), &__src, &__n + 4);
      if ((v7 & 0x80000000) == 0)
      {
        if (log_HasTraceTuningDataSubscriber(*(v52 + 32)))
        {
          log_OutTraceTuningData(*(v52 + 32), 4, "%s%s", v16, v17, v18, v19, v20, "BEG");
          log_OutTraceTuningDataBinary(*(v52 + 32), 5, "", "text/plain;charset=utf-8", __src, HIDWORD(__n));
        }

        v21 = heap_Alloc(*(v52 + 8), (HIDWORD(__n) + 1));
        __s = v21;
        if (!v21)
        {
          return 2288001034;
        }

        if (__src)
        {
          memcpy(v21, __src, HIDWORD(__n));
          v21 = __s;
        }

        v21[HIDWORD(__n)] = 0;
        Int = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), HIDWORD(__n));
        if ((Int & 0x80000000) == 0)
        {
          __src = 0;
          Str = paramc_ParamGetStr(*(v52 + 40), "langcode", &v51);
          if ((Str & 0x80000000) == 0)
          {
            log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "BEG");
            Size = vector_GetSize(*(a1 + 24));
            v23 = 0;
            if (Size)
            {
              v24 = Size - 1;
              while (1)
              {
                v46 = 0;
                if (vector_GetElemAt(*(a1 + 24), v24, &v46))
                {
                  if (*(v46 + 11))
                  {
                    if (ruleset_GetEnabledForLng(v46, v51) == 1)
                    {
                      v25 = __s;
                      __s = v23;
                      Str = ruleset_Rewrite(v46, v25, &__s);
                      v23 = v25;
                      if ((Str & 0x80000000) != 0)
                      {
                        break;
                      }
                    }
                  }
                }

                if (--v24 == -1)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
LABEL_27:
              v26 = *(a1 + 96);
              if (v26)
              {
                v9 = strlen(__s);
                if (v9)
                {
                  (*(*(a1 + 40) + 176))(v26, *(a1 + 104), __s);
                }
              }

              log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%u %s%s", v9, v10, v11, v12, v13, "END");
              log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%s %s%s", v27, v28, v29, v30, v31, "BEG");
              v46 = 0;
              v32 = vector_GetSize(*(a1 + 24));
              if (v32)
              {
                v38 = v32 - 1;
                do
                {
                  v46 = 0;
                  if (vector_GetElemAt(*(a1 + 24), v38, &v46))
                  {
                    if (!*(v46 + 11) && ruleset_GetEnabledForLng(v46, v51) == 1)
                    {
                      v39 = __s;
                      __s = v23;
                      Str = ruleset_Rewrite(v46, v39, &__s);
                      v23 = v39;
                      if ((Str & 0x80000000) != 0)
                      {
                        break;
                      }
                    }
                  }

                  --v38;
                }

                while (v38 != -1);
              }

              log_OutTraceTuningData(*(v52 + 32), 7, "%s%s %s%u %s%s", v33, v34, v35, v36, v37, "END");
              if ((Str & 0x80000000) == 0)
              {
                if (__s)
                {
                  v40 = strlen(__s);
                  if (v40)
                  {
                    v41 = (*(*(a1 + 40) + 112))(*(a1 + 64), *(a1 + 72), &v49, v40);
                    if ((v41 & 0x80000000) == 0)
                    {
                      memcpy(v49, __s, v40);
                      _NashvilleFEModule_ReportModifiedText(v52, v49, v40);
                      log_OutTraceTuningDataBinary(*(v52 + 32), 6, "", "text/plain;charset=utf-8", v49, v40);
                      v41 = (*(*(a1 + 40) + 120))(*(a1 + 64), *(a1 + 72), v40);
                    }

                    Str = v41;
                  }
                }
              }

              v25 = v23;
            }

            goto LABEL_47;
          }

LABEL_46:
          v25 = 0;
LABEL_47:
          log_OutTraceTuningData(*(v52 + 32), 4, "%s%s %s%u", v9, v10, v11, v12, v13, "END");
          if (v25)
          {
            heap_Free(*(v52 + 8), v25);
          }

          if (__s)
          {
            heap_Free(*(v52 + 8), __s);
          }

          if (!*(a1 + 112))
          {
            v42 = (*(*(a1 + 40) + 72))(*(a1 + 64), *(a1 + 72));
            if (v42 >= 0)
            {
              Str = Str;
            }

            else
            {
              Str = v42;
            }

            *(a1 + 64) = safeh_GetNullHandle();
            *(a1 + 72) = v43;
          }

          goto LABEL_56;
        }

LABEL_45:
        Str = Int;
        goto LABEL_46;
      }
    }

    return v7;
  }

  return 2288001031;
}

uint64_t ttteg_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v5))
    {
      v6 = (*(a1[5] + 72))(a1[12], a1[13]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[12] = safeh_GetNullHandle();
    a1[13] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[6], a1[7], v8, v9))
    {
      v10 = (*(a1[5] + 72))(a1[6], a1[7]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[6] = safeh_GetNullHandle();
    a1[7] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[8], a1[9], v12, v13))
    {
      v14 = (*(a1[5] + 72))(a1[8], a1[9]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[8] = safeh_GetNullHandle();
    a1[9] = v15;
  }

  return v3;
}

uint64_t ttteg_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "rulesetsfrommarkup"))
  {
    if (a3)
    {
      v5 = *a3;
      if (!*a3)
      {
LABEL_9:
        *(a1 + 32) = v5;
        return 0;
      }

      if (!LH_stricmp(a3, "true"))
      {
        v5 = 1;
        goto LABEL_9;
      }

      if (*a3 == 49)
      {
        v5 = a3[1] == 0;
        goto LABEL_9;
      }
    }

    v5 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t ttteg_pObjClose(uint64_t a1)
{
  v1 = 2288001031;
  v9 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v9) & 0x80000000) == 0)
  {
    v3 = *(v9 + 40);
    v7 = a1;
    v8 = xmmword_1F42D5DF8;
    paramc_ListenerRemove(v3, "rulesetsfrommarkup", &v7);
    if (*(a1 + 40))
    {
      objc_ReleaseObject(*(v9 + 48), "SYNTHSTREAM");
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      sub_ObjClose(v4);
    }

    if (*(a1 + 112))
    {
      esc_seq_deinit(*a1, *(a1 + 8), *(a1 + 120), *(a1 + 128));
    }

    else
    {
      nuance_pcre_DeInit(*(a1 + 120), *(a1 + 128));
      nuance_pcre_ObjClose(*(a1 + 120), *(a1 + 128));
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      vector_ObjClose(v5);
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t ruleset_ReadBinaryRules(_WORD **a1, uint64_t a2, int a3)
{
  v68 = *MEMORY[0x1E69E9840];
  *v65 = 0;
  v66 = 0;
  v3 = 2288001031;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  *v61 = 0;
  v58 = 0;
  v59 = 0;
  if (!a1 || !a2 || !a3 || (InitRsrcFunction(*a1, a1[1], &v66) & 0x80000000) != 0)
  {
    goto LABEL_67;
  }

  v7 = ssftriff_reader_ObjOpenEx(*a1, a1[1], 4, a1[3], a2, a3, "USRT", 1031, v65);
  if ((v7 & 0x80000000) != 0)
  {
    v3 = v7;
    goto LABEL_67;
  }

  LODWORD(v12) = 0;
  v13 = 2288001028;
  do
  {
    v17 = ssftriff_reader_OpenChunk(*v65, &v63, &v62, v61, v8, v9, v10, v11);
    if (v17 < 0)
    {
      break;
    }

    if (v63 ^ 0x474E414C | v64)
    {
      if (v63 ^ 0x45505954 | v64)
      {
        if (v63 ^ 0x52455652 | v64)
        {
          if (v63 ^ 0x454C5552 | v64)
          {
            log_OutText(*(v66 + 32), "RETTT", 4, 0, "ruleset_ReadBinaryRules unknown chunk type: '%s'", v9, v10, v11, &v63);
          }

          else
          {
            if (!v12)
            {
              _Gryphon_ReportMissingPCREVersion();
              v17 = v13;
              break;
            }

            v29 = v13;
            v30 = *v61;
            v31 = **v61;
            *v61 += 4;
            v32 = *(v30 + 4);
            *v61 = v30 + 8;
            v62 -= 8;
            v33 = heap_Calloc(*(v66 + 8), v31, 8);
            v17 = PCRE_SerializeAndDecodeBatch(a1[13], a1[14], *v61, v31, v33);
            if (v17 < 0)
            {
              break;
            }

            v34 = *v61 + v32;
            *v61 += v32;
            v35 = v62 - v32;
            v62 -= v32;
            if ((v32 & 3) != 0)
            {
              v36 = 4 - (v32 & 3);
              *v61 = v34 + v36;
              v62 = v35 - v36;
            }

            if (v31)
            {
              v37 = v33;
              while (1)
              {
                *__s = 0;
                StringZ = ssftriff_reader_ReadStringZ(*v65, *v61, v62, 0, 0, __s);
                if ((StringZ & 0x1FFF) != 9)
                {
                  v17 = StringZ;
                  goto LABEL_49;
                }

                v39 = heap_Alloc(*(v66 + 8), (*__s + 1));
                if (!v39)
                {
                  v17 = -2006966262;
                  goto LABEL_49;
                }

                v40 = v39;
                *v39 = 0;
                v17 = ssftriff_reader_ReadStringZ(*v65, *v61, v62, 0, v39, __s);
                if (v17 < 0)
                {
                  heap_Free(*(v66 + 8), v40);
                  goto LABEL_49;
                }

                v41 = *v61 + *__s;
                v60 = v40;
                *v61 = v41;
                v42 = v62 - *__s;
                v62 -= *__s;
                if ((__s[0] & 3) != 0)
                {
                  v43 = 4 - (__s[0] & 3);
                  *v61 = v41 + v43;
                  v62 = v42 - v43;
                }

                PCRE_AttachPattern(a1[13], a1[14], *v37, &v58);
                if (!vector_Add(a1[10], &v58))
                {
                  break;
                }

                PCRE_FreePattern(v58, v59);
                heap_Free(*(v66 + 8), v40);
                ++v37;
                if (!--v31)
                {
                  goto LABEL_49;
                }
              }

              log_OutPublic(*(v66 + 32), "RETTT", 11023, 0, v44, v45, v46, v47, v56);
              v17 = -2006966266;
            }

LABEL_49:
            heap_Free(*(v66 + 8), v33);
            v13 = v29;
          }
        }

        else
        {
          *__s = 0;
          LOWORD(v57) = 0;
          v27 = *v61;
          v12 = **v61;
          *v61 += 2;
          v28 = **v61;
          *v61 = v27 + 4;
          PCRE_Version(a1[13], a1[14], __s, &v57);
          _Gryphon_ReportPCREVersion(v12, *__s, v28, v57);
          if (v12 != *__s)
          {
            v17 = v13;
          }
        }
      }

      else
      {
        __s[0] = 0;
        v57 = 1024;
        v24 = ssftriff_reader_ReadStringZ(*v65, *v61, v62, 0, __s, &v57);
        if (v24 < 0 || !v62)
        {
          goto LABEL_23;
        }

        v57 = 1024;
        v17 = -2006966265;
        if (!a1[8])
        {
          v25 = strlen(__s);
          v26 = heap_Alloc(*(v66 + 8), (v25 + 1));
          a1[8] = v26;
          if (!v26)
          {
            goto LABEL_44;
          }

          strcpy(v26, __s);
LABEL_23:
          v17 = v24;
        }
      }
    }

    else
    {
      __s[0] = 0;
      v57 = 1024;
      v17 = ssftriff_reader_ReadStringZ(*v65, *v61, v62, 0, __s, &v57);
      if ((v17 & 0x80000000) == 0 && v62)
      {
        v57 = 1024;
        if (!ruleset_IsLng(a1, __s))
        {
          v22 = *(v66 + 32);
          v23 = 11022;
          goto LABEL_41;
        }

        if (a1[7])
        {
          v22 = *(v66 + 32);
          v23 = 11021;
LABEL_41:
          log_OutPublic(v22, "RETTT", v23, 0, v18, v19, v20, v21, v56);
          v17 = -2006966265;
          goto LABEL_50;
        }

        v48 = strlen(__s);
        v49 = heap_Alloc(*(v66 + 8), (v48 + 1));
        a1[7] = v49;
        if (!v49)
        {
LABEL_44:
          v17 = -2006966262;
          goto LABEL_50;
        }

        strcpy(v49, __s);
      }
    }

LABEL_50:
    v50 = ssftriff_reader_CloseChunk(*v65);
    if (v50 < 0 && v17 > -1)
    {
      v17 = v50;
    }
  }

  while ((v17 & 0x80000000) == 0);
  if ((v17 & 0x1FFF) == 0x14)
  {
    v3 = 0;
  }

  else
  {
    v3 = v17;
  }

  if (*v65)
  {
    v52 = ssftriff_reader_ObjClose(*v65, v14, v15, v16, v8, v9, v10, v11);
    if (v52 >= 0 || v3 <= -1)
    {
      v3 = v3;
    }

    else
    {
      v3 = v52;
    }
  }

LABEL_67:
  v54 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t rule_Compile(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  *(a5 + 16) = 1;
  *a6 = PCRE_CompilePatternWithOptions(a1, a2, a4, a5, v25, 256, &v24 + 4, &v24);
  a6[1] = v11;
  PCRE_Adapter2PCREOptions(a1, a2, a5);
  if (*a6)
  {
    v16 = v24;
  }

  else
  {
    v16 = 2288001024;
    log_OutPublic(*(a3 + 32), "RETTT", 11006, "%s%s%s%s%s%d", v12, v13, v14, v15, "regularExpression");
    log_OutTraceTuningData(*(a3 + 32), 2, "%s%s %s%s %s%d %s%s %s%d %s%s %s%u", v17, v18, v19, v20, v21, "END");
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

BOOL ruleset_IsLng(uint64_t a1, char *__s)
{
  v6 = 0;
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  return PCRE_Exec(*(a1 + 104), *(a1 + 112), *(a1 + 152), *(a1 + 160), __s, v4, 0, 0, 0, &v6) >= 0;
}

uint64_t ruleset_ScanRuleLine(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2288001031;
  if (!a2 || !a3 || !a5)
  {
    return v8;
  }

  *a3 = 0;
  *a5 = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  log_OutText(*(a1 + 32), "RETTT", 5, 0, "ruleset_ScanRuleLine: '%s'", a6, a7, a8, a2);
  for (i = (a2 + 1); ; ++i)
  {
    v19 = *(i - 1);
    if (v19 != 9 && v19 != 32)
    {
      break;
    }
  }

  if (!*(i - 1))
  {
    v20 = *(a1 + 32);
    goto LABEL_48;
  }

  if (v19 == 92 || (v19 - 48) <= 9)
  {
    v20 = *(a1 + 32);
    v22 = 11015;
    v23 = 0;
    goto LABEL_49;
  }

  *a3 = i;
  v24 = *i;
  v25 = *i == 0;
  if (*i && v24 != v19)
  {
    do
    {
      if (v24 == 92 && i[1])
      {
        ++i;
      }

      v26 = *++i;
      v24 = v26;
      v25 = v26 == 0;
      if (v26)
      {
        v27 = v24 == v19;
      }

      else
      {
        v27 = 1;
      }
    }

    while (!v27);
  }

  if (v25)
  {
LABEL_26:
    v20 = *(a1 + 32);
    goto LABEL_48;
  }

  *i = 0;
  for (j = (i + 4); ; ++j)
  {
    v29 = *(j - 3);
    if (v29 > 0x6C)
    {
      switch(v29)
      {
        case 'm':
          *(a4 + 4) = 1;
          continue;
        case 's':
          *(a4 + 8) = 1;
          continue;
        case 'x':
          *(a4 + 12) = 1;
          continue;
      }

      goto LABEL_43;
    }

    if (*(j - 3) <= 0x1Fu)
    {
      if (v29 == 9)
      {
        continue;
      }

      if (!*(j - 3))
      {
        break;
      }

      goto LABEL_43;
    }

    if (v29 == 32)
    {
      continue;
    }

    if (v29 == 105)
    {
      *a4 = 1;
      continue;
    }

    if (v29 == 45)
    {
      break;
    }

LABEL_43:
    log_OutPublic(*(a1 + 32), "RETTT", 11016, "%s%c", v14, v15, v16, v17, "option");
  }

  if (v29 <= 0x1Fu)
  {
    v20 = *(a1 + 32);
    goto LABEL_48;
  }

  if (*(j - 2) != 45 || *(j - 1) != 62)
  {
    log_OutPublic(*(a1 + 32), "RETTT", 11011, "%s%s", v14, v15, v16, v17, "separator");
    return v8;
  }

  while (1)
  {
    v31 = *j;
    if (v31 != 9 && v31 != 32)
    {
      break;
    }

    ++j;
  }

  if (!*j)
  {
    v20 = *(a1 + 32);
LABEL_48:
    v44 = "message";
    v23 = "%s%s";
    v22 = 11026;
LABEL_49:
    log_OutPublic(v20, "RETTT", v22, v23, v14, v15, v16, v17, v44);
    return v8;
  }

  if (v31 == 34)
  {
    v32 = j + 1;
  }

  else
  {
    v32 = j;
  }

  if (v31 == 34)
  {
    v33 = 34;
  }

  else
  {
    v33 = 32;
  }

  *a5 = v32;
  v34 = *v32;
  v35 = *v32 == 0;
  if (*v32)
  {
    v36 = v33 == v34;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    do
    {
      if (v34 == 92 && v32[1])
      {
        ++v32;
      }

      v38 = *++v32;
      v37 = v38;
      LOBYTE(v34) = v38;
      v35 = v38 == 0;
      if (v38)
      {
        v39 = v33 == v37;
      }

      else
      {
        v39 = 1;
      }
    }

    while (!v39);
  }

  if (v31 != 34 && v35)
  {
    v40 = *(a1 + 32);
    v41 = *a3;
    goto LABEL_92;
  }

  if (v35)
  {
    goto LABEL_26;
  }

  *v32 = 0;
  v42 = v32 + 1;
  while (2)
  {
    v43 = *v42;
    if (v43 <= 0x1F)
    {
      if (v43 != 9)
      {
        if (!*v42)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      goto LABEL_86;
    }

    if (v43 == 32)
    {
LABEL_86:
      ++v42;
      continue;
    }

    break;
  }

  if (v43 == 35)
  {
    goto LABEL_91;
  }

LABEL_90:
  log_OutPublic(*(a1 + 32), "RETTT", 11018, "%s%s", v14, v15, v16, v17, "trailingString");
LABEL_91:
  v40 = *(a1 + 32);
  v41 = *a3;
  v45 = *a5;
LABEL_92:
  log_OutText(v40, "RETTT", 5, 0, "ruleset_ScanRuleLine:  re = '%s'; tgt = '%s'", v15, v16, v17, v41);
  return 0;
}

uint64_t ruleset_ReadHeader(uint64_t a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  *&v69[1023] = *MEMORY[0x1E69E9840];
  *v67 = 0;
  if (!a1 || !a2 || !a3 || (InitRsrcFunction(*a1, *(a1 + 8), v67) & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  if ((ruleset_ReadDataLine(a1, *v67, a2, a3, a4, &__s, v8, v9) & 0x80000000) != 0)
  {
LABEL_8:
    v19 = 11020;
    goto LABEL_9;
  }

  while (1)
  {
    v14 = ruleset_IsSectionHeader(&__s, "header");
    v17 = ruleset_ReadDataLine(a1, *v67, a2, a3, a4, &__s, v15, v16);
    v18 = v17;
    if (v14)
    {
      break;
    }

    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }
  }

  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (ruleset_IsSectionHeader(&__s, 0))
  {
    goto LABEL_14;
  }

  v32 = "RETTT";
  while (2)
  {
    v33 = *v67;
    p_s = &__s;
    log_OutText(*(*v67 + 32), v32, 4, 0, "ruleset_ScanHeaderLine: '%s'", v22, v23, v24, &__s);
    for (i = v69; ; ++i)
    {
      v40 = *p_s;
      if (v40 != 9 && v40 != 32)
      {
        break;
      }

      ++p_s;
    }

    v41 = p_s;
    if (!*p_s)
    {
      v42 = *(v33 + 32);
LABEL_49:
      log_OutPublic(v42, v32, 11026, "%s%s", v35, v36, v37, v38, "message");
      goto LABEL_50;
    }

    while (1)
    {
      if (!v40)
      {
LABEL_41:
        v42 = *(v33 + 32);
        goto LABEL_49;
      }

      if (v40 == 32)
      {
        break;
      }

      if (v40 == 61)
      {
        *v41 = 0;
        v44 = v41 + 1;
LABEL_45:
        while (1)
        {
          v46 = *v44;
          if (v46 != 9 && v46 != 32)
          {
            break;
          }

          ++v44;
        }

        if (!*v44)
        {
          v42 = *(v33 + 32);
          goto LABEL_49;
        }

        for (j = strlen(v44); ; v44[j] = 0)
        {
          v51 = v44[--j];
          if (v51 != 32 && v51 != 9)
          {
            break;
          }
        }

        log_OutText(*(v33 + 32), v32, 5, 0, "ruleset_ScanHeaderLine:  key = '%s'; val = '%s'", v47, v48, v49, p_s);
        v53 = LH_stricmp(p_s, "language");
        if (v53 || !ruleset_IsLng(a1, v44))
        {
LABEL_65:
          v60 = v32;
          if (!LH_stricmp(p_s, "type"))
          {
            if (*(a1 + 64))
            {
              goto LABEL_78;
            }

            v61 = strlen(v44);
            v62 = heap_Calloc(*(*v67 + 8), (v61 + 1), 1);
            *(a1 + 64) = v62;
            if (!v62)
            {
              goto LABEL_76;
            }

            if (v61)
            {
              for (k = 0; k != v61; ++k)
              {
                *(*(a1 + 64) + k) = ssft_tolower(v44[k]);
              }
            }
          }

          v32 = v60;
          if (LH_stricmp(p_s, "type_out"))
          {
            goto LABEL_50;
          }

          if (!*(a1 + 72))
          {
            v64 = strlen(v44);
            v65 = heap_Calloc(*(*v67 + 8), (v64 + 1), 1);
            *(a1 + 72) = v65;
            if (v65)
            {
              strcpy(v65, v44);
              goto LABEL_50;
            }

            goto LABEL_76;
          }
        }

        else
        {
          if (!*(a1 + 56))
          {
            v58 = strlen(v44);
            v59 = heap_Alloc(*(*v67 + 8), (v58 + 1));
            *(a1 + 56) = v59;
            if (v59)
            {
              strcpy(v59, v44);
              goto LABEL_65;
            }

LABEL_76:
            v18 = 2288001034;
            goto LABEL_20;
          }

          log_OutPublic(*(*v67 + 32), "RETTT", 11021, 0, v54, v55, v56, v57, v66);
        }

LABEL_78:
        v18 = 2288001031;
        goto LABEL_20;
      }

      v43 = *++v41;
      LOBYTE(v40) = v43;
      ++i;
    }

    *v41 = 0;
    while (1)
    {
      v45 = *i;
      if (v45 > 0x1F)
      {
        break;
      }

      if (v45 != 9)
      {
        if (!*i)
        {
          goto LABEL_41;
        }

        goto LABEL_75;
      }

LABEL_39:
      ++i;
    }

    if (v45 == 32)
    {
      goto LABEL_39;
    }

    if (v45 == 61)
    {
      v44 = i + 1;
      goto LABEL_45;
    }

LABEL_75:
    log_OutPublic(*(v33 + 32), v32, 11011, "%s%s", v35, v36, v37, v38, "separator");
LABEL_50:
    v18 = ruleset_ReadDataLine(a1, *v67, a2, a3, a4, &__s, v12, v13);
    if ((v18 & 0x80000000) == 0)
    {
      if (ruleset_IsSectionHeader(&__s, 0))
      {
LABEL_14:
        v25 = strlen(&__s);
        v26 = (*a2)--;
        v27 = (*a3)++;
        v28 = *(v26 - 2);
        v29 = v28 == 13;
        if (v28 == 13)
        {
          v30 = v27 + 2;
        }

        else
        {
          v30 = v27 + 1;
        }

        v31 = -2;
        if (!v29)
        {
          v31 = -1;
        }

        *a2 = v26 + v31 - v25;
        *a3 = v30 + v25;
        --*a4;
        break;
      }

      continue;
    }

    break;
  }

LABEL_20:
  if (!*(a1 + 56))
  {
    v19 = 11022;
LABEL_9:
    log_OutPublic(*(*v67 + 32), "RETTT", v19, 0, v10, v11, v12, v13, v66);
LABEL_10:
    v18 = 2288001031;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}