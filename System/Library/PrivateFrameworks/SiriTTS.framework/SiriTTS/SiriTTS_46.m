uint64_t mosynt_SkipToFirstOptimalReading(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if (v2)
  {
    v3 = *(v2 + 3);
    v4 = *(a2 + 240);
    do
    {
      if (*(v4 + 3) < v3)
      {
        v2 = v4;
        v3 = *(v4 + 3);
      }

      v4 = *v4;
    }

    while (v4);
    *(a2 + 240) = v2;
  }

  return 0;
}

uint64_t mosynt_FinishWordAnalysis(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 1024))
    {
      if (*(a1 + 1028))
      {
        result = mosyntbase_WriteMessage(a1, "\n\n", 0, "", 0, "", 0, "", 0);
        if (!a2 || (result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_9:
  v5 = *(a2 + 232);
  if (v5)
  {
    while (1)
    {
      v6 = v5;
      v5 = *v5;
      result = mosyntdata_DisposeItem(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    *(a2 + 1248) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
  }

  return result;
}

uint64_t mosynt_LHPlusMapping(uint64_t a1, void *a2, uint64_t a3, char *__s1, char *a5, unsigned int a6)
{
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v12 = *(a1 + 1028);
    }

    else
    {
      v12 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  *a5 = 0;
  if (!strncmp(__s1, "[SVOX]", 6uLL))
  {
    v15 = strncpy(a5, __s1, a6 - 1);
    v14 = "[SVOX]";
LABEL_14:
    mosynt_RemoveInitSubstr(v15, v14);
    if (!v12)
    {
      return 0;
    }

    result = mosyntbase_WriteMessage(a1, "[WANA] before LHPlus mapping: %s\n", 0, __s1, 0, "", 0, "", 0);
    if ((result & 0x80000000) == 0)
    {
      return mosyntbase_WriteMessage(a1, "[WANA] after LHPlus mapping: %s\n\n", 0, a5, 0, "", 0, "", 0);
    }

    return result;
  }

  if (a6 >= 6)
  {
    strcpy(a5, "{VOC}");
    strncat(a5, __s1, a6 - 6);
  }

  result = fst_getFSTSeq(a3, 1, &v19, &v18);
  if ((result & 0x80000000) == 0)
  {
    result = hlp_CastFSTSeq(v19, v18, v16);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntwordpho_LHPlusMapping(a1, v12, a2, v16, a5, a6);
      if ((result & 0x80000000) == 0)
      {
        a5[a6 - 1] = 0;
        v14 = "{VOC}";
        v15 = a5;
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t mosynt_StartSentenceAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a1)
  {
    v9 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!*(a1 + 1024))
  {
    v9 = 0;
    *(a1 + 1028) = 0;
    *(a1 + 1024) = 1;
    *(a1 + 1032) = 20;
    if (a7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *(a1 + 1028);
  if (!a7)
  {
    return 0;
  }

LABEL_6:
  v13 = 0;
  *a7 = a5;
  a7[1] = a6;
  result = com_mosynt_GetCfgParamVal(a2, a3, a4, "mosynt_maxvertexedges", "-1", &v13);
  if ((result & 0x80000000) == 0)
  {
    v11 = atoi(v13);
    if (v11 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 200;
    }

    result = mosyntsentana_CreateAndInitParseDesc(a1, v9, *a7, a7[1], v12, a7 + 2);
    if ((result & 0x80000000) == 0)
    {
      a7[3] = 0;
    }
  }

  return result;
}

void mosynt_InsertTerminals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v34 = v11;
  v33 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v9;
  v42 = *MEMORY[0x1E69E9840];
  if (v9)
  {
    if (*(v9 + 1024))
    {
      v22 = *(v9 + 1028);
    }

    else
    {
      v22 = 0;
      *(v9 + 1028) = 0;
      *(v9 + 1024) = 1;
      *(v9 + 1032) = 20;
    }
  }

  else
  {
    v22 = 0;
  }

  memset(v41, 0, sizeof(v41));
  v36 = 0;
  v37 = 0;
  v35 = 0;
  if (*v10)
  {
    v23 = v10;
  }

  else
  {
    v23 = "MosyntDummyConsFeat";
  }

  v24 = strlen(v23);
  if ((mosyntkbsymtab_GetConsFeatFromString(v21, *v20, 1, v23, v24, &v36, &v36 + 1, v41) & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (SHIDWORD(v36) < 1)
    {
      if ((mosyntbase_WriteMessage(v21, "[SANA] error converting cons/feat %s\n", 0, v23, 0, a9, 0, "", 0) & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    mosyntdata_NewTermInfo(v21, 0, &v37);
    if (v25 < 0)
    {
      goto LABEL_31;
    }

    v26 = v37;
    if (v37)
    {
      *(v37 + 8) = v33;
      *(v26 + 16) = v34;
      *(v26 + 24) = v18;
      *(v26 + 28) = v16 - 2;
      *(v26 + 32) = a9;
      *(v26 + 40) = 0;
      v27 = strlen(a9);
      v28 = v27 - 1;
      if (v27 > 4999)
      {
        v28 = 4998;
      }

      *(v26 + 44) = v28;
      v29 = v28 + 1;
      if (v22)
      {
LABEL_20:
        __strncpy_chk();
        v38[v29] = 0;
        v35 = 0;
        if ((mosyntkbsymtab_AppConsFeatToString(v21, *v20, HIDWORD(v36), v41, v40, 4999, &v35) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }

        __strcpy_chk();
        if ((mosyntkbsymtab_ConsFeatToComprConsFeatStr(v39, 5000) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }

        *(&v31 + 1) = v14;
        LODWORD(v31) = 0;
        DWORD1(v31) = ~v18 + v16;
        if ((mosyntbase_WriteMessage(v21, "[SANA] reading from pos 0 to pos %d: %s cost %d  %s\n", 0, v39, 0, v38, 0, "", v31) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }

        if (v22 != 1)
        {
          *(&v32 + 1) = v16;
          LODWORD(v32) = 0;
          DWORD1(v32) = v18;
          if ((mosyntbase_WriteMessage(v21, "[SANA] terminal edge from %d to %d for %s %s\n", 0, v40, 0, v38, 0, "", v32) & 0x80000000) != 0)
          {
            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      v29 = 1;
      if (v22)
      {
        goto LABEL_20;
      }
    }

    if ((mosyntsentana_InsertTerminalEdge(v21, v20[2], v18, v16, SHIDWORD(v36), v41, v37, v14) & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_26:
    if (v23[v36] != 92)
    {
      break;
    }

    LODWORD(v36) = v36 + 1;
    if ((mosyntkbsymtab_GetConsFeatFromString(v21, *v20, 1, v23, v24, &v36, &v36 + 1, v41) & 0x80000000) != 0)
    {
      goto LABEL_31;
    }
  }

  if (v22)
  {
    mosyntbase_WLn(v21);
  }

LABEL_31:
  v30 = *MEMORY[0x1E69E9840];
}

void mosynt_ParseSentence(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v4 = *(a1 + 1028) != 0;
    }

    else
    {
      v4 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((mosyntsentana_DoParse(a1, *(a2 + 16)) & 0x80000000) == 0)
  {
    mosyntsentana_GetOptimalTree(a1, *(a2 + 16), (a2 + 24));
    if (v5 >= 0 && v4 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);

      mosyntsentana_DisplayTree(a1, v6, v7);
    }
  }
}

uint64_t mosynt_GetTerminalInfoById(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _BYTE *a5, int a6)
{
  *a4 = 0;
  *a5 = 0;
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 24);
  if (result)
  {
    v15 = 0;
    mosynt_GetTerminalNode(result, a3, &v15);
    v12 = v15;
    if (v15)
    {
      *a4 = 1;
      v14 = 0;
      v13 = a6 - 1;
      result = mosyntkbsymtab_AppConsFeatToString(a1, *a2, *(v12 + 16), (v12 + 24), a5, v13, &v14);
      if ((result & 0x80000000) == 0)
      {
        result = 0;
        a5[v13] = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mosynt_GetTerminalNode(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  if (*(result + 60))
  {
    v5 = *(result + 64);
    if (v5)
    {
      if (*(v5 + 8) == a2)
      {
        *a3 = result;
      }
    }
  }

  else
  {
    v6 = *(result + 8);
    if (v6)
    {
      do
      {
        result = mosynt_GetTerminalNode(v6, a2, a3);
        v6 = *v6;
        if (*a3)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6 == 0;
        }
      }

      while (!v7);
    }
  }

  return result;
}

uint64_t mosynt_SyntTreeToString(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a3 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  return mosynt_SyntTreeToString1(a1, *a2, *(a2 + 24), a3, a4, &v5);
}

uint64_t mosynt_SyntTreeToString1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v28 = *a6;
    v12 = a5 - 1;
    result = mosyntkbsymtab_AppConsFeatToString(a1, a2, *(a3 + 16), (a3 + 24), a4, a5 - 1, &v28);
    if ((result & 0x80000000) == 0)
    {
      *(a4 + v12) = 0;
      v14 = v28;
      *a6 = v28;
      v15 = (a3 + 8);
      if (*(a3 + 8))
      {
        if (v14 < v12)
        {
          *(a4 + v14) = 91;
          LODWORD(v14) = *a6 + 1;
          *a6 = v14;
        }

        *(a4 + v14) = 0;
        v16 = (a3 + 8);
        while (1)
        {
          v16 = *v16;
          if (!v16)
          {
            break;
          }

          if (v16 != *v15)
          {
            v17 = *a6;
            if (*a6 < v12)
            {
              *(a4 + v17) = 44;
              v17 = *a6 + 1;
              *a6 = v17;
            }

            *(a4 + v17) = 0;
          }

          result = mosynt_SyntTreeToString1(a1, a2, v16, a4, a5, a6);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }

        v25 = *a6;
        if (*a6 >= v12)
        {
          goto LABEL_32;
        }

        v26 = 93;
      }

      else
      {
        if (v14 < v12)
        {
          *(a4 + v14) = 60;
          LODWORD(v14) = *a6 + 1;
          *a6 = v14;
        }

        *(a4 + v14) = 0;
        LH_itoa(*(a3 + 52), v29, 0xAu);
        LOBYTE(v18) = v29[0];
        v19 = *a6;
        if (v29[0])
        {
          v20 = 1;
          do
          {
            if (v19 >= v12)
            {
              break;
            }

            *(a4 + v19) = v18;
            v19 = *a6 + 1;
            *a6 = v19;
            v18 = v29[v20++];
          }

          while (v18);
        }

        *(a4 + v19) = 0;
        v21 = *a6;
        if (*a6 < v12)
        {
          *(a4 + v21) = 44;
          v21 = *a6 + 1;
          *a6 = v21;
        }

        *(a4 + v21) = 0;
        LH_itoa(*(a3 + 56), v29, 0xAu);
        LOBYTE(v22) = v29[0];
        v23 = *a6;
        if (v29[0])
        {
          v24 = 1;
          do
          {
            if (v23 >= v12)
            {
              break;
            }

            *(a4 + v23) = v22;
            v23 = *a6 + 1;
            *a6 = v23;
            v22 = v29[v24++];
          }

          while (v22);
        }

        *(a4 + v23) = 0;
        v25 = *a6;
        if (*a6 >= v12)
        {
          goto LABEL_32;
        }

        v26 = 62;
      }

      *(a4 + v25) = v26;
      v25 = *a6 + 1;
      *a6 = v25;
LABEL_32:
      result = 0;
      *(a4 + v25) = 0;
    }
  }

  else
  {
    result = 0;
  }

LABEL_33:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosynt_FinishSentenceAnalysis(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a2 + 24) || (result = mosyntsentana_DisposeTree(a1, *(a2 + 16), a2 + 24), (result & 0x80000000) == 0))
  {

    return mosyntsentana_DisposeParseDesc(a1, (a2 + 16));
  }

  return result;
}

void mosynt_StringToSyntTree(uint64_t a1, void *a2, char *__s, uint64_t *a4)
{
  v12 = 0;
  v11 = 0;
  v8 = strlen(__s);
  mosynt_StringToSyntTree1(a1, a2, __s, (v8 + 1), &v12 + 1, a4, &v12, &v11);
  if ((v9 & 0x80000000) == 0)
  {
    if (__s[SHIDWORD(v12)])
    {
      LODWORD(v10) = 0;
      HIDWORD(v10) = HIDWORD(v12);
      mosyntbase_WriteMessage(a1, "### syntax tree not fully parsed; last position is %d: %s\n", 0, __s, 0, "", 0, "", v10);
    }
  }
}

void mosynt_StringToSyntTree1(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, signed int *a5, uint64_t *a6, int *a7, _DWORD *a8)
{
  v33 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if ((mosyntutils_SkipBlanksInString(a3, a4, a5) & 0x80000000) == 0)
  {
    if (a3[*a5])
    {
      v30 = 0;
      v32 = 0;
      v31 = 0uLL;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v26 = 0;
      if ((mosyntkbsymtab_GetConsFeatFromString(a1, a2, 1, a3, a4, a5, &v30, &v31) & 0x80000000) == 0)
      {
        mosyntdata_NewSyntNode(a1, v30, &v31, a6);
        if ((v16 & 0x80000000) == 0)
        {
          v17 = *a6;
          *(v17 + 60) = 0;
          *v17 = 0;
          *(*a6 + 8) = 0;
          if (a3[*a5] == 91)
          {
            if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x5Bu) & 0x80000000) == 0 && (mosyntdata_StartPhonList(a1, &v29, &v28) & 0x80000000) == 0)
            {
              v18 = a1;
              v19 = a2;
              v20 = a3;
              v21 = a4;
              v22 = a5;
              v23 = a7;
              while ((mosynt_StringToSyntTree1(v18, v19, v20, v21, v22, &v27, v23, a8) & 0x80000000) == 0 && (mosyntdata_AppendNode(a1, &v29, &v28, 1, v27) & 0x80000000) == 0)
              {
                if (a3[*a5] != 44)
                {
                  if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x5Du) & 0x80000000) == 0)
                  {
                    *(*a6 + 8) = v29;
                    v25 = *a6;
                    *(v25 + 52) = *a7;
                    *(v25 + 56) = *a8;
                  }

                  break;
                }

                if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x2Cu) & 0x80000000) != 0)
                {
                  break;
                }

                v23 = &v26;
                v18 = a1;
                v19 = a2;
                v20 = a3;
                v21 = a4;
                v22 = a5;
              }
            }
          }

          else
          {
            *(*a6 + 60) = 1;
            if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x3Cu) & 0x80000000) == 0 && (mosyntutils_GetCardFromString(a1, a3, a4, a5, a7) & 0x80000000) == 0)
            {
              *(*a6 + 52) = *a7;
              if ((mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x2Cu) & 0x80000000) == 0 && (mosyntutils_GetCardFromString(a1, a3, a4, a5, a8) & 0x80000000) == 0)
              {
                *(*a6 + 56) = *a8;
                mosyntutils_CheckSkipCharInString(a1, a3, a4, a5, 0x3Eu);
              }
            }
          }
        }
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t mosynt_StartAccentPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    return 0;
  }

  *a7 = a5;
  if (mosyntkbaccphr_AccPhrType(a6))
  {
    v14 = a6;
  }

  else
  {
    v14 = 0;
  }

  __s = 0;
  *(a7 + 8) = v14;
  result = com_mosynt_GetCfgParamVal(a2, a3, a4, "mosynt_phrpar", "1", &__s);
  if ((result & 0x80000000) == 0)
  {
    *(a7 + 16) = atoi(__s);
    result = com_mosynt_GetCfgParamVal(a2, a3, a4, "mosynt_accphrdefdomain", "DEFAULT", &__s);
    if ((result & 0x80000000) == 0)
    {
      strlen(__s);
      *(a7 + 20) = mosyntkbsymtab_KnownAtomId(a1, a5, __s);
      return mosyntdata_CreateAndInitSentTermData(a1, (a7 + 24));
    }
  }

  return result;
}

double mosynt_InsertAccPhrTermWord(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4, int a5, char *__s)
{
  v15 = 0;
  v16 = 0;
  v12 = *a2;
  v13 = strlen(__s);
  if ((mosyntdata_StringToLexPhonList(a1, v12, __s, v13, &v16, &v15) & 0x80000000) == 0)
  {
    return mosyntdata_InsertSentTermWord(a1, *(a2 + 24), a3, a4, a5, v16);
  }

  return result;
}

void mosynt_InsertAccPhrPunct(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = mosyntknowl_OrthPunctType(a1, a4);
  if (v7)
  {
    v8 = *(a2 + 24);

    mosyntdata_InsertSentTermPunct(a1, v8, a3, v7);
  }
}

void mosynt_DoAccentPhrasing(uint64_t a1, void **a2, char *a3)
{
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v5 = *(a1 + 1028);
    }

    else
    {
      v5 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v5 = 0;
  }

  mosynt_StringToSyntTree(a1, *a2, a3, &v8);
  if ((v6 & 0x80000000) == 0 && (mosyntaccphr_TreatSyntTree(a1, v5, *a2, a2[1], *(a2 + 8), *(a2 + 5), a2[3], v8) & 0x80000000) == 0 && (!v5 || (mosyntdata_GenPhonoRepr(a1, *a2, a2[3], &v7) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntbase_WString(a1, "after acc/phr: ", 0) & 0x80000000) == 0 && (mosyntdata_WritePhonList(a1, *a2, v7) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntbase_WLn(a1) & 0x80000000) == 0 && (mosyntdata_DisposePhonEleList(a1, &v7) & 0x80000000) == 0))
  {
    if (v8)
    {
      mosyntdata_DisposeSyntTree(a1, &v8);
    }
  }
}

uint64_t mosynt_GetWordProminence(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  *a4 = 0;
  if (a2 && (v5 = *(a2 + 24)) != 0 && (v6 = mosyntdata_SentTermWordData(a1, v5, a3)) != 0 && (v7 = *(v6 + 16), (v7 & 0xFFFC) == 0))
  {
    v8 = 0x1000200020000uLL >> (16 * (v7 & 3u));
  }

  else
  {
    LOWORD(v8) = 0;
  }

  *a4 = v8;
  return 0;
}

uint64_t mosynt_GetPhraseInfo(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4, _BYTE *a5, int a6)
{
  *a4 = 0;
  *a5 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
    return 0;
  }

  result = mosyntdata_SentTermBoundData(a1, v6, a3);
  if (result)
  {
    v11 = *(result + 8);
    if (v11 < 0)
    {
      return 0;
    }

    else
    {
      *a4 = v11;
      v12 = mosyntkbaccphr_SimplifiedPhraseType(*(result + 12));
      result = mosyntkbaccphr_PhraseTypeToString(v12, a5, a6);
      if ((result & 0x80000000) == 0)
      {
        result = 0;
        a5[a6 - 1] = 0;
      }
    }
  }

  return result;
}

uint64_t mosynt_FinishAccentPhrasing(uint64_t a1, uint64_t a2)
{
  if (a2 && (v3 = *(a2 + 24), v2 = (a2 + 24), v3))
  {
    return mosyntdata_DisposeSentTermData(a1, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mosynt_SentPhono(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, char *a5, char *a6, int a7)
{
  v47 = 0;
  v48[0] = 0;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_7;
  }

  if (!*(a1 + 1024))
  {
    v14 = 0;
    *(a1 + 1028) = 0;
    v16 = 1;
    *(a1 + 1024) = 1;
    *(a1 + 1032) = 20;
    goto LABEL_9;
  }

  v14 = *(a1 + 1028);
  if (!*(a1 + 1028))
  {
LABEL_7:
    v16 = 1;
    goto LABEL_9;
  }

  result = mosyntbase_WriteMessage(a1, "[SLPH] input string: %s\n", 0, a4, 0, "", 0, "", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v16 = 0;
LABEL_9:
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v17 = strlen(a4);
  v18 = strlen(a5);
  result = mosyntdata_StringToPhonoPhonList(a1, a2, 1, a4, v17, a5, v18, v48);
  if ((result & 0x80000000) == 0)
  {
    if ((v16 & 1) != 0 || (result = mosyntbase_WString(a1, "[SLPH] input phono list: ", 0), (result & 0x80000000) == 0) && (result = mosyntdata_WritePhonList(a1, a2, v48[0]), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
    {
      result = fst_getFSTSeq(a3, 2, &v46, &v43 + 1);
      if ((result & 0x80000000) == 0)
      {
        result = hlp_CastFSTSeq(v46, SHIDWORD(v43), v39);
        if ((result & 0x80000000) == 0)
        {
          result = fst_getFSTSeq(a3, 3, &v45, &v43);
          if ((result & 0x80000000) == 0)
          {
            result = hlp_CastFSTSeq(v45, v43, v37);
            if ((result & 0x80000000) == 0)
            {
              result = fst_getFSTSeq(a3, 4, &v44, &v42);
              if ((result & 0x80000000) == 0)
              {
                result = hlp_CastFSTSeq(v44, v42, v35);
                if ((result & 0x80000000) == 0)
                {
                  v19 = v48[0];
                  if (v48[0])
                  {
                    v20 = 0;
                    v21 = v48[0];
                    do
                    {
                      *(v21 + 4) = v20++;
                      v21 = *v21;
                    }

                    while (v21);
                  }

                  result = mosyntsentpho_TreatSentPho(a1, v14, a2, v39, v37, v35, v19, &v47);
                  if ((result & 0x80000000) == 0)
                  {
                    v22 = v47;
                    v23 = v48[0];
                    v41 = v47;
                    if (v48[0])
                    {
                      while (1)
                      {
                        if (!v22)
                        {
                          goto LABEL_36;
                        }

                        v24 = *(v22 + 4);
                        if (v24 == 0xFFFF || *(v23 + 4) > v24)
                        {
                          v22 = *v22;
                          v41 = v22;
                        }

                        else
                        {
                          if (*(v23 + 20))
                          {
                            v25 = v24 == *(v23 + 4);
                          }

                          else
                          {
                            v25 = 0;
                          }

                          if (v25 && *(v22 + 20) && *(v23 + 6) >= 2u && *(v22 + 6) <= 1u)
                          {
                            v26 = mosyntkbsymtab_KnownPhonId(a1, a2, "*");
                            v27 = v41;
                            *(v41 + 6) = 2;
                            v28 = *v27;
                            *v27 = 0;
                            result = mosyntdata_AddPhonEle(a1, &v47, &v41, 1, v26);
                            if ((result & 0x80000000) != 0)
                            {
                              return result;
                            }

                            *v41 = v28;
                          }

LABEL_36:
                          v23 = *v23;
                          if (!v23)
                          {
                            break;
                          }

                          v22 = v41;
                        }
                      }
                    }

                    if ((v16 & 1) != 0 || (result = mosyntbase_WString(a1, "[SLPH] output phono list: ", 0), (result & 0x80000000) == 0) && (result = mosyntdata_WritePhonList(a1, a2, v47), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
                    {
                      result = mosyntdata_PhonListToString(a1, a2, 1, v47, a6, a7);
                      if ((result & 0x80000000) == 0)
                      {
                        a6[a7 - 1] = 0;
                        v29 = *a6;
                        if (*a6)
                        {
                          v30 = 0;
                          v31 = 0;
                          v32 = a6;
                          do
                          {
                            if (v31 && v29 == 42 && *(v32 - 1) == 39)
                            {
                              *(v32 - 1) = 42;
                              v33 = 39;
                            }

                            else
                            {
                              if (v31 < 2u)
                              {
                                goto LABEL_56;
                              }

                              if (v29 != 42)
                              {
                                goto LABEL_56;
                              }

                              if (*(v32 - 1) != 50)
                              {
                                goto LABEL_56;
                              }

                              v34 = v30 - 2;
                              if (a6[v34] != 39)
                              {
                                goto LABEL_56;
                              }

                              a6[v34] = 42;
                              *(v32 - 1) = 39;
                              v33 = 50;
                            }

                            *v32 = v33;
LABEL_56:
                            v30 = ++v31;
                            v32 = &a6[v31];
                            v29 = *v32;
                          }

                          while (*v32);
                        }

                        if ((v16 & 1) != 0 || (result = mosyntbase_WriteMessage(a1, "[SLPH] output string: %s\n", 0, a6, 0, "", 0, "", 0), (result & 0x80000000) == 0))
                        {
                          result = mosyntdata_DisposePhonEleList(a1, v48);
                          if ((result & 0x80000000) == 0)
                          {
                            return mosyntdata_DisposePhonEleList(a1, &v47);
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
  }

  return result;
}

uint64_t sgram_CheckIfExists(_WORD *a1, uint64_t a2, _DWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  *a3 = 0;
  inited = InitRsrcFunction(a1, a2, &v18);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  inited = kbaux_BuildBrokerString(v18, "sgram", v19, 0x100uLL);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  v7 = sgram_OpenRiffForReading(a1, a2, v19, &v17);
  v14 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    *a3 = 1;
    inited = sgram_CloseRiff(&v17, v7, v8, v9, v10, v11, v12, v13);
LABEL_5:
    v14 = inited;
    goto LABEL_6;
  }

  if ((v7 & 0x1FFF) == 0xD || (v7 & 0x1FFF) == 3)
  {
    v14 = 0;
  }

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sgram_LoadData(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  inited = InitRsrcFunction(a1, a2, &v25);
  if ((inited & 0x80000000) != 0)
  {
LABEL_7:
    v7 = inited;
    goto LABEL_8;
  }

  v7 = 2371887111;
  if (a3)
  {
    v8 = heap_Calloc(*(v25 + 8), 1, 232);
    *a3 = v8;
    if (!v8)
    {
      v7 = 2371887114;
      goto LABEL_8;
    }

    inited = kbaux_BuildBrokerString(v25, "sgram", v26, 0x100uLL);
    if ((inited & 0x80000000) == 0)
    {
      inited = sgram_OpenRiffForReading(a1, a2, v26, &v24);
      if ((inited & 0x80000000) == 0)
      {
        v15 = sgram_ReadFromRiff(v24, *a3, v9, v10, v11, v12, v13, v14);
        inited = sgram_CloseRiff(&v24, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sgram_UnloadData(_WORD *a1, int a2, uint64_t *a3)
{
  v3 = 2371887111;
  if (a3)
  {
    v15 = 0;
    inited = InitRsrcFunction(a1, a2, &v15);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else if (*a3)
    {
      v13 = v15;
      v3 = sgram_ReleaseData(*a3, v6, v7, v8, v9, v10, v11, v12);
      heap_Free(*(v13 + 8), *a3);
      *a3 = 0;
    }
  }

  return v3;
}

uint64_t sgram_GetStartCons(_DWORD *a1, _DWORD *a2)
{
  result = 2371887111;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *a1;
    }
  }

  return result;
}

BOOL sgram_HasEmptyRules(_BOOL8 result)
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

BOOL sgram_HasSimpleFollowRel(_BOOL8 result)
{
  if (result)
  {
    return *(result + 192) != 0;
  }

  return result;
}

uint64_t sgram_GetFirstRuleSameLast(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v13 = *(a1 + 80);
    *a3 = a1;
    a3[2] = 0;
    for (i = *(*(a1 + 96) + 4 * (a2 % v13)); ; i = *(*(*a3 + 72) + 4 * a3[3] + 32))
    {
      a3[3] = 10 * i;
      getRuleHeadSubCons(a3, a4, a5, a6);
      if (!*a4)
      {
        break;
      }

      if (*a6)
      {
        if (*a6 == a2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (!a2 || *a5 == a2)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

_DWORD *getRuleHeadSubCons(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = result[3];
  if (result[2] == 1)
  {
    if (v4 < *(*result + 32))
    {
      v5 = (*result + 48);
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    *a2 = 0;
    *a3 = 0;
    goto LABEL_9;
  }

  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v5 = (*result + 72);
LABEL_6:
  v6 = *v5;
  if (!v6)
  {
    goto LABEL_8;
  }

  *a2 = *(v6 + 4 * v4 + 4);
  *a3 = *(v6 + 4 * result[3] + 8);
  v7 = *(v6 + 4 * result[3] + 12);
LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t sgram_GetNextRuleSameLast(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 2371887111;
  if (a2 && a3 && a4 && a5)
  {
    while (1)
    {
      a2[3] = 10 * *(*(*a2 + 72) + 4 * a2[3] + 32);
      getRuleHeadSubCons(a2, a3, a4, a5);
      if (!*a3)
      {
        break;
      }

      if (*a5)
      {
        if (*a5 == a1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (!a1 || *a4 == a1)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sgram_GetFirstRuleSameFirst(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v13 = *(a1 + 104);
    *a3 = a1;
    a3[2] = 0;
    for (i = *(*(a1 + 120) + 4 * (a2 % v13)); ; i = *(*(*a3 + 72) + 4 * a3[3] + 36))
    {
      a3[3] = 10 * i;
      getRuleHeadSubCons(a3, a4, a5, a6);
      if (!*a4 || *a5 != a2)
      {
        break;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sgram_GetNextRuleSameFirst(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 2371887111;
  if (a2 && a3 && a4 && a5)
  {
    do
    {
      a2[3] = 10 * *(*(*a2 + 72) + 4 * a2[3] + 36);
      getRuleHeadSubCons(a2, a3, a4, a5);
    }

    while (*a3 && *a5 != a1);
    return 0;
  }

  return result;
}

uint64_t sgram_GetFirstEmptyRule(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 2371887111;
  if (a1 && a2 && a3 && a4)
  {
    if (a5)
    {
      *a2 = a1;
      *(a2 + 8) = 1;
      getRuleHeadSubCons(a2, a3, a4, a5);
      return 0;
    }
  }

  return result;
}

uint64_t sgram_GetNextEmptyRule(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = 2371887111;
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      a1[3] += 8;
      getRuleHeadSubCons(a1, a2, a3, a4);
      return 0;
    }
  }

  return result;
}

uint64_t sgram_GetRuleFeatLists(uint64_t *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  result = 2371887111;
  if (a1 && a2 && a3 && a4)
  {
    v6 = *(a1 + 3);
    if (*(a1 + 2) == 1)
    {
      v7 = *a1;
      if (v6 >= *(v7 + 32))
      {
        goto LABEL_16;
      }

      v8 = (v7 + 48);
    }

    else
    {
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      v7 = *a1;
      v8 = (v7 + 72);
    }

    v9 = *v8;
    if (v9)
    {
      v10 = (v9 + 4 * v6);
      v11 = v10[4];
      if ((v11 & 0x80000000) != 0)
      {
        LOWORD(v13) = 0;
      }

      else
      {
        v12 = *(v7 + 24);
        v13 = *(v12 + 2 * v11);
        if (v13 >= 1)
        {
          v14 = a2 + 1;
          v15 = (v12 + 2 * v11 + 2);
          v16 = v13;
          do
          {
            v17 = *v15++;
            *v14++ = v17;
            --v16;
          }

          while (v16);
        }
      }

      *a2 = v13;
      v19 = v10[5];
      if ((v19 & 0x80000000) != 0)
      {
        LOWORD(v21) = 0;
      }

      else
      {
        v20 = *(v7 + 24);
        v21 = *(v20 + 2 * v19);
        if (v21 >= 1)
        {
          v22 = a3 + 1;
          v23 = (v20 + 2 * v19 + 2);
          v24 = v21;
          do
          {
            v25 = *v23++;
            *v22++ = v25;
            --v24;
          }

          while (v24);
        }
      }

      *a3 = v21;
      v26 = v10[6];
      if ((v26 & 0x80000000) != 0)
      {
        LOWORD(v18) = 0;
      }

      else
      {
        v27 = *(v7 + 24);
        v18 = *(v27 + 2 * v26);
        if (v18 >= 1)
        {
          v28 = a4 + 1;
          v29 = (v27 + 2 * v26 + 2);
          v30 = v18;
          do
          {
            v31 = *v29++;
            *v28++ = v31;
            --v30;
          }

          while (v30);
        }
      }

      goto LABEL_17;
    }

LABEL_16:
    LOWORD(v18) = 0;
    *a2 = 0;
    *a3 = 0;
LABEL_17:
    result = 0;
    *a4 = v18;
  }

  return result;
}

uint64_t sgram_GetRuleVisAndCost(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 2371887111;
  if (a1 && a2 && a3)
  {
    v4 = a1[3];
    if (a1[2] == 1)
    {
      if (v4 >= *(*a1 + 32))
      {
        goto LABEL_11;
      }

      v5 = (*a1 + 48);
    }

    else
    {
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      v5 = (*a1 + 72);
    }

    v6 = *v5;
    if (v6)
    {
      *a2 = *(v6 + 4 * v4) != 0;
      v7 = *(v6 + 4 * a1[3] + 28);
LABEL_12:
      v3 = 0;
      *a3 = v7;
      return v3;
    }

LABEL_11:
    v7 = 0;
    *a2 = 0;
    goto LABEL_12;
  }

  return v3;
}

BOOL sgram_IsFollowerCons(_BOOL8 result, int a2, int a3)
{
  if (result)
  {
    v3 = (*(result + 224) + 4 * (a3 % *(result + 208)));
    v4 = *v3;
    LODWORD(v3) = v3[1];
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if ((v6 < 0) ^ v5 | (v6 == 0))
    {
      return 0;
    }

    v7 = 2 * v4;
    v8 = *(result + 200);
    v9 = v4 << 33;
    v10 = (v8 + 4 * v7);
    while (1)
    {
      v11 = *v10;
      v10 += 2;
      v12 = v11 == a3;
      if (v11 >= a3)
      {
        break;
      }

      v9 += 0x200000000;
      if (!--v6)
      {
        return 0;
      }
    }

    if (!v12)
    {
      return 0;
    }

    v13 = (*(result + 176) + 4 * (*(v8 + (v9 >> 30) + 4) + *(v8 + (v9 >> 30) + 4) * *(result + 160) + a2 % *(result + 160)));
    LODWORD(v15) = *v13;
    v14 = v13[1];
    v15 = v15;
    if (v15 >= v14)
    {
      return 0;
    }

    else
    {
      v16 = *(result + 152);
      while (1)
      {
        v17 = *(v16 + 4 * v15);
        if (v17 >= a2)
        {
          break;
        }

        result = 0;
        if (v14 <= ++v15)
        {
          return result;
        }
      }

      return v17 == a2;
    }
  }

  return result;
}

uint64_t mosyntdata_StartPhonList(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

uint64_t mosyntdata_AddPhonEle(uint64_t a1, void *a2, uint64_t *a3, int a4, __int16 a5)
{
  v13 = 0;
  result = mosyntpal_ALLOCATE(a1, &v13, 0x28u);
  if ((result & 0x80000000) == 0)
  {
    v10 = v13;
    *(v13 + 20) = 0;
    *(v10 + 24) = a5;
    *(v10 + 26) = -1;
    *(v10 + 8) = -1;
    *(v10 + 16) = 0xFFFF;
    if (a4)
    {
      *v10 = 0;
      v11 = *a3;
      v12 = v13;
      if (!*a3)
      {
        v11 = a2;
      }

      *v11 = v13;
      goto LABEL_6;
    }

    *v10 = *a2;
    v12 = v13;
    *a2 = v13;
    if (!*a3)
    {
LABEL_6:
      *a3 = v12;
    }
  }

  return result;
}

uint64_t mosyntdata_AddBound(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int a5, __int16 a6, int a7, __int16 a8)
{
  result = mosyntdata_AddPhonEle(a1, a2, a3, a4, 0);
  if ((result & 0x80000000) == 0)
  {
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = a2;
    }

    v17 = *v16;
    *(v17 + 20) = 1;
    *(v17 + 24) = a5;
    *(v17 + 28) = a6;
    *(v17 + 32) = a7;
    *(v17 + 36) = a8;
  }

  return result;
}

uint64_t mosyntdata_AppendPhonList(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!*a3 || (a2 = *a3, a5))
  {
    *a2 = a4;
    *a3 = a5;
  }

  return 0;
}

void *mosyntdata_LastPhonEle(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  do
  {
    result = a2;
    a2 = *a2;
  }

  while (a2);
  return result;
}

uint64_t mosyntdata_PopPhonEle(uint64_t a1, void **a2, void *a3, void *a4)
{
  if (*a2)
  {
    *a4 = *a2;
    *a2 = **a2;
    a4 = *a4;
  }

  *a4 = 0;
  if (!*a2)
  {
    *a3 = 0;
  }

  return 0;
}

uint64_t mosyntdata_CopyPhonList(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = 0;
    v13 = 0;
    while (1)
    {
      result = mosyntpal_ALLOCATE(a1, &v13, 0x28u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v8 = v13;
      v9 = v3[4];
      v10 = *(v3 + 1);
      *v13 = *v3;
      *(v8 + 16) = v10;
      *(v8 + 32) = v9;
      *v8 = 0;
      v11 = v13;
      v12 = v13;
      if (v5)
      {
        *v5 = v13;
        v12 = v6;
      }

      v3 = *v3;
      v5 = v11;
      v6 = v12;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    result = 0;
    v12 = 0;
LABEL_9:
    *a2 = v12;
  }

  return result;
}

uint64_t mosyntdata_DisposePhonEleList(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    while (1)
    {
      v6 = v3;
      v3 = *v3;
      result = mosyntpal_DEALLOCATE(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    result = 0;
LABEL_6:
    *a2 = 0;
  }

  return result;
}

uint64_t mosyntdata_WritePhonEle(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, unsigned __int8 a6, unsigned __int8 a7)
{
  v15 = 0;
  result = mosyntpal_ALLOCATE(a1, &v15, 0x3E8u);
  if ((result & 0x80000000) == 0)
  {
    v16 = 0;
    *v15 = 0;
    result = AppPhonEleString(a1, a2, v15, 1000, &v16, a3, a4, a5, a6, a7);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WString(a1, v15, 1000);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_DEALLOCATE(a1, &v15);
      }
    }
  }

  return result;
}

uint64_t AppPhonEleString(uint64_t a1, void *a2, uint64_t a3, int a4, int *a5, uint64_t a6, unsigned int a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  v33 = 0;
  v18 = mosyntkbsymtab_KnownPhonId(a1, a2, "{VOC}");
  if (!*(a6 + 20))
  {
    v22 = *(a6 + 24);
    if (v18 == v22 && (v23 = *(a6 + 26), v23 >= 1))
    {
      LOWORD(v35[0]) = v23;
    }

    else
    {
      if (a8 && *(a6 + 26) >= 1)
      {
        v24 = a1;
        v25 = a2;
        v22 = *(a6 + 26);
      }

      else
      {
        v24 = a1;
        v25 = a2;
      }

      result = mosyntkbsymtab_PhonSymString(v24, v25, v22, v35, 100);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_75;
      }
    }

    if (a7 == 10 && LOBYTE(v35[0]) == 123 && BYTE1(v35[0]) == 99)
    {
      v26 = BYTE2(v35[0]) - 48;
      if ((BYTE2(v35[0]) - 48) <= 9u)
      {
        if (BYTE3(v35[0]) != 125 || BYTE4(v35[0]))
        {
          if (BYTE3(v35[0]) - 48 > 9 || BYTE4(v35[0]) != 125 || BYTE5(v35[0]))
          {
            goto LABEL_27;
          }

          v26 = BYTE3(v35[0]) + 10 * BYTE2(v35[0]) - 16;
        }

        LOWORD(v35[0]) = v26;
      }
    }

LABEL_27:
    result = mosyntbase_App(a3, a4, a5, v35, 100, &v32);
    goto LABEL_75;
  }

  v19 = *(a6 + 24);
  if (v19 != 3)
  {
    if (v19 != 2)
    {
      if (v19 == 1)
      {
        v20 = mosyntkbsymtab_SyllSepId(a2);
        result = mosyntkbsymtab_PhonSymString(a1, a2, v20, v35, 100);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        result = mosyntbase_App(a3, a4, a5, v35, 100, &v32);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

LABEL_52:
        if (a7 && a7 != 4)
        {
          goto LABEL_54;
        }

LABEL_59:
        if (*(a6 + 36) <= 0)
        {
          goto LABEL_75;
        }

        goto LABEL_60;
      }

LABEL_51:
      result = 0;
      goto LABEL_52;
    }

    if (!a7)
    {
      v27 = " ";
LABEL_58:
      result = mosyntbase_CApp(a3, a4, a5, v27, 0, &v32);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

    if (a7 != 1)
    {
      if (a7 == 4)
      {
        v27 = " | ";
        goto LABEL_58;
      }

      if (a7 != 10)
      {
        if (a7 == 5)
        {
          result = mosyntbase_CApp(a3, a4, a5, " {#WB} ", 0, &v32);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          result = 0;
        }

LABEL_54:
        v29 = a10 != 0;
        if (a7 != 5 || a10)
        {
          goto LABEL_67;
        }

LABEL_60:
        result = mosyntbase_CApp(a3, a4, a5, "[", 0, &v32);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        result = mosyntpal_IntToString(*(a6 + 36), 0, v35, 100);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        result = mosyntbase_App(a3, a4, a5, v35, 100, &v32);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        v30 = "]";
LABEL_74:
        result = mosyntbase_CApp(a3, a4, a5, v30, 0, &v32);
        goto LABEL_75;
      }

      v28 = " ";
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a7 > 5 || ((0x31u >> a7) & 1) == 0)
  {
    if (a7 == 10)
    {
      if (!(a10 | a9))
      {
        if (*(a6 + 28) > 1)
        {
          v28 = " / ";
        }

        else
        {
          v28 = " # ";
        }

LABEL_49:
        result = mosyntbase_CApp(a3, a4, a5, v28, 0, &v32);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

LABEL_65:
      result = 0;
LABEL_66:
      v29 = a10 != 0;
LABEL_67:
      if (a7 != 10 || v29)
      {
        goto LABEL_75;
      }

      if (*(a6 + 36) && *(a6 + 36) <= 3)
      {
        v30 = "'";
      }

      else
      {
        if (*(a6 + 36) < 4u)
        {
          goto LABEL_75;
        }

        v30 = "'2";
      }

      goto LABEL_74;
    }

    if (a7 != 1)
    {
      goto LABEL_51;
    }

    if (!*(a6 + 32))
    {
      goto LABEL_65;
    }

LABEL_47:
    if (*a5 >= 1)
    {
      v28 = "|";
      goto LABEL_49;
    }

    goto LABEL_65;
  }

  result = mosyntbase_CApp(a3, a4, a5, " #{", 0, &v32);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_IntToString(*(a6 + 28), 0, v35, 100);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_CApp(a3, a4, a5, v35, 100, &v32);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_CApp(a3, a4, a5, "} ", 0, &v32);
        if ((result & 0x80000000) == 0)
        {
          if (!*(a6 + 32))
          {
            goto LABEL_52;
          }

          result = mosyntkbaccphr_PhraseTypeToString(*(a6 + 32), &v33, 10);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_CApp(a3, a4, a5, "(", 0, &v32);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_App(a3, a4, a5, &v33, 10, &v32);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_CApp(a3, a4, a5, ") ", 0, &v32);
                if ((result & 0x80000000) == 0)
                {
                  goto LABEL_52;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_75:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntdata_WriteFormattedPhonList(uint64_t a1, void *a2, void *a3, unsigned int a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = a3;
  do
  {
    result = mosyntdata_WritePhonEle(a1, a2, v10, a4, a5, v10 == a3, *v10 == 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 = *v10;
  }

  while (v10);
  return result;
}

uint64_t mosyntdata_PhonListToString(uint64_t a1, void *a2, int a3, void *a4, _BYTE *a5, int a6)
{
  v14 = 0;
  *a5 = 0;
  if (!a4)
  {
    return 0;
  }

  if (a3)
  {
    v11 = 10;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  do
  {
    result = AppPhonEleString(a1, a2, a5, a6, &v14, v12, v11, 0, v12 == a4, *v12 == 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v12 = *v12;
  }

  while (v12);
  return result;
}

uint64_t mosyntdata_StringToLexPhonList(uint64_t a1, void *a2, unsigned __int8 *a3, int a4, void *a5, uint64_t *a6)
{
  v14 = 0;
  *a5 = 0;
  *a6 = 0;
  result = mosyntknowl_GetPhoneFromString(a1, a2, a3, a4, &v14, &v14 + 1);
  if ((result & 0x80000000) == 0)
  {
    v13 = WORD2(v14);
    if (SHIDWORD(v14) >= 1)
    {
      do
      {
        result = mosyntdata_AddPhonEle(a1, a5, a6, 1, v13);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntknowl_GetPhoneFromString(a1, a2, a3, a4, &v14, &v14 + 1);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = WORD2(v14);
      }

      while (SHIDWORD(v14) > 0);
    }
  }

  return result;
}

uint64_t mosyntdata_StringToPhonoPhonList(uint64_t a1, void *a2, int a3, unsigned __int8 *a4, int a5, _BYTE *a6, uint64_t a7, void *a8)
{
  v33 = 0;
  v32 = 0;
  v31 = 0;
  *a8 = 0;
  v35 = 0;
  if (a3)
  {
    PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
    if ((PhraseTypeFromString & 0x80000000) != 0)
    {
      return PhraseTypeFromString;
    }

    v13 = v35;
    *(v35 + 20) = 1;
    *(v13 + 24) = 3;
    *(v13 + 28) = 0;
    *(v13 + 32) = 0;
    *(v13 + 36) = 0;
  }

  else
  {
    PhraseTypeFromString = 0;
    v13 = 0;
  }

  v14 = 0;
  v15 = 0;
  v34 = 0;
  v16 = *a4;
  v17 = v13;
  while (1)
  {
    if (v16 == 32)
    {
      PhraseTypeFromString = mosyntutils_SkipBlanksInString(a4, a5, &v34);
      if ((PhraseTypeFromString & 0x80000000) != 0)
      {
        return PhraseTypeFromString;
      }

      if (*a8 && v13 != v35)
      {
        PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
        if ((PhraseTypeFromString & 0x80000000) != 0)
        {
          return PhraseTypeFromString;
        }

        v13 = v35;
        *(v35 + 20) = 1;
        v20 = 2;
LABEL_28:
        *(v13 + 24) = v20;
        *(v13 + 28) = -1;
        *(v13 + 32) = 0;
        *(v13 + 36) = 0;
        goto LABEL_49;
      }

      goto LABEL_49;
    }

    if (v16 == 35)
    {
      if (a3)
      {
        PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x23u);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        v19 = 1;
LABEL_16:
        HIDWORD(v32) = v19;
      }

      else
      {
        PhraseBoundFromString = mosyntknowl_GetPhraseBoundFromString(a1, a4, a5, &v34, &v32 + 1);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        LOWORD(v19) = WORD2(v32);
        if (!HIDWORD(v32))
        {
          if (v17 && *(v17 + 20) && *(v17 + 24) == 3 && !*(v17 + 32))
          {
            LOWORD(v19) = 0;
            *(v17 + 32) = 2;
            if (!v15)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          LOWORD(v19) = 0;
LABEL_41:
          if (!v15)
          {
LABEL_43:
            v13 = v35;
            if (v35 && *(v35 + 20) && *(v35 + 24) == 2)
            {
              PhraseTypeFromString = 0;
              v15 = 0;
              *(v35 + 24) = 3;
              *(v13 + 28) = v19;
              v17 = v13;
              *(v13 + 32) = 0;
            }

            else
            {
              PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
              if ((PhraseTypeFromString & 0x80000000) != 0)
              {
                return PhraseTypeFromString;
              }

              v15 = 0;
              v13 = v35;
              *(v35 + 20) = 1;
              *(v13 + 24) = 3;
              *(v13 + 28) = v19;
              *(v13 + 32) = 0;
              *(v13 + 36) = 0;
              v17 = v13;
            }

            goto LABEL_49;
          }

LABEL_42:
          *(v15 + 36) = 1;
          goto LABEL_43;
        }
      }

      if (v17 && *(v17 + 20) && *(v17 + 24) == 3 && !*(v17 + 32))
      {
        *(v17 + 32) = 1;
        if (!v15)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (!v16)
    {
      break;
    }

    if (a3 && v16 == 47)
    {
      PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x2Fu);
      if ((PhraseBoundFromString & 0x80000000) != 0)
      {
        return PhraseBoundFromString;
      }

      v19 = 2;
      goto LABEL_16;
    }

    if (v16 == 91)
    {
      if (a3)
      {
LABEL_56:
        PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x27u);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        if (*a6 && a6[v14] == 49)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        LODWORD(v32) = v21;
        if (v34 < a5 && a4[v34] == 50)
        {
          PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, 0x32u);
          if ((PhraseBoundFromString & 0x80000000) != 0)
          {
            return PhraseBoundFromString;
          }

          v21 = 4;
          LODWORD(v32) = 4;
        }
      }

      else
      {
        PhraseBoundFromString = mosyntknowl_GetAccentFromString(a1, a4, a5, &v34, &v32);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        v21 = v32;
      }

      if (v13 && *(v13 + 20))
      {
        *(v13 + 36) = v21;
      }

      PhraseTypeFromString = 0;
      if (v21 == 2)
      {
        v15 = v13;
      }

      goto LABEL_49;
    }

    if (v16 == 40)
    {
      PhraseTypeFromString = mosyntknowl_GetPhraseTypeFromString(a1, a4, a5, &v34, &v31);
      if ((PhraseTypeFromString & 0x80000000) != 0)
      {
        return PhraseTypeFromString;
      }

      if (v17)
      {
        *(v17 + 32) = v31;
      }
    }

    else
    {
      if (a3 && v16 == 39)
      {
        goto LABEL_56;
      }

      if (a3)
      {
        v22 = v16 == 46;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      if (v16 == 45 || v23)
      {
        if (a3)
        {
          v24 = 46;
        }

        else
        {
          v24 = 45;
        }

        PhraseBoundFromString = mosyntutils_CheckSkipCharInString(a1, a4, a5, &v34, v24);
        if ((PhraseBoundFromString & 0x80000000) != 0)
        {
          return PhraseBoundFromString;
        }

        PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
        if ((PhraseTypeFromString & 0x80000000) != 0)
        {
          return PhraseTypeFromString;
        }

        v13 = v35;
        v20 = 1;
        *(v35 + 20) = 1;
        goto LABEL_28;
      }

      PhraseTypeFromString = mosyntknowl_GetPhoneFromString(a1, a2, a4, a5, &v34, &v33);
      if ((PhraseTypeFromString & 0x80000000) != 0)
      {
        return PhraseTypeFromString;
      }

      if (v33 <= 0)
      {
        v25 = mosyntkbsymtab_KnownPhonId(a1, a2, "{VOC}");
        v33 = v25;
        if (v25 >= 1)
        {
          PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, v25);
          if ((PhraseTypeFromString & 0x80000000) != 0)
          {
            return PhraseTypeFromString;
          }

          *(v35 + 26) = a4[v14];
        }

        v34 = v14 + 1;
      }

      else
      {
        PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, v33);
        if ((PhraseTypeFromString & 0x80000000) != 0)
        {
          return PhraseTypeFromString;
        }
      }
    }

LABEL_49:
    v16 = 0;
    v14 = v34;
    if (v34 < a5)
    {
      v16 = a4[v34];
    }
  }

  if (a3)
  {
    if (v17 && *(v17 + 20) && *(v17 + 24) == 3 && !*(v17 + 32))
    {
      *(v17 + 32) = 2;
    }

    if (v15)
    {
      *(v15 + 36) = 1;
    }

    PhraseTypeFromString = mosyntdata_AddPhonEle(a1, a8, &v35, 1, 0);
    if ((PhraseTypeFromString & 0x80000000) == 0)
    {
      v27 = v35;
      *(v35 + 20) = 1;
      *(v27 + 24) = 3;
      *(v27 + 28) = 0;
      *(v27 + 32) = 0;
      *(v27 + 36) = 0;
    }
  }

  return PhraseTypeFromString;
}

uint64_t mosyntdata_NewCommand(uint64_t a1, uint64_t *a2)
{
  result = mosyntpal_ALLOCATE(a1, a2, 0x88u);
  if ((result & 0x80000000) == 0)
  {
    **a2 = 0;
    v4 = *a2;
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
    *(v4 + 36) = 0;
    *(v4 + 28) = 0;
  }

  return result;
}

uint64_t mosyntdata_GetPunctFromCommandList(uint64_t a1, uint64_t *a2, _DWORD *a3, void *a4)
{
  if (a2)
  {
    while (*(a2 + 2))
    {
      a2 = *a2;
      if (!a2)
      {
        goto LABEL_4;
      }
    }

    v4 = *(a2 + 3);
  }

  else
  {
LABEL_4:
    v4 = 0;
  }

  *a3 = v4;
  *a4 = a2;
  return 0;
}

uint64_t mosyntdata_DisposeCommandList(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    while (1)
    {
      v6 = v3;
      v3 = *v3;
      result = mosyntpal_DEALLOCATE(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    result = 0;
LABEL_6:
    *a2 = 0;
  }

  return result;
}

uint64_t mosyntdata_WriteCommandList(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  result = mosyntpal_ALLOCATE(a1, &v10, 0x3E8u);
  if ((result & 0x80000000) == 0)
  {
    v11 = 0;
    *v10 = 0;
    v5 = v10;
    if (a2)
    {
      v12 = 0;
      memset(v13, 0, sizeof(v13));
      v14 = 0;
      while (1)
      {
        result = mosyntbase_CApp(v5, 1000, &v11, "<", 0, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v6 = *(a2 + 2);
        if (v6 > 2)
        {
          if (v6 == 3)
          {
            v7 = v5;
            v8 = "VOLUME";
            goto LABEL_19;
          }

          if (v6 != 4)
          {
            if (v6 == 5)
            {
              v7 = v5;
              v8 = "PROSDOMAIN";
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          v7 = v5;
          v8 = "SYMBOLICSIL";
        }

        else
        {
          if (!v6)
          {
            v7 = v5;
            v8 = "PUNCT";
            goto LABEL_19;
          }

          if (v6 != 1)
          {
            if (v6 == 2)
            {
              v7 = v5;
              v8 = "PITCH";
              goto LABEL_19;
            }

LABEL_16:
            v7 = v5;
            v8 = "?XXX;";
            goto LABEL_19;
          }

          v7 = v5;
          v8 = "SPEED";
        }

LABEL_19:
        result = mosyntbase_CApp(v7, 1000, &v11, v8, 0, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        result = mosyntbase_CApp(v5, 1000, &v11, ";", 0, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        result = mosyntpal_IntToString(*(a2 + 3), 0, v13, 100);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        result = mosyntbase_CApp(v5, 1000, &v11, v13, 100, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        result = mosyntbase_CApp(v5, 1000, &v11, ";", 0, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        result = mosyntbase_CApp(v5, 1000, &v11, a2 + 36, 100, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        result = mosyntbase_CApp(v5, 1000, &v11, ">", 0, &v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        a2 = *a2;
        if (!a2)
        {
          v5 = v10;
          break;
        }
      }
    }

    result = mosyntbase_WString(a1, v5, 1000);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_DEALLOCATE(a1, &v10);
    }
  }

LABEL_30:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntdata_GetNilLexItem(uint64_t a1)
{
  result = mosyntkblex_GetNilEntry();
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t mosyntdata_GetNextLexItem(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, int a5, int *a6, _BYTE *a7, uint64_t a8)
{
  v26 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  NilEntry = mosyntkblex_GetNilEntry(a8);
  if ((NilEntry & 0x80000000) != 0)
  {
    SepPartStr = NilEntry;
    goto LABEL_13;
  }

  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  *(a8 + 24) = 0;
  v17 = (a8 + 24);
  SepPartStr = mosyntbase_GetSepPartStr(a4, a5, a6, 0x5Cu, v24, 200, &v23);
  if ((SepPartStr & 0x80000000) == 0)
  {
    if (!v23)
    {
      *v17 = 0;
      goto LABEL_13;
    }

    if (LOBYTE(v24[0]) - 48 > 9)
    {
      SepPartStr = mosyntkbsymtab_ConsFeatToComprConsFeatStr(v24, 200);
      if ((SepPartStr & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      v19 = mosyntkbsymtab_KnownConsId(a1, a2, v24);
      *v17 = v19;
    }

    else
    {
      SepPartStr = mosyntpal_StringToInt(v24, 200, (a8 + 24), &v23);
      if ((SepPartStr & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      v19 = *v17;
    }

    if (v19 >= 1)
    {
      v20 = *a3;
      *(a8 + 16) = *(a3 + 2);
      *a8 = v20;
      *a7 = 1;
    }
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return SepPartStr;
}

uint64_t mosyntdata_SetLexEleRefCounts(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      for (i = v2[2]; i; i = *i)
      {
        *(i + 12) = 0;
      }

      v2 = *v2;
    }

    while (v2);
    do
    {
      v4 = a2[2];
      if (v4)
      {
        while (1)
        {
          v5 = *(v4 + 12);
          if (v5)
          {
            break;
          }

          *(v4 + 12) = 1;
          v4 = *v4;
          if (!v4)
          {
            goto LABEL_11;
          }
        }

        *(v4 + 12) = v5 + 1;
      }

LABEL_11:
      a2 = *a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t mosyntdata_PruneLexEleBranch(uint64_t a1, uint64_t *a2)
{
  result = 0;
  v4 = *a2;
  do
  {
    v5 = v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 48) != 1)
    {
      --*(v4 + 48);
      return result;
    }

    v4 = *v4;
    result = mosyntpal_DEALLOCATE(a1, &v5);
  }

  while ((result & 0x80000000) == 0);
  return result;
}

uint64_t RemoveInitSubstr(uint64_t a1, uint64_t a2, int a3)
{
  v9 = 0;
  v8 = 0;
  result = mosyntbase_FindSubstring(a1, 10, a2, a3, 0, &v9);
  if ((result & 0x80000000) == 0 && !v9)
  {
    v7 = mosyntbase_Length(a1, 10);
    return mosyntbase_RemoveSubstring(0, v7, a2, a3, &v8);
  }

  return result;
}

uint64_t mosyntdata_LexEleListToPhonString(uint64_t a1, void *a2, unsigned int a3, void *a4, uint64_t a5, int a6)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 0, 512);
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  result = mosyntkbsymtab_DecompressCons(a1, a2, a3, &v20, v23);
  if ((result & 0x80000000) == 0)
  {
    result = AppAddPhonString(a1, a2, v20, v23, 1, a5, a6, &v19);
    if ((result & 0x80000000) == 0)
    {
      if (a4)
      {
        v12 = 0;
        do
        {
          v13 = v12;
          v12 = a4;
          a4 = *a4;
          *v12 = v13;
        }

        while (a4);
        v14 = v12;
        while (1)
        {
          result = mosyntkbsymtab_DecompressCons(a1, a2, *(v14 + 8), &v20 + 1, v24);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = AppAddPhonString(a1, a2, SHIDWORD(v20), v24, 1, a5, a6, &v19);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = mosyntkblex_GetEntryPhon(a1, v14 + 1, v25, 1000);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          m2__cp__str("[SVOX]", &v21, 10);
          result = RemoveInitSubstr(&v21, v25, 1000);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = mosyntbase_App(a5, a6, &v19, v25, 1000, &v18);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = AppAddPhonString(a1, a2, SHIDWORD(v20), v24, 0, a5, a6, &v19);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v14 = *v14;
          if (!v14)
          {
            v15 = 0;
            do
            {
              v16 = v12;
              v12 = *v12;
              *v16 = v15;
              v15 = v16;
            }

            while (v12);
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        result = AppAddPhonString(a1, a2, v20, v23, 0, a5, a6, &v19);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AppAddPhonString(uint64_t a1, void *a2, int a3, __int16 *a4, int a5, uint64_t a6, int a7, int *a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  memset(v16, 0, sizeof(v16));
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v15 = 0;
  for (result = GetFirstAddPhon(a1, a2, a5, a3, a4, v17, v16, &v18 + 1); (result & 0x80000000) == 0; result = mosyntkbsymtab_GetFeatMatchedNextIntPropVal(v17, v16, &v18 + 1))
  {
    if (v18 < 0)
    {
      break;
    }

    result = mosyntkbsymtab_PhonSymString(a1, a2, HIDWORD(v18), v19, 100);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_App(a6, a7, a8, v19, 100, &v15);
    if ((result & 0x80000000) != 0)
    {
      break;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntdata_WriteReadingList(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  do
  {
    v8 = *(a3 + 4);
    v7 = *(a3 + 8);
    v9 = *(a3 + 16);
    result = mosyntknowl_WriteTraceHeader(a1, 1u);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, "reading from pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WInt(a1, v8, 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, " to pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WInt(a1, v7, 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, ": ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntkbsymtab_WriteCons(a1, a2, *(v9 + 8));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, " cost ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WInt(a1, *(v9 + 12), 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WString(a1, "  ", 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = WriteLexEleList(a1, *(v9 + 16));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = mosyntbase_WLn(a1);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v3 = *v3;
  }

  while (v3);
  return result;
}

double mosyntdata_NewTermInfo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((mosyntpal_ALLOCATE(a1, a3, 0x30u) & 0x80000000) == 0)
  {
    **a3 = a2;
    v6 = *a3;
    *(v6 + 2) = -1;
    v6[2] = 0;
    v7 = *a3;
    result = NAN;
    v7[3] = 0xFFFFFFFF00000000;
    v7[4] = 0;
    *(*a3 + 40) = 0xFFFFFFFF00000000;
  }

  return result;
}

uint64_t mosyntdata_DisposeTermInfo(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = **a2;
  if (!v4 || (result = mosyntdata_PruneLexEleBranch(a1, (v4 + 16)), (result & 0x80000000) == 0) && (result = mosyntpal_DEALLOCATE(a1, *a2), (result & 0x80000000) == 0))
  {

    return mosyntpal_DEALLOCATE(a1, a2);
  }

  return result;
}

double mosyntdata_CopyTermInfo(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!a2)
  {
    *a3 = 0;
    return result;
  }

  if ((mosyntpal_ALLOCATE(a1, a3, 0x30u) & 0x80000000) != 0)
  {
    return result;
  }

  v7 = *a2;
  v8 = *a3;
  **a3 = 0;
  if (!v7)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while ((mosyntpal_ALLOCATE(a1, &v18, 0x38u) & 0x80000000) == 0)
    {
      *v18 = 0;
      v12 = v18;
      v13 = v18;
      if (v10)
      {
        *v10 = v18;
        v13 = v11;
      }

      v14 = *(v9 + 1);
      *(v12 + 3) = *(v9 + 3);
      *(v12 + 1) = v14;
      *(v12 + 20) = *(v9 + 20);
      *(v12 + 12) = 1;
      v9 = *v9;
      v10 = v12;
      v11 = v13;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    return result;
  }

  v13 = 0;
LABEL_14:
  if ((mosyntpal_ALLOCATE(a1, v8, 0x18u) & 0x80000000) == 0)
  {
    **v8 = 0;
    v15 = *v8;
    v15[1] = *(v7 + 8);
    v15[2] = v13;
LABEL_16:
    v16 = *a3;
    *(v16 + 8) = *(a2 + 2);
    *(v16 + 16) = a2[2];
    v17 = *a3;
    *(v17 + 24) = a2[3];
    *(v17 + 32) = a2[4];
    result = *(a2 + 5);
    *(*a3 + 40) = result;
  }

  return result;
}

__n128 mosyntdata_NewSyntNode(uint64_t a1, __int16 a2, __n128 *a3, uint64_t *a4)
{
  if ((mosyntpal_ALLOCATE(a1, a4, 0x48u) & 0x80000000) == 0)
  {
    **a4 = 0;
    *(*a4 + 8) = 0;
    v8 = *a4;
    *(v8 + 16) = a2;
    result = *a3;
    *(v8 + 40) = a3[1].n128_u64[0];
    *(v8 + 24) = result;
    v9 = *a4;
    v9[8] = 0;
    *(v9 + 53) = 0;
    v9[6] = 0;
  }

  return result;
}

uint64_t mosyntdata_AppendNode(uint64_t a1, void *a2, void **a3, int a4, void *a5)
{
  if (a5)
  {
    if (a4)
    {
      v5 = *a3;
      if (!*a3)
      {
        v5 = a2;
      }

      *v5 = a5;
    }

    else
    {
      *a5 = *a2;
      *a2 = a5;
      if (*a3)
      {
        return 0;
      }
    }

    *a3 = a5;
  }

  return 0;
}

void mosyntdata_AddNode(uint64_t a1, void *a2, void **a3, int a4, __int16 a5, __n128 *a6)
{
  v12 = 0;
  mosyntdata_NewSyntNode(a1, a5, a6, &v12);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v12;
    if (v12)
    {
      if (a4)
      {
        v11 = *a3;
        if (!*a3)
        {
          v11 = a2;
        }

        *v11 = v12;
        goto LABEL_7;
      }

      *v12 = *a2;
      *a2 = v10;
      if (!*a3)
      {
LABEL_7:
        *a3 = v10;
      }
    }
  }
}

uint64_t DisposeSyntTreeList(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v9 = 0;
    while (1)
    {
      result = DisposeSyntTreeList(a1, v3 + 1);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v3;
      v6 = *v3;
      v8 = v3[8];
      v7 = v3 + 8;
      if (v8)
      {
        result = mosyntdata_DisposeTermInfo(a1, v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      result = mosyntpal_DEALLOCATE(a1, &v9);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v3 = v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    result = 0;
LABEL_10:
    *a2 = 0;
  }

  return result;
}

uint64_t mosyntdata_WriteReadingStruct(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = mosyntknowl_WriteTraceHeader(a1, a3);
    if ((result & 0x80000000) == 0)
    {
      if (a5 < 1)
      {
LABEL_7:
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        v13 = 0;
        result = mosyntkbsymtab_AppDecomprConsToString(a1, a2, *(a4 + 8), v14, 100, &v13);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WString(a1, v14, 100);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, "  ", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_WInt(a1, *(a4 + 12), 0);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_WLn(a1);
                if ((result & 0x80000000) == 0)
                {
                  result = mosyntbase_WLn(a1);
                  if ((result & 0x80000000) == 0)
                  {
                    result = WriteLexConsList(a1, a2, a3, *(a4 + 16), a5 + 2);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v11 = a5;
        while (1)
        {
          result = mosyntbase_WString(a1, " ", 0);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WriteLexConsList(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    result = 0;
    goto LABEL_22;
  }

  v7 = a3;
  result = WriteLexConsList(a1, a2, a3, *a4);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntknowl_WriteTraceHeader(a1, v7);
    if ((result & 0x80000000) == 0)
    {
      if (a5 < 1)
      {
LABEL_7:
        v12 = 0;
        memset(v13, 0, sizeof(v13));
        memset(v14, 0, sizeof(v14));
        v15 = 0;
        if (*(a4 + 32) && mosyntkblex_IsValidEntry(a4 + 8))
        {
          result = mosyntkbsymtab_DecompressCons(a1, a2, *(a4 + 32), &v12, v13);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntkbsymtab_WriteConsAndFeat(a1, a2, v12, v13);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntbase_WString(a1, " ", 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntkblex_GetEntryGraph(a1, a4 + 8, v14, 200);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntbase_WString(a1, v14, 200);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntbase_WString(a1, "  [", 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntkblex_GetEntryPhon(a1, a4 + 8, v14, 200);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntbase_WString(a1, v14, 200);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntbase_WString(a1, "]  ", 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntkblex_GetEntryCost(a1, a4 + 8, &v12 + 4);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          result = mosyntbase_WInt(a1, HIDWORD(v12), 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          result = mosyntbase_WString(a1, "NIL", 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }
        }

        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WLn(a1);
        }
      }

      else
      {
        while (1)
        {
          result = mosyntbase_WString(a1, " ", 0);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (!--a5)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

LABEL_22:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WriteTree1(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  while (1)
  {
    result = mosyntknowl_WriteTraceHeader(a1, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v11 = a5;
    if (a5 >= 1)
    {
      do
      {
        result = mosyntbase_WString(a1, " ", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      while (--v11);
    }

    result = mosyntkbsymtab_WriteConsAndFeat(a1, a2, *(v6 + 8), v6 + 12);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, "  ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt(a1, *(v6 + 12), 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*(v6 + 60))
    {
      result = mosyntbase_WString(a1, "  @@", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v12 = v6[8];
      if (v12)
      {
        result = WriteTermInfo(a1, a2, a3, v12, a5 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    else
    {
      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = WriteTree1(a1, a2, a3, v6[1], (a5 + 2));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }
}

uint64_t mosyntdata_EncodeSymbolicValue(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    v4 = -2147482647;
  }

  else
  {
    v4 = -2147481647;
  }

  *a4 = v4 - a2;
  return 0;
}

uint64_t mosyntdata_AppendItem(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    v4 = *a3;
    if (!*a3)
    {
      v4 = a2;
    }

    *v4 = a4;
    *a3 = a4;
  }

  return 0;
}

uint64_t mosyntdata_DisposeItem(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (*(v2 + 8))
  {
    return mosyntpal_DEALLOCATE(a1, a2);
  }

  mosyntdata_SetLexEleRefCounts(a1, *(v2 + 32));
  v5 = *(v2 + 32);
  if (!v5)
  {
LABEL_8:
    *(v2 + 32) = 0;
    return mosyntpal_DEALLOCATE(a1, a2);
  }

  v7 = 0;
  while (1)
  {
    result = mosyntdata_PruneLexEleBranch(a1, v5 + 2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = v5;
    v5 = *v5;
    result = mosyntpal_DEALLOCATE(a1, &v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t mosyntdata_AddOutItem(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v32 = 0;
  result = mosyntpal_ALLOCATE(a1, &v32, 0x28u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  *v32 = 0;
  v9 = *(a4 + 8);
  v10 = v32;
  *(v32 + 8) = v9;
  if (v9)
  {
    goto LABEL_29;
  }

  v11 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *(v10 + 16) = v11;
  v12 = *(a4 + 32);
  if (!v12)
  {
    goto LABEL_27;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    for (i = v12[2]; i; i = *i)
    {
      i[6] = 0;
    }

    v12 = *v12;
  }

  while (v12);
  v14 = *(a4 + 32);
  if (!v14)
  {
LABEL_27:
    result = 0;
    v16 = 0;
    v30 = v10;
LABEL_28:
    *(v10 + 32) = v16;
    v10 = v30;
LABEL_29:
    *v10 = 0;
    v28 = *a3;
    v29 = v32;
    if (!*a3)
    {
      v28 = a2;
    }

    *v28 = v32;
    *a3 = v29;
    return result;
  }

  v31 = a2;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v15;
    result = mosyntpal_ALLOCATE(a1, &v34, 0x18u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *v34 = 0;
    v15 = v34;
    v18 = v34;
    if (v17)
    {
      *v17 = v34;
      v18 = v16;
    }

    v16 = v18;
    v15[1] = v14[1];
    v19 = v14[2];
    if (v19)
    {
      v21 = v19 + 6;
      v20 = v19[6];
      if (!v20)
      {
        v22 = 0;
        v23 = 0;
        while (1)
        {
          result = mosyntpal_ALLOCATE(a1, &v33, 0x38u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v24 = v33;
          v25 = *(v19 + 3);
          *(v33 + 8) = *(v19 + 1);
          *(v24 + 24) = v25;
          *(v24 + 40) = *(v19 + 20);
          *v24 = 0;
          v26 = v33;
          v20 = v33;
          if (v23)
          {
            *v23 = v33;
            v20 = v22;
          }

          *v21 = v26;
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          v21 = v19 + 6;
          v27 = v19[6];
          v22 = v20;
          v23 = v26;
          if (v27)
          {
            if (v26)
            {
              *v26 = v27;
            }

            else
            {
              v20 = v19[6];
            }

            break;
          }
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v34[2] = v20;
    v14 = *v14;
    if (!v14)
    {
      a2 = v31;
      v30 = v32;
      goto LABEL_28;
    }
  }
}

uint64_t GetFirstAddPhon(uint64_t a1, uint64_t a2, int a3, int a4, __int16 *a5, _WORD *a6, uint64_t a7, int *a8)
{
  v8 = *a5;
  *a6 = *a5;
  if (v8 >= 1)
  {
    v9 = 1;
    do
    {
      a6[v9] = a5[v9];
    }

    while (v9++ < *a5);
  }

  return mosyntkbsymtab_GetFeatMatchedFirstIntPropVal(a1, a2, a4, a6, a3 == 0, a7, a8);
}

uint64_t mosyntdata_GenWordPhono(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, __int16 a6, void *a7, uint64_t *a8)
{
  *a7 = 0;
  *a8 = 0;
  if (a3)
  {
    v11 = a3;
    v14 = 0;
    while (1)
    {
      if (*(v11 + 20))
      {
        v15 = mosyntbase_WriteDevelMessage(a1, "*** boundary detected in word phoneme list\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
        goto LABEL_5;
      }

      v16 = *(v11 + 12);
      if (mosyntkbsymtab_SyllSepId(a2) == v16)
      {
        v14 = mosyntdata_AddPhonEle(a1, a7, a8, 1, 0);
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        v17 = *a8;
        *(v17 + 20) = 1;
        *(v17 + 24) = 1;
        *(v17 + 28) = -1;
        *(v17 + 32) = 0;
        *(v17 + 36) = 0;
        a5 = *a8;
        goto LABEL_18;
      }

      v18 = *(v11 + 12);
      if (mosyntkbsymtab_PrimAccId(a2) == v18)
      {
        if (a5)
        {
          v19 = a4;
LABEL_17:
          *(a5 + 36) = v19;
        }
      }

      else
      {
        v20 = *(v11 + 12);
        if (mosyntkbsymtab_SecAccId(a2) != v20)
        {
          v15 = mosyntdata_AddPhonEle(a1, a7, a8, 1, *(v11 + 12));
LABEL_5:
          v14 = v15;
          if ((v15 & 0x80000000) != 0)
          {
            return v14;
          }

          goto LABEL_18;
        }

        if (a4 >= 1 && a5)
        {
          v19 = a6;
          goto LABEL_17;
        }
      }

LABEL_18:
      v11 = *v11;
      if (!v11)
      {
        return v14;
      }
    }
  }

  return 0;
}

uint64_t mosyntdata_CreateAndInitSentTermData(uint64_t a1, uint64_t *a2)
{
  result = mosyntpal_ALLOCATE(a1, a2, 0x13890u);
  if ((result & 0x80000000) == 0)
  {
    for (i = 0; i != 80016; i += 16)
    {
      *(*a2 + i) = 0;
      *(*a2 + i + 8) = 0;
    }
  }

  return result;
}

uint64_t mosyntdata_DisposeSentTermData(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v5 = *a2;
    v6 = *(*a2 + v4);
    v12 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
      v7 = (v6 + 8);
      if (v8)
      {
        result = mosyntdata_DisposePhonEleList(a1, v7);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      result = mosyntpal_DEALLOCATE(a1, &v12);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v5 = *a2;
    }

    v10 = *(v5 + v4 + 8);
    v11 = v10;
    if (v10)
    {
      if (*v10)
      {
        result = mosyntdata_DisposeCommandList(a1, v10);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      result = mosyntpal_DEALLOCATE(a1, &v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v4 += 16;
  }

  while (v4 != 80016);
  return mosyntpal_DEALLOCATE(a1, a2);
}

double mosyntdata_AssertBoundPosData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 < 0x1389)
    {
      v4 = a2 + 16 * a3;
      v6 = *(v4 + 8);
      v5 = (v4 + 8);
      if (!v6)
      {
        v9 = 0;
        if ((mosyntpal_ALLOCATE(a1, &v9, 0x10u) & 0x80000000) == 0)
        {
          v7 = v9;
          *v5 = v9;
          *v7 = 0;
          *&result = 0xFFFFFFFFLL;
          v9[1] = 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
      HIDWORD(v8) = a3;
      mosyntbase_WriteMessage(a1, "***** error in asserting word boundary pos; wrong pos: %d\\n", 0, "", 0, "", 0, "", v8);
    }
  }

  return result;
}

double mosyntdata_InsertSentTermWord(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4, int a5, uint64_t a6)
{
  if (a2)
  {
    if (a3 > 0x1388 || a4 < a3 || a4 >= 5001)
    {
      *(&v16 + 1) = a4;
      LODWORD(v16) = 0;
      DWORD1(v16) = a3;
      mosyntbase_WriteMessage(a1, "***** error in word term insertion; wrong start/end pos: %d/%d\\n", 0, "", 0, "", 0, "", v16);
    }

    else
    {
      v11 = (a2 + 16 * a3);
      if (*v11)
      {
        *(&v17 + 1) = a4;
        LODWORD(v17) = 0;
        DWORD1(v17) = a3;
        mosyntbase_WriteMessage(a1, "***** error in word term insertion; position %d already occupied\\n", 0, "", 0, "", 0, "", v17);
      }

      else
      {
        v18 = 0;
        if ((mosyntpal_ALLOCATE(a1, &v18, 0x18u) & 0x80000000) == 0)
        {
          v14 = v18;
          *v11 = v18;
          *v14 = a5;
          *(v14 + 4) = a4;
          *(v14 + 8) = a6;
          *(v14 + 16) = 0;
          result = mosyntdata_AssertBoundPosData(a1, a2, a3);
          if ((v15 & 0x80000000) == 0)
          {
            return mosyntdata_AssertBoundPosData(a1, a2, a4);
          }
        }
      }
    }
  }

  return result;
}

void mosyntdata_InsertSentTermPunct(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a2)
  {
    mosyntdata_AssertBoundPosData(a1, a2, a3);
    if (a3 <= 0x1388 && (v8 & 0x80000000) == 0)
    {
      v9 = *(a2 + 16 * a3 + 8);
      if (v9)
      {
        v12 = 0;
        if ((mosyntpal_ALLOCATE(a1, &v12, 0x88u) & 0x80000000) == 0)
        {
          *v12 = 0;
          v10 = v12;
          v12[2] = 0;
          v10[3] = 0;
          v10[1] = 0;
          *(v10 + 29) = 0;
          *(v10 + 3) = a4;
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_9;
          }

          do
          {
            v9 = v11;
            v11 = *v11;
          }

          while (v11);
          if (v10)
          {
LABEL_9:
            *v9 = v10;
          }
        }
      }
    }
  }
}

uint64_t mosyntdata_SentTermBoundData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      return *(a2 + 16 * a3 + 8);
    }
  }

  return result;
}

uint64_t mosyntdata_SentTermWordData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      return *(a2 + 16 * a3);
    }
  }

  return result;
}

uint64_t mosyntdata_GetSentTermWordPhonList(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  *a4 = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      v4 = *(a2 + 16 * a3);
      if (v4)
      {
        *a4 = *(v4 + 8);
      }
    }
  }

  return 0;
}

uint64_t mosyntdata_GetSentTermCommList(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  *a4 = 0;
  if (a2)
  {
    if (a3 <= 0x1388)
    {
      v4 = *(a2 + 16 * a3 + 8);
      if (v4)
      {
        *a4 = *v4;
      }
    }
  }

  return 0;
}

uint64_t mosyntdata_GenPhonoRepr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  result = 0;
  v17 = 0;
  v18 = 0;
  *a4 = 0;
  v9 = (a3 + 8);
  v19 = 0;
  v10 = 5001;
  do
  {
    v12 = *(v9 - 1);
    v11 = *v9;
    if (*v9)
    {
      v13 = *(v11 + 8);
      if (v13 < 0)
      {
        result = mosyntdata_AddPhonEle(a1, a4, &v19, 1, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = 0;
        v7 = v19;
        *(v19 + 20) = 1;
        *(v7 + 24) = 2;
        LOWORD(v13) = -1;
      }

      else
      {
        v14 = *(v11 + 12);
        result = mosyntdata_AddPhonEle(a1, a4, &v19, 1, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v7 = v19;
        *(v19 + 20) = 1;
        *(v7 + 24) = 3;
      }

      *(v7 + 28) = v13;
      *(v7 + 32) = v14;
      *(v7 + 36) = 0;
    }

    if (v12)
    {
      result = mosyntdata_GenWordPhono(a1, a2, *(v12 + 8), *(v12 + 16), v7, 4, &v18, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v18)
      {
        v15 = v17;
        v16 = a4;
        if (v19 && (v16 = v19, !v17))
        {
          result = 0;
        }

        else
        {
          result = 0;
          *v16 = v18;
          v19 = v15;
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v9 += 2;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t WriteLexEleList(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    result = WriteLexEleList(a1, *a2);
    if ((result & 0x80000000) == 0)
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      result = mosyntkblex_GetEntryPhon(a1, a2 + 1, v6, 200);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, v6, 200);
      }
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WriteTermInfo(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  if (*a4)
  {
    v7 = *(*a4 + 16);

    return WriteLexConsList(a1, a2, a3, v7, a5);
  }

  result = mosyntknowl_WriteTraceHeader(a1, a3);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v5 < 1)
  {
LABEL_9:
    if (*(a4 + 16))
    {
      result = mosyntbase_WString(a1, "", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v10 = *(a4 + 24);
      if (v10 <= *(a4 + 28))
      {
        do
        {
          result = mosyntbase_Wr(a1, *(*(a4 + 16) + v10));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = v10++ < *(a4 + 28);
        }

        while (v11);
      }

      result = mosyntbase_WString(a1, " ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a4 + 32))
    {
      result = mosyntbase_WString(a1, " [", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v12 = *(a4 + 40);
      if (v12 <= *(a4 + 44))
      {
        do
        {
          result = mosyntbase_Wr(a1, *(*(a4 + 32) + v12));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = v12++ < *(a4 + 44);
        }

        while (v11);
      }

      result = mosyntbase_WString(a1, "] ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = mosyntbase_WLn(a1);
    if ((result & 0x80000000) == 0)
    {

      return mosyntbase_WLn(a1);
    }

    return result;
  }

  while (1)
  {
    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!--v5)
    {
      goto LABEL_9;
    }
  }
}

uint64_t kblexXX_StartLookup(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  if (*(a1 + 260))
  {
    *(a2 + 8) = 1;
  }

  else
  {
    *(a2 + 8) = *(a1 + 264);
  }

  *(a2 + 16) = 0;
  return 0;
}

uint64_t kblexXX_LookupChar(unsigned __int8 a1, int *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = *a2;
  if (!*(*a2 + 260))
  {
    v10 = *(a2 + 1);
    v11 = a2[4];
    *a3 = 0;
    if (*(v10 + v11))
    {
      if (*(v10 + v11) == v5)
      {
        *a3 = 1;
        v12 = v11 + 1;
LABEL_8:
        result = 0;
        a2[4] = v12;
        return result;
      }
    }

    else
    {
      v19 = *(v10 + 16);
      if (v19)
      {
        while (1)
        {
          v20 = *v19;
          if (v20 >= v5)
          {
            break;
          }

          v19 = *(v19 + 3);
          if (!v19)
          {
            return 0;
          }
        }

        if (v20 == v5)
        {
          v12 = 1;
          *a3 = 1;
          *(a2 + 1) = v19;
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  v27 = 0;
  v22 = 0;
  v7 = a2[4];
  result = DecomprNode(v6, a2[2], &v28, &v27, &v22, &v26);
  *a3 = 0;
  if (*(&v22 + v7))
  {
    if (*(&v22 + v7) != v5)
    {
      return result;
    }

    *a3 = 1;
    v9 = v7 + 1;
    goto LABEL_24;
  }

  v25 = 0;
  v21 = 0;
  v13 = v27;
  v14 = *a2;
  result = DecomprNodeStart(*a2, v27, &v25, &v21);
  v15 = v13 != 0;
  v16 = v21;
  if (v13 && v21 < v5)
  {
    do
    {
      v13 = v25;
      result = DecomprNodeStart(v14, v25, &v25, &v21);
      v15 = v13 != 0;
      v16 = v21;
      if (v13)
      {
        v17 = v21 >= v5;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
  }

  if (v15 && v16 == v5)
  {
    *a3 = 1;
    if (!BYTE1(v21))
    {
      result = DecomprNode(*a2, v13, &v25, &v24, &v21, &v23);
    }

    a2[2] = v13;
    v9 = 1;
LABEL_24:
    a2[4] = v9;
  }

  return result;
}

uint64_t kblexXX_GetFirstEntry(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 260))
  {
    v12 = 0;
    v6 = a1[2];
    v7 = a1[4];
    DecomprNode(v5, v6, &v14, &v13, &v12, &v12 + 1);
    if (v6 && !*(&v12 + v7) && (v10 = HIDWORD(v12)) != 0 && *(*(v5 + 272) + SHIDWORD(v12)))
    {
      *a2 = 1;
      *a3 = v5;
      *(a3 + 8) = v10;
      *(a3 + 12) = v6;
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
    }
  }

  else
  {
    v8 = *(a1 + 1);
    if (v8 && !*(v8 + a1[4]) && *(v8 + 32))
    {
      *a2 = 1;
      *(a3 + 16) = v8;
      v11 = *(v8 + 32);
      *a3 = v5;
      *(a3 + 8) = v11;
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return 0;
}

uint64_t kblexXX_GetNextEntry(BOOL *a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_11;
  }

  if (*(v3 + 260))
  {
    v5 = a2[2];
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 272);
    if (*(v6 + v5))
    {
      v12 = 0;
      v11 = 0;
      v5 = DecomprEntry1(v3, v5, (*(v6 + a2[3]) >> 5) & 1, &v12 + 1, &v12, &v11);
      v7 = v11;
      a2[2] = v11;
      if (!v7)
      {
        goto LABEL_10;
      }

      v3 = *a2;
      if (!*(*(*a2 + 272) + v7))
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    goto LABEL_11;
  }

  v5 = 0;
  v9 = *v8;
  *(a2 + 1) = v9;
  if (!v9)
  {
LABEL_10:
    v3 = 0;
    *a2 = 0;
  }

LABEL_12:
  *a1 = v3 != 0;
  return v5;
}

uint64_t DecomprEntry1(uint64_t a1, int a2, int a3, int *a4, int *a5, int *a6)
{
  if (a2)
  {
    v16 = a2;
    DecomprNum(*(a1 + 272), &v16, a4);
    if (*a4 < 1)
    {
      v11 = 0;
    }

    else
    {
      if (!a3 || (DecomprNum(*(a1 + 272), &v16, a5), *a5 <= 0))
      {
        *a5 = 1;
      }

      v11 = v16;
      if ((*(a1 + 280) & 0x80000000) != 0)
      {
        v12 = *(a1 + 272);
        if (*(v12 + v16))
        {
          v13 = (v16 + v12 + 1);
          do
          {
            v14 = *v13++;
            ++v11;
          }

          while (v14);
        }

        ++v11;
      }
    }
  }

  else
  {
    v11 = 0;
    *a4 = 0;
  }

  *a6 = v11;
  return 0;
}

uint64_t kblexXX_GetEntryGraph(uint64_t a1, uint64_t *a2, _BYTE *a3, int a4)
{
  *a3 = 0;
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v40 = 0;
  if (!*(v4 + 260))
  {
    if (a2[1])
    {
      v21 = a2[2];
      for (i = a4 - 1; v21; v21 = *(v21 + 1))
      {
        if (v21 == *(v4 + 264))
        {
          break;
        }

        v23 = 0;
        v24 = 1;
        v25 = v21;
        v26 = 1;
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = *v25++;
          --v26;
          ++v24;
          ++v23;
        }

        while (v29);
        if (v26)
        {
          v30 = &a3[i];
          i -= v28;
          do
          {
            *v30-- = v21[(v27-- - 2)];
          }

          while (v27 > 1);
        }
      }

      v31 = a4 - 1 - i;
      if (v31 >= 1)
      {
        v32 = i;
        v33 = v31;
        v34 = v32 + 1;
        v35 = a3;
        do
        {
          *v35 = v35[v34];
          ++v35;
          --v33;
        }

        while (v33);
      }

      result = 0;
      a3[v31] = 0;
      return result;
    }

    return 0;
  }

  if (!*(v4 + 264))
  {
    return mosyntbase_CCopy("???", 0, a3, a4, &v40);
  }

  v6 = *(a2 + 3);
  v7 = a4 - 1;
  if (v6)
  {
    __dst = 0;
    v8 = a4 - 1;
    while (1)
    {
      v9 = *(v4 + 272);
      v10 = *(v9 + v6);
      v11 = v6 + 1;
      v12 = v10 & 3;
      if ((v10 & 3) != 0)
      {
        memcpy(&__dst, (v9 + v11), v10 & 3);
        v11 += v12;
        v13 = v10 & 3;
      }

      else
      {
        v13 = 0;
      }

      *(&__dst | v13) = 0;
      if ((v10 & 4) != 0)
      {
        if (*(v9 + v11) < 0)
        {
          v14 = (v9 + v11 + 1);
          do
          {
            v15 = *v14++;
            ++v11;
          }

          while (v15 < 0);
        }

        ++v11;
      }

      v16 = *(v9 + v11);
      if (*(v9 + v11) < 0)
      {
        break;
      }

      v17 = 0;
      if (v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v6 = v17 + v6 - v16;
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    v18 = 0;
    v19 = (v9 + v11 + 1);
    do
    {
      v18 = v16 + (v18 << 7) - 128;
      v20 = *v19++;
      v16 = v20;
    }

    while (v20 < 0);
    v17 = -128 * v18;
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memcpy(&a3[v8 + 1 - v12], &__dst, v12);
    v8 -= v12;
    goto LABEL_17;
  }

  v8 = a4 - 1;
LABEL_39:
  v37 = v7 - v8;
  if (v37 >= 1)
  {
    v38 = v37;
    v39 = a3;
    do
    {
      *v39 = v39[v8 + 1];
      ++v39;
      --v38;
    }

    while (v38);
  }

  result = 0;
  a3[v37] = 0;
  return result;
}

uint64_t kblexXX_GetEntryPhon(uint64_t a1, uint64_t *a2, _BYTE *a3, int a4)
{
  *a3 = 0;
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (*(v4 + 260))
  {
    v7 = *(a2 + 2);
    if (v7)
    {
      v8 = *(v4 + 272);
      v9 = *(v8 + v7);
      if (*(v8 + v7) < 0)
      {
        v15 = 0;
        v16 = (v7 + v8 + 1);
        do
        {
          v15 = v9 + (v15 << 7) - 128;
          v17 = *v16++;
          v9 = v17;
          ++v7;
        }

        while (v17 < 0);
        v10 = v15 << 7;
      }

      else
      {
        v10 = 0;
      }

      if ((v9 | v10) >= 1)
      {
        v18 = v7 + 1;
        if ((*(v8 + *(a2 + 3)) & 0x20) != 0)
        {
          if (*(v8 + v18) < 0)
          {
            v19 = (v18 + v8 + 1);
            do
            {
              v20 = *v19++;
              ++v18;
            }

            while (v20 < 0);
          }

          ++v18;
        }

        if ((*(v4 + 280) & 0x80000000) == 0)
        {
          return mosyntbase_WriteDevelMessage(a1, "***** extern phon string lexica not supported", 0, "", 0, "", 0, "", 0, 0, 0, 0);
        }

        v21 = 0;
        v22 = v8 + v18;
        do
        {
          v23 = *(v22 + v21);
          if (v21 < a4)
          {
            a3[v21] = v23;
          }

          ++v21;
        }

        while (v23);
      }
    }

    return 0;
  }

  v11 = a2[1];
  if (!v11)
  {
    return 0;
  }

  v12 = *(v4 + 280);
  v13 = *(v11 + 12);

  return auxkbcommondef_RecallString(a1, v12, v13, a3, a4);
}

uint64_t kblexXX_GetEntryCost(uint64_t a1, uint64_t a2, int *a3)
{
  *a3 = 0;
  result = *a2;
  if (*a2)
  {
    if (*(result + 260))
    {
      v6 = 0;
      return DecomprEntry1(result, *(a2 + 8), (*(*(result + 272) + *(a2 + 12)) >> 5) & 1, &v6, a3, &v5);
    }

    else
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        result = 0;
        *a3 = *(v4 + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t kblexXX_GetEntryCostAndConsList(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4, int a5)
{
  v10 = 0;
  v7 = *a2;
  if (*a2)
  {
    if (*(v7 + 260))
    {
      DecomprEntry1(v7, *(a2 + 8), (*(*(v7 + 272) + *(a2 + 12)) >> 5) & 1, &v10, a3, &v11);
      LODWORD(v7) = v10;
    }

    else
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        LODWORD(v7) = *(v8 + 8);
        *a3 = *(v8 + 16);
      }

      else
      {
        LODWORD(v7) = 0;
      }
    }
  }

  return mosyntpal_IntToString(v7, 0, a4, a5);
}

BOOL kblexXX_IdenticalEntries(_DWORD *a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(*a1 + 260))
  {
    return a1[2] == *(a2 + 8);
  }

  else
  {
    return *(a1 + 1) == *(a2 + 8);
  }
}

uint64_t DecomprNode(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  if (a2)
  {
    v6 = *(a1 + 272);
    v7 = *(v6 + a2);
    v8 = a2 + 1;
    v9 = v7 & 3;
    if ((v7 & 3) != 0)
    {
      v10 = (v6 + v8);
      v8 = a2 + (v7 & 3) + 1;
      v11 = a5;
      v12 = v7 & 3;
      do
      {
        v13 = *v10++;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }

    a5[v9] = 0;
    if ((v7 & 4) != 0)
    {
      v16 = *(a1 + 272);
      v17 = *(v16 + v8);
      if (*(v16 + v8) < 0)
      {
        v19 = 0;
        v20 = (v8 + v16 + 1);
        do
        {
          v19 = v17 + (v19 << 7) - 128;
          v21 = *v20++;
          v17 = v21;
          ++v8;
        }

        while (v21 < 0);
        v18 = v19 << 7;
      }

      else
      {
        v18 = 0;
      }

      v15 = ++v8 + v18 + v17;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    if (*(a1 + 264))
    {
      v22 = *(a1 + 272);
      if (*(v22 + v8) < 0)
      {
        v23 = (v8 + v22 + 1);
        do
        {
          v24 = *v23++;
          ++v8;
        }

        while (v24 < 0);
      }

      ++v8;
    }

    if ((v7 & 8) != 0)
    {
      v26 = *(a1 + 272);
      v27 = *(v26 + v8);
      if (*(v26 + v8) < 0)
      {
        v29 = 0;
        v30 = (v8 + v26 + 1);
        do
        {
          v29 = v27 + (v29 << 7) - 128;
          v31 = *v30++;
          v27 = v31;
          ++v8;
        }

        while (v31 < 0);
        v28 = v29 << 7;
      }

      else
      {
        v28 = 0;
      }

      v25 = ++v8 + v28 + v27;
    }

    else
    {
      v25 = 0;
    }

    *a4 = v25;
    v14 = v8 & (v7 << 27 >> 31);
  }

  else
  {
    v14 = 0;
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
  }

  *a6 = v14;
  return 0;
}

uint64_t DecomprNodeStart(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = *(a1 + 272);
    v5 = *(v4 + a2);
    v6 = a2 + 1;
    v7 = v5 & 3;
    if ((v5 & 3) != 0)
    {
      v8 = (v4 + v6);
      v6 = a2 + (v5 & 3) + 1;
      v9 = a4;
      v10 = v5 & 3;
      do
      {
        v11 = *v8++;
        *v9++ = v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }

    a4[v7] = 0;
    if ((v5 & 4) != 0)
    {
      v12 = *(a1 + 272);
      v13 = *(v12 + v6);
      if (*(v12 + v6) < 0)
      {
        v15 = 0;
        v16 = (v6 + v12 + 1);
        do
        {
          v15 = v13 + (v15 << 7) - 128;
          v17 = *v16++;
          v13 = v17;
          ++v6;
        }

        while (v17 < 0);
        v14 = v15 << 7;
      }

      else
      {
        v14 = 0;
      }

      *a3 = v6 + v14 + v13 + 1;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
  }

  return 0;
}

uint64_t DecomprNum(uint64_t result, int *a2, int *a3)
{
  *a3 = 0;
  v3 = *(result + *a2);
  if (*(result + *a2) < 0)
  {
    do
    {
      *a3 = v3 + (*a3 << 7) - 128;
      v5 = *a2 + 1;
      *a2 = v5;
      v6 = *(result + v5);
      v3 = *(result + v5);
    }

    while (v6 < 0);
    v4 = *a3 << 7;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4 | v3;
  ++*a2;
  return result;
}

uint64_t mosyntwordpho_LHPlusMapping(uint64_t a1, int a2, void *a3, int *a4, unsigned __int8 *a5, int a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a4 < 2)
  {
    result = 0;
  }

  else
  {
    v11 = *&a4[2 * (*a4 - 1) + 2];
    if (a2 < 1 || (result = mosyntknowl_WriteTraceHeader(a1, 3u), (result & 0x80000000) == 0) && (result = mosyntbase_WriteMessage(a1, "lhplus mapping input: %s\\n", 0, a5, a6, "", 0, "", 0), (result & 0x80000000) == 0))
    {
      v22 = 0;
      v23 = 0;
      memset(v24, 0, sizeof(v24));
      v25 = 0;
      v20 = 0;
      v21 = 0;
      result = mosyntdata_StringToLexPhonList(a1, a3, a5, a6, &v22, &v20);
      if ((result & 0x80000000) == 0)
      {
        result = mosynttrans_InitTransDesc(a1, a2, a3, &v23);
        if ((result & 0x80000000) == 0)
        {
          m2__cp__str("lhplus mapping", v24, 100);
          v14[0] = 1;
          v14[1] = v11;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0;
          result = mosynttrans_SeqTransducePhonList(a1, v23, 3u, v22, &v21, v14, 0, -1, 0xFFFFFFFF, v24, 100);
          if ((result & 0x80000000) == 0)
          {
            result = mosynttrans_FinishTransDesc(a1, &v23);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_PhonListToString(a1, a3, 1, v21, a5, a6);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntdata_DisposePhonEleList(a1, &v22);
                if ((result & 0x80000000) == 0)
                {
                  result = mosyntdata_DisposePhonEleList(a1, &v21);
                  if (a2 >= 1 && (result & 0x80000000) == 0)
                  {
                    result = mosyntknowl_WriteTraceHeader(a1, 3u);
                    if ((result & 0x80000000) == 0)
                    {
                      result = mosyntbase_WriteMessage(a1, "lhplus mapping output: %s\\n", 0, a5, a6, "", 0, "", 0);
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

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntwordpho_ReadingToPhonString(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (a4)
  {
    return mosyntdata_LexEleListToPhonString(a1, a3, *(a4 + 8), *(a4 + 16), a5, a6);
  }

  *a5 = 0;
  return 0;
}

uint64_t mosyntwordpho_TreatSingleReadingString(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v24 = 0;
  result = mosyntpal_ALLOCATE(a1, &v24, 0x68u);
  if ((result & 0x80000000) == 0)
  {
    v15 = v24;
    *v24 = a2;
    *(v15 + 8) = a3;
    v16 = *(a4 + 16);
    *(v15 + 16) = *a4;
    *(v15 + 32) = v16;
    v18 = *(a4 + 48);
    v17 = *(a4 + 64);
    v19 = *(a4 + 32);
    *(v15 + 96) = *(a4 + 80);
    *(v15 + 64) = v18;
    *(v15 + 80) = v17;
    *(v15 + 48) = v19;
    if (!a5)
    {
      goto LABEL_11;
    }

    v30 = 0;
    v31[0] = 0;
    v31[1] = 0;
    v32[0] = 0;
    *(v32 + 6) = 0;
    v28 = 0;
    v29 = 0;
    result = mosyntdata_StartPhonList(a1, &v29, &v28);
    if ((result & 0x80000000) == 0)
    {
      v27 = 0;
      result = mosyntdata_StringToLexPhonList(a1, *(v15 + 8), a6, a7, &v29, &v28);
      if ((result & 0x80000000) == 0)
      {
        result = mosynttrans_InitTransDesc(a1, *v15, *(v15 + 8), &v30);
        if ((result & 0x80000000) == 0)
        {
          m2__cp__str("morphophonemic rules", v31, 30);
          v20 = *(v15 + 16) - 1;
          v21 = *(v15 + 64);
          v25[2] = *(v15 + 48);
          v25[3] = v21;
          v25[4] = *(v15 + 80);
          v26 = *(v15 + 96);
          v22 = *(v15 + 32);
          v25[0] = *(v15 + 16);
          v25[1] = v22;
          result = mosynttrans_SeqTransducePhonList(a1, v30, 3u, v29, &v27, v25, 0, v20, 0xFFFFFFFF, v31, 30);
          if ((result & 0x80000000) == 0)
          {
            result = mosynttrans_FinishTransDesc(a1, &v30);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_DisposePhonEleList(a1, &v29);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntdata_PhonListToString(a1, *(v15 + 8), 1, v27, a6, a7);
                if ((result & 0x80000000) == 0)
                {
                  result = mosyntdata_DisposePhonEleList(a1, &v27);
                  if ((result & 0x80000000) == 0)
                  {
LABEL_11:
                    result = mosyntpal_DEALLOCATE(a1, &v24);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntwordpho_TraceReading(uint64_t a1, int a2, void *a3, uint64_t a4, unsigned __int8 *a5, int a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 < 2)
  {
    result = 0;
  }

  else
  {
    result = mosyntknowl_WriteTraceHeader(a1, 3u);
    if ((result & 0x80000000) == 0)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      result = mosyntkbsymtab_ConsToString(a1, a3, *(a4 + 8), v13, 200);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WriteMessage(a1, "getting internal phon list for word cons %s: %s\\n", 0, v13, 200, a5, a6, "", 0);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntpal_ALLOCATE(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v8 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    v6 = heap_Calloc(*(v8 + 8), 1, a3);
    *a2 = v6;
    if (v6)
    {
      return inited;
    }

    else
    {
      return 2371887114;
    }
  }

  return inited;
}

uint64_t mosyntpal_DEALLOCATE(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  heap_Free(*(v5 + 8), *a2);
  *a2 = 0;
  return inited;
}

uint64_t mosyntpal_IntToString(unsigned int a1, uint64_t a2, _BYTE *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  LH_itoa(a1, v14, 0xAu);
  v6 = (a4 - 1);
  if (a4 >= 1)
  {
    if (a4 != 1)
    {
      v7 = v6 - 1;
      v8 = v14;
      v9 = a3;
      do
      {
        v10 = *v8++;
        *v9++ = v10;
        if (v10)
        {
          v11 = v7 == 0;
        }

        else
        {
          v11 = 1;
        }

        --v7;
      }

      while (!v11);
    }

    a3[v6] = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t mosyntpal_StringToInt(uint64_t a1, uint64_t a2, int *a3, BOOL *a4)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + v4);
    v6 = *(a1 + v4++);
  }

  while (v5 <= 32 && v6 != 0);
  v8 = v6 == 45 || v6 == 43;
  v9 = v8;
  if (v8)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  v11 = (v10 - 1);
  v12 = *(a1 + v11);
  v13 = (v12 - 58) < 0xF6u;
  if ((v12 - 48) > 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = v9 + v4;
    do
    {
      v16 = 10 * v14 + (v12 - 48);
      v17 = v16 < v14;
      if (v16 > v14)
      {
        v14 = v16;
      }

      if (v17)
      {
        v13 = 1;
      }

      v12 = *(a1 + v15++);
    }

    while ((v12 - 48) < 0xA);
    v11 = (v15 - 1);
  }

  v18 = (a1 + v11);
  do
  {
    v20 = *v18++;
    v19 = v20;
  }

  while (v20 <= 32 && v19 != 0);
  if (v6 == 45)
  {
    v22 = -v14;
  }

  else
  {
    v22 = v14;
  }

  v23 = (v13 | v19) == 0;
  if (!v23)
  {
    v22 = 0;
  }

  *a4 = v23;
  *a3 = v22;
  return 0;
}

uint64_t mosyntpal_WriteChar(uint64_t a1, int a2)
{
  v10 = 0;
  if (!a1)
  {
    return 0;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v10);
  if ((inited & 0x80000000) == 0)
  {
    if (a2 == 10)
    {
      *(a1 + 16 + *(a1 + 1020)) = 0;
      log_OutText(*(v10 + 32), "FE_MOSYNT", 0, 0, "%s", v4, v5, v6, a1 + 16);
      *(a1 + 1020) = 0;
    }

    else
    {
      v8 = *(a1 + 1020);
      if (v8 == 1000)
      {
        *(a1 + 1016) = 0;
        log_OutText(*(v10 + 32), "FE_MOSYNT", 0, 0, "%s", v4, v5, v6, a1 + 16);
        v8 = 0;
        *(a1 + 1020) = 0;
      }

      *(a1 + v8 + 16) = a2;
      ++*(a1 + 1020);
    }
  }

  return inited;
}

uint64_t mosyntpal_WriteString(uint64_t a1, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v7 = *a2++;
      v6 = v7;
      if (!v7)
      {
        break;
      }

      mosyntpal_WriteChar(a1, v6);
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t wgram_CheckIfExists(_WORD *a1, uint64_t a2, _WORD *a3, int a4, _DWORD *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v23 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v25);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  inited = InitRsrcFunction(a3, a4, &v24);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  inited = kbaux_BuildBrokerString(v25, "wgram", v26, 0x100uLL);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  RsrcHandleForThisApi = getRsrcHandleForThisApi(v25, a1, a2, a3);
  v13 = wgram_OpenRiffForReading(RsrcHandleForThisApi, v12, v26, &v23);
  v20 = v13;
  if ((v13 & 0x80000000) == 0)
  {
    *a5 = 1;
    inited = wgram_CloseRiff(&v23, v13, v14, v15, v16, v17, v18, v19);
LABEL_6:
    v20 = inited;
    goto LABEL_7;
  }

  if ((v13 & 0x1FFF) == 0xD || (v13 & 0x1FFF) == 3)
  {
    v20 = 0;
  }

LABEL_7:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t getRsrcHandleForThisApi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __s1 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) == 0 && __s1 && *__s1 && strcmp(__s1, "internal"))
  {
    return a2;
  }

  return a4;
}

uint64_t wgram_LoadData(_WORD *a1, uint64_t a2, _WORD *a3, int a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  memset(v27, 0, sizeof(v27));
  v23 = 0;
  v24 = 0;
  inited = InitRsrcFunction(a1, a2, &v26);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  inited = InitRsrcFunction(a3, a4, &v25);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  if (!a5)
  {
    AddRefCountedObject = 2371887111;
    goto LABEL_9;
  }

  inited = kbaux_BuildBrokerString(v26, "wgram", v27, 0x100uLL);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  RsrcHandleForThisApi = getRsrcHandleForThisApi(v26, a1, a2, a3);
  inited = wgram_OpenRiffForReading(RsrcHandleForThisApi, v12, v27, &v24);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  ObjcForThisApi = getObjcForThisApi(v26, v25);
  AddRefCountedObject = objc_GetAddRefCountedObject(ObjcForThisApi, v27, wgram_loc_ObjcLoadData, wgram_loc_ObjcUnloadData, v24, &v23);
  if ((AddRefCountedObject & 0x80000000) == 0)
  {
    *a5 = *(v23 + 32);
    inited = wgram_CloseRiff(&v24, AddRefCountedObject, v15, v16, v17, v18, v19, v20);
LABEL_8:
    AddRefCountedObject = inited;
  }

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
  return AddRefCountedObject;
}

uint64_t wgram_loc_ObjcLoadData(_WORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = wgram_ReadFromRiff(a1, a2, a5, (a4 + 32));
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a4 + 32);
    __strcpy_chk();
  }

  return v6;
}

uint64_t wgram_loc_ObjcUnloadData(_WORD *a1, int a2, uint64_t a3)
{
  v16 = 0;
  inited = InitRsrcFunction(a1, a2, &v16);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = *(a3 + 32);
  if (!v12)
  {
    return 2371887111;
  }

  v13 = v16;
  v14 = wgram_ReleaseData(v12, v5, v6, v7, v8, v9, v10, v11);
  heap_Free(*(v13 + 8), v12);
  return v14;
}

uint64_t wgram_UnloadData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t *a5)
{
  if (!a5)
  {
    return 2371887111;
  }

  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, *a5);
    }
  }

  return result;
}

uint64_t wgram_GetStartState(uint64_t a1, _DWORD *a2)
{
  result = 2371887111;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 256);
    }
  }

  return result;
}

uint64_t wgram_GetFirstTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    *a4 = -1;
    *a5 = -1;
    *a6 = -1;
    if (a2 < 0)
    {
      return 0;
    }

    else
    {
      v8 = (*(a1 + 272) + 4 * (a2 % *(a1 + 264)));
      v10 = *v8;
      v9 = v8[1];
      if (v10 >= v9)
      {
LABEL_12:
        result = 0;
        *a3 = v10 + 1;
        a3[1] = v9;
      }

      else
      {
        v11 = *(a1 + 280);
        v12 = (v10 << 34) | 0x200000000;
        v13 = (v11 + 16 * v10 + 8);
        while (1)
        {
          LODWORD(v10) = v10 + 1;
          if (*v13 == a2)
          {
            break;
          }

          v12 += 0x400000000;
          v13 += 4;
          if (v9 == v10)
          {
            LODWORD(v10) = v9;
            goto LABEL_12;
          }
        }

        result = 0;
        *a3 = v10;
        a3[1] = v9;
        *a4 = *(v11 + (v12 >> 30) - 8);
        *a5 = *(v13 - 1);
        *a6 = *(v11 + ((v12 >> 30) | 4));
      }
    }
  }

  return result;
}

uint64_t wgram_GetNextTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = v8 - v9;
    if (v8 <= v9)
    {
LABEL_11:
      *a3 = v9 + 1;
      v16 = -1;
      *a4 = -1;
      *a5 = -1;
    }

    else
    {
      v11 = *(a1 + 280);
      v12 = v9 << 34;
      v13 = (v11 + 16 * v9 + 8);
      v14 = ~v9;
      while (1)
      {
        v15 = *v13;
        v13 += 4;
        if (v15 == a2)
        {
          break;
        }

        v12 += 0x400000000;
        --v14;
        if (!--v10)
        {
          LODWORD(v9) = a3[1];
          goto LABEL_11;
        }
      }

      *a3 = -v14;
      v17 = (v11 + (v12 >> 30));
      *a4 = *v17;
      *a5 = v17[1];
      v16 = v17[3];
    }

    result = 0;
    *a6 = v16;
  }

  return result;
}

uint64_t wgram_GetFirstEpsTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v6 = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v7 = (*(a1 + 312) + 4 * (a2 % *(a1 + 304)));
    v9 = *v7;
    v8 = v7[1];
    if (v9 >= v8)
    {
LABEL_11:
      *a3 = v9 + 1;
      a3[1] = v8;
      v14 = -1;
      *a4 = -1;
      *a5 = 0;
    }

    else
    {
      v10 = *(a1 + 320);
      v11 = v9 << 34;
      v12 = (v10 + 16 * v9);
      while (1)
      {
        v13 = *v12;
        v12 += 4;
        LODWORD(v9) = v9 + 1;
        if (v13 == a2)
        {
          break;
        }

        v11 += 0x400000000;
        if (v8 == v9)
        {
          LODWORD(v9) = v8;
          goto LABEL_11;
        }
      }

      *a3 = v9;
      a3[1] = v8;
      v15 = v10 + (v11 >> 30);
      v16 = *(v15 + 4);
      *a4 = v16;
      *a5 = v16 == *(a1 + 260);
      v14 = *(v15 + 12);
    }

    v6 = 0;
    *a6 = v14;
  }

  return v6;
}

uint64_t wgram_GetNextEpsTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v6 = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v8 = *a3;
    v7 = a3[1];
    v9 = v7 - v8;
    if (v7 <= v8)
    {
LABEL_11:
      *a3 = v8 + 1;
      v15 = -1;
      *a4 = -1;
      *a5 = 0;
    }

    else
    {
      v10 = *(a1 + 320);
      v11 = v8 << 34;
      v12 = (v10 + 16 * v8);
      v13 = ~v8;
      while (1)
      {
        v14 = *v12;
        v12 += 4;
        if (v14 == a2)
        {
          break;
        }

        v11 += 0x400000000;
        --v13;
        if (!--v9)
        {
          LODWORD(v8) = a3[1];
          goto LABEL_11;
        }
      }

      *a3 = -v13;
      v16 = v10 + (v11 >> 30);
      v17 = *(v16 + 4);
      *a4 = v17;
      *a5 = v17 == *(a1 + 260);
      v15 = *(v16 + 12);
    }

    v6 = 0;
    *a6 = v15;
  }

  return v6;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat2(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, unsigned __int16 *a6, char *a7)
{
  v14[3] = *MEMORY[0x1E69E9840];
  memset(v14, 0, 24);
  *a7 = 0;
  GetFeat(a2, a4, v14);
  result = 0;
  if (a3 == a5)
  {
    if (LOWORD(v14[0]))
    {
      result = mosyntknowl_CheckUnifiable(a1, v14, a6, a7);
    }

    else
    {
      result = 0;
      *a7 = 1;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GetFeat(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  result = accphr_getFeatList(a1, a2, v10);
  v5 = v10[0];
  if (SLODWORD(v10[0]) >= 1)
  {
    v6 = v10 + 1;
    v7 = a3 + 1;
    v8 = LODWORD(v10[0]);
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *a3 = v5;
  return result;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat3(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, int a5, unsigned int a6, char *a7)
{
  v14[3] = *MEMORY[0x1E69E9840];
  memset(v14, 0, 24);
  *a7 = 0;
  GetFeat(a2, a6, v14);
  result = 0;
  if (a3 == a5)
  {
    if (*a4)
    {
      result = mosyntknowl_CheckUnifiable(a1, a4, v14, a7);
    }

    else
    {
      result = 0;
      *a7 = 1;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntkbaccphr_LookupAccPhrRule(uint64_t a1, uint64_t a2, int a3, __int16 *a4, _BYTE *a5, uint64_t a6)
{
  FirstRule = accphr_getFirstRule(a2, a3);
  v19 = 0;
  if (FirstRule == accphr_Nil())
  {
    v13 = 0;
LABEL_3:
    if (FirstRule == accphr_Nil())
    {
      *a5 = 0;
    }

    else
    {
      *a5 = 1;
      *a6 = a2;
      *(a6 + 40) = FirstRule;
      *(a6 + 8) = a3;
      return mosyntknowl_CopyFeatList(a4, (a6 + 16));
    }
  }

  else
  {
    while (1)
    {
      Rule = accphr_getRule(1, a2, FirstRule);
      Node = accphr_getNode(5, a2, Rule);
      v16 = accphr_getRule(1, a2, FirstRule);
      v17 = accphr_getNode(6, a2, v16);
      v13 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, a2, Node, v17, a3, a4, &v19);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (!v19)
      {
        FirstRule = accphr_getRule(14, a2, FirstRule);
      }

      if (FirstRule == accphr_Nil() || v19)
      {
        goto LABEL_3;
      }
    }
  }

  return v13;
}

uint64_t mosyntkbaccphr_GetNextAccPhrEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a3 = 0;
  Rule = accphr_getRule(14, a2, *(a4 + 40));
  v15 = 0;
  if (Rule == accphr_Nil())
  {
    v9 = 0;
LABEL_3:
    if (Rule == accphr_Nil())
    {
      *a3 = 0;
    }

    else
    {
      *a3 = 1;
      *(a4 + 40) = Rule;
    }
  }

  else
  {
    while (1)
    {
      v10 = accphr_getRule(1, a2, Rule);
      Node = accphr_getNode(5, a2, v10);
      v12 = accphr_getRule(1, a2, Rule);
      v13 = accphr_getNode(6, a2, v12);
      v9 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, a2, Node, v13, *(a4 + 8), (a4 + 16), &v15);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      if (!v15)
      {
        Rule = accphr_getRule(14, a2, Rule);
      }

      if (Rule == accphr_Nil() || v15)
      {
        goto LABEL_3;
      }
    }
  }

  return v9;
}

uint64_t mosyntkbaccphr_WriteAccPhrNode(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (accphr_getNodeNegated(a3, a4))
  {
    v8 = mosyntbase_Wr(a1, 126);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v8 = 0;
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  Node = accphr_getNode(3, a3, a4);
  if (Node > 1)
  {
    if (Node == 2)
    {
      v17 = accphr_getNode(5, a3, a4);
      v18 = accphr_getNode(6, a3, a4);
      v16 = WriteConsFeat1(a1, a2, a3, v17, v18);
LABEL_21:
      v8 = v16;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (Node != 3)
    {
      goto LABEL_22;
    }

    v15 = accphr_getNode(7, a3, a4);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v12 = "'EOS'";
        goto LABEL_18;
      }

      if (v15 == 4)
      {
        v12 = "'QOS'";
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v12 = "'OBR'";
        goto LABEL_18;
      }

      if (v15 == 2)
      {
        v12 = "'BOS'";
LABEL_18:
        v13 = a1;
        v14 = 0;
LABEL_19:
        v16 = mosyntbase_WString(v13, v12, v14);
        goto LABEL_21;
      }
    }

    v12 = "'(unknown property)'";
    goto LABEL_18;
  }

  if (!Node)
  {
    v12 = "?";
    goto LABEL_18;
  }

  if (Node == 1)
  {
    v10 = accphr_getNode(4, a3, a4);
    v11 = mosyntkbsymtab_AtomSymString(a1, a2, v10, v22, 100);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_34;
    }

    v11 = mosyntbase_Wr(a1, 94);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_34;
    }

    v12 = v22;
    v13 = a1;
    v14 = 100;
    goto LABEL_19;
  }

LABEL_22:
  if (accphr_getNodeMatchOp(a3, a4) == 6)
  {
    v19 = "*";
LABEL_33:
    v11 = mosyntbase_WString(a1, v19, 0);
LABEL_34:
    v8 = v11;
    goto LABEL_35;
  }

  if (accphr_getNodeMatchOp(a3, a4) == 3)
  {
    v19 = "+";
    goto LABEL_33;
  }

  if (accphr_getNodeMatchOp(a3, a4) == 1)
  {
    v19 = "$";
    goto LABEL_33;
  }

  if (accphr_getNodeMatchOp(a3, a4) == 7)
  {
    v19 = "@";
    goto LABEL_33;
  }

LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t WriteConsFeat1(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v10[3] = *MEMORY[0x1E69E9840];
  memset(v10, 0, 24);
  GetFeat(a3, a5, v10);
  result = mosyntkbsymtab_WriteCons(a1, a2, a4);
  if ((result & 0x80000000) == 0 && SLOWORD(v10[0]) >= 1)
  {
    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntkbsymtab_WriteFeatList(a1, a2, v10);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntkbaccphr_WriteRuleHeadline(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  Rule = accphr_getRule(0, a3, a4);
  v9 = accphr_getRule(0, a3, a4);
  memset(v20, 0, 32);
  if (Rule >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  memset(&v20[2], 0, 64);
  v21 = 0;
  result = mosyntkbsymtab_AtomSymString(a1, a2, v10, v20, 100);
  if ((result & 0x80000000) == 0)
  {
    if (accphr_getRule(0, a3, a4) < 1)
    {
      result = mosyntbase_WriteMessage(a1, "^%s <== ", 0, v20, 100, "", 0, "", 0);
    }

    else
    {
      result = mosyntbase_WriteMessage(a1, "^%s <-- ", 0, v20, 100, "", 0, "", 0);
    }

    if ((result & 0x80000000) == 0)
    {
      v12 = accphr_getRule(1, a3, a4);
      Node = accphr_getNode(5, a3, v12);
      v14 = accphr_getRule(1, a3, a4);
      v15 = accphr_getNode(6, a3, v14);
      result = WriteConsFeat1(a1, a2, a3, Node, v15);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, " [ ", 0);
        if ((result & 0x80000000) == 0)
        {
          v16 = accphr_getRule(2, a3, a4);
          result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v16);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, ", ", 0);
            if ((result & 0x80000000) == 0)
            {
              v17 = accphr_getRule(3, a3, a4);
              result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v17);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_WString(a1, ", ", 0);
                if ((result & 0x80000000) == 0)
                {
                  v18 = accphr_getRule(4, a3, a4);
                  result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v18);
                  if ((result & 0x80000000) == 0)
                  {
                    result = mosyntbase_WString(a1, " ]", 0);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntkbaccphr_WriteChildrenList(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6)
{
  v6 = a6;
  if (accphr_Nil() != a6)
  {
    while (1)
    {
      v13 = mosyntbase_WString(a1, a4, a5);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v13 = mosyntbase_WString(a1, "[ ", 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      for (i = accphr_getChildren(1, a3, v6); ; i = accphr_getNode(8, a3, v15))
      {
        v15 = i;
        if (i == accphr_Nil())
        {
          break;
        }

        v13 = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v15);
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }

        Node = accphr_getNode(8, a3, v15);
        if (Node != accphr_Nil())
        {
          v13 = mosyntbase_WString(a1, ", ", 0);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }
      }

      v13 = mosyntbase_WString(a1, " ]", 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ChildrenOpType = accphr_getChildrenOpType(a3, v6);
      if (ChildrenOpType == 2)
      {
        v18 = a1;
        v19 = " :FC";
      }

      else
      {
        if (ChildrenOpType != 1)
        {
          goto LABEL_17;
        }

        v18 = a1;
        v19 = " :OL";
      }

      v13 = mosyntbase_WString(v18, v19, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

LABEL_17:
      Children = accphr_getChildren(2, a3, v6);
      if (Children == accphr_Nil())
      {
        v21 = mosyntbase_WLn(a1);
      }

      else
      {
        v21 = mosyntbase_WStringLn(a1, "||", 0);
      }

      v12 = v21;
      if ((v21 & 0x80000000) == 0)
      {
        v6 = accphr_getChildren(2, a3, v6);
        if (v6 != accphr_Nil())
        {
          continue;
        }
      }

      return v12;
    }
  }

  return 0;
}

uint64_t mosyntkbaccphr_WriteInstruction(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  accphr_getInstrType(a3, a4);
  if (accphr_getInstrType(a3, a4) > 6)
  {
    v9 = 0;
    goto LABEL_66;
  }

  if (accphr_getInstrTargetRange(a3, a4))
  {
    v8 = (accphr_getInstrRight(a3, a4) ? "r_" : "l_");
    v10 = mosyntbase_WString(a1, v8, 0);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_65;
    }
  }

  if (accphr_getInstrTargetRange(a3, a4) == 2)
  {
    v11 = "syll_";
  }

  else
  {
    if (accphr_getInstrTargetRange(a3, a4) != 3)
    {
      goto LABEL_16;
    }

    if (accphr_getInstr(5, a3, a4) == -1)
    {
      v11 = "prsyll_";
    }

    else if (accphr_getInstr(5, a3, a4))
    {
      v11 = "flsyll_";
    }

    else
    {
      v11 = "ssyll_";
    }
  }

  v10 = mosyntbase_WString(a1, v11, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_65;
  }

LABEL_16:
  InstrType = accphr_getInstrType(a3, a4);
  v13 = 0;
  v14 = "XL";
  v15 = "L";
  v16 = "H";
  v17 = "XH";
  if (InstrType > 3)
  {
    switch(InstrType)
    {
      case 4:
        v18 = "pitch";
        break;
      case 5:
        v18 = "volume";
        break;
      case 6:
        v18 = "stress";
        break;
      default:
        goto LABEL_33;
    }

LABEL_31:
    v10 = mosyntbase_WString(a1, v18, 0);
    if ((v10 & 0x80000000) == 0)
    {
      v13 = 0;
      goto LABEL_33;
    }

LABEL_65:
    v9 = v10;
    goto LABEL_66;
  }

  switch(InstrType)
  {
    case 0:
      if (accphr_getInstr(2, a3, a4))
      {
        v10 = mosyntbase_WString(a1, "br", 0);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_65;
        }

        v13 = 0;
        v14 = "XW";
        v15 = "W";
        v16 = "S";
      }

      else
      {
        v10 = mosyntbase_WString(a1, "bnd", 0);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_65;
        }

        v14 = "XW";
        v15 = "W";
        v16 = "S";
        v13 = 1;
      }

      v17 = "XS";
      break;
    case 2:
      v18 = "emph";
      goto LABEL_31;
    case 3:
      v18 = "rate";
      goto LABEL_31;
  }

LABEL_33:
  Instr = accphr_getInstr(0, a3, a4);
  if (Instr != accphr_Nil())
  {
    v20 = accphr_getInstr(0, a3, a4);
    if (accphr_getNode(3, a3, v20))
    {
      v10 = mosyntbase_WString(a1, "(", 0);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      v21 = accphr_getInstr(0, a3, a4);
      v10 = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v21);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      v10 = mosyntbase_WString(a1, ")", 0);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_65;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    v27 = 0;
    v28[0] = 0;
    *(v28 + 5) = 0;
    v24 = accphr_getInstr(2, a3, a4);
    v26 = 0;
    if (v24 <= 2)
    {
      switch(v24)
      {
        case 0:
          v14 = "(no value)";
          goto LABEL_61;
        case 1:
          v14 = "default";
          goto LABEL_61;
        case 2:
          goto LABEL_61;
      }
    }

    else
    {
      if (v24 <= 4)
      {
        v14 = v15;
        if (v24 != 3)
        {
          v14 = "M";
        }

LABEL_61:
        v9 = mosyntbase_CCopy(v14, 0, &v27, 21, &v26);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }

      v14 = v16;
      if (v24 == 5)
      {
        goto LABEL_61;
      }

      if (v24 == 6)
      {
        v14 = v17;
        goto LABEL_61;
      }
    }

    v9 = 0;
LABEL_62:
    if (accphr_getInstr(2, a3, a4))
    {
      v10 = mosyntbase_WString(a1, " = ", 0);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = mosyntbase_WString(a1, &v27, 21);
      }

      goto LABEL_65;
    }

LABEL_66:
    v25 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v22 = *MEMORY[0x1E69E9840];

  return mosyntbase_WString(a1, " = default", 0);
}

uint64_t mosyntkbaccphr_WritePromTemplate(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = mosyntbase_WString(a1, "<prom =", 0);
  if ((result & 0x80000000) == 0)
  {
    Children = accphr_getChildren(1, a3, a4);
    if (Children == accphr_Nil())
    {
LABEL_6:

      return mosyntbase_WStringLn(a1, " >", 0);
    }

    else
    {
      while (1)
      {
        HIDWORD(v10) = 0;
        LODWORD(v10) = 0;
        *(&v10 + 4) = accphr_getNode(2, a3, Children);
        result = mosyntbase_WriteMessage(a1, " [%i] ", 0, "", 0, "", 0, "", v10);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, Children);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        Children = accphr_getNode(8, a3, Children);
        if (Children == accphr_Nil())
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_PhraseTypeToString(int a1, uint64_t a2, int a3)
{
  v5 = 0;
  if ((a1 - 1) > 8)
  {
    v3 = "";
  }

  else
  {
    v3 = off_1E81A3E18[a1 - 1];
  }

  return mosyntbase_CCopy(v3, 0, a2, a3, &v5);
}

uint64_t mosyntkbaccphr_StringToPhraseType(uint64_t a1, unsigned __int8 *a2, int a3, int *a4)
{
  if (mosyntbase_CEqual(a2, a3, "P", 0))
  {
    v8 = 1;
LABEL_19:
    *a4 = v8;
    return 0;
  }

  if (mosyntbase_CEqual(a2, a3, "T", 0))
  {
    v8 = 2;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "S", 0))
  {
    v8 = 3;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "Y", 0))
  {
    v8 = 4;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "W", 0))
  {
    v8 = 5;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AI", 0))
  {
    v8 = 6;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AM", 0))
  {
    v8 = 7;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AF", 0))
  {
    v8 = 8;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "E", 0))
  {
    v8 = 9;
    goto LABEL_19;
  }

  return mosyntbase_WriteDevelMessage(a1, "***** illegal phrase type '%s'\\n", 0, a2, a3, "", 0, "", 0, 0, 0, 0);
}

uint64_t mosyntkbaccphr_SimplifiedPhraseType(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_1C37BD594[a1 - 1];
  }
}

uint64_t mosyntkbfst_GetFirstSameInSymPair(__int16 *a1, __int16 a2, uint64_t a3, BOOL *a4)
{
  fst_firstSamePair(a1, a2, a3);
  *a4 = v5 != 0;
  return 0;
}

uint64_t mosyntkbfst_OutSym(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  v3 = 0;
  fst_getPair(a1, a2, &v4 + 1, &v4, &v3);
  return v4;
}

uint64_t WritePair(uint64_t a1, void *a2, int a3, uint64_t a4, _DWORD *a5, int a6)
{
  v14 = 0;
  v13 = 0;
  fst_getPair(a4, a5, &v14 + 1, &v14, &v13);
  if ((a6 | 2) == 2)
  {
    if (HIWORD(v14))
    {
      result = mosyntbase_WString(a1, "", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (a3)
      {
        result = mosyntkbsymtab_WriteGraphSym(a1, a2, SHIWORD(v14));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = mosyntkbsymtab_WritePhonSym(a1, a2, SHIWORD(v14));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v11 = "";
    }

    else
    {
      v11 = "@";
    }

    result = mosyntbase_WString(a1, v11, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  if (a6 == 2)
  {
    result = mosyntbase_WString(a1, "/", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else if ((a6 - 1) > 1)
  {
    return result;
  }

  if (!v14)
  {
    v12 = "@";
    return mosyntbase_WString(a1, v12, 0);
  }

  result = mosyntbase_WString(a1, "", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!a3)
  {
    result = mosyntkbsymtab_WritePhonSym(a1, a2, v14);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = mosyntkbsymtab_WriteGraphSym(a1, a2, v14);
  if ((result & 0x80000000) == 0)
  {
LABEL_23:
    v12 = "";
    return mosyntbase_WString(a1, v12, 0);
  }

  return result;
}

uint64_t mosyntkbsgram_NilIter(void *a1)
{
  *a1 = 0;
  a1[1] = -1;
  return 0;
}

uint64_t mosyntkbsgram_StartCons(_DWORD *a1)
{
  v2 = 0;
  sgram_GetStartCons(a1, &v2);
  return v2;
}

uint64_t mosyntkbsgram_GetFirstEmptyRule(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  v4 = 0;
  sgram_GetFirstEmptyRule(a1, a2, a3, &v5, &v4);
  return 0;
}

uint64_t mosyntkbsgram_GetNextEmptyRule(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = 0;
  v4 = 0;
  sgram_GetNextEmptyRule(a2, a3, &v5, &v4);
  return 0;
}

uint64_t mosyntkbsgram_GetRuleFeatLists(uint64_t *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  sgram_GetRuleFeatLists(a1, v15, v13, v11);
  v7 = v15[0];
  if (SLOWORD(v15[0]) >= 1)
  {
    memcpy(a2 + 1, v15 + 2, 2 * LOWORD(v15[0]));
  }

  *a2 = v7;
  v8 = v13[0];
  if (SLOWORD(v13[0]) >= 1)
  {
    memcpy(a3 + 1, v13 + 2, 2 * LOWORD(v13[0]));
  }

  *a3 = v8;
  v9 = v11[0];
  if (SLOWORD(v11[0]) >= 1)
  {
    memcpy(a4 + 1, v11 + 2, 2 * LOWORD(v11[0]));
  }

  *a4 = v9;
  return 0;
}

uint64_t mosyntkbsgram_GetRuleVisAndCost(_DWORD *a1, _BYTE *a2, _DWORD *a3)
{
  v5 = 0;
  sgram_GetRuleVisAndCost(a1, &v5, a3);
  *a2 = v5;
  return 0;
}

uint64_t sgram_CloseRiff(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a1)
  {
    LODWORD(result) = ssftriff_reader_ObjClose(*a1, a2, a3, a4, a5, a6, a7, a8);
    if (v8 >= 0)
    {
      result = result;
    }

    else
    {
      result = v8;
    }

    *a1 = 0;
  }

  else if (a2 < 0)
  {
    return a2;
  }

  else
  {
    return 2371887111;
  }

  return result;
}

uint64_t sgram_ReadFromRiff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = -1923080188;
  if (!a2)
  {
    return 2371887111;
  }

  result = openChunk(a1, "GRAM", a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v56 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  HashTab = ssftriff_reader_OpenChunk(a1, &v58, &v57, &v56, v12, v13, v14, v15);
  if (HashTab < 0)
  {
LABEL_18:
    v8 = HashTab;
    goto LABEL_21;
  }

  if (!(v58 ^ 0x53445247 | v59) && v57 == 44)
  {
    v17 = v56;
    *a2 = *v56;
    *(a2 + 8) = v17[1];
    *(a2 + 32) = v17[2];
    *(a2 + 56) = v17[3];
    *(a2 + 80) = v17[4];
    *(a2 + 104) = v17[5];
    *(a2 + 128) = v17[6];
    *(a2 + 160) = v17[7];
    *(a2 + 136) = v17[8];
    *(a2 + 208) = v17[9];
    *(a2 + 184) = v17[10];
    HashTab = ssftriff_reader_CloseChunk(a1);
    if ((HashTab & 0x80000000) == 0)
    {
      HashTab = detachChunk(a1, "GRFL", (a2 + 16), (a2 + 24), v18, v19, v20, v21);
      if ((HashTab & 0x80000000) == 0)
      {
        HashTab = detachChunk(a1, "GRER", (a2 + 40), (a2 + 48), v22, v23, v24, v25);
        if ((HashTab & 0x80000000) == 0)
        {
          HashTab = openChunk(a1, "GRRU", v26, v27, v28, v29, v30, v31);
          if ((HashTab & 0x80000000) == 0)
          {
            v36 = detachChunk(a1, "GRHE", (a2 + 64), (a2 + 72), v32, v33, v34, v35);
            if ((v36 & 0x80000000) == 0)
            {
              v36 = detachChunk(a1, "GRHS", (a2 + 88), (a2 + 96), v37, v38, v39, v40);
              if ((v36 & 0x80000000) == 0)
              {
                v36 = detachChunk(a1, "GRHS", (a2 + 112), (a2 + 120), v41, v42, v43, v44);
              }
            }

            v8 = v36;
            v45 = ssftriff_reader_CloseChunk(a1);
            if (v8 >= 0)
            {
              v8 = v45;
            }

            if (v8 < 0)
            {
              goto LABEL_21;
            }

            HashTab = sgram_ReadHashTab(a1, "GRSE", (a2 + 136), v46, v47, v48, v49, v50);
            if ((HashTab & 0x80000000) == 0)
            {
              HashTab = sgram_ReadHashTab(a1, "GRRE", (a2 + 184), v51, v52, v53, v54, v55);
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

  ssftriff_reader_CloseChunk(a1);
LABEL_21:
  LODWORD(result) = ssftriff_reader_CloseChunk(a1);
  if (v8 >= 0)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t sgram_ReleaseData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2371887111;
  }

  v16 = ssftriff_reader_ReleaseChunkData(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = ssftriff_reader_ReleaseChunkData(v17, v9, v10, v11, v12, v13, v14, v15);
    if (v16 >= 0)
    {
      v16 = v18;
    }
  }

  v19 = ssftriff_reader_ReleaseChunkData(*(a1 + 64), v9, v10, v11, v12, v13, v14, v15);
  if (v16 >= 0)
  {
    v16 = v19;
  }

  v27 = ssftriff_reader_ReleaseChunkData(*(a1 + 88), v20, v21, v22, v23, v24, v25, v26);
  if (v16 >= 0)
  {
    v16 = v27;
  }

  v35 = ssftriff_reader_ReleaseChunkData(*(a1 + 112), v28, v29, v30, v31, v32, v33, v34);
  if (v16 >= 0)
  {
    v16 = v35;
  }

  v43 = sgram_ReleaseHashTab(a1 + 136, v36, v37, v38, v39, v40, v41, v42);
  if (v16 >= 0)
  {
    v16 = v43;
  }

  LODWORD(result) = sgram_ReleaseHashTab(a1 + 184, v44, v45, v46, v47, v48, v49, v50);
  if (v16 >= 0)
  {
    return result;
  }

  else
  {
    return v16;
  }
}

uint64_t sgram_ReleaseHashTab(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = ssftriff_reader_ReleaseChunkData(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v11, a2, a3, a4, a5, a6, a7, a8);
    if (v10 >= 0)
    {
      return v12;
    }

    else
    {
      return v10;
    }
  }

  return v10;
}

uint64_t openChunk(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v13 = 0;
  *__s1 = 0;
  v12 = 0;
  v10 = ssftriff_reader_OpenChunk(a1, __s1, &v13, &v12, a5, a6, a7, a8);
  if ((v10 & 0x80000000) == 0 && strcmp(__s1, a2))
  {
    ssftriff_reader_CloseChunk(a1);
    return 2371887108;
  }

  return v10;
}

uint64_t detachChunk(uint64_t a1, const char *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v20 = 0;
  *__s1 = 0;
  v12 = ssftriff_reader_OpenChunk(a1, __s1, &v20, a4, a5, a6, a7, a8);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (!strcmp(__s1, a2))
  {
    if (!v20)
    {
      return ssftriff_reader_CloseChunk(a1);
    }

    v18 = ssftriff_reader_DetachChunkData(a1, a3, a4, v13, v14, v15, v16, v17);
    v12 = ssftriff_reader_CloseChunk(a1);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    return v12;
  }

  ssftriff_reader_CloseChunk(a1);
  return 2371887108;
}

uint64_t sgram_ReadHashTab(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = openChunk(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    v15 = detachChunk(a1, "GRHE", a3 + 1, a3 + 2, v11, v12, v13, v14);
    if ((v15 & 0x80000000) == 0)
    {
      v15 = detachChunk(a1, "GRHS", a3 + 4, a3 + 5, v16, v17, v18, v19);
    }

    v20 = v15;
    LODWORD(result) = ssftriff_reader_CloseChunk(a1);
    if (v20 >= 0)
    {
      return result;
    }

    else
    {
      return v20;
    }
  }

  return result;
}

uint64_t wgram_CloseRiff(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a1)
  {
    LODWORD(result) = ssftriff_reader_ObjClose(*a1, a2, a3, a4, a5, a6, a7, a8);
    if (v8 < 0)
    {
      result = v8;
    }

    else
    {
      result = result;
    }

    *a1 = 0;
  }

  else if (a2 < 0)
  {
    return a2;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t wgram_ReadFromRiff(_WORD *a1, int a2, uint64_t a3, uint64_t *a4)
{
  v34 = 0;
  inited = InitRsrcFunction(a1, a2, &v34);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v34 + 8), 1, 344);
  *a4 = v7;
  if (!v7)
  {
    return 2371887114;
  }

  v12 = v7;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v17 = ssftriff_reader_OpenChunk(a3, &v36, &v35, 0, v8, v9, v10, v11);
  if ((v17 & 0x80000000) == 0)
  {
    if (!(v36 ^ 0x4741464E | v37))
    {
      v41 = 0;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      HashTab = ssftriff_reader_OpenChunk(a3, &v40, &v39, &v38, v13, v14, v15, v16);
      if ((HashTab & 0x80000000) == 0)
      {
        if (!(v40 ^ 0x5341464E | v41))
        {
          v19 = v38;
          *(v12 + 256) = *v38;
          *(v12 + 260) = v19[1];
        }

        HashTab = ssftriff_reader_CloseChunk(a3);
        if ((HashTab & 0x80000000) == 0)
        {
          HashTab = wgram_ReadHashTab(a3, v12 + 264, v20, v21, v22, v23, v24, v25);
          if ((HashTab & 0x80000000) == 0)
          {
            HashTab = wgram_ReadHashTab(a3, v12 + 304, v26, v27, v28, v29, v30, v31);
          }
        }
      }

      LODWORD(v17) = HashTab;
    }

    v32 = ssftriff_reader_CloseChunk(a3);
    if (v17 >= 0)
    {
      return v32;
    }

    else
    {
      return v17;
    }
  }

  return v17;
}

uint64_t wgram_ReleaseData(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2371887111;
  }

  v9 = ssftriff_reader_ReleaseChunkData(a1[36], a2, a3, a4, a5, a6, a7, a8);
  v17 = ssftriff_reader_ReleaseChunkData(a1[37], v10, v11, v12, v13, v14, v15, v16);
  if (v9 >= 0)
  {
    v25 = v17;
  }

  else
  {
    v25 = v9;
  }

  v26 = ssftriff_reader_ReleaseChunkData(a1[41], v18, v19, v20, v21, v22, v23, v24);
  v34 = ssftriff_reader_ReleaseChunkData(a1[42], v27, v28, v29, v30, v31, v32, v33);
  if (v26 >= 0)
  {
    v35 = v34;
  }

  else
  {
    v35 = v26;
  }

  if (v25 >= 0)
  {
    return v35;
  }

  else
  {
    return v25;
  }
}

uint64_t wgram_ReadHashTab(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v14 = ssftriff_reader_OpenChunk(a1, &v41, &v40, &v39, a5, a6, a7, a8);
  if ((v14 & 0x80000000) == 0)
  {
    if (!(v41 ^ 0x42544854 | v42))
    {
      v46 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      v15 = ssftriff_reader_OpenChunk(a1, &v45, &v44, &v43, v10, v11, v12, v13);
      if (v15 < 0)
      {
        goto LABEL_18;
      }

      if (!(v45 ^ 0x44544854 | v46))
      {
        v16 = v43;
        *a2 = *v43;
        *(a2 + 4) = v16[1];
      }

      v15 = ssftriff_reader_CloseChunk(a1);
      if (v15 < 0)
      {
LABEL_18:
        LODWORD(v14) = v15;
      }

      else
      {
        v46 = 0;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        LODWORD(v14) = ssftriff_reader_OpenChunk(a1, &v45, &v44, &v43, v17, v18, v19, v20);
        if ((v14 & 0x80000000) == 0)
        {
          if (!(v45 ^ 0x53544854 | v46))
          {
            LODWORD(v14) = ssftriff_reader_DetachChunkData(a1, (a2 + 24), (a2 + 8), v21, v22, v23, v24, v25);
          }

          v26 = ssftriff_reader_CloseChunk(a1);
          if (v14 >= 0)
          {
            LODWORD(v14) = v26;
          }

          if ((v14 & 0x80000000) == 0)
          {
            v46 = 0;
            v44 = 0;
            v45 = 0;
            v43 = 0;
            LODWORD(v14) = ssftriff_reader_OpenChunk(a1, &v45, &v44, &v43, v27, v28, v29, v30);
            if ((v14 & 0x80000000) == 0)
            {
              if (!(v45 ^ 0x45544854 | v46))
              {
                LODWORD(v14) = ssftriff_reader_DetachChunkData(a1, (a2 + 32), (a2 + 16), v31, v32, v33, v34, v35);
              }

              v36 = ssftriff_reader_CloseChunk(a1);
              if (v14 >= 0)
              {
                LODWORD(v14) = v36;
              }
            }
          }
        }
      }
    }

    v37 = ssftriff_reader_CloseChunk(a1);
    if (v14 >= 0)
    {
      return v37;
    }

    else
    {
      return v14;
    }
  }

  return v14;
}

uint64_t kbaux_BuildBrokerString(uint64_t a1, const char *a2, char *a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *v10 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v10);
  if ((result & 0x80000000) == 0)
  {
    auxil_strlcpy(v11, "mosynt_", 0x80uLL);
    auxil_strlcat(v11, a2, 128);
    auxil_strlcat(v11, "_", 128);
    if (auxil_strlcat(v11, *v10, 128) > 0x7F)
    {
      result = 2371887113;
    }

    else
    {
      LODWORD(result) = brokeraux_ComposeBrokerString(a1, v11, 0, 1, *v10, 0, 0, a3, a4);
      if (result >= 0)
      {
        result = result;
      }

      else
      {
        result = result | 0x8D602000;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_VoiceSetup(uint64_t a1)
{
  __c_3 = 0;
  __c = 0;
  v14 = 0;
  v13 = 0;
  result = com_mosynt_UseMosynt(*(a1 + 40), *(a1 + 48), *(a1 + 56), (a1 + 88));
  if ((result & 0x80000000) == 0)
  {
    __c_1 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    *(a1 + 244) = 0;
    if (((*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "keep_stress", &v20, &v19, &v18) & 0x80000000) == 0 && v19 == 1 && v20)
    {
      v3 = *v20;
      v4 = strchr(*v20, v18);
      if (v4)
      {
        *v4 = 0;
        v3 = *v20;
      }

      if (!strcmp(v3, "YES") || !strcmp(v3, "yes"))
      {
        *(a1 + 244) = 1;
      }
    }

    *(a1 + 360) = 0;
    __c_1 = 0;
    result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "orthtrigger", &__c_3, &__c_1, &__c);
    if ((result & 0x80000000) == 0)
    {
      if (__c_1 == 1 && __c_3)
      {
        v5 = strchr(*__c_3, __c);
        if (v5)
        {
          *v5 = 0;
          v6 = *__c_3;
        }

        __strcpy_chk();
      }

      *(a1 + 264) = 0;
      __c_1 = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "prmigexists", &v14) & 0x80000000) == 0 && v14 == 1)
      {
        *(a1 + 264) = 1;
      }

      *(a1 + 248) = 0;
      __c_1 = 0;
      result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &__c_3, &__c_1, &__c);
      if ((result & 0x80000000) == 0)
      {
        if (__c_1 == 1 && __c_3 && **__c_3 == 49)
        {
          *(a1 + 248) = 1;
        }

        *(a1 + 252) = 0;
        __c_1 = 0;
        result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "docclassmap", &__c_3, &__c_1, &__c);
        if ((result & 0x80000000) == 0)
        {
          if (__c_1 == 1 && __c_3 && __PAIR64__((*__c_3)[1], **__c_3) == 0x6500000079 && (*__c_3)[2] == 115)
          {
            *(a1 + 252) = 1;
          }

          *(a1 + 256) = 0;
          __c_1 = 0;
          result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "feGlobaluseFullPOS", &__c_3, &__c_1, &__c);
          if ((result & 0x80000000) == 0)
          {
            if (__c_1 == 1 && __c_3 && **__c_3 == 49)
            {
              *(a1 + 256) = 1;
            }

            *(a1 + 260) = 0;
            if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v13) & 0x80000000) == 0 && v13 && *v13)
            {
              *(a1 + 260) = 1;
            }

            if ((*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "global") == 2)
            {
              *(a1 + 260) = 1;
            }

            if (*(a1 + 88) != 1 || (v20 = 0, result = com_mosynt_GetCfgParamVal(*(a1 + 40), *(a1 + 48), *(a1 + 56), "mosynt_enablegraphsymcache", "yes", &v20), (result & 0x80000000) == 0) && (v7 = strcmp(v20, "yes") == 0, result = kbsymtab_LoadData(*(a1 + 296), *(a1 + 304), *(a1 + 320), *(a1 + 328), (a1 + 336), v7), (result & 0x80000000) == 0) && (result = fst_LoadData(*(a1 + 296), *(a1 + 304), (a1 + 344)), (result & 0x80000000) == 0))
            {
              result = com_depes_InitLayers(*a1, a1 + 96);
              if ((result & 0x80000000) == 0)
              {
                *(a1 + 224) = 0x3000200010000;
                *(a1 + 232) = 4;
                if (*(a1 + 88) || *(a1 + 264))
                {
                  v8 = 8;
                  v9 = 7;
                  v10 = 6;
                  v11 = 5;
                }

                else
                {
                  v11 = 0;
                  v8 = 7;
                  v9 = 6;
                  v10 = 5;
                }

                *(a1 + 234) = v11;
                *(a1 + 238) = v10;
                *(a1 + 240) = v9;
                v12 = v8 - (*(a1 + 248) == 0);
                *(a1 + 236) = v12;
                *(a1 + 106) = v12 + 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_global_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v5 = 2316312583;
  v25 = 0;
  v26 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v28);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v28 + 8), 1, 408);
      v17 = v28;
      if (v12)
      {
        v18 = v12;
        v19 = heap_Calloc(*(v28 + 8), 1, 1040);
        *(v18 + 312) = v19;
        if (v19)
        {
          *v19 = a3;
          v19[1] = a4;
          Object = objc_GetObject(*(v28 + 48), "LINGDB", &v27);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_14;
          }

          *(v18 + 8) = *(v27 + 8);
          Object = objc_GetObject(*(v28 + 48), "FE_DEPES", &v26);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_14;
          }

          v21 = v26;
          *(v18 + 32) = *(v26 + 8);
          *(v18 + 16) = *(v21 + 16);
          Object = objc_GetObject(*(v28 + 48), "FE_DCTLKP", &v25);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_14;
          }

          v22 = v25;
          *(v18 + 56) = *(v25 + 8);
          *(v18 + 40) = *(v22 + 16);
          *v18 = v28;
          *(v18 + 268) = 0;
          *(v18 + 296) = a3;
          *(v18 + 304) = a4;
          *(v18 + 320) = a1;
          *(v18 + 328) = a2;
          *(v18 + 400) = 0;
          *(v18 + 368) = 0u;
          *(v18 + 384) = 0u;
          Object = hlp_VoiceSetup(v18);
          if ((Object & 0x80000000) != 0 || (Object = globalbeadapt_SetFEBOOLKeyword(v18, "mdesegpos_morpheme_processing", (v18 + 272), 0), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v18, "feGlobalmergemorphemes", (v18 + 276), 1), (Object & 0x80000000) != 0))
          {
LABEL_14:
            v5 = Object;
          }

          else
          {
            v5 = globalbeadapt_SetFEBOOLKeyword(v18, "feGlobalmergemorphemes", (v18 + 280), 1);
            if ((v5 & 0x80000000) == 0)
            {
              v23 = 62344;
LABEL_18:
              *a5 = v18;
              *(a5 + 8) = v23;
              return v5;
            }
          }

LABEL_17:
          fe_global_ObjClose(*a5, *(a5 + 8));
          v18 = 0;
          v23 = 0;
          goto LABEL_18;
        }

        v17 = v28;
      }

      log_OutPublic(*(v17 + 32), "FE_GLOBAL", 38000, 0, v13, v14, v15, v16, v25);
      v5 = 2316312586;
      goto LABEL_17;
    }

    return inited;
  }

  return v5;
}

uint64_t fe_global_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62344, 408);
  if ((result & 0x80000000) != 0)
  {
    return 2316312584;
  }

  if (a1)
  {
    hlp_UnloadSymTabs(a1);
    if (*(a1 + 344))
    {
      fst_UnloadData(*(a1 + 296), *(a1 + 304), (a1 + 344));
      *(a1 + 344) = 0;
    }

    if (*(a1 + 8))
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v4 = *(a1 + 312);
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_global_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62344, 408);
  if ((result & 0x80000000) != 0)
  {
    return 2316312584;
  }

  if (a1)
  {
    result = hlp_UnloadSymTabs(a1);
    if ((result & 0x80000000) == 0)
    {
      if (!*(a1 + 344) || (result = fst_UnloadData(*(a1 + 296), *(a1 + 304), (a1 + 344)), *(a1 + 344) = 0, (result & 0x80000000) == 0))
      {
        result = hlp_VoiceSetup(a1);
        if ((result & 0x80000000) == 0)
        {
          result = globalbeadapt_SetFEBOOLKeyword(a1, "mdesegpos_morpheme_processing", (a1 + 272), 0);
          if ((result & 0x80000000) == 0)
          {
            result = globalbeadapt_SetFEBOOLKeyword(a1, "feGlobalmergemorphemes", (a1 + 276), 1);
            if ((result & 0x80000000) == 0)
            {

              return globalbeadapt_SetFEBOOLKeyword(a1, "feGlobalmergemorphemes", (a1 + 280), 1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UnloadSymTabs(uint64_t a1)
{
  if (!*(a1 + 336))
  {
    return 0;
  }

  result = kbsymtab_UnloadData(*(a1 + 296), *(a1 + 304), *(a1 + 320), *(a1 + 328), (a1 + 336));
  *(a1 + 336) = 0;
  return result;
}

uint64_t fe_global_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62344, 408);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2316312584;
  }
}

uint64_t fe_global_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v91[16] = *MEMORY[0x1E69E9840];
  v75 = 0;
  __s1 = 0;
  v73 = 0;
  if ((safeh_HandleCheck(a1, a2, 62344, 408) & 0x80000000) != 0)
  {
    v10 = 2316312584;
    goto LABEL_188;
  }

  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  *a5 = 1;
  v9 = (*(*(a1 + 32) + 144))(*(a1 + 16), *(a1 + 24), a1 + 104);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  *(a1 + 352) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "foreignpron", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
  {
    *(a1 + 352) = 1;
  }

  *(a1 + 356) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "nlucompatvc6be", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
  {
    *(a1 + 356) = 1;
  }

  v10 = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v78 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(*(a1 + 8) + 184))(a3, a4, HIWORD(v78), 0, &v75) & 0x80000000) == 0 && v75 == 1)
  {
    v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v78), 0, &v79, &v78);
    if ((v10 & 0x80000000) == 0 && v78 >= 2u)
    {
      if (*(a1 + 88))
      {
        v11 = heap_Calloc(*(*a1 + 8), 5000, 1);
        *(a1 + 368) = v11;
        v16 = *a1;
        if (v11)
        {
          v17 = heap_Calloc(*(v16 + 8), 5000, 1);
          *(a1 + 376) = v17;
          v16 = *a1;
          if (v17)
          {
            v18 = heap_Calloc(*(v16 + 8), 5000, 1);
            *(a1 + 384) = v18;
            v16 = *a1;
            if (v18)
            {
              v19 = heap_Calloc(*(v16 + 8), 5000, 1);
              *(a1 + 392) = v19;
              v16 = *a1;
              if (v19)
              {
                v20 = heap_Calloc(*(v16 + 8), 8, 8);
                *(a1 + 400) = v20;
                if (v20)
                {
                  for (i = 0; i != 64; i += 8)
                  {
                    *(*(a1 + 400) + i) = 0;
                  }

                  v22 = 0;
                  while (1)
                  {
                    *(*(a1 + 400) + v22) = heap_Calloc(*(*a1 + 8), 5000, 1);
                    if (!*(*(a1 + 400) + v22))
                    {
                      break;
                    }

                    v22 += 8;
                    if (v22 == 64)
                    {
                      goto LABEL_27;
                    }
                  }
                }

                v16 = *a1;
              }
            }
          }
        }

        log_OutPublic(*(v16 + 32), "FE_GLOBAL", 38000, 0, v12, v13, v14, v15, v71);
        v10 = 2316312586;
        goto LABEL_173;
      }

LABEL_27:
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v86 = 0;
      v91[0] = 0;
      v83 = 0;
      v84 = 0;
      __s = 0;
      v81 = 0;
      v9 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v78), &v90 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      LOWORD(v88) = 0;
      v87 = 0;
      v23 = HIWORD(v90);
      if (!HIWORD(v90))
      {
        goto LABEL_130;
      }

      v24 = 0;
LABEL_30:
      v9 = (*(*(a1 + 8) + 168))(a3, a4, v23, 0, 1, &v86, &v89 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      if (v86 - 9 >= 6 && v86 != 4)
      {
        if (v86 != 15)
        {
          goto LABEL_89;
        }

        v24 = HIWORD(v90);
        v9 = (*(*(a1 + 8) + 120))(a3, a4, HIWORD(v90), &v90 + 2);
        goto LABEL_41;
      }

      v80 = 0;
      v9 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v90), 1, 1, &v88, &v89 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      v9 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v90), 2, 1, &v87, &v89 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      v26 = (*(*(a1 + 8) + 184))(a3, a4, HIWORD(v90), 14, &v80);
      v27 = *(a1 + 8);
      if (v26 < 0 || !v80)
      {
        v9 = (*(v27 + 120))(a3, a4, HIWORD(v90), &v90 + 2);
        goto LABEL_41;
      }

      v9 = (*(v27 + 176))(a3, a4, HIWORD(v90), 14, &__s, &v89 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      if (*(a1 + 356) != 1)
      {
        goto LABEL_79;
      }

      v72 = v24;
      v28 = __s;
      v29 = strlen(__s);
      v30 = v29;
      for (j = __s; ; ++j)
      {
        if (*j == 59)
        {
          *j = 0;
        }

        else if (!*j)
        {
          v32 = &v28[v29];
          v33 = v28;
          if (!v29)
          {
            goto LABEL_78;
          }

          while (2)
          {
            if (!strncmp(v33, "PHR:", 4uLL))
            {
              v34 = v33 + 4;
              v35 = strlen(v33 + 4);
              if (v35 >= 3)
              {
                v36 = *v34 - 66;
                v37 = v36 > 0xD;
                v38 = (1 << v36) & 0x2081;
                v39 = v37 || v38 == 0;
                if (!v39 && v33[5] == 45)
                {
                  v40 = v35 - 2;
                  memmove(v33 + 4, v33 + 6, v35 - 2);
                  *&v34[v40] = 0;
                }
              }

LABEL_63:
              v41 = strchr(v34, 43);
              if (v41 && *v41)
              {
                v42 = (v41 + 1);
                do
                {
                  *(v42 - 1) = 0;
                }

                while (*v42++);
              }
            }

            else if (!strncmp(v33, "POS:", 4uLL))
            {
              v34 = v33 + 4;
              goto LABEL_63;
            }

            if (++v33 != v32)
            {
              continue;
            }

            break;
          }

          v44 = 0;
          v45 = v28;
          do
          {
            v46 = *v45;
            if (*v45)
            {
              if (v44 == 1)
              {
                *v28++ = 59;
                v46 = *v45;
              }

              v44 = 0;
              *v28++ = v46;
            }

            else
            {
              v44 = 1;
            }

            ++v45;
            --v30;
          }

          while (v30);
LABEL_78:
          *v28 = 0;
          v24 = v72;
LABEL_79:
          hlp_NLUStrFind(__s, "BND", &v83, &v81);
          hlp_NLUStrFind(__s, "PRM", &v84, &v81 + 1);
          if (v87 && v24)
          {
            v85[0] = 0;
            if (!v84 || (v85[0] = *v84) == 0 || (v85[1] = 0, v47 = strlen(v85), v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 13, (v47 + 1), v85, &v89), (v9 & 0x80000000) == 0))
            {
              if (!v83)
              {
                goto LABEL_92;
              }

              v48 = *v83;
              if (v48 != 78 && v48 != 87)
              {
                if (v48 == 83)
                {
                  HIWORD(v88) = 200;
                  goto LABEL_91;
                }

                goto LABEL_92;
              }

              HIWORD(v88) = 0;
LABEL_91:
              v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 8, 1, &v88 + 2, &v89);
              if ((v9 & 0x80000000) == 0)
              {
LABEL_92:
                v49 = HIWORD(v90);
                while (1)
                {
                  v9 = (*(*(a1 + 8) + 120))(a3, a4, v49, &v90 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (!HIWORD(v90))
                  {
                    goto LABEL_42;
                  }

                  v9 = (*(*(a1 + 8) + 168))(a3, a4);
                  if ((v9 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v49 = HIWORD(v90);
                  if (!HIWORD(v90))
                  {
                    goto LABEL_42;
                  }

                  if (v86 <= 0xF && ((1 << v86) & 0xFE10) != 0)
                  {
                    v9 = (*(*(a1 + 8) + 168))(a3, a4);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    if (!v83)
                    {
                      goto LABEL_42;
                    }

                    v50 = *v83;
                    if (v50 == 78)
                    {
                      if (v86 != 15)
                      {
                        goto LABEL_42;
                      }

                      v9 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v90), 2, 1, &v87, &v89 + 2);
                      if ((v9 & 0x80000000) == 0)
                      {
                        v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 2, 1, &v87, &v89);
                        if ((v9 & 0x80000000) == 0)
                        {
                          v9 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v90), 4, v91, &v89 + 2);
                          if ((v9 & 0x80000000) == 0)
                          {
                            v51 = strlen(v91[0]);
                            v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 4, (v51 + 1), v91[0], &v89);
                            if ((v9 & 0x80000000) == 0)
                            {
                              v9 = (*(*(a1 + 8) + 120))(a3, a4, HIWORD(v90), &v90);
                              if ((v9 & 0x80000000) == 0)
                              {
                                v9 = (*(*(a1 + 8) + 192))(a3, a4, HIWORD(v90));
                                if ((v9 & 0x80000000) == 0)
                                {
                                  HIWORD(v90) = v90;
                                  goto LABEL_42;
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_172;
                    }

                    if (v86 != 15)
                    {
                      v9 = (*(*(a1 + 8) + 88))(a3, a4, HIWORD(v90), &v90 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v86 = 15;
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 0, 1, &v86, &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 1, 1, &v88, &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 168))(a3, a4, v24, 2, 1, &v87, &v89 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 2, 1, &v87, &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 2, 1, &v88, &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 176))(a3, a4, v24, 4, v91, &v89 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v52 = strlen(v91[0]);
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 4, (v52 + 1), v91[0], &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 4, 2, "P", &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v50 = *v83;
                    }

                    if (v50 == 87)
                    {
                      HIWORD(v88) = 2;
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 7, 1, &v88 + 2, &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      HIWORD(v88) = 0;
                    }

                    else
                    {
                      if (v50 != 83)
                      {
                        goto LABEL_42;
                      }

                      HIWORD(v88) = 1;
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 7, 1, &v88 + 2, &v89);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      HIWORD(v88) = 200;
                    }

                    v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v90), 8, 1, &v88 + 2, &v89);
                    if ((v9 & 0x80000000) == 0)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_172;
                  }
                }
              }
            }

            goto LABEL_172;
          }

LABEL_89:
          v9 = (*(*(a1 + 8) + 120))(a3, a4, HIWORD(v90), &v90 + 2);
LABEL_41:
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_172;
          }

LABEL_42:
          v23 = HIWORD(v90);
          if (!HIWORD(v90))
          {
LABEL_130:
            if (*(a1 + 244))
            {
              v53 = 2;
            }

            else if (*(a1 + 88))
            {
              v53 = 98;
            }

            else
            {
              v53 = 34;
            }

            v9 = (*(*(a1 + 8) + 272))(a3, a4, v53, 3, 0, 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v78), "global", 0, v54, v55);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            if (*(a1 + 88))
            {
              v9 = hlp_SaveLayers(a1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }
            }

            strcpy(v91, "global");
            v56 = strlen(v91);
            if (*(a1 + 352))
            {
              v57 = v56;
              __strcat_chk();
              if (((*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v91) & 0x80000000) != 0)
              {
                *(v91 + v57) = 0;
                v9 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v91);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_172;
                }
              }
            }

            else
            {
              hlp_WriteDepesLayers(a1, "before cgn");
              v9 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v91);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              hlp_WriteDepesLayers(a1, "after cgn");
            }

            if (!*(a1 + 88))
            {
              goto LABEL_155;
            }

            v9 = hlp_ReconstituteLayers(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            hlp_WriteDepesLayers(a1, "after realignment");
            v9 = fe_global_ApplyFSTs(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            v9 = hlp_ReconstituteLayers(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            hlp_WriteDepesLayers(a1, "before be_adapt");
            strcpy(v91, "be_adapt");
            if (!(*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), v91) || (v58 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v91), (v58 & 0x80000000) == 0) || (v10 = v58, (v58 & 0x1FFF) == 4))
            {
              hlp_WriteDepesLayers(a1, "after be_adapt");
LABEL_155:
              v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v77, &v76);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v77[v76] = 0;
              log_OutText(*(*a1 + 32), "FE_GLOBAL", 5, 0, "%s O1: %s", v59, v60, v61, v91);
              v9 = globalbeadapt_DoPostprocessing(a1, v79, &v77, 1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v9 = (*(*(a1 + 8) + 320))(a3, a4, 1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v62 = *(a1 + 272);
              if (!v62 || v62 == 1 && !*(a1 + 276))
              {
                goto LABEL_191;
              }

              v9 = globalbeadapt_OutputMorphemesToLingDBAsWords(a1, a3, a4, HIWORD(v78), v79, *(a1 + 120), v77, &v73);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              if (v73 == 1)
              {
LABEL_191:
                v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v78), v79, v77);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_172;
                }
              }

              if (*(a1 + 272) == 1 && *(a1 + 276) == 1 && (!v73 && (v9 = globalbeadapt_SplitWordRecordsWithSpecialChar(a1, a3, a4, HIWORD(v78), v79, (a1 + 360)), (v9 & 0x80000000) != 0) || (v9 = globalbeadapt_RemoveSpecialChar(a1, a3, a4, HIWORD(v78)), (v9 & 0x80000000) != 0)))
              {
LABEL_172:
                v10 = v9;
              }

              else
              {
                v10 = (*(*(a1 + 8) + 272))(a3, a4, 4, 1, 0, 0);
                if ((v10 & 0x80000000) == 0 && *(a1 + 360))
                {
                  v9 = fe_global_CleanTriggerOrth(a1, a3, a4, HIWORD(v78));
                  goto LABEL_172;
                }
              }
            }

LABEL_173:
            com_depes_FreeLayers(*a1, a1 + 96);
            if (*(a1 + 88))
            {
              v63 = *(a1 + 368);
              if (v63)
              {
                heap_Free(*(*a1 + 8), v63);
                *(a1 + 368) = 0;
              }

              v64 = *(a1 + 376);
              if (v64)
              {
                heap_Free(*(*a1 + 8), v64);
                *(a1 + 376) = 0;
              }

              v65 = *(a1 + 384);
              if (v65)
              {
                heap_Free(*(*a1 + 8), v65);
                *(a1 + 384) = 0;
              }

              v66 = *(a1 + 392);
              if (v66)
              {
                heap_Free(*(*a1 + 8), v66);
                *(a1 + 392) = 0;
              }

              if (*(a1 + 400))
              {
                for (k = 0; k != 64; k += 8)
                {
                  v68 = *(*(a1 + 400) + k);
                  if (v68)
                  {
                    heap_Free(*(*a1 + 8), v68);
                    *(*(a1 + 400) + k) = 0;
                  }
                }

                heap_Free(*(*a1 + 8), *(a1 + 400));
                *(a1 + 400) = 0;
              }
            }

            break;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_188:
  v69 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t hlp_SaveLayers(uint64_t a1)
{
  __src = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  v2 = 0;
  v7 = 0;
  do
  {
    v3 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), v2, &__src, &v7);
    if ((v3 & 0x80000000) != 0)
    {
      break;
    }

    v4 = __src[v7];
    __src[v7] = 0;
    strncpy(*(*(a1 + 400) + 8 * v2), __src, 0x1387uLL);
    *(*(*(a1 + 400) + 8 * v2) + 4999) = 0;
    __src[v7] = v4;
    ++v2;
  }

  while (v2 < *(a1 + 104));
  return v3;
}

uint64_t hlp_WriteDepesLayers(uint64_t result, char *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (*(result + 88))
  {
    v3 = result;
    result = mosynt_TraceString(*(result + 312), "\n", 1u);
    if ((result & 0x80000000) == 0)
    {
      v14 = 0;
      v13 = 0;
      result = (*(*(v3 + 32) + 128))(*(v3 + 16), *(v3 + 24), 0, &v14, &v13);
      if ((result & 0x80000000) == 0)
      {
        result = Utf8_LengthInUtf8chars(v14, v13);
        v15[0] = 0;
        v15[1] = 0;
        v4 = result;
        if (result)
        {
          v5 = "\n";
          while (1)
          {
            v6 = v4 <= 0x32 ? result : 50;
            if (*(v3 + 104))
            {
              break;
            }

LABEL_24:
            result = mosynt_TraceString(*(v3 + 312), v5, 1u);
            if ((result & 0x80000000) == 0)
            {
              result = v4 - v6;
              v4 = (v4 - v6);
              if (v4)
              {
                continue;
              }
            }

            goto LABEL_28;
          }

          v7 = 0;
          while (1)
          {
            result = (*(*(v3 + 32) + 128))(*(v3 + 16), *(v3 + 24), v7, &v14, &v13);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 312), a2, 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 312), " L", 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceInt(*(v3 + 312), v7 + 1, 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 312), ": ", 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (v6)
            {
              v8 = v5;
              v9 = 0;
              v10 = *(v15 + v7);
              while (1)
              {
                result = utf8_getUTF8Char(v14, v10, __s);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                result = mosynt_TraceString(*(v3 + 312), __s, 1u);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                v10 += strlen(__s);
                if (++v9 >= v6)
                {
                  *(v15 + v7) = v10;
                  v5 = v8;
                  goto LABEL_22;
                }
              }

              *(v15 + v7) = v10;
              break;
            }

LABEL_22:
            result = mosynt_TraceString(*(v3 + 312), v5, 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (++v7 >= *(v3 + 104))
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

LABEL_28:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_ReconstituteLayers(uint64_t a1)
{
  v11 = 0;
  __src = 0;
  v2 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &__src, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = __src[v11];
    __src[v11] = 0;
    v4 = __src;
    strncpy(**(a1 + 400), __src, 0x1387uLL);
    *(**(a1 + 400) + 4999) = 0;
    v4[v11] = v3;
    if (*(a1 + 104) >= 2u)
    {
      v5 = 1;
      while (1)
      {
        v6 = v5 == 1 ? 126 : 0;
        v7 = mosynt_AlignFieldsWithRef(**(a1 + 400), *(*(a1 + 400) + 8 * v5), *(a1 + 384), 0x1388u, v6);
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        strcpy(*(*(a1 + 400) + 8 * v5), *(a1 + 384));
        v8 = strlen(*(a1 + 384));
        v2 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), v5, *(a1 + 384), v8);
        if ((v2 & 0x80000000) == 0 && ++v5 < *(a1 + 104))
        {
          continue;
        }

        return v2;
      }

      return v7;
    }
  }

  return v2;
}

uint64_t fe_global_ApplyFSTs(uint64_t a1)
{
  v21 = 0;
  v18 = 0;
  result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v21);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v3 = *v21;
  result = mosynt_NormalizeSpaceFields(**(a1 + 400), *(a1 + 384), 0x1388u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = 0;
  LOWORD(v5) = 0;
  while (1)
  {
    v6 = *(a1 + 384);
    v7 = v6[v4];
    if (v7 == 32)
    {
      if (v5 >= v4)
      {
        LOBYTE(v7) = 32;
      }

      else
      {
        v5 = v5;
        do
        {
          *(*(a1 + 384) + v5++) = 126;
        }

        while (v4 != v5);
        v6 = *(a1 + 384);
        LOBYTE(v7) = v6[v4];
        LOWORD(v5) = v4;
      }

      goto LABEL_13;
    }

    if (v7 == 126)
    {
      goto LABEL_14;
    }

    if (!v6[v4])
    {
      break;
    }

LABEL_13:
    v6[v5] = v7;
    LOWORD(v5) = v5 + 1;
LABEL_14:
    ++v4;
  }

  if (v5 < v4)
  {
    v8 = v5;
    do
    {
      *(*(a1 + 384) + v8++) = 126;
    }

    while (v4 != v8);
    v6 = *(a1 + 384);
  }

  mosynt_SubstAllSubstrOcc(v6, "~", " ", *(a1 + 392), 5000);
  result = mosynt_SubstAllSubstrOcc(*(a1 + 392), "¡", "~", *(a1 + 384), 5000);
  if ((result & 0x80000000) == 0)
  {
    v19 = 0;
    v17 = 95;
    v9 = *(a1 + 384);
    if (*v9)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        utf8_getUTF8Char(v9, v11, __s);
        v12 = *(*(*(a1 + 400) + 32) + v10);
        if (v12 < 33 || v3 < 33 || v12 == v3)
        {
          v13 = __s;
        }

        else
        {
          v13 = &v17;
        }

        result = mosynt_App(*(a1 + 392), 5000, &v19, v13, &v18);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v11 += strlen(__s);
        ++v10;
        v9 = *(a1 + 384);
        if (!v9[v11])
        {
          v14 = v19;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v14 = 0;
LABEL_31:
      *(*(a1 + 392) + v14) = 0;
      result = mosynt_SentPhono(*(a1 + 312), *(a1 + 336), *(a1 + 344), *(a1 + 392), *(*(a1 + 400) + 40), *(a1 + 368), 5000);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_SubstAllSubstrOcc(*(a1 + 368), "~", "¡", *(a1 + 392), 5000);
        if ((result & 0x80000000) == 0)
        {
          strcpy(*(a1 + 368), *(a1 + 392));
          v17 = 95;
          v16 = 123;
          result = mosynt_SubstAllSubstrOcc(*(a1 + 368), &v17, &v16, *(a1 + 384), 5000);
          if ((result & 0x80000000) == 0)
          {
            result = mosynt_ReplaceNonSpaceFields(**(a1 + 400), *(a1 + 384), *(a1 + 376), 0x1388u, 126, 1);
            if ((result & 0x80000000) == 0)
            {
              v15 = strlen(*(a1 + 376));
              return (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, *(a1 + 376), v15);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_global_CleanTriggerOrth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  __s1 = 0;
  v22 = 0;
  v20 = 0;
  v8 = (*(*(a1 + 8) + 176))(a2, a3, a4, 0, &__s1, &v24);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(*(a1 + 8) + 176))(a2, a3, a4, 1, &v22, &v20);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = strstr(__s1, (a1 + 360));
    if (v10)
    {
      v11 = v10;
LABEL_5:
      v12 = strlen((a1 + 360));
      v13 = strlen(v11);
      memmove(v11, &v11[v12], v13 - v12 + 1);
      v14 = v20;
      if (v20)
      {
        v15 = v22;
        v16 = (v11 - __s1);
        v17 = (v22 + 12);
        do
        {
          if (*v17 - *(v15 + 12) > v16)
          {
            *v17 -= strlen((a1 + 360));
          }

          v17 += 8;
          --v14;
        }

        while (v14);
      }

      for (i = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v25 + 2); ; i = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v25), &v25 + 2))
      {
        v9 = i;
        if ((i & 0x80000000) != 0)
        {
          break;
        }

        if (!HIWORD(v25))
        {
          v11 = strstr(__s1, (a1 + 360));
          if (v11)
          {
            goto LABEL_5;
          }

          return v9;
        }

        v8 = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v25), 1, 1, &v25, &v24);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        if (v11 - __s1 < v25)
        {
          LOWORD(v25) = v25 - strlen((a1 + 360));
          v8 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v25), 1, 1, &v25, &v23);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }
        }

        v8 = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v25), 2, 1, &v24 + 2, &v24);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        if (v11 - __s1 < HIWORD(v24))
        {
          HIWORD(v24) -= strlen((a1 + 360));
          v8 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v25), 2, 1, &v24 + 2, &v23);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t fe_global_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62344, 408);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2316312584;
  }
}

uint64_t fe_global_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2316312577;
  }

  result = 0;
  *a2 = &IFeGlobal;
  return result;
}

uint64_t fe_global_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2316312583;
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