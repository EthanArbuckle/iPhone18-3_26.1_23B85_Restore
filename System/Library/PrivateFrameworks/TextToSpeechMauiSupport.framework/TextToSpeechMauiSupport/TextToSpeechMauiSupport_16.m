uint64_t CGN_Predict(uint64_t a1, const char *a2, uint64_t a3, void *a4, int *a5)
{
  v29 = 0;
  v30 = 0;
  v10 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 184) * *(a1 + 186));
  v28 = v10;
  if (!v10)
  {
    ErrorResource = err_GenerateErrorResource();
LABEL_16:
    ErrorInternalMsg = ErrorResource;
    goto LABEL_17;
  }

  v11 = v10;
  ErrorResource = PNEW_WordScanner_ConFrom(a1 + 56, a2, a3, &v30);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  v17 = *(a1 + 194);
  v18 = *(a1 + 186);
  ErrorResource = __CGN_CloneWord(a1, v30, &v29);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  v19 = (v11 + 4 * v18 * v17);
  ErrorResource = __CGN_FeaturesCurrent(a1, v29, v19);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v20 = 0;
    do
    {
      v19 += 4 * *(a1 + 186);
      if (WordScanner_NextWord(v30))
      {
        ErrorResource = __CGN_CloneWord(a1, v30, &v29);
        if (ErrorResource)
        {
          goto LABEL_16;
        }

        ErrorResource = __CGN_FeaturesCurrent(a1, v29, v19);
        if (ErrorResource)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v19, &unk_26ECDA830, 4 * *(a1 + 186));
      }

      ++v20;
      v21 = *(a1 + 194);
    }

    while (v20 < v21);
    v11 = v28;
  }

  else
  {
    v21 = 0;
  }

  v25 = *(a1 + 186);
  ErrorResource = WordScanner_ResetFrom(v30, a3);
  if (ErrorResource)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v26 = 0;
    v27 = (v11 + 4 * v21 * v25);
    while (1)
    {
      v27 -= 4 * *(a1 + 186);
      if (WordScanner_PrevWord(v30))
      {
        ErrorResource = __CGN_CloneWord(a1, v30, &v29);
        if (ErrorResource)
        {
          goto LABEL_16;
        }

        ErrorResource = __CGN_FeaturesCurrent(a1, v29, v27);
        if (ErrorResource)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v27, &unk_26ECDA830, 4 * *(a1 + 186));
      }

      ErrorInternalMsg = 0;
      if (++v26 >= *(a1 + 194))
      {
        goto LABEL_17;
      }
    }
  }

  ErrorInternalMsg = 0;
LABEL_17:
  if (v30)
  {
    OOC_PlacementDeleteObject(a1 + 56, v30);
  }

  if (v29)
  {
    heap_Free(*(*(a1 + 48) + 8), v29);
  }

  if (!ErrorInternalMsg)
  {
    if ((fi_predict(*(a1 + 104), &v28, *(a1 + 184), a4, v13, v14, v15, v16) & 0x80000000) != 0)
    {
      v23 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a5) & 0x80000000) == 0)
      {
        ErrorInternalMsg = 0;
        goto LABEL_28;
      }

      v23 = "fi_shape_get_size";
    }

    ErrorInternalMsg = err_GenerateErrorInternalMsg(v23);
  }

LABEL_28:
  if (v28)
  {
    heap_Free(*(*(a1 + 48) + 8), v28);
  }

  return ErrorInternalMsg;
}

uint64_t CGN_UnloadModel(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _CGN_PostFIDeinit(void *a1)
{
  *(a1 + 196) = 0;
  *(a1 + 190) = 0;
  v2 = a1[26];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
  }

  a1[26] = 0;
  return 0;
}

uint64_t _CGN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v12 = "nn_word_lkp_GetInterface";
  }

  else
  {
    v2 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v2(NullHandle) & 0x80000000) == 0)
    {
      v4 = *(*(a1 + 128) + 16);
      v5 = safeh_GetNullHandle();
      if ((v4(v5) & 0x80000000) == 0)
      {
        v14 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v14) & 0x80000000) == 0)
        {
          if (v14 != *(a1 + 196))
          {
            v13 = "word embedding dimension";
            return err_GenerateErrorInternalMsg(v13);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v14) & 0x80000000) == 0)
          {
            if (v14 == *(a1 + 198))
            {
              v6 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 196));
              *(a1 + 168) = v6;
              if (!v6)
              {
                return err_GenerateErrorResource();
              }

              v7 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 198));
              *(a1 + 176) = v7;
              if (!v7)
              {
                return err_GenerateErrorResource();
              }

              v8 = (2 * *(a1 + 194)) | 1;
              *(a1 + 184) = v8;
              if (*(a1 + 112) == v8)
              {
                v9 = cstdlib_strlen(*(a1 + 208));
                *(a1 + 188) = v9;
                v10 = *(a1 + 196) + (*(a1 + 192) + *(a1 + 190)) * *(a1 + 198);
                *(a1 + 186) = v10;
                if (*(a1 + 200))
                {
                  v10 += v9 + 2;
                  *(a1 + 186) = v10;
                }

                if (*(a1 + 116) == v10)
                {
                  return 0;
                }

                v13 = "inshape dimension 2";
              }

              else
              {
                v13 = "inshape dimension 1";
              }
            }

            else
            {
              v13 = "char embedding dimension";
            }

            return err_GenerateErrorInternalMsg(v13);
          }
        }

        v13 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v13);
      }
    }

    v12 = "__pIWordLkp->pfObjOpen";
  }

  return err_GenerateErrorInternalMsg(v12);
}

uint64_t _CGN_PreFIDeinit(void *a1)
{
  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v3))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v4;
    }

    v5 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[19], a1[20], v5, v6))
    {
      (*(a1[16] + 24))(a1[19], a1[20]);
      a1[19] = safeh_GetNullHandle();
      a1[20] = v7;
    }

    a1[16] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    heap_Free(*(a1[6] + 8), v8);
  }

  v9 = a1[22];
  a1[21] = 0;
  if (v9)
  {
    heap_Free(*(a1[6] + 8), v9);
  }

  *(a1 + 182) = 0;
  a1[22] = 0;
  return 0;
}

uint64_t _CGN_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v10 = 0;
  *v11 = 0;
  __s1 = 0;
  *a2 = 0;
  ParamValueUnsignedShort = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "concatenatedLeftChars", 0, (a1 + 190), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "concatenatedRightChars", 3, (a1 + 192), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "wordContextWindow", 5, (a1 + 194), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "wordEmbeddingDimension", 0, (a1 + 196), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v11, "charEmbeddingDimension", 0, (a1 + 198), &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTFeatureEnabled", &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v11, v10, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  *(a1 + 200) = 1;
  if (__s1)
  {
    if (!cstdlib_strcmp(__s1, "False"))
    {
      *(a1 + 200) = 0;
    }

    heap_Free(*(*(a1 + 48) + 8), __s1);
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTLoadList", &v10);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v11, v10, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  v7 = __s1;
  if (!__s1)
  {
    v8 = heap_Alloc(*(*(a1 + 48) + 8), 1);
    __s1 = v8;
    if (!v8)
    {
      ParamValueUnsignedShort = err_GenerateErrorResource();
LABEL_15:
      v5 = ParamValueUnsignedShort;
      goto LABEL_16;
    }

    cstdlib_strcpy(v8, "");
    v7 = __s1;
  }

  v5 = 0;
  *(a1 + 208) = v7;
  *a2 = 1;
LABEL_16:
  if (*v11)
  {
    OOC_PlacementDeleteObject(a1 + 56, *v11);
  }

  if (v10)
  {
    heap_Free(*(*(a1 + 48) + 8), v10);
  }

  return v5;
}

uint64_t __CGN_GetParamValueUnsignedShort(uint64_t a1, uint64_t a2, char *__s, int a4, _WORD *a5, uint64_t *a6)
{
  result = __CGN_FullParamName(a1, __s, a6);
  if (!result)
  {
    v11 = 0;
    result = Params_GetCfgParamValueInteger(a2, *a6, a4, &v11);
    if (!result)
    {
      *a5 = v11;
    }
  }

  return result;
}

uint64_t __CGN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "nn_cgn_");
    cstdlib_strcat(v11, *(a1 + 120));
    cstdlib_strcat(v11, "_");
    cstdlib_strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t PNEW_CGN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 216, &v14);
  result = v14;
  if (!v14)
  {
    result = CGN_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t __CGN_CloneWord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = WordScanner_WordLen(a2);
  v7 = *(*(a1 + 48) + 8);
  v8 = v6;
  v9 = heap_Realloc(v7, *a3, v6 + 1);
  if (v9)
  {
    v10 = v9;
    cstdlib_strncpy(v9, (*(a2 + 8) + *(a2 + 18)), v8);
    cstdlib_strcpy(&v10[v8], "");
    *a3 = v10;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t __CGN_FeaturesCurrent(uint64_t a1, const char *a2, char *a3)
{
  v6 = a2;
  do
  {
    if (!__CGN_IsPunct(v6))
    {
      v8 = cstdlib_strlen(a2);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, v8);
      v10 = v8;
      if (__CGN_IsPunct(&a2[PreviousUtf8Offset]))
      {
        v11 = PreviousUtf8Offset;
        do
        {
          v10 = PreviousUtf8Offset;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, v11);
          v11 = PreviousUtf8Offset;
        }

        while (__CGN_IsPunct(&a2[PreviousUtf8Offset]));
      }

      i = 0;
      if (*(a1 + 200))
      {
        v12 = &a3[4 * *(a1 + 186) + -4 * (*(a1 + 188) + 2)];
        cstdlib_memset(v12, 0, 4 * (*(a1 + 188) + 2));
        i = 1;
        if (v6 > a2)
        {
          v13 = a2;
          do
          {
            __CGN_InPunctList(a1, v13, v12, &i);
            v14 = utf8_determineUTF8CharLength(*v13);
            if (i)
            {
              *&v12[4 * *(a1 + 188)] = 1065353216;
            }

            v13 += v14;
          }

          while (v13 < v6);
        }

        v15 = v10;
        v16 = &a2[v10];
        for (i = 1; cstdlib_strcmp(v16, ""); v16 += v17)
        {
          __CGN_InPunctList(a1, v16, v12, &i);
          v17 = utf8_determineUTF8CharLength(*v16);
          if (i)
          {
            *&v12[4 * *(a1 + 188) + 4] = 1065353216;
          }
        }
      }

      else
      {
        v15 = v10;
      }

      cstdlib_strcpy(&a2[v15], "");
      v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), v6, *(a1 + 168));
      if ((v18 & 0x1FFF) != 0x14)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v19 = *(*(a1 + 48) + 8);
      v20 = Utf8_Utf8NbrOfSymbols(v6);
      v21 = heap_Alloc(v19, (6 * v20) | 1);
      if (!v21)
      {
        ErrorResource = err_GenerateErrorResource();
        goto LABEL_41;
      }

      v22 = v21;
      v23 = cstdlib_strlen(v6);
      v24 = v22;
      v25 = v23;
      if (v23)
      {
        NextUtf8OffsetLimit = 0;
        v24 = v22;
        do
        {
          utf8_ToLower(v6, NextUtf8OffsetLimit, v24);
          v24 += utf8_determineUTF8CharLength(*v24);
          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v6, NextUtf8OffsetLimit, v25);
        }

        while (NextUtf8OffsetLimit < v25);
      }

      cstdlib_strcpy(v24, "");
      v27 = cstdlib_strcmp(v22, v6);
      v28 = *(a1 + 136);
      v29 = *(*(a1 + 128) + 56);
      v30 = *(a1 + 168);
      v31 = *(a1 + 144);
      if (v27)
      {
        v18 = v29(v28, v31, v22, v30);
        if ((v18 & 0x1FFF) != 0x14)
        {
          goto LABEL_31;
        }

        v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 168));
      }

      else
      {
        v18 = v29(v28, v31, "$MEANW2V$", v30);
      }

      if ((v18 & 0x1FFF) == 0x14)
      {
        v33 = "mean vector";
        goto LABEL_39;
      }

LABEL_31:
      if ((v18 & 0x80000000) == 0)
      {
        ErrorResource = 0;
        if (!v22)
        {
LABEL_41:
          if (!ErrorResource)
          {
            cstdlib_memcpy(a3, *(a1 + 168), 4 * *(a1 + 196));
            v34 = &a3[4 * *(a1 + 196)];
            v35 = Utf8_Utf8NbrOfSymbols(v6);
            v36 = *(a1 + 190);
            v37 = *(a1 + 192) + v36;
            if (v37 + 1 >= v35)
            {
              if (*(a1 + 192) + v36)
              {
                v47 = 0;
                do
                {
                  if (cstdlib_strcmp(v6, ""))
                  {
                    v48 = utf8_determineUTF8CharLength(*v6);
                    cstdlib_strncpy(__dst, v6, v48);
                    cstdlib_strcpy(&__dst[v48], "");
                    v41 = __CGN_CharLookup(a1, __dst);
                    if (v41)
                    {
                      return v41;
                    }

                    v6 += v48;
                    cstdlib_memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  }

                  else
                  {
                    cstdlib_memset(v34, 0, 4 * *(a1 + 198));
                  }

                  v34 += 4 * *(a1 + 198);
                  ++v47;
                }

                while (v47 < v37);
              }
            }

            else
            {
              if (*(a1 + 190))
              {
                v38 = 0;
                v39 = v6;
                do
                {
                  v40 = utf8_determineUTF8CharLength(*v39);
                  cstdlib_strncpy(__dst, v39, v40);
                  cstdlib_strcpy(&__dst[v40], "");
                  v41 = __CGN_CharLookup(a1, __dst);
                  if (v41)
                  {
                    return v41;
                  }

                  v39 += v40;
                  cstdlib_memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  v34 += 4 * *(a1 + 198);
                }

                while (++v38 < *(a1 + 190));
              }

              v42 = cstdlib_strlen(v6);
              if (*(a1 + 192))
              {
                v43 = 0;
                do
                {
                  v42 = utf8_GetPreviousUtf8Offset(v6, v42);
                  ++v43;
                }

                while (v43 < *(a1 + 192));
                if (*(a1 + 192))
                {
                  v44 = 0;
                  v45 = &v6[v42];
                  do
                  {
                    v46 = utf8_determineUTF8CharLength(*v45);
                    cstdlib_strncpy(__dst, v45, v46);
                    cstdlib_strcpy(&__dst[v46], "");
                    ErrorResource = __CGN_CharLookup(a1, __dst);
                    if (ErrorResource)
                    {
                      break;
                    }

                    v45 += v46;
                    cstdlib_memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                    v34 += 4 * *(a1 + 198);
                    ++v44;
                  }

                  while (v44 < *(a1 + 192));
                  return ErrorResource;
                }
              }
            }

            return 0;
          }

          return ErrorResource;
        }

LABEL_40:
        heap_Free(*(*(a1 + 48) + 8), v22);
        goto LABEL_41;
      }

      v33 = "__pIWordLkp->pfWord2fVector";
LABEL_39:
      ErrorResource = err_GenerateErrorInternalMsg(v33);
      if (!v22)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v6 += utf8_determineUTF8CharLength(*v6);
  }

  while (cstdlib_strcmp(v6, ""));

  return err_GenerateErrorArg();
}

uint64_t __CGN_IsPunct(char *a1)
{
  result = cstdlib_strcmp(a1, "");
  if (result)
  {
    if (cstdlib_strstr(a1, "#") == a1)
    {
      return 0;
    }

    else
    {
      v3 = cstdlib_strlen(a1);
      return utf8_BelongsToSet(9u, a1, 0, v3) == 0;
    }
  }

  return result;
}

uint64_t __CGN_InPunctList(uint64_t result, const char *a2, uint64_t a3, _DWORD *a4)
{
  if (*(result + 188))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = utf8_determineUTF8CharLength(*(*(v7 + 208) + v9));
      result = cstdlib_strncmp(a2, (*(v7 + 208) + v9), v10);
      if (!result)
      {
        break;
      }

      v9 += v10;
      ++v8;
      if (*(v7 + 188) <= v9)
      {
        return result;
      }
    }

    *(a3 + 4 * v8) = 1065353216;
    *a4 = 0;
  }

  return result;
}

uint64_t __CGN_CharLookup(void *a1, uint64_t a2)
{
  v3 = (*(a1[16] + 56))(a1[19], a1[20], a2, a1[22]);
  if ((v3 & 0x1FFF) == 0x14 && (v3 = (*(a1[16] + 56))(a1[19], a1[20], "$MEANW2V$", a1[22]), (v3 & 0x1FFF) == 0x14))
  {
    v4 = "mean vector";
  }

  else
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    v4 = "__pIWordLkp->pfWord2fVector";
  }

  return err_GenerateErrorInternalMsg(v4);
}

uint64_t TN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__TN;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  return v6;
}

uint64_t TN_Des(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des();
  }

  return result;
}

uint64_t TN_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen(__s), (v11 = heap_Alloc(v9, v10 + 8)) != 0))
  {
    v12 = v11;
    cstdlib_strcpy(v11, "nn_tn2_");
    v13 = cstdlib_strlen(__s);
    v14 = &v12[cstdlib_strlen("nn_tn2_")];
    if (v13)
    {
      v15 = 0;
      do
      {
        utf8_ToLower(__s, v15, v14);
        if (cstdlib_strstr(v14, "_") != v14)
        {
          v14 += utf8_determineUTF8CharLength(*v14);
        }

        LODWORD(v15) = utf8_GetNextUtf8OffsetLimit(__s, v15, v13);
      }

      while (v15 < v13);
    }

    cstdlib_strcpy(v14, "");
    v16 = _Model_Load(a1, v12, a3);
    heap_Free(*(*(a1 + 48) + 8), v12);
    return v16;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t TN_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  Allocator = ooc_utils_createAllocator(v9, a1, a2);
  if (!Allocator)
  {
    v6 = PNEW_Params_Con(v9, a1, a2, "fecfg", &v11);
    v7 = v11;
    if (!v6)
    {
      Allocator = Params_GetCfgParamValueListOfStrings(v11, "nn_tn2_models", 0x3Bu, &v12);
      v7 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    Allocator = v6;
    if (v11)
    {
LABEL_4:
      OOC_PlacementDeleteObject(v9, v7);
    }
  }

LABEL_5:
  OOCAllocator_Des();
  return Allocator;
}

uint64_t TN_Predict(uint64_t a1, unsigned int a2, char *__s, unsigned int a4, unsigned int a5, void *a6, int *a7)
{
  v31 = 0;
  if (*(a1 + 166) <= a2 || !__s || a5 > cstdlib_strlen(__s) || a4 >= a5)
  {
    ErrorArg = err_GenerateErrorArg();
    goto LABEL_24;
  }

  v34 = 0;
  v32 = 0;
  v33 = 0;
  v14 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 168) * *(a1 + 160));
  v31 = v14;
  if (!v14)
  {
    ErrorResource = err_GenerateErrorResource();
    goto LABEL_33;
  }

  v15 = v14;
  if ((nn_tn_getCharContextString(*(a1 + 48), "NN_TN", __s, a4, a5, &v34, &v33 + 1, *(a1 + 162), 2, "*", *(a1 + 168), &v33, &v32 + 1, &v32) & 0x80000000) != 0)
  {
    v27 = "nn_tn_getCharContextString";
    goto LABEL_32;
  }

  cstdlib_memset(v15, 0, 4 * *(a1 + 168) * *(a1 + 160));
  if (!v33)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_34;
  }

  v20 = 0;
  while (1)
  {
    if (!cstdlib_strcmp(*(v34 + 8 * v20), "*"))
    {
      if (*(a1 + 160))
      {
        memset_pattern16(v15, &unk_26ECDA830, 4 * *(a1 + 160));
      }

      goto LABEL_21;
    }

    v21 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), *(v34 + 8 * v20), *(a1 + 152));
    if ((v21 & 0x1FFF) == 0x14)
    {
      v21 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 152));
      if ((v21 & 0x1FFF) == 0x14)
      {
        break;
      }
    }

    if (v21 < 0)
    {
      v27 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_32;
    }

    cstdlib_memcpy(v15, *(a1 + 152), 4 * *(a1 + 164));
    v22 = *(a1 + 164);
    *&v15[4 * v22 + 4 * a2] = 1065353216;
    if (v20 >= HIWORD(v32) && v20 < v32)
    {
      *&v15[4 * *(a1 + 166) + 4 * v22] = 1065353216;
    }

LABEL_21:
    v15 += 4 * *(a1 + 160);
    if (++v20 >= v33)
    {
      goto LABEL_22;
    }
  }

  v27 = "mean vector";
LABEL_32:
  ErrorResource = err_GenerateErrorInternalMsg(v27);
LABEL_33:
  v23 = ErrorResource;
LABEL_34:
  v28 = v34;
  if (v34)
  {
    if (HIWORD(v33))
    {
      v29 = 0;
      do
      {
        heap_Free(*(*(a1 + 48) + 8), *(v34 + 8 * v29++));
      }

      while (v29 < HIWORD(v33));
      v28 = v34;
    }

    heap_Free(*(*(a1 + 48) + 8), v28);
  }

  if (!v23)
  {
    if ((fi_predict(*(a1 + 104), &v31, *(a1 + 168), a6, v16, v17, v18, v19) & 0x80000000) != 0)
    {
      v30 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a7) & 0x80000000) == 0)
      {
        v23 = 0;
        goto LABEL_25;
      }

      v30 = "fi_shape_get_size";
    }

    ErrorArg = err_GenerateErrorInternalMsg(v30);
LABEL_24:
    v23 = ErrorArg;
  }

LABEL_25:
  if (v31)
  {
    heap_Free(*(*(a1 + 48) + 8), v31);
  }

  return v23;
}

uint64_t TN_UnloadModel(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _TN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v8 = "nn_word_lkp_GetInterface";
LABEL_11:

    return err_GenerateErrorInternalMsg(v8);
  }

  v2 = *(*(a1 + 128) + 16);
  NullHandle = safeh_GetNullHandle();
  if ((v2(NullHandle) & 0x80000000) != 0)
  {
    v8 = "__pIWordLkp->pfObjOpen";
    goto LABEL_11;
  }

  v10 = 0;
  if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v10) & 0x80000000) != 0)
  {
    v9 = "__pIWordLkp->pfGetVectorLength";
  }

  else
  {
    v4 = *(a1 + 164);
    if (v10 == v4)
    {
      v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
      *(a1 + 152) = v5;
      if (!v5)
      {
        return err_GenerateErrorResource();
      }

      if (*(a1 + 112) == *(a1 + 168))
      {
        v6 = *(a1 + 164) + *(a1 + 166) + 1;
        *(a1 + 160) = v6;
        if (*(a1 + 116) == v6)
        {
          return 0;
        }

        v9 = "inshape dimension 2";
      }

      else
      {
        v9 = "inshape dimension 1";
      }
    }

    else
    {
      v9 = "char embedding dimension";
    }
  }

  return err_GenerateErrorInternalMsg(v9);
}

uint64_t _TN_PreFIDeinit(uint64_t a1)
{
  if (*(a1 + 128))
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 136), *(a1 + 144), NullHandle, v3))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 136), *(a1 + 144));
      *(a1 + 136) = safeh_GetNullHandle();
      *(a1 + 144) = v4;
    }

    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    heap_Free(*(*(a1 + 48) + 8), v5);
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return 0;
}

uint64_t _TN_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  *a2 = 0;
  v4 = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v9);
  if (v4 || (v4 = __TN_FullParamName(a1, "charContextWindow", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 40, &v7), v4) || (*(a1 + 162) = v7, v4 = __TN_FullParamName(a1, "charEmbeddingDimension", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 0, &v7), v4) || (*(a1 + 164) = v7, v4 = __TN_FullParamName(a1, "numPatterns", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 1, &v7), v4) || (*(a1 + 166) = v7, v4 = __TN_FullParamName(a1, "max_x_len", &v8), v4))
  {
    CfgParamValueInteger = v4;
  }

  else
  {
    CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 0, &v7);
    if (!CfgParamValueInteger)
    {
      *(a1 + 168) = v7;
      *a2 = 1;
    }
  }

  if (v9)
  {
    OOC_PlacementDeleteObject(a1 + 56, v9);
  }

  if (v8)
  {
    heap_Free(*(*(a1 + 48) + 8), v8);
  }

  return CfgParamValueInteger;
}

uint64_t __TN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "nn_tn2_");
    cstdlib_strcat(v11, *(a1 + 120));
    cstdlib_strcat(v11, "_");
    cstdlib_strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t PNEW_TN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 176, &v14);
  result = v14;
  if (!v14)
  {
    result = TN_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t CLM_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__CLM;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = safeh_GetNullHandle();
    *(a1 + 160) = v8;
    *(a1 + 168) = safeh_GetNullHandle();
    *(a1 + 176) = v9;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 214) = 0;
  }

  return v6;
}

uint64_t CLM_Des(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des();
  }

  return result;
}

uint64_t CLM_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen(__s), (v11 = heap_Alloc(v9, v10 + 14)) != 0))
  {
    v12 = v11;
    cstdlib_strcpy(v11, "clmnn:nn_clm_");
    cstdlib_strcat(v12, __s);
    v13 = _Model_Load(a1, v12, a3);
    heap_Free(*(*(a1 + 48) + 8), v12);
    return v13;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t CLM_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  Allocator = ooc_utils_createAllocator(v9, a1, a2);
  if (!Allocator)
  {
    v6 = PNEW_Params_Con(v9, a1, a2, "clmnncfg", &v11);
    v7 = v11;
    if (!v6)
    {
      Allocator = Params_GetCfgParamValueListOfStrings(v11, "nn_clm_models", 0x3Bu, &v12);
      v7 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    Allocator = v6;
    if (v11)
    {
LABEL_4:
      OOC_PlacementDeleteObject(v9, v7);
    }
  }

LABEL_5:
  OOCAllocator_Des();
  return Allocator;
}

uint64_t CLM_Predict(uint64_t a1, char **a2, char **a3, char **a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v14 = heap_Alloc(*(*(a1 + 48) + 8), 12 * *(a1 + 220) * (2 * *(a1 + 218) + a5));
  v40 = v14;
  if (v14)
  {
    v15 = v14;
    v39 = a7;
    v16 = a5;
    v17 = 3 * *(a1 + 218) * *(a1 + 220);
    if (v17)
    {
      v18 = (3 * *(a1 + 218) * *(a1 + 220));
      memset_pattern16(v14, &unk_26ECDA830, 4 * v18);
    }

    else
    {
      v18 = 0;
    }

    v38 = v18;
    v20 = &v15[4 * v18];
    if (a5)
    {
      while (1)
      {
        v21 = __CLM_FeaturesLookups(a1, *(a1 + 136), *(a1 + 144), *a2, v20);
        if (v21)
        {
          break;
        }

        v22 = &v20[4 * *(a1 + 220)];
        v21 = __CLM_FeaturesLookups(a1, *(a1 + 152), *(a1 + 160), *a3, v22);
        if (v21)
        {
          break;
        }

        v23 = &v22[4 * *(a1 + 220)];
        v21 = __CLM_FeaturesLookups(a1, *(a1 + 168), *(a1 + 176), *a4, v23);
        if (v21)
        {
          break;
        }

        v20 = &v23[4 * *(a1 + 220)];
        ++a4;
        ++a3;
        ++a2;
        if (!--v16)
        {
          goto LABEL_12;
        }
      }

      ErrorResource = v21;
      goto LABEL_39;
    }

LABEL_12:
    v24 = v17 == 0;
    a7 = v39;
    if (!v24)
    {
      memset_pattern16(v20, &unk_26ECDA830, 4 * v38);
    }
  }

  else
  {
    ErrorResource = err_GenerateErrorResource();
    if (ErrorResource)
    {
      return ErrorResource;
    }
  }

  if (a5)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = v40;
    while (1)
    {
      v42 = 0;
      v43 = 0;
      v41 = 0;
      if (!v28)
      {
        break;
      }

      v29 = 4 * ((*(a1 + 216) * *(a1 + 220)) & 0x3FFF);
      v30 = heap_Alloc(*(*(a1 + 48) + 8), v29);
      v43 = v30;
      if (v30)
      {
        cstdlib_memcpy(v30, v28, v29);
        if ((fi_predict(*(a1 + 104), &v43, *(a1 + 216), &v42, v31, v32, v33, v34) & 0x80000000) != 0)
        {
          v36 = "fi_predict";
        }

        else
        {
          if ((fi_shape_get_size((**(a1 + 104) + 92), &v41) & 0x80000000) == 0)
          {
            if (v41)
            {
              v35 = 0;
              v26 = 0;
              v27 = 0.0;
              do
              {
                if (v27 < *(v42 + 4 * v35))
                {
                  v27 = *(v42 + 4 * v35);
                  v26 = v35;
                }

                ++v35;
              }

              while (v41 > v35);
              ErrorResource = 0;
            }

            else
            {
              v26 = 0;
              ErrorResource = 0;
              v27 = 0.0;
            }

            goto LABEL_31;
          }

          v36 = "fi_shape_get_size";
        }

LABEL_30:
        ErrorResource = err_GenerateErrorInternalMsg(v36);
LABEL_31:
        if (v43)
        {
          heap_Free(*(*(a1 + 48) + 8), v43);
        }

        goto LABEL_33;
      }

      ErrorResource = err_GenerateErrorResource();
LABEL_33:
      if (ErrorResource)
      {
        goto LABEL_39;
      }

      *(a7 + 4 * v25) = v27;
      *(a6 + 4 * v25) = v26;
      v28 += 12 * *(a1 + 220);
      if (a5 <= ++v25)
      {
        goto LABEL_37;
      }
    }

    v36 = "pElemFeatures == NULL";
    goto LABEL_30;
  }

LABEL_37:
  ErrorResource = 0;
LABEL_39:
  if (v40)
  {
    heap_Free(*(*(a1 + 48) + 8), v40);
  }

  return ErrorResource;
}

uint64_t CLM_UnloadModel(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _CLM_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v21 = "nn_word_lkp_GetInterface";
LABEL_23:

    return err_GenerateErrorInternalMsg(v21);
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = cstdlib_strlen(*(a1 + 120));
  v4 = heap_Alloc(v2, v3 + 16);
  *(a1 + 184) = v4;
  if (v4)
  {
    cstdlib_strcpy(v4, "clmorthforeign_");
    cstdlib_strcat(*(a1 + 184), *(a1 + 120));
    v5 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v5(NullHandle) & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = cstdlib_strlen(*(a1 + 120));
    v9 = heap_Alloc(v7, v8 + 16);
    *(a1 + 192) = v9;
    if (!v9)
    {
      goto LABEL_19;
    }

    cstdlib_strcpy(v9, "clmphonforeign_");
    cstdlib_strcat(*(a1 + 192), *(a1 + 120));
    v10 = *(*(a1 + 128) + 16);
    v11 = safeh_GetNullHandle();
    if ((v10(v11) & 0x80000000) != 0)
    {
LABEL_22:
      v21 = "__pIWordLkp->pfObjOpen";
      goto LABEL_23;
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = cstdlib_strlen(*(a1 + 120));
    v14 = heap_Alloc(v12, v13 + 13);
    *(a1 + 200) = v14;
    if (v14)
    {
      cstdlib_strcpy(v14, "clmphonmain_");
      cstdlib_strcat(*(a1 + 200), *(a1 + 120));
      v15 = *(*(a1 + 128) + 16);
      v16 = safeh_GetNullHandle();
      if ((v15(v16) & 0x80000000) == 0)
      {
        v23 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v23) & 0x80000000) == 0)
        {
          if (v23 != *(a1 + 220))
          {
            v22 = "orth embedding dimension";
            return err_GenerateErrorInternalMsg(v22);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v23) & 0x80000000) == 0)
          {
            if (v23 != *(a1 + 220))
            {
              v22 = "phon embedding dimension";
              return err_GenerateErrorInternalMsg(v22);
            }

            if (((*(*(a1 + 128) + 40))(*(a1 + 168), *(a1 + 176), &v23) & 0x80000000) == 0)
            {
              v17 = *(a1 + 220);
              if (v23 == v17)
              {
                v18 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v17);
                *(a1 + 208) = v18;
                if (!v18)
                {
                  return err_GenerateErrorResource();
                }

                v19 = 6 * *(a1 + 218) + 3;
                *(a1 + 216) = v19;
                if (*(a1 + 112) == v19)
                {
                  if (*(a1 + 116) == *(a1 + 220))
                  {
                    return 0;
                  }

                  v22 = "inshape dimension 2";
                }

                else
                {
                  v22 = "inshape dimension 1";
                }
              }

              else
              {
                v22 = "main embedding dimension";
              }

              return err_GenerateErrorInternalMsg(v22);
            }
          }
        }

        v22 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v22);
      }

      goto LABEL_22;
    }
  }

LABEL_19:

  return err_GenerateErrorResource();
}

uint64_t _CLM_PreFIDeinit(uint64_t a1)
{
  if (*(a1 + 128))
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 136), *(a1 + 144), NullHandle, v3))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 136), *(a1 + 144));
      *(a1 + 136) = safeh_GetNullHandle();
      *(a1 + 144) = v4;
    }

    v5 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 152), *(a1 + 160), v5, v6))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 152), *(a1 + 160));
      *(a1 + 152) = safeh_GetNullHandle();
      *(a1 + 160) = v7;
    }

    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 168), *(a1 + 176), v8, v9))
    {
      (*(*(a1 + 128) + 24))(*(a1 + 168), *(a1 + 176));
      *(a1 + 168) = safeh_GetNullHandle();
      *(a1 + 176) = v10;
    }

    *(a1 + 128) = 0;
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    heap_Free(*(*(a1 + 48) + 8), v11);
  }

  *(a1 + 184) = 0;
  v12 = *(a1 + 192);
  if (v12)
  {
    heap_Free(*(*(a1 + 48) + 8), v12);
  }

  *(a1 + 192) = 0;
  v13 = *(a1 + 200);
  if (v13)
  {
    heap_Free(*(*(a1 + 48) + 8), v13);
  }

  *(a1 + 200) = 0;
  v14 = *(a1 + 208);
  if (v14)
  {
    heap_Free(*(*(a1 + 48) + 8), v14);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return 0;
}

uint64_t _CLM_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  *a2 = 0;
  v4 = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "clmnncfg", &v9);
  if (v4 || (v4 = __CLM_FullParamName(a1, "charContextWindow", &v8), v4) || (v4 = Params_GetCfgParamValueInteger(v9, v8, 3, &v7), v4) || (*(a1 + 218) = v7, v4 = __CLM_FullParamName(a1, "embxEmbeddingDimension", &v8), v4))
  {
    CfgParamValueInteger = v4;
  }

  else
  {
    CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 0, &v7);
    if (!CfgParamValueInteger)
    {
      *(a1 + 220) = v7;
      *a2 = 1;
    }
  }

  if (v9)
  {
    OOC_PlacementDeleteObject(a1 + 56, v9);
  }

  if (v8)
  {
    heap_Free(*(*(a1 + 48) + 8), v8);
  }

  return CfgParamValueInteger;
}

uint64_t __CLM_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = cstdlib_strlen(__s);
  v9 = cstdlib_strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "nn_clm_");
    cstdlib_strcat(v11, *(a1 + 120));
    cstdlib_strcat(v11, "_");
    cstdlib_strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t PNEW_CLM_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 224, &v14);
  result = v14;
  if (!v14)
  {
    result = CLM_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t __CLM_FeaturesLookups(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, void *a5)
{
  if (!cstdlib_strcmp(__s1, "#"))
  {
    if (*(a1 + 220))
    {
      memset_pattern16(a5, &unk_26ECDA890, 4 * *(a1 + 220));
    }

    return 0;
  }

  v10 = (*(*(a1 + 128) + 56))(a2, a3, __s1, *(a1 + 208));
  if ((v10 & 0x1FFF) != 0x14 || (v10 = (*(*(a1 + 128) + 56))(a2, a3, "$MEANW2V$", *(a1 + 208)), (v10 & 0x1FFF) != 0x14))
  {
    if (v10 < 0)
    {
      v11 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_11;
    }

    cstdlib_memcpy(a5, *(a1 + 208), 4 * *(a1 + 220));
    return 0;
  }

  v11 = "mean vector";
LABEL_11:

  return err_GenerateErrorInternalMsg(v11);
}

uint64_t Diacritizer_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = _Model_Con(a1, a2, a3, a4, a5);
  if (!result)
  {
    *a1 = &__Diacritizer;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

uint64_t Diacritizer_Des(uint64_t a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      heap_Free(*(*(a1 + 48) + 8), v3);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
    }

    return Model_Des();
  }

  return result;
}

uint64_t Diacritizer_Predict(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = 0;
  v43 = 0;
  v44 = 0;
  if (a3 <= 2)
  {
    log_OutText(*(*(a1 + 48) + 32), "FE_LUA_NN_DIACRITIZER", 5, 0, "WARNING: not enough input features [%d]", a6, a7, a8, a3);
    v9 = "nn_diacritizer:unexpected";
LABEL_5:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v9);
LABEL_6:
    if (v43)
    {
      heap_Free(*(*(a1 + 48) + 8), v43);
    }

    return ErrorInternalMsg;
  }

  v10 = (a3 - 1);
  v11 = *(a1 + 120);
  v12 = *(a1 + 48);
  if (v11 < v10)
  {
    log_OutText(*(v12 + 32), "FE_LUA_NN_DIACRITIZER", 5, 0, "WARNING: Number of input features [%d] exceeds max_x_len [%d]", a6, a7, a8, (a3 - 1));
    v9 = "nn_diacritizer";
    goto LABEL_5;
  }

  v17 = a2;
  v18 = a2[(a3 - 2)];
  v19 = a2[v10];
  v20 = heap_Alloc(*(v12 + 8), 4 * v11);
  v43 = v20;
  if (v20)
  {
    v26 = v10;
    v27 = v20;
    do
    {
      v28 = *v17++;
      *v27++ = v28;
      --v26;
    }

    while (v26);
    v29 = *(a1 + 120);
    if (v10 < v29)
    {
      v30 = 0;
      *v25.i32 = v19;
      v31 = v29 - v10;
      v32 = (v29 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v33 = vdupq_n_s64(v31 - 1);
      v34 = &v20[v10 + 2];
      do
      {
        v35 = vdupq_n_s64(v30);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_26ECC7980)));
        if (vuzp1_s16(v36, v25).u8[0])
        {
          *(v34 - 2) = *v25.i32;
        }

        if (vuzp1_s16(v36, v25).i8[2])
        {
          *(v34 - 1) = *v25.i32;
        }

        if (vuzp1_s16(v25, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_26ECCE810)))).i32[1])
        {
          *v34 = *v25.i32;
          v34[1] = *v25.i32;
        }

        v30 += 4;
        v34 += 4;
      }

      while (v32 != v30);
    }

    if ((fi_predict(*(a1 + 104), &v43, 1, &v44, v21, v22, v23, v24) & 0x80000000) != 0)
    {
      v9 = "nn_diacritizer:fi_predict";
      goto LABEL_5;
    }

    if ((fi_shape_get_size((**(a1 + 104) + 92), &v45) & 0x80000000) != 0)
    {
      v9 = "nn_diacritizer:fi_shape_get_size";
      goto LABEL_5;
    }

    if (v45)
    {
      v37 = 0;
      while (v18 != *(v44 + 4 * v37))
      {
        if (v45 == ++v37)
        {
          LODWORD(v37) = v45;
          break;
        }
      }

      *a5 = v37;
      if (v37 > *(a1 + 136))
      {
        v38 = v37 + 10;
        *(a1 + 136) = v38;
        v39 = heap_Realloc(*(*(a1 + 48) + 8), *(a1 + 128), 4 * v38);
        *(a1 + 128) = v39;
        if (!v39)
        {
          ErrorInternalMsg = err_GenerateErrorResource();
          *(a1 + 136) = 0;
          goto LABEL_6;
        }

        LODWORD(v37) = *a5;
      }

      if (v37)
      {
        v40 = 0;
        v41 = v44;
        v42 = *(a1 + 128);
        do
        {
          *(v42 + 4 * v40) = *(v41 + 4 * v40);
          ++v40;
        }

        while (v40 < *a5);
        goto LABEL_42;
      }
    }

    else
    {
      *a5 = 0;
    }

    v42 = *(a1 + 128);
LABEL_42:
    ErrorInternalMsg = 0;
    *a4 = v42;
    goto LABEL_6;
  }

  return err_GenerateErrorResource();
}

uint64_t _Diacritizer_PostFIInit(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(a1 + 120) = v2;
  v2 *= 2;
  *(a1 + 136) = v2;
  v3 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v2);
  *(a1 + 128) = v3;
  if (v3)
  {
    if (*(a1 + 116) == -1)
    {
      return 0;
    }

    else
    {

      return err_GenerateErrorInternalMsg("nn_diacritizer:only supports 1D inshape");
    }
  }

  else
  {
    result = err_GenerateErrorResource();
    *(a1 + 136) = 0;
  }

  return result;
}

uint64_t _Diacritizer_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  v12 = 0;
  *a2 = 0;
  v4 = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v12);
  if (v4)
  {
    goto LABEL_2;
  }

  CfgParamValueString = Params_GetCfgParamValueString(v12, "nn_diacritizer_enable", &v11);
  v5 = v11;
  if (CfgParamValueString)
  {
    v9 = 1;
  }

  else
  {
    v9 = v11 == 0;
  }

  if (!v9)
  {
    v10 = LH_stricmp(v11, "yes");
    if (!v10 || !LH_stricmp(v11, "true") || !LH_stricmp(v11, "1"))
    {
      *a2 = 1;
    }

LABEL_2:
    v5 = v11;
    v6 = v4;
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = CfgParamValueString;
  if (v11)
  {
LABEL_3:
    heap_Free(*(*(a1 + 48) + 8), v5);
  }

LABEL_4:
  if (v12)
  {
    OOC_PlacementDeleteObject(a1 + 56, v12);
  }

  return v6;
}

uint64_t PNEW_Diacritizer_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 144, &v14);
  result = v14;
  if (!v14)
  {
    result = _Model_Con(v12, a2, a3, a4, a5);
    if (result)
    {
      v14 = result;
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *v12 = &__Diacritizer;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 136) = 0;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t URL_Con(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__URL;
    a1[15] = 0;
    a1[16] = safeh_GetNullHandle();
    a1[17] = v7;
    a1[18] = 0;
    a1[19] = 0x100000000;
  }

  return v6;
}

uint64_t URL_Des(uint64_t *a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des();
  }

  return result;
}

uint64_t URL_Predict(uint64_t a1, const char *a2, unsigned int *a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  if (a4)
  {
    v9 = a2;
    if (a4 + 1 == Utf8_Utf8NbrOfSymbols(a2))
    {
      v11 = heap_Alloc(*(*(a1 + 48) + 8), 4 * (2 * *(a1 + 156) + a4 - 1) * *(a1 + 154));
      v12 = v11;
      v37 = v11;
      if (v11)
      {
        v36 = a6;
        v13 = a4;
        v14 = *(a1 + 156);
        LOWORD(v15) = *(a1 + 154);
        if ((v14 - 1) * v15)
        {
          v16 = ((v14 - 1) * v15);
          memset_pattern16(v11, &unk_26ECDA830, 4 * v16);
        }

        else
        {
          v16 = 0;
        }

        v20 = &v12[4 * v16];
        if (a4)
        {
          while (1)
          {
            v21 = utf8_determineUTF8CharLength(*v9);
            cstdlib_strncpy(__dst, v9, v21);
            cstdlib_strcpy(&__dst[v21], "");
            v22 = (*(*(a1 + 120) + 56))(*(a1 + 128), *(a1 + 136), __dst, *(a1 + 144));
            if ((v22 & 0x1FFF) != 0x14 || (v22 = (*(*(a1 + 120) + 56))(*(a1 + 128), *(a1 + 136), "$MEANW2V$", *(a1 + 144)), v23 = "mean vector", (v22 & 0x1FFF) != 0x14))
            {
              if ((v22 & 0x80000000) == 0)
              {
                cstdlib_memcpy(v20, *(a1 + 144), 4 * *(a1 + 158));
                goto LABEL_19;
              }

              v23 = "__pIWordLkp->pfWord2fVector";
            }

            ErrorInternalMsg = err_GenerateErrorInternalMsg(v23);
            if (ErrorInternalMsg)
            {
              ErrorResource = ErrorInternalMsg;
              goto LABEL_47;
            }

LABEL_19:
            v9 += v21;
            v25 = *a3++;
            *&v20[4 * *(a1 + 158)] = v25;
            v15 = *(a1 + 154);
            v20 += 4 * v15;
            if (!--v13)
            {
              v14 = *(a1 + 156);
              v12 = v37;
              break;
            }
          }
        }

        v19 = a5;
        if (v14 * v15)
        {
          memset_pattern16(v20, &unk_26ECDA830, 4 * (v14 * v15));
        }

        a6 = v36;
      }

      else
      {
        ErrorResource = err_GenerateErrorResource();
        v19 = a5;
        if (ErrorResource)
        {
          return ErrorResource;
        }
      }

      *a6 = 1065353216;
      *v19 = 1;
      if (a4 == 1)
      {
LABEL_25:
        ErrorResource = 0;
LABEL_47:
        if (v37)
        {
          heap_Free(*(*(a1 + 48) + 8), v37);
        }

        return ErrorResource;
      }

      v26 = 0;
      v27 = 0.0;
      v28 = 1;
      while (1)
      {
        v40 = 0;
        *__dst = 0;
        v39 = 0;
        if (!v12)
        {
          break;
        }

        v29 = 4 * ((*(a1 + 152) * *(a1 + 154)) & 0x3FFF);
        v30 = heap_Alloc(*(*(a1 + 48) + 8), v29);
        *__dst = v30;
        if (v30)
        {
          cstdlib_memcpy(v30, v12, v29);
          if ((fi_predict(*(a1 + 104), __dst, *(a1 + 152), &v40, v31, v32, v33, v34) & 0x80000000) != 0)
          {
            v35 = "fi_predict";
          }

          else if ((fi_shape_get_size((**(a1 + 104) + 92), &v39) & 0x80000000) != 0)
          {
            v35 = "fi_shape_get_size";
          }

          else
          {
            if (v39 == 2)
            {
              v27 = v40[1];
              if (*v40 >= v27)
              {
                v26 = 0;
                ErrorResource = 0;
                v27 = *v40;
              }

              else
              {
                ErrorResource = 0;
                v26 = 1;
              }

LABEL_40:
              if (*__dst)
              {
                heap_Free(*(*(a1 + 48) + 8), *__dst);
              }

              goto LABEL_42;
            }

            v35 = "Unexpected";
          }

LABEL_39:
          ErrorResource = err_GenerateErrorInternalMsg(v35);
          goto LABEL_40;
        }

        ErrorResource = err_GenerateErrorResource();
LABEL_42:
        if (ErrorResource)
        {
          goto LABEL_47;
        }

        *&a6[v28] = v27;
        v19[v28] = v26;
        v12 += 4 * *(a1 + 154);
        if (a4 <= ++v28)
        {
          goto LABEL_25;
        }
      }

      v35 = "pElemFeatures == NULL";
      goto LABEL_39;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t _URL_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 120)) & 0x80000000) != 0)
  {
    v9 = "nn_word_lkp_GetInterface";
LABEL_11:

    return err_GenerateErrorInternalMsg(v9);
  }

  v2 = *(*(a1 + 120) + 16);
  NullHandle = safeh_GetNullHandle();
  if ((v2(NullHandle) & 0x80000000) != 0)
  {
    v9 = "__pIWordLkp->pfObjOpen";
    goto LABEL_11;
  }

  v11 = 0;
  if (((*(*(a1 + 120) + 40))(*(a1 + 128), *(a1 + 136), &v11) & 0x80000000) != 0)
  {
    v10 = "__pIWordLkp->pfGetVectorLength";
  }

  else
  {
    v4 = *(a1 + 158);
    if (v11 == v4)
    {
      v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
      *(a1 + 144) = v5;
      if (!v5)
      {
        return err_GenerateErrorResource();
      }

      v6 = (2 * *(a1 + 156)) | 1;
      *(a1 + 152) = v6;
      if (*(a1 + 112) == v6)
      {
        v7 = *(a1 + 158) + 1;
        *(a1 + 154) = v7;
        if (*(a1 + 116) == v7)
        {
          return 0;
        }

        v10 = "inshape dimension 2";
      }

      else
      {
        v10 = "inshape dimension 1";
      }
    }

    else
    {
      v10 = "char embedding dimension";
    }
  }

  return err_GenerateErrorInternalMsg(v10);
}

uint64_t _URL_PreFIDeinit(uint64_t a1)
{
  if (*(a1 + 120))
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 128), *(a1 + 136), NullHandle, v3))
    {
      (*(*(a1 + 120) + 24))(*(a1 + 128), *(a1 + 136));
      *(a1 + 128) = safeh_GetNullHandle();
      *(a1 + 136) = v4;
    }

    *(a1 + 120) = 0;
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    heap_Free(*(*(a1 + 48) + 8), v5);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return 0;
}

uint64_t _URL_PreFIInit(uint64_t a1, _DWORD *a2)
{
  __s1 = 0;
  v12 = 0;
  v10 = 0;
  *a2 = 0;
  CfgParamValueInteger = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v12);
  if (CfgParamValueInteger)
  {
    goto LABEL_2;
  }

  CfgParamValueString = Params_GetCfgParamValueString(v12, "nn_url_enable", &__s1);
  v6 = __s1;
  if (CfgParamValueString)
  {
    v9 = 1;
  }

  else
  {
    v9 = __s1 == 0;
  }

  if (!v9)
  {
    if (cstdlib_strcmp(__s1, "yes"))
    {
      v5 = 0;
      goto LABEL_3;
    }

    CfgParamValueInteger = Params_GetCfgParamValueInteger(v12, "nn_url_charContextWindow", 4, &v10);
    if (!CfgParamValueInteger)
    {
      if (v10)
      {
        *(a1 + 156) = v10;
        v5 = Params_GetCfgParamValueInteger(v12, "nn_url_charEmbeddingDimension", 0, &v10);
        if (!v5)
        {
          *(a1 + 158) = v10;
          *a2 = 1;
        }

LABEL_3:
        v6 = __s1;
        if (!__s1)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      CfgParamValueInteger = err_GenerateErrorInternalMsg("empty context not supported");
    }

LABEL_2:
    v5 = CfgParamValueInteger;
    goto LABEL_3;
  }

  v5 = CfgParamValueString;
  if (__s1)
  {
LABEL_4:
    heap_Free(*(*(a1 + 48) + 8), v6);
    __s1 = 0;
  }

LABEL_5:
  if (v12)
  {
    OOC_PlacementDeleteObject(a1 + 56, v12);
  }

  return v5;
}

uint64_t PNEW_URL_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 160, &v14);
  result = v14;
  if (!v14)
  {
    result = URL_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t Homograph_Con(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__Homograph;
    a1[16] = 0;
    a1[17] = safeh_GetNullHandle();
    a1[18] = v7;
    a1[19] = 0;
    a1[15] = 0;
  }

  return v6;
}

uint64_t Homograph_Des(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des();
  }

  return result;
}

uint64_t Homograph_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen("nn_homograph2"), v11 = cstdlib_strlen(__s), (v12 = heap_Alloc(v9, v10 + v11 + 2)) != 0))
  {
    v13 = v12;
    cstdlib_strcpy(v12, "nn_homograph2");
    if (*__s)
    {
      cstdlib_strcat(v13, "_");
      v14 = cstdlib_strlen(v13);
      cstdlib_strcat(v13, __s);
      v15 = v13[v14];
      if (v15)
      {
        v16 = &v13[v14 + 1];
        do
        {
          *(v16 - 1) = cstdlib_tolower(v15);
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }

    v18 = _Model_Load(a1, v13, a3);
    heap_Free(*(*(a1 + 48) + 8), v13);
    return v18;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t Homograph_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a3;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  Allocator = ooc_utils_createAllocator(v12, a1, a2);
  if (Allocator)
  {
    goto LABEL_9;
  }

  Allocator = PNEW_Params_Con(v12, a1, a2, "fecfg", &v14);
  if (Allocator)
  {
    goto LABEL_9;
  }

  Allocator = Params_GetCfgParamValueString(v14, "nn_homograph2_enable", &v11);
  if (Allocator)
  {
    goto LABEL_9;
  }

  if (!v11 || LH_stricmp(v11, "yes") && LH_stricmp(v11, "true") && LH_stricmp(v11, "1"))
  {
    Allocator = Params_GetCfgParamValueListOfStrings(v14, "nn_homograph2_models", 0x3Bu, &v15);
LABEL_9:
    v7 = Allocator;
    goto LABEL_10;
  }

  StringList_Append(a3, "");
  v7 = 0;
LABEL_10:
  v8 = v14;
  if (v14)
  {
    v9 = v11 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    heap_Free(*(*(v14 + 24) + 8), v11);
    v8 = v14;
  }

  if (v8)
  {
    OOC_PlacementDeleteObject(v12, v8);
  }

  return v7;
}

uint64_t Homograph_Predict(uint64_t a1, char *a2, void *a3, int *a4)
{
  v24 = 0;
  if (a2)
  {
    v26 = 0;
    *v25 = 0;
    ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), v25);
    if (ErrorInternalMsg)
    {
      goto LABEL_21;
    }

    ErrorInternalMsg = StringList_FromSplitStringInUtf8(*v25, a2, 0xFFFF, 0, 0, &v26);
    if (ErrorInternalMsg)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 112);
    if (v13 < v26)
    {
      ErrorInternalMsg = err_GenerateErrorInternalMsg("context window too long");
LABEL_21:
      v21 = ErrorInternalMsg;
      goto LABEL_22;
    }

    v15 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 116) * v13);
    v24 = v15;
    if (!v15)
    {
      ErrorInternalMsg = err_GenerateErrorResource();
      goto LABEL_21;
    }

    v16 = v15;
    if (!v26)
    {
      v17 = 0;
LABEL_35:
      if (*(a1 + 112) <= v17)
      {
LABEL_39:
        v21 = 0;
      }

      else
      {
        v23 = *(a1 + 116);
        do
        {
          cstdlib_memcpy(v16, *(a1 + 152), 4 * v23);
          v21 = 0;
          v23 = *(a1 + 116);
          v16 += 4 * v23;
          ++v17;
        }

        while (*(a1 + 112) > v17);
      }

LABEL_22:
      if (*v25)
      {
        OOC_PlacementDeleteObject(a1 + 56, *v25);
      }

      if (v21)
      {
        goto LABEL_31;
      }

      if ((fi_predict(*(a1 + 104), &v24, *(a1 + 112), a3, v9, v10, v11, v12) & 0x80000000) != 0)
      {
        v22 = "fi_predict";
      }

      else
      {
        if ((fi_shape_get_size((**(a1 + 104) + 92), a4) & 0x80000000) == 0)
        {
          v21 = 0;
LABEL_31:
          if (v24)
          {
            heap_Free(*(*(a1 + 48) + 8), v24);
          }

          return v21;
        }

        v22 = "fi_shape_get_size";
      }

      v21 = err_GenerateErrorInternalMsg(v22);
      goto LABEL_31;
    }

    v17 = 0;
    while (1)
    {
      v18 = StringList_GetAt(*v25, v17);
      v19 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), v18, v16);
      if ((v19 & 0x1FFF) == 0x14)
      {
        v19 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", v16);
        v20 = "mean vector";
        if ((v19 & 0x1FFF) == 0x14)
        {
          goto LABEL_17;
        }
      }

      if (v19 < 0)
      {
        break;
      }

      v16 += 4 * *(a1 + 116);
LABEL_18:
      if (v26 <= ++v17)
      {
        goto LABEL_35;
      }
    }

    v20 = "__pIWordLkp->pfWord2fVector";
LABEL_17:
    if ((err_GenerateErrorInternalMsg(v20) & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

  return err_GenerateErrorArg();
}

uint64_t Homograph_UnloadModel(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  return _Model_Unload(a1);
}

uint64_t _Homograph_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v9 = "nn_word_lkp_GetInterface";
  }

  else
  {
    v2 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v2(NullHandle) & 0x80000000) == 0)
    {
      v11 = 0;
      if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v11) & 0x80000000) != 0)
      {
        v10 = "__pIWordLkp->pfGetVectorLength";
      }

      else
      {
        v4 = *(a1 + 116);
        if (v4 == v11)
        {
          v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
          *(a1 + 152) = v5;
          if (!v5)
          {
            return err_GenerateErrorResource();
          }

          v6 = *(a1 + 116);
          if (v6)
          {
            v7 = 0;
            do
            {
              *(v5 + 4 * v7++) = -1082130432;
            }

            while (v6 > v7);
          }

          return 0;
        }

        v10 = "inshape_dim2 != charEmbeddingDimension";
      }

      return err_GenerateErrorInternalMsg(v10);
    }

    v9 = "__pIWordLkp->pfObjOpen";
  }

  return err_GenerateErrorInternalMsg(v9);
}

uint64_t _Homograph_PreFIDeinit(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[19] = 0;
  }

  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v4))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v5;
    }

    a1[16] = 0;
  }

  return 0;
}

uint64_t PNEW_Homograph_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 160, &v14);
  result = v14;
  if (!v14)
  {
    result = Homograph_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t aux_Utf8CharInfoForSentence(char *__s, int a2, int a3, uint64_t a4, _WORD *a5, unsigned __int16 *a6, unsigned __int16 *a7)
{
  result = StringList_FromSplitStringInUtf8(a4, __s, 0xFFFF, 0, 0, a5);
  if (!result)
  {
    *a6 = -1;
    *a7 = -1;
    if (*a5)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (*a6 != -1 && *a7 != -1)
        {
          break;
        }

        if (v16 == a2)
        {
          *a6 = v15;
        }

        if (v16 == a3)
        {
          *a7 = v15;
        }

        v17 = StringList_GetAt(a4, v15);
        v16 += cstdlib_strlen(v17);
        ++v15;
      }

      while (*a5 > v15);
    }

    if (a3 == cstdlib_strlen(__s))
    {
      *a7 = *a5 + 1;
    }

    if (*a6 == -1 || *a7 == -1)
    {

      return err_GenerateErrorInternalMsg("utf8 error");
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fe_nn_g2p_component_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2707431425;
  }

  result = 0;
  *a2 = &IFeNng2p;
  return result;
}

uint64_t fe_nng2p_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2707431431;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t fe_nng2p_ObjOpen(_WORD *a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  v5 = 2707431431;
  if (a5)
  {
    inited = InitRsrcFunction(a1, a2, &v19);
    if ((inited & 0x80000000) == 0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      inited = InitRsrcFunction(a3, a4, &v18);
      if ((inited & 0x80000000) == 0)
      {
        v10 = heap_Calloc(*(v18 + 8), 1, 64);
        if (!v10)
        {
          log_OutPublic(*(v18 + 32), "FE_NN_G2P", 78000, 0, v11, v12, v13, v14, v18);
          return 2707431434;
        }

        v15 = v10;
        *v10 = a3;
        v10[1] = a4;
        Allocator = ooc_utils_createAllocator((v10 + 2), a3, a4);
        inited = LH_ERROR_to_VERROR(Allocator);
        if ((inited & 0x80000000) == 0)
        {
          *a5 = v15;
          *(a5 + 8) = 1069;
          return fe_nng2p_ObjReopen(v15, *(a5 + 8));
        }
      }
    }

    return inited;
  }

  return v5;
}

uint64_t fe_nng2p_ObjClose(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = 2707431432;
  if ((safeh_HandleCheck(a1, a2, 1069, 64) & 0x80000000) == 0 && a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v6);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v3 = LH_ERROR_to_VERROR(0);
      if ((v3 & 0x80000000) == 0)
      {
        luavmldoutil_destroy_lua_vm(a1 + 16, (a1 + 56));
        OOCAllocator_Des();
        heap_Free(*(v6 + 8), a1);
      }
    }
  }

  return v3;
}

uint64_t fe_nng2p_ObjReopen(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1069, 64) & 0x80000000) != 0 || !a1)
  {
    return 2707431432;
  }

  v3 = *a1;
  v4 = a1[1];

  return luavmldoutil_initialize_lua_vm(v3, v4, (a1 + 2), "runG2P", "FE_NN_G2P", a1 + 7, 0);
}

uint64_t fe_nng2p_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  if ((safeh_HandleCheck(a1, a2, 1069, 64) & 0x80000000) != 0)
  {
    return 2707431432;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v25);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 1;
    log_OutText(*(v25 + 32), "FE_NN_G2P", 4, 0, "Entering fe_nng2p_Process", v9, v10, v11, v22);
    if (*(a1 + 56))
    {
      Interface = lingdb_GetInterface(1u, &v24);
      if ((Interface & 0x80000000) != 0)
      {
        return Interface;
      }

      inited = LingDBIsValid(v24, a3, a4, &v26);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      if (v26 == 1)
      {
        inited = LingDBHasSentence(v24, a3, a4, &v26 + 1);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        if (HIDWORD(v26) == 1)
        {
          v17 = auxTouchLingdbInstance(v24, a3, a4);
          if ((v17 & 0x80000000) != 0)
          {
LABEL_15:
            inited = v17;
            goto LABEL_22;
          }

          inited = initLDO(a1 + 16, &v23);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          if (v23)
          {
            v17 = importFromLingDBWordRecord(v25, v24, a3, a4, &v23, 0);
            if ((v17 & 0x80000000) == 0)
            {
              v18 = LuaVMLDO_RunFunction(*(a1 + 56), "runG2P", v23);
              v17 = LH_ERROR_to_VERROR(v18);
              if ((v17 & 0x80000000) == 0)
              {
                v17 = exportToLingDBWordRecord(v25, v24, a3, a4, a1 + 16, v23, 0);
              }
            }

            goto LABEL_15;
          }

          v19 = *(v25 + 32);
          v20 = "Init LDO is NULL, returning";
        }

        else
        {
          v19 = *(v25 + 32);
          v20 = "LingDB has no sentence, returning";
        }
      }

      else
      {
        v19 = *(v25 + 32);
        v20 = "Empty or Invalid LingDB, returning";
      }
    }

    else
    {
      v19 = *(v25 + 32);
      v20 = "No NNG2P Lua script available, returning";
    }

    log_OutText(v19, "FE_NN_G2P", 5, 0, v20, v13, v14, v15, 0);
LABEL_22:
    if (v23)
    {
      deinitLDO(a1 + 16, v23);
    }
  }

  return inited;
}

uint64_t fe_nng2p_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 1069, 64);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2707431432;
  }
}

uint64_t auxTouchLingdbInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v7 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(a1 + 160))(a2, a3, HIWORD(v7), 2, 1, "", &v7);
  }

  return result;
}

uint64_t fe_clm_component_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2346721281;
  }

  result = 0;
  *a2 = &IFeClm;
  return result;
}

uint64_t fe_clm_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2346721287;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t fe_clm_ObjOpen(_WORD *a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  v5 = 2346721287;
  v20 = 0;
  if (a5)
  {
    inited = InitRsrcFunction(a1, a2, &v22);
    if ((inited & 0x80000000) == 0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      inited = InitRsrcFunction(a3, a4, &v21);
      if ((inited & 0x80000000) == 0)
      {
        v10 = heap_Calloc(*(v21 + 8), 1, 72);
        if (!v10)
        {
          log_OutPublic(*(v21 + 32), "FE_CLM", 78000, 0, v11, v12, v13, v14, v19[0]);
          return 2346721290;
        }

        v15 = v10;
        *v10 = a3;
        v10[1] = a4;
        if ((paramc_ParamGetStr(*(v21 + 40), "shortfragmentforceclm", &v20) & 0x80000000) != 0 || !v20 || (v16 = *(v21 + 40), v19[0] = v15, v19[1] = fe_clm_CheckParamChange, v19[2] = fe_clm_LearnParamChange, inited = paramc_ListenerAdd(v16, "shortfragmentforceclm", v19), (inited & 0x80000000) == 0))
        {
          Allocator = ooc_utils_createAllocator((v15 + 2), *v15, v15[1]);
          inited = LH_ERROR_to_VERROR(Allocator);
          if ((inited & 0x80000000) == 0)
          {
            *a5 = v15;
            *(a5 + 8) = 381;
            return fe_clm_ObjReopen(v15, *(a5 + 8));
          }
        }
      }
    }

    return inited;
  }

  return v5;
}

uint64_t fe_clm_ObjClose(uint64_t a1, int a2)
{
  v9 = 0;
  v8 = 0;
  inited = 2346721288;
  if ((safeh_HandleCheck(a1, a2, 381, 72) & 0x80000000) == 0)
  {
    if (a1)
    {
      inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
      if ((inited & 0x80000000) == 0)
      {
        if ((paramc_ParamGetStr(*(v9 + 40), "shortfragmentforceclm", &v8) & 0x80000000) == 0 && v8)
        {
          v4 = *(v9 + 40);
          *&v6 = a1;
          *(&v6 + 1) = fe_clm_CheckParamChange;
          v7 = fe_clm_LearnParamChange;
          paramc_ListenerRemove(v4, "shortfragmentforceclm", &v6);
        }

        luavmldoutil_destroy_lua_vm(a1 + 16, (a1 + 56));
        OOCAllocator_Des();
        heap_Free(*(v9 + 8), a1);
      }
    }
  }

  return inited;
}

uint64_t fe_clm_ObjReopen(_WORD **a1, int a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v3 = 2346721288;
  if ((safeh_HandleCheck(a1, a2, 381, 72) & 0x80000000) != 0 || !a1)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, a1[1], &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  luavmldoutil_destroy_lua_vm((a1 + 2), a1 + 7);
  Object = paramc_ParamGet(v18[5], "langcode", &v19, 0);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  Object = objc_GetObject(v18[6], "CLMOBJECT", &v17);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v3 = (*(v17[1] + 96))(v17[2], v17[3], a1 + 8);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 16);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_18;
      }

      v10 = v19;
      v11 = v18[4];
      v12 = "CLM to main language [%s]  will be done in  fe/fe_clm component (before fe_global).";
      goto LABEL_17;
    }

LABEL_12:
    log_OutText(v18[4], "FE_CLM", 5, 0, "CLM Lua script for main language [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", v6, v7, v8, v19);
    goto LABEL_20;
  }

  if (v9 == 2)
  {
    v10 = v19;
    v11 = v18[4];
    v12 = "CLM to main language [%s]  will be done in  fe/fe_clm component (after fe_global).";
  }

  else
  {
    if (v9 != 3)
    {
      goto LABEL_18;
    }

    v10 = v19;
    v11 = v18[4];
    v12 = "CLM to main language [%s] will be done with explicit insertion of the  fe/fe_clm component.";
  }

LABEL_17:
  log_OutText(v11, "FE_CLM", 5, 0, v12, v6, v7, v8, v10);
LABEL_18:
  Object = luavmldoutil_initialize_lua_vm(*a1, a1[1], (a1 + 2), "runCLM", "FE_CLM", a1 + 7, "clm");
  if ((Object & 0x80000000) == 0)
  {
LABEL_19:
    v3 = Object;
    goto LABEL_20;
  }

  log_OutText(v18[4], "FE_CLM", 5, 0, "CLM Lua function [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", v13, v14, v15, "runCLM");
  v3 = 0;
LABEL_20:
  if (v17)
  {
    objc_ReleaseObject(v18[6], "CLMOBJECT");
  }

  return v3;
}

uint64_t fe_clm_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  inited = 2346721288;
  if ((safeh_HandleCheck(a1, a2, 381, 72) & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a1)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v27);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a5 = 1;
  log_OutText(*(v27 + 32), "FE_CLM", 4, 0, "Entering fe_clm_Process", v10, v11, v12, v23);
  if (*(a1 + 56))
  {
    Interface = lingdb_GetInterface(1u, &v25);
    if ((Interface & 0x80000000) != 0)
    {
      return Interface;
    }

    inited = LingDBIsValid(v25, a3, a4, &v24);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (v24 == 1)
    {
      inited = LingDBHasSentence(v25, a3, a4, &v24 + 1);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      if (HIDWORD(v24) == 1)
      {
        v17 = auxTouchLingdbInstance(v25, a3, a4);
        if ((v17 & 0x80000000) != 0)
        {
LABEL_16:
          inited = v17;
          goto LABEL_22;
        }

        inited = initLDO(a1 + 16, &v26);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        if (v26)
        {
          v18 = *(a1 + 64) != 1;
          v17 = importFromLingDBWordRecord(v27, v25, a3, a4, &v26, v18);
          if ((v17 & 0x80000000) == 0)
          {
            v19 = LuaVMLDO_RunFunction(*(a1 + 56), "runCLM", v26);
            v17 = LH_ERROR_to_VERROR(v19);
            if ((v17 & 0x80000000) == 0)
            {
              v17 = exportToLingDBWordRecord(v27, v25, a3, a4, a1 + 16, v26, v18);
            }
          }

          goto LABEL_16;
        }

        v20 = *(v27 + 32);
        v21 = "Init LDO is NULL, returning";
      }

      else
      {
        v20 = *(v27 + 32);
        v21 = "LingDB has no sentence, returning";
      }
    }

    else
    {
      v20 = *(v27 + 32);
      v21 = "Empty or Invalid LingDB, returning";
    }
  }

  else
  {
    v20 = *(v27 + 32);
    v21 = "No CLM Lua script available, returning";
  }

  log_OutText(v20, "FE_CLM", 5, 0, v21, v13, v14, v15, 0);
LABEL_22:
  if (v26)
  {
    deinitLDO(a1 + 16, v26);
  }

  return inited;
}

uint64_t fe_clm_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 381, 72);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2346721288;
  }
}

uint64_t fe_clm_CheckParamChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  v20 = 0;
  if (a1 && (v7 = cstdlib_strcmp(__s1, "shortfragmentforceclm"), a3) && !v7 && cstdlib_strlen(a3))
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v20);
    if ((result & 0x80000000) == 0)
    {
      if (LH_strnicmp(a3, "phrase:", 7uLL))
      {
        v12 = (a3 + 1);
        v13 = 1;
        while (1)
        {
          v14 = *(v12 - 1);
          if (!*(v12 - 1))
          {
            goto LABEL_26;
          }

          if (v14 == 58)
          {
            break;
          }

          if ((v14 - 58) < 0xFFFFFFF6)
          {
            goto LABEL_26;
          }

          if (v13)
          {
            v15 = v14 == 48;
          }

          else
          {
            v15 = 0;
          }

          v13 = v15;
          ++v12;
        }

        if (v13)
        {
LABEL_26:
          *a4 = 0;
          goto LABEL_27;
        }

        *a4 = 1;
      }

      else
      {
        *a4 = 1;
        v12 = (a3 + 7);
      }

      v18 = *v12;
      v16 = v12 + 1;
      v17 = v18;
      while (v17 > 89 || v17 == 44)
      {
        v19 = *v16++;
        v17 = v19;
        if (!v19)
        {
          goto LABEL_23;
        }
      }

      *a4 = v17 == 0;
      if (v17)
      {
LABEL_27:
        log_OutText(*(v20 + 32), "FE_CLM", 5, 0, "%s=%s : IGNORED (invalid)", v9, v10, v11, "shortfragmentforceclm");
      }

      return 0;
    }
  }

  else
  {
LABEL_23:
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t com_depes_InitLayers(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  return 0;
}

uint64_t com_depes_FreeLayers(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 16;
  v5 = (a2 + 112);
  do
  {
    v6 = *(v4 + v3);
    if (v6)
    {
      heap_Free(*(a1 + 8), v6);
      *(v4 + v3) = 0;
    }

    *(v5 - 16) = 0;
    *(v5 - 8) = 0;
    *v5++ = 0;
    v3 += 8;
  }

  while (v3 != 64);
  return 0;
}

uint64_t com_depes_PrepareLayersForLen(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 0xFFFF)
  {
    v26 = 2305826825;
    v22 = *a1;
    goto LABEL_28;
  }

  v10 = a1 + 10;
  v9 = *(a1 + 40);
  v11 = *(a1 + 5);
  if (v11 >= 2)
  {
    v12 = a1 + 41;
    v13 = v11 - 1;
    do
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 >= v9)
      {
        v9 = v9;
      }

      else
      {
        v9 = v14;
      }

      --v13;
    }

    while (v13);
  }

  v16 = a2 + 1;
  if (v9 >= (a2 + 1))
  {
    return 0;
  }

  v17 = v9 ? v9 : 200;
  do
  {
    v18 = v17;
    v19 = v17;
    if (v17 >= v16)
    {
      break;
    }

    v17 *= 2;
  }

  while ((v18 & 0x8000) == 0);
  v20 = v19 < v16 ? -1 : v18;
  if (!*(a1 + 5))
  {
    return 0;
  }

  v21 = 0;
  v22 = *a1;
  while (*(v10 + v21) >= v20)
  {
LABEL_25:
    if (++v21 >= v11)
    {
      return 0;
    }
  }

  v23 = *(v22 + 8);
  v24 = &v10[v21];
  if (*(v10 + v21))
  {
    v25 = heap_Realloc(v23, *(v24 - 8), v20);
    if (!v25)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v25 = heap_Alloc(v23, v20);
  if (v25)
  {
LABEL_24:
    *(v24 - 8) = v25;
    *(v10 + v21) = v20;
    LODWORD(v11) = *(a1 + 5);
    goto LABEL_25;
  }

LABEL_30:
  v26 = 2305826826;
LABEL_28:
  log_OutPublic(*(v22 + 32), "COM_DEPES", 38000, 0, a5, a6, a7, a8, v28);
  return v26;
}

uint64_t com_depes_StartWritingToLayers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = com_depes_PrepareLayersForLen(a1, 1, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0 && *(a1 + 10))
  {
    v10 = 0;
    do
    {
      **(a1 + 16 + 8 * v10++) = 0;
    }

    while (v10 < *(a1 + 10));
  }

  return result;
}

uint64_t com_depes_GetMaxLayerLenBytes(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  *a4 = 0;
  if (a2 <= a3)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 96 + 2 * a2);
      if (v5 > v4)
      {
        *a4 = v5;
        v4 = v5;
      }

      LOWORD(a2) = a2 + 1;
    }

    while (a3 >= a2);
  }

  return 0;
}

uint64_t com_depes_AddToLayerGen(uint64_t *a1, unsigned int a2, char *__s, int a4, int a5)
{
  v6 = __s;
  v9 = a4 & ~(a4 >> 31);
  v10 = cstdlib_strlen(__s);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  v19 = Utf8_LengthInUtf8chars(v6, v11);
  v20 = 0;
  if (v12)
  {
    v21 = v12;
    v22 = v6;
    do
    {
      v23 = 1;
      if (a5 && *v22 == 126)
      {
        v23 = cstdlib_strlen("¡");
      }

      v20 += v23;
      ++v22;
      --v21;
    }

    while (v21);
  }

  v24 = a1 + 12;
  result = com_depes_PrepareLayersForLen(a1, (*(a1 + a2 + 48) + v20), v13, v14, v15, v16, v17, v18);
  if ((result & 0x80000000) == 0)
  {
    v26 = (a1[a2 + 2] + *(v24 + a2));
    for (i = 0; v12; --v12)
    {
      v28 = *v6;
      if (a5 && v28 == 126)
      {
        *v26++ = -24126;
        v29 = 2;
      }

      else
      {
        *v26 = v28;
        v26 = (v26 + 1);
        v29 = 1;
      }

      i += v29;
      ++v6;
    }

    *v26 = 0;
    *(v24 + a2) += i;
    *(a1 + a2 + 56) += v19;
  }

  return result;
}

uint64_t com_depes_AddToLayer(uint64_t *a1, unsigned int a2, char *__s)
{
  v6 = cstdlib_strlen(__s);

  return com_depes_AddToLayerGen(a1, a2, __s, v6, 1);
}

uint64_t com_depes_FillToMaxLayerSet(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    return 0;
  }

  v12 = 0;
  v13 = 112;
  v14 = *(a1 + 10);
  v15 = a2;
  do
  {
    v16 = *v15++;
    if (v16 == 1 && *(a1 + v13) > v12)
    {
      v12 = *(a1 + v13);
    }

    v13 += 2;
    --v14;
  }

  while (v14);
  v17 = 0;
  do
  {
    if (a2[v17] == 1)
    {
      v18 = a1 + 2 * v17;
      v19 = *(v18 + 112);
      v20 = v12 - v19;
      result = com_depes_PrepareLayersForLen(a1, (*(v18 + 96) + v12 - v19), a3, a4, a5, a6, a7, a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *(a3 + v17);
      v23 = *(v18 + 96);
      v24 = a1 + 8 * v17;
      if (!*(a3 + v17))
      {
        if (*(v18 + 96))
        {
          v22 = *(*(v24 + 16) + (v23 - 1));
        }

        else
        {
          v22 = 126;
        }
      }

      v25 = (*(v24 + 16) + v23);
      if (v19 != v12)
      {
        v26 = (v12 + ~v19) + 1;
        memset(v25, v22, v26);
        v25 += v26;
      }

      *v25 = 0;
      *(v18 + 96) += v20;
      *(v18 + 112) += v20;
      v8 = *(a1 + 10);
    }

    ++v17;
  }

  while (v17 < v8);
  return 0;
}

uint64_t com_depes_FillToMaxLayerRange(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (!a2 || (bzero(v14, 4 * a2), v10 <= a3))
  {
    do
    {
      v14[v10] = 1;
      LOWORD(v10) = v10 + 1;
    }

    while (a3 >= v10);
  }

  v12 = *(a1 + 10);
  if (v12 > v10)
  {
    bzero(&v14[v10], 4 * (v12 + ~v10) + 4);
  }

  return com_depes_FillToMaxLayerSet(a1, v14, a4, a4, a5, a6, a7, a8);
}

uint64_t com_depes_InsertBeforeEnd(uint64_t *a1, unsigned int a2, char *__s, int a4)
{
  v5 = __s;
  v8 = a1 + 12;
  v9 = *(a1 + a2 + 48);
  v10 = cstdlib_strlen(__s);
  v11 = v10;
  v12 = Utf8_LengthInUtf8chars(v5, v10);
  v19 = com_depes_PrepareLayersForLen(a1, (*(v8 + a2) + v10), v13, v14, v15, v16, v17, v18);
  if ((v19 & 0x80000000) == 0)
  {
    LODWORD(v20) = a4 & ~(a4 >> 31);
    if (v9 >= a4)
    {
      v20 = v20;
    }

    else
    {
      v20 = v9;
    }

    v21 = (a1[a2 + 2] + *(v8 + a2) - v20);
    cstdlib_memmove(&v21[v10], v21, v20);
    if (v10)
    {
      do
      {
        v22 = *v5++;
        *v21++ = v22;
        --v11;
      }

      while (v11);
    }

    v23 = *(v8 + a2) + v10;
    *(v8 + a2) = v23;
    *(a1 + a2 + 56) += v12;
    *(a1[a2 + 2] + v23) = 0;
  }

  return v19;
}

size_t GetContextLenInNrChars(size_t result, int a2, int a3, int a4, int a5, _WORD *a6, _WORD *a7)
{
  v13 = result;
  v14 = 0;
  *a6 = 0;
  LOWORD(v15) = a2;
  *a7 = 0;
  if (a2 <= a3)
  {
    Utf32SymToUtf8Sym(*(result + 4 * a2), __s, 5u);
    result = cstdlib_strlen(__s);
    v14 = result;
  }

  if (a2 < a3 && v14 <= a4)
  {
    v15 = a2;
    do
    {
      v16 = *(v13 + 4 + 4 * v15++);
      Utf32SymToUtf8Sym(v16, __s, 5u);
      result = cstdlib_strlen(__s);
      if (v15 >= a3)
      {
        break;
      }

      v14 = (v14 + result);
    }

    while (v14 <= a4);
  }

  *a6 = v15 - a2;
  if (a2 <= a3)
  {
    Utf32SymToUtf8Sym(*(v13 + 4 * a3), __s, 5u);
    result = cstdlib_strlen(__s);
    v17 = result;
  }

  else
  {
    v17 = 0;
  }

  LOWORD(v18) = a3;
  if (a2 < a3 && v17 <= a5)
  {
    v18 = a3;
    do
    {
      v19 = *(v13 - 4 + 4 * v18--);
      Utf32SymToUtf8Sym(v19, __s, 5u);
      result = cstdlib_strlen(__s);
      if (v18 <= a2)
      {
        break;
      }

      v17 = (v17 + result);
    }

    while (v17 <= a5);
  }

  *a7 = a3 - v18;
  return result;
}

uint64_t INFERENCE(uint64_t a1, uint64_t a2, int a3, __int16 *a4)
{
  if (*(a1 + 1428))
  {
    return 0;
  }

  v168 = v4;
  v169 = v5;
  v7 = a4;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  memset(v137, 0, sizeof(v137));
  v10 = *a4;
  if (*(a1 + 24) <= 0)
  {
    v13 = a3;
    v14 = a3 - 1;
    v15 = (v10 - a3 + 1);
  }

  else
  {
    v12 = 0;
    v13 = a3;
    v14 = a3 - 1;
    v15 = (v10 - a3 + 1);
    v16 = *(a1 + 1504);
    do
    {
      cstdlib_memmove((*(v16 + 8 * v12) + 4 * a3), (*(v16 + 8 * v12) + 4 * v14), 4 * v15);
      v16 = *(a1 + 1504);
      v17 = *(v16 + 8 * v12);
      *(v17 + 4 * v10 + 4) = 31;
      *(v17 + 4 * v14) = 31;
      ++v12;
    }

    while (v12 < *(a1 + 24));
    v7 = a4;
  }

  cstdlib_memmove((*(a1 + 1560) + v13), (*(a1 + 1560) + v14), v15);
  *(*(a1 + 1560) + v10 + 1) = 0;
  *(*(a1 + 1560) + v14) = 0;
  v18 = *v7 + 1;
  *v7 = v18;
  WORD1(v137[2]) = v18;
  v19 = **(a1 + 1504);
  *(a1 + 1448) = v19;
  *(a1 + 1440) = v19;
  *(&v137[0] + 1) = v19;
  *&v137[1] = v19;
  *(a1 + 1410) = 0;
  v167 = 0;
  v165 = 0;
  *(a1 + 2096) = 0u;
  cstdlib_memset(&v137[2] + 4, 0, 0x200uLL);
  if (SWORD1(v137[2]) > a3)
  {
    v23 = a3;
    do
    {
      Utf32SymToUtf8Sym(*(**(a1 + 1504) + 4 * v23), v136, 5u);
      v24 = v136[0];
      if (v136[0])
      {
        v25 = 0;
        do
        {
          ++*(&v137[2] + v24 + 2);
          v24 = v136[++v25];
        }

        while (v136[v25]);
      }

      ++v23;
    }

    while (v23 < SWORD1(v137[2]));
  }

  WORD1(v138) = 2;
  v26 = a2 - 1;
  HIWORD(v137[1]) = *(*(a1 + 64) + 2 * (a2 - 1)) - 1;
  if ((HIWORD(v137[1]) & 0x8000) != 0)
  {
    return 0;
  }

  log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 6, 0, "Start gram number %d", v20, v21, v22, a2);
  *(a1 + 2 * *(a1 + 1430) + 1568) = a3;
  v27 = SHIWORD(v137[1]);
  *(a1 + 2 * *(a1 + 1430) + 1824) = HIWORD(v137[1]);
  if (v27 < *(*(a1 + 72) + 2 * v26))
  {
    v28 = (a1 + 152);
    do
    {
      v29 = *(a1 + 120);
      LODWORD(v137[0]) = *(*(a1 + 112) + 4 * v27);
      GetContextLenInNrChars(*(&v137[0] + 1), a3, SWORD1(v137[2]), *(v29 + v27), *(*(a1 + 128) + v27), &v137[1] + 4, &v137[1] + 5);
      v34 = HIWORD(v137[1]) + 1;
      ++HIWORD(v137[1]);
      v35 = *(a1 + 176);
      v36 = LODWORD(v137[0]);
      v37 = *(v35 + (LODWORD(v137[0]) - 1));
      if (v37 > 0x64)
      {
        LOWORD(v37) = v37 - 100;
      }

      *(a1 + 1408) = v37;
      switch(v37)
      {
        case 1:
          v38 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v38) + 2) && *(&v137[2] + *(*(a1 + 168) + v38) + 2))
          {
            v166 = *(v35 + v36);
            for (i = WORD4(v137[1]) + a3; ; i = v44 + 1)
            {
              LOWORD(v137[2]) = i;
              if (SWORD1(v137[2]) - SWORD5(v137[1]) < i || *(a1 + 1428))
              {
                break;
              }

              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * i - 4), v136, 5u);
              if (v136[0] == v166)
              {
                v164 = 0;
                *(a1 + 1456) = *(a1 + 176) + (LODWORD(v137[0]) + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, SHIWORD(v137[1]), (LOWORD(v137[2]) + 1), v137, v40, v41, v42, v43);
                v44 = v164 + LOWORD(v137[2]);
              }

              else
              {
                v44 = v137[2];
              }
            }
          }

          goto LABEL_215;
        case 2:
          v92 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v92) + 2) && *(&v137[2] + *(*(a1 + 168) + v92) + 2))
          {
            v93 = WORD1(v137[2]) - WORD5(v137[1]) + 1;
            LOWORD(v137[2]) = v93;
            v166 = *(v35 + v36);
            while (SWORD4(v137[1]) + a3 <= v93 && !*(a1 + 1428))
            {
              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v93 - 4), v136, 5u);
              if (v136[0] == v166)
              {
                *(a1 + 1456) = *(a1 + 176) + (LODWORD(v137[0]) + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, SHIWORD(v137[1]), (LOWORD(v137[2]) + 1), v137, v94, v95, v96, v97);
              }

              v93 = --LOWORD(v137[2]);
            }
          }

          goto LABEL_215;
        case 3:
          v74 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v74) + 2))
          {
            if (*(&v137[2] + *(*(a1 + 168) + v74) + 2))
            {
              v75 = WORD4(v137[1]) + a3;
              LOWORD(v137[2]) = WORD4(v137[1]) + a3;
              v166 = *(v35 + v36);
              *(a1 + 1384) = 0;
              if (SWORD1(v137[2]) - SWORD5(v137[1]) >= v75)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    goto LABEL_118;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v75 - 4), v136, 5u);
                  if (v136[0] == v166)
                  {
                    *(a1 + 1456) = *(a1 + 176) + (LODWORD(v137[0]) + 1);
                    *(a1 + 1470) = 1;
                    EXEC_RULE(a1, SHIWORD(v137[1]), (LOWORD(v137[2]) + 1), v137, v76, v77, v78, v79);
                    v75 = ++LOWORD(v137[2]);
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v75 = ++LOWORD(v137[2]);
                  }
                }

                while (SWORD1(v137[2]) - SWORD5(v137[1]) >= v75);
                goto LABEL_118;
              }
            }
          }

          goto LABEL_215;
        case 4:
          v83 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v83) + 2))
          {
            if (*(&v137[2] + *(*(a1 + 168) + v83) + 2))
            {
              v84 = WORD1(v137[2]) - WORD5(v137[1]) + 1;
              LOWORD(v137[2]) = v84;
              v166 = *(v35 + v36);
              *(a1 + 1384) = 0;
              if (SWORD4(v137[1]) + a3 <= v84)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    break;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v84 - 4), v136, 5u);
                  if (v136[0] == v166)
                  {
                    *(a1 + 1470) = 1;
                    *(a1 + 1456) = *(a1 + 176) + (LODWORD(v137[0]) + 1);
                    EXEC_RULE(a1, SHIWORD(v137[1]), (LOWORD(v137[2]) + 1), v137, v85, v86, v87, v88);
                    v84 = --LOWORD(v137[2]);
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v84 = --LOWORD(v137[2]);
                  }
                }

                while (SWORD4(v137[1]) + a3 <= v84);
LABEL_118:
                if (*(a1 + 1384) == 1)
                {
                  goto LABEL_151;
                }
              }
            }
          }

          goto LABEL_215;
        case 5:
          v58 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v58) + 2) && *(&v137[2] + *(*(a1 + 168) + v58) + 2))
          {
            for (j = WORD4(v137[1]) + a3; ; j = v164 + LOWORD(v137[2]) + 1)
            {
              LOWORD(v137[2]) = j;
              if (SWORD1(v137[2]) - SWORD5(v137[1]) < j || *(a1 + 1428))
              {
                break;
              }

              v164 = 0;
              *(a1 + 1456) = *(a1 + 176) + LODWORD(v137[0]);
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, SHIWORD(v137[1]), j, v137, v30, v31, v32, v33);
            }
          }

          goto LABEL_215;
        case 6:
          v98 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v98) + 2) && *(&v137[2] + *(*(a1 + 168) + v98) + 2))
          {
            for (k = WORD1(v137[2]) - WORD5(v137[1]); ; k = LOWORD(v137[2]) - 1)
            {
              LOWORD(v137[2]) = k;
              if (SWORD4(v137[1]) + a3 > k || *(a1 + 1428))
              {
                break;
              }

              *(a1 + 1456) = *(a1 + 176) + LODWORD(v137[0]);
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, SHIWORD(v137[1]), k, v137, v30, v31, v32, v33);
            }
          }

          goto LABEL_215;
        case 7:
          v100 = v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v100) + 2))
          {
            if (*(&v137[2] + *(*(a1 + 168) + v100) + 2))
            {
              v101 = WORD4(v137[1]) + a3;
              LOWORD(v137[2]) = WORD4(v137[1]) + a3;
              *(a1 + 1384) = 0;
              if (SWORD1(v137[2]) - SWORD5(v137[1]) >= v101)
              {
                while (1)
                {
                  v91 = *(a1 + 1384);
                  if (v91)
                  {
                    goto LABEL_150;
                  }

                  if (*(a1 + 1428))
                  {
                    break;
                  }

                  *(a1 + 1456) = *(a1 + 176) + LODWORD(v137[0]);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, SHIWORD(v137[1]), v101, v137, v30, v31, v32, v33);
                  v101 = LOWORD(v137[2]) + 1;
                  LOWORD(v137[2]) = v101;
                  if (SWORD1(v137[2]) - SWORD5(v137[1]) < v101)
                  {
                    goto LABEL_149;
                  }
                }
              }
            }
          }

          goto LABEL_215;
        case 8:
          v89 = v34 - 1;
          if (!*(&v137[2] + *(*(a1 + 160) + v89) + 2))
          {
            goto LABEL_215;
          }

          if (!*(&v137[2] + *(*(a1 + 168) + v89) + 2))
          {
            goto LABEL_215;
          }

          v90 = WORD1(v137[2]) - WORD5(v137[1]);
          LOWORD(v137[2]) = WORD1(v137[2]) - WORD5(v137[1]);
          *(a1 + 1384) = 0;
          if (SWORD4(v137[1]) + a3 > v90)
          {
            goto LABEL_215;
          }

          while (1)
          {
            v91 = *(a1 + 1384);
            if (v91)
            {
              break;
            }

            if (*(a1 + 1428))
            {
              goto LABEL_215;
            }

            *(a1 + 1456) = *(a1 + 176) + LODWORD(v137[0]);
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, SHIWORD(v137[1]), v90, v137, v30, v31, v32, v33);
            v90 = LOWORD(v137[2]) - 1;
            LOWORD(v137[2]) = v90;
            if (SWORD4(v137[1]) + a3 > v90)
            {
LABEL_149:
              v91 = *(a1 + 1384);
              break;
            }
          }

LABEL_150:
          if (v91 == 1)
          {
            goto LABEL_151;
          }

          goto LABEL_215;
        case 9:
          LODWORD(v165) = 1;
          v108 = WORD4(v137[1]) + a3;
          LOWORD(v137[2]) = WORD4(v137[1]) + a3;
          v109 = WORD5(v137[1]);
          if (SWORD1(v137[2]) - SWORD5(v137[1]) < (WORD4(v137[1]) + a3))
          {
            goto LABEL_213;
          }

          v110 = WORD1(v137[2]);
          while (1)
          {
            LOWORD(v111) = HIWORD(v137[1]);
            if (*(a1 + 1428))
            {
              break;
            }

            v164 = -2;
            v112 = HIWORD(v137[1]) + *(*v28 + SHIWORD(v137[1]) - 1);
            WORD6(v137[1]) = v112;
            if (SHIWORD(v137[1]) > v112)
            {
              goto LABEL_164;
            }

            v113 = v112;
            do
            {
              v114 = v111 - 1;
              if (*(&v137[2] + *(*(a1 + 160) + v114) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v114);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, v111, SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                v113 = WORD6(v137[1]);
              }

              v111 = (v111 + 1);
            }

            while (v111 <= v113);
            v108 = LOWORD(v137[2]);
            v110 = WORD1(v137[2]);
            v109 = WORD5(v137[1]);
            if (v164 == 65534)
            {
LABEL_164:
              v115 = 1;
            }

            else
            {
              v115 = v164 + 1;
            }

            v108 += v115;
            LOWORD(v137[2]) = v108;
            if (v110 - v109 < v108)
            {
              LOWORD(v34) = HIWORD(v137[1]);
              goto LABEL_213;
            }
          }

          LOWORD(v34) = HIWORD(v137[1]);
          goto LABEL_213;
        case 10:
          v68 = WORD1(v137[2]) - WORD5(v137[1]);
          LOWORD(v137[2]) = WORD1(v137[2]) - WORD5(v137[1]);
          if (SWORD4(v137[1]) + a3 > (WORD1(v137[2]) - WORD5(v137[1])))
          {
            goto LABEL_211;
          }

          v69 = WORD4(v137[1]);
          while (1)
          {
            LOWORD(v70) = HIWORD(v137[1]);
            if (*(a1 + 1428))
            {
              break;
            }

            v71 = HIWORD(v137[1]) + *(*v28 + SHIWORD(v137[1]) - 1);
            WORD6(v137[1]) = v71;
            if (SHIWORD(v137[1]) <= v71)
            {
              v72 = v71;
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v73 = v70 - 1;
                if (*(&v137[2] + *(*(a1 + 160) + v73) + 2))
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v73);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v70, SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                  v72 = WORD6(v137[1]);
                }

                v70 = (v70 + 1);
              }

              while (v70 <= v72);
              v68 = LOWORD(v137[2]);
              v69 = WORD4(v137[1]);
            }

            LOWORD(v137[2]) = --v68;
            if (a3 + v69 > v68)
            {
              LOWORD(v34) = HIWORD(v137[1]);
              goto LABEL_211;
            }
          }

          LOWORD(v34) = HIWORD(v137[1]);
LABEL_211:
          v124 = v34 + *(*v28 + v34 - 1);
          goto LABEL_197;
        case 11:
          v103 = WORD4(v137[1]) + a3;
          LOWORD(v137[2]) = WORD4(v137[1]) + a3;
          *(a1 + 1384) = 0;
          v104 = v34 + *(*(a1 + 152) + v34 - 1);
          WORD6(v137[1]) = v104;
          v105 = WORD1(v137[2]);
          v106 = WORD5(v137[1]);
          if (SWORD1(v137[2]) - SWORD5(v137[1]) < v103)
          {
            goto LABEL_153;
          }

          while (!*(a1 + 1384))
          {
            if (*(a1 + 1428))
            {
              goto LABEL_153;
            }

            LOWORD(v125) = HIWORD(v137[1]);
            if (SHIWORD(v137[1]) <= v104)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v126 = v125 - 1;
                if (*(&v137[2] + *(*(a1 + 160) + v126) + 2))
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v126);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v125, SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                  v104 = WORD6(v137[1]);
                }

                v125 = (v125 + 1);
              }

              while (v125 <= v104);
              v103 = LOWORD(v137[2]);
              v105 = WORD1(v137[2]);
              v106 = WORD5(v137[1]);
            }

            LOWORD(v137[2]) = ++v103;
            if (v105 - v106 < v103)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_151;
        case 12:
          v53 = WORD1(v137[2]) - WORD5(v137[1]);
          LOWORD(v137[2]) = WORD1(v137[2]) - WORD5(v137[1]);
          *(a1 + 1384) = 0;
          v54 = v34 + *(*(a1 + 152) + v34 - 1);
          WORD6(v137[1]) = v54;
          v55 = WORD4(v137[1]);
          if (SWORD4(v137[1]) + a3 > v53)
          {
            goto LABEL_153;
          }

          do
          {
            if (*(a1 + 1384))
            {
LABEL_151:
              v102 = (a1 + 144);
              goto LABEL_154;
            }

            if (*(a1 + 1428))
            {
              goto LABEL_153;
            }

            LOWORD(v56) = HIWORD(v137[1]);
            if (SHIWORD(v137[1]) <= v54)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v57 = v56 - 1;
                if (*(&v137[2] + *(*(a1 + 160) + v57) + 2))
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v57);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v56, SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                  v54 = WORD6(v137[1]);
                }

                v56 = (v56 + 1);
              }

              while (v56 <= v54);
              v53 = LOWORD(v137[2]);
              v55 = WORD4(v137[1]);
            }

            LOWORD(v137[2]) = --v53;
          }

          while (a3 + v55 <= v53);
LABEL_207:
          v102 = (a1 + 144);
          if (!*(a1 + 1384))
          {
LABEL_153:
            v102 = (a1 + 152);
          }

LABEL_154:
          LOWORD(v48) = HIWORD(v137[1]);
          v107 = *v102 + SHIWORD(v137[1]);
          goto LABEL_196;
        case 13:
          LODWORD(v165) = 1;
          v60 = WORD4(v137[1]) + a3;
          LOWORD(v137[2]) = WORD4(v137[1]) + a3;
          do
          {
            if (SWORD1(v137[2]) - SWORD5(v137[1]) < v60 || *(a1 + 1428))
            {
              break;
            }

            v61 = 0;
            v164 = -2;
            *(a1 + 1384) = 0;
            while (1)
            {
              v62 = v61;
              v63 = *(a1 + 1384);
              v64 = v62 <= *(*(a1 + 152) + v34 - 1) && v63 == 0;
              if (!v64 || *(a1 + 1428))
              {
                break;
              }

              v65 = v34 + v62 - 1;
              if (*(&v137[2] + *(*(a1 + 160) + v65) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v65);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v34 + v62), SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                LOWORD(v34) = HIWORD(v137[1]);
              }

              v61 = v62 + 1;
              v66 = *(a1 + 44);
              if (v66 < v34)
              {
                v63 = *(a1 + 1384);
                goto LABEL_77;
              }
            }

            LOWORD(v66) = *(a1 + 44);
LABEL_77:
            v67 = v63 ? v164 + 1 : 1;
            v60 = v67 + LOWORD(v137[2]);
            LOWORD(v137[2]) = v60;
          }

          while (v34 <= v66);
          if (*(a1 + 44) > v34)
          {
LABEL_213:
            HIWORD(v137[1]) = v34 + *(*v28 + v34 - 1);
          }

          LODWORD(v165) = 0;
          goto LABEL_215;
        case 14:
          LOWORD(v137[2]) = WORD1(v137[2]) - WORD5(v137[1]);
          if (SWORD4(v137[1]) + a3 > (WORD1(v137[2]) - WORD5(v137[1])))
          {
            LOWORD(v48) = v34;
            goto LABEL_194;
          }

          v48 = v34;
          do
          {
            v120 = *(a1 + 1428);
            if (*(a1 + 1428))
            {
              break;
            }

            v121 = 0;
            *(a1 + 1384) = 0;
            while (1)
            {
              if (*(a1 + 1428))
              {
                v123 = v34;
                goto LABEL_193;
              }

              v122 = v120 + v34 - 1;
              if (*(&v137[2] + *(*(a1 + 160) + v122) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v122);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v34 + v121), SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                v48 = HIWORD(v137[1]);
              }

              v120 = ++v121;
              if (v121 > *(*v28 + v48 - 1))
              {
                break;
              }

              v34 = v48;
              v123 = v48;
              if (*(a1 + 1384))
              {
                goto LABEL_193;
              }
            }

            v123 = v48;
LABEL_193:
            --LOWORD(v137[2]);
            v34 = v123;
          }

          while (SWORD4(v137[1]) + a3 <= SLOWORD(v137[2]));
LABEL_194:
          v82 = *v28;
          goto LABEL_195;
        case 15:
          v47 = WORD4(v137[1]) + a3;
          LOWORD(v137[2]) = WORD4(v137[1]) + a3;
          *(a1 + 1384) = 0;
          if (SWORD1(v137[2]) - SWORD5(v137[1]) < v47)
          {
            goto LABEL_106;
          }

          v48 = v34;
          while (!*(a1 + 1384))
          {
            v49 = *(a1 + 1428);
            if (*(a1 + 1428))
            {
              goto LABEL_107;
            }

            v50 = 0;
            while (!*(a1 + 1384) && !*(a1 + 1428))
            {
              v51 = v49 + v34 - 1;
              if (*(&v137[2] + *(*(a1 + 160) + v51) + 2))
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v51);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v34 + v50), SLOWORD(v137[2]), v137, v30, v31, v32, v33);
                v48 = HIWORD(v137[1]);
              }

              v49 = ++v50;
              v34 = v48;
              v52 = v48;
              if (v50 > *(*v28 + v48 - 1))
              {
                goto LABEL_43;
              }
            }

            v52 = v34;
LABEL_43:
            ++LOWORD(v137[2]);
            v34 = v52;
            if (SWORD1(v137[2]) - SWORD5(v137[1]) < SLOWORD(v137[2]))
            {
              goto LABEL_180;
            }
          }

          goto LABEL_209;
        case 16:
          v80 = WORD1(v137[2]) - WORD5(v137[1]);
          LOWORD(v137[2]) = WORD1(v137[2]) - WORD5(v137[1]);
          *(a1 + 1384) = 0;
          if (SWORD4(v137[1]) + a3 > v80)
          {
LABEL_106:
            LOWORD(v48) = v34;
            goto LABEL_107;
          }

          v48 = v34;
          break;
        default:
          if (v37 == 99)
          {
            v45 = *(a1 + 1504);
            *(&v137[0] + 1) = *(v45 + 8 * *(v35 + v36) - 8);
            *(a1 + 1440) = *(&v137[0] + 1);
            v46 = v36 + 1;
            *&v137[1] = *(v45 + 8 * *(v35 + v46) - 8);
            *(a1 + 1448) = *&v137[1];
            LOWORD(v45) = *(v35 + v46) - 1;
            *(a1 + 1410) = v45;
            v167 = v45;
          }

          goto LABEL_215;
      }

      do
      {
        if (*(a1 + 1384))
        {
LABEL_209:
          v81 = (a1 + 144);
          goto LABEL_108;
        }

        v116 = *(a1 + 1428);
        if (*(a1 + 1428))
        {
          goto LABEL_107;
        }

        v117 = 0;
        while (!*(a1 + 1384) && !*(a1 + 1428))
        {
          v118 = v116 + v34 - 1;
          if (*(&v137[2] + *(*(a1 + 160) + v118) + 2))
          {
            *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v118);
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, (v34 + v117), SLOWORD(v137[2]), v137, v30, v31, v32, v33);
            v48 = HIWORD(v137[1]);
          }

          v116 = ++v117;
          v34 = v48;
          v119 = v48;
          if (v117 > *(*v28 + v48 - 1))
          {
            goto LABEL_179;
          }
        }

        v119 = v34;
LABEL_179:
        --LOWORD(v137[2]);
        v34 = v119;
      }

      while (SWORD4(v137[1]) + a3 <= SLOWORD(v137[2]));
LABEL_180:
      v81 = (a1 + 144);
      if (!*(a1 + 1384))
      {
LABEL_107:
        v81 = (a1 + 152);
      }

LABEL_108:
      v82 = *v81;
LABEL_195:
      v107 = v82 + v48;
LABEL_196:
      v124 = v48 + *(v107 - 1);
LABEL_197:
      HIWORD(v137[1]) = v124;
LABEL_215:
      LOWORD(v27) = HIWORD(v137[1]);
    }

    while (SHIWORD(v137[1]) < *(*(a1 + 72) + 2 * v26));
  }

  v127 = SWORD1(v137[2]);
  v128 = v7;
  *v7 = WORD1(v137[2]);
  if (*(a1 + 24) >= 1)
  {
    v129 = 0;
    do
    {
      v130 = (*(*(a1 + 1504) + 8 * v129) + 4 * a3);
      cstdlib_memmove(v130 - 4, v130, 4 * (v127 - a3 + 1));
      ++v129;
    }

    while (v129 < *(a1 + 24));
  }

  *(*(a1 + 1560) + a3) += *(*(a1 + 1560) + a3 - 1);
  *(*(a1 + 1560) + v127 - 1) += *(*(a1 + 1560) + v127);
  cstdlib_memmove((*(a1 + 1560) + a3 - 1), (*(a1 + 1560) + a3), (v127 - a3));
  *(*(a1 + 1560) + v127 - 1) = 0;
  v134 = *v128 - 1;
  *v128 = v134;
  if (!*(a1 + 1430) && v134)
  {
    *(*(a1 + 1560) + v134 - 1) += *(*(a1 + 1560) + v134);
  }

  *(a1 + 1432) = 1;
  log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 6, 0, "End gram number %d", v131, v132, v133, a2);
  if (*(a1 + 1428))
  {
    *v128 = a3 - 1;
  }

  return HIDWORD(v165);
}

uint64_t EXEC_RULE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = result;
  LOWORD(v10) = 0;
  v11 = (a4 + 34);
  v291 = a2;
  v292 = *(a4 + 34);
  *(result + 1476) = 0;
  v12 = (result + 2096);
  v13 = (result + 1400);
  __s = (result + 1484);
  i = *(result + 1456);
  while (2)
  {
    switch(*i)
    {
      case 0:
        if (!v8)
        {
          goto LABEL_456;
        }

        v191 = *(a4 + 32);
        *(v9 + 1474) = v8 - v191;
        *(v9 + 1468) = -1;
        *(v9 + 1466) = v191 - 1;
        result = CTXT(v9, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          goto LABEL_456;
        }

        *(v9 + 1468) = 1;
        *(v9 + 1466) = v8;
        result = CTXT(v9, v192, v193, v194, v195, v196, v197, v198);
        if (!result)
        {
          goto LABEL_456;
        }

        v297 = 0;
        v202 = a4;
        v203 = *(a4 + 32);
        v204 = *(v9 + 1474);
        v293 = (v204 + v203);
        *(v9 + 1448) = *(a4 + 16);
        *(v9 + 1384) = 1;
        *(v9 + 1410) = *(a4 + 562);
        v205 = *(a4 + 34);
        v206 = v205;
        v207 = *(v9 + 1456);
        result = v207 + 1;
        *(v9 + 1456) = v207 + 1;
        v208 = *(v207 + 1);
        v288 = v203;
        if (v208 == 22)
        {
          v209 = (v204 + v203);
          v212 = *(*(v9 + 136) + v291 - 1);
          v213 = (v204 - v212);
          if (v293 - v203 <= v212)
          {
            v213 = 0;
          }

          v290 = v213;
          result = v207 + 2;
          *(v9 + 1456) = v207 + 2;
        }

        else
        {
          v209 = (v204 + v203);
          if (v208 == 1)
          {
            *(v9 + 1456) = v207 + 2;
            v210 = *(v207 + 2);
            if (v210 == 1)
            {
              v211 = v204 - 1;
              goto LABEL_443;
            }

            if (v210 == 2)
            {
              v211 = v204 - 1;
              *(a4 + 32) = **(v9 + 184);
              *(a4 + 30) = *(v9 + 44);
LABEL_443:
              if (!*(v202 + 552) || *(v202 + 548) < v211)
              {
                *(v202 + 548) = v211;
              }

              goto LABEL_446;
            }

            if (v203 < v293)
            {
              v244 = v203;
              do
              {
                Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v244), v298, 5u);
                v245 = v298[0];
                if (v298[0])
                {
                  v246 = 0;
                  do
                  {
                    --*(a4 + 36 + 2 * v245);
                    v245 = v298[++v246];
                  }

                  while (v298[v246]);
                }

                ++v244;
              }

              while (v244 != v293);
            }

            v247 = *(v9 + 24);
            v248 = v293;
            if (v247 <= 0)
            {
              v250 = v205 - v293 + 1;
              v202 = a4;
            }

            else
            {
              v249 = 0;
              v250 = v205 - v293 + 1;
              v202 = a4;
              do
              {
                v251 = *(v9 + 1416);
                v252 = *(v251 + 2 * v249) - v250;
                *(v251 + 2 * v249) = v252;
                v253 = *(*(v9 + 1504) + 8 * v249);
                cstdlib_memmove((v253 + 4 * v252), (v253 + 4 * v293), 4 * v250);
                ++v249;
                v247 = *(v9 + 24);
              }

              while (v249 < v247);
            }

            v254 = *(v9 + 1416);
            *(v254 + 2 * v247) -= v250;
            cstdlib_memmove((*(v9 + 1560) + *(v254 + 2 * *(v9 + 24))), (*(v9 + 1560) + v293), v250);
            cstdlib_memset((*(v9 + 1560) + v293), 0, v250);
            *v11 = v293;
            *(v9 + 1432) = 0;
            ++*(v9 + 1430);
            v255 = *(v9 + 1476);
            v256 = **(v9 + 1456);
            v257 = *(*(v9 + 56) + v256 - 1);
            if (v257 > 1)
            {
              if (v257 == 3)
              {
                result = DCT_LKP(v9, *(*(v9 + 1520) + 8 * (v256 - 1)), v203, v11);
                goto LABEL_422;
              }

              if (v257 == 2)
              {
                result = INFERENCE(v9);
                goto LABEL_422;
              }
            }

            else
            {
              if (!*(*(v9 + 56) + v256 - 1))
              {
                INFERENCE(v9);
                result = 1;
                goto LABEL_422;
              }

              if (v257 == 1)
              {
                INFERENCE(v9);
                result = 0;
LABEL_422:
                *(v9 + 1384) = result;
                *(v9 + 1476) = v255;
                --*(v9 + 1430);
                if (*(v9 + 1428) == 156)
                {
                  goto LABEL_446;
                }

                v261 = *v11;
                if (!*(v9 + 1432))
                {
                  if (v293 >= v261)
                  {
                    v262 = *v11;
                    LOWORD(v263) = v293;
                    do
                    {
                      v264 = *(v9 + 1560);
                      if (*(v264 + v263))
                      {
                        *(v264 + v261 - 1) += *(v264 + v263);
                        v262 = *v11;
                      }

                      v263 = (v263 - 1);
                      v261 = v262;
                    }

                    while (v263 >= v262);
                  }

                  *(*(v9 + 1560) + v261) = 0;
                  LODWORD(v261) = *v11;
                  v202 = a4;
                  if (v293 < v261)
                  {
                    do
                    {
                      *(*(v9 + 1560) + v248++) = 0;
                      v261 = *v11;
                    }

                    while (v248 < v261);
                    v202 = a4;
                  }
                }

                if (v203 < v261)
                {
                  v265 = v261;
                  do
                  {
                    Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v203), v298, 5u);
                    v266 = v298[0];
                    if (v298[0])
                    {
                      v267 = 0;
                      do
                      {
                        ++*(v202 + 36 + 2 * v266);
                        v266 = v298[++v267];
                      }

                      while (v298[v267]);
                    }

                    ++v203;
                  }

                  while (v203 != v265);
                  LOWORD(v261) = *v11;
                }

                if (*(v9 + 1384))
                {
                  v211 = v261 + ~*(v202 + 32) + *(v9 + 1476);
                }

                else
                {
                  v211 = 0;
                }

                result = RESTORE_SUBSTITUTION(v9, v261);
                *v11 = result;
                goto LABEL_443;
              }
            }

            result = pfExt[*(*(v9 + 56) + v256 - 1)](v9, v203, v11);
            goto LABEL_422;
          }

          v290 = 0;
        }

        if (v203 < v209)
        {
          v214 = v203;
          do
          {
            Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v214), v298, 5u);
            v215 = v298[0];
            if (v298[0])
            {
              v216 = 0;
              do
              {
                --*(a4 + 36 + 2 * v215);
                v215 = v298[++v216];
              }

              while (v298[v216]);
            }

            ++v214;
          }

          while (v214 != v209);
          result = *(v9 + 1456);
          v209 = v293;
          v206 = v205;
        }

        v217 = v203;
        v218 = v203;
        v289 = v206;
        v294 = v206;
        v219 = v203;
        break;
      case 2:
        v30 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          v31 = v8;
          do
          {
            LODWORD(v8) = v31;
            v32 = v31;
            v33 = *(v30 + 4 * v31);
            v31 += *(v9 + 1470);
          }

          while (v33 == 126);
        }

        else
        {
          v32 = v8;
        }

        v89 = (v30 + 4 * v32);
        if (*v12 != v89)
        {
          result = Utf32SymToUtf8Sym(*v89, v13, 5u);
          v90 = (*(v9 + 1440) + 4 * v32);
          *(v9 + 1405) = *v90 & 0x3F;
          *(v9 + 2096) = v90;
        }

        v91 = *v13;
        if (*v13)
        {
          v92 = v91 == 31;
        }

        else
        {
          v92 = 1;
        }

        if (v92)
        {
          goto LABEL_456;
        }

        v93 = *(v9 + 1512);
        v94 = (*(v9 + 1456) + 1);
        *(v9 + 1456) = v94;
        a2 = *v94;
        v95 = 5 * a2;
        v96 = (v93 + 5 * a2);
        if (*v96)
        {
          v97 = 0;
          v98 = 0;
          do
          {
            if (v91 != v96[v97])
            {
              goto LABEL_456;
            }

            v97 = ++v98;
            v91 = v13[v98];
          }

          while (v13[v98]);
        }

        else
        {
          result = VAR_APPEARENCE(v9, a2);
          if (!result)
          {
            goto LABEL_456;
          }

          *(v9 + 1480) = 1;
          result = SETUTF8CHAR(*(v9 + 1512) + v95, v13);
          v94 = *(v9 + 1456);
        }

        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
LABEL_206:
        i = (v94 + 1);
        *(v9 + 1456) = v94 + 1;
        continue;
      case 3:
        v22 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v23 = v8;
            v24 = v8;
            v25 = *(v22 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v25 == 126);
          LODWORD(v8) = v23;
        }

        else
        {
          v24 = v8;
        }

        v81 = (v22 + 4 * v24);
        if (*v12 != v81)
        {
          result = Utf32SymToUtf8Sym(*v81, v13, 5u);
          v82 = (*(v9 + 1440) + 4 * v24);
          *(v9 + 1405) = *v82 & 0x3F;
          *(v9 + 2096) = v82;
        }

        if (*v13)
        {
          v83 = *v13 == 31;
        }

        else
        {
          v83 = 1;
        }

        if (v83)
        {
          goto LABEL_456;
        }

        v84 = *(v9 + 2120);
        goto LABEL_100;
      case 4:
        v54 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v55 = v8;
            v56 = v8;
            v57 = *(v54 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v57 == 126);
          LODWORD(v8) = v55;
        }

        else
        {
          v56 = v8;
        }

        v129 = (v54 + 4 * v56);
        if (*v12 != v129)
        {
          result = Utf32SymToUtf8Sym(*v129, v13, 5u);
          v130 = (*(v9 + 1440) + 4 * v56);
          *(v9 + 1405) = *v130 & 0x3F;
          *(v9 + 2096) = v130;
        }

        if (*v13)
        {
          v131 = *v13 == 31;
        }

        else
        {
          v131 = 1;
        }

        if (v131)
        {
          goto LABEL_456;
        }

        v88 = *(v9 + 2120);
        goto LABEL_156;
      case 5:
        v34 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v35 = v8;
            v36 = v8;
            v37 = *(v34 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v37 == 126);
          LODWORD(v8) = v35;
        }

        else
        {
          v36 = v8;
        }

        v99 = (v34 + 4 * v36);
        if (*v12 != v99)
        {
          result = Utf32SymToUtf8Sym(*v99, v13, 5u);
          v100 = (*(v9 + 1440) + 4 * v36);
          *(v9 + 1405) = *v100 & 0x3F;
          *(v9 + 2096) = v100;
        }

        if (*v13)
        {
          v101 = *v13 == 31;
        }

        else
        {
          v101 = 1;
        }

        if (v101)
        {
          goto LABEL_456;
        }

        v84 = *(v9 + 2128);
LABEL_100:
        v102 = (*(v9 + 1456) + 1);
        *(v9 + 1456) = v102;
        result = cstdlib_strstr(*(*(v84 + 8 * (*v102 - 1)) + 8 * *(v9 + 1405)), v13);
        if (!result)
        {
          goto LABEL_456;
        }

        goto LABEL_205;
      case 6:
        v26 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v27 = v8;
            v28 = v8;
            v29 = *(v26 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v29 == 126);
          LODWORD(v8) = v27;
        }

        else
        {
          v28 = v8;
        }

        v85 = (v26 + 4 * v28);
        if (*v12 != v85)
        {
          result = Utf32SymToUtf8Sym(*v85, v13, 5u);
          v86 = (*(v9 + 1440) + 4 * v28);
          *(v9 + 1405) = *v86 & 0x3F;
          *(v9 + 2096) = v86;
        }

        if (*v13)
        {
          v87 = *v13 == 31;
        }

        else
        {
          v87 = 1;
        }

        if (v87)
        {
          goto LABEL_456;
        }

        v88 = *(v9 + 2128);
LABEL_156:
        v132 = (*(v9 + 1456) + 1);
        *(v9 + 1456) = v132;
        result = cstdlib_strstr(*(*(v88 + 8 * (*v132 - 1)) + 8 * *(v9 + 1405)), v13);
        if (result)
        {
          goto LABEL_456;
        }

        goto LABEL_205;
      case 7:
        v58 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v59 = v8;
            v60 = v8;
            v61 = *(v58 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v61 == 126);
          LODWORD(v8) = v59;
        }

        else
        {
          v60 = v8;
        }

        v133 = (v58 + 4 * v60);
        if (*v12 != v133)
        {
          result = Utf32SymToUtf8Sym(*v133, v13, 5u);
          v134 = (*(v9 + 1440) + 4 * v60);
          *(v9 + 1405) = *v134 & 0x3F;
          *(v9 + 2096) = v134;
        }

        if (*v13)
        {
          v135 = *v13 == 31;
        }

        else
        {
          v135 = 1;
        }

        if (v135)
        {
          goto LABEL_456;
        }

        v136 = *(v9 + 1456);
        *(v9 + 1456) = v136 + 1;
        result = cstdlib_strstr(*(*(*(v9 + 2128) + 8 * (*(v136 + 1) - 1)) + 8 * *(v9 + 1405)), v13);
        if (!result)
        {
          goto LABEL_456;
        }

        result = cstdlib_strstr((*(v9 + 88) + (**(v9 + 1456) << 8) - 256), v13);
        if (!result)
        {
          goto LABEL_456;
        }

        v137 = **(v9 + 1456);
        v138 = v137 - 1;
        v139 = *(v9 + 88);
        v140 = v139 + (v137 << 8);
        if (v138)
        {
          v140 -= 512;
          v141 = *(v9 + 96);
        }

        else
        {
          v141 = *(v9 + 96);
          v138 = v138;
        }

        result = SETUTF8CHAR(__s, (v140 + *(v141 + (v138 << 8) + result - (v139 + (v138 << 8)))));
LABEL_205:
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        v94 = *(v9 + 1456);
        goto LABEL_206;
      case 8:
        v66 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v67 = v8;
            v68 = v8;
            v69 = *(v66 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v69 == 126);
          LODWORD(v8) = v67;
        }

        else
        {
          v68 = v8;
        }

        v155 = (v66 + 4 * v68);
        if (*v12 != v155)
        {
          Utf32SymToUtf8Sym(*v155, v13, 5u);
          v156 = (*(v9 + 1440) + 4 * v68);
          *(v9 + 1405) = *v156 & 0x3F;
          *(v9 + 2096) = v156;
          i = *(v9 + 1456);
        }

        *(v9 + 1456) = i + 1;
        result = CHECK_OF_LIST(v9, 8u, v8, a4, a5, a6, a7, a8);
        if (result)
        {
          goto LABEL_205;
        }

        goto LABEL_456;
      case 11:
        *(v9 + 1472) = v8;
        v38 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v39 = v8;
            v40 = v8;
            v41 = *(v38 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v41 == 126);
          LOWORD(v8) = v39;
        }

        else
        {
          v40 = v8;
        }

        v103 = (v38 + 4 * v40);
        if (*v12 != v103)
        {
          Utf32SymToUtf8Sym(*v103, v13, 5u);
          v104 = (*(v9 + 1440) + 4 * v40);
          *(v9 + 1405) = *v104 & 0x3F;
          *(v9 + 2096) = v104;
          i = *(v9 + 1456);
        }

        v105 = i[2];
        if (v105 == 220)
        {
          v105 = 5000;
        }

        *(v9 + 1406) = v105;
        if (v105 && (*(v9 + 1456) = i + 3, CHECK_OF_LIST(v9, 0xBu, v8, a4, a5, a6, a7, a8)))
        {
          LOWORD(v10) = 0;
          do
          {
            v107 = *(v9 + 1456);
            *(v9 + 1472) = v8 + 1;
            v108 = TOKEN1(v9, (v8 + 1), v106, a4, a5, a6, a7, a8);
            v10 = (v10 + 1);
            if (v10 >= *(v9 + 1406))
            {
              break;
            }

            LOWORD(v8) = v108;
            *(v9 + 1456) = i + 3;
          }

          while (CHECK_OF_LIST(v9, 0xBu, v108, a4, a5, a6, a7, a8));
        }

        else
        {
          v10 = 0;
          v107 = 0;
        }

        result = LOG_WARNING_ON_MAX_NUMBER(v9, v10, 1, a4, a5, a6, a7, a8);
        if (v10 < i[1])
        {
          goto LABEL_456;
        }

        if (v107)
        {
          *(v9 + 1456) = v107;
        }

        else
        {
          v107 = *(v9 + 1456);
        }

        v8 = *(v9 + 1472);
        for (i = (v107 + 1); ; ++i)
        {
          if (*(i - 1) == 11)
          {
            v162 = *(i - 2);
            v163 = v162 > 0x15;
            v164 = (1 << v162) & 0x20067C;
            if (v163 || v164 == 0)
            {
              break;
            }

            v166 = *(i - 3);
            v163 = v166 > 0x15;
            v167 = (1 << v166) & 0x20C67C;
            if (!v163 && v167 != 0)
            {
              break;
            }
          }

          *(v9 + 1456) = i;
        }

        goto LABEL_300;
      case 12:
        v18 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v19 = v8;
            v20 = v8;
            v21 = *(v18 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v21 == 126);
          LODWORD(v8) = v19;
        }

        else
        {
          v20 = v8;
        }

        v74 = (v18 + 4 * v20);
        if (*v12 != v74)
        {
          result = Utf32SymToUtf8Sym(*v74, v13, 5u);
          v75 = (*(v9 + 1440) + 4 * v20);
          *(v9 + 1405) = *v75 & 0x3F;
          *(v9 + 2096) = v75;
        }

        v76 = *v13;
        if (*v13)
        {
          v77 = v76 == 31;
        }

        else
        {
          v77 = 1;
        }

        if (v77)
        {
          goto LABEL_456;
        }

        v78 = 0;
        v79 = 0;
        v80 = *(v9 + 1456) + 1;
        *(v9 + 1456) = v80;
        do
        {
          if (v76 != *(v80 + v78))
          {
            goto LABEL_456;
          }

          v78 = ++v79;
          v76 = v13[v79];
        }

        while (v13[v79]);
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        result = cstdlib_strlen(v13);
        i = (*(v9 + 1456) + result);
        *(v9 + 1456) = i;
        continue;
      case 13:
        v50 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v51 = v8;
            v52 = v8;
            v53 = *(v50 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v53 == 126);
          LODWORD(v8) = v51;
        }

        else
        {
          v52 = v8;
        }

        v120 = (v50 + 4 * v52);
        if (*v12 != v120)
        {
          result = Utf32SymToUtf8Sym(*v120, v13, 5u);
          v121 = (*(v9 + 1440) + 4 * v52);
          *(v9 + 1405) = *v121 & 0x3F;
          *(v9 + 2096) = v121;
        }

        v122 = *v13;
        if (*v13)
        {
          v123 = v122 == 31;
        }

        else
        {
          v123 = 1;
        }

        if (v123)
        {
          goto LABEL_456;
        }

        v124 = 0;
        v125 = 0;
        v126 = *(v9 + 1456);
        *(v9 + 1456) = v126 + 1;
        while (v122 == *(v126 + 1 + v124))
        {
          v124 = ++v125;
          v122 = v13[v125];
          if (!v13[v125])
          {
            goto LABEL_456;
          }
        }

        v127 = (v126 + 2);
        do
        {
          *(v9 + 1456) = v127;
          v128 = *v127++;
        }

        while (v128 < -64);
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        i = v127 - 1;
        continue;
      case 14:
      case 16:
        v15 = *(v9 + 1440);
        *(v9 + 1368) = v15;
        v16 = v15 + 4 * v8;
        if (*(v9 + 2104) == v16)
        {
          v8 = *(v9 + 2112);
        }

        else
        {
          *(v9 + 2104) = v16;
          *(v9 + 2112) = v8;
        }

        v17 = *(*(v9 + 1504) + 8 * i[1] - 8);
        goto LABEL_52;
      case 15:
      case 17:
        v17 = *(v9 + 1368);
LABEL_52:
        *(v9 + 1440) = v17;
        *(v9 + 1470) = 0;
        i += 2;
        *(v9 + 1456) = i;
        continue;
      case 18:
        *(v9 + 1472) = v8;
        v62 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v63 = v8;
            v64 = v8;
            v65 = *(v62 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v65 == 126);
          LOWORD(v8) = v63;
        }

        else
        {
          v64 = v8;
        }

        v142 = (v62 + 4 * v64);
        if (*v12 != v142)
        {
          result = Utf32SymToUtf8Sym(*v142, v13, 5u);
          v143 = (*(v9 + 1440) + 4 * v64);
          *(v9 + 1405) = *v143 & 0x3F;
          *(v9 + 2096) = v143;
          i = *(v9 + 1456);
        }

        v144 = i[2];
        if (v144 == 220)
        {
          v144 = 5000;
        }

        *(v9 + 1406) = v144;
        *(v9 + 1392) = i + 4;
        v145 = i[3];
        if (v145 > 5)
        {
          if (i[3] > 0xCu)
          {
            if (v145 == 13)
            {
              LOWORD(v10) = 0;
              if (v144)
              {
                do
                {
                  v185 = *v13;
                  if (*v13)
                  {
                    v186 = v185 == 31;
                  }

                  else
                  {
                    v186 = 1;
                  }

                  if (v186)
                  {
                    break;
                  }

                  v187 = 0;
                  v188 = 0;
                  while (v185 == *(*(v9 + 1392) + v187))
                  {
                    v187 = ++v188;
                    v185 = v13[v188];
                    if (!v13[v188])
                    {
                      goto LABEL_295;
                    }
                  }

                  *(v9 + 1472) = v8 + 1;
                  LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, a4, a5, a6, a7, a8);
                  v10 = (v10 + 1);
                }

                while (v10 < *(v9 + 1406));
              }

LABEL_295:
              v148 = v10;
              v149 = v9;
              v150 = 6;
            }

            else
            {
              if (v145 != 21)
              {
                goto LABEL_297;
              }

              LOWORD(v10) = 0;
              if (v144)
              {
                do
                {
                  v170 = *v13;
                  if (*v13)
                  {
                    v171 = v170 == 31;
                  }

                  else
                  {
                    v171 = 1;
                  }

                  if (v171)
                  {
                    break;
                  }

                  v172 = (*(v9 + 1512) + 5 * **(v9 + 1392));
                  if (*v172)
                  {
                    v173 = 0;
                    v174 = 0;
                    while (v170 == v172[v173])
                    {
                      v173 = ++v174;
                      v170 = v13[v174];
                      if (!v13[v174])
                      {
                        goto LABEL_254;
                      }
                    }
                  }

                  *(v9 + 1472) = v8 + 1;
                  LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, a4, a5, a6, a7, a8);
                  v10 = (v10 + 1);
                }

                while (v10 < *(v9 + 1406));
              }

LABEL_254:
              v148 = v10;
              v149 = v9;
              v150 = 8;
            }
          }

          else if (v145 == 6)
          {
            LOWORD(v10) = 0;
            if (v144)
            {
              do
              {
                if (*v13)
                {
                  v181 = *v13 == 31;
                }

                else
                {
                  v181 = 1;
                }

                if (v181)
                {
                  break;
                }

                if (cstdlib_strstr(*(*(*(v9 + 2128) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v13))
                {
                  break;
                }

                *(v9 + 1472) = v8 + 1;
                LOWORD(v8) = TOKEN1(v9, (v8 + 1), v182, a4, a5, a6, a7, a8);
                v10 = (v10 + 1);
              }

              while (v10 < *(v9 + 1406));
            }

            v148 = v10;
            v149 = v9;
            v150 = 4;
          }

          else
          {
            if (v145 != 12)
            {
              goto LABEL_297;
            }

            LOWORD(v10) = 0;
            if (v144)
            {
              do
              {
                v151 = *v13;
                if (*v13)
                {
                  v152 = v151 == 31;
                }

                else
                {
                  v152 = 1;
                }

                if (v152)
                {
                  break;
                }

                v153 = 0;
                v154 = 0;
                do
                {
                  if (v151 != *(*(v9 + 1392) + v153))
                  {
                    goto LABEL_200;
                  }

                  v153 = ++v154;
                  v151 = v13[v154];
                }

                while (v13[v154]);
                *(v9 + 1472) = v8 + 1;
                LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, a4, a5, a6, a7, a8);
                v10 = (v10 + 1);
              }

              while (v10 < *(v9 + 1406));
            }

LABEL_200:
            v148 = v10;
            v149 = v9;
            v150 = 5;
          }

LABEL_296:
          result = LOG_WARNING_ON_MAX_NUMBER(v149, v148, v150, a4, a5, a6, a7, a8);
          goto LABEL_297;
        }

        if (i[3] <= 3u)
        {
          if (v145 == 2)
          {
            LOWORD(v10) = 0;
            if (v144)
            {
              while (1)
              {
                v175 = *v13;
                if (*v13)
                {
                  v176 = v175 == 31;
                }

                else
                {
                  v176 = 1;
                }

                if (v176)
                {
                  goto LABEL_268;
                }

                v177 = **(v9 + 1392);
                v178 = (*(v9 + 1512) + 5 * v177);
                if (*v178)
                {
                  break;
                }

                if (VAR_APPEARENCE(v9, v177))
                {
                  *(v9 + 1480) = 1;
                  SETUTF8CHAR(*(v9 + 1512) + 5 * **(v9 + 1392), v13);
LABEL_267:
                  *(v9 + 1472) = v8 + 1;
                  LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, a4, a5, a6, a7, a8);
                  v10 = (v10 + 1);
                  if (v10 < *(v9 + 1406))
                  {
                    continue;
                  }
                }

                goto LABEL_268;
              }

              v179 = 0;
              v180 = 0;
              while (v175 == v178[v179])
              {
                v179 = ++v180;
                v175 = v13[v180];
                if (!v13[v180])
                {
                  goto LABEL_267;
                }
              }
            }

LABEL_268:
            v148 = v10;
            v149 = v9;
            v150 = 7;
          }

          else
          {
            if (v145 != 3)
            {
              goto LABEL_297;
            }

            LOWORD(v10) = 0;
            if (v144)
            {
              do
              {
                if (*v13)
                {
                  v146 = *v13 == 31;
                }

                else
                {
                  v146 = 1;
                }

                if (v146)
                {
                  break;
                }

                if (!cstdlib_strstr(*(*(*(v9 + 2120) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v13))
                {
                  break;
                }

                *(v9 + 1472) = v8 + 1;
                LOWORD(v8) = TOKEN1(v9, (v8 + 1), v147, a4, a5, a6, a7, a8);
                v10 = (v10 + 1);
              }

              while (v10 < *(v9 + 1406));
            }

            v148 = v10;
            v149 = v9;
            v150 = 2;
          }

          goto LABEL_296;
        }

        if (v145 == 4)
        {
          LOWORD(v10) = 0;
          if (v144)
          {
            do
            {
              if (*v13)
              {
                v183 = *v13 == 31;
              }

              else
              {
                v183 = 1;
              }

              if (v183)
              {
                break;
              }

              if (cstdlib_strstr(*(*(*(v9 + 2120) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v13))
              {
                break;
              }

              *(v9 + 1472) = v8 + 1;
              LOWORD(v8) = TOKEN1(v9, (v8 + 1), v184, a4, a5, a6, a7, a8);
              v10 = (v10 + 1);
            }

            while (v10 < *(v9 + 1406));
          }

          v148 = v10;
          v149 = v9;
          v150 = 3;
          goto LABEL_296;
        }

        if (v145 == 5)
        {
          LOWORD(v10) = 0;
          if (v144)
          {
            do
            {
              if (*v13)
              {
                v169 = *v13 == 31;
              }

              else
              {
                v169 = 1;
              }

              if (v169)
              {
                break;
              }

              result = cstdlib_strstr(*(*(*(v9 + 2128) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v13);
              if (!result)
              {
                break;
              }

              *(v9 + 1472) = v8 + 1;
              result = TOKEN1(v9, (v8 + 1), a3, a4, a5, a6, a7, a8);
              LOWORD(v8) = result;
              v10 = (v10 + 1);
            }

            while (v10 < *(v9 + 1406));
          }
        }

LABEL_297:
        v189 = *(v9 + 1456);
        if (*(v189 + 1) > v10)
        {
          goto LABEL_456;
        }

        v8 = *(v9 + 1472);
        i = (v189 + 5);
        do
        {
          *(v9 + 1456) = i;
          v190 = *i++;
        }

        while (v190 < -64);
LABEL_300:
        *(v9 + 1470) = 1;
        *(v9 + 1456) = i;
        continue;
      case 19:
        v46 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v47 = v8;
            v48 = v8;
            v49 = *(v46 + 4 * v8);
            v8 = v8 + *(v9 + 1470);
          }

          while (v49 == 126);
          v8 = v47;
        }

        else
        {
          v48 = v8;
        }

        v118 = (v46 + 4 * v48);
        if (*v12 != v118)
        {
          result = Utf32SymToUtf8Sym(*v118, v13, 5u);
          v119 = (*(v9 + 1440) + 4 * v48);
          *(v9 + 1405) = *v119 & 0x3F;
          *(v9 + 2096) = v119;
          i = *(v9 + 1456);
        }

        *(v9 + 1470) = 1;
        *(v9 + 1456) = ++i;
        continue;
      case 20:
        *(v9 + 1476) = 1;
        *(v9 + 1470) = 1;
        *(v9 + 1456) = ++i;
        v8 = v292;
        continue;
      case 21:
        v42 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v43 = v8;
            v44 = v8;
            v45 = *(v42 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v45 == 126);
          LODWORD(v8) = v43;
        }

        else
        {
          v44 = v8;
        }

        v109 = (v42 + 4 * v44);
        if (*v12 != v109)
        {
          result = Utf32SymToUtf8Sym(*v109, v13, 5u);
          v110 = (*(v9 + 1440) + 4 * v44);
          *(v9 + 1405) = *v110 & 0x3F;
          *(v9 + 2096) = v110;
        }

        v111 = *v13;
        if (*v13)
        {
          v112 = v111 == 31;
        }

        else
        {
          v112 = 1;
        }

        if (v112)
        {
          goto LABEL_456;
        }

        v113 = *(v9 + 1512);
        v114 = *(v9 + 1456);
        *(v9 + 1456) = v114 + 1;
        v115 = (v113 + 5 * *(v114 + 1));
        if (!*v115)
        {
          goto LABEL_129;
        }

        v116 = 0;
        v117 = 0;
        while (v111 == v115[v116])
        {
          v116 = ++v117;
          v111 = v13[v117];
          if (!v13[v117])
          {
            goto LABEL_456;
          }
        }

LABEL_129:
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        i = (v114 + 2);
        *(v9 + 1456) = v114 + 2;
        continue;
      default:
        v70 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v71 = v8;
            v72 = v8;
            v73 = *(v70 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v73 == 126);
          LODWORD(v8) = v71;
        }

        else
        {
          v72 = v8;
        }

        v157 = (v70 + 4 * v72);
        if (*v12 != v157)
        {
          result = Utf32SymToUtf8Sym(*v157, v13, 5u);
          v158 = (*(v9 + 1440) + 4 * v72);
          *(v9 + 1405) = *v158 & 0x3F;
          *(v9 + 2096) = v158;
          i = *(v9 + 1456);
        }

        v159 = *v13;
        if (!*v13)
        {
          goto LABEL_456;
        }

        v160 = 0;
        v161 = 0;
        do
        {
          if (v159 != i[v160])
          {
            goto LABEL_456;
          }

          v160 = ++v161;
          v159 = v13[v161];
        }

        while (v13[v161]);
        *(v9 + 1470) = 1;
        result = cstdlib_strlen(v13);
        i = (*(v9 + 1456) + result);
        *(v9 + 1456) = i;
        v8 = (v8 + 1);
        continue;
    }

    break;
  }

  while (1)
  {
    v220 = *result;
    v221 = v209;
    if (v220 > 0xE)
    {
      if (*result > 0x10u)
      {
        if (v220 == 17)
        {
LABEL_344:
          *(v9 + 1456) = result + 1;
          if (v218 < v219)
          {
            cstdlib_memmove((*(v9 + 1448) + 4 * v218), (*(v9 + 1448) + 4 * v219), 4 * (v294 - v219 + 1));
          }

          if (v217 <= v209)
          {
            v202 = a4;
            v227 = v289;
          }

          else
          {
            result = MOVE_FOR_SUBSTITUTION(v9, v209, v289, (v217 - v209));
            v202 = a4;
            if (!result)
            {
              goto LABEL_446;
            }

            v227 = v217 + v289 - v209;
            *v11 = v217 + v289 - v209;
            v209 = v217;
          }

          *(v9 + 1448) = *(v202 + 16);
          *(v9 + 1410) = *(v202 + 562);
          v218 = v217;
          v289 = v227;
          v226 = v227;
          goto LABEL_379;
        }

        if (v220 == 19)
        {
          if (v290 >= 1)
          {
            v223 = 0;
            do
            {
              if (v218 >= v209)
              {
                if (v294 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
                {
                  goto LABEL_389;
                }

                v224 = v218;
                v225 = *(v9 + 1448) + 4 * v218;
                result = cstdlib_memmove((v225 + 4), v225, 4 * (v294++ - v218 + 1));
              }

              else
              {
                v224 = v218;
              }

              v217 = (v217 + 1);
              ++v219;
              ++v218;
              *(*(v9 + 1448) + 4 * v224) = 126;
              ++v223;
              v209 = v221;
            }

            while (v290 > v223);
            v226 = v294;
LABEL_362:
            LODWORD(v203) = v288;
            goto LABEL_380;
          }

          goto LABEL_374;
        }
      }

      else
      {
        if (v220 == 15)
        {
          goto LABEL_344;
        }

        if (v220 == 16)
        {
LABEL_329:
          *(v9 + 1456) = result + 1;
          if (v218 < v219)
          {
            cstdlib_memmove((*(v9 + 1448) + 4 * v218), (*(v9 + 1448) + 4 * v219), 4 * (v294 - v219 + 1));
          }

          if (v217 <= v209)
          {
            v222 = v289;
          }

          else
          {
            result = MOVE_FOR_SUBSTITUTION(v9, v209, v289, (v217 - v209));
            v202 = a4;
            if (!result)
            {
              goto LABEL_446;
            }

            v222 = v217 + v289 - v209;
            v209 = v217;
          }

          v241 = *(v9 + 1456);
          *(v9 + 1448) = *(*(v9 + 1504) + 8 * *v241 - 8);
          *(v9 + 1410) = *v241 - 1;
          v218 = v217;
          v289 = v222;
          v226 = v222;
LABEL_379:
          v219 = v217;
          goto LABEL_380;
        }
      }

      goto LABEL_382;
    }

    if (*result > 6u)
    {
      if (v220 == 7)
      {
        *(v9 + 1456) = result + 1;
        result = cstdlib_strlen(__s);
        if (result >= 1)
        {
          v237 = 0;
          do
          {
            if (v218 >= v209)
            {
              if (v294 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
              {
                goto LABEL_389;
              }

              v238 = v237;
              if (__s[v237] >= -64)
              {
                v239 = *(v9 + 1448) + 4 * v218;
                cstdlib_memmove((v239 + 4), v239, 4 * (v294++ - v218 + 1));
              }
            }

            else
            {
              v238 = v237;
            }

            if (__s[v238] >= -64)
            {
              v217 = (v217 + 1);
              ++v219;
              FirstUtf8SymToUtf32(&__s[v238], &v297);
              v240 = v218++;
              *(*(v9 + 1448) + 4 * v240) = v297;
            }

            v209 = v221;
            ++v237;
            result = cstdlib_strlen(__s);
          }

          while (result > v237);
          LODWORD(v203) = v288;
        }

LABEL_374:
        v226 = v294;
        goto LABEL_380;
      }

      if (v220 == 14)
      {
        goto LABEL_329;
      }

      goto LABEL_382;
    }

    if (v220 == 2)
    {
      *(v9 + 1456) = result + 1;
      v228 = *(result + 1);
      v229 = *(v9 + 46);
      if (v228 > v229)
      {
        result = log_OutText(*(*(v9 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (3)", v199, v200, v201, v287);
        v228 = **(v9 + 1456);
        v229 = *(v9 + 46);
      }

      v226 = v294;
      if (v228 > v229)
      {
LABEL_389:
        *(v9 + 1428) = -100;
        v202 = a4;
        goto LABEL_446;
      }

      result = cstdlib_strlen((*(v9 + 1512) + 5 * v228));
      if (result >= 1)
      {
        v230 = 0;
        v231 = 0;
        do
        {
          if (v218 >= v209)
          {
            if (v226 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
            {
              goto LABEL_389;
            }

            if (*(*(v9 + 1512) + 5 * **(v9 + 1456) + v230) >= -64)
            {
              v232 = *(v9 + 1448) + 4 * v218;
              cstdlib_memmove((v232 + 4), v232, 4 * (v226++ - v218 + 1));
            }
          }

          v233 = *(v9 + 1512);
          v234 = **(v9 + 1456);
          v235 = (v233 + 5 * v234 + v230);
          if (*v235 >= -64)
          {
            v217 = (v217 + 1);
            ++v219;
            FirstUtf8SymToUtf32(v235, &v297);
            v236 = v218++;
            *(*(v9 + 1448) + 4 * v236) = v297;
            v233 = *(v9 + 1512);
            v234 = **(v9 + 1456);
          }

          v230 = ++v231;
          result = cstdlib_strlen((v233 + 5 * v234));
        }

        while (v231 < result);
        goto LABEL_362;
      }

      goto LABEL_380;
    }

    if (!*result)
    {
      break;
    }

LABEL_382:
    v220 = v220;
    if (v218 < v209)
    {
      v226 = v294;
      goto LABEL_387;
    }

    v226 = v294;
    if (v294 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
    {
      goto LABEL_389;
    }

    if (v220 >= -64)
    {
      v242 = *(v9 + 1448) + 4 * v218;
      cstdlib_memmove((v242 + 4), v242, 4 * (v294 - v218 + 1));
      v226 = v294 + 1;
      result = *(v9 + 1456);
      LOBYTE(v220) = *result;
LABEL_387:
      if (v220 >= -64)
      {
        v217 = (v217 + 1);
        ++v219;
        FirstUtf8SymToUtf32(result, &v297);
        v243 = v218++;
        *(*(v9 + 1448) + 4 * v243) = v297;
      }
    }

LABEL_380:
    v294 = v226;
    result = *(v9 + 1456) + 1;
    *(v9 + 1456) = result;
  }

  if (v218 < v209)
  {
    cstdlib_memmove((*(v9 + 1448) + 4 * v218), (*(v9 + 1448) + 4 * v209), 4 * (v294 - v209 + 1));
  }

  result = MOVE_FOR_SUBSTITUTION(v9, v209, v289, (v217 - v209));
  v202 = a4;
  if (result)
  {
    *(a4 + 34) = v217 + v289 - v209;
    v211 = v217 + ~*(a4 + 32);
    if (v203 < v217)
    {
      v258 = v288;
      do
      {
        result = Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v258), v298, 5u);
        v259 = v298[0];
        if (v298[0])
        {
          v260 = 0;
          do
          {
            ++*(a4 + 36 + 2 * v259);
            v259 = v298[++v260];
          }

          while (v298[v260]);
        }

        ++v258;
      }

      while (v258 != v217);
    }

    v202 = a4;
    goto LABEL_443;
  }

LABEL_446:
  if (*(v9 + 1428) == 156)
  {
    *(v9 + 1384) = 1;
    *(v202 + 548) = *(v202 + 34) - *(v202 + 32);
    *(v202 + 32) = **(v9 + 184);
    *(v202 + 30) = *(v9 + 44);
    *v12 = 0;
    v12[1] = 0;
    goto LABEL_449;
  }

  v268 = *(v9 + 1384);
  *v12 = 0;
  v12[1] = 0;
  if (v268)
  {
LABEL_449:
    *(v202 + 556) = 1;
  }

  v269 = *(v202 + 8);
  if (*(v9 + 1440) != v269)
  {
    *(v9 + 1440) = v269;
  }

  if (*(v9 + 2088) >= 6)
  {
    v270 = *(v9 + 2 * *(v9 + 1430) + 1568);
    v271 = *v11;
    Utf32LayersToUtf8Layers(v9, v271);
    result = log_OutText(*(*(v9 + 2080) + 32), "FE_DEPES", 6, 0, "Rule number %d", v272, v273, v274, (v291 - *(v9 + 2 * *(v9 + 1430) + 1824)));
    if (*(v9 + 24) >= 1)
    {
      v275 = 0;
      do
      {
        v276 = *(*(v9 + 1496) + 8 * v275);
        v277 = &v276[Utf8_LengthInBytes(v276, v270)];
        v278 = *(*(v9 + 1496) + 8 * v275);
        v279 = v278[Utf8_LengthInBytes(v278, v271)];
        v280 = *(*(v9 + 1496) + 8 * v275);
        v280[Utf8_LengthInBytes(v280, v271)] = 0;
        log_OutText(*(*(v9 + 2080) + 32), "FE_DEPES", 6, 0, "%s", v281, v282, v283, v277);
        v284 = *(*(v9 + 1496) + 8 * v275);
        result = Utf8_LengthInBytes(v284, v271);
        v284[result] = v279;
        ++v275;
      }

      while (v275 < *(v9 + 24));
    }
  }

LABEL_456:
  if (*(v9 + 1480))
  {
    if ((*(v9 + 46) & 0x80000000) == 0)
    {
      v285 = 0;
      do
      {
        *(*(v9 + 1512) + v285) = 0;
        v285 += 5;
      }

      while (5 * *(v9 + 46) + 5 > v285);
    }

    *(v9 + 1480) = 0;
  }

  v286 = *(a4 + 8);
  if (*(v9 + 1440) != v286)
  {
    *(v9 + 1440) = v286;
  }

  return result;
}

uint64_t INFERENCE_MAIN(uint64_t a1, uint64_t a2, int a3, __int16 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a4;
    v21 = 0;
    while (1)
    {
      v11 = Utf8_LengthInBytes(*(*(a1 + 1496) + 8 * v8), v10 + 1);
      v12 = utf8_CheckValid(*(*(a1 + 1496) + 8 * v8), v11);
      v13 = utf8_Utf8ToUtf32_Tolerant(*(*(a1 + 1496) + 8 * v8), v11, *(*(a1 + 1504) + 8 * v8), **(a1 + 184), &v21);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      if (!v12)
      {
        v9 = 1;
      }

      if (++v8 >= *(a1 + 24))
      {
        if (v9)
        {
          log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 1, 0, "Invalid utf8 layer string found", v14, v15, v16, v20);
        }

        break;
      }
    }
  }

  v17 = 2305826816;
  INFERENCE(a1, a2, a3, a4);
  v18 = *(a1 + 1428);
  if (v18 == 155)
  {
    return 2305826826;
  }

  if (v18 != 156)
  {
    return Utf32LayersToUtf8Layers(a1, *a4);
  }

  return v17;
}

uint64_t Utf32LayersToUtf8Layers(uint64_t a1, __int16 a2)
{
  if (*(a1 + 24) < 1)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v5 = 0;
  v8 = 0;
  v6 = a2 + 1;
  do
  {
    result = utf8_Utf32ToUtf8(*(*(a1 + 1504) + 8 * v5), v6, *(*(a1 + 1496) + 8 * v5), **(a1 + 184), &v8);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v5;
  }

  while (*(a1 + 24) > v5);
  return result;
}

uint64_t CTXT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1456);
  *(a1 + 1456) = v9 + 1;
  *(a1 + 1470) = *(a1 + 1468);
  *(a1 + 1464) = 0;
  result = 1;
  *(a1 + 1352) = 1;
  if (*(v9 + 1))
  {
    do
    {
      v11 = CONTEXT_CHOICE(a1, a2, a3, a4, a5, a6, a7, a8);
      if (**(a1 + 1456))
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }
    }

    while (!v12);
    if (v11)
    {
      return 1;
    }

    v13 = a1 + 248;
    v14 = a1 + 192;
    while (1)
    {
      v15 = *(a1 + 1464);
      if (v15 < 1)
      {
        return 0;
      }

      *(a1 + 1456) = *(v13 + 8 * v15);
      *(a1 + 1466) = *(a1 + 648 + 2 * v15);
      ++*(v14 + v15);
      v16 = *(a1 + 1464);
      v17 = *(a1 + 1464);
      *(a1 + 1470) = *(a1 + 748 + 2 * v16);
      *(a1 + 1440) = *(a1 + 952 + 8 * v16);
      v18 = *(a1 + 848 + 2 * v16);
      if (v18 == 10)
      {
        *(a1 + 1464) = v17 - 1;
        if (!**(a1 + 1456))
        {
          return 1;
        }

        do
        {
          v21 = CONTEXT_CHOICE(a1, a2, a3, a4, a5, a6, a7, a8);
          if (**(a1 + 1456))
          {
            v27 = v21 == 0;
          }

          else
          {
            v27 = 1;
          }
        }

        while (!v27);
        goto LABEL_44;
      }

      if (v18 == 9)
      {
        break;
      }

      if (v18 == 8)
      {
        v19 = *(v14 + v16);
        v20 = *(a1 + 1456);
        if (v19 <= v20[2])
        {
          *(a1 + 1352) = 0;
          if (!*v20)
          {
            return 1;
          }

          do
          {
            v21 = CONTEXT_CHOICE(a1, a2, a3, a4, a5, a6, a7, a8);
            if (**(a1 + 1456))
            {
              v22 = v21 == 0;
            }

            else
            {
              v22 = 1;
            }
          }

          while (!v22);
          goto LABEL_44;
        }

LABEL_47:
        *(a1 + 1464) = v17 - 1;
      }

      else
      {
        v21 = 0;
LABEL_44:
        if (v21)
        {
          return 1;
        }
      }
    }

    v23 = *(a1 + 1456);
    if (*v23 == 9 && v23[1] != 1 && (*(v23 - 2) != 9 || *(v14 + v16) - 1 != *(v23 - 1)))
    {
      *(a1 + 1456) = v23 + 2;
    }

    v24 = SKIP_DATA(a1, 9, *(v14 + v16));
    v25 = *(a1 + 1456);
    if (v24)
    {
      *(v13 + 8 * *(a1 + 1464)) = v25;
      *(a1 + 1456) = v25 + 2;
      if (!*(v25 + 2))
      {
        return 1;
      }

      do
      {
        v21 = CONTEXT_CHOICE(a1, a2, a3, a4, a5, a6, a7, a8);
        if (**(a1 + 1456))
        {
          v26 = v21 == 0;
        }

        else
        {
          v26 = 1;
        }
      }

      while (!v26);
      goto LABEL_44;
    }

    *(a1 + 1456) = v25 + 2;
    v17 = *(a1 + 1464);
    goto LABEL_47;
  }

  return result;
}

uint64_t VAR_APPEARENCE(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 104) + 2 * a2;
  v3 = *(v2 - 2);
  if (v3 == 5)
  {
    v4 = *(a1 + 2128);
LABEL_5:
    result = cstdlib_strstr(*(*(v4 + 8 * *(v2 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400));
    if (!result)
    {
      return result;
    }

    return 1;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 2120);
    goto LABEL_5;
  }

  return 1;
}

uint64_t SETUTF8CHAR(uint64_t result, unsigned __int8 *a2)
{
  v2 = result;
  if (*a2 < -64 || (result = utf8_determineUTF8CharLength(*a2), result < 1))
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      *(v2 + v4) = a2[v4];
      ++v4;
    }

    while (result > v4);
    v5 = v4;
  }

  *(v2 + v5) = 0;
  return result;
}

uint64_t CHECK_OF_LIST(uint64_t a1, unsigned __int16 a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 1360) = 0;
  v9 = *(a1 + 1456);
  v10 = *v9;
  result = 1;
  if (v10 != a2)
  {
    v12 = a2;
    v13 = (a1 + 1400);
    v14 = a3;
LABEL_3:
    v15 = v9 + 1;
    *(a1 + 1456) = v9 + 1;
    v16 = 1;
    switch(v10)
    {
      case 2:
        v38 = *v15;
        v39 = *(a1 + 46);
        if (v38 > v39)
        {
          log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (1)", a6, a7, a8, v57);
          v38 = **(a1 + 1456);
          v39 = *(a1 + 46);
        }

        if (v38 > v39)
        {
          return 0;
        }

        v40 = (*(a1 + 1512) + 5 * v38);
        if (*v40)
        {
          v41 = *v13;
          if (!*v13)
          {
            goto LABEL_87;
          }

          v42 = 0;
          v43 = 0;
          do
          {
            if (v41 != v40[v42])
            {
              goto LABEL_87;
            }

            v42 = ++v43;
            v41 = v13[v43];
            v16 = 1;
          }

          while (v13[v43]);
          goto LABEL_84;
        }

        if (!VAR_APPEARENCE(a1, v38))
        {
          goto LABEL_87;
        }

        *(a1 + 1480) = 1;
        v34 = *(a1 + 1512) + 5 * **(a1 + 1456);
        v35 = (a1 + 1400);
        goto LABEL_82;
      case 3:
        if (*v13)
        {
          v45 = *v13 == 31;
        }

        else
        {
          v45 = 1;
        }

        if (v45)
        {
          goto LABEL_87;
        }

        v37 = *(a1 + 2120);
        goto LABEL_58;
      case 4:
        if (*v13)
        {
          v44 = *v13 == 31;
        }

        else
        {
          v44 = 1;
        }

        if (v44)
        {
          goto LABEL_87;
        }

        v27 = *(a1 + 2120);
        goto LABEL_51;
      case 5:
        if (*v13)
        {
          v36 = *v13 == 31;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          goto LABEL_87;
        }

        v37 = *(a1 + 2128);
LABEL_58:
        if (!cstdlib_strstr(*(*(v37 + 8 * (*v15 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 6:
        if (*v13)
        {
          v26 = *v13 == 31;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          goto LABEL_87;
        }

        v27 = *(a1 + 2128);
LABEL_51:
        if (cstdlib_strstr(*(*(v27 + 8 * (*v15 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 7:
        if (!cstdlib_strstr(*(*(*(a1 + 2128) + 8 * (*v15 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        v28 = cstdlib_strstr((*(a1 + 88) + (**(a1 + 1456) << 8) - 256), (a1 + 1400));
        if (!v28 || !*v13 || *v13 == 31)
        {
          goto LABEL_87;
        }

        v29 = **(a1 + 1456);
        v30 = v29 - 1;
        v31 = *(a1 + 88);
        v32 = v31 + (v29 << 8);
        if (v30)
        {
          v35 = (v32 + v28[256 * v30 + *(a1 + 96) - v31 + -256 * v30] - 512);
          v34 = a1 + 1484;
        }

        else
        {
          v33 = v28[256 * v30 + *(a1 + 96) - v31 + -256 * v30];
          v34 = a1 + 1484;
          v35 = (v32 + v33);
        }

LABEL_82:
        SETUTF8CHAR(v34, v35);
        goto LABEL_83;
      case 12:
        v46 = *v13;
        if (*v13)
        {
          v47 = v46 == 31;
        }

        else
        {
          v47 = 1;
        }

        if (v47)
        {
          goto LABEL_87;
        }

        v48 = 0;
        v49 = 0;
        do
        {
          if (v46 != v15[v48])
          {
            goto LABEL_87;
          }

          v48 = ++v49;
          v46 = v13[v49];
        }

        while (v13[v49]);
        v16 = cstdlib_strlen((a1 + 1400));
        goto LABEL_84;
      case 13:
        v50 = *v13;
        if (*v13)
        {
          v51 = v50 == 31;
        }

        else
        {
          v51 = 1;
        }

        if (v51)
        {
          goto LABEL_87;
        }

        v52 = 0;
        v53 = 0;
        while (v50 == v15[v52])
        {
          v52 = ++v53;
          v50 = v13[v53];
          if (!v13[v53])
          {
            goto LABEL_87;
          }
        }

        v54 = v9 + 2;
        do
        {
          *(a1 + 1456) = v54;
          v55 = *v54++;
        }

        while (v55 < -64);
        v9 = v54 - 1;
        goto LABEL_85;
      case 14:
      case 16:
        *(a1 + 1360) = *(a1 + 1440);
        v17 = *(*(a1 + 1504) + 8 * *v15 - 8);
        *(a1 + 1440) = v17;
        goto LABEL_7;
      case 15:
      case 17:
        v17 = *(a1 + 1360);
        if (!v17)
        {
          return 0;
        }

        *(a1 + 1440) = v17;
        *(a1 + 1360) = 0;
LABEL_7:
        v18 = (v17 + 4 * v14);
        if (*(a1 + 2096) != v18)
        {
          Utf32SymToUtf8Sym(*v18, (a1 + 1400), 5u);
          v19 = (*(a1 + 1440) + 4 * v14);
          *(a1 + 1405) = *v19 & 0x3F;
          *(a1 + 2096) = v19;
        }

        result = 0;
        if (!*v13 || *v13 == 31)
        {
          return result;
        }

        goto LABEL_83;
      case 21:
        v20 = *v15;
        v21 = *(a1 + 46);
        if (v20 > v21)
        {
          log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (2)", a6, a7, a8, v57);
          v20 = **(a1 + 1456);
          v21 = *(a1 + 46);
        }

        if (v20 > v21)
        {
          return 0;
        }

        v22 = (*(a1 + 1512) + 5 * v20);
        if (!*v22)
        {
          goto LABEL_83;
        }

        v23 = *v13;
        if (!*v13)
        {
          goto LABEL_83;
        }

        v24 = 0;
        v25 = 0;
        break;
      default:
        goto LABEL_84;
    }

    do
    {
      if (v23 != v22[v24])
      {
LABEL_83:
        v16 = 1;
LABEL_84:
        v9 = (*(a1 + 1456) + v16);
        *(a1 + 1456) = v9;
LABEL_85:
        v10 = *v9;
        if (v10 == v12)
        {
          return 1;
        }

        goto LABEL_3;
      }

      v24 = ++v25;
      v23 = v13[v25];
    }

    while (v13[v25]);
LABEL_87:
    v56 = *(a1 + 1360);
    if (v56)
    {
      result = 0;
      *(a1 + 1440) = v56;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TOKEN1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 < 0)
  {
    log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: nr < 0 (2)", a6, a7, a8, v15);
  }

  v10 = *(a1 + 1440);
  do
  {
    v11 = v8;
    v12 = *(v10 + 4 * v8++);
  }

  while (v12 == 126);
  if (*(a1 + 2096) != v10 + 4 * v11)
  {
    Utf32SymToUtf8Sym(v12, (a1 + 1400), 5u);
    v13 = (*(a1 + 1440) + 4 * v11);
    *(a1 + 1405) = *v13 & 0x3F;
    *(a1 + 2096) = v13;
  }

  return v11;
}

uint64_t LOG_WARNING_ON_MAX_NUMBER(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 5000 && *(result + 2088) >= 3)
  {
    return log_OutText(*(*(result + 2080) + 32), "FE_DEPES", 3, 0, "warning: number of iterations >= MAX_NUMBER_UPPER_BOUND, output might be incorrect (%u)", a6, a7, a8, a3);
  }

  return result;
}

uint64_t CONTEXT_CHOICE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1456);
  switch(*v9)
  {
    case 2:
      v55 = *(a1 + 1466);
      if (v55 < 0)
      {
        return 0;
      }

      v56 = TOKEN(a1, v55, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v56;
      v57 = *(a1 + 1456);
      *(a1 + 1456) = v57 + 1;
      v58 = *(v57 + 1);
      v59 = *(a1 + 1468);
      *(a1 + 1470) = v59;
      *(a1 + 1456) = v57 + 2;
      *(a1 + 1466) = v59 + v56;
      v60 = *(a1 + 1400);
      if (*(a1 + 1400) && v60 != 31)
      {
        v61 = a1 + 1400;
        v62 = 5 * v58;
        v63 = (*(a1 + 1512) + 5 * v58);
        if (*v63)
        {
          v64 = 0;
          v65 = 0;
          v25 = 1;
          do
          {
            if (v60 != v63[v64])
            {
              return 0;
            }

            v64 = ++v65;
            v60 = *(v61 + v65);
          }

          while (*(v61 + v65));
        }

        else
        {
          if (!VAR_APPEARENCE(a1, v58))
          {
            return 0;
          }

          v25 = 1;
          *(a1 + 1480) = 1;
          SETUTF8CHAR(*(a1 + 1512) + v62, (a1 + 1400));
        }
      }

      return v25;
    case 3:
      v30 = *(a1 + 1466);
      if (v30 < 0)
      {
        return 0;
      }

      v31 = TOKEN(a1, v30, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v31;
      v32 = *(a1 + 1456);
      *(a1 + 1456) = v32 + 1;
      v33 = *(v32 + 1);
      v34 = *(a1 + 1468);
      *(a1 + 1470) = v34;
      *(a1 + 1456) = v32 + 2;
      *(a1 + 1466) = v34 + v31;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v35 = *(a1 + 2120);
        return cstdlib_strstr(*(*(v35 + 8 * (v33 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
      }

      return v25;
    case 4:
      v66 = *(a1 + 1466);
      if (v66 < 0)
      {
        return 0;
      }

      v67 = TOKEN(a1, v66, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v67;
      v68 = *(a1 + 1456);
      *(a1 + 1456) = v68 + 1;
      v27 = *(v68 + 1);
      v69 = *(a1 + 1468);
      *(a1 + 1470) = v69;
      *(a1 + 1456) = v68 + 2;
      *(a1 + 1466) = v69 + v67;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v29 = *(a1 + 2120);
        return cstdlib_strstr(*(*(v29 + 8 * (v27 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
      }

      return v25;
    case 5:
      v51 = *(a1 + 1466);
      if (v51 < 0)
      {
        return 0;
      }

      v52 = TOKEN(a1, v51, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v52;
      v53 = *(a1 + 1456);
      *(a1 + 1456) = v53 + 1;
      v33 = *(v53 + 1);
      v54 = *(a1 + 1468);
      *(a1 + 1470) = v54;
      *(a1 + 1456) = v53 + 2;
      *(a1 + 1466) = v54 + v52;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v35 = *(a1 + 2128);
        return cstdlib_strstr(*(*(v35 + 8 * (v33 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
      }

      return v25;
    case 6:
      v23 = *(a1 + 1466);
      if (v23 < 0)
      {
        return 0;
      }

      v24 = TOKEN(a1, v23, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v24;
      v26 = *(a1 + 1456);
      *(a1 + 1456) = v26 + 1;
      v27 = *(v26 + 1);
      v28 = *(a1 + 1468);
      *(a1 + 1470) = v28;
      *(a1 + 1456) = v26 + 2;
      *(a1 + 1466) = v28 + v24;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v29 = *(a1 + 2128);
        return cstdlib_strstr(*(*(v29 + 8 * (v27 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
      }

      return v25;
    case 8:
      *(a1 + 1456) = v9 + 3;
      if (*(a1 + 1352))
      {
        v36 = *(a1 + 1464) + 1;
        *(a1 + 1464) = v36;
        *(a1 + 2 * v36 + 848) = 8;
        v37 = *(a1 + 1464);
        *(a1 + 8 * v37 + 952) = *(a1 + 1440);
        v38 = a1 + 248;
        *(a1 + 248 + 8 * v37) = *(a1 + 1456) - 3;
        v39 = a1 + 192;
        *(a1 + 192 + v37) = 0;
        v40 = *(a1 + 1464);
        if (*(a1 + 192 + v40) >= *(*(a1 + 248 + 8 * v40) + 1))
        {
          v48 = *(a1 + 1470);
          v25 = 1;
          v49 = 1;
        }

        else
        {
          v41 = *(a1 + 1466);
          do
          {
            if (v41 < 0)
            {
              return 0;
            }

            *(a1 + 1466) = TOKEN(a1, v41, *(a1 + 1470), a4, a5, a6, a7, a8);
            ++*(v39 + *(a1 + 1464));
            *(a1 + 1456) = *(v38 + 8 * *(a1 + 1464)) + 3;
            v47 = CHECK_OF_LIST(a1, 8u, *(a1 + 1466), v42, v43, v44, v45, v46);
            v48 = *(a1 + 1468);
            *(a1 + 1470) = v48;
            v41 = *(a1 + 1466) + v48;
            *(a1 + 1466) = v41;
            v40 = *(a1 + 1464);
            v49 = v47 != 0;
            v50 = *(v39 + v40) >= *(*(v38 + 8 * v40) + 1) || v47 == 0;
          }

          while (!v50);
          v25 = v47;
        }

        *(a1 + 2 * v40 + 748) = v48;
        v141 = *(a1 + 1464);
        if (!*(v39 + v141))
        {
          v142 = *(a1 + 1456);
          if (*v142 != 8)
          {
            v143 = v142 + 1;
            do
            {
              *(a1 + 1456) = v143;
              v144 = *v143++;
            }

            while (v144 != 8);
          }
        }

        *(a1 + 2 * v141 + 648) = *(a1 + 1466);
        if (!v49)
        {
LABEL_117:
          --*(a1 + 1464);
        }
      }

      else
      {
        v132 = *(a1 + 1466);
        if (v132 < 0)
        {
          return 0;
        }

        v133 = TOKEN(a1, v132, *(a1 + 1470), a4, a5, a6, a7, a8);
        *(a1 + 1466) = v133;
        *(a1 + 1352) = 1;
        v25 = CHECK_OF_LIST(a1, 8u, v133, v134, v135, v136, v137, v138);
        v139 = *(a1 + 1468);
        *(a1 + 2 * *(a1 + 1464) + 748) = v139;
        *(a1 + 1470) = v139;
        v140 = *(a1 + 1466) + v139;
        *(a1 + 1466) = v140;
        *(a1 + 2 * *(a1 + 1464) + 648) = v140;
        if (!v25)
        {
          goto LABEL_117;
        }
      }

      ++*(a1 + 1456);
      return v25;
    case 9:
      v75 = (v9 + 1);
      *(a1 + 1456) = v9 + 1;
      v76 = v9[1];
      if (v76)
      {
        if (v76 == 1)
        {
          v77 = *(a1 + 1464) + 1;
          *(a1 + 1464) = v77;
          *(a1 + 2 * v77 + 748) = *(a1 + 1470);
          v78 = *(a1 + 1464);
          *(a1 + 8 * v78 + 952) = *(a1 + 1440);
          *(a1 + 2 * v78 + 848) = 9;
          *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
          *(a1 + *(a1 + 1464) + 192) = **(a1 + 1456);
          *(a1 + 8 * *(a1 + 1464) + 248) = *(a1 + 1456) + 1;
          v75 = *(a1 + 1456);
        }

        else
        {
          SKIP_DATA(a1, 9, 0);
          v75 = *(a1 + 1456) + 1;
        }
      }

      goto LABEL_242;
    case 0xA:
      *(a1 + 1456) = v9 + 1;
      if (v9[1])
      {
        v79 = *(a1 + 1464) + 1;
        *(a1 + 1464) = v79;
        *(a1 + 2 * v79 + 748) = *(a1 + 1470);
        v80 = *(a1 + 1464);
        *(a1 + 8 * v80 + 952) = *(a1 + 1440);
        *(a1 + 2 * v80 + 848) = 10;
        *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
        v81 = *(a1 + 1464);
        *(a1 + 8 * v81 + 248) = *(a1 + 1456) + 1;
        *(a1 + v81 + 192) = 0;
        SKIP_DATA(a1, 10, 0);
        v9 = *(a1 + 1456);
      }

      goto LABEL_5;
    case 0xB:
      v107 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v107 < 0)
      {
        return 0;
      }

      v108 = TOKEN(a1, v107, *(a1 + 1470), a4, a5, a6, a7, a8);
      *(a1 + 1466) = v108;
      v114 = *(a1 + 1456);
      v115 = *(v114 + 2);
      if (v115 == 220)
      {
        v115 = 5000;
      }

      *(a1 + 1406) = v115;
      if (v115 && (*(a1 + 1456) = v114 + 3, CHECK_OF_LIST(a1, 0xBu, v108, v109, v110, v111, v112, v113)))
      {
        LOWORD(v116) = 0;
        do
        {
          v117 = *(a1 + 1456);
          v118 = *(a1 + 1468);
          v119 = v118 + *(a1 + 1466);
          *(a1 + 1466) += *(a1 + 1468);
          *(a1 + 1472) = v119;
          if (v119 < 0)
          {
            return 0;
          }

          v120 = TOKEN(a1, v119, v118, v109, v110, v111, v112, v113);
          *(a1 + 1466) = v120;
          v116 = (v116 + 1);
          if (v116 >= *(a1 + 1406))
          {
            break;
          }

          *(a1 + 1456) = v114 + 3;
        }

        while (CHECK_OF_LIST(a1, 0xBu, v120, v109, v110, v111, v112, v113));
      }

      else
      {
        v116 = 0;
        v117 = 0;
      }

      LOG_WARNING_ON_MAX_NUMBER(a1, v116, 9, v109, v110, v111, v112, v113);
      *(a1 + 1466) = *(a1 + 1472);
      if (v117)
      {
        *(a1 + 1456) = v117;
      }

      else
      {
        v117 = *(a1 + 1456);
      }

      for (i = v117 + 1; ; ++i)
      {
        if (*(i - 1) == 11)
        {
          v157 = *(i - 2);
          v158 = v157 > 0x15;
          v159 = (1 << v157) & 0x20067C;
          if (v158 || v159 == 0)
          {
            break;
          }

          v161 = *(i - 3);
          v158 = v161 > 0x15;
          v162 = (1 << v161) & 0x20C67C;
          if (!v158 && v162 != 0)
          {
            break;
          }
        }

        *(a1 + 1456) = i;
      }

      *(a1 + 1470) = *(a1 + 1468);
      *(a1 + 1456) = i;
      return v116 >= *(v114 + 1);
    case 0xC:
      v99 = *(a1 + 1466);
      if (v99 < 0)
      {
        return 0;
      }

      v100 = TOKEN(a1, v99, *(a1 + 1470), a4, a5, a6, a7, a8);
      v101 = *(a1 + 1456);
      v102 = *(a1 + 1468);
      *(a1 + 1470) = v102;
      *(a1 + 1466) = v102 + v100;
      *(a1 + 1456) = v101 + 2;
      v16 = *(a1 + 1400);
      if (*(a1 + 1400))
      {
        v103 = 0;
        v104 = 0;
        v105 = a1 + 1400;
        v106 = *(a1 + 1400);
        do
        {
          v22 = v106 == *(v101 + 1 + v103);
          if (v106 != *(v101 + 1 + v103))
          {
            break;
          }

          v103 = ++v104;
          v106 = *(v105 + v104);
        }

        while (*(v105 + v104));
      }

      else
      {
        v22 = 0;
      }

      if (*(v101 + 2) <= -65)
      {
        v153 = (v101 + 3);
        do
        {
          *(a1 + 1456) = v153;
          v154 = *v153++;
        }

        while (v154 < -64);
      }

      goto LABEL_143;
    case 0xD:
      v12 = *(a1 + 1466);
      if (v12 < 0)
      {
        return 0;
      }

      v13 = TOKEN(a1, v12, *(a1 + 1470), a4, a5, a6, a7, a8);
      v14 = *(a1 + 1456);
      v15 = *(a1 + 1468);
      *(a1 + 1470) = v15;
      *(a1 + 1466) = v15 + v13;
      *(a1 + 1456) = v14 + 2;
      v16 = *(a1 + 1400);
      if (*(a1 + 1400))
      {
        v17 = 0;
        v18 = 0;
        v19 = a1 + 1400;
        v20 = *(a1 + 1400);
        do
        {
          v21 = *(v14 + 1 + v17);
          v50 = v20 == v21;
          v22 = v20 != v21;
          if (!v50)
          {
            break;
          }

          v17 = ++v18;
          v20 = *(v19 + v18);
        }

        while (*(v19 + v18));
      }

      else
      {
        v22 = 1;
      }

      if (*(v14 + 2) <= -65)
      {
        v151 = (v14 + 3);
        do
        {
          *(a1 + 1456) = v151;
          v152 = *v151++;
        }

        while (v152 < -64);
      }

LABEL_143:
      if (v16)
      {
        v155 = v22;
      }

      else
      {
        v155 = 0;
      }

      return v16 != 31 && v155;
    case 0xE:
    case 0x10:
      *(a1 + 1456) = v9 + 1;
      *(a1 + 1376) = *(a1 + 1440);
      v10 = *(*(a1 + 1504) + 8 * v9[1] - 8);
      goto LABEL_4;
    case 0xF:
    case 0x11:
      v10 = *(a1 + 1376);
LABEL_4:
      *(a1 + 1440) = v10;
      *(a1 + 1470) = 0;
LABEL_5:
      v11 = (v9 + 2);
      goto LABEL_243;
    case 0x12:
      v82 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v82 < 0)
      {
        return 0;
      }

      v83 = TOKEN(a1, v82, *(a1 + 1470), a4, a5, a6, a7, a8);
      LOWORD(v89) = 0;
      *(a1 + 1466) = v83;
      v90 = *(a1 + 1456);
      v91 = *(v90 + 2);
      if (v91 == 220)
      {
        v91 = 5000;
      }

      *(a1 + 1406) = v91;
      *(a1 + 1392) = v90 + 4;
      v92 = *(v90 + 3);
      if (v92 > 5)
      {
        if (v92 > 12)
        {
          if (v92 == 13)
          {
            LOWORD(v89) = 0;
            if (v91)
            {
              v192 = (a1 + 1400);
              do
              {
                v193 = *v192;
                if (!*v192 || v193 == 31)
                {
                  break;
                }

                v195 = 0;
                v196 = 0;
                while (v193 == *(*(a1 + 1392) + v195))
                {
                  v195 = ++v196;
                  v193 = v192[v196];
                  if (!v192[v196])
                  {
                    goto LABEL_234;
                  }
                }

                v197 = *(a1 + 1468);
                *(a1 + 1466) = *(a1 + 1468) + v83;
                *(a1 + 1472) = v197 + v83;
                if (((v197 + v83) & 0x8000) != 0)
                {
                  return 0;
                }

                v83 = TOKEN(a1, (v197 + v83), v197, v84, v85, v86, v87, v88);
                *(a1 + 1466) = v83;
                v89 = (v89 + 1);
              }

              while (v89 < *(a1 + 1406));
            }

LABEL_234:
            v96 = v89;
            v97 = a1;
            v98 = 14;
          }

          else
          {
            if (v92 != 21)
            {
              goto LABEL_236;
            }

            LOWORD(v89) = 0;
            if (v91)
            {
              v172 = (a1 + 1400);
              do
              {
                v173 = *v172;
                if (!*v172 || v173 == 31)
                {
                  break;
                }

                v175 = (*(a1 + 1512) + 5 * **(a1 + 1392));
                if (*v175)
                {
                  v176 = 0;
                  v177 = 0;
                  while (v173 == v175[v176])
                  {
                    v176 = ++v177;
                    v173 = v172[v177];
                    if (!v172[v177])
                    {
                      goto LABEL_188;
                    }
                  }
                }

                v178 = *(a1 + 1468);
                *(a1 + 1466) = *(a1 + 1468) + v83;
                *(a1 + 1472) = v178 + v83;
                if (((v178 + v83) & 0x8000) != 0)
                {
                  return 0;
                }

                v83 = TOKEN(a1, (v178 + v83), v178, v84, v85, v86, v87, v88);
                *(a1 + 1466) = v83;
                v89 = (v89 + 1);
              }

              while (v89 < *(a1 + 1406));
            }

LABEL_188:
            v96 = v89;
            v97 = a1;
            v98 = 16;
          }
        }

        else if (v92 == 6)
        {
          LOWORD(v89) = 0;
          if (v91)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v186 = *(a1 + 1400) == 31;
              }

              else
              {
                v186 = 1;
              }

              if (v186 || cstdlib_strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v187 = *(a1 + 1468);
              v188 = v187 + *(a1 + 1466);
              *(a1 + 1466) += *(a1 + 1468);
              *(a1 + 1472) = v188;
              if (v188 < 0)
              {
                return 0;
              }

              *(a1 + 1466) = TOKEN(a1, v188, v187, v84, v85, v86, v87, v88);
              v89 = (v89 + 1);
            }

            while (v89 < *(a1 + 1406));
          }

          v96 = v89;
          v97 = a1;
          v98 = 12;
        }

        else
        {
          if (v92 != 12)
          {
            goto LABEL_236;
          }

          LOWORD(v89) = 0;
          if (v91)
          {
            v145 = (a1 + 1400);
            do
            {
              v146 = *v145;
              if (!*v145 || v146 == 31)
              {
                break;
              }

              v148 = 0;
              v149 = 0;
              do
              {
                if (v146 != *(*(a1 + 1392) + v148))
                {
                  goto LABEL_133;
                }

                v148 = ++v149;
                v146 = v145[v149];
              }

              while (v145[v149]);
              v150 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v83;
              *(a1 + 1472) = v150 + v83;
              if (((v150 + v83) & 0x8000) != 0)
              {
                return 0;
              }

              v83 = TOKEN(a1, (v150 + v83), v150, v84, v85, v86, v87, v88);
              *(a1 + 1466) = v83;
              v89 = (v89 + 1);
            }

            while (v89 < *(a1 + 1406));
          }

LABEL_133:
          v96 = v89;
          v97 = a1;
          v98 = 13;
        }

        goto LABEL_235;
      }

      if (v92 <= 3)
      {
        if (v92 == 2)
        {
          LOWORD(v89) = 0;
          if (v91)
          {
            v179 = (a1 + 1400);
            while (1)
            {
              v180 = 5 * **(a1 + 1392);
              v181 = (*(a1 + 1512) + v180);
              if (*v181)
              {
                break;
              }

              if (!VAR_APPEARENCE(a1, v180))
              {
                goto LABEL_203;
              }

              *(a1 + 1480) = 1;
              SETUTF8CHAR(*(a1 + 1512) + 5 * **(a1 + 1392), (a1 + 1400));
              v83 = *(a1 + 1466);
LABEL_201:
              v185 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v83;
              *(a1 + 1472) = v185 + v83;
              if (((v185 + v83) & 0x8000) != 0)
              {
                return 0;
              }

              v83 = TOKEN(a1, (v185 + v83), v185, v84, v85, v86, v87, v88);
              *(a1 + 1466) = v83;
              v89 = (v89 + 1);
              if (v89 >= *(a1 + 1406))
              {
                goto LABEL_203;
              }
            }

            v182 = *v179;
            if (*v179)
            {
              v183 = 0;
              v184 = 0;
              while (v182 == v181[v183])
              {
                v183 = ++v184;
                v182 = v179[v184];
                if (!v179[v184])
                {
                  goto LABEL_201;
                }
              }
            }
          }

LABEL_203:
          v96 = v89;
          v97 = a1;
          v98 = 15;
        }

        else
        {
          if (v92 != 3)
          {
            goto LABEL_236;
          }

          LOWORD(v89) = 0;
          if (v91)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v93 = *(a1 + 1400) == 31;
              }

              else
              {
                v93 = 1;
              }

              if (v93 || !cstdlib_strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v94 = *(a1 + 1468);
              v95 = v94 + *(a1 + 1466);
              *(a1 + 1466) += *(a1 + 1468);
              *(a1 + 1472) = v95;
              if (v95 < 0)
              {
                return 0;
              }

              *(a1 + 1466) = TOKEN(a1, v95, v94, v84, v85, v86, v87, v88);
              v89 = (v89 + 1);
            }

            while (v89 < *(a1 + 1406));
          }

          v96 = v89;
          v97 = a1;
          v98 = 10;
        }

        goto LABEL_235;
      }

      if (v92 == 4)
      {
        LOWORD(v89) = 0;
        if (v91)
        {
          do
          {
            if (*(a1 + 1400))
            {
              v189 = *(a1 + 1400) == 31;
            }

            else
            {
              v189 = 1;
            }

            if (v189 || cstdlib_strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
            {
              break;
            }

            v190 = *(a1 + 1468);
            v191 = v190 + *(a1 + 1466);
            *(a1 + 1466) += *(a1 + 1468);
            *(a1 + 1472) = v191;
            if (v191 < 0)
            {
              return 0;
            }

            *(a1 + 1466) = TOKEN(a1, v191, v190, v84, v85, v86, v87, v88);
            v89 = (v89 + 1);
          }

          while (v89 < *(a1 + 1406));
        }

        v96 = v89;
        v97 = a1;
        v98 = 11;
LABEL_235:
        LOG_WARNING_ON_MAX_NUMBER(v97, v96, v98, v84, v85, v86, v87, v88);
        goto LABEL_236;
      }

      LOWORD(v89) = 0;
      if (v91)
      {
        do
        {
          if (*(a1 + 1400))
          {
            v164 = *(a1 + 1400) == 31;
          }

          else
          {
            v164 = 1;
          }

          if (v164 || !cstdlib_strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
          {
            break;
          }

          v170 = *(a1 + 1468);
          v171 = v170 + *(a1 + 1466);
          *(a1 + 1466) += *(a1 + 1468);
          *(a1 + 1472) = v171;
          if (v171 < 0)
          {
            return 0;
          }

          *(a1 + 1466) = TOKEN(a1, v171, v170, v165, v166, v167, v168, v169);
          v89 = (v89 + 1);
        }

        while (v89 < *(a1 + 1406));
      }

LABEL_236:
      v198 = *(a1 + 1456);
      if (*(v198 + 1) > v89)
      {
        return 0;
      }

      *(a1 + 1466) = *(a1 + 1472);
      v75 = v198 + 5;
      *(a1 + 1456) = v198 + 5;
      *(a1 + 1470) = *(a1 + 1468);
      if (*(v198 + 5) <= -65)
      {
        v199 = (v198 + 6);
        do
        {
          *(a1 + 1456) = v199;
          v200 = *v199++;
        }

        while (v200 < -64);
        v75 = (v199 - 1);
      }

LABEL_242:
      v11 = v75 + 1;
LABEL_243:
      *(a1 + 1456) = v11;
      return 1;
    case 0x13:
      v131 = *(a1 + 1466);
      if (v131 < 0)
      {
        return 0;
      }

      *(a1 + 1466) = TOKEN(a1, v131, *(a1 + 1470), a4, a5, a6, a7, a8);
      *(a1 + 1470) = *(a1 + 1468);
      v11 = *(a1 + 1456) + 1;
      goto LABEL_243;
    case 0x15:
      v121 = *(a1 + 1466);
      if (v121 < 0)
      {
        return 0;
      }

      v122 = TOKEN(a1, v121, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v122;
      v123 = *(a1 + 1456);
      *(a1 + 1456) = v123 + 1;
      v124 = *(v123 + 1);
      v125 = *(a1 + 1468);
      *(a1 + 1470) = v125;
      *(a1 + 1456) = v123 + 2;
      *(a1 + 1466) = v125 + v122;
      v126 = *(a1 + 1400);
      if (!*(a1 + 1400) || v126 == 31)
      {
        return v25;
      }

      v127 = (*(a1 + 1512) + 5 * v124);
      if (!*v127)
      {
        return 1;
      }

      v128 = 0;
      v129 = 0;
      v130 = a1 + 1400;
      while (v126 == v127[v128])
      {
        v25 = 0;
        v128 = ++v129;
        v126 = *(v130 + v129);
        if (!*(v130 + v129))
        {
          return v25;
        }
      }

      return 1;
    default:
      v70 = *(a1 + 1466);
      if (v70 < 0)
      {
        return 0;
      }

      *(a1 + 1466) = TOKEN(a1, v70, *(a1 + 1470), a4, a5, a6, a7, a8);
      *(a1 + 1470) = *(a1 + 1468);
      v71 = (a1 + 1400);
      v72 = *(a1 + 1400);
      if (!*(a1 + 1400))
      {
        goto LABEL_102;
      }

      v73 = 0;
      v74 = 0;
      while (v72 == *(*(a1 + 1456) + v73))
      {
        v73 = ++v74;
        v72 = v71[v74];
        if (!v71[v74])
        {
          v25 = 1;
          goto LABEL_103;
        }
      }

LABEL_102:
      v25 = 0;
LABEL_103:
      *(a1 + 1456) += cstdlib_strlen(v71);
      *(a1 + 1466) += *(a1 + 1468);
      return v25;
  }
}

uint64_t SKIP_DATA(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 1456);
  LOBYTE(v8) = *v7;
  while (1)
  {
    if (a2 != v8)
    {
LABEL_11:
      if (a2 != 10 || v8 != 10 || !v6)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v6 = v7[1];
    if (v6 == a3)
    {
      v9 = *(v7 - 1);
      v10 = v9 > 0x15;
      v11 = (1 << v9) & 0x20067C;
      if (v10 || v11 == 0)
      {
        return 1;
      }

      v13 = *(v7 - 2) - 2;
      if (v13 < 0x14 && ((0x8319Fu >> v13) & 1) != 0)
      {
        return 1;
      }
    }

    if (v6 != 1)
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = *(v7 - 1);
    v10 = v14 > 0x15;
    v15 = (1 << v14) & 0x20067C;
    v16 = v10 || v15 == 0;
    if (v16 || (v17 = *(v7 - 2), v17 <= 0x15) && ((1 << v17) & 0x20C67C) != 0)
    {
      *(a1 + 1456) = v7 + 1;
      SKIP_DATA(a1, a2, 0);
      v18 = *(a1 + 1456) + 1;
      goto LABEL_22;
    }

LABEL_21:
    v18 = v7;
LABEL_22:
    v7 = (v18 + 1);
    *(a1 + 1456) = v18 + 1;
    v8 = *(v18 + 1);
    if (v8 == a2 && !*(v18 + 2))
    {
      return 0;
    }
  }
}

uint64_t TOKEN(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (a2 < 0)
  {
    log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 3, 0, "warning: nr < 0 (1)", a6, a7, a8, v18);
  }

  v11 = *(a1 + 1440);
  if (a3)
  {
    do
    {
      v12 = v9;
      v13 = *(v11 + 4 * v9);
      v9 += a3;
    }

    while (v13 == 126);
  }

  else
  {
    v12 = v9;
  }

  v14 = v12;
  v15 = (v11 + 4 * v12);
  if (*(a1 + 2096) != v15)
  {
    Utf32SymToUtf8Sym(*v15, (a1 + 1400), 5u);
    v16 = (*(a1 + 1440) + 4 * v14);
    *(a1 + 1405) = *v16 & 0x3F;
    *(a1 + 2096) = v16;
  }

  return v14;
}

uint64_t DCT_LKP(uint64_t a1, uint64_t a2, int a3, __int16 *a4)
{
  v4 = a4;
  *&__c[1] = -1;
  __c[0] = 0;
  v8 = 5 * (*a4 - a3) + 1;
  v9 = heap_Alloc(*(a1 + 1528), v8);
  if (!v9)
  {
    v26 = 0;
    *(a1 + 1428) = -101;
    return v26;
  }

  v10 = v9;
  *&__c[3] = 0;
  v29 = 0;
  utf8_Utf32ToUtf8(**(a1 + 1504) + 4 * a3, (*v4 - a3), v9, v8, &v29);
  *(v10 + v29) = 0;
  (*(*(a1 + 1552) + 96))(*(a1 + 1536), *(a1 + 1544), a2, v10, &__c[3], &__c[1], __c);
  if (*&__c[1] != 1)
  {
LABEL_30:
    heap_Free(*(a1 + 1528), v10);
    return 0;
  }

  v11 = heap_Alloc(*(a1 + 1528), 2 * *(a1 + 24));
  if (!v11)
  {
    *(a1 + 1428) = -101;
    goto LABEL_30;
  }

  v12 = v11;
  if (*(a1 + 24) < 1)
  {
    goto LABEL_26;
  }

  v13 = 0;
  v14 = **&__c[3];
  v15 = *v4;
  do
  {
    *(v11 + 2 * v13++) = v15;
    v16 = *(a1 + 24);
  }

  while (v13 < v16);
  if (v16 < 1)
  {
LABEL_26:
    v18 = 0;
  }

  else
  {
    v28 = v4;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = cstdlib_strchr(v14, __c[0]);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
      }

      if (cstdlib_strlen(v14))
      {
        v21 = cstdlib_strlen(v14);
        v22 = Utf8_LengthInUtf8chars(v14, v21);
        v23 = a3 + v22;
        if (v23 >= *(*(a1 + 1416) + 2 * v17) - 1)
        {
          v26 = 0;
          *(a1 + 1428) = -100;
          goto LABEL_28;
        }

        utf8_Utf8ToUtf32(v14, v21, 0, *(*(a1 + 1504) + 8 * v17) + 4 * a3, (v22 + a3), &v29, 0);
        *(v12 + 2 * v17) = v23;
      }

      else
      {
        LOWORD(v23) = *(v12 + 2 * v17);
      }

      if (v18 <= v23)
      {
        v18 = v23;
      }

      v24 = *(a1 + 24);
      if (!v20)
      {
        break;
      }

      v14 = v20 + 1;
      ++v17;
    }

    while (v17 < v24);
    if (v24 < 1)
    {
      v4 = v28;
    }

    else
    {
      v25 = 0;
      v4 = v28;
      do
      {
        if (*(v12 + 2 * v25) < v18)
        {
          memset_pattern16((*(*(a1 + 1504) + 8 * v25) + 4 * *(v12 + 2 * v25)), &unk_26ECDA9B0, 4 * (v18 + ~*(v12 + 2 * v25)) + 4);
        }

        ++v25;
      }

      while (v24 != v25);
    }
  }

  *v4 = v18;
  v26 = 1;
LABEL_28:
  heap_Free(*(a1 + 1528), v10);
  heap_Free(*(a1 + 1528), v12);
  return v26;
}

uint64_t RESTORE_SUBSTITUTION(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 <= 0)
  {
    v6 = 0;
    v8 = *(a1 + 1416);
    v7 = a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    v8 = *(a1 + 1416);
    do
    {
      v9 = *(v8 + 2 * v5);
      v10 = *(*(a1 + 1504) + 8 * v5);
      for (i = v9; ; ++i)
      {
        v12 = *(v10 + 4 * i);
        if (!v12)
        {
          break;
        }

        if (v12 == 31)
        {
          v6 = i - v9;
          v13 = i - v9 + 1;
          cstdlib_memmove((v10 + 4 * a2), (v10 + 4 * *(v8 + 2 * v5)), 4 * v13);
          v8 = *(a1 + 1416);
          *(v8 + 2 * v5) += v13;
          LOWORD(v4) = *(a1 + 24);
          break;
        }
      }

      ++v5;
    }

    while (v5 < v4);
    v4 = v4;
  }

  cstdlib_memmove((*(a1 + 1560) + v7), (*(a1 + 1560) + *(v8 + 2 * v4)), (v6 + 1));
  *(*(a1 + 1416) + 2 * *(a1 + 24)) += v6 + 1;
  return (v6 + a2);
}

uint64_t FirstUtf8SymToUtf32(unsigned __int8 *a1, _DWORD *a2)
{
  v6 = 0;
  *a2 = 0;
  v4 = utf8_determineUTF8CharLength(*a1);
  result = utf8_Utf8ToUtf32(a1, v4, 0, a2, 1u, &v6, 0);
  if ((result & 0x80000000) == 0 && v6 != 1)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t MOVE_FOR_SUBSTITUTION(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a2;
    LODWORD(v7) = *(a1 + 24);
    if (v7 > 0)
    {
      v8 = 0;
      v9 = a4 + a3 + 1;
      v10 = (a4 + a2);
      v23 = a4;
      v11 = 4 * a4;
      do
      {
        v12 = *(*(a1 + 1504) + 8 * v8);
        if (v12 != *(a1 + 1448))
        {
          if (v9 >= *(*(a1 + 1416) + 2 * v8))
          {
            goto LABEL_23;
          }

          cstdlib_memmove((v12 + 4 * v10), (v12 + 4 * v5), 4 * (v4 - v5 + 1));
          if (v10 > v5)
          {
            memset_pattern16((*(*(a1 + 1504) + 8 * v8) + 4 * v5), &unk_26ECDA9B0, v11);
          }
        }

        ++v8;
        v7 = *(a1 + 24);
      }

      while (v8 < v7);
      a4 = v23;
    }

    if (a4 < 0)
    {
      v7 = *(a1 + 1560);
      if ((a4 + v5) >= v5)
      {
        v13 = 0;
        v14 = v5;
      }

      else
      {
        v13 = 0;
        v14 = v5;
        v15 = (v7 + (a4 + v5));
        v16 = v5 - (a4 + v5);
        do
        {
          v17 = *v15++;
          v13 += v17;
          --v16;
        }

        while (v16);
      }

      *(v7 + v14) += v13;
      LOWORD(v7) = *(a1 + 24);
    }

    v18 = a4 + v4;
    if (a4 + v4 >= *(*(a1 + 1416) + 2 * v7) - 1)
    {
LABEL_23:
      LOWORD(v4) = 0;
      *(a1 + 1428) = -100;
    }

    else
    {
      v19 = a4;
      v20 = a4 + v5;
      cstdlib_memmove((*(a1 + 1560) + v20), (*(a1 + 1560) + v5), (v4 - v5 + 1));
      if (v19 >= 1)
      {
        do
        {
          *(*(a1 + 1560) + v5++) = 0;
        }

        while (v20 > v5);
      }

      for (i = v18 + 1; i <= v4; ++i)
      {
        *(*(a1 + 1560) + i) = 0;
      }

      LOWORD(v4) = v18;
    }
  }

  return v4;
}

uint64_t COUNTSYL(uint64_t a1, int a2, _WORD *a3)
{
  LODWORD(v3) = (*a3 - 1);
  if (v3 >= a2)
  {
    v4 = *(a1 + 1504);
    v5 = *v4;
    v6 = 1;
    do
    {
      v3 = v3;
      if (*(v5 + 4 * v3) == 45)
      {
        if (v6 <= 9)
        {
          *(v4[3] + 4 * v3) = (v6 + 48);
        }

        ++v6;
      }

      LODWORD(v3) = (v3 - 1);
    }

    while (v3 >= a2);
  }

  return 1;
}

uint64_t COPY_L1_TO_L2(uint64_t a1, int a2, __int16 *a3)
{
  v3 = *a3;
  if (*(*(a1 + 1416) + 2) - 1 <= v3)
  {
    v4 = 0;
    *(a1 + 1428) = -100;
  }

  else
  {
    cstdlib_memmove((*(*(a1 + 1504) + 8) + 4 * a2), (**(a1 + 1504) + 4 * a2), 4 * (v3 - a2));
    return 1;
  }

  return v4;
}

uint64_t TAGTQ(uint64_t a1, int a2, __int16 *a3)
{
  v5 = *a3;
  v6 = (*a3 - 1);
  v7 = *(a1 + 1504);
  v8 = v7[1];
  if (v6 >= a2)
  {
    LOWORD(v22) = *a3 - 1;
    do
    {
      v23 = *(v8 + 4 * v22);
      if (v23 != 126 && v23 != 32)
      {
        break;
      }

      v22 = (v22 - 1);
    }

    while (v22 >= a2);
    if (*(v8 + 4 * v22) == 63)
    {
      v9 = *v7;
      while (v6 >= a2)
      {
        v24 = *(v9 + 4 * v6);
        if (v24 != 20 && v24 != 126 && v24 != 32)
        {
          break;
        }

        v6 = (v6 - 1);
      }

      goto LABEL_4;
    }

    return 1;
  }

  if (*(v8 + 4 * (*a3 - 1)) != 63)
  {
    return 1;
  }

  v9 = *v7;
LABEL_4:
  if (a2 <= v6)
  {
    v25 = 0;
    do
    {
      v26 = *(v9 + 4 * v6);
      if (v26 == 45 || v26 == 32)
      {
        ++v25;
      }

      if (v26 == 35)
      {
        break;
      }

      v6 = (v6 - 1);
      if (v6 < a2)
      {
        break;
      }
    }

    while (v25 < 3);
  }

  v10 = v6;
  do
  {
    v11 = *(v9 + 4 * ++v10);
    v12 = v11 > 0x23 || ((1 << v11) & 0x900100000) == 0;
  }

  while (!v12 || v11 == 126);
  if (v5 + 4 >= **(a1 + 1416) - 1 || (cstdlib_memmove((v9 + 4 * v10 + 16), (v9 + 4 * v10), 4 * (v5 - v10)), v13 = *a3, v13 + 4 >= *(*(a1 + 1416) + 2) - 1) || (v14 = v10 + 4, cstdlib_memmove((*(*(a1 + 1504) + 8) + 4 * v14), (*(*(a1 + 1504) + 8) + 4 * v10), 4 * (v13 - v10)), v15 = *a3, v15 + 4 >= *(*(a1 + 1416) + 4) - 1) || (cstdlib_memmove((*(*(a1 + 1504) + 16) + 4 * v14), (*(*(a1 + 1504) + 16) + 4 * v10), 4 * (v15 - v10)), v16 = *a3, v16 + 4 >= *(*(a1 + 1416) + 6) - 1))
  {
    result = 0;
    *(a1 + 1428) = -100;
  }

  else
  {
    cstdlib_memmove((*(*(a1 + 1504) + 24) + 4 * v14), (*(*(a1 + 1504) + 24) + 4 * v10), 4 * (v16 - v10));
    *a3 += 4;
    v17 = *(a1 + 1504);
    v18 = v17[1];
    *(*v17 + 4 * v10) = xmmword_26ECDA9C0;
    v19 = v17[2];
    v20 = v17[3];
    result = 1;
    do
    {
      *(v18 + 4 * v10) = 126;
      *(v19 + 4 * v10) = 126;
      *(v20 + 4 * v10++) = 126;
    }

    while (v14 > v10);
  }

  return result;
}

uint64_t fe_depes_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v10 = 2305826826;
  HIWORD(v41) = 0;
  cstdlib_strcpy(__dst, "");
  if (!a5)
  {
    return 2305826823;
  }

  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v43);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v43 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjOpen", v12, v13, v14, v41);
  inited = objc_GetObject(*(v43 + 48), "FE_DCTLKP", &v42);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v15 = heap_Calloc(*(v43 + 8), 1, 712);
  if (v15)
  {
    v20 = v15;
    *a5 = v15;
    *(a5 + 2) = 62334;
    v21 = v43;
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;
    *v20 = v21;
    *(v20 + 8) = a1;
    v22 = v42;
    *(v20 + 64) = *(v42 + 8);
    v23 = *(v22 + 16);
    *(v20 + 144) = 0u;
    *(v20 + 48) = v23;
    *(v20 + 170) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 72) = 0;
    *(v20 + 186) = 3172;
    *(v20 + 80) = 0;
    v24 = (v20 + 80);
    *(v20 + 192) = 0;
    if (((hlp_CreateLngBrokerString(v21, __dst, 0) & 0x80000000) != 0 || (hlp_OpenData(*v20, __dst, (v20 + 72), (v20 + 136)) & 0x80000000) != 0 || !*(v20 + 72)) && ((LngBrokerString = hlp_CreateLngBrokerString(*v20, __dst, 1), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v20, __dst, (v20 + 72), (v20 + 136)), (LngBrokerString & 0x80000000) != 0)) || ((cstdlib_strcpy((v20 + 200), __dst), (hlp_CreateVoiceBrokerString_0(*v20, __dst, 0, 0) & 0x80000000) != 0) || (hlp_OpenData(*v20, __dst, (v20 + 80), (v20 + 140)) & 0x80000000) != 0 || !*v24) && ((hlp_CreateVoiceBrokerString_0(*v20, __dst, 1, 1) & 0x80000000) != 0 || (hlp_OpenData(*v20, __dst, (v20 + 80), (v20 + 140)) & 0x80000000) != 0 || !*v24) && ((LngBrokerString = hlp_CreateVoiceBrokerString_0(*v20, __dst, 1, 0), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v20, __dst, (v20 + 80), (v20 + 140)), (LngBrokerString & 0x80000000) != 0)))
    {
      v10 = LngBrokerString;
      goto LABEL_34;
    }

    cstdlib_strcpy((v20 + 456), __dst);
    if (*(v20 + 72))
    {
      v30 = heap_Calloc(*(*v20 + 8), 1, 2136);
      *(v20 + 144) = v30;
      if (!v30)
      {
LABEL_31:
        v39 = 42000;
LABEL_33:
        log_OutPublic(*(*v20 + 32), "FE_DEPES", v39, 0, v26, v27, v28, v29, v41);
        goto LABEL_34;
      }

      *(v30 + 1560) = 0;
      *(v30 + 1496) = 0u;
      *(v30 + 1512) = 0u;
      *(v30 + 1528) = *(v43 + 8);
      v31 = v42;
      *(v30 + 1536) = *(v42 + 16);
      v32 = *(v20 + 144);
      *(v32 + 1552) = *(v31 + 8);
      *v32 = 0;
      *(v32 + 2120) = 0u;
      if (!*v24)
      {
LABEL_29:
        v10 = fe_depes_InitModule(*a5, a5[1], "fe_depes", &v41 + 3);
        if ((v10 & 0x80000000) == 0)
        {
LABEL_35:
          log_OutText(*(v43 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjOpen", v36, v37, v38, v41);
          return v10;
        }

LABEL_34:
        fe_depes_ObjClose(*a5, a5[1]);
        *a5 = 0;
        *(a5 + 2) = 0;
        goto LABEL_35;
      }
    }

    else if (!*v24)
    {
      v10 = 2305826819;
      v39 = 42002;
      goto LABEL_33;
    }

    v33 = heap_Calloc(*(*v20 + 8), 1, 2136);
    *(v20 + 152) = v33;
    if (v33)
    {
      *(v33 + 1560) = 0;
      *(v33 + 1496) = 0u;
      *(v33 + 1512) = 0u;
      *(v33 + 1528) = *(v43 + 8);
      v34 = v42;
      *(v33 + 1536) = *(v42 + 16);
      v35 = *(v20 + 152);
      *(v35 + 1552) = *(v34 + 8);
      *v35 = 0;
      *(v35 + 2120) = 0u;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  log_OutPublic(*(v43 + 32), "FE_DEPES", 42000, 0, v16, v17, v18, v19, v41);
  objc_ReleaseObject(*(v43 + 48), "FE_DCTLKP");
  return v10;
}

uint64_t hlp_CreateLngBrokerString(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = "";
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "depes/");
    cstdlib_strcat(__dst, __s2);
    if (!a3)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, v7);
    }

    return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t hlp_OpenData(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v15 = 0;
  if ((brk_DataOpenEx(*(a1 + 24), a2, 1, a3) & 0x80000000) != 0)
  {
    v11 = 0;
LABEL_10:
    *a3 = 0;
    return v11;
  }

  v11 = brk_DataMap(*(a1 + 24), *a3, 0, 72, &v15);
  if ((v11 & 0x80000000) != 0)
  {
    brk_DataClose(*(a1 + 24), *a3);
    goto LABEL_10;
  }

  if ((v15 & 3) != 0 || *v15 != 65279 || LH_strnicmp(v15 + 4, "SCANSOFT", 8uLL) || LH_strnicmp(v15 + 12, "depes", 5uLL))
  {
    v11 = 2305826841;
    log_OutPublic(*(a1 + 32), "FE_DEPES", 42006, 0, v7, v8, v9, v10, v14);
  }

  else
  {
    v13 = *(v15 + 20);
    brk_DataUnmap(*(a1 + 24), *a3, v15);
    *a4 = v13 - 72;
  }

  return v11;
}

uint64_t hlp_CreateVoiceBrokerString_0(uint64_t a1, _BYTE *a2, int a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  __s2 = 0;
  v10 = 0;
  v11 = "";
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__dst = 0u;
  v15 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "fevoice", &v12) & 0x80000000) == 0 || (result = paramc_ParamGetStr(*(a1 + 40), "voice", &v12), (result & 0x80000000) == 0))
    {
      cstdlib_strcpy(__dst, "depes/");
      cstdlib_strcat(__dst, __s2);
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, v12);
      if (a3)
      {
        if (a4)
        {
LABEL_6:
          if ((paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v10) & 0x80000000) != 0)
          {
            v9 = 0;
            v10 = 0;
          }

          else
          {
            v9 = v10;
          }

          return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, v12, v9, a2, 0x100uLL);
        }
      }

      else
      {
        result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v11);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        cstdlib_strcat(__dst, "/");
        cstdlib_strcat(__dst, v11);
        if (a4)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, v12, v9, a2, 0x100uLL);
    }
  }

  return result;
}