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
    if (a2 == v11 && !cstdlib_strncmp(a1, *a3, v11))
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

uint64_t crf_mde_seg_concat_strings(uint64_t a1, uint64_t a2, char **a3)
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
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v9, v10, v11, v12, v17);
    return 2310021130;
  }
}

uint64_t crf_mde_seg_set_param_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, int *a6, int *a7, _DWORD *a8)
{
  v15 = (a2 + a3);
  if (!cstdlib_strcmp(v15, "nbest"))
  {
    *a8 = cstdlib_atoi((a2 + a4));
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v18, v19, v20, v15);
  }

  if (!cstdlib_strcmp(v15, "padding"))
  {
    *a5 = cstdlib_atoi((a2 + a4));
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v18, v19, v20, v15);
  }

  if (!cstdlib_strcmp(v15, "annotation"))
  {
    result = cstdlib_strcmp((a2 + a4), "BMES");
    if (result)
    {
      result = cstdlib_strcmp((a2 + a4), "BI");
      if (result)
      {
        return result;
      }

      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    *a7 = v21;
    return result;
  }

  result = cstdlib_strcmp(v15, "type");
  if (!result)
  {
    result = cstdlib_strcmp((a2 + a4), "char");
    if (!result)
    {
      v17 = 1;
      goto LABEL_18;
    }

    result = cstdlib_strcmp((a2 + a4), "morpheme");
    if (!result)
    {
      v17 = 2;
LABEL_18:
      *a6 = v17;
    }
  }

  return result;
}

uint64_t crf_mde_seg_set_featureparam_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char **a5)
{
  v9 = (a2 + a3);
  if (cstdlib_strcmp(v9, "isvowel"))
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = (a2 + a4);
  v12 = cstdlib_strlen(v11);
  v13 = heap_Calloc(v10, 1, v12 + 1);
  *a5 = v13;
  if (v13)
  {
    cstdlib_strcpy(v13, v11);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde featureparam, %s: %s", v18, v19, v20, v9);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v14, v15, v16, v17, v22);
  return 2310021130;
}

uint64_t oneword_posparser_Open(uint64_t a1)
{
  v12 = 0;
  *(a1 + 2004) = 0;
  *&v9[0] = 0;
  v13 = 0;
  v11 = 0;
  v14 = -1;
  v2 = (a1 + 64);
  result = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "arwpospredictiononly", v9, &v14, &v13);
  if ((result & 0x80000000) != 0 || !v14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return oneword_posparser_Close(a1);
  }

  v4 = cstdlib_strchr(**&v9[0], v13);
  if (v4)
  {
    *v4 = 0;
  }

  if (cstdlib_strcmp(**&v9[0], "1"))
  {
    return oneword_posparser_Close(a1);
  }

  v11 = 1;
  result = posparser_Open(*a1, (a1 + 2008));
  if ((result & 0x80000000) == 0)
  {
    *(*(a1 + 2008) + 8) = *v2;
    v5 = *(a1 + 2008);
    *(v5 + 24) = *(a1 + 80);
    *(v5 + 32) = *(a1 + 56);
    *(v5 + 56) = *(a1 + 104);
    *(v5 + 40) = *(a1 + 88);
    result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v12);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcpy((*(a1 + 2008) + 240), v12);
      cstdlib_strcpy((*(a1 + 2008) + 243), "pos");
      v6 = *(a1 + 2008);
      result = getPosparserIGTreesAndDict(*a1, *(a1 + 16), *(a1 + 24), *(v6 + 8), *(v6 + 16), *(v6 + 24), (v6 + 232), (v6 + 216), (v6 + 224), (v6 + 236), (v6 + 240), &v11);
      if ((result & 0x80000000) == 0)
      {
        if (v11)
        {
          *(a1 + 2004) = 1;
          v7 = *(*a1 + 8);
          v8 = *(a1 + 2008);
          v9[0] = xmmword_287EEC128;
          v9[1] = *off_287EEC138;
          v10 = off_287EEC148;
          result = ssftmap_ObjOpen(v7, 0, v9, (v8 + 256));
          if ((result & 0x80000000) == 0)
          {
            return posparser_getPosMap(*(a1 + 2008));
          }

          return result;
        }

        return oneword_posparser_Close(a1);
      }
    }
  }

  return result;
}

uint64_t oneword_posparser_Close(uint64_t a1)
{
  v2 = *(a1 + 2008);
  if (v2)
  {
    if (v2[32])
    {
      v3 = ssftmap_ObjClose(v2[32]);
      v2 = *(a1 + 2008);
      if ((v3 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = 0;
    }

    if (v2[27] && v2[28])
    {
      v3 = freePosparserIGTrees(*a1, v2 + 27, v2 + 28);
      v2 = *(a1 + 2008);
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:
  posparser_Close(v2);
  *(a1 + 2008) = 0;
  *(a1 + 2004) = 0;
  return v3;
}

uint64_t oneword_posparser_Reopen(uint64_t a1)
{
  result = oneword_posparser_Close(a1);
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
  v46 = 0;
  v45 = 0;
  v43 = 0;
  __s = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  __src = 0;
  v37 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v46);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (((*(a1[7] + 184))(a2, a3, v46, 0, &v45) & 0x80000000) != 0)
  {
    return v6;
  }

  if (v45 != 1)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, v46, 0, &__s, &v41);
  if ((v6 & 0x80000000) != 0 || v41 < 2u)
  {
    return v6;
  }

  v7 = cstdlib_strlen(__s);
  v8 = heap_Calloc(*(*a1 + 8), 1, v7 + 1);
  v43 = v8;
  if (!v8)
  {
    goto LABEL_34;
  }

  v13 = v8;
  cstdlib_strcpy(v8, __s);
  v14 = (*(a1[7] + 176))(a2, a3, v46, 1, &__src, &v37);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = heap_Alloc(*(*a1 + 8), 32 * v37);
    v38 = v15;
    if (v15)
    {
      v16 = v15;
      cstdlib_memcpy(v15, __src, 32 * v37);
      v17 = v46;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      v50 = 0;
      __b = 0u;
      v49 = 0u;
      v18 = v37;
      v47 = v37;
      cstdlib_memset(&__b, 0, 0x20uLL);
      LODWORD(__b) = 1;
      if (((*(a1[7] + 184))(a2, a3, v17, 3, &v53 + 2) & 0x80000000) != 0 || HIWORD(v53) != 1 || ((*(a1[7] + 104))(a2, a3, 3, v17, &v53) & 0x80000000) != 0)
      {
LABEL_15:
        v21 = v16;
      }

      else
      {
        v19 = 0;
        v20 = 32 * v18 + 32;
        while (v53)
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
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0, v30, v31, v32, v33, v36);
            LODWORD(v18) = v37;
            goto LABEL_17;
          }
        }

        else
        {
          v21 = v16;
        }

        if (((*(a1[7] + 104))(a2, a3, 3, v17, &v53) & 0x80000000) == 0)
        {
          v34 = v53;
          if (v53)
          {
            do
            {
              if (((*(a1[7] + 168))(a2, a3, v34, 1, 1, &v52, &v52 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v53, 2, 1, &v51, &v52 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v53, 0, 1, &v50, &v52 + 2) & 0x80000000) != 0)
              {
                break;
              }

              LODWORD(__b) = 59;
              DWORD1(__b) = v52;
              v35 = *(v21 + 12) + v52;
              DWORD2(__b) = v51;
              HIDWORD(__b) = v35;
              LODWORD(v49) = v51 - v52;
              DWORD2(v49) = v50;
              posPInsertTOKMarker(v21, &v47, &__b);
              if (((*(a1[7] + 120))(a2, a3, v53, &v53) & 0x80000000) != 0)
              {
                break;
              }

              v34 = v53;
            }

            while (v53);
            LODWORD(v18) = v47;
          }
        }
      }

      v38 = v21;
      v37 = v18;
      v16 = v21;
LABEL_17:
      v14 = posparser_ExtractWords(a1[251], v16, v18, v13, v7, &v42, &v41 + 1);
      if ((v14 & 0x80000000) == 0)
      {
        v14 = posparser_Process(a1[251], a2, a3, v42, HIWORD(v41), 0, v46, &v43, &v38, &v37);
        if ((v14 & 0x80000000) == 0)
        {
          v22 = *(a1[7] + 160);
          v23 = v46;
          v24 = cstdlib_strlen(v43);
          v14 = v22(a2, a3, v23, 0, (v24 + 1), v43, &v40);
          if ((v14 & 0x80000000) == 0)
          {
            v14 = (*(a1[7] + 160))(a2, a3, v46, 1, v37, v38, &v40);
          }
        }
      }

      goto LABEL_21;
    }

LABEL_34:
    v6 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0, v9, v10, v11, v12, v36);
    return v6;
  }

LABEL_21:
  v6 = v14;
LABEL_22:
  if (v43)
  {
    heap_Free(*(*a1 + 8), v43);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v37;
    if (v37)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        if (*&v38[v27] == 58)
        {
          heap_Free(*(*a1 + 8), *&v38[v27 + 24]);
          *&v38[v27 + 24] = 0;
          v26 = v37;
        }

        ++v28;
        v27 += 32;
      }

      while (v28 < v26);
      v25 = v38;
    }

    heap_Free(*(*a1 + 8), v25);
  }

  if (v42)
  {
    posparser_FreeWords(a1[251], v42, HIWORD(v41));
  }

  return v6;
}

uint64_t dt_Main(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v142 = *MEMORY[0x277D85DE8];
  memset(v140, 0, sizeof(v140));
  memset(__b, 0, sizeof(__b));
  v138 = 0;
  v137 = 0;
  v135 = 0;
  __s = 0;
  v134 = 0;
  v133 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  v12 = (a1 + 168);
  cstdlib_strcpy(*(a1 + 168), "");
  *(*(a1 + 160) + 127) = 0;
  if (!cstdlib_strstr((a1 + 584), a6))
  {
    v13 = *(a1 + 160);
    v14 = cstdlib_strlen(v13);
    v15 = *(a1 + 160);
    v16 = cstdlib_strlen(v15);
    v17 = utf8_Utf8ToDepes(v13, v14 + 1, 0, v15, v16 + 1, &v133, 0);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }
  }

  v18 = *(a1 + 160);
  v19 = cstdlib_strlen(v18);
  v20 = Transcription_Con(v140, a1 + 888, v18, v19 + 1, 4, 1);
  v21 = LH_ERROR_to_VERROR(v20);
  if ((v21 & 0x80000000) != 0)
  {
    v43 = v21;
    goto LABEL_97;
  }

  v131 = a3;
  v26 = PtrQueue_Con(__b, a1 + 888, 5u, 5);
  v31 = LH_ERROR_to_VERROR(v26);
  if ((v31 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v27, v28, v29, v30, v125);
    appended = v31;
    goto LABEL_91;
  }

  Word = _LexDT_FindWord(a5, v140, __b);
  v33 = LH_ERROR_to_VERROR(Word);
  v38 = v33;
  if ((v33 & 0x80000000) != 0)
  {
    v39 = v33 & 0x1FFF;
    v40 = *(*a1 + 32);
    if (v39 != 266)
    {
      log_OutPublic(v40, "FE_ONEWORD", 34004, 0, v34, v35, v36, v37, v125);
      goto LABEL_36;
    }

    log_OutPublic(v40, "FE_ONEWORD", 34005, 0, v34, v35, v36, v37, v125);
  }

  if (PtrQueue_IsEmpty(__b))
  {
    v41 = 1;
    appended = v38;
    if (!a2)
    {
      goto LABEL_91;
    }

LABEL_29:
    v56 = v41;
    if (cstdlib_strcmp(*v12, ""))
    {
      v57 = 0;
    }

    else
    {
      v57 = v56;
    }

    if ((v57 & 1) == 0)
    {
      if (dynamic_strcat((a1 + 168), ";_", (a1 + 200), *(*a1 + 8)))
      {
        v58 = *(*(a1 + 56) + 160);
        v59 = cstdlib_strlen(*(a1 + 168));
        appended = v58(v131, a4, a2, 11, (v59 + 1), *(a1 + 168), &v138 + 2);
      }

      else
      {
        appended = 2310021130;
      }
    }

    goto LABEL_91;
  }

  v137 = 0;
  v130 = a2;
  if (!a2)
  {
    goto LABEL_26;
  }

  v44 = (*(*(a1 + 56) + 184))(v131, a4, a2, 11, &v137);
  v45 = v137;
  if ((v44 & 0x80000000) == 0 && v137 == 1)
  {
    v38 = (*(*(a1 + 56) + 176))(v131, a4, a2, 11, &__s, &v138);
    if ((v38 & 0x80000000) == 0)
    {
      v45 = v137;
      goto LABEL_19;
    }

LABEL_36:
    appended = v38;
    goto LABEL_91;
  }

LABEL_19:
  if (v45 && __s)
  {
    v46 = a4;
    appended = 2310021130;
    v47 = cstdlib_strlen(__s);
    v48 = v47 + 3;
    v49 = *(a1 + 168);
    if (*(a1 + 200) < (v47 + 3))
    {
      v50 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v47 + 3));
      if (!v50)
      {
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v51, v52, v53, v54, v125);
        goto LABEL_91;
      }

      v49 = v50;
      *v12 = v50;
      *(a1 + 200) = v48;
    }

    cstdlib_strcpy(v49, __s);
    v128 = v48;
    a4 = v46;
    a2 = v130;
    if (!dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(*a1 + 8)))
    {
      goto LABEL_91;
    }

    goto LABEL_27;
  }

LABEL_26:
  cstdlib_strcpy(*v12, "");
  v128 = 3;
LABEL_27:
  IsEmpty = PtrQueue_IsEmpty(__b);
  v41 = 1;
  appended = v38;
  if (IsEmpty)
  {
    if (!a2)
    {
      goto LABEL_91;
    }

    goto LABEL_29;
  }

  v126 = a4;
  v60 = 0;
  v127 = a2 == 0;
  do
  {
    v61 = PtrQueue_Item(__b);
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "DT: %s", v62, v63, v64, *(v61 + 8));
    cstdlib_strcpy(__dst, "dtpostproc");
    v129 = cstdlib_strlen(__dst);
    if (*(a1 + 576) && !*(a1 + 840))
    {
      v132 = 0;
      v83 = (2 * cstdlib_strlen(*(v61 + 8))) | 1u;
      v84 = *(a1 + 176);
      if (*(a1 + 208) < v83)
      {
        v85 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v83);
        if (!v85)
        {
LABEL_89:
          appended = 2310021130;
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v68, v69, v70, v71, v125);
          goto LABEL_90;
        }

        v84 = v85;
        *(a1 + 176) = v85;
        *(a1 + 208) = v83;
      }

      appended = (*(*(a1 + 152) + 72))(*(a1 + 136), *(a1 + 144), 1, *(v61 + 8), v83, v84, 0);
      v86 = *(a1 + 176);
      v87 = cstdlib_strlen(v86);
      v88 = Utf8_DepesLengthInBytesUtf8(v86, v87);
      if (v88 >= *(a1 + 192))
      {
        v89 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v88 + 1);
        if (!v89)
        {
          goto LABEL_99;
        }

        *(a1 + 160) = v89;
        *(a1 + 192) = v88 + 1;
      }

      if (!cstdlib_strstr((a1 + 584), a6))
      {
        v94 = *(a1 + 176);
        v95 = cstdlib_strlen(v94);
        appended = utf8_DepesToUtf8(v94, v95, 0, *(a1 + 160), v88, &v132, 0);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      *(*(a1 + 160) + v132) = 0;
      goto LABEL_59;
    }

    v65 = cstdlib_strlen(*(v61 + 8)) + 1;
    v66 = *(a1 + 160);
    if (*(a1 + 192) < v65)
    {
      v67 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v65);
      if (!v67)
      {
        goto LABEL_89;
      }

      v66 = v67;
      *(a1 + 160) = v67;
      *(a1 + 192) = v65;
    }

    cstdlib_strcpy(v66, *(v61 + 8));
    appended = 0;
    v75 = *(a1 + 840);
    if (!v75 && v65)
    {
      v76 = 0;
      v77 = 1;
      do
      {
        v78 = *(a1 + 160);
        v79 = &v78[v76];
        if (v78[v76] == 126)
        {
          v80 = cstdlib_strlen(v78);
          cstdlib_memmove((v79 + 1), v79, v80 + v77);
          v81 = *(a1 + 160);
          v82 = cstdlib_strlen("¡");
          cstdlib_memcpy((v81 + v76), "¡", v82);
          ++v65;
        }

        ++v76;
        --v77;
      }

      while (v76 < v65);
      appended = 0;
      a2 = v130;
LABEL_59:
      v75 = *(a1 + 840);
    }

    if (v75)
    {
      v135 = *(a1 + 160);
      if ((v60 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v72, v73, v74, __dst);
      v99 = *(*(a1 + 104) + 120);
      v100 = *(a1 + 160);
      v101 = cstdlib_strlen(v100);
      v102 = v99(*(a1 + 88), *(a1 + 96), 0, v100, v101);
      if ((v102 & 0x80000000) != 0)
      {
        goto LABEL_88;
      }

      if (cstdlib_strcmp(a6, "normal"))
      {
        cstdlib_strcat(__dst, "_");
        cstdlib_strcat(__dst, a6);
      }

      if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst) & 0x80000000) != 0)
      {
        __dst[v129] = 0;
        v102 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst);
        if ((v102 & 0x80000000) != 0)
        {
LABEL_88:
          appended = v102;
LABEL_90:
          PDELETE_Transcription(a1 + 888, v61);
          goto LABEL_91;
        }
      }

      appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v135, &v134);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_90;
      }

      v135[v134] = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v103, v104, v105, __dst);
      if (v134)
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v135;
          v112 = cstdlib_strlen("¡");
          if (!cstdlib_strncmp(&v111[v109], "¡", v112))
          {
            v113 = &v135[v109];
            v114 = cstdlib_strlen(v135);
            cstdlib_memmove(v113 + 1, v113 + 2, v114 + v110);
            v135[v109] = 126;
          }

          ++v109;
          --v110;
        }

        while (v109 < v134);
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v106, v107, v108, __dst);
      a2 = v130;
      if ((v60 & 1) == 0)
      {
LABEL_81:
        appended = oneword_AppendPhon(a1, v135, "*", "*", 0, v127);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_90;
        }

        goto LABEL_82;
      }
    }

    if (a2)
    {
      v96 = cstdlib_strlen(v135);
      v97 = v128 + v96 + 1;
      if (*(a1 + 200) < (v128 + v96 + 1))
      {
        v98 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v128 + v96 + 1));
        if (!v98)
        {
LABEL_99:
          appended = 2310021130;
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v90, v91, v92, v93, v125);
          goto LABEL_91;
        }

        *v12 = v98;
        *(a1 + 200) = v97;
      }

      v128 = v97;
      if (!dynamic_strcat((a1 + 168), v135, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(*a1 + 8)))
      {
        appended = 2310021130;
        goto LABEL_91;
      }
    }

LABEL_82:
    PtrQueue_Remove(__b);
    PDELETE_Transcription(a1 + 888, v61);
    v60 = 1;
  }

  while (!PtrQueue_IsEmpty(__b));
  v41 = 0;
  a4 = v126;
  if (a2)
  {
    goto LABEL_29;
  }

LABEL_91:
  v115 = Transcription_Des(v140);
  v116 = LH_ERROR_to_VERROR(v115);
  if ((appended & 0x80000000) == 0)
  {
    v121 = v116;
    if ((v116 & 0x80000000) != 0)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v117, v118, v119, v120, v125);
      appended = v121;
    }
  }

  if ((v31 & 0x80000000) == 0)
  {
    v122 = (*(*&__b[0] + 16))(__b);
    v123 = LH_ERROR_to_VERROR(v122);
    if ((appended & 0x80000000) == 0)
    {
      v43 = v123;
      if ((v123 & 0x80000000) != 0)
      {
LABEL_97:
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v22, v23, v24, v25, v125);
        return v43;
      }
    }
  }

  return appended;
}

uint64_t mde_stemafx_Main(uint64_t a1, const char *a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  if (*(a1 + 286) == 1 && cstdlib_strlen(__s) >= *(a1 + 282) && cstdlib_strlen(__s) <= *(a1 + 283) && (*(a1 + 284) != 1 || (v13 = *__s, (v13 - 65) < 0x1A) || (v14 = v13 - 128, v14 <= 0x25) && ((1 << v14) & 0x200605C001) != 0))
  {
    v15 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    cstdlib_strcpy(*(a1 + 160), "");
    cstdlib_strcpy(*(a1 + 168), "");
    cstdlib_strcpy(*(a1 + 176), "");
    v11 = hlp_MdeRecurse(a1, __s, 0, &v22, 0, 0, a2);
    if ((v11 & 0x80000000) == 0 && !v22)
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix failed", v16, v17, v18, v21);
      cstdlib_strcpy(*(a1 + 160), __s);
      cstdlib_strcpy(*(a1 + 168), "");
      cstdlib_strcpy(*(a1 + 176), "");
      if (cstdlib_strlen(__s))
      {
        v19 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v19 += utf8_determineUTF8CharLength(__s[v19]);
          if (cstdlib_strlen(__s) <= v19)
          {
            return v11;
          }
        }

        return 2310021130;
      }
    }
  }

  else
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix cfg settings do not apply on %s", a6, a7, a8, __s);
    v11 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v11 & 0x80000000) == 0)
    {
      cstdlib_strcpy(*(a1 + 160), __s);
      cstdlib_strcpy(*(a1 + 168), "");
      cstdlib_strcpy(*(a1 + 176), "");
      if (cstdlib_strlen(__s))
      {
        v12 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v12 += utf8_determineUTF8CharLength(__s[v12]);
          if (cstdlib_strlen(__s) <= v12)
          {
            return v11;
          }
        }

        return 2310021130;
      }
    }
  }

  return v11;
}

uint64_t hlp_MdeRecurse(uint64_t a1, const char *a2, unsigned int a3, _DWORD *a4, int a5, char *a6, const char *a7)
{
  v250 = 0;
  v251 = 0;
  v249 = 0;
  v248 = 0;
  cstdlib_strcpy(__dst, "1*");
  cstdlib_strcpy(v246, "  ");
  v14 = 0;
  if (a3 != cstdlib_strlen(a2))
  {
LABEL_13:
    if (*(a1 + 285) != a5)
    {
      v32 = cstdlib_strlen(a2);
      if (a3 < v32)
      {
        __s = &a2[a3];
        v231 = a5 + 1;
        v33 = v32;
        v243 = a3;
        while (!*a4)
        {
          v34 = a2[v33];
          a2[v33] = 0;
          if (a3)
          {
            v35 = cstdlib_strchr(a6, 95);
            if (v35)
            {
              v36 = v35;
              v240 = v34;
              v37 = __s;
              v38 = cstdlib_strlen(__s);
              v39 = cstdlib_strlen(v36);
              cstdlib_memmove(&a6[v38], v36, v39 + 1);
              v40 = cstdlib_strlen(__s);
              cstdlib_memcpy(a6, __s, v40);
              v41 = cstdlib_strchr(a6, 95);
              if (v41)
              {
                v34 = v240;
                if (!*a4)
                {
                  v44 = v41;
                  v237 = a4;
                  v233 = v41 + 1;
                  v45 = 1;
                  while (1)
                  {
                    v46 = v233;
                    if ((v45 & 1) == 0)
                    {
                      __dst[0] = v44[1];
                      *v246 = *(v44 + 1);
                      *(v44 + 1) = 42;
                      v46 = __dst;
                    }

                    LOWORD(v249) = 0;
                    v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", a6, &v251, &v249, &v248);
                    v42 = *(*a1 + 8);
                    if ((v14 & 0x80000000) != 0)
                    {
                      goto LABEL_274;
                    }

                    v43 = hlp_saveLookupResults(v42, v251, v249, &v250, &v249 + 1);
                    if ((v43 & 0x80000000) != 0)
                    {
                      return v43;
                    }

                    if ((v45 & 1) == 0)
                    {
                      *(v44 + 1) = *v246;
                    }

                    if (HIWORD(v249) && !*v237)
                    {
                      v47 = 0;
                      v228 = a7;
                      v222 = v44;
                      while (1)
                      {
                        v224 = v47;
                        v48 = *(v250 + 8 * v47);
                        v49 = cstdlib_strchr(v48, v248);
                        v50 = v49;
                        if (v49)
                        {
                          *v49 = 0;
                          v50 = v49 + 1;
                          v51 = cstdlib_strchr(v49 + 1, v248);
                          if (v51)
                          {
                            *v51 = 0;
                          }
                        }

                        v226 = cstdlib_strlen(*(a1 + 160));
                        if (v226)
                        {
                          if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                          {
                            goto LABEL_272;
                          }
                        }

                        if (v50 && cstdlib_strlen(v50))
                        {
                          v37 = v50;
                        }

                        v52 = cstdlib_strlen(v37);
                        v53 = cstdlib_strlen(v48) << 16;
                        if (v53 <= (cstdlib_strlen(v46) << 16))
                        {
                          v54 = v46;
                        }

                        else
                        {
                          v54 = v48;
                        }

                        if (v52 << 16 <= (cstdlib_strlen(v54) << 16))
                        {
                          v56 = cstdlib_strlen(v48) << 16;
                          if (v56 <= (cstdlib_strlen(v46) << 16))
                          {
                            v55 = v46;
                          }

                          else
                          {
                            v55 = v48;
                          }
                        }

                        else
                        {
                          v55 = v37;
                        }

                        v57 = cstdlib_strlen(v55);
                        v58 = hlp_Realloc(a1, (v57 + v226 + 4));
                        if ((v58 & 0x80000000) != 0)
                        {
                          goto LABEL_277;
                        }

                        if (!dynamic_strcat((a1 + 160), v37, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v48, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v46, (a1 + 208), *(*a1 + 8)))
                        {
                          goto LABEL_272;
                        }

                        v59 = cstdlib_strlen(v37);
                        v60 = Utf8_LengthInUtf8chars(v37, v59) << 16;
                        if (v60 >= (cstdlib_strlen(v48) << 16) && (v61 = cstdlib_strlen(v37), v62 = Utf8_LengthInUtf8chars(v37, v61) << 16, v62 >= (cstdlib_strlen(v46) << 16)))
                        {
                          v74 = cstdlib_strlen(v37);
                          v75 = Utf8_LengthInUtf8chars(v37, v74);
                          if (cstdlib_strlen(v48) != v75)
                          {
                            v76 = 0;
                            while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                            {
                              ++v76;
                              v77 = cstdlib_strlen(v37);
                              v78 = Utf8_LengthInUtf8chars(v37, v77);
                              if (v78 - cstdlib_strlen(v48) <= v76)
                              {
                                goto LABEL_80;
                              }
                            }

                            goto LABEL_272;
                          }

LABEL_80:
                          v79 = cstdlib_strlen(v37);
                          v80 = Utf8_LengthInUtf8chars(v37, v79);
                          if (cstdlib_strlen(v46) != v80)
                          {
                            v81 = 0;
                            while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                            {
                              ++v81;
                              v82 = cstdlib_strlen(v37);
                              v83 = Utf8_LengthInUtf8chars(v37, v82);
                              if (v83 - cstdlib_strlen(v46) <= v81)
                              {
                                goto LABEL_93;
                              }
                            }

                            goto LABEL_272;
                          }
                        }

                        else
                        {
                          v63 = cstdlib_strlen(v48) << 16;
                          v64 = cstdlib_strlen(v37);
                          if (v63 >= (Utf8_LengthInUtf8chars(v37, v64) << 16) && (v65 = cstdlib_strlen(v48) << 16, v65 >= (cstdlib_strlen(v46) << 16)))
                          {
                            v84 = cstdlib_strlen(v48);
                            v85 = cstdlib_strlen(v37);
                            if (v84 != Utf8_LengthInUtf8chars(v37, v85))
                            {
                              v86 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v86;
                                v87 = cstdlib_strlen(v48);
                                v88 = cstdlib_strlen(v37);
                                if (v87 - Utf8_LengthInUtf8chars(v37, v88) <= v86)
                                {
                                  goto LABEL_89;
                                }
                              }

                              goto LABEL_272;
                            }

LABEL_89:
                            v89 = cstdlib_strlen(v48);
                            if (v89 != cstdlib_strlen(v46))
                            {
                              v90 = 0;
                              while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                              {
                                ++v90;
                                v91 = cstdlib_strlen(v48);
                                if (v91 - cstdlib_strlen(v46) <= v90)
                                {
                                  goto LABEL_93;
                                }
                              }

                              goto LABEL_272;
                            }
                          }

                          else
                          {
                            v66 = cstdlib_strlen(v46);
                            v67 = cstdlib_strlen(v37);
                            if (v66 != Utf8_LengthInUtf8chars(v37, v67))
                            {
                              v68 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v68;
                                v69 = cstdlib_strlen(v46);
                                v70 = cstdlib_strlen(v37);
                                if (v69 - Utf8_LengthInUtf8chars(v37, v70) <= v68)
                                {
                                  goto LABEL_71;
                                }
                              }

                              goto LABEL_272;
                            }

LABEL_71:
                            v71 = cstdlib_strlen(v46);
                            if (v71 != cstdlib_strlen(v48))
                            {
                              v72 = 0;
                              while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                              {
                                ++v72;
                                v73 = cstdlib_strlen(v46);
                                if (v73 - cstdlib_strlen(v48) <= v72)
                                {
                                  goto LABEL_93;
                                }
                              }

                              goto LABEL_272;
                            }
                          }
                        }

LABEL_93:
                        a2[v33] = v240;
                        a7 = v228;
                        v14 = hlp_MdeRecurse(a1, a2, v33, v237, v231, a6, v228);
                        if ((v14 & 0x80000000) != 0)
                        {
                          goto LABEL_273;
                        }

                        if (!*v237)
                        {
                          *(*(a1 + 160) + v226) = 0;
                          *(*(a1 + 168) + v226) = 0;
                          *(*(a1 + 176) + v226) = 0;
                        }

                        v44 = v222;
                        v47 = v224 + 1;
                        v37 = __s;
                        if (v224 + 1 >= HIWORD(v249) || *v237)
                        {
                          goto LABEL_37;
                        }
                      }
                    }

                    v14 = 0;
LABEL_37:
                    if (v45)
                    {
                      v45 = 0;
                      if (!*v237)
                      {
                        continue;
                      }
                    }

                    a4 = v237;
                    goto LABEL_165;
                  }
                }
              }

              else
              {
LABEL_165:
                v34 = v240;
              }
            }
          }

          else
          {
            LOWORD(v249) = 0;
            v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdestem", a2, &v251, &v249, &v248);
            v42 = *(*a1 + 8);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_274;
            }

            v43 = hlp_saveLookupResults(v42, v251, v249, &v250, &v249 + 1);
            if ((v43 & 0x80000000) != 0)
            {
              return v43;
            }

            if (HIWORD(v249) && !*a4)
            {
              v92 = 0;
              v229 = a7;
              v238 = a4;
              v241 = v34;
              while (1)
              {
                v93 = *(v250 + 8 * v92);
                v94 = cstdlib_strchr(v93, v248);
                v95 = v94;
                if (v94)
                {
                  *v94 = 0;
                  v95 = v94 + 1;
                  v96 = cstdlib_strchr(v94 + 1, v248);
                  v97 = v96;
                  if (v96)
                  {
                    *v96 = 0;
                    v97 = v96 + 1;
                    v98 = cstdlib_strchr(v96 + 1, v248);
                    if (v98)
                    {
                      *v98 = 0;
                    }
                  }
                }

                else
                {
                  v97 = 0;
                }

                v99 = cstdlib_strlen(*(a1 + 160));
                if (v99)
                {
                  if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                  {
                    goto LABEL_272;
                  }
                }

                if (v95)
                {
                  v100 = v95;
                }

                else
                {
                  v100 = "";
                }

                if (!v97 || !cstdlib_strcmp(v97, ""))
                {
                  v97 = a2;
                }

                v101 = cstdlib_strlen(v97);
                v102 = cstdlib_strlen(v93) << 16;
                if (v102 <= (cstdlib_strlen(v100) << 16))
                {
                  v103 = v100;
                }

                else
                {
                  v103 = v93;
                }

                if (v101 << 16 <= (cstdlib_strlen(v103) << 16))
                {
                  v105 = cstdlib_strlen(v93) << 16;
                  if (v105 <= (cstdlib_strlen(v100) << 16))
                  {
                    v104 = v100;
                  }

                  else
                  {
                    v104 = v93;
                  }
                }

                else
                {
                  v104 = v97;
                }

                v106 = cstdlib_strlen(v104);
                v58 = hlp_Realloc(a1, (v106 + v99 + 4));
                if ((v58 & 0x80000000) != 0)
                {
LABEL_277:
                  v14 = v58;
                  goto LABEL_273;
                }

                if (!dynamic_strcat((a1 + 160), v97, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v93, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v100, (a1 + 208), *(*a1 + 8)))
                {
                  goto LABEL_272;
                }

                v107 = cstdlib_strlen(v97);
                v108 = Utf8_LengthInUtf8chars(v97, v107) << 16;
                if (v108 >= (cstdlib_strlen(v93) << 16) && (v109 = cstdlib_strlen(v97), v110 = Utf8_LengthInUtf8chars(v97, v109) << 16, v110 >= (cstdlib_strlen(v100) << 16)))
                {
                  v122 = cstdlib_strlen(v97);
                  v123 = Utf8_LengthInUtf8chars(v97, v122);
                  if (cstdlib_strlen(v93) != v123)
                  {
                    v124 = 0;
                    while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                    {
                      ++v124;
                      v125 = cstdlib_strlen(v97);
                      v126 = Utf8_LengthInUtf8chars(v97, v125);
                      if (v126 - cstdlib_strlen(v93) <= v124)
                      {
                        goto LABEL_144;
                      }
                    }

                    goto LABEL_272;
                  }

LABEL_144:
                  v127 = cstdlib_strlen(v97);
                  v128 = Utf8_LengthInUtf8chars(v97, v127);
                  if (cstdlib_strlen(v100) != v128)
                  {
                    v129 = 0;
                    while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                    {
                      ++v129;
                      v130 = cstdlib_strlen(v97);
                      v131 = Utf8_LengthInUtf8chars(v97, v130);
                      if (v131 - cstdlib_strlen(v100) <= v129)
                      {
                        goto LABEL_157;
                      }
                    }

                    goto LABEL_272;
                  }
                }

                else
                {
                  v111 = cstdlib_strlen(v93) << 16;
                  v112 = cstdlib_strlen(v97);
                  if (v111 >= (Utf8_LengthInUtf8chars(v97, v112) << 16) && (v113 = cstdlib_strlen(v93) << 16, v113 >= (cstdlib_strlen(v100) << 16)))
                  {
                    v132 = cstdlib_strlen(v93);
                    v133 = cstdlib_strlen(v97);
                    if (v132 != Utf8_LengthInUtf8chars(v97, v133))
                    {
                      v134 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v134;
                        v135 = cstdlib_strlen(v93);
                        v136 = cstdlib_strlen(v97);
                        if (v135 - Utf8_LengthInUtf8chars(v97, v136) <= v134)
                        {
                          goto LABEL_153;
                        }
                      }

                      goto LABEL_272;
                    }

LABEL_153:
                    v137 = cstdlib_strlen(v93);
                    if (v137 != cstdlib_strlen(v100))
                    {
                      v138 = 0;
                      while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                      {
                        ++v138;
                        v139 = cstdlib_strlen(v93);
                        if (v139 - cstdlib_strlen(v100) <= v138)
                        {
                          goto LABEL_157;
                        }
                      }

                      goto LABEL_272;
                    }
                  }

                  else
                  {
                    v114 = cstdlib_strlen(v100);
                    v115 = cstdlib_strlen(v97);
                    if (v114 != Utf8_LengthInUtf8chars(v97, v115))
                    {
                      v116 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v116;
                        v117 = cstdlib_strlen(v100);
                        v118 = cstdlib_strlen(v97);
                        if (v117 - Utf8_LengthInUtf8chars(v97, v118) <= v116)
                        {
                          goto LABEL_135;
                        }
                      }

                      goto LABEL_272;
                    }

LABEL_135:
                    v119 = cstdlib_strlen(v100);
                    if (v119 != cstdlib_strlen(v93))
                    {
                      v120 = 0;
                      while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                      {
                        ++v120;
                        v121 = cstdlib_strlen(v100);
                        if (v121 - cstdlib_strlen(v93) <= v120)
                        {
                          goto LABEL_157;
                        }
                      }

                      goto LABEL_272;
                    }
                  }
                }

LABEL_157:
                a2[v33] = v241;
                v140 = *(*a1 + 8);
                v141 = cstdlib_strlen(a2);
                v142 = cstdlib_strlen(v100);
                v143 = heap_Alloc(v140, (v141 + v142 + 1));
                if (!v143)
                {
                  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v144, v145, v146, v147, v221);
                  hlp_freeLookupResults(*(*a1 + 8), &v250, &v249 + 1);
                  return 2310021130;
                }

                v148 = v143;
                cstdlib_strcpy(v143, "_");
                cstdlib_strcat(v148, v100);
                a7 = v229;
                v14 = hlp_MdeRecurse(a1, a2, v33, v238, v231, v148, v229);
                heap_Free(*(*a1 + 8), v148);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_273;
                }

                if (!*v238)
                {
                  *(*(a1 + 160) + v99) = 0;
                  *(*(a1 + 168) + v99) = 0;
                  *(*(a1 + 176) + v99) = 0;
                }

                ++v92;
                v34 = v241;
                a6 = 0;
                if (v92 >= HIWORD(v249))
                {
                  a4 = v238;
                  goto LABEL_166;
                }

                a4 = v238;
                if (*v238)
                {
                  goto LABEL_166;
                }
              }
            }

            v14 = 0;
          }

LABEL_166:
          a2[v33--] = v34;
          a3 = v243;
          if (v243 >= v33)
          {
            goto LABEL_273;
          }
        }
      }
    }

    goto LABEL_273;
  }

  v245 = a6;
  v15 = *(*a1 + 8);
  v16 = (a1 + 168);
  v17 = cstdlib_strlen(*(a1 + 168));
  v18 = cstdlib_strlen(a7);
  v19 = heap_Alloc(v15, (v17 + v18 + 6));
  if (!v19)
  {
    v14 = 2310021130;
LABEL_170:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v20, v21, v22, v23, v221);
    return v14;
  }

  v24 = v19;
  cstdlib_strcpy(v19, "mde_");
  cstdlib_strcat(v24, a7);
  cstdlib_strcat(v24, "_");
  v25 = cstdlib_strlen(v24);
  if (cstdlib_strlen(*v16))
  {
    v29 = 0;
    do
    {
      v30 = *v16;
      v31 = (*v16)[v29];
      if (v31 != 32 && v31 != 126)
      {
        v24[v25] = v31;
        v30 = *v16;
        ++v25;
      }

      ++v29;
    }

    while (cstdlib_strlen(v30) > v29);
  }

  v24[v25] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v26, v27, v28, v24);
  LOWORD(v249) = -1;
  v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &v251, &v249, &v248);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  if (v249)
  {
LABEL_11:
    *a4 = 1;
    goto LABEL_12;
  }

  cstdlib_strcpy(v24, "mde_");
  if (cstdlib_strlen(*v16))
  {
    v152 = 0;
    v153 = 4;
    do
    {
      v154 = *v16;
      v155 = (*v16)[v152];
      if (v155 != 32 && v155 != 126)
      {
        v24[v153] = v155;
        v154 = *v16;
        ++v153;
      }

      ++v152;
    }

    while (cstdlib_strlen(v154) > v152);
    v156 = v153;
  }

  else
  {
    v156 = 4;
  }

  v24[v156] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v149, v150, v151, v24);
  LOWORD(v249) = -1;
  v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &v251, &v249, &v248);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_281:
    heap_Free(*(*a1 + 8), v24);
    return v14;
  }

  if (v249)
  {
    goto LABEL_11;
  }

  if (*a4 || !v245 || !*(a1 + 288))
  {
    goto LABEL_12;
  }

  v244 = a3;
  v157 = cstdlib_strchr(v245, 95);
  if (!v157 || (v158 = v157, v159 = cstdlib_strlen(v157), cstdlib_memmove(v245 + 1, v158, v159 + 1), *v245 = 64, (v160 = cstdlib_strchr(v245, 95)) == 0))
  {
    a3 = v244;
    goto LABEL_12;
  }

  a3 = v244;
  if (*a4)
  {
LABEL_12:
    heap_Free(*(*a1 + 8), v24);
    a6 = v245;
    goto LABEL_13;
  }

  v232 = v160;
  v234 = v160 + 1;
  v161 = 1;
  while (1)
  {
    v242 = v234;
    if ((v161 & 1) == 0)
    {
      __dst[0] = v232[1];
      *v246 = *(v232 + 1);
      *(v232 + 1) = 42;
      v242 = __dst;
    }

    LOWORD(v249) = 0;
    v162 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", v245, &v251, &v249, &v248);
    if ((v162 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    if ((v161 & 1) == 0)
    {
      *(v232 + 1) = *v246;
    }

    v162 = hlp_saveLookupResults(*(*a1 + 8), v251, v249, &v250, &v249 + 1);
    if ((v162 & 0x80000000) != 0)
    {
LABEL_280:
      v14 = v162;
      goto LABEL_281;
    }

    if (HIWORD(v249) && !*a4)
    {
      break;
    }

    v14 = 0;
LABEL_197:
    if (v161)
    {
      v161 = 0;
      if (!*a4)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  v163 = 0;
  v230 = a7;
  v239 = a4;
  v225 = v161;
  while (1)
  {
    v223 = v163;
    __sa = *(v250 + 8 * v163);
    v164 = cstdlib_strchr(__sa, v248);
    v165 = v164;
    if (v164)
    {
      *v164 = 0;
      v165 = v164 + 1;
      v166 = cstdlib_strchr(v164 + 1, v248);
      if (v166)
      {
        *v166 = 0;
      }
    }

    v227 = cstdlib_strlen(*(a1 + 160));
    if (v227 && (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8))))
    {
      goto LABEL_272;
    }

    if (v165)
    {
      if (cstdlib_strlen(v165))
      {
        v167 = v165;
      }

      else
      {
        v167 = "@";
      }
    }

    else
    {
      v167 = "@";
    }

    v168 = cstdlib_strlen(v167);
    v169 = cstdlib_strlen(__sa) << 16;
    if (v169 <= (cstdlib_strlen(v242) << 16))
    {
      v170 = v242;
    }

    else
    {
      v170 = __sa;
    }

    v161 = v225;
    if (v168 << 16 <= (cstdlib_strlen(v170) << 16))
    {
      v172 = cstdlib_strlen(__sa) << 16;
      if (v172 <= (cstdlib_strlen(v242) << 16))
      {
        v171 = v242;
      }

      else
      {
        v171 = __sa;
      }
    }

    else
    {
      v171 = v167;
    }

    v173 = cstdlib_strlen(v171);
    v174 = hlp_Realloc(a1, (v173 + v227 + 4));
    if ((v174 & 0x80000000) != 0)
    {
      v14 = v174;
      v220 = *(*a1 + 8);
      goto LABEL_285;
    }

    if (!dynamic_strcat((a1 + 160), v167, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), __sa, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v242, (a1 + 208), *(*a1 + 8)))
    {
      goto LABEL_272;
    }

    v175 = cstdlib_strlen(v167);
    v176 = Utf8_LengthInUtf8chars(v167, v175) << 16;
    if (v176 >= (cstdlib_strlen(__sa) << 16) && (v177 = cstdlib_strlen(v167), v178 = Utf8_LengthInUtf8chars(v167, v177) << 16, v178 >= (cstdlib_strlen(v242) << 16)))
    {
      v190 = cstdlib_strlen(v167);
      v191 = Utf8_LengthInUtf8chars(v167, v190);
      if (cstdlib_strlen(__sa) != v191)
      {
        v192 = 0;
        while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
        {
          ++v192;
          v193 = cstdlib_strlen(v167);
          v194 = Utf8_LengthInUtf8chars(v167, v193);
          if (v194 - cstdlib_strlen(__sa) <= v192)
          {
            goto LABEL_242;
          }
        }

        goto LABEL_272;
      }

LABEL_242:
      v195 = cstdlib_strlen(v167);
      v196 = Utf8_LengthInUtf8chars(v167, v195);
      if (cstdlib_strlen(v242) != v196)
      {
        v197 = 0;
        while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
        {
          ++v197;
          v198 = cstdlib_strlen(v167);
          v199 = Utf8_LengthInUtf8chars(v167, v198);
          if (v199 - cstdlib_strlen(v242) <= v197)
          {
            goto LABEL_255;
          }
        }

        goto LABEL_272;
      }
    }

    else
    {
      v179 = cstdlib_strlen(__sa) << 16;
      v180 = cstdlib_strlen(v167);
      if (v179 >= (Utf8_LengthInUtf8chars(v167, v180) << 16) && (v181 = cstdlib_strlen(__sa) << 16, v181 >= (cstdlib_strlen(v242) << 16)))
      {
        v200 = cstdlib_strlen(__sa);
        v201 = cstdlib_strlen(v167);
        if (v200 != Utf8_LengthInUtf8chars(v167, v201))
        {
          v202 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v202;
            v203 = cstdlib_strlen(__sa);
            v204 = cstdlib_strlen(v167);
            if (v203 - Utf8_LengthInUtf8chars(v167, v204) <= v202)
            {
              goto LABEL_251;
            }
          }

          goto LABEL_272;
        }

LABEL_251:
        v205 = cstdlib_strlen(__sa);
        if (v205 != cstdlib_strlen(v242))
        {
          v206 = 0;
          while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
          {
            ++v206;
            v207 = cstdlib_strlen(__sa);
            if (v207 - cstdlib_strlen(v242) <= v206)
            {
              goto LABEL_255;
            }
          }

          goto LABEL_272;
        }
      }

      else
      {
        v182 = cstdlib_strlen(v242);
        v183 = cstdlib_strlen(v167);
        if (v182 != Utf8_LengthInUtf8chars(v167, v183))
        {
          v184 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v184;
            v185 = cstdlib_strlen(v242);
            v186 = cstdlib_strlen(v167);
            if (v185 - Utf8_LengthInUtf8chars(v167, v186) <= v184)
            {
              goto LABEL_233;
            }
          }

          goto LABEL_272;
        }

LABEL_233:
        v187 = cstdlib_strlen(v242);
        if (v187 != cstdlib_strlen(__sa))
        {
          v188 = 0;
          while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
          {
            ++v188;
            v189 = cstdlib_strlen(v242);
            if (v189 - cstdlib_strlen(__sa) <= v188)
            {
              goto LABEL_255;
            }
          }

LABEL_272:
          v14 = 2310021130;
          goto LABEL_273;
        }
      }
    }

LABEL_255:
    v208 = *(*a1 + 8);
    v209 = cstdlib_strlen(*(a1 + 168));
    v210 = heap_Realloc(v208, v24, (v209 + 4));
    if (!v210)
    {
      v14 = 2310021130;
      heap_Free(*(*a1 + 8), v24);
      hlp_freeLookupResults(*(*a1 + 8), &v250, &v249 + 1);
      goto LABEL_170;
    }

    v24 = v210;
    cstdlib_strcpy(v210, "mde_");
    a7 = v230;
    a3 = v244;
    if (cstdlib_strlen(*v16))
    {
      v214 = 0;
      v215 = 4;
      do
      {
        v216 = *v16;
        v217 = (*v16)[v214];
        if (v217 != 32 && v217 != 126)
        {
          v24[v215] = v217;
          v216 = *v16;
          ++v215;
        }

        ++v214;
      }

      while (cstdlib_strlen(v216) > v214);
      v218 = v215;
    }

    else
    {
      v218 = 4;
    }

    v24[v218] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v211, v212, v213, v24);
    LOWORD(v249) = -1;
    v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &v251, &v249, &v248);
    a4 = v239;
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    if (v249)
    {
      *v239 = 1;
    }

    else if (!*v239)
    {
      *(*(a1 + 160) + v227) = 0;
      (*v16)[v227] = 0;
      *(*(a1 + 176) + v227) = 0;
    }

    v163 = v223 + 1;
    if (v223 + 1 >= HIWORD(v249) || *v239)
    {
      goto LABEL_197;
    }
  }

  v220 = *(*a1 + 8);
LABEL_285:
  heap_Free(v220, v24);
LABEL_273:
  v42 = *(*a1 + 8);
LABEL_274:
  hlp_freeLookupResults(v42, &v250, &v249 + 1);
  return v14;
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
        v13 = cstdlib_strlen(*(a2 + 8 * v12));
        v14 = heap_Alloc(a1, (v13 + 1));
        v15 = *a5;
        *(*a4 + 8 * v15) = v14;
        v16 = *(*a4 + 8 * v15);
        if (!v16)
        {
          break;
        }

        cstdlib_strcpy(v16, *(a2 + 8 * v15));
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

uint64_t hlp_WriteWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, __int16 a7, __int16 a8, const char *a9, const char *a10, const char *a11, const char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v41 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = 0;
  cstdlib_strcpy(v40, a9);
  cstdlib_strcpy(v39, a10);
  cstdlib_strcpy(__dst, a11);
  cstdlib_strcat(__dst, "!");
  cstdlib_strcat(__dst, a12);
  if (!a5 || ((v18 = cstdlib_strlen(v40), v19 = cstdlib_strlen(v39), v20 = cstdlib_strlen(__dst), v19 <= v18) ? (v21 = v18) : (v21 = v19), v20 <= v21 ? (v22 = v21) : (v22 = v20), (result = mosynt_PadWithChar(v40, 5000, 126, v22), (result & 0x80000000) == 0) && (result = mosynt_PadWithChar(v39, 5000, 32, v22), (result & 0x80000000) == 0) && (result = mosynt_PadWithChar(__dst, 5000, 32, v22), (result & 0x80000000) == 0)))
  {
    result = (*(*(a1 + 56) + 88))(a2, a3, a4, &v37);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, v37, 0, 1, &v36, &v33);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, v37, 1, 1, &v35, &v33);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, v37, 2, 1, &v34, &v33);
          if ((result & 0x80000000) == 0)
          {
            v24 = *(*(a1 + 56) + 160);
            v25 = v37;
            v26 = cstdlib_strlen(v40);
            result = v24(a2, a3, v25, 3, (v26 + 1), v40, &v33);
            if ((result & 0x80000000) == 0)
            {
              v27 = *(*(a1 + 56) + 160);
              v28 = v37;
              v29 = cstdlib_strlen(v39);
              result = v27(a2, a3, v28, 5, (v29 + 1), v39, &v33);
              if ((result & 0x80000000) == 0)
              {
                v30 = *(*(a1 + 56) + 160);
                v31 = v37;
                v32 = cstdlib_strlen(__dst);
                result = v30(a2, a3, v31, 6, (v32 + 1), __dst, &v33);
                if ((result & 0x80000000) == 0)
                {
                  result = (*(*(a1 + 56) + 160))(a2, a3, v37, 7, 1, va, &v33);
                  if ((result & 0x80000000) == 0)
                  {
                    return (*(*(a1 + 56) + 160))(a2, a3, v37, 9, 1, "", &v33);
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

uint64_t mde_MosyntMorphAna(uint64_t a1, char *a2, unsigned __int8 *a3, const char *a4, uint64_t a5, __int16 a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 *a11, int a12, char a13, _DWORD *a14)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  memset(__b, 0, 512);
  v28 = 0;
  cstdlib_memset(__b, 0, 0x8C8uLL);
  *a14 = 0;
  cstdlib_strcpy(*(a1 + 240), "");
  cstdlib_strcpy(*(a1 + 248), "");
  cstdlib_strcpy(*(a1 + 256), "");
  result = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), __b);
  if ((result & 0x80000000) == 0)
  {
    result = mosynt_WordAnalysis(*(a1 + 48), __b, a3, 0, 1, a13, &v29 + 1, &v28);
    if ((result & 0x80000000) == 0)
    {
      v21 = HIDWORD(v29);
      *a14 = HIDWORD(v29);
      if (v21)
      {
        *a11 = cstdlib_strlen(a4) + a6;
        HIDWORD(v29) = 1;
        v22 = a2 + 15000;
        v23 = a2 + 5000;
        v24 = 1;
        while (1)
        {
          result = mosynt_GetReading(*(a1 + 48), __b, 0, &v29 + 1, v22, 5000, v23, 5000, &v29);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosynt_SubstAllSubstrOcc(v23, "~", "¡", a2 + 10000, 5000);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          cstdlib_strcpy(v23, a2 + 10000);
          if (!HIDWORD(v29))
          {
            return mosynt_FinishWordAnalysis(*(a1 + 48), __b);
          }

          if (a12)
          {
            break;
          }

          if (v24)
          {
            if (v29 == v28)
            {
              hlp_WriteWordRec(a1, a9, a10, a7, 1, 8, a6, *a11, v23, "", "", "", v27);
              v24 = 0;
            }

            else
            {
              v24 = 1;
            }

LABEL_12:
            if (!HIDWORD(v29))
            {
              return mosynt_FinishWordAnalysis(*(a1 + 48), __b);
            }
          }
        }

        v25 = a10;
        v26 = a9;
        if (v24)
        {
          hlp_WriteWordRec(a1, a9, a10, a7, 1, 4, a6, *a11, v23, "Y", "Y", "", v27);
          v26 = a9;
          v25 = a10;
        }

        hlp_WriteWordRec(a1, v26, v25, a7, 0, 8, a6, *a11, v23, "N", "*", v22, v27);
        v24 = 0;
        goto LABEL_12;
      }

      return mosynt_FinishWordAnalysis(*(a1 + 48), __b);
    }
  }

  return result;
}

uint64_t mde_Main(uint64_t a1, const char *a2, char *__s, const char *a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9)
{
  v33 = a5;
  v32 = a6;
  v30 = 8;
  v31 = 0;
  v29 = 0;
  v28 = 1;
  if (*(a1 + 286) == 1 || cstdlib_strlen(__s) < *(a1 + 282) || cstdlib_strlen(__s) > *(a1 + 283) || *(a1 + 284) == 1 && (v18 = *__s, (v18 - 65) >= 0x1A) && (v18 != 195 || __s[1] - 132 > 0x18 || ((1 << (__s[1] + 124)) & 0x104202F) == 0))
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde cfg settings do not apply on %s", a6, a7, a8, a2);
    return 0;
  }

  else
  {
    cstdlib_strcpy(*(a1 + 240), "");
    cstdlib_strcpy(*(a1 + 248), "");
    cstdlib_strcpy(*(a1 + 256), "");
    result = hlp_MdeRecurse_0(a1, a2, a4, 0, &v31, 0);
    if ((result & 0x80000000) == 0)
    {
      if (v31)
      {
        *a9 = cstdlib_strlen(__s) + a5;
        result = (*(*(a1 + 56) + 88))(a7, a8, a6, &v32);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a7, a8, v32, 0, 1, &v30, &v29);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a7, a8, v32, 1, 1, &v33, &v29);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(a1 + 56) + 160))(a7, a8, v32, 2, 1, a9, &v29);
              if ((result & 0x80000000) == 0)
              {
                v19 = *(*(a1 + 56) + 160);
                v20 = v32;
                v21 = cstdlib_strlen(*(a1 + 240));
                result = v19(a7, a8, v20, 3, (v21 + 1), *(a1 + 240), &v29);
                if ((result & 0x80000000) == 0)
                {
                  v22 = *(*(a1 + 56) + 160);
                  v23 = v32;
                  v24 = cstdlib_strlen(*(a1 + 248));
                  result = v22(a7, a8, v23, 5, (v24 + 1), *(a1 + 248), &v29);
                  if ((result & 0x80000000) == 0)
                  {
                    v25 = *(*(a1 + 56) + 160);
                    v26 = v32;
                    v27 = cstdlib_strlen(*(a1 + 256));
                    result = v25(a7, a8, v26, 6, (v27 + 1), *(a1 + 256), &v29);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a7, a8, v32, 7, 1, &v28, &v29);
                      if ((result & 0x80000000) == 0)
                      {
                        return (*(*(a1 + 56) + 160))(a7, a8, v32, 9, 1, "", &v29);
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
  v10 = a2;
  v129 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v12 = 0;
  if (a4 == cstdlib_strlen(a2))
  {
    cstdlib_strcpy(__dst, "mde_");
    cstdlib_strcat(__dst, a3);
    cstdlib_strcat(__dst, "_");
    v13 = cstdlib_strlen(__dst);
    if (cstdlib_strlen(*(a1 + 248)) && v13 <= 0xFF)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(a1 + 248);
        v20 = v19[v17];
        if (v20 != 32)
        {
          __dst[v13++] = v20;
        }

        if (cstdlib_strlen(v19) <= ++v18)
        {
          break;
        }

        v17 = v18;
      }

      while (v13 < 0x100);
    }

    __dst[v13] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v14, v15, v16, __dst);
    __c_1 = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c_3, &__c_1, &__c);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (__c_1)
    {
      goto LABEL_11;
    }

    cstdlib_strcpy(__dst, "mde_");
    if (cstdlib_strlen(*(a1 + 248)))
    {
      v101 = 0;
      v102 = 0;
      v103 = 4;
      do
      {
        v104 = *(a1 + 248);
        v105 = v104[v101];
        if (v105 != 32)
        {
          __dst[v103++] = v105;
        }

        if (cstdlib_strlen(v104) <= ++v102)
        {
          break;
        }

        v101 = v102;
      }

      while (v103 < 0x100);
    }

    else
    {
      v103 = 4;
    }

    __dst[v103] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v98, v99, v100, __dst);
    __c_1 = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c_3, &__c_1, &__c);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (__c_1)
    {
LABEL_11:
      *a5 = 1;
      v24 = "MDE succeeds";
    }

    else
    {
      v24 = "MDE fails";
    }

    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, v24, v21, v22, v23, v108);
  }

  if (*(a1 + 285) != a6)
  {
    v25 = cstdlib_strlen(v10);
    v26 = v25;
    if (a4 < v25)
    {
      v115 = a4;
      if (!*a5)
      {
        v117 = a6 + 1;
        __s2 = &v10[a4];
        v119 = 0;
        v27 = v25;
        v120 = a5;
        while (1)
        {
          v28 = v10[v27];
          v10[v27] = 0;
          __c_1 = 0;
          v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mde", __s2, &__c_3, &__c_1, &__c);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v10[v27] = v28;
          if (!__c_1)
          {
            break;
          }

          if (!*a5)
          {
            v109 = v28;
            v29 = 0;
            __n = (v26 - v115);
            v112 = v27 - v115 + 2;
            v113 = (v26 - v115 - 1);
            __s = v10;
            do
            {
              v30 = v27;
              v31 = *(__c_3 + 8 * v29);
              v32 = cstdlib_strchr(v31, __c);
              if (v32)
              {
                *v32 = 0;
                v33 = v32 + 1;
                v34 = cstdlib_strchr(v32 + 1, __c);
                v35 = v34;
                if (v34)
                {
                  *v34 = 0;
                  v35 = v34 + 1;
                  v36 = cstdlib_strchr(v34 + 1, __c);
                  v37 = v36;
                  if (v36)
                  {
                    *v36 = 0;
                    v37 = v36 + 1;
                    v38 = cstdlib_strchr(v36 + 1, __c);
                    if (v38)
                    {
                      *v38 = 0;
                    }
                  }
                }

                else
                {
                  v37 = 0;
                }
              }

              else
              {
                v35 = 0;
                v37 = 0;
                v33 = v119;
              }

              v39 = cstdlib_strlen(*(a1 + 240));
              if (v31 && cstdlib_strcmp(v31, ""))
              {
                if (v37)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v31 = "*";
                if (v37)
                {
LABEL_33:
                  if (cstdlib_strcmp(v37, ""))
                  {
                    goto LABEL_35;
                  }
                }
              }

              v37 = "*";
LABEL_35:
              if (v39)
              {
                cstdlib_strcat(*(a1 + 240), "+");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
              }

              v119 = v33;
              v116 = v39;
              if (v35 && cstdlib_strcmp(v35, ""))
              {
                v40 = cstdlib_strlen(v35);
                v41 = v39;
                v42 = hlp_Realloc_0(a1, (v40 + v39 + 4));
                if ((v42 & 0x80000000) != 0)
                {
                  return v42;
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                cstdlib_strcat(*(a1 + 240), v35);
                cstdlib_strcat(*(a1 + 248), v31);
                cstdlib_strcat(*(a1 + 256), v37);
                v43 = cstdlib_strlen(v35);
                if (Utf8_LengthInUtf8chars(v35, v43) != 1)
                {
                  v44 = 0;
                  do
                  {
                    cstdlib_strcat(*(a1 + 248), " ");
                    cstdlib_strcat(*(a1 + 256), " ");
                    ++v44;
                    v45 = cstdlib_strlen(v35);
                  }

                  while ((Utf8_LengthInUtf8chars(v35, v45) - 1) > v44);
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                a5 = v120;
                v27 = v30;
                v10 = __s;
              }

              else if (v33 && !cstdlib_strcmp(v33, "yes"))
              {
                v41 = v39;
                v124 = 0;
                v123 = 0;
                cstdlib_strcpy(__dst, "one_word");
                v27 = v30;
                v10 = __s;
                __s[v27] = 0;
                v122[0] = *v31;
                v122[1] = 0;
                v121[0] = *v37;
                v121[1] = 0;
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v47, v48, v49, __dst);
                v50 = *(*(a1 + 104) + 120);
                v51 = cstdlib_strlen(__s2);
                v42 = v50(*(a1 + 88), *(a1 + 96), 0, __s2, v51);
                if ((v42 & 0x80000000) != 0)
                {
                  return v42;
                }

                __s[v27] = v109;
                v42 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst);
                if ((v42 & 0x80000000) != 0)
                {
                  return v42;
                }

                v42 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v124, &v123);
                if ((v42 & 0x80000000) != 0)
                {
                  return v42;
                }

                v124[v123] = 0;
                a5 = v120;
                if (cstdlib_strlen(v124))
                {
                  v55 = 0;
                  do
                  {
                    v56 = &v124[v55];
                    if (*v56 == 126)
                    {
                      v57 = cstdlib_strlen(v124);
                      cstdlib_memmove(v56, v56 + 1, (v57 - v55-- + 1));
                    }

                    else
                    {
                      v58 = cstdlib_strlen("¡");
                      if (!cstdlib_strncmp(v56, "¡", v58))
                      {
                        v59 = &v124[v55];
                        v60 = cstdlib_strlen(v124);
                        cstdlib_memmove(v59 + 1, v59 + 2, v60 - v55 + 1);
                        v124[v55] = 126;
                      }
                    }

                    ++v55;
                  }

                  while (cstdlib_strlen(v124) > v55);
                }

                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v52, v53, v54, __dst);
                v61 = cstdlib_strlen(v124);
                v42 = hlp_Realloc_0(a1, (v61 + v41 + 4));
                if ((v42 & 0x80000000) != 0)
                {
                  return v42;
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                cstdlib_strcat(*(a1 + 240), v124);
                cstdlib_strcat(*(a1 + 248), v122);
                cstdlib_strcat(*(a1 + 256), v121);
                v62 = v124;
                v63 = cstdlib_strlen(v124);
                if (Utf8_LengthInUtf8chars(v62, v63) != 1)
                {
                  v64 = 0;
                  do
                  {
                    cstdlib_strcat(*(a1 + 248), " ");
                    cstdlib_strcat(*(a1 + 256), " ");
                    ++v64;
                    v65 = v124;
                    v66 = cstdlib_strlen(v124);
                  }

                  while ((Utf8_LengthInUtf8chars(v65, v66) - 1) > v64);
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
              }

              else
              {
                v41 = v39;
                v42 = hlp_Realloc_0(a1, (v112 + v39));
                if ((v42 & 0x80000000) != 0)
                {
                  return v42;
                }

                v27 = v30;
                cstdlib_strncat(*(a1 + 240), __s2, __n);
                cstdlib_strcat(*(a1 + 248), v31);
                cstdlib_strcat(*(a1 + 256), v37);
                a5 = v120;
                v10 = __s;
                if (v113)
                {
                  v46 = v113;
                  do
                  {
                    cstdlib_strcat(*(a1 + 248), " ");
                    cstdlib_strcat(*(a1 + 256), " ");
                    --v46;
                  }

                  while (v46);
                }
              }

              v12 = hlp_MdeRecurse_0(a1, v10, a3, v27, a5, v117);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }

              if (!*a5)
              {
                v67 = Utf8_LengthInUtf8chars(*(a1 + 240), v116);
                *(*(a1 + 240) + v41) = 0;
                *(*(a1 + 248) + v67) = 0;
                *(*(a1 + 256) + v67) = 0;
              }

              if (++v29 >= __c_1)
              {
                goto LABEL_72;
              }
            }

            while (!*a5);
          }

LABEL_73:
          v26 = v27 - 1;
          if (v115 < (v27 - 1))
          {
            --v27;
            if (!*a5)
            {
              continue;
            }
          }

          return v12;
        }

LABEL_72:
        if (*a5)
        {
          goto LABEL_73;
        }

        v68 = v10[v27];
        v10[v27] = 0;
        __c_1 = 0;
        v12 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), "g2p", __s2, &__c_3, &__c_1, &__c, *(a1 + 556));
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v10[v27] = v68;
        if (!__c_1)
        {
          goto LABEL_73;
        }

        v69 = 0;
        v110 = v27;
        while (1)
        {
          if (*a5)
          {
            goto LABEL_73;
          }

          v70 = *(__c_3 + 8 * v69);
          v71 = cstdlib_strchr(v70, __c);
          if (!v71)
          {
            break;
          }

          *v71 = 0;
          v76 = cstdlib_strchr(v71 + 1, __c);
          v77 = v76;
          if (!v76)
          {
            goto LABEL_89;
          }

          *v76 = 0;
          v77 = v76 + 1;
          v78 = cstdlib_strchr(v76 + 1, __c);
          v79 = v78;
          if (!v78)
          {
            goto LABEL_90;
          }

          *v78 = 0;
          v79 = v78 + 1;
          v80 = cstdlib_strchr(v78 + 1, __c);
          v81 = v80;
          if (!v80)
          {
            goto LABEL_91;
          }

          *v80 = 0;
          v81 = v80 + 1;
          v82 = cstdlib_strchr(v80 + 1, __c);
          if (!v82)
          {
            goto LABEL_91;
          }

          *v82 = 0;
          v83 = cstdlib_strchr(v82 + 1, __c);
          v84 = v83;
          if (v83)
          {
            *v83 = 0;
            v84 = v83 + 1;
            v85 = cstdlib_strchr(v83 + 1, __c);
            if (v85)
            {
              *v85 = 0;
            }
          }

LABEL_92:
          v86 = *(*a1 + 32);
          if (!v70)
          {
            log_OutPublic(v86, "FE_ONEWORD", 34001, 0, v72, v73, v74, v75, v107);
            return 2310021127;
          }

          log_OutText(v86, "FE_ONEWORD", 5, 0, "G2P Validating %s", v73, v74, v75, v70);
          if (v77 && cstdlib_strcmp(v77, "") && !cstdlib_strstr(v77, a3))
          {
            v96 = *(*a1 + 32);
            v97 = "G2P Domain validation not OK";
            goto LABEL_117;
          }

          if (v84 && !cstdlib_strcmp(v84, "0"))
          {
            v96 = *(*a1 + 32);
            v97 = "G2P MDE usage validation not OK";
LABEL_117:
            log_OutText(v96, "FE_ONEWORD", 5, 0, v97, v87, v88, v89, v107);
            a5 = v120;
            v27 = v110;
            goto LABEL_118;
          }

          v90 = cstdlib_strlen(*(a1 + 240));
          if (cstdlib_strcmp(v70, ""))
          {
            if (!v79 || !cstdlib_strcmp(v79, ""))
            {
              v79 = "*";
            }

            if (!v81 || !cstdlib_strcmp(v81, ""))
            {
              v81 = "*";
            }

            v91 = cstdlib_strlen(v70);
            v42 = hlp_Realloc_0(a1, (v91 + v90 + 4));
            if ((v42 & 0x80000000) != 0)
            {
              return v42;
            }

            if (v90)
            {
              cstdlib_strcat(*(a1 + 240), "+");
              cstdlib_strcat(*(a1 + 248), " ");
              cstdlib_strcat(*(a1 + 256), " ");
            }

            cstdlib_strcat(*(a1 + 240), "◄");
            cstdlib_strcat(*(a1 + 248), " ");
            cstdlib_strcat(*(a1 + 256), " ");
            cstdlib_strcat(*(a1 + 240), v70);
            cstdlib_strcat(*(a1 + 248), v79);
            cstdlib_strcat(*(a1 + 256), v81);
            v92 = cstdlib_strlen(v70);
            if (Utf8_LengthInUtf8chars(v70, v92) != 1)
            {
              v93 = 0;
              do
              {
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                ++v93;
                v94 = cstdlib_strlen(v70);
              }

              while ((Utf8_LengthInUtf8chars(v70, v94) - 1) > v93);
            }

            cstdlib_strcat(*(a1 + 240), "◄");
            cstdlib_strcat(*(a1 + 248), " ");
            cstdlib_strcat(*(a1 + 256), " ");
          }

          v27 = v110;
          a5 = v120;
          v12 = hlp_MdeRecurse_0(a1, v10, a3, v110, v120, v117);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (!*v120)
          {
            v95 = Utf8_LengthInUtf8chars(*(a1 + 240), v90);
            *(*(a1 + 240) + v90) = 0;
            *(*(a1 + 248) + v95) = 0;
            *(*(a1 + 256) + v95) = 0;
          }

LABEL_118:
          if (++v69 >= __c_1)
          {
            goto LABEL_73;
          }
        }

        v77 = 0;
LABEL_89:
        v79 = 0;
LABEL_90:
        v81 = 0;
LABEL_91:
        v84 = 0;
        goto LABEL_92;
      }
    }
  }

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
  result = cstdlib_strstr(a1, "_");
  if (result)
  {
    v5 = 1;
  }

  else
  {
    result = cstdlib_strstr(a1, "-*");
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
  v3 = a1;
  v4 = cstdlib_strstr(a1, "\x12");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  if (v5 - v3 >= 2 && !cstdlib_strncmp(v5 - 1, "#", 1uLL))
  {
    --v5;
  }

  if (v5 <= v3)
  {
    return 1;
  }

  else
  {
    v6 = v5 - v3;
    v7 = 1;
    do
    {
      v8 = 1;
      if (cstdlib_strncmp(v3, "#", 1uLL))
      {
        v8 = 1;
        if (cstdlib_strncmp(v3, "_", 1uLL))
        {
          v8 = cstdlib_strncmp(v3, "-*", 2uLL) == 0;
        }
      }

      v7 += v8;
      ++v3;
      --v6;
    }

    while (v6);
  }

  return v7;
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
  v5 = __s;
  v8 = cstdlib_strlen(__s);
  v9 = Utf8_LengthInUtf8chars(v5, v8);
  v10 = (a1 + 160);
  cstdlib_strcpy(*(a1 + 160), "");
  v11 = (a1 + 168);
  cstdlib_strcpy(*(a1 + 168), "");
  cstdlib_strcpy(*(a1 + 176), "");
  v50 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, v5, 128);
  if ((v50 & 0x80000000) == 0)
  {
    if (a4)
    {
      v49 = a1;
      v12 = cstdlib_strlen(a4);
      Utf8_LengthInUtf8chars(a4, v12);
      v13 = cstdlib_strstr(v5, "║");
      v14 = cstdlib_strstr(a4, "+");
      v15 = v5;
      v16 = v13 != 0;
      v17 = v14 != 0;
      v51 = a4;
      __sa = v5;
      if (v13 | v14)
      {
        v18 = v14;
        v19 = 0;
        v53 = 0;
        v20 = a4;
        while (1)
        {
          if (v16)
          {
            v21 = v13 - v15;
          }

          else
          {
            v21 = 0;
          }

          if (v17)
          {
            v22 = v18 - v20;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          v24 = v21;
          if (!v21 || !v22)
          {
            if (!v21 || v22)
            {
              if (!v21 && v22)
              {
                cstdlib_strncat(*v11, &v51[v53], v22);
                cstdlib_strcat(*v11, " ");
                v30 = 0;
                do
                {
                  cstdlib_strcat(*v10, "~");
                  ++v30;
                }

                while (v23 > v30);
                v53 += 1 + v23;
                cstdlib_strcat(*v10, " ");
                v18 = cstdlib_strstr(v18 + 1, "+");
              }
            }

            else
            {
              cstdlib_strncat(*v10, &__sa[v19], v21);
              cstdlib_strcat(*v10, " ");
              v29 = v19 + 3;
              do
              {
                cstdlib_strcat(*v11, "~");
                LODWORD(v23) = v23 + 1;
              }

              while (v24 > v23);
              v19 = v29 + v24;
              cstdlib_strcat(*v11, " ");
              v13 = cstdlib_strstr(v13 + 3, "║");
            }

            goto LABEL_34;
          }

          v25 = v21 - v22;
          if (v21 <= v22)
          {
            v26 = v53;
            cstdlib_strncat(*v11, &v51[v53], v22);
            cstdlib_strcat(*v11, " ");
            cstdlib_strncat(*v10, &__sa[v19], v24);
            v27 = v10;
            if (v23 - v24 >= 1)
            {
              v31 = 0;
              do
              {
                cstdlib_strcat(*v10, "~");
                ++v31;
              }

              while (v23 - v24 > v31);
              v27 = v10;
              goto LABEL_32;
            }
          }

          else
          {
            cstdlib_strncat(*v10, &__sa[v19], v21);
            cstdlib_strcat(*v10, " ");
            v26 = v53;
            cstdlib_strncat(*v11, &v51[v53], v23);
            v27 = v11;
            if (v25 >= 1)
            {
              v28 = 0;
              do
              {
                cstdlib_strcat(*v11, "~");
                ++v28;
              }

              while (v25 > v28);
              v27 = v11;
LABEL_32:
              v26 = v53;
            }
          }

          cstdlib_strcat(*v27, " ");
          v19 += v24 + 3;
          v53 = v26 + v23 + 1;
          v15 = v13 + 3;
          v20 = v18 + 1;
          v13 = cstdlib_strstr(v13 + 3, "║");
          v18 = cstdlib_strstr(v18 + 1, "+");
LABEL_34:
          v16 = v13 != 0;
          v17 = v18 != 0;
          if (!(v13 | v18))
          {
            goto LABEL_44;
          }
        }
      }

      LOWORD(v53) = 0;
      LOWORD(v19) = 0;
LABEL_44:
      v39 = cstdlib_strlen(__sa);
      v40 = cstdlib_strlen(v51);
      if (v39 > v19)
      {
        cstdlib_strcat(*v10, &__sa[v19]);
      }

      if (v40 > v53)
      {
        cstdlib_strcat(*v11, &v51[v53]);
      }

      v41 = cstdlib_strlen(*v10);
      v42 = cstdlib_strlen(*v11);
      v43 = v42;
      if (v41 <= v42)
      {
        for (i = v42; i > v41; ++v41)
        {
          cstdlib_strcat(*v10, "~");
        }
      }

      else
      {
        do
        {
          cstdlib_strcat(*v11, "~");
          ++v43;
        }

        while (v41 > v43);
      }

      v45 = cstdlib_strlen(*v10);
      if (v45)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*(*(v49 + 160) + j) == 32)
          {
            v47 = " ";
          }

          else
          {
            v47 = "~";
          }

          cstdlib_strcat(*(v49 + 176), v47);
        }
      }
    }

    else if (v9)
    {
      v32 = 0;
      do
      {
        v33 = v5;
        v34 = &v5[v32];
        v35 = cstdlib_strncmp(v34, "║", 3uLL);
        v36 = *v10;
        if (v35)
        {
          v37 = utf8_determineUTF8CharLength(*v34);
          cstdlib_strncat(v36, v34, v37);
          cstdlib_strcat(*(a1 + 168), "~");
          cstdlib_strcat(*(a1 + 176), "~");
          v38 = utf8_determineUTF8CharLength(*v34);
        }

        else
        {
          cstdlib_strcat(*v10, " ");
          cstdlib_strcat(*(a1 + 168), " ");
          cstdlib_strcat(*(a1 + 176), " ");
          v38 = 3;
        }

        v32 += v38;
        v5 = v33;
      }

      while (v32 < v9);
    }
  }

  return v50;
}

uint64_t oneword_SkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, unsigned __int16 a9)
{
  v62 = a6;
  v61 = a7;
  v58 = 17;
  v59 = 9;
  v56 = 0;
  __s = 0;
  v54 = 0;
  v55 = 0;
  v15 = heap_Calloc(*(*a1 + 8), 1, (2 * a5) | 1);
  if (v15)
  {
    v20 = v15;
    if (a5 >= 2)
    {
      v21 = a5 - 1;
      do
      {
        cstdlib_strcat(v20, "*.");
        --v21;
      }

      while (v21);
    }

    v60 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v48 = 0;
    cstdlib_strcat(v20, "*");
    v22 = (*(*(a1 + 56) + 168))(a2, a3, a9, 0, 1, &v60, &v53 + 2);
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(a1 + 56);
      v22 = v60 > 1 ? (*(v23 + 88))(a2, a3, a9, &v49 + 2) : (*(v23 + 80))(a2, a3, a9, &v49 + 2);
      if ((v22 & 0x80000000) == 0)
      {
        v60 = 9;
        v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 0, 1, &v60, &v53);
        if ((v22 & 0x80000000) == 0)
        {
          v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 1, 1, &v62, &v53);
          if ((v22 & 0x80000000) == 0)
          {
            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 2, 1, &v61, &v53);
            if ((v22 & 0x80000000) == 0)
            {
              v25 = *(*(a1 + 56) + 160);
              v26 = HIWORD(v49);
              v27 = cstdlib_strlen(v20);
              v22 = v25(a2, a3, v26, 3, (v27 + 1), v20, &v53);
              if ((v22 & 0x80000000) == 0)
              {
                v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 5, 1, "*", &v53);
                if ((v22 & 0x80000000) == 0)
                {
                  v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 6, 1, "*", &v53);
                  if ((v22 & 0x80000000) == 0)
                  {
                    if (cstdlib_strcmp(a4, "latin") || (v47 = 1, v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 7, 1, &v47, &v53), (v22 & 0x80000000) == 0))
                    {
                      v24 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 9, 7, "normal", &v53);
                      if ((v24 & 0x80000000) != 0)
                      {
                        goto LABEL_60;
                      }

                      LOWORD(v50) = a8;
                      if (HIWORD(v49) == a8)
                      {
                        goto LABEL_60;
                      }

                      v28 = 0;
                      while (1)
                      {
                        v22 = (*(*(a1 + 56) + 168))(a2, a3, a8, 0, 1, &v60, &v53 + 2);
                        if ((v22 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v22 = (*(*(a1 + 56) + 168))(a2, a3, v50, 1, 1, &v52, &v53 + 2);
                        if ((v22 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v22 = (*(*(a1 + 56) + 168))(a2, a3, v50, 2, 1, &v51 + 2, &v53 + 2);
                        if ((v22 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v60 <= 1)
                        {
                          v22 = (*(*(a1 + 56) + 136))(a2, a3, v50, &v48);
LABEL_27:
                          if ((v22 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v29 = v48;
                          while (v29 != v28)
                          {
                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v29, 0, 1, &v59, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v48, 1, 1, &v51, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v48, 2, 1, &v50 + 2, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            if (v59 != 4 || v51 != v52 || HIWORD(v50) != HIWORD(v51))
                            {
                              v22 = (*(*(a1 + 56) + 136))(a2, a3, v48, &v48);
                              goto LABEL_27;
                            }

                            v22 = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v49), &v49 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v48, 3, &__s, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v48, 5, &v54, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 168))(a2, a3, v48, 7, 1, &v52 + 2, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v48, 6, &v56, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 176))(a2, a3, v48, 9, &v55, &v53 + 2);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 0, 1, &v58, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            LOWORD(v51) = *(a1 + 224) + v51;
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 1, 1, &v51, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            HIWORD(v50) += *(a1 + 224);
                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 2, 1, &v50 + 2, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v30 = *(*(a1 + 56) + 160);
                            v31 = HIWORD(v49);
                            v32 = cstdlib_strlen(__s);
                            v22 = v30(a2, a3, v31, 3, (v32 + 1), __s, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v33 = *(*(a1 + 56) + 160);
                            v34 = HIWORD(v49);
                            v35 = cstdlib_strlen(a4);
                            v22 = v33(a2, a3, v34, 4, (v35 + 1), a4, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v36 = *(*(a1 + 56) + 160);
                            v37 = HIWORD(v49);
                            v38 = cstdlib_strlen(v54);
                            v22 = v36(a2, a3, v37, 5, (v38 + 1), v54, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v39 = *(*(a1 + 56) + 160);
                            v40 = HIWORD(v49);
                            v41 = cstdlib_strlen(v56);
                            v22 = v39(a2, a3, v40, 6, (v41 + 1), v56, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v49), 7, 1, &v52 + 2, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v42 = *(*(a1 + 56) + 160);
                            v43 = HIWORD(v49);
                            v44 = cstdlib_strlen(v55);
                            v22 = v42(a2, a3, v43, 9, (v44 + 1), v55, &v53);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 136))(a2, a3, v48, &v49);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v22 = (*(*(a1 + 56) + 192))(a2, a3, v48);
                            if ((v22 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v29 = v49;
                            v48 = v49;
                          }

                          v28 = v50;
                        }

                        v24 = (*(*(a1 + 56) + 120))(a2, a3);
                        if ((v24 & 0x80000000) == 0)
                        {
                          LOWORD(a8) = v50;
                          if (v50 != HIWORD(v49))
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

  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v16, v17, v18, v19, v46);
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
              cstdlib_strncpy(v19, (*a4 + v30 + a7), v23);
              v24 = HIWORD(v29);
              v25 = v30;
              v19[HIWORD(v29) - v30] = 0;
              if (v25 < v29 || v24 > v28 || cstdlib_strlen(v19) < 2 || !cstdlib_strstr(v19, "_"))
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
  v100 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  *v94 = 0;
  v93 = 0;
  cstdlib_strcpy(__dst, "one_word");
  v9 = cstdlib_strlen(__dst);
  v10 = *(*a1 + 8);
  v11 = cstdlib_strlen(a3);
  v12 = heap_Alloc(v10, (v11 + 1));
  if (v12)
  {
    v17 = v12;
    cstdlib_strcpy(v12, a3);
    v83 = a4;
    if (*(a1 + 560) == 1)
    {
      v18 = cstdlib_strchr(a2, 95);
      if (v18)
      {
        v19 = v18 + 1;
      }

      else
      {
        v19 = a2;
      }

      v86 = v19;
      v20 = *v19;
    }

    else
    {
      v86 = 0;
      v20 = 32;
    }

    v85 = v20;
    cstdlib_strlen(v17);
    v22 = 0;
    v23 = 0;
    v24 = a1 + 1228;
    v25 = v9;
    v26 = 0;
    v84 = v25;
    v87 = v25 + 2;
    v91 = 32;
    v88 = v17;
    while (1)
    {
      v27 = v17[v26];
      if (v27 < -64)
      {
        goto LABEL_13;
      }

      if (!(*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &v17[v26]))
      {
        break;
      }

LABEL_17:
      v89 = v26;
      if (v23 == v22)
      {
        goto LABEL_88;
      }

      cstdlib_strcpy(*(a1 + 160), "");
      if (!dynamic_strncat((a1 + 160), &v17[v22], v23 - v22, (a1 + 192), *(*a1 + 8)))
      {
        return 2310021130;
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", v31, v32, v33, *(a1 + 160));
      __c_1 = 0;
      if (*(a1 + 1224))
      {
        cstdlib_strcpy(__s1, "g2p");
        cstdlib_strcat(__s1, (v24 + 3 * **(a1 + 160)));
        v34 = (*(*(a1 + 80) + 232))(*(a1 + 64), *(a1 + 72), __s1, *(a1 + 160), &__c_3, &__c_1, &__c, 0);
      }

      else
      {
        LODWORD(v82) = 0;
        v34 = (*(*(a1 + 80) + 240))(*(a1 + 64), *(a1 + 72), "g2p", *(a1 + 160), &__c_3, &__c_1, &__c, *(a1 + 556));
      }

      v21 = v34;
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      if (!__c_1)
      {
        v91 = 32;
LABEL_73:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v35, v36, v37, __dst);
        v71 = *(*(a1 + 104) + 120);
        v72 = *(a1 + 160);
        v73 = cstdlib_strlen(v72);
        appended = v71(*(a1 + 88), *(a1 + 96), 0, v72, v73);
        if ((appended & 0x80000000) == 0)
        {
          if (cstdlib_strcmp(a2, "normal") && v87 + cstdlib_strlen(a2) <= 0x7F)
          {
            cstdlib_strcat(__dst, "_");
            cstdlib_strcat(__dst, a2);
          }

          if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst) & 0x80000000) == 0)
          {
            if (*(a1 + 560))
            {
              v75 = v86;
              v76 = v85;
              if (!v86)
              {
LABEL_85:
                appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v94, &v93);
                if ((appended & 0x80000000) == 0)
                {
                  *(*v94 + v93) = 0;
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v77, v78, v79, __dst);
                  v70 = *v94;
                  v68 = v91;
                  v69 = a1;
LABEL_87:
                  appended = oneword_AppendPhon(v69, v70, "*", "*", v68, 1);
                  if ((appended & 0x80000000) == 0)
                  {
                    goto LABEL_88;
                  }
                }

                goto LABEL_93;
              }
            }

            else
            {
              v76 = *a2;
              v75 = a2;
            }

            cstdlib_strncpy(a5, v75, 0x14uLL);
            v91 = v76;
            goto LABEL_85;
          }

          __dst[v84] = 0;
          appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst);
          if ((appended & 0x80000000) == 0)
          {
            goto LABEL_85;
          }
        }

LABEL_93:
        v21 = appended;
LABEL_94:
        heap_Free(*(*a1 + 8), v17);
        return v21;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      v91 = 32;
      do
      {
        v41 = *(__c_3 + 8 * v38);
        v42 = cstdlib_strchr(v41, __c);
        if (!v42)
        {
          v48 = 0;
LABEL_37:
          v52 = 0;
LABEL_38:
          v55 = 0;
          goto LABEL_39;
        }

        *v42 = 0;
        v47 = cstdlib_strchr(v42 + 1, __c);
        v48 = v47;
        if (!v47)
        {
          goto LABEL_37;
        }

        *v47 = 0;
        v48 = v47 + 1;
        v49 = cstdlib_strchr(v47 + 1, __c);
        if (!v49)
        {
          goto LABEL_37;
        }

        *v49 = 0;
        v50 = cstdlib_strchr(v49 + 1, __c);
        if (!v50)
        {
          goto LABEL_37;
        }

        *v50 = 0;
        v51 = cstdlib_strchr(v50 + 1, __c);
        v52 = v51;
        if (!v51)
        {
          goto LABEL_38;
        }

        *v51 = 0;
        v52 = (v51 + 1);
        v53 = cstdlib_strchr(v51 + 1, __c);
        if (!v53)
        {
          goto LABEL_38;
        }

        *v53 = 0;
        v54 = cstdlib_strchr(v53 + 1, __c);
        v55 = v54;
        if (v54)
        {
          *v54 = 0;
          v55 = v54 + 1;
          v56 = cstdlib_strchr(v54 + 1, __c);
          if (v56)
          {
            *v56 = 0;
          }
        }

LABEL_39:
        if (!v41)
        {
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0, v43, v44, v45, v46, v82);
          heap_Free(*(*a1 + 8), v88);
          return 2310021127;
        }

        oneword_ReplaceUnderscoreWithDot(v41);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v57, v58, v59, v41);
        if (v48 && cstdlib_strcmp(v48, "") && !cstdlib_strstr(v48, a2))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK", v35, v36, v37, v82);
        }

        else if (v55 && *(a1 + 1204) && ((v60 = cstdlib_strstr(a2, v55)) == 0 || (v61 = v60, cstdlib_strlen(v55)) && v61[cstdlib_strlen(v55)]) && ((v62 = cstdlib_strstr(*(a1 + 1216), a2), LH_stricmp(v55, *(a1 + 1208))) || !v62 || v62[cstdlib_strlen(a2)] != 124))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK", v35, v36, v37, v55);
        }

        else
        {
          if (v52 && cstdlib_strcmp(v52, ""))
          {
            v63 = cstdlib_atoi(v52);
          }

          else
          {
            v63 = 1;
          }

          v64 = (v63 - 1);
          if (v64 < v39)
          {
            v65 = v39;
          }

          else
          {
            v40 = v41;
            v65 = v63;
          }

          if (v55)
          {
            v66 = v64 >= v39;
            v39 = v65;
            if (v66)
            {
              v91 = *v55;
              cstdlib_strncpy(a5, v55, 0x14uLL);
              v40 = v41;
              v39 = v63;
            }
          }

          else
          {
            v39 = v65;
          }
        }

        ++v38;
      }

      while (v38 < __c_1);
      if (!v40)
      {
        v24 = a1 + 1228;
        v17 = v88;
        goto LABEL_73;
      }

      v67 = cstdlib_strchr(v40, 18);
      v24 = a1 + 1228;
      v17 = v88;
      if (v67)
      {
        *v67 = 0;
      }

      if (cstdlib_strcmp(v40, "_"))
      {
        v68 = v91;
        v69 = a1;
        v70 = v40;
        goto LABEL_87;
      }

LABEL_88:
      v98[0] = v17[v89];
      v98[1] = 0;
      appended = oneword_AppendPhon(a1, v98, "", "", 32, 0);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_93;
      }

      v22 = ++v23;
LABEL_90:
      v26 = v23;
      if (cstdlib_strlen(v17) < v23)
      {
        heap_Free(*(*a1 + 8), v17);
        v21 = 0;
        *v83 = v91;
        return v21;
      }
    }

    LOBYTE(v27) = v17[v26];
LABEL_13:
    v28 = v27;
    v29 = (1 << v27) & 0x100002601;
    v30 = v28 > 0x20 || v29 == 0;
    if (v30 && v28 != 95)
    {
      ++v23;
      goto LABEL_90;
    }

    goto LABEL_17;
  }

  v21 = 2310021130;
  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v13, v14, v15, v16, v81);
  return v21;
}

size_t oneword_ReplaceUnderscoreWithDot(const char *a1)
{
  v1 = a1;
  result = cstdlib_strlen(a1);
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
  if (cstdlib_strlen(__s) >= 2)
  {
    if (!a6 && cstdlib_strchr(__s, 32))
    {
      if (cstdlib_strlen(a4) <= 1)
      {
        goto LABEL_14;
      }

LABEL_12:
      if (cstdlib_strchr(a4, 32))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    __s[1] = 0;
  }

  if (cstdlib_strlen(a4) <= 1)
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
  if (!cstdlib_strcmp(a2, ""))
  {
    return 0;
  }

  v12 = cstdlib_strlen(*(a1 + 240));
  v13 = cstdlib_strlen(a2);
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
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v17, v18, v19, v20, v53);
      return a6;
    }

    *(a1 + 264) = v23;
  }

  if (a6)
  {
    cstdlib_strcat(*(a1 + 240), "◄");
    cstdlib_strcat(*(a1 + 248), " ");
    cstdlib_strcat(*(a1 + 256), " ");
    cstdlib_strcat(*(a1 + 264), " ");
  }

  v24 = cstdlib_strstr(a2, "◄");
  if (cstdlib_strchr(__s, 32) || !v24)
  {
    cstdlib_strcat(*(a1 + 240), a2);
    cstdlib_strcat(*(a1 + 248), __s);
    cstdlib_strcat(*(a1 + 256), a4);
    cstdlib_strcat(*(a1 + 264), __s2);
    v47 = cstdlib_strlen(a2);
    v48 = Utf8_LengthInUtf8chars(a2, v47);
    if (v48 > cstdlib_strlen(__s))
    {
      v49 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), "~");
        ++v49;
      }

      while ((v48 - cstdlib_strlen(__s)) > v49);
    }

    if (v48 > cstdlib_strlen(a4))
    {
      v50 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 256), "~");
        ++v50;
      }

      while ((v48 - cstdlib_strlen(a4)) > v50);
    }

    if (v48 > cstdlib_strlen(__s2))
    {
      v51 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 264), __s2);
        ++v51;
      }

      while ((v48 - cstdlib_strlen(__s2)) > v51);
    }
  }

  else
  {
    v25 = cstdlib_strlen("◄");
    v54 = cstdlib_strstr(&v24[v25], "◄");
    if (!v54)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0, v26, v27, v28, v29, 0);
      return 2310021127;
    }

    v30 = *(a1 + 240);
    v31 = cstdlib_strlen("◄");
    cstdlib_strncat(v30, a2, (v31 + v24 - a2));
    v32 = cstdlib_strlen("◄");
    if (Utf8_LengthInUtf8chars(a2, v24 - a2 + v32))
    {
      v33 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), " ");
        cstdlib_strcat(*(a1 + 256), " ");
        cstdlib_strcat(*(a1 + 264), " ");
        ++v33;
        v34 = cstdlib_strlen("◄");
      }

      while (Utf8_LengthInUtf8chars(a2, v24 - a2 + v34) > v33);
    }

    v35 = *(a1 + 240);
    v36 = &v24[cstdlib_strlen("◄")];
    v37 = cstdlib_strlen("◄");
    cstdlib_strncat(v35, v36, (v54 - v24 - v37));
    cstdlib_strcat(*(a1 + 248), __s);
    cstdlib_strcat(*(a1 + 256), a4);
    cstdlib_strcat(*(a1 + 264), __s2);
    v38 = Utf8_LengthInUtf8chars(v24, v54 - v24) - 1;
    if (v38 > cstdlib_strlen(__s))
    {
      v39 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), "~");
        ++v39;
      }

      while (v38 - cstdlib_strlen(__s) > v39);
    }

    if (v38 > cstdlib_strlen(a4))
    {
      v40 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 256), "~");
        ++v40;
      }

      while (v38 - cstdlib_strlen(a4) > v40);
    }

    if (v38 > cstdlib_strlen(__s2))
    {
      v41 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 264), __s2);
        ++v41;
      }

      while (v38 - cstdlib_strlen(__s2) > v41);
    }

    cstdlib_strcat(*(a1 + 240), v54);
    v42 = cstdlib_strlen(a2);
    v43 = Utf8_LengthInUtf8chars(a2, v42) << 16;
    if (v43 > (Utf8_LengthInUtf8chars(a2, v54 - a2) << 16))
    {
      v44 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), " ");
        cstdlib_strcat(*(a1 + 256), " ");
        cstdlib_strcat(*(a1 + 264), " ");
        ++v44;
        v45 = cstdlib_strlen(a2);
        v46 = Utf8_LengthInUtf8chars(a2, v45);
      }

      while (v46 - Utf8_LengthInUtf8chars(a2, v54 - a2) > v44);
    }
  }

  if (a6)
  {
    cstdlib_strcat(*(a1 + 240), "◄");
    cstdlib_strcat(*(a1 + 248), " ");
    cstdlib_strcat(*(a1 + 256), " ");
    cstdlib_strcat(*(a1 + 264), " ");
    return 0;
  }

  return a6;
}

uint64_t oneword_ConvertPhon(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, int a12)
{
  v12 = a8;
  v152 = *MEMORY[0x277D85DE8];
  v148 = a4;
  v18 = *a8;
  v147 = *a8;
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v143 = 1;
  v142 = 0;
  __s1 = 0;
  v140 = 200;
  v138 = 0;
  v137 = 0;
  __s = 0;
  cstdlib_strcpy(__dst, "");
  v19 = *a10;
  if (v19 < *a11)
  {
    v20 = (a9 + 32 * v19 + 12);
    do
    {
      if (*v20 - a12 >= a5)
      {
        break;
      }

      *v20 += *(a1 + 224);
      v20 += 8;
      *a10 = ++v19;
    }

    while (v19 < *a11);
  }

  v21 = 0;
  if (v18)
  {
    while (!v21 || SHIWORD(v144) < a5)
    {
      v22 = (*(*(a1 + 56) + 168))(a6, a7, v18, 0, 1, &v146, &v145 + 2);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (v146 > 3)
      {
        v23 = 0;
        if (v146 == 5)
        {
          v21 = v147;
        }
      }

      else
      {
        v22 = (*(*(a1 + 56) + 168))(a6, a7, v147, 2, 1, &v144 + 2, &v145 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v23 = v147;
      }

      v22 = (*(*(a1 + 56) + 120))(a6, a7);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (v23)
      {
        v22 = (*(*(a1 + 56) + 192))(a6, a7, v23);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v18 = v147;
        if (*(a1 + 280) == v23)
        {
          *(a1 + 280) = v147;
        }

        if (!v18)
        {
          break;
        }
      }

      else
      {
        LOWORD(v18) = v147;
        if (!v147)
        {
          break;
        }
      }
    }
  }

  v22 = (*(*(a1 + 56) + 176))(a6, a7, v21, 3, &__s1, &v145 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v137 = 0;
  if (((*(*(a1 + 56) + 184))(a6, a7, v21, 9, &v137) & 0x80000000) == 0 && v137 == 1)
  {
    v22 = (*(*(a1 + 56) + 176))(a6, a7, v21, 9, &__s, &v145 + 2);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }
  }

  cstdlib_strcpy(v149, "EXTMRKP");
  v24 = cstdlib_strstr(__s1, "\x14");
  if (v24)
  {
    v25 = v24;
    v26 = v21;
    *v24 = 0;
    v27 = cstdlib_strlen("\x14");
    v28 = cstdlib_strstr(&v25[v27], "\x14");
    if (v28)
    {
      *v28 = 0;
      v29 = v28 + 1;
      if (cstdlib_strlen(v28 + 1) == 3)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v132 = v30;
    }

    else
    {
      v132 = 0;
    }

    v21 = v26;
    if (cstdlib_strlen(&v25[v27]) && cstdlib_strlen(&v25[v27]) + 1 <= 0x14)
    {
      cstdlib_strcpy(v149, &v25[v27]);
    }
  }

  else
  {
    v132 = 0;
  }

  v31 = __s1;
  if (*__s1 == 32)
  {
    v32 = __s1 + 1;
    do
    {
      __s1 = v32;
      v33 = *v32++;
    }

    while (v33 == 32);
    v31 = v32 - 1;
  }

  v34 = cstdlib_strchr(v31, 18);
  if (v34)
  {
    *v34 = 0;
    v130 = v34 + 1;
  }

  else
  {
    v130 = 0;
  }

  v35 = cstdlib_strlen(__s1);
  v36 = __s1;
  if (v35 >= 5)
  {
    v37 = *__s1;
    if (v37 != 92)
    {
      goto LABEL_54;
    }

    if (__s1[1] == 84)
    {
      *&__c[3] = 0;
      *&__c[1] = -1;
      __c[0] = 0;
      cstdlib_strcpy(v150, "lngphon_e");
      v151 = __s1[2];
      v22 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v150, &__c[3], &__c[1], __c);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (*&__c[1])
      {
        v38 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v38)
        {
          *v38 = 0;
        }

        cstdlib_strncpy(__dst, **&__c[3], 3uLL);
      }

      v36 = __s1 + 4;
      __s1 += 4;
    }
  }

  v37 = *v36;
LABEL_54:
  if (v37 == 35)
  {
    *&__c[3] = v21;
    v39 = v21 != 0;
    v40 = v146;
    if (!v21 || v146 == 4)
    {
      LOWORD(v41) = v21;
    }

    else
    {
      LOWORD(v41) = v21;
      if (v146 - 11 <= 0xFFFFFFFD)
      {
        LOWORD(v41) = v21;
        while (1)
        {
          v22 = (*(*(a1 + 56) + 136))(a6, a7, v41, &__c[3]);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          if (*&__c[3])
          {
            v22 = (*(*(a1 + 56) + 168))(a6, a7);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            v41 = *&__c[3];
          }

          else
          {
            v41 = 0;
          }

          v39 = v41 != 0;
          v40 = v146;
          if (v41)
          {
            if (v146 != 4 && v146 - 11 < 0xFFFFFFFE)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    if (v39)
    {
      *&__c[1] = v41;
      *v150 = v40;
      v22 = (*(*(a1 + 56) + 160))(a6, a7, v41, 8, 1, &v140, &v145);
      if ((v22 & 0x80000000) == 0)
      {
        while (1)
        {
          v22 = (*(*(a1 + 56) + 120))(a6, a7, *&__c[1], &__c[1]);
          if ((v22 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_86;
          }

          v22 = (*(*(a1 + 56) + 168))(a6, a7);
          if ((v22 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_86;
          }

          if (*&__c[1] == v21 || *v150 != 8)
          {
            goto LABEL_86;
          }

          v22 = (*(*(a1 + 56) + 160))(a6, a7);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }
        }
      }

      return v22;
    }

LABEL_86:
    v36 = __s1;
    if (*__s1 == 35)
    {
      v46 = __s1 + 1;
      do
      {
        __s1 = v46;
        v47 = *v46++;
      }

      while (v47 == 35);
      v36 = v46 - 1;
    }
  }

  v146 = 10;
  LOWORD(v48) = v148;
  while (1)
  {
    v49 = *(a2 + v48);
    v50 = v49 > 0x20 || ((1 << v49) & 0x100002600) == 0;
    if (v50 && v49 != 95)
    {
      break;
    }

    LOWORD(v48) = v48 + 1;
    v148 = v48;
  }

  if (a5 <= v48)
  {
    v128 = 0;
    v51 = 0;
LABEL_200:
    v44 = (*(*(a1 + 56) + 120))(a6, a7, v144, v12);
    if ((v44 & 0x80000000) == 0 && v128 && v138 >= 2u)
    {
      v59 = (*(*(a1 + 56) + 160))(a6, a7, v128, 7, 1, &v138, &v145);
LABEL_204:
      v44 = v59;
      if (!v51)
      {
        return v44;
      }

      goto LABEL_208;
    }

    goto LABEL_207;
  }

  v51 = 0;
  v128 = 0;
  v52 = 0;
  v53 = a5;
  v127 = v12;
  v126 = v21;
  while (2)
  {
    v54 = v48;
    if (a5 <= (v48 + 1))
    {
      v55 = v48 + 1;
    }

    else
    {
      v55 = a5;
    }

    while (1)
    {
      v56 = *(a2 + v54);
      v57 = v56 > 0x20 || ((1 << v56) & 0x100002600) == 0;
      if (!v57 || v56 == 95)
      {
        break;
      }

      if (++v54 >= v53)
      {
        goto LABEL_111;
      }
    }

    v55 = v54;
LABEL_111:
    HIWORD(v144) = v55;
    v58 = *(a1 + 56);
    v129 = v52;
    if (v52)
    {
      v59 = (*(v58 + 80))(a6, a7, v144, &v144);
    }

    else
    {
      v59 = (*(v58 + 88))(a6, a7, v21, &v144);
    }

    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v59 = (*(*(a1 + 56) + 160))(a6, a7, v144, 0, 1, &v146, &v145);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v59 = (*(*(a1 + 56) + 160))(a6, a7, v144, 1, 1, &v148, &v145);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v59 = (*(*(a1 + 56) + 160))(a6, a7, v144, 2, 1, &v144 + 2, &v145);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v133 = v51;
    if (__s)
    {
      v60 = *(*(a1 + 56) + 160);
      v61 = v144;
      v62 = cstdlib_strlen(__s);
      v63 = v60(a6, a7, v61, 9, (v62 + 1), __s, &v145);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_206;
      }
    }

    v64 = *(*(a1 + 56) + 160);
    v65 = v144;
    v66 = cstdlib_strlen(v149);
    v63 = v64(a6, a7, v65, 21, (v66 + 1), v149, &v145);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_206;
    }

    if (v132)
    {
      v67 = *(*(a1 + 56) + 160);
      v68 = v144;
      v69 = cstdlib_strlen(v132);
      v63 = v67(a6, a7, v68, 12, (v69 + 1), v132, &v145);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_206;
      }
    }

    ++v138;
    for (i = v36 + 1; ; ++i)
    {
      v71 = *v36;
      if (v71 > 0x22)
      {
        break;
      }

      if (!*v36 || v71 == 32)
      {
        goto LABEL_135;
      }

LABEL_130:
      ++v36;
    }

    if (v71 == 35)
    {
      goto LABEL_135;
    }

    if (v71 != 95)
    {
      goto LABEL_130;
    }

    if (v36[1] == 95)
    {
      v72 = 2;
    }

    else
    {
      v72 = 1;
    }

    v142 = v72;
LABEL_135:
    *v36 = 0;
    if (!cstdlib_strcmp(__s1, ""))
    {
      v63 = (*(*(a1 + 56) + 160))(a6, a7, v144, 3, 1, "", &v145);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_206;
      }

      v51 = v133;
      goto LABEL_158;
    }

    v73 = *(*a1 + 8);
    v74 = (2 * (cstdlib_strlen(__s1) & 0x7FFFFFFF)) | 1;
    v75 = v73;
    v51 = v133;
    v76 = heap_Realloc(v75, v133, v74);
    if (!v76)
    {
      v44 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v77, v78, v79, v80, v123);
      if (!v133)
      {
        return v44;
      }

      goto LABEL_208;
    }

    v81 = v76;
    v125 = v36;
    if (!*(a1 + 580))
    {
      cstdlib_strcpy(v76, __s1);
      v51 = v81;
LABEL_149:
      {
        v101 = *(*(a1 + 56) + 160);
        v134 = v51;
        v102 = v144;
        v103 = cstdlib_strlen(v134);
        v104 = v102;
        v51 = v134;
        v105 = v101(a6, a7, v104, 3, (v103 + 1), v134, &v145);
        v36 = v125;
        if ((v105 & 0x80000000) != 0)
        {
          v44 = v105;
LABEL_209:
          v95 = 0;
LABEL_210:
          heap_Free(*(*a1 + 8), v134);
          goto LABEL_211;
        }

        goto LABEL_158;
      }

      v106 = (*(*(a1 + 56) + 160))(a6, a7, v144, 3, 1, "", &v145);
      v36 = v125;
      if ((v106 & 0x80000000) == 0)
      {
LABEL_158:
        v107 = v130;
        v133 = v51;
        if (v130)
        {
          if (*(a1 + 2192))
          {
            v63 = mosynt_LHPlusMapping(*(a1 + 48), *(a1 + 2200), *(a1 + 2240), v130, v150, 0x1388u);
            v107 = v150;
            if ((v63 & 0x80000000) != 0)
            {
              goto LABEL_206;
            }
          }

          v131 = *(*(a1 + 56) + 160);
          v108 = v144;
          v109 = v107;
          v110 = cstdlib_strlen(v107);
          v63 = (v131)(a6, a7, v108, 11, (v110 + 1), v109, &v145);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_206;
          }

          v128 = v144;
        }

        v63 = (*(*(a1 + 56) + 160))(a6, a7);
        if ((v63 & 0x80000000) == 0)
        {
          v63 = (*(*(a1 + 56) + 160))(a6, a7, v144, 6, 2, "*", &v145);
          if ((v63 & 0x80000000) == 0)
          {
            v59 = (*(*(a1 + 56) + 160))(a6, a7, v144, 7, 1, &v143, &v145);
            v51 = v133;
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_204;
            }

            v59 = (*(*(a1 + 56) + 160))(a6, a7, v144, 20, 1, &v142, &v145);
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_204;
            }

            v111 = *(*(a1 + 56) + 160);
            v112 = v144;
            if (__s)
            {
              v113 = cstdlib_strlen(__s);
              v114 = __s;
              v115 = (v113 + 1);
              v116 = a6;
              v117 = a7;
              v118 = v112;
            }

            else
            {
              v116 = a6;
              v117 = a7;
              v118 = v144;
              v115 = 1;
              v114 = "";
            }

            v63 = v111(v116, v117, v118, 9, v115, v114, &v145);
            if ((v63 & 0x80000000) == 0)
            {
              v51 = v133;
              if (v71 == 35 || v133 && cstdlib_strlen(v133) >= 2 && v133[cstdlib_strlen(v133) - 2] == 42 && (v133[cstdlib_strlen(v133) - 1] == 44 || v133[cstdlib_strlen(v133) - 1] == 59 || v133[cstdlib_strlen(v133) - 1] == 58))
              {
                v59 = (*(*(a1 + 56) + 160))(a6, a7, v144, 8, 1, &v140, &v145);
                if ((v59 & 0x80000000) != 0)
                {
                  goto LABEL_204;
                }
              }

              if (v71)
              {
                *v36 = v71;
                v12 = v127;
                v53 = a5;
                v119 = v129;
                while (1)
                {
                  v120 = *i;
                  if (v120 != 95 && v120 != 35)
                  {
                    break;
                  }

                  ++i;
                }

                __s1 = i;
                v36 = i;
              }

              else
              {
                v12 = v127;
                v53 = a5;
                v119 = v129;
              }

              v48 = HIWORD(v144);
              v21 = v126;
              if (HIWORD(v144) < a5)
              {
                while (1)
                {
                  v121 = *(a2 + v48);
                  v122 = v121 > 0x20 || ((1 << v121) & 0x100002600) == 0;
                  if (v122 && v121 != 95)
                  {
                    break;
                  }

                  if (a5 == ++v48)
                  {
                    LOWORD(v48) = a5;
                    break;
                  }
                }
              }

              v148 = v48;
              if ((v119 & 1) == 0)
              {
                LOWORD(v144) = v126;
              }

              v130 = 0;
              v52 = 1;
              if (a5 <= v48)
              {
                goto LABEL_200;
              }

              continue;
            }
          }
        }

LABEL_206:
        v44 = v63;
        v51 = v133;
LABEL_207:
        if (!v51)
        {
          return v44;
        }

        goto LABEL_208;
      }

      v44 = v106;
LABEL_208:
      v134 = v51;
      goto LABEL_209;
    }

    break;
  }

  v134 = v76;
  *&__c[3] = 0;
  v82 = cstdlib_strcmp(__dst, "");
  v124 = *(*(a1 + 152) + 72);
  v83 = __s1;
  v84 = (2 * cstdlib_strlen(__s1)) | 1;
  if (v82)
  {
    v85 = __dst;
    v86 = v83;
    v87 = v134;
  }

  else
  {
    v86 = v83;
    v87 = v134;
    v85 = 0;
  }

  v44 = v124(*(a1 + 136), *(a1 + 144), 1, v86, v84, v87, v85);
  if ((v44 & 0x80000000) != 0)
  {
    goto LABEL_209;
  }

  v88 = *(*a1 + 8);
  v89 = cstdlib_strlen(v134);
  v90 = heap_Alloc(v88, (v89 + 1));
  v95 = v90;
  if (!v90 || (cstdlib_strcpy(v90, v134), v96 = cstdlib_strlen(v134), v97 = Utf8_DepesLengthInBytesUtf8(v134, v96), (v98 = heap_Realloc(*(*a1 + 8), v134, v97 + 1)) == 0))
  {
    v44 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v91, v92, v93, v94, v123);
    goto LABEL_210;
  }

  v51 = v98;
  v99 = cstdlib_strlen(v95);
  v100 = utf8_DepesToUtf8(v95, v99, 0, v51, v97, &__c[3], 0);
  if ((v100 & 0x80000000) == 0)
  {
    v51[*&__c[3]] = 0;
    heap_Free(*(*a1 + 8), v95);
    goto LABEL_149;
  }

  v44 = v100;
  heap_Free(*(*a1 + 8), v51);
LABEL_211:
  if (v95)
  {
    heap_Free(*(*a1 + 8), v95);
  }

  return v44;
}

uint64_t oneword_G2PLookup(uint64_t a1, const char **a2, __int16 a3, unsigned __int16 *a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13)
{
  v176 = *MEMORY[0x277D85DE8];
  v166 = a3;
  v20 = *a4;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 3;
  v161 = 0;
  v160 = a3 - 1;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v150 = *a8;
  v21 = *(a1 + 2192) != 0;
  v22 = *(*a1 + 8);
  v23 = cstdlib_strlen(*a2);
  v24 = heap_Calloc(v22, 1, v23 + 1);
  if (!v24)
  {
    v38 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v25, v26, v27, v28, v121);
    return v38;
  }

  v29 = v24;
  v149 = v21;
  v159 = 0;
  v30 = heap_Calloc(*(*a1 + 8), 1, 25016);
  if (!v30)
  {
    v38 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v31, v32, v33, v34, v121);
    goto LABEL_296;
  }

  v35 = v30;
  v148 = v20;
  MdeSettings = mosynt_ResetMosyntWS(*(a1 + 48), v30);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_294;
  }

  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__src, "");
  cstdlib_strcpy(v173, "");
  cstdlib_strcpy(__s2, "");
  cstdlib_strcpy(__s, "");
  cstdlib_strcpy(v170, "");
  *(a1 + 2172) = 0;
  if (!cstdlib_strcmp(a5, (a1 + 300)))
  {
    goto LABEL_7;
  }

  MdeSettings = oneword_GetMdeSettings(a1, a5);
  if ((MdeSettings & 0x80000000) != 0)
  {
LABEL_294:
    v38 = MdeSettings;
    goto LABEL_295;
  }

  cstdlib_strcpy((a1 + 300), a5);
LABEL_7:
  MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 0, 1, &v163, &v165);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_294;
  }

  for (i = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, v163, *a8, &v157); ; i = (*(*(a1 + 56) + 168))(a6, a7))
  {
    v38 = i;
    if ((i & 0x80000000) != 0)
    {
      goto LABEL_295;
    }

    if (v163 - 5 > 2)
    {
      break;
    }

    v38 = (*(*(a1 + 56) + 120))(a6, a7, *a8, a8);
    if ((v38 & 0x80000000) != 0 || !*a8)
    {
      goto LABEL_295;
    }
  }

  if (*(a1 + 2168) != 1)
  {
    goto LABEL_20;
  }

  v39 = *(a1 + 2072);
  if (v39 != 1)
  {
    if (v39 || *(a1 + 2136))
    {
      goto LABEL_20;
    }

LABEL_302:
    v41 = 0;
    v40 = 1;
    goto LABEL_21;
  }

  if (*(a1 + 2136))
  {
    goto LABEL_302;
  }

LABEL_20:
  v40 = 0;
  v41 = 1;
LABEL_21:
  LOWORD(v42) = *a8;
  if (!*a8)
  {
    goto LABEL_295;
  }

  if (v158 >= *a4)
  {
    LOWORD(v144) = 0;
LABEL_299:
    if (v144)
    {
      *a8 = v144;
    }

    goto LABEL_295;
  }

  v137 = v41;
  v138 = v40;
  v144 = 0;
  v136 = a1 + 1228;
  v134 = (a1 + 168);
  v135 = (a1 + 160);
  v132 = (a1 + 184);
  v133 = (a1 + 176);
  v130 = (a1 + 200);
  v131 = (a1 + 192);
  v128 = (a1 + 216);
  v129 = (a1 + 208);
  v143 = -1;
  v145 = 3;
  v139 = 1;
  while (1)
  {
    v155 = 0;
    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v42, &v164);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    v155 = v164;
    if (v164)
    {
      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      v43 = v162;
      v44 = v164;
    }

    else
    {
      v44 = 0;
      v43 = 3;
      v162 = 3;
    }

    MdeSettings = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, v43, v44, &v157);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    if (v162 - 5 <= 2)
    {
      while (1)
      {
        MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v164, &v164);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (!v164)
        {
          break;
        }

        MdeSettings = (*(*(a1 + 56) + 168))(a6, a7);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v164, 1, 1, &v156 + 2, &v165);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v164, 2, 1, &v156, &v165);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (v162 - 5 >= 3)
        {
          goto LABEL_39;
        }
      }

      v162 = 3;
    }

LABEL_39:
    MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 1, 1, &v166, &v165);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    v48 = v166;
    v49 = v160;
    if (v166 < v160)
    {
      goto LABEL_41;
    }

    if (v163 != 3 && v145 == 3)
    {
      v143 = *a8;
      if (oneword_GetWord(*(a1 + 224) + v166, *a2, __dst))
      {
        if (v164 && cstdlib_strcmp(a5, "prompt") && cstdlib_strcmp(a5, "internal-nuance-system-norm"))
        {
          v123 = v155;
          cstdlib_strcpy(__src, __dst);
          MdeSettings = oneword_GetMultiWordLen(a1, __src, a5, __b, &v161);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_294;
          }

          v122 = v161;
          if (v161)
          {
            if (v166 > v160)
            {
              v50 = 0;
              v124 = 0;
              while (1)
              {
                v167[0] = 0;
                v154 = 0;
                if (v124)
                {
                  v51 = v124;
                }

                else
                {
                  v51 = v123;
                }

                v155 = v51;
                if (v51 && __b[v50])
                {
                  v151 = 0;
                  v140 = v50;
                  while (1)
                  {
                    MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v51, 0, 1, &v154, &v165);
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_294;
                    }

                    if (v154 == 3)
                    {
                      ++v151;
                    }

                    else if (v154 == 5)
                    {
                      MdeSettings = (*(*(a1 + 56) + 176))(a6, a7, v155, 4, v167, &v165);
                      if ((MdeSettings & 0x80000000) != 0)
                      {
                        goto LABEL_294;
                      }

                      if (!cstdlib_strcmp(v167[0], "phon") || !cstdlib_strcmp(v167[0], "prompt") || !cstdlib_strcmp(v167[0], "internal-nuance-system-norm"))
                      {
                        v50 = v140;
                        __b[v140] = v151;
                        goto LABEL_76;
                      }

                      v124 = v155;
                    }

                    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v155, &v155);
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_294;
                    }

                    v51 = v155;
                    if (!v155)
                    {
                      break;
                    }

                    v50 = v140;
                    if (v151 >= __b[v140])
                    {
                      goto LABEL_76;
                    }
                  }

                  v50 = v140;
                }

LABEL_76:
                if (!oneword_GetMultiWord((*(a1 + 224) + v166), *a2, __src, __b[v50]))
                {
                  goto LABEL_96;
                }

                cstdlib_strcpy(__s, __src);
                if (((*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a5, __s, 256) & 0x80000000) != 0)
                {
                  goto LABEL_96;
                }

                v141 = v50;
                MdeSettings = oneword_Lookup(a1, v35, a2, __s, __src, a5, v157, v166, *a8, a6, a7, &v160, 0, a13, v149);
                if ((MdeSettings & 0x80000000) != 0)
                {
                  goto LABEL_294;
                }

                v52 = v148;
                if (v160 > *a4)
                {
                  break;
                }

                if (*(a1 + 2000) && cstdlib_strlen(__s))
                {
                  v125 = v35;
                  v55 = 0;
                  v152 = 0;
                  v56 = 0;
                  do
                  {
                    if (__s[v55] == 95)
                    {
                      __s[v55] = 32;
                      v152 = 1;
                    }

                    v55 = ++v56;
                  }

                  while (cstdlib_strlen(__s) > v56);
                  if (v152)
                  {
                    v57 = oneword_Lookup(a1, v125, a2, __s, __src, a5, v157, v166, *a8, a6, a7, &v160, 0, a13, v149);
                    if ((v57 & 0x80000000) != 0)
                    {
                      goto LABEL_303;
                    }

                    if (v160 > *a4)
                    {
                      v53 = v160;
                      v52 = v148;
                      v50 = v141;
                      v35 = v125;
                      goto LABEL_81;
                    }
                  }

                  v50 = v141;
                  v35 = v125;
                }

LABEL_96:
                if (++v50 >= v122 || v166 <= v160)
                {
                  goto LABEL_98;
                }
              }

              v53 = v160;
LABEL_81:
              *a4 = v53;
              v111 = v53 > v52;
              v54 = v144;
              if (!v111)
              {
                v54 = v124;
              }

              v144 = v54;
              goto LABEL_96;
            }
          }
        }

LABEL_98:
        LOWORD(v58) = v166;
        v59 = v160;
        if (v166 >= v160)
        {
          MdeSettings = oneword_Lookup(a1, v35, a2, __dst, __dst, a5, v157, v166, *a8, a6, a7, &v160, 0, a13, v149);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_294;
          }

          isInputBetweenPOIMrk = oneword_isInputBetweenPOIMrk(a9, *a11, v166, v160);
          v58 = v166;
          v59 = v160;
          if (isInputBetweenPOIMrk)
          {
            LOWORD(v154) = 0;
            if (v166 < v160)
            {
              v126 = v35;
              v127 = a5;
              while (1)
              {
                v61 = &(*a2)[v58];
                v62 = *(a1 + 224);
                if (utf8_IsChineseLetter(&v61[v62]))
                {
                  v153 = v61;
                  v63 = utf8_determineUTF8CharLength(v61[v62]);
                  v64 = v63;
                  v65 = v58 + v63;
                  LOWORD(v154) = v58 + v63;
                  if (v166 != v58 || v160 > v65)
                  {
                    v142 = v58 + v63;
                    cstdlib_memset(v167, 0, 0x80uLL);
                    cstdlib_strncpy(v167, &v153[v62], v64);
                    v35 = v126;
                    a5 = v127;
                    MdeSettings = oneword_Lookup(a1, v126, a2, v167, v167, v127, v157, v58, *a8, a6, a7, &v154, 0, a13, v149);
                    v65 = v142;
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_110;
                  }
                }

                else
                {
                  v65 = v58 + 1;
                }

                v35 = v126;
                a5 = v127;
LABEL_110:
                v59 = v160;
                v58 = v65;
                if (v160 <= v65)
                {
                  LOWORD(v58) = v166;
                  break;
                }
              }
            }
          }
        }

        if (v59 <= v58)
        {
          cstdlib_strcpy(__s2, __dst);
          if (((*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a5, __s2, 128) & 0x80000000) == 0)
          {
            if (cstdlib_strcmp(__dst, __s2))
            {
              MdeSettings = oneword_Lookup(a1, v35, a2, __s2, __dst, a5, v157, v166, *a8, a6, a7, &v160, 0, a13, v149);
              if ((MdeSettings & 0x80000000) != 0)
              {
                goto LABEL_294;
              }
            }
          }
        }
      }

      v48 = v166;
      v49 = v160;
      if (v166 >= v160 && *(a1 + 292))
      {
        LOWORD(v167[0]) = 0;
        MdeSettings = oneword_NonDctDpsMde(a1, v166, __dst, a5, *a8, v167, a6, a7);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (LOWORD(v167[0]))
        {
          v162 = 0;
          v164 = v167[0];
        }

        v139 = 0;
        v48 = v166;
        v49 = v160;
      }

      else
      {
        v139 = 0;
      }

      v150 = v143;
    }

    if (v48 >= v49 && (v145 != 3 || v162 != 3))
    {
      break;
    }

    if (v48 < v49 || v145 != 3 || v162 != 3)
    {
      goto LABEL_41;
    }

    if (v163)
    {
      if (v163 <= 2)
      {
        LOWORD(v167[0]) = 0;
        LOWORD(v154) = 0;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", v45, v46, v47, __dst);
        v66 = v166;
        v160 = v66 + cstdlib_strlen(__dst);
        v163 = 4;
        MdeSettings = (*(*(a1 + 56) + 88))(a6, a7, *a8, a8);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 0, 1, &v163, v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 1, 1, &v166, v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 2, 1, &v160, v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 3, 1, "", v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 5, 2, "*", v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 6, 2, "*", v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        LOWORD(v154) = 1;
        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 7, 1, &v154, v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 9, 1, "", v167);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }
      }

      goto LABEL_41;
    }

    MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 2, 1, &v158, &v165);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    v74 = *(a1 + 224);
    v75 = v74 + v166;
    v76 = (v158 + v74) - (v74 + v166);
    if (v76 >= 128)
    {
      v77 = 128;
    }

    else
    {
      v77 = v76;
    }

    cstdlib_strncpy(v173, &(*a2)[v75], v77);
    v173[v77] = 0;
    *(a1 + 2172) = 0;
    cstdlib_strcpy(v170, v173);
    if (((*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), a5, v170, 128) & 0x80000000) != 0)
    {
      goto LABEL_165;
    }

    if (*(a1 + 2192))
    {
      LODWORD(v167[0]) = 0;
      v79 = cstdlib_strcmp(__dst, v173) == 0;
      MdeSettings = mde_MosyntMorphAna(a1, v35, v170, v173, a5, v166, *a8, v80, a6, a7, &v160, v79, 0, v167);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      if (LODWORD(v167[0]) == 1)
      {
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD WGRAM %s", v81, v82, v83, v173);
      }

LABEL_165:
      v84 = *(a1 + 2168);
      LOWORD(v85) = v166;
      v86 = v160;
      goto LABEL_166;
    }

    if (*(a1 + 2168) == 1 && !cstdlib_strstr(a5, "latin") && (!v137 || cstdlib_strcmp(a5, "prompt") && cstdlib_strcmp(a5, "internal-nuance-system-norm")))
    {
      cstdlib_strcpy(v169, v173);
      if (((*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a5, v169, 128) & 0x80000000) != 0)
      {
        cstdlib_strcpy(v169, v173);
      }

      MdeSettings = crf_mde_seg_label(*a1, *a2, a1 + 2016, v169, v166, *(a1 + 224), &v160, a8, *(a1 + 56), a6, a7, *(a1 + 80), *(a1 + 64), *(a1 + 72), *(a1 + 1224), v136, *(a1 + 556), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), a5, v135, v134, v133, v132, v131, v130, v129, v128, *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 1208), 0);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      if (v166 < v160)
      {
        *(a1 + 2172) = 1;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", v115, v116, v78, v173);
      }
    }

    LOWORD(v85) = v166;
    v86 = v160;
    if (v166 >= v160 && *(a1 + 296))
    {
      MdeSettings = oneword_DpsMde(a1, v170, v173, "g2p", a5, v166, *a8, v78, a6, a7, &v160);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      v85 = v166;
      v86 = v160;
      if (v85 < v160)
      {
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MDE %s", v85, v96, v97, v173);
        LOWORD(v85) = v166;
        v86 = v160;
      }
    }

    v84 = *(a1 + 2168);
    if (!v84)
    {
      if (v85 >= v86)
      {
        MdeSettings = mde_Main(a1, v170, v173, a5, v85, *a8, a6, a7, &v160);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (v166 < v160)
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE %s", v98, v99, v100, v173);
        }
      }

      goto LABEL_165;
    }

LABEL_166:
    v111 = v85 < v86;
    v87 = v139;
    if (!v111)
    {
      v87 = 1;
    }

    v139 = v87;
    if (v84 != 1)
    {
      goto LABEL_190;
    }

    if (v138 && cstdlib_strstr(a5, "latin"))
    {
      v84 = *(a1 + 2168);
      if (v84 != 1)
      {
        goto LABEL_190;
      }
    }

    else
    {
      MdeSettings = oneword_joinTokens(a1, a6, a7, v143, a8, v138);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      v84 = *(a1 + 2168);
      if (v84 != 1)
      {
        goto LABEL_190;
      }

      if (!v138)
      {
        v84 = 1;
LABEL_216:
        MdeSettings = oneword_ProcessNTokens(a1, v35, a2, a5, a6, a7, v143, *a8, a9, a10, a11, a12, v139, v84, v84);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        goto LABEL_41;
      }
    }

    v95 = cstdlib_strstr(a5, "latin");
    v84 = *(a1 + 2168);
    if (v95)
    {
      goto LABEL_216;
    }

LABEL_190:
    if (!v84)
    {
      goto LABEL_216;
    }

LABEL_41:
    v38 = (*(*(a1 + 56) + 168))(a6, a7, *a8, 2, 1, &v158, &v165);
    if ((v38 & 0x80000000) != 0)
    {
      goto LABEL_295;
    }

    v42 = v164;
    *a8 = v164;
    v145 = v163;
    v163 = v162;
    if (!v42 || v158 >= *a4)
    {
      goto LABEL_299;
    }
  }

  if (v163 >= 2 && (v163 != 2 || *(a1 + 936) != 1))
  {
    goto LABEL_244;
  }

  MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 2, 1, &v158, &v165);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_294;
  }

  v67 = *(a1 + 224);
  v68 = v67 + v166;
  v69 = (v158 + v67) - (v67 + v166);
  v70 = v69 >= 128 ? 128 : v69;
  cstdlib_strncpy(v173, &(*a2)[v68], v70);
  v173[v70] = 0;
  *(a1 + 2172) = 0;
  cstdlib_strcpy(v170, v173);
  if (((*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), a5, v170, 128) & 0x80000000) != 0)
  {
    cstdlib_strcpy(v170, v173);
  }

  else if (cstdlib_strcmp(__s2, v170))
  {
    MdeSettings = oneword_Lookup(a1, v35, a2, v170, v173, a5, v157, v166, *a8, a6, a7, &v160, 1, a13, v149);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    if (v160 > v166)
    {
      v167[0] = 0;
      LOWORD(v154) = 0;
      MdeSettings = (*(*(a1 + 56) + 136))(a6, a7, *a8, &v154);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      MdeSettings = (*(*(a1 + 56) + 176))(a6, a7, v154, 3, v167, &v165);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      oneword_ReplaceUnderscoreWithDot(v167[0]);
    }
  }

  if (v166 < v160)
  {
    goto LABEL_244;
  }

  if (v163 == 1)
  {
    LOWORD(v167[0]) = 0;
    LOWORD(v154) = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", v71, v72, v73, __dst);
    v101 = v166;
    v160 = v101 + cstdlib_strlen(v173);
    v163 = 4;
    MdeSettings = (*(*(a1 + 56) + 88))(a6, a7, *a8, a8);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 0, 1, &v163, v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 1, 1, &v166, v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 2, 1, &v160, v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 3, 1, "", v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 5, 2, "*", v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 6, 2, "*", v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    LOWORD(v154) = 1;
    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 7, 1, &v154, v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 9, 1, "", v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, *a8, a8);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    goto LABEL_241;
  }

  if (v163)
  {
    goto LABEL_241;
  }

  if (*(a1 + 2192))
  {
    LODWORD(v167[0]) = 0;
    v88 = cstdlib_strlen(__dst);
    v89 = cstdlib_strlen(v173);
    v91 = 0;
    v92 = v88 - 1;
    if (v88 >= 2u)
    {
      LOWORD(v154) = __dst[v92];
      v146 = v89;
      v93 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &v154);
      v92 = v88 - 1;
      v112 = v93 == 0;
      v89 = v146;
      v91 = !v112;
    }

    v94 = v91 & (v89 == v92);
    if (v88 == v89)
    {
      v94 = 1;
    }

    MdeSettings = mde_MosyntMorphAna(a1, v35, v170, v173, a5, v166, *a8, v90, a6, a7, &v160, v94, 0, v167);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

LABEL_241:
    v107 = v139;
    if (v166 >= v160)
    {
      v107 = 1;
    }

    v139 = v107;
LABEL_244:
    if ((v143 & 0x8000) != 0)
    {
      goto LABEL_41;
    }

    if (v163 != 3 && v162 == 3)
    {
      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v143, 1, 1, &v159, &v165);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      cstdlib_strcpy(v29, "");
      if (v158 > v159)
      {
        cstdlib_strncpy(v29, &(*a2)[*(a1 + 224) + v159], v158 - v159);
        v29[v158 - v159] = 0;
      }

      if (*(a1 + 936) && utf8_IsChineseLetter(v29))
      {
        v108 = *(a1 + 224);
        ChineseUTFCharNum = utf8_GetChineseUTFCharNum(*a2, (v158 + v108));
        v109 = ChineseUTFCharNum - utf8_GetChineseUTFCharNum(*a2, (*(a1 + 224) + v159));
        while (1)
        {
          v110 = (*a2)[v158 + v108];
          if (v110 == 32)
          {
            break;
          }

          v111 = v110 != 95 && v108 <= 5;
          v112 = !v111 || v110 == 0;
          if (v112)
          {
            break;
          }

          ++v108;
        }

        MdeSettings = oneword_SkipCrosstoken(a1, a6, a7, a5, v109, v159, v158 + v108 - *(a1 + 224), v143, *a8);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        goto LABEL_272;
      }

      v113 = *(a1 + 2168);
      if (v113 == 1)
      {
        if (v138)
        {
          v114 = cstdlib_strstr(a5, "latin");
          v113 = *(a1 + 2168);
          if (!v114)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v113 = 1;
        }

LABEL_270:
        MdeSettings = oneword_ProcessNTokens(a1, v35, a2, a5, a6, a7, v143, *a8, a9, a10, a11, a12, v139, *(a1 + 2172), v113);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 2, 1, &v158, &v165);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }
      }

      else
      {
LABEL_265:
        if (!v113)
        {
          goto LABEL_270;
        }
      }
    }

LABEL_272:
    if (*(a1 + 2168) == 1 && (v163 != 3 && v162 == 3 || v160 == *a4) && (v138 && !cstdlib_strstr(a5, "latin") || v137 && *(a1 + 2172)))
    {
      MdeSettings = oneword_joinTokens(a1, a6, a7, v143, a8, v138);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      *(a1 + 2172) = 0;
    }

    goto LABEL_41;
  }

  v125 = v35;
  if (*(a1 + 2168) != 1 || cstdlib_strstr(a5, "latin") || v137 && (!cstdlib_strcmp(a5, "prompt") || !cstdlib_strcmp(a5, "internal-nuance-system-norm")))
  {
    goto LABEL_306;
  }

  cstdlib_strcpy(v169, v173);
  if (((*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a5, v169, 128) & 0x80000000) != 0)
  {
    cstdlib_strcpy(v169, v173);
  }

  v57 = crf_mde_seg_label(*a1, *a2, a1 + 2016, v169, v166, *(a1 + 224), &v160, a8, *(a1 + 56), a6, a7, *(a1 + 80), *(a1 + 64), *(a1 + 72), *(a1 + 1224), v136, *(a1 + 556), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), a5, v135, v134, v133, v132, v131, v130, v129, v128, *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 1208), 1);
  if ((v57 & 0x80000000) == 0)
  {
    if (v166 < v160)
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", v102, v103, v73, v173);
      *(a1 + 2172) = 1;
    }

    if (*(a1 + 2068) || !*(a1 + 2172) || (v57 = (*(*(a1 + 56) + 120))(a6, a7, *a8, a8), (v57 & 0x80000000) == 0))
    {
LABEL_306:
      if (v166 >= v160 && *(a1 + 296) && !*(a1 + 276))
      {
        v57 = oneword_DpsMde(a1, v170, v173, "g2p", a5, v166, *a8, v73, a6, a7, &v160);
        if ((v57 & 0x80000000) != 0)
        {
          goto LABEL_303;
        }

        if (v166 < v160)
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MAIN %s", v104, v105, v106, v173);
          cstdlib_strcpy((a1 + 272), *(a1 + 1208));
        }
      }

      if (*(a1 + 2168) || v166 < v160)
      {
LABEL_239:
        if (!*(a1 + 276))
        {
          goto LABEL_241;
        }
      }

      else if (!*(a1 + 276))
      {
        v57 = mde_Main(a1, v170, v173, a5, v166, *a8, a6, a7, &v160);
        if ((v57 & 0x80000000) != 0)
        {
          goto LABEL_303;
        }

        if (v166 < v160)
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE MAIN %s", v117, v118, v119, v173);
          cstdlib_strcpy((a1 + 272), *(a1 + 1208));
        }

        goto LABEL_239;
      }

      MdeSettings = oneword_DeleteDctAndMdeTokenRecords(a1, a6, a7, v150);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      goto LABEL_241;
    }
  }

LABEL_303:
  v38 = v57;
  v35 = v125;
LABEL_295:
  heap_Free(*(*a1 + 8), v35);
LABEL_296:
  heap_Free(*(*a1 + 8), v29);
  return v38;
}

uint64_t oneword_GetMdeSettings(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  __c[0] = 0;
  v4 = (a1 + 282);
  *(a1 + 282) = 0x10000000;
  *(a1 + 286) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  cstdlib_strcpy(__dst, "mdeminwrdlen_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_3;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeminwrdlen", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_3:
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    *v4 = cstdlib_atoi(**&__c[3]);
  }

  cstdlib_strcpy(__dst, "mdemaxwrdlen_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_8;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxwrdlen", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_8:
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    *(a1 + 283) = cstdlib_atoi(**&__c[3]);
  }

  cstdlib_strcpy(__dst, "mdemaxnrmorph_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_13;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxnrmorph", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_13:
    v8 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
    }

    *(a1 + 285) = cstdlib_atoi(**&__c[3]);
  }

  cstdlib_strcpy(__dst, "mdefirstletter_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_18;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdefirstletter", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_18:
    v9 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v9)
    {
      *v9 = 0;
    }

    *(a1 + 284) = cstdlib_strcmp(**&__c[3], "upper") == 0;
  }

  cstdlib_strcpy(__dst, "mdetype_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_23;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdetype", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_23:
    v10 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v10)
    {
      *v10 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "stemafx"))
    {
      *(a1 + 286) = 1;
    }
  }

  cstdlib_strcpy(__dst, "mdeemptyafx_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_43;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeemptyafx", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_43:
    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    *(a1 + 288) = cstdlib_strcmp(**&__c[3], "yes") == 0;
  }

  cstdlib_strcpy(__dst, "mdenondctdps_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_48:
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    *(a1 + 292) = cstdlib_strcmp(**&__c[3], "yes") == 0;
    goto LABEL_51;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdenondctdps", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_48;
  }

LABEL_51:
  cstdlib_strcpy(__dst, "mdedps_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v13 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v13 & 0x80000000) == 0)
  {
    if (*&__c[1] || (*&__c[1] = -1, v13 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdedps", &__c[3], &__c[1], __c), (v13 & 0x80000000) == 0) && *&__c[1])
    {
      v14 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v14)
      {
        *v14 = 0;
      }

      *(a1 + 296) = cstdlib_strcmp(**&__c[3], "yes") == 0;
    }
  }

  return v13;
}

uint64_t oneword_read_LD_W_INPUTSPACETAG(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  if (a4 != 6)
  {
    return 0;
  }

  v16 = v6;
  v17 = v7;
  v15 = 0;
  *a6 = 0;
  v13 = (*(*(a1 + 56) + 184))(a2, a3, a5, 19, &v15);
  result = 0;
  if ((v13 & 0x80000000) == 0 && v15 == 1)
  {
    return (*(*(a1 + 56) + 176))(a2, a3, a5, 19, a6, &v15);
  }

  return result;
}

uint64_t oneword_GetWord(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  while (1)
  {
    v4 = *(a2 + a1);
    v5 = v4 > 0x20 || ((1 << v4) & 0x100002601) == 0;
    if (!v5 || v4 == 95)
    {
      break;
    }

    ++a1;
    *(a3 + v3++) = v4;
    if (v3 == 127)
    {
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  *(a3 + v3) = 0;
  return result;
}

uint64_t oneword_GetMultiWordLen(void *a1, uint64_t a2, uint64_t a3, void *__b, _BYTE *a5)
{
  v17 = 0;
  v16 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  v10 = (*(a1[10] + 120))(a1[8], a1[9], a2, 255, "femwg2p", a3, &v17, &v16);
  if ((v10 & 0x80000000) == 0)
  {
    *a5 = 0;
    if (v16)
    {
      for (i = 0; i < v16; ++i)
      {
        v12 = LH_atou(*(v17 + 8 * i));
        if (v12 <= 0x3F)
        {
          v13 = *a5;
          *a5 = v13 + 1;
          *(__b + v13) = v12;
        }
      }

      v14 = *a5;
    }

    else
    {
      v14 = 0;
    }

    ssft_qsort(__b, v14, 1, compare_0);
  }

  return v10;
}

BOOL oneword_GetMultiWord(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + a1);
  while (v7)
  {
    *(a3 + v4) = v7;
    if (v4 == 255)
    {
      return 0;
    }

    LOWORD(a1) = a1 + 1;
    v8 = (a2 + a1);
    v7 = *v8;
    v9 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (!v9 || v7 == 95)
    {
      v10 = *(v8 - 1);
      v11 = v10 == 95 ? v5 : v5 + 1;
      v12 = v10 > 0x20;
      v13 = (1 << v10) & 0x100002600;
      if (v12 || v13 == 0)
      {
        v5 = v11;
      }
    }

    ++v4;
    ++v6;
    if (a4 <= v5)
    {
      v16 = a1;
      goto LABEL_24;
    }
  }

  v16 = a1;
  v6 = v4;
LABEL_24:
  *(a3 + v6) = 0;
  if (!*(a2 + v16))
  {
    v17 = *(a2 + v16 - 1);
    if ((v17 > 0x20 || ((1 << v17) & 0x100002600) == 0) && v17 != 95)
    {
      LOBYTE(v5) = v5 + 1;
    }
  }

  return a4 == v5;
}

uint64_t oneword_Lookup(_DWORD *a1, char *a2, void *a3, unsigned __int8 *a4, const char *a5, char *a6, const char *a7, unsigned __int16 a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, unsigned __int16 *a12, int a13, int a14, int a15)
{
  v192 = a8;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 4;
  v187 = 0;
  v186 = 0;
  v185 = 1;
  v184 = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "sysdctlookup", &v186) & 0x80000000) == 0 && !cstdlib_strcmp(v186, "no"))
  {
    return 0;
  }

  v181 = a13;
  if (a13)
  {
    if (a1[69])
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", v21, v22, v23, a4);
  if (a1[306])
  {
    cstdlib_strcpy(__dst, "g2p");
    cstdlib_strcat(__dst, a1 + 3 * *a4 + 1228);
    v25 = (*(*(a1 + 10) + 232))(*(a1 + 8), *(a1 + 9), __dst, a4, &v191, &v190, &v189, &v184);
  }

  else
  {
    v25 = (*(*(a1 + 10) + 240))(*(a1 + 8), *(a1 + 9), "g2p", a4, &v191, &v190, &v189, *(a1 + 556), &v184);
  }

  v24 = v25;
  if ((v25 & 0x80000000) == 0)
  {
    v26 = "ADDONDCT";
    if (!v184)
    {
      v26 = "OTHER";
    }

    v168 = v26;
    if (v190)
    {
      v169 = a7;
      v166 = a3;
      v27 = 0;
      v170 = 0;
      v28 = a2 + 10000;
      v173 = a11;
      v179 = a10;
      v29 = a12;
      v172 = a15;
      v162 = a14;
      v164 = a12;
      v165 = a2 + 5000;
      v167 = a6;
      v171 = a5;
      while (1)
      {
        if (v181 && a1[235] && v192 < *v29)
        {
          goto LABEL_173;
        }

        cstdlib_strncpy(v28, *(v191 + 8 * v27), 0x1387uLL);
        a2[14999] = 0;
        v30 = cstdlib_strchr(v28, v189);
        if (v30)
        {
          *v30 = 0;
          __s = v30 + 1;
          v34 = cstdlib_strchr(v30 + 1, v189);
          v35 = v34;
          if (!v34 || (*v34 = 0, v35 = v34 + 1, (v36 = cstdlib_strchr(v34 + 1, v189)) == 0))
          {
            __s1 = 0;
LABEL_27:
            v176 = 0;
LABEL_28:
            v174 = 0;
            v40 = 0;
LABEL_29:
            v182 = 0;
            goto LABEL_31;
          }

          *v36 = 0;
          __s1 = v36 + 1;
          v37 = cstdlib_strchr(v36 + 1, v189);
          if (!v37)
          {
            goto LABEL_27;
          }

          *v37 = 0;
          v176 = v37 + 1;
          v38 = cstdlib_strchr(v37 + 1, v189);
          if (!v38)
          {
            goto LABEL_28;
          }

          *v38 = 0;
          v174 = (v38 + 1);
          v39 = cstdlib_strchr(v38 + 1, v189);
          v40 = v39;
          if (!v39)
          {
            goto LABEL_29;
          }

          *v39 = 0;
          v40 = v39 + 1;
          v41 = cstdlib_strchr(v39 + 1, v189);
          if (!v41)
          {
            goto LABEL_29;
          }

          *v41 = 0;
          v182 = v41 + 1;
          v42 = cstdlib_strchr(v41 + 1, v189);
          if (v42)
          {
            *v42 = 0;
          }
        }

        else
        {
          v176 = 0;
          __s1 = 0;
          v174 = 0;
          v40 = 0;
          v182 = 0;
          v35 = 0;
          __s = 0;
        }

LABEL_31:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v31, v32, v33, v28);
        if (cstdlib_strcmp(a6, "name"))
        {
          if (v35 && cstdlib_strcmp(v35, "") && !cstdlib_strstr(v35, a6))
          {
            goto LABEL_77;
          }
        }

        else if (v35 && cstdlib_strcmp(v35, ""))
        {
          if ((v46 = cstdlib_strstr(v35, a6)) == 0 || (v47 = v46, v48 = cstdlib_strlen(a6), v47 != v35) && *(v47 - 1) != 44 || v47[v48] && v47[v48] != 44)
          {
LABEL_77:
            v49 = *(*a1 + 32);
            v50 = "G2P Domain validation not OK";
            goto LABEL_78;
          }
        }

        if (!v172 || !v40 || !cstdlib_strcmp(v40, "0"))
        {
          if (!a1[301] || !v182)
          {
            v28 = a2 + 10000;
            v51 = v173;
            if (!v181)
            {
              goto LABEL_63;
            }

            goto LABEL_53;
          }

          v51 = v173;
          if (cstdlib_strchr(v182, 33))
          {
            v182[3] = 0;
            v28 = a2 + 10000;
            if (!v181)
            {
              goto LABEL_63;
            }

LABEL_156:
            v149 = cstdlib_strstr(a6, v182);
            if (!v149 || (v150 = v149, cstdlib_strlen(v182)) && v150[cstdlib_strlen(v182)])
            {
              v151 = cstdlib_strstr(*(a1 + 152), a6);
              if (LH_stricmp(v182, *(a1 + 151)) || !v151 || v151[cstdlib_strlen(a6)] != 124)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK", v152, v153, v154, v182);
                goto LABEL_80;
              }
            }

LABEL_53:
            if (a1[235])
            {
              if (v182 && *v182 && cstdlib_strlen(v182) < 4)
              {
                v52 = v182;
              }

              else
              {
                v52 = *(a1 + 151);
              }

              cstdlib_strcpy(__dst, v52);
              if (*(a1 + 272) && cstdlib_strncmp(__dst, a1 + 272, 2uLL) || cstdlib_strstr(a6, "latin") && !cstdlib_strcmp(__dst, *(a1 + 151)))
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK", v53, v54, v55, v182);
                if (*(a1 + 272))
                {
                  v91 = cstdlib_strncmp(__dst, a1 + 272, 2uLL);
                  v92 = v170;
                  if (v91)
                  {
                    v92 = 1;
                  }

                  v170 = v92;
                }

                goto LABEL_80;
              }

              cstdlib_strcpy(a1 + 272, __dst);
              v170 = 0;
              goto LABEL_63;
            }

            v56 = a5;
            if (v182)
            {
              v57 = v169;
              if (cstdlib_strlen(v182) == 3 && !cstdlib_strncmp(v182, *(a1 + 151), 2uLL) && cstdlib_strcmp(v182, *(a1 + 151)))
              {
                cstdlib_strcpy(v182, *(a1 + 151));
              }

LABEL_65:
              v58 = v192;
              *v29 = v58 + cstdlib_strlen(v56);
              v59 = (*(*(a1 + 7) + 88))(v179, v51, a9, &a9);
              if ((v59 & 0x80000000) != 0)
              {
                return v59;
              }

              v59 = (*(*(a1 + 7) + 160))(v179, v51, a9, 0, 1, &v188, &v187);
              if ((v59 & 0x80000000) != 0)
              {
                return v59;
              }

              v59 = (*(*(a1 + 7) + 160))(v179, v51, a9, 1, 1, &v192, &v187);
              if ((v59 & 0x80000000) != 0)
              {
                return v59;
              }

              v59 = (*(*(a1 + 7) + 160))(v179, v51, a9, 2, 1, v29, &v187);
              if ((v59 & 0x80000000) != 0)
              {
                return v59;
              }

              if (v57)
              {
                v60 = *(*(a1 + 7) + 160);
                v61 = a9;
                v62 = cstdlib_strlen(v57);
                v59 = v60(v179, v51, v61, 19, (v62 + 1), v57, &v187);
                if ((v59 & 0x80000000) != 0)
                {
                  return v59;
                }
              }

              v63 = cstdlib_strchr(v28, 18);
              v64 = v63;
              if (!v63)
              {
                v64 = &v28[cstdlib_strlen(v28)];
              }

              v65 = *(a1 + 112);
              v66 = (*v166 + v192 + v65);
              v67 = *v166 + *v29 + v65;
              v163 = a1[569];
              v68 = *(*a1 + 32);
              v193[0] = 0;
              v69 = oneword_CountPhoneticWords(v28, v64);
              log_OutText(v68, "FE_ONEWORD", 5, 0, "Number of orthographic words: %d", v70, v71, v72, 0);
              v73 = oneword_CountOrthographicWords(v66, v67, 0x23u, 0x23u);
              log_OutText(v68, "FE_ONEWORD", 5, 0, "Number of phonetic words:     %d", v74, v75, v76, v69);
              if (v69)
              {
                if (v73)
                {
                  if (v69 == 1)
                  {
                    v193[0] = v73 - 1;
                    oneword_ReplaceCharactersInOrthography(v66, v67, 0x21u, 45, v193);
                    v80 = v66;
                    v81 = v67;
                    v82 = 5;
                    v83 = 45;
                    goto LABEL_109;
                  }

                  if (utf8_BelongsToSet(0x24u, v66, 0, v67 - v66) && (PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v66, v67 - v66)) != 0 && utf8_BelongsToSet(0x24u, v66, PreviousUtf8Offset, v67 - v66))
                  {
                    log_OutText(v68, "FE_ONEWORD", 5, 0, "Orthography starts and ends with underscore or hyphen: no replacement made", v94, v95, v96, v161);
                    v28 = a2 + 10000;
                  }

                  else
                  {
                    if (v163)
                    {
                      *__dst = v67 - v66;
                      oneword_ReplaceCharactersInOrthography(v66, v67, 5u, 95, __dst);
                    }

                    v28 = a2 + 10000;
                    if (v73 < v69)
                    {
                      v193[0] = v69 - v73;
                      v80 = v66;
                      v81 = v67;
                      v82 = 34;
                      v83 = 95;
LABEL_109:
                      oneword_ReplaceCharactersInOrthography(v80, v81, v82, v83, v193);
                    }
                  }

LABEL_110:
                  v97 = oneword_CountOrthographicWords(v66, v67, 0x23u, 0x23u);
                  log_OutText(v68, "FE_ONEWORD", 5, 0, "Number of orthographic words after adjustment: %d", v98, v99, v100, v97);
                  log_OutText(v68, "FE_ONEWORD", 5, 0, "Number of phonetic words after adjustment:     %d", v101, v102, v103, v69);
                  a6 = v167;
                  a5 = v171;
                  if (v63)
                  {
                    *v63 = 0;
                    v104 = v63 + 1;
                    if (a1[548])
                    {
                      v105 = v104;
                      v104 = a2 + 5000;
                      v59 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v105, v165, 0x1388u);
                      if ((v59 & 0x80000000) != 0)
                      {
                        return v59;
                      }
                    }

                    v106 = *(*(a1 + 7) + 160);
                    v107 = a9;
                    v108 = cstdlib_strlen(v104);
                    v59 = v106(v179, v173, v107, 11, (v108 + 1), v104, &v187);
                    v28 = a2 + 10000;
                    if ((v59 & 0x80000000) != 0)
                    {
                      return v59;
                    }
                  }

                  v109 = v28;
                  if (a1[548])
                  {
                    v109 = a2 + 5000;
                    v59 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v28, v165, 0x1388u);
                    if ((v59 & 0x80000000) != 0)
                    {
                      return v59;
                    }
                  }

                  v110 = *(*(a1 + 7) + 160);
                  v111 = a9;
                  v112 = cstdlib_strlen(v109);
                  v59 = v110(v179, v173, v111, 3, (v112 + 1), v109, &v187);
                  if ((v59 & 0x80000000) != 0)
                  {
                    return v59;
                  }

                  if (__s1)
                  {
                    v113 = cstdlib_strcmp(__s1, "");
                    v114 = *(*(a1 + 7) + 160);
                    v115 = a9;
                    if (v113)
                    {
                      v116 = (cstdlib_strlen(__s1) + 1);
                      v117 = v179;
                      v118 = v173;
                      v119 = v115;
                      v120 = __s1;
                    }

                    else
                    {
                      v117 = v179;
                      v118 = v173;
                      v119 = a9;
                      v116 = 2;
                      v120 = "*";
                    }

                    v59 = v114(v117, v118, v119, 5, v116, v120, &v187);
                    if ((v59 & 0x80000000) != 0)
                    {
                      return v59;
                    }
                  }

                  if (v176)
                  {
                    v121 = cstdlib_strcmp(v176, "");
                    v122 = *(*(a1 + 7) + 160);
                    v123 = a9;
                    if (v121)
                    {
                      v124 = (cstdlib_strlen(v176) + 1);
                      v125 = v179;
                      v126 = v173;
                      v127 = v123;
                      v128 = v176;
                    }

                    else
                    {
                      v125 = v179;
                      v126 = v173;
                      v127 = a9;
                      v124 = 2;
                      v128 = "*";
                    }

                    v59 = v122(v125, v126, v127, 6, v124, v128, &v187);
                    if ((v59 & 0x80000000) != 0)
                    {
                      return v59;
                    }
                  }

                  if (__s)
                  {
                    v129 = *(*(a1 + 7) + 160);
                    v130 = a9;
                    v131 = cstdlib_strlen(__s);
                    v59 = v129(v179, v173, v130, 4, (v131 + 1), __s, &v187);
                    if ((v59 & 0x80000000) != 0)
                    {
                      return v59;
                    }
                  }

                  if (v174)
                  {
                    v132 = cstdlib_atoi(v174);
                  }

                  else
                  {
                    v132 = 1;
                  }

                  v185 = v132;
                  if (v182)
                  {
                    __s1a = cstdlib_strstr(v167, v182);
                    v133 = *v182;
                    v134 = *(*(a1 + 7) + 160);
                    v135 = a9;
                    v136 = cstdlib_strlen(v182);
                    v24 = v134(v179, v173, v135, 9, (v136 + 1), v182, &v187);
                    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Language tag is %s", v137, v138, v139, v182);
                    v140 = *(a1 + 152);
                    if (v140)
                    {
                      v141 = cstdlib_strstr(v140, v167);
                    }

                    else
                    {
                      v141 = 0;
                    }

                    v142 = v133;
                    if (a1[301] && (__s1a && (!cstdlib_strlen(v182) || !__s1a[cstdlib_strlen(v182)]) || !LH_stricmp(v182, *(a1 + 151)) && v141 && v141[cstdlib_strlen(v167)] == 124))
                    {
                      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Increasing priority to %d", v143, v144, v145, ++v185);
                    }

                    a5 = v171;
                  }

                  else
                  {
                    v24 = (*(*(a1 + 7) + 160))(v179, v173, a9, 9, 1, "", &v187);
                    v142 = 0;
                  }

                  if ((v24 & 0x80000000) != 0)
                  {
                    return v24;
                  }

                  v59 = (*(*(a1 + 7) + 160))(v179, v173, a9, 7, 1, &v185, &v187);
                  if ((v59 & 0x80000000) != 0)
                  {
                    return v59;
                  }

                  v146 = *(*(a1 + 7) + 160);
                  v147 = a9;
                  v148 = cstdlib_strlen(v168);
                  v24 = v146(v179, v173, v147, 21, (v148 + 1), v168, &v187);
                  if ((v24 & 0x80000000) != 0)
                  {
                    return v24;
                  }

                  if (v190 != 1)
                  {
                    v28 = a2 + 10000;
                    v29 = v164;
                    goto LABEL_80;
                  }

                  v29 = v164;
                  if (v142)
                  {
                    a1[233] = v142 == 101;
                  }

                  goto LABEL_79;
                }

                v84 = v68;
                v85 = "No orthographic words found: returning";
              }

              else
              {
                v84 = v68;
                v85 = "No phonetic words found: returning";
              }

              log_OutText(v84, "FE_ONEWORD", 5, 0, v85, v77, v78, v79, v161);
              goto LABEL_110;
            }
          }

          else
          {
            v86 = cstdlib_strstr(a6, v182);
            v87 = v86;
            v28 = a2 + 10000;
            if (v162)
            {
              if (v181)
              {
                goto LABEL_156;
              }

              if ((!v86 || cstdlib_strlen(v182) && v87[cstdlib_strlen(v182)]) && LH_stricmp(v182, *(a1 + 151)))
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK", v88, v89, v90, v182);
                goto LABEL_80;
              }
            }

            else
            {
              if (v181)
              {
                goto LABEL_156;
              }

              if (!v86 || cstdlib_strlen(v182) && v87[cstdlib_strlen(v182)])
              {
                v155 = cstdlib_strstr(*(a1 + 152), a6);
                if (LH_stricmp(v182, *(a1 + 151)) || !v155 || v155[cstdlib_strlen(a6)] != 124)
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "User lang lookup: G2P Language %s validation not OK", v156, v157, v158, v182);
                  goto LABEL_80;
                }
              }
            }

LABEL_63:
            v56 = a5;
          }

          v57 = v169;
          goto LABEL_65;
        }

        v49 = *(*a1 + 32);
        v50 = "MDE validation not OK";
LABEL_78:
        log_OutText(v49, "FE_ONEWORD", 5, 0, v50, v43, v44, v45, v160);
LABEL_79:
        v28 = a2 + 10000;
LABEL_80:
        if (++v27 >= v190)
        {
          goto LABEL_173;
        }
      }
    }

    v170 = 0;
LABEL_173:
    a1[69] = v170;
  }

  return v24;
}

uint64_t oneword_isInputBetweenPOIMrk(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2;
  for (i = (a1 + 12); ; i += 16)
  {
    if (*(i - 3) == 55 && cstdlib_strstr(*(i + 6), "POI"))
    {
      v6 = *i;
LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      if (*(i - 3) != 56 || !cstdlib_strstr(*(i + 6), "POI"))
      {
        goto LABEL_12;
      }

      if (v6 <= a3 && *i >= a4)
      {
        break;
      }
    }

    v7 = 0;
LABEL_13:
    if (!--v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t oneword_DeleteDctAndMdeTokenRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  for (result = (*(*(a1 + 56) + 136))(a2, a3, a4, &v8); (result & 0x80000000) == 0; result = (*(*(a1 + 56) + 120))(a2, a3))
  {
    if (!v8)
    {
      break;
    }

    result = (*(*(a1 + 56) + 168))(a2, a3);
    if ((result & 0x80000000) != 0)
    {
      break;
    }
  }

  return result;
}

uint64_t oneword_ProcessNTokens(uint64_t a1, char *a2, const char **a3, char *a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, uint64_t a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13, int a14, int a15)
{
  v360 = *MEMORY[0x277D85DE8];
  v355 = a7;
  v354 = 0;
  v346 = 1;
  v345 = 32;
  v344 = 0;
  v22 = heap_Calloc(*(*a1 + 8), 1, 2248);
  if (!v22)
  {
    DepesLayersForWordAndPOS = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v23, v24, v25, v26, v298);
    return DepesLayersForWordAndPOS;
  }

  v27 = v22;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v348 = 0;
  __src = 0;
  v347 = 0;
  v343 = 0;
  v342 = 0;
  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__s, "acronym_detection");
  v336 = v27;
  v333 = a2;
  v334 = cstdlib_strlen(__s);
  if (*(a1 + 560) == 1)
  {
    v28 = cstdlib_strchr(a4, 95);
    if (v28)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = a4;
    }

    v30 = *v29;
  }

  else
  {
    v29 = 0;
    v30 = 32;
  }

  memset(v358, 0, 256);
  appended = (*(*(a1 + 56) + 168))(a5, a6, v355, 1, 1, &v350 + 2, &v352 + 2);
  if ((appended & 0x80000000) != 0)
  {
    goto LABEL_462;
  }

  HIWORD(v351) = HIWORD(v350);
  v33 = v355;
  if (v355)
  {
    do
    {
      v354 = v33;
      appended = (*(*(a1 + 56) + 136))(a5, a6, v33, &v355);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_462;
      }

      if (!v355)
      {
        break;
      }

      appended = (*(*(a1 + 56) + 168))(a5, a6);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_462;
      }

      v33 = v355;
    }

    while (HIWORD(v351) == HIWORD(v350) && v355 != 0);
  }

  v331 = a3;
  v355 = v354;
  cstdlib_strcpy(*(a1 + 240), "");
  cstdlib_strcpy(*(a1 + 248), "");
  cstdlib_strcpy(*(a1 + 256), "");
  cstdlib_strcpy(*(a1 + 264), "");
  appended = (*(*(a1 + 56) + 168))(a5, a6, a8, 2, 1, &v350, &v352 + 2);
  if ((appended & 0x80000000) != 0)
  {
    goto LABEL_462;
  }

  v328 = (a1 + 240);
  v35 = (v350 - HIWORD(v350));
  v36 = (v35 + 200);
  v329 = (a1 + 192);
  if (v36 > *(a1 + 192))
  {
    v37 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (v35 + 200));
    if (!v37)
    {
      goto LABEL_401;
    }

    *(a1 + 160) = v37;
    *(a1 + 192) = v36;
  }

  v42 = (a1 + 200);
  if (v36 > *(a1 + 200))
  {
    v43 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v35 + 200));
    if (!v43)
    {
      goto LABEL_401;
    }

    *(a1 + 168) = v43;
    *(a1 + 200) = v36;
  }

  v326 = (a1 + 208);
  if (v36 > *(a1 + 208))
  {
    v44 = heap_Realloc(*(*a1 + 8), *(a1 + 176), (v35 + 200));
    if (!v44)
    {
      goto LABEL_401;
    }

    *(a1 + 176) = v44;
    *(a1 + 208) = v36;
  }

  v327 = (a1 + 160);
  cstdlib_strcpy(*(a1 + 160), "");
  v354 = v355;
  v45 = HIWORD(v350);
  v46 = v350;
  __s1 = a4;
  v309 = v29;
  if (HIWORD(v350) >= v350)
  {
    v50 = 0;
    v49 = 0;
    v47 = v331;
  }

  else
  {
    v47 = v331;
    v48 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*v331)[*(a1 + 224) + HIWORD(v350)]);
    v45 = HIWORD(v350);
    v49 = 0;
    if (v48)
    {
      while (1)
      {
        v50 = utf8_determineUTF8CharLength((*v331)[*(a1 + 224) + (v49 + v45)]) + v49;
        v45 = HIWORD(v350);
        v49 = v50;
        v51 = HIWORD(v350) + v50;
        v46 = v350;
        if (v51 >= v350)
        {
          break;
        }

        v52 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*v331)[*(a1 + 224) + v51]);
        v45 = HIWORD(v350);
        if (!v52)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v50 = 0;
LABEL_36:
      v46 = v350;
    }
  }

  v53 = v45 + v50;
  HIWORD(v350) = v53;
  v54 = v46;
  if (v46 > v53)
  {
    while ((*v47)[*(a1 + 224) - 1 + v46] < -64)
    {
      v54 = --v46;
      if (v46 <= v53)
      {
        goto LABEL_42;
      }
    }

    v54 = v46;
  }

LABEL_42:
  v319 = v30;
  v310 = (a1 + 256);
  if (v54 > v53)
  {
    v55 = v46;
    do
    {
      v56 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*v47)[v55 - 1 + *(a1 + 224)]);
      v53 = HIWORD(v350);
      if (!v56)
      {
        break;
      }

      LOWORD(v350) = --v55;
      v57 = v55;
      if (v55 > HIWORD(v350))
      {
        while ((*v47)[*(a1 + 224) - 1 + v55] < -64)
        {
          v57 = --v55;
          if (v55 <= HIWORD(v350))
          {
            goto LABEL_50;
          }
        }

        v57 = v55;
      }

LABEL_50:
      ;
    }

    while (v57 > HIWORD(v350));
  }

  v332 = a8;
  v58 = 0;
  v323 = 0;
  v314 = v35 + 100;
  v312 = (a1 + 176);
  v313 = (a1 + 168);
  v320 = 1;
  v59 = 1;
  v60 = 1;
LABEL_52:
  v61 = v354;
  if (v354 == v332)
  {
    goto LABEL_126;
  }

  v62 = v60 == 0;
  while (1)
  {
    appended = (*(*(a1 + 56) + 168))(a5, a6, v61, 0, 1, &v353, &v352 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    if (!v353)
    {
      if (v62)
      {
        appended = (*(*(a1 + 56) + 168))(a5, a6, v354, 1, 1, &v351 + 2, &v352 + 2);
        if ((appended & 0x80000000) == 0)
        {
          DepesLayersForWordAndPOS = 2310021130;
          v65 = HIWORD(v351) - v53;
          if ((v65 < 1 || dynamic_strncat(v327, &(*v331)[v53 + *(a1 + 224)], v65, v329, *(*a1 + 8))) && (!*(a1 + 292) || dynamic_strcat(v327, "+", v329, *(*a1 + 8))))
          {
            v60 = 0;
            v53 = HIWORD(v351);
            goto LABEL_121;
          }

          goto LABEL_463;
        }

        goto LABEL_462;
      }

      v60 = 0;
      goto LABEL_121;
    }

    if (*(a1 + 276))
    {
      goto LABEL_120;
    }

    if (v353 != 8 && v353 != 4)
    {
      goto LABEL_120;
    }

    appended = (*(*(a1 + 56) + 168))(a5, a6, v354, 1, 1, &v351 + 2, &v352 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    appended = (*(*(a1 + 56) + 168))(a5, a6, v354, 2, 1, &v351, &v352 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    appended = (*(*(a1 + 56) + 168))(a5, a6, v354, 7, 1, &v346, &v352 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    if (a15 && !*(a1 + 2068))
    {
      v346 = ~v346;
    }

    if (v351 != v53)
    {
      break;
    }

    if (!v58 || *(a1 + 2192))
    {
      goto LABEL_120;
    }

    if (v346 >= v59)
    {
      if (!a14 || a14 == 1 && (cstdlib_strstr(__s1, "latin") || !*(a1 + 2068)))
      {
        appended = (*(*(a1 + 56) + 192))(a5, a6, v358[v58 - 1]);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_462;
        }
      }

      v72 = v358[v58 - 1];
      v73 = v354;
      if (v355 == v72)
      {
        v355 = v354;
      }

      if (*(a1 + 280) == v72)
      {
        *(a1 + 280) = v354;
      }

      v358[v58 - 1] = v73;
      if (a15 && !*(a1 + 2068))
      {
        v59 = v346;
      }

LABEL_120:
      v60 = 1;
LABEL_121:
      DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, v354, &v354);
      if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
      {
        goto LABEL_463;
      }

      goto LABEL_52;
    }

    v64 = v354;
    appended = (*(*(a1 + 56) + 120))(a5, a6, v354, &v354);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    if (!a14 || a14 == 1 && (cstdlib_strstr(__s1, "latin") || !*(a1 + 2068)))
    {
      appended = (*(*(a1 + 56) + 192))(a5, a6, v64);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_462;
      }
    }

    if (a15 && !*(a1 + 2068))
    {
      v346 = v59;
    }

    v62 = 0;
    v61 = v354;
    if (v354 == v332)
    {
      v60 = 1;
LABEL_126:
      v77 = (*(*(a1 + 56) + 168))(a5, a6, v332, 0, 1, &v353, &v352 + 2);
      v78 = v319;
      if ((v77 & 0x80000000) == 0)
      {
        if (!(v353 | v60))
        {
          v77 = (*(*(a1 + 56) + 168))(a5, a6, v354, 1, 1, &v351 + 2, &v352 + 2);
          if ((v77 & 0x80000000) != 0)
          {
            goto LABEL_147;
          }

          DepesLayersForWordAndPOS = 2310021130;
          v91 = HIWORD(v351) - v53;
          if (v91 >= 1 && !dynamic_strncat(v327, &(*v331)[v53 + *(a1 + 224)], v91, v329, *(*a1 + 8)) || *(a1 + 292) && !dynamic_strcat(v327, "+", v329, *(*a1 + 8)))
          {
            goto LABEL_463;
          }

          v53 = HIWORD(v351);
          v78 = v319;
        }

        v79 = v350 - v53;
        if (v79 >= 1 && !dynamic_strncat(v327, &(*v331)[v53 + *(a1 + 224)], v79, v329, *(*a1 + 8)))
        {
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_463;
        }

        if (!a13)
        {
          if (cstdlib_strlen(*v327) - 128 >= 0xFFFFFFFFFFFFFF7FLL)
          {
            v90 = v77;
            v95 = *(a1 + 232);
          }

          else
          {
            v92 = *(*a1 + 8);
            v93 = *(a1 + 232);
            v94 = cstdlib_strlen(*(a1 + 160));
            v95 = heap_Realloc(v92, v93, (v94 + 1));
            if (!v95)
            {
              goto LABEL_401;
            }

            v90 = v77;
            *(a1 + 232) = v95;
            v78 = v319;
          }

          cstdlib_strcpy(v95, *v327);
          LOWORD(v315) = 0;
          LODWORD(v97) = cstdlib_strlen(*v327) + 1;
LABEL_156:
          if (!v97)
          {
            v295 = 0;
            v311 = 0;
            v296 = 0;
            v294 = 1;
            DepesLayersForWordAndPOS = v90;
LABEL_404:
            if (v345 == 32)
            {
              v275 = 0;
            }

            else
            {
              v275 = v345;
            }

            *(a1 + 272) = 0;
            *(a1 + 276) = 0;
            if (*(a1 + 2172) == 1 && (*(a1 + 2068) == 1 || !v311))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s", __s1, v275, v96, "skipping crosstoken grammar");
              goto LABEL_463;
            }

            if (v294)
            {
              appended = oneword_crosstoken(*a1, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), __s1, v275, v78, v309, __dst, *(a1 + 2176), v327, v313, v312, (a1 + 184), v329, v42, v326, (a1 + 216), v328, (a1 + 248), v310, (a1 + 264));
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = (*(*(a1 + 56) + 88))(a5, a6, v355, &v354);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            else
            {
              *(*(a1 + 248) + 1) = 0;
              *(*v310 + 1) = 0;
            }

            appended = (*(*(a1 + 56) + 168))(a5, a6, v355, 0, 1, &v353, &v352 + 2);
            if ((appended & 0x80000000) == 0)
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6, v355, 1, 1, &v351 + 2, &v352 + 2);
              if ((appended & 0x80000000) == 0)
              {
                if (v353 != 4 && v296)
                {
                  HIWORD(v351) = HIWORD(v351) - v295 + *(a1 + 224);
                }

                appended = (*(*(a1 + 56) + 160))(a5, a6, v354, 1, 1, &v351 + 2, &v352);
                if ((appended & 0x80000000) == 0)
                {
                  v353 = 9;
                  appended = (*(*(a1 + 56) + 160))(a5, a6, v354, 0, 1, &v353, &v352);
                  if ((appended & 0x80000000) == 0)
                  {
                    appended = (*(*(a1 + 56) + 168))(a5, a6, v332, 2, 1, &v351, &v352 + 2);
                    if ((appended & 0x80000000) == 0)
                    {
                      v277 = v351;
                      if (v296)
                      {
                        v277 = v351 - v295 + *(a1 + 224);
                      }

                      LOWORD(v351) = v277 + v295;
                      appended = (*(*(a1 + 56) + 160))(a5, a6, v354, 2, 1, &v351, &v352);
                      if ((appended & 0x80000000) == 0)
                      {
                        v278 = *(*(a1 + 56) + 160);
                        v279 = v354;
                        v280 = cstdlib_strlen(*(a1 + 240));
                        appended = v278(a5, a6, v279, 3, (v280 + 1), *(a1 + 240), &v352);
                        if ((appended & 0x80000000) == 0)
                        {
                          v281 = *(*(a1 + 56) + 160);
                          v282 = v354;
                          v283 = cstdlib_strlen(*(a1 + 248));
                          appended = v281(a5, a6, v282, 5, (v283 + 1), *(a1 + 248), &v352);
                          if ((appended & 0x80000000) == 0)
                          {
                            v284 = *(*(a1 + 56) + 160);
                            v285 = v354;
                            v286 = cstdlib_strlen(*(a1 + 256));
                            appended = v284(a5, a6, v285, 6, (v286 + 1), *(a1 + 256), &v352);
                            if ((appended & 0x80000000) == 0)
                            {
                              if (a15 && !*(a1 + 2068) && v346 >= 2u)
                              {
                                v346 = ~v346;
                              }

                              appended = (*(*(a1 + 56) + 160))(a5, a6, v354, 7, 1, &v346, &v352);
                              if ((appended & 0x80000000) == 0)
                              {
                                if (*(a1 + 1204) && !cstdlib_strcmp(__dst, "normal"))
                                {
                                  cstdlib_strcpy(__dst, *(a1 + 1208));
                                  for (i = 0; i != 3; ++i)
                                  {
                                    __dst[i] = ssft_tolower(__dst[i]);
                                  }
                                }

                                v288 = *(*(a1 + 56) + 160);
                                v289 = v354;
                                v290 = cstdlib_strlen(__dst);
                                DepesLayersForWordAndPOS = v288(a5, a6, v289, 9, (v290 + 1), __dst, &v352);
                                if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                {
                                  goto LABEL_463;
                                }

                                if (v311)
                                {
                                  v291 = v358;
                                  do
                                  {
                                    v293 = *v291++;
                                    v292 = v293;
                                    if (*(a1 + 280) == v293)
                                    {
                                      DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6);
                                      if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                      {
                                        goto LABEL_463;
                                      }
                                    }

                                    if (!a14 || a14 == 1 && (cstdlib_strstr(__s1, "latin") || !*(a1 + 2068)))
                                    {
                                      DepesLayersForWordAndPOS = (*(*(a1 + 56) + 192))(a5, a6, v292);
                                      if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                      {
                                        goto LABEL_463;
                                      }
                                    }
                                  }

                                  while (--v311);
                                }

                                if (HIWORD(v351) != v351 || a14 && (a14 != 1 || !cstdlib_strstr(__s1, "latin") && *(a1 + 2068)))
                                {
                                  goto LABEL_463;
                                }

                                appended = (*(*(a1 + 56) + 192))(a5, a6, v354);
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

LABEL_462:
            DepesLayersForWordAndPOS = appended;
            goto LABEL_463;
          }

          v311 = 0;
          v98 = 0;
          v305 = 0;
          v306 = v97 - 2;
          v307 = v97;
          v308 = 0;
          v299 = 0;
          v335 = v97;
          while (1)
          {
            v324 = v98;
            v99 = (*(a1 + 232) + v98);
            v100 = cstdlib_strlen("↕");
            if (cstdlib_strncmp(v99, "↕", v100) || !cstdlib_strcmp(__s1, "prompt") || !cstdlib_strcmp(__s1, "internal-nuance-system-norm"))
            {
              break;
            }

            v111 = cstdlib_strlen("↕");
            v112 = v98 + v111;
            if ((v98 + v111) < v97)
            {
              v113 = (v98 + v111);
              while (1)
              {
                v114 = *(a1 + 232);
                v115 = cstdlib_strlen("↕");
                if (!cstdlib_strncmp((v114 + v113), "↕", v115))
                {
                  break;
                }

                if (v307 == ++v113)
                {
                  v112 = v335;
                  goto LABEL_224;
                }
              }

              v112 = v113;
            }

LABEL_224:
            v154 = *(a1 + 232);
            v322 = v112;
            v300 = *(v154 + v112);
            *(v154 + v112) = 0;
            v302 = v112;
            v304 = *(*(a1 + 80) + 104);
            v155 = *(a1 + 232);
            v156 = v324 + cstdlib_strlen("↕");
            v157 = *(a1 + 232);
            v158 = cstdlib_strlen("↕");
            v159 = cstdlib_strlen((v157 + v324 + v158));
            appended = v304(*(a1 + 64), *(a1 + 72), __s1, v155 + v156, (v159 + 1));
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v160 = *(a1 + 160);
            v161 = *(a1 + 232);
            v162 = cstdlib_strlen("↕");
            cstdlib_strcpy(v160, (v161 + v324 + v162));
            cstdlib_strcpy(__s, "spell_acronym");
            v163 = cstdlib_strlen(__s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v164, v165, v166, __s);
            v167 = *(*(a1 + 104) + 120);
            v168 = *(a1 + 160);
            v169 = cstdlib_strlen(v168);
            appended = v167(*(a1 + 88), *(a1 + 96), 0, v168, v169);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v163 + 2 <= 0x7F)
            {
              cstdlib_strcat(__s, "_");
              cstdlib_strcat(__s, __s1);
            }

            if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
            {
              __s[v163] = 0;
              appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v347);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            __src[v347] = 0;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v170, v171, v172, __s);
            v173 = cstdlib_strlen(__src);
            v174 = cstdlib_strlen(*(a1 + 160));
            *(*(a1 + 232) + v302) = v300;
            v175 = (v315 + v173 - v174);
            v325 = v175;
            if (v175 <= 0)
            {
              v180 = v175 + 1;
              v182 = (a1 + 160);
              v183 = v331;
            }

            else
            {
              v176 = *(*a1 + 8);
              v177 = v175;
              v178 = *v331;
              v179 = cstdlib_strlen(*v331);
              v180 = v177 + 1;
              v181 = heap_Realloc(v176, v178, (v180 + v179));
              if (!v181)
              {
                goto LABEL_401;
              }

              *v331 = v181;
              v182 = (a1 + 160);
              v183 = v331;
            }

            v184 = cstdlib_strlen(__src);
            v185 = (HIWORD(v350) + *(a1 + 224) + v184);
            if (v185 > (v180 + cstdlib_strlen(*v183)))
            {
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0, v186, v187, v188, v189, v298);
              DepesLayersForWordAndPOS = 2310021127;
              goto LABEL_463;
            }

            v190 = HIWORD(v350);
            v191 = cstdlib_strlen(*v182);
            LOWORD(v350) = v190 - v315 + v191;
            if (v325 < 1)
            {
              if (v325 < 0)
              {
                for (j = *(a1 + 224) + v190 - v315 + v191; j <= cstdlib_strlen(*v183); ++j)
                {
                  (*v183)[j + v325] = (*v183)[j];
                }
              }
            }

            else
            {
              v192 = cstdlib_strlen(*v183);
              if (*(a1 + 224) + v350 <= v192)
              {
                v193 = v192;
                do
                {
                  (*v183)[v193 + v325] = (*v183)[v192--];
                  v193 = v192;
                }

                while (*(a1 + 224) + v350 <= v192);
              }
            }

            v194 = &(*v183)[HIWORD(v350)];
            v195 = *(a1 + 224);
            v196 = v183;
            v197 = __src;
            v198 = cstdlib_strlen(__src);
            cstdlib_memcpy(&v194[v195], v197, v198);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Normalizing to: %s", v199, v200, v201, *v196);
            v202 = cstdlib_strlen(*(a1 + 160));
            HIWORD(v350) += v202;
            v203 = *a10;
            if (v203 < *a11)
            {
              v204 = v350;
              v205 = (a9 + 12 + 32 * v203);
              do
              {
                if (v204 <= (*v205 - a12))
                {
                  break;
                }

                *v205 += *(a1 + 224);
                v205 += 8;
                *a10 = ++v203;
              }

              while (v203 < *a11);
            }

            LOWORD(v341) = 0;
            LOWORD(v340) = 0;
            LOWORD(v339) = 0;
            LOWORD(v338) = 0;
            v206 = v325;
            if (*(a1 + 2272) == 1)
            {
              appended = hlp_RemoveMNCRecords(a1, a5, a6, v331, v355, v332, v325);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            appended = (*(*(a1 + 56) + 104))(a5, a6, 1, 0, &v338);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            appended = (*(*(a1 + 56) + 104))(a5, a6, 2, v338, &v339);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            while (v339 != *(a1 + 280))
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6);
              if ((appended & 0x80000000) == 0)
              {
                if (v340 - *(a1 + 224) >= v350)
                {
                  LOWORD(v340) = v340 + v325;
                }

                appended = (*(*(a1 + 56) + 160))(a5, a6, v339, 2, 1, &v340, &v352);
                if ((appended & 0x80000000) == 0)
                {
                  appended = (*(*(a1 + 56) + 120))(a5, a6, v339, &v339);
                  if ((appended & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_462;
            }

            if (v339)
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6, v339, 1, 1, &v341, &v352 + 2);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            while (v341 < v350 && *(a1 + 280))
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6);
              if ((appended & 0x80000000) == 0)
              {
                v218 = (v353 & 0xFFFFFFFC) != 4 && (v353 - 9) > 1;
                if (v218 || (appended = (*(*(a1 + 56) + 168))(a5, a6, *(a1 + 280), 2, 1, &v340, &v352 + 2), (appended & 0x80000000) == 0) && ((v219 = *(a1 + 224), LOWORD(v341) = v219 + v341, v340 >= v350) ? (v220 = v206) : (v220 = 0), (LOWORD(v340) = v340 + v219 + v220, appended = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 1, 1, &v341, &v352), (appended & 0x80000000) == 0) && (appended = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 2, 1, &v340, &v352), (appended & 0x80000000) == 0)))
                {
                  appended = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
                  if ((appended & 0x80000000) == 0)
                  {
                    if (!*(a1 + 280))
                    {
                      continue;
                    }

                    appended = (*(*(a1 + 56) + 168))(a5, a6);
                    if ((appended & 0x80000000) == 0)
                    {
                      if (v341 < v350)
                      {
                        continue;
                      }

                      while (*(a1 + 280))
                      {
                        appended = (*(*(a1 + 56) + 168))(a5, a6);
                        if ((appended & 0x80000000) != 0)
                        {
                          goto LABEL_462;
                        }

                        if (v353 != 17)
                        {
                          break;
                        }

                        DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
                        if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                        {
                          goto LABEL_463;
                        }
                      }

                      appended = (*(*(a1 + 56) + 168))(a5, a6);
                      v206 = v325;
                      if ((appended & 0x80000000) == 0)
                      {
                        continue;
                      }
                    }
                  }
                }
              }

              goto LABEL_462;
            }

            *(a1 + 224) += v206;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD SPELLACRONYM %s", v207, v208, v209, *(a1 + 232));
            DepesLayersForWordAndPOS = oneword_TranscribeAcronym(a1, __s1, __src, &v345, __dst);
            if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
            {
              goto LABEL_463;
            }

            WORD2(v299) += v206;
            LODWORD(v299) = 1;
            v78 = v319;
            LOWORD(v97) = v335;
            v98 = v322;
LABEL_398:
            v98 += utf8_determineUTF8CharLength(*(*(a1 + 232) + v98));
            if (v98 >= v97)
            {
              v294 = v305 == 0;
              v295 = WORD2(v299);
              v296 = v299 != 0;
              goto LABEL_404;
            }
          }

          v321 = v98;
          if (*(a1 + 2192) && *(a1 + 2248))
          {
            goto LABEL_165;
          }

          v101 = *(a1 + 232);
          v102 = cstdlib_strlen("§");
          if (!cstdlib_strncmp((v101 + v98), "§", v102) || (v103 = *(a1 + 232), v104 = cstdlib_strlen("↕"), !cstdlib_strncmp((v103 + v98), "↕", v104)) && (!cstdlib_strcmp(__s1, "prompt") || !cstdlib_strcmp(__s1, "internal-nuance-system-norm")))
          {
            v340 = 0;
            v341 = 0;
            v120 = *(a1 + 232);
            v121 = cstdlib_strlen("§");
            if (cstdlib_strncmp((v120 + v98), "§", v121))
            {
              v122 = "↕";
            }

            else
            {
              v122 = "§";
            }

            v316 = cstdlib_strlen(v122);
            v128 = v98;
            v129 = v335;
            while (1)
            {
              v130 = v128++;
              if (v128 >= v129)
              {
                break;
              }

              v131 = v128;
              v132 = (*(a1 + 232) + v128);
              v133 = cstdlib_strlen("§");
              if (cstdlib_strncmp(v132, "§", v133))
              {
                v134 = *(a1 + 232);
                v135 = cstdlib_strlen("↕");
                v136 = (v134 + v128);
                v129 = v335;
                if (cstdlib_strncmp(v136, "↕", v135))
                {
                  continue;
                }
              }

              goto LABEL_203;
            }

            v131 = v128;
LABEL_203:
            v147 = *(a1 + 232);
            v148 = *(v147 + v131);
            *(v147 + v131) = 0;
            v303 = v131;
            v301 = v148;
            if (*(a1 + 2004))
            {
              v149 = *a11;
              if (v149 >= 2)
              {
                v150 = v149 - 1;
                v151 = (a9 + 56);
                while (*(v151 - 6) != 58 || *(v151 - 3) + v49 - *(a9 + 12) != HIWORD(v350))
                {
                  v151 += 4;
                  if (!--v150)
                  {
                    goto LABEL_303;
                  }
                }

                v308 = *v151;
              }

LABEL_303:
              DepesLayersForWordAndPOS = getDepesLayersForWordAndPOS(a1, __s1, (*(a1 + 232) + v324 + v316), v308);
              v152 = (*(a1 + 232) + v324 + v316);
            }

            else
            {
              DepesLayersForWordAndPOS = mde_stemafx_Main(a1, __s1, (*(a1 + 232) + v324 + v316), v123, v124, v125, v126, v127);
              v152 = *(a1 + 160);
            }

            v221 = cstdlib_strlen(v152);
            HIWORD(v350) += v221;
            if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
            {
              goto LABEL_463;
            }

            cstdlib_strcpy(__s, "one_word");
            v318 = cstdlib_strlen(__s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v222, v223, v224, __s);
            v225 = *(*(a1 + 104) + 120);
            v226 = *(a1 + 160);
            v227 = cstdlib_strlen(v226);
            appended = v225(*(a1 + 88), *(a1 + 96), 0, v226, v227);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v228, v229, v230, __s);
            v231 = *(*(a1 + 104) + 120);
            v232 = *(a1 + 168);
            v233 = cstdlib_strlen(v232);
            appended = v231(*(a1 + 88), *(a1 + 96), 2, v232, v233);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v234, v235, v236, __s);
            v237 = *(*(a1 + 104) + 120);
            v238 = *(a1 + 176);
            v239 = cstdlib_strlen(v238);
            appended = v237(*(a1 + 88), *(a1 + 96), 3, v238, v239);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v240 = __s1;
            if (cstdlib_strcmp(__s1, "normal") && (ssftmap_Find(*(a1 + 568), __s1, &v340) & 0x80000000) == 0)
            {
              if (!v321 && v306 == v128)
              {
                appended = (*(*(a1 + 56) + 88))(a5, a6, v355, &v354);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                appended = dt_Main(a1, v354, a5, a6, *(v340 + 16), __s1);
                DepesLayersForWordAndPOS = (appended & 0x1FFF) == 0x10A ? 0 : appended;
                v78 = v319;
                if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                v305 = 1;
LABEL_323:
                v242 = *(a1 + 232);
                v243 = cstdlib_strlen("§");
                if (!cstdlib_strncmp((v242 + v324), "§", v243))
                {
                  oneword_ReplaceUnderscoreWithDot(*v328);
                  DepesLayersForWordAndPOS = 0;
                }

                LOWORD(v97) = v335;
                if (*(a1 + 560))
                {
                  v244 = v309;
                  if (v309)
                  {
                    v345 = v78;
                    goto LABEL_350;
                  }
                }

                else
                {
                  v244 = __s1;
                  v345 = *__s1;
LABEL_350:
                  cstdlib_strncpy(__dst, v244, 0x14uLL);
                }

LABEL_364:
                v128 = v130 + 2;
LABEL_397:
                LOWORD(v315) = 0;
                v98 = v128;
                goto LABEL_398;
              }

              v241 = dt_Main(a1, 0, a5, a6, *(v340 + 16), __s1);
              if ((v241 & 0x1FFF) == 0x10A)
              {
                DepesLayersForWordAndPOS = 0;
LABEL_322:
                v78 = v319;
                goto LABEL_323;
              }

              v240 = __s1;
              if ((v241 & 0x80000000) == 0)
              {
                DepesLayersForWordAndPOS = v241;
                goto LABEL_322;
              }
            }

            if (cstdlib_strcmp(v240, "normal"))
            {
              if (cstdlib_strlen(v240) + v318 + 2 <= 0x7F)
              {
                cstdlib_strcat(__s, "_");
                cstdlib_strcat(__s, v240);
                if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) == 0)
                {
                  if (*(a1 + 560))
                  {
                    if (v309)
                    {
                      v345 = v319;
                      cstdlib_strncpy(__dst, v309, 0x14uLL);
                    }
                  }

                  else
                  {
                    v345 = *__s1;
                    cstdlib_strncpy(__dst, __s1, 0x14uLL);
                  }

                  goto LABEL_368;
                }
              }
            }

            LODWORD(v339) = 0;
            if (*(a1 + 928))
            {
              if (cstdlib_strlen(__s1) >= 2 && !cstdlib_strchr(__s1, 95))
              {
                appended = oneword_Lid(a1, &v339);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }
              }

              if (v339)
              {
                __s[v318] = 0;
                goto LABEL_366;
              }
            }

            if ((ssftmap_Find(*(a1 + 568), "normal", &v340) & 0x80000000) == 0)
            {
              if (!v321 && v306 == v128)
              {
                appended = (*(*(a1 + 56) + 88))(a5, a6, v355, &v354);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                appended = dt_Main(a1, v354, a5, a6, *(v340 + 16), __s1);
                DepesLayersForWordAndPOS = (appended & 0x1FFF) == 0x10A ? 0 : appended;
                v78 = v319;
                if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                v305 = 1;
                goto LABEL_361;
              }

              v245 = dt_Main(a1, 0, a5, a6, *(v340 + 16), __s1);
              if ((v245 & 0x1FFF) == 0x10A)
              {
                DepesLayersForWordAndPOS = 0;
LABEL_360:
                v78 = v319;
LABEL_361:
                v247 = *(a1 + 232);
                v248 = cstdlib_strlen("§");
                if (!cstdlib_strncmp((v247 + v324), "§", v248))
                {
                  oneword_ReplaceUnderscoreWithDot(*v328);
                  DepesLayersForWordAndPOS = 0;
                }

                LOWORD(v97) = v335;
                goto LABEL_364;
              }

              if ((v245 & 0x80000000) == 0)
              {
                DepesLayersForWordAndPOS = v245;
                goto LABEL_360;
              }
            }

            v249 = v339;
            __s[v318] = 0;
            if (v249)
            {
LABEL_366:
              cstdlib_strcat(__s, "_e");
              v345 = 101;
              cstdlib_strcpy(__dst, "e");
            }

            appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

LABEL_368:
            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v347);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            __src[v347] = 0;
            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v348, &v347);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            *(v348 + v347) = 0;
            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 4, &v341, &v347);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v341[v347] = 0;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v250, v251, v252, __s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O3: %s", v253, v254, v255, __s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O5: %s", v256, v257, v258, __s);
            if (cstdlib_strlen(__src))
            {
              v262 = 0;
              do
              {
                v263 = &__src[v262];
                if (*v263 == 126)
                {
                  v264 = cstdlib_strlen(v263 + 1);
                  cstdlib_memmove(v263, v263 + 1, (v264 + 1));
                  --v262;
                }

                else
                {
                  v265 = cstdlib_strlen("¡");
                  if (!cstdlib_strncmp(v263, "¡", v265))
                  {
                    v266 = &__src[v262];
                    v267 = cstdlib_strlen(v266 + 2);
                    cstdlib_memmove(v266 + 1, v266 + 2, v267 + 1);
                    __src[v262] = 126;
                  }
                }

                ++v262;
              }

              while (cstdlib_strlen(__src) > v262);
            }

            v268 = 0;
            *(*(a1 + 232) + v303) = v301;
            v97 = v348;
            while (1)
            {
              v269 = v268;
              v270 = *(v348 + v268);
              if (v270 != 32 && v270 != 126)
              {
                break;
              }

              ++v268;
            }

            if (*(v348 + v268))
            {
              while (v270 != 32 && v270 != 126)
              {
                LOBYTE(v270) = *(v348 + ++v268);
              }

              *(v348 + v268) = 0;
              v97 = v348;
            }

            v271 = 0;
            v272 = v341;
            while (1)
            {
              v273 = v271;
              v274 = v341[v271];
              if (v274 != 32 && v274 != 126)
              {
                break;
              }

              ++v271;
            }

            if (v341[v271])
            {
              while (v274 != 32 && v274 != 126)
              {
                LOBYTE(v274) = v341[++v271];
              }

              v341[v271] = 0;
              v272 = v341;
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD ONEWORDGRAMMAR %s", v259, v260, v261, *(a1 + 232));
            appended = oneword_AppendPhon(a1, __src, (v97 + v269), &v272[v273], v345, 1);
            DepesLayersForWordAndPOS = 0;
            v78 = v319;
            LOWORD(v97) = v335;
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            goto LABEL_397;
          }

          if (*(a1 + 2192) && *(a1 + 2248))
          {
LABEL_165:
            v105 = *(a1 + 232);
            v106 = cstdlib_strlen("§");
            if (!cstdlib_strncmp((v105 + v98), "§", v106) || (v107 = *(a1 + 232), v108 = cstdlib_strlen("↕"), !cstdlib_strncmp((v107 + v98), "↕", v108)) && (!cstdlib_strcmp(__s1, "prompt") || !cstdlib_strcmp(__s1, "internal-nuance-system-norm")))
            {
              v137 = *(a1 + 232);
              v138 = cstdlib_strlen("§");
              if (cstdlib_strncmp((v137 + v98), "§", v138))
              {
                v139 = "↕";
              }

              else
              {
                v139 = "§";
              }

              v317 = cstdlib_strlen(v139);
              while (++v98 < v335)
              {
                v140 = v98;
                v141 = v98;
                v142 = (*(a1 + 232) + v98);
                v143 = cstdlib_strlen("§");
                if (cstdlib_strncmp(v142, "§", v143))
                {
                  v144 = *(a1 + 232);
                  v145 = cstdlib_strlen("↕");
                  v146 = cstdlib_strncmp((v144 + v140), "↕", v145);
                  v98 = v141;
                  if (v146)
                  {
                    continue;
                  }
                }

                goto LABEL_212;
              }

              v140 = v98;
LABEL_212:
              *(*(a1 + 232) + v140) = 0;
              cstdlib_strncpy(v356, (*(a1 + 232) + v324 + v317), 0x7FuLL);
              v356[128] = 0;
              appended = (*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), "normal", v356, 128);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), v336);
              v78 = v319;
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_WordAnalysis(*(a1 + 48), v336, v356, 0, 1, 1, &v344, &v342);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_SkipToFirstOptimalReading(*(a1 + 48), v336);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_GetReading(*(a1 + 48), v336, 0, &v344, v333 + 15000, 5000, v333 + 5000, 5000, &v343);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_SubstAllSubstrOcc(v333 + 5000, "~", "¡", v333 + 10000, 5000);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              cstdlib_strcpy(v333 + 5000, v333 + 10000);
              if (v344)
              {
                cstdlib_strcpy(v333 + 15000, "");
                cstdlib_strcpy(v333 + 20000, "*");
                v345 = 32;
                appended = oneword_AppendPhon(a1, v333 + 5000, v333 + 15000, (v333 + 20000), 32, 1);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }
              }

              appended = mosynt_FinishWordAnalysis(*(a1 + 48), v336);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              DepesLayersForWordAndPOS = mosynt_ResetMosyntWS(*(a1 + 48), v333);
              LOWORD(v97) = v335;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_463;
              }

              v153 = cstdlib_strlen(*v327);
              LOWORD(v315) = 0;
              HIWORD(v350) += v153;
              goto LABEL_398;
            }
          }

          v109 = *(a1 + 232);
          v110 = cstdlib_strlen("◄");
          if (cstdlib_strncmp((v109 + v98), "◄", v110))
          {
            utf8_ToLower((*(a1 + 232) + v98), 0, &v341);
            appended = oneword_AppendPhon(a1, &v341, "", "", 32, 0);
            LOWORD(v97) = v335;
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            LOWORD(v315) = 0;
            DepesLayersForWordAndPOS = 0;
            HIWORD(v350) += utf8_determineUTF8CharLength(*(*(a1 + 232) + v98));
            goto LABEL_275;
          }

          v340 = 0;
          v341 = 0;
          v338 = 0;
          v339 = 0;
          v337 = 4;
          v116 = cstdlib_strlen("◄");
          v117 = v98 + v116;
          LOWORD(v97) = v335;
          v98 += v116;
          if ((v321 + v116) < v335)
          {
            v97 = v117;
            while (1)
            {
              v118 = *(a1 + 232);
              v119 = cstdlib_strlen("◄");
              if (!cstdlib_strncmp((v118 + v97), "◄", v119))
              {
                break;
              }

              ++HIWORD(v350);
              if (v307 == ++v97)
              {
                LOWORD(v97) = v335;
                v98 = v335;
                goto LABEL_259;
              }
            }

            v98 = v97;
            LOWORD(v97) = v335;
          }

LABEL_259:
          v210 = v358[v311];
          appended = (*(*(a1 + 56) + 176))(a5, a6, v210, 3, &v341, &v352 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          appended = (*(*(a1 + 56) + 176))(a5, a6, v210, 5, &v340, &v352 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          appended = (*(*(a1 + 56) + 176))(a5, a6, v210, 6, &v339, &v352 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          appended = (*(*(a1 + 56) + 168))(a5, a6, v210, 0, 1, &v337, &v352 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          if ((v311 & 0x80) != 0)
          {
            DepesLayersForWordAndPOS = 2310021632;
            goto LABEL_463;
          }

          DepesLayersForWordAndPOS = (*(*(a1 + 56) + 176))(a5, a6, v210, 9, &v338, &v352 + 2);
          if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
          {
            goto LABEL_463;
          }

          cstdlib_strncpy(__dst, v338, 0x14uLL);
          if (__dst[0])
          {
            v211 = __dst[0];
          }

          else
          {
            v211 = 32;
          }

          v345 = v211;
          v212 = v341;
          if (v337 == 4)
          {
            if (!cstdlib_strcmp(v341, "_"))
            {
LABEL_274:
              LOWORD(v315) = 0;
              ++v311;
LABEL_275:
              v78 = v319;
              goto LABEL_398;
            }

            v213 = v340;
            v212 = v341;
            v214 = v339;
            v215 = a1;
            v216 = v211;
            v217 = 1;
          }

          else
          {
            v214 = v339;
            v213 = v340;
            v215 = a1;
            v216 = v211;
            v217 = 0;
          }

          appended = oneword_AppendPhon(v215, v212, v213, v214, v216, v217);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          DepesLayersForWordAndPOS = 0;
          goto LABEL_274;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v74, v75, v76, __s);
        v80 = *(*(a1 + 104) + 120);
        v81 = *(a1 + 160);
        v82 = cstdlib_strlen(v81);
        appended = v80(*(a1 + 88), *(a1 + 96), 0, v81, v82);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_462;
        }

        if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v334 + 2 <= 0x7F)
        {
          cstdlib_strcat(__s, "_");
          cstdlib_strcat(__s, __s1);
        }

        if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
        {
          __s[v334] = 0;
          appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }
        }

        v77 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v347);
        if ((v77 & 0x80000000) == 0)
        {
          __src[v347] = 0;
          v83 = cstdlib_strlen(__src);
          v84 = cstdlib_strlen(*(a1 + 160));
          v85 = count_inserted_oneword_bytes(__src);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v86, v87, v88, __s);
          if (v347 <= 0x7FuLL)
          {
            v90 = v77;
            v89 = *(a1 + 232);
            goto LABEL_155;
          }

          v89 = heap_Realloc(*(*a1 + 8), *(a1 + 232), v347 + 1);
          if (v89)
          {
            v90 = v77;
            *(a1 + 232) = v89;
LABEL_155:
            v315 = (v83 - (v85 + v84)) & ~((v83 - (v85 + v84)) >> 31);
            cstdlib_strcpy(v89, __src);
            LODWORD(v97) = v347;
            v78 = v319;
            goto LABEL_156;
          }

LABEL_401:
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_402;
        }
      }

LABEL_147:
      DepesLayersForWordAndPOS = v77;
      goto LABEL_463;
    }
  }

  DepesLayersForWordAndPOS = 2310021130;
  if ((v58 & 0x80) != 0)
  {
    DepesLayersForWordAndPOS = 2310021632;
    goto LABEL_463;
  }

  v59 = v346;
  v358[v58] = v354;
  v66 = HIWORD(v351) - v53;
  if (v66 < 1 || dynamic_strncat(v327, &(*v331)[v53 + *(a1 + 224)], v66, v329, *(*a1 + 8)))
  {
    v67 = v320;
    if (v323 + 2 > 100 * v320)
    {
      v67 = v320 + 1;
    }

    v320 = v67;
    v68 = v314 + 100 * v67;
    if (v68 > *v329)
    {
      v69 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v314 + 100 * v67);
      if (v69)
      {
        *v327 = v69;
        *v329 = v68;
        goto LABEL_99;
      }

LABEL_402:
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v38, v39, v40, v41, v298);
      goto LABEL_463;
    }

LABEL_99:
    if (v68 > *v42)
    {
      v70 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v68);
      if (!v70)
      {
        goto LABEL_402;
      }

      *v313 = v70;
      *v42 = v68;
    }

    if (v68 > *v326)
    {
      v71 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v68);
      if (!v71)
      {
        goto LABEL_402;
      }

      *v312 = v71;
      *v326 = v68;
    }

    if (dynamic_strcat(v327, "◄", v329, *(*a1 + 8)) && dynamic_strncat(v327, &(*v331)[HIWORD(v351) + *(a1 + 224)], v351 - HIWORD(v351), v329, *(*a1 + 8)) && dynamic_strcat(v327, "◄", v329, *(*a1 + 8)))
    {
      ++v58;
      v323 += 2;
      v60 = 1;
      v53 = v351;
      goto LABEL_121;
    }
  }

LABEL_463:
  heap_Free(*(*a1 + 8), v336);
  return DepesLayersForWordAndPOS;
}

uint64_t oneword_joinTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v8 = a4;
  v29 = a4;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v12 = *a5;
  v22 = 0;
  result = (*(*(a1 + 56) + 168))(a2, a3, a4, 1, 1, &v22, &v27 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v23 = v22;
  if (v8)
  {
    while (1)
    {
      v14 = v8;
      result = (*(*(a1 + 56) + 136))(a2, a3, v8, &v29);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!v29)
      {
        goto LABEL_13;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LOWORD(v8) = v29;
      if (v23 != v22 || v29 == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v14 = 0;
LABEL_13:
  v29 = v14;
  if (v12 == v14)
  {
    result = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v28, &v27 + 2);
    if ((result & 0x80000000) == 0 && v28 == 8)
    {
      v28 = 9;
      return (*(*(a1 + 56) + 160))(a2, a3, v29, 0, 1, &v28, &v27);
    }

    return result;
  }

  LOWORD(v16) = 0;
  v24 = v14;
  while (1)
  {
    v17 = *(*(a1 + 56) + 168);
    if (v24 == v12)
    {
      break;
    }

    result = v17(a2, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v28 == 8 || v28 == 4)
    {
      if (v16)
      {
        if (v26 == HIWORD(v25))
        {
          result = (*(*(a1 + 56) + 192))(a2, a3, v16);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v19 = v24;
          if (*(a1 + 280) == v16)
          {
            *(a1 + 280) = v24;
          }

          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v19, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (a6)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        else
        {
          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v26) = HIWORD(v25);
        }

        LOWORD(v26) = v25;
        LOWORD(v16) = v24;
      }

      else
      {
        v16 = v24;
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v26 + 2, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 168))(a2, a3, v16, 2, 1, &v26, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    result = (*(*(a1 + 56) + 120))(a2, a3, v24, &v24);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v24, 0, 1, &v28, &v27 + 2);
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    return result;
  }

  result = (v17)(a2, a3, v12, 0, 1, &v28, &v27 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (v28 != 8 && v28 != 4)
    {
      if (!v16)
      {
        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      goto LABEL_69;
    }

    if (v16)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v26 == HIWORD(v25))
      {
        result = (*(*(a1 + 56) + 192))(a2, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v21 = v24;
        if (*(a1 + 280) == v16)
        {
          *(a1 + 280) = v24;
        }

        v28 = 9;
        result = (*(*(a1 + 56) + 160))(a2, a3, v21, 0, 1, &v28, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!a6)
        {
LABEL_70:
          *a5 = v24;
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
LABEL_69:
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      v28 = 9;
    }

    result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
    goto LABEL_69;
  }

  return result;
}