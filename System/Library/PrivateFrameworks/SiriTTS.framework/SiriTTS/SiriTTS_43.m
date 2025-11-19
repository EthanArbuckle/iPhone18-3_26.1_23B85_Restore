BOOL __CGN_IsPunct(char *__s)
{
  result = 0;
  if (*__s)
  {
    if (*__s != 35)
    {
      v3 = strlen(__s);
      return utf8_BelongsToSet(9u, __s, 0, v3) == 0;
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
    v10 = *(result + 208);
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(*(v10 + v9));
      v10 = *(v7 + 208);
      result = strncmp(a2, (v10 + v9), v11);
      if (!result)
      {
        break;
      }

      v9 += v11;
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

    return Model_Des(a1);
  }

  return result;
}

uint64_t TN_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (strcpy(v8, __s), v9 = strlen(__s), (v8 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 8)) != 0))
  {
    v10 = v8;
    *v8 = 0x5F326E745F6E6ELL;
    v11 = v8 + 7;
    v12 = strlen(__s);
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      do
      {
        utf8_ToLower(__s, v14, v11);
        v15 = *v11;
        if (v15 != 95)
        {
          v11 += utf8_determineUTF8CharLength(v15);
        }

        LODWORD(v14) = utf8_GetNextUtf8OffsetLimit(__s, v14, v13);
      }

      while (v14 < v13);
    }

    *v11 = 0;
    v16 = _Model_Load(a1, v10, a3);
    heap_Free(*(*(a1 + 48) + 8), v10);
    return v16;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
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
  kaldi::nnet1::Component::IsUpdatable(v9);
  return Allocator;
}

uint64_t TN_Predict(uint64_t a1, unsigned int a2, char *__s, unsigned int a4, unsigned int a5, void *a6, int *a7)
{
  v34 = 0;
  if (*(a1 + 166) <= a2)
  {
    v14 = "u16Pattern";
    goto LABEL_25;
  }

  if (!__s)
  {
    v14 = "szSentence";
    goto LABEL_25;
  }

  if (a5 > strlen(__s))
  {
    v14 = "u16To";
LABEL_25:
    ErrorInternalMsg = kaldi::OffsetFileInputImpl::MyType(v14);
    goto LABEL_26;
  }

  if (a4 >= a5)
  {
    v14 = "u16From";
    goto LABEL_25;
  }

  v37 = 0;
  v35 = 0;
  v36 = 0;
  v15 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 168) * *(a1 + 160));
  v34 = v15;
  if (!v15)
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    goto LABEL_35;
  }

  v16 = v15;
  if ((nn_tn_getCharContextString(*(a1 + 48), "NN_TN", __s, a4, a5, &v37, &v36 + 1, *(a1 + 162), 2, "*", *(a1 + 168), &v36, &v35 + 1, &v35) & 0x80000000) != 0)
  {
    v30 = "nn_tn_getCharContextString";
    goto LABEL_34;
  }

  bzero(v16, 4 * *(a1 + 168) * *(a1 + 160));
  if (!v36)
  {
LABEL_23:
    v26 = 0;
    goto LABEL_36;
  }

  v21 = 0;
  while (1)
  {
    v22 = *(v37 + 8 * v21);
    if (*v22 == 42 && !v22[1])
    {
      if (*(a1 + 160))
      {
        memset_pattern16(v16, &unk_1C37BD390, 4 * *(a1 + 160));
      }

      goto LABEL_22;
    }

    v23 = *(a1 + 152);
    v24 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144));
    if ((v24 & 0x1FFF) == 0x14)
    {
      v24 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 152));
      if ((v24 & 0x1FFF) == 0x14)
      {
        break;
      }
    }

    if (v24 < 0)
    {
      v30 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_34;
    }

    memcpy(v16, *(a1 + 152), 4 * *(a1 + 164));
    v25 = *(a1 + 164);
    *&v16[4 * v25 + 4 * a2] = 1065353216;
    if (v21 >= HIWORD(v35) && v21 < v35)
    {
      *&v16[4 * *(a1 + 166) + 4 * v25] = 1065353216;
    }

LABEL_22:
    v16 += 4 * *(a1 + 160);
    if (++v21 >= v36)
    {
      goto LABEL_23;
    }
  }

  v30 = "mean vector";
LABEL_34:
  IsUpdatable = err_GenerateErrorInternalMsg(v30);
LABEL_35:
  v26 = IsUpdatable;
LABEL_36:
  v31 = v37;
  if (v37)
  {
    if (HIWORD(v36))
    {
      v32 = 0;
      do
      {
        heap_Free(*(*(a1 + 48) + 8), *(v37 + 8 * v32++));
      }

      while (v32 < HIWORD(v36));
      v31 = v37;
    }

    heap_Free(*(*(a1 + 48) + 8), v31);
  }

  if (!v26)
  {
    if ((fi_predict(*(a1 + 104), &v34, *(a1 + 168), a6, v17, v18, v19, v20) & 0x80000000) != 0)
    {
      v33 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a7) & 0x80000000) == 0)
      {
        v26 = 0;
        goto LABEL_27;
      }

      v33 = "fi_shape_get_size";
    }

    ErrorInternalMsg = err_GenerateErrorInternalMsg(v33);
LABEL_26:
    v26 = ErrorInternalMsg;
  }

LABEL_27:
  if (v34)
  {
    heap_Free(*(*(a1 + 48) + 8), v34);
  }

  return v26;
}

uint64_t _TN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v10 = "nn_word_lkp_GetInterface";
LABEL_11:

    return err_GenerateErrorInternalMsg(v10);
  }

  v2 = *(*(a1 + 128) + 16);
  NullHandle = safeh_GetNullHandle();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if ((v2(NullHandle) & 0x80000000) != 0)
  {
    v10 = "__pIWordLkp->pfObjOpen";
    goto LABEL_11;
  }

  v12 = 0;
  if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v12) & 0x80000000) != 0)
  {
    v11 = "__pIWordLkp->pfGetVectorLength";
  }

  else
  {
    v6 = *(a1 + 164);
    if (v12 == v6)
    {
      v7 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v6);
      *(a1 + 152) = v7;
      if (!v7)
      {
        return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
      }

      if (*(a1 + 112) == *(a1 + 168))
      {
        v8 = *(a1 + 164) + *(a1 + 166) + 1;
        *(a1 + 160) = v8;
        if (*(a1 + 116) == v8)
        {
          return 0;
        }

        v11 = "inshape dimension 2";
      }

      else
      {
        v11 = "inshape dimension 1";
      }
    }

    else
    {
      v11 = "char embedding dimension";
    }
  }

  return err_GenerateErrorInternalMsg(v11);
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
  CfgParamValueInteger = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v9);
  if (CfgParamValueInteger)
  {
    goto LABEL_9;
  }

  CfgParamValueInteger = __TN_FullParamName(a1, "charContextWindow", &v8);
  if (CfgParamValueInteger)
  {
    goto LABEL_9;
  }

  CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 40, &v7);
  if (CfgParamValueInteger)
  {
    goto LABEL_9;
  }

  *(a1 + 162) = v7;
  CfgParamValueInteger = __TN_FullParamName(a1, "charEmbeddingDimension", &v8);
  if (CfgParamValueInteger || (CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 0, &v7), CfgParamValueInteger) || (*(a1 + 164) = v7, CfgParamValueInteger = __TN_FullParamName(a1, "numPatterns", &v8), CfgParamValueInteger) || (CfgParamValueInteger = Params_GetCfgParamValueInteger(v9, v8, 1, &v7), CfgParamValueInteger) || (*(a1 + 166) = v7, CfgParamValueInteger = __TN_FullParamName(a1, "max_x_len", &v8), CfgParamValueInteger))
  {
LABEL_9:
    v5 = CfgParamValueInteger;
  }

  else
  {
    v5 = Params_GetCfgParamValueInteger(v9, v8, 0, &v7);
    if (!v5)
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

  return v5;
}

uint64_t __TN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = strlen(__s);
  v9 = strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    *v10 = 0x5F326E745F6E6ELL;
    v12 = strcat(v10, *(a1 + 120));
    *&v11[strlen(v12)] = 95;
    strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
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

    return Model_Des(a1);
  }

  return result;
}

uint64_t CLM_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (strcpy(v8, __s), v9 = strlen(__s), (v8 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 14)) != 0))
  {
    v10 = v8;
    strcpy(v8, "clmnn:nn_clm_");
    strcat(v8, __s);
    v11 = _Model_Load(a1, v10, a3);
    heap_Free(*(*(a1 + 48) + 8), v10);
    return v11;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
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
  kaldi::nnet1::Component::IsUpdatable(v9);
  return Allocator;
}

uint64_t CLM_Predict(uint64_t a1, _BYTE **a2, _BYTE **a3, _BYTE **a4, unsigned int a5, uint64_t a6, uint64_t a7)
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
      memset_pattern16(v14, &unk_1C37BD390, 4 * v18);
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

      IsUpdatable = v21;
      goto LABEL_39;
    }

LABEL_12:
    v24 = v17 == 0;
    a7 = v39;
    if (!v24)
    {
      memset_pattern16(v20, &unk_1C37BD390, 4 * v38);
    }
  }

  else
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    if (IsUpdatable)
    {
      return IsUpdatable;
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
        memcpy(v30, v28, v29);
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
              IsUpdatable = 0;
            }

            else
            {
              v26 = 0;
              IsUpdatable = 0;
              v27 = 0.0;
            }

            goto LABEL_31;
          }

          v36 = "fi_shape_get_size";
        }

LABEL_30:
        IsUpdatable = err_GenerateErrorInternalMsg(v36);
LABEL_31:
        if (v43)
        {
          heap_Free(*(*(a1 + 48) + 8), v43);
        }

        goto LABEL_33;
      }

      IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
LABEL_33:
      if (IsUpdatable)
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
  IsUpdatable = 0;
LABEL_39:
  if (v40)
  {
    heap_Free(*(*(a1 + 48) + 8), v40);
  }

  return IsUpdatable;
}

uint64_t _CLM_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v25 = "nn_word_lkp_GetInterface";
LABEL_23:

    return err_GenerateErrorInternalMsg(v25);
  }

  v2 = strlen(*(a1 + 120));
  v3 = heap_Alloc(*(*(a1 + 48) + 8), v2 + 16);
  *(a1 + 184) = v3;
  if (v3)
  {
    strcpy(v3, "clmorthforeign_");
    strcat(*(a1 + 184), *(a1 + 120));
    v4 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    v6 = *(a1 + 184);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if ((v4(NullHandle) & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v9 = strlen(*(a1 + 120));
    v3 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 16);
    *(a1 + 192) = v3;
    if (!v3)
    {
      goto LABEL_19;
    }

    strcpy(v3, "clmphonforeign_");
    strcat(*(a1 + 192), *(a1 + 120));
    v10 = *(*(a1 + 128) + 16);
    v11 = safeh_GetNullHandle();
    v12 = *(a1 + 192);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    if ((v10(v11) & 0x80000000) != 0)
    {
LABEL_22:
      v25 = "__pIWordLkp->pfObjOpen";
      goto LABEL_23;
    }

    v15 = strlen(*(a1 + 120));
    v3 = heap_Alloc(*(*(a1 + 48) + 8), v15 + 13);
    *(a1 + 200) = v3;
    if (v3)
    {
      strcpy(v3, "clmphonmain_");
      strcat(*(a1 + 200), *(a1 + 120));
      v16 = *(*(a1 + 128) + 16);
      v17 = safeh_GetNullHandle();
      v18 = *(a1 + 200);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      if ((v16(v17) & 0x80000000) == 0)
      {
        v27 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v27) & 0x80000000) == 0)
        {
          if (v27 != *(a1 + 220))
          {
            v26 = "orth embedding dimension";
            return err_GenerateErrorInternalMsg(v26);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v27) & 0x80000000) == 0)
          {
            if (v27 != *(a1 + 220))
            {
              v26 = "phon embedding dimension";
              return err_GenerateErrorInternalMsg(v26);
            }

            if (((*(*(a1 + 128) + 40))(*(a1 + 168), *(a1 + 176), &v27) & 0x80000000) == 0)
            {
              v21 = *(a1 + 220);
              if (v27 == v21)
              {
                v22 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v21);
                *(a1 + 208) = v22;
                if (!v22)
                {
                  return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
                }

                v23 = 6 * *(a1 + 218) + 3;
                *(a1 + 216) = v23;
                if (*(a1 + 112) == v23)
                {
                  if (*(a1 + 116) == *(a1 + 220))
                  {
                    return 0;
                  }

                  v26 = "inshape dimension 2";
                }

                else
                {
                  v26 = "inshape dimension 1";
                }
              }

              else
              {
                v26 = "main embedding dimension";
              }

              return err_GenerateErrorInternalMsg(v26);
            }
          }
        }

        v26 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v26);
      }

      goto LABEL_22;
    }
  }

LABEL_19:

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(v3);
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
  v8 = strlen(__s);
  v9 = strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    *v10 = 0x5F6D6C635F6E6ELL;
    v12 = strcat(v10, *(a1 + 120));
    *&v11[strlen(v12)] = 95;
    strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
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

uint64_t __CLM_FeaturesLookups(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *__b)
{
  if (*a4 == 35 && !a4[1])
  {
    if (*(a1 + 220))
    {
      memset_pattern16(__b, &unk_1C37BD3F0, 4 * *(a1 + 220));
    }

    return 0;
  }

  v9 = (*(*(a1 + 128) + 56))(a2, a3, a4, *(a1 + 208));
  if ((v9 & 0x1FFF) != 0x14 || (v9 = (*(*(a1 + 128) + 56))(a2, a3, "$MEANW2V$", *(a1 + 208)), (v9 & 0x1FFF) != 0x14))
  {
    if (v9 < 0)
    {
      v10 = "__pIWordLkp->pfWord2fVector";
      goto LABEL_9;
    }

    memcpy(__b, *(a1 + 208), 4 * *(a1 + 220));
    return 0;
  }

  v10 = "mean vector";
LABEL_9:

  return err_GenerateErrorInternalMsg(v10);
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
        kaldi::nnet1::Component::IsUpdatable((a1 + 16));
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

  return luavmldoutil_initialize_lua_vm(v3, v4, (a1 + 2), "runG2P", hlp_lua_log_callback, a1 + 7, 0);
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
        kaldi::nnet1::Component::IsUpdatable((a1 + 16));
        heap_Free(*(v9 + 8), a1);
      }
    }
  }

  return inited;
}

uint64_t fe_clm_ObjReopen(uint64_t *a1, int a2)
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
    goto LABEL_16;
  }

  Object = objc_GetObject(v18[6], "CLMOBJECT", &v17);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v3 = (*(v17[1] + 96))(v17[2], v17[3], a1 + 8);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_10:
    log_OutText(v18[4], "FE_CLM", 5, 0, "CLM Lua script for main language [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", v6, v7, v8, v19);
    goto LABEL_17;
  }

  v9 = *(a1 + 16);
  switch(v9)
  {
    case 2:
      v10 = v19;
      v11 = v18[4];
      v12 = "CLM to main language [%s]  will be done in  fe/fe_clm component (after fe_global).";
      goto LABEL_14;
    case 1:
      v10 = v19;
      v11 = v18[4];
      v12 = "CLM to main language [%s]  will be done in  fe/fe_clm component (before fe_global).";
LABEL_14:
      log_OutText(v11, "FE_CLM", 5, 0, v12, v6, v7, v8, v10);
      break;
    case 0:
      goto LABEL_10;
  }

  Object = luavmldoutil_initialize_lua_vm(*a1, a1[1], (a1 + 2), "runCLM", hlp_lua_log_callback_0, a1 + 7, "clm");
  if ((Object & 0x80000000) == 0)
  {
LABEL_16:
    v3 = Object;
    goto LABEL_17;
  }

  log_OutText(v18[4], "FE_CLM", 5, 0, "CLM Lua function [%s] is not available, no CLM to main language in fe/fe_clm component (CLM done in upstream components).", v13, v14, v15, "runCLM");
  v3 = 0;
LABEL_17:
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

uint64_t fe_clm_CheckParamChange(uint64_t a1, char *__s1, _BYTE *a3, _DWORD *a4)
{
  v20 = 0;
  if (a1 && (v7 = strcmp(__s1, "shortfragmentforceclm"), a3) && !v7 && *a3)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v20);
    if ((result & 0x80000000) == 0)
    {
      if (LH_strnicmp(a3, "phrase:", 7uLL))
      {
        v12 = a3 + 1;
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
        v12 = a3 + 7;
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

uint64_t com_depes_AddToLayerGen(uint64_t *a1, unsigned int a2, char *__s, int a4, int a5)
{
  v6 = __s;
  v9 = a4 & ~(a4 >> 31);
  v10 = strlen(__s);
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
      v23 = *v22++;
      if (v23 != 126 || a5 == 0)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      v20 += v25;
      --v21;
    }

    while (v21);
  }

  v26 = a1 + 12;
  result = com_depes_PrepareLayersForLen(a1, (*(a1 + a2 + 48) + v20), v13, v14, v15, v16, v17, v18);
  if ((result & 0x80000000) == 0)
  {
    v28 = (a1[a2 + 2] + *(v26 + a2));
    for (i = 0; v12; --v12)
    {
      v30 = *v6;
      if (a5 && v30 == 126)
      {
        *v28++ = -24126;
        v31 = 2;
      }

      else
      {
        *v28 = v30;
        v28 = (v28 + 1);
        v31 = 1;
      }

      i += v31;
      ++v6;
    }

    *v28 = 0;
    *(v26 + a2) += i;
    *(a1 + a2 + 56) += v19;
  }

  return result;
}

uint64_t com_depes_AddToLayer(uint64_t *a1, unsigned int a2, char *__s)
{
  v6 = strlen(__s);

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
  v16 = *MEMORY[0x1E69E9840];
  if (!a2 || (bzero(v15, 4 * a2), v10 <= a3))
  {
    do
    {
      v15[v10] = 1;
      LOWORD(v10) = v10 + 1;
    }

    while (a3 >= v10);
  }

  v12 = *(a1 + 10);
  if (v12 > v10)
  {
    bzero(&v15[v10], 4 * (v12 + ~v10) + 4);
  }

  result = com_depes_FillToMaxLayerSet(a1, v15, a4, a4, a5, a6, a7, a8);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t com_depes_InsertBeforeEnd(uint64_t *a1, unsigned int a2, char *__s, int a4)
{
  v5 = __s;
  v8 = a1 + 12;
  v9 = *(a1 + a2 + 48);
  v10 = strlen(__s);
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
    memmove(&v21[v10], v21, v20);
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
    result = strlen(__s);
    v14 = result;
  }

  if (a2 < a3 && v14 <= a4)
  {
    v15 = a2;
    do
    {
      v16 = *(v13 + 4 + 4 * v15++);
      Utf32SymToUtf8Sym(v16, __s, 5u);
      result = strlen(__s);
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
    result = strlen(__s);
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
      result = strlen(__s);
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

  v142 = v4;
  v143 = v5;
  v7 = a4;
  memset(v137, 0, 512);
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
      memmove((*(v16 + 8 * v12) + 4 * a3), (*(v16 + 8 * v12) + 4 * v14), 4 * v15);
      v16 = *(a1 + 1504);
      v17 = *(v16 + 8 * v12);
      *(v17 + 4 * v10 + 4) = 31;
      *(v17 + 4 * v14) = 31;
      ++v12;
    }

    while (v12 < *(a1 + 24));
    v7 = a4;
  }

  memmove((*(a1 + 1560) + v13), (*(a1 + 1560) + v14), v15);
  *(*(a1 + 1560) + v10 + 1) = 0;
  *(*(a1 + 1560) + v14) = 0;
  v21 = *v7 + 1;
  *v7 = v21;
  *&v137[34] = v21;
  v22 = **(a1 + 1504);
  *(a1 + 1448) = v22;
  *(a1 + 1440) = v22;
  *&v137[8] = v22;
  *&v137[16] = v22;
  *(a1 + 1410) = 0;
  v141 = 0;
  v139 = 0;
  *(a1 + 2096) = 0u;
  memset(&v137[36], 0, 512);
  if (a3 < v21)
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
          ++*&v137[2 * v24 + 36];
          v24 = v136[++v25];
        }

        while (v136[v25]);
      }

      ++v23;
    }

    while (v23 < *&v137[34]);
  }

  *&v137[98] = 2;
  v26 = a2 - 1;
  *&v137[30] = *(*(a1 + 64) + 2 * (a2 - 1)) - 1;
  if ((*&v137[30] & 0x8000) != 0)
  {
    return 0;
  }

  log_OutText(*(*(a1 + 2080) + 32), "FE_DEPES", 6, 0, "Start gram number %d", v18, v19, v20, a2);
  *(a1 + 2 * *(a1 + 1430) + 1568) = a3;
  v27 = *&v137[30];
  *(a1 + 2 * *(a1 + 1430) + 1824) = *&v137[30];
  if (v27 < *(*(a1 + 72) + 2 * v26))
  {
    v28 = (a1 + 152);
    do
    {
      v29 = *(a1 + 120);
      *v137 = *(*(a1 + 112) + 4 * v27);
      GetContextLenInNrChars(*&v137[8], a3, *&v137[34], *(v29 + v27), *(*(a1 + 128) + v27), &v137[24], &v137[26]);
      v34 = *&v137[30] + 1;
      ++*&v137[30];
      v35 = *(a1 + 176);
      v36 = *v137;
      v37 = *(v35 + (*v137 - 1));
      if (v37 > 0x64)
      {
        LOWORD(v37) = v37 - 100;
      }

      *(a1 + 1408) = v37;
      switch(v37)
      {
        case 1:
          v38 = v34 - 1;
          if (*&v137[2 * *(*(a1 + 160) + v38) + 36] && *&v137[2 * *(*(a1 + 168) + v38) + 36])
          {
            v140 = *(v35 + v36);
            for (i = *&v137[24] + a3; ; i = v44 + 1)
            {
              *&v137[32] = i;
              if (*&v137[34] - *&v137[26] < i || *(a1 + 1428))
              {
                break;
              }

              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * i - 4), v136, 5u);
              if (v136[0] == v140)
              {
                v138 = 0;
                *(a1 + 1456) = *(a1 + 176) + (*v137 + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, *&v137[30], (*&v137[32] + 1), v137, v40, v41, v42, v43);
                v44 = v138 + *&v137[32];
              }

              else
              {
                v44 = *&v137[32];
              }
            }
          }

          goto LABEL_215;
        case 2:
          v92 = v34 - 1;
          if (*&v137[2 * *(*(a1 + 160) + v92) + 36] && *&v137[2 * *(*(a1 + 168) + v92) + 36])
          {
            v93 = *&v137[34] - *&v137[26] + 1;
            *&v137[32] = v93;
            v140 = *(v35 + v36);
            while (*&v137[24] + a3 <= v93 && !*(a1 + 1428))
            {
              Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v93 - 4), v136, 5u);
              if (v136[0] == v140)
              {
                *(a1 + 1456) = *(a1 + 176) + (*v137 + 1);
                *(a1 + 1470) = 1;
                EXEC_RULE(a1, *&v137[30], (*&v137[32] + 1), v137, v94, v95, v96, v97);
              }

              v93 = --*&v137[32];
            }
          }

          goto LABEL_215;
        case 3:
          v74 = v34 - 1;
          if (*&v137[2 * *(*(a1 + 160) + v74) + 36])
          {
            if (*&v137[2 * *(*(a1 + 168) + v74) + 36])
            {
              v75 = *&v137[24] + a3;
              *&v137[32] = *&v137[24] + a3;
              v140 = *(v35 + v36);
              *(a1 + 1384) = 0;
              if (*&v137[34] - *&v137[26] >= v75)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    goto LABEL_118;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v75 - 4), v136, 5u);
                  if (v136[0] == v140)
                  {
                    *(a1 + 1456) = *(a1 + 176) + (*v137 + 1);
                    *(a1 + 1470) = 1;
                    EXEC_RULE(a1, *&v137[30], (*&v137[32] + 1), v137, v76, v77, v78, v79);
                    v75 = ++*&v137[32];
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v75 = ++*&v137[32];
                  }
                }

                while (*&v137[34] - *&v137[26] >= v75);
                goto LABEL_118;
              }
            }
          }

          goto LABEL_215;
        case 4:
          v83 = v34 - 1;
          if (*&v137[2 * *(*(a1 + 160) + v83) + 36])
          {
            if (*&v137[2 * *(*(a1 + 168) + v83) + 36])
            {
              v84 = *&v137[34] - *&v137[26] + 1;
              *&v137[32] = v84;
              v140 = *(v35 + v36);
              *(a1 + 1384) = 0;
              if (*&v137[24] + a3 <= v84)
              {
                do
                {
                  if (*(a1 + 1428))
                  {
                    break;
                  }

                  Utf32SymToUtf8Sym(*(*(a1 + 1440) + 4 * v84 - 4), v136, 5u);
                  if (v136[0] == v140)
                  {
                    *(a1 + 1470) = 1;
                    *(a1 + 1456) = *(a1 + 176) + (*v137 + 1);
                    EXEC_RULE(a1, *&v137[30], (*&v137[32] + 1), v137, v85, v86, v87, v88);
                    v84 = --*&v137[32];
                    if (*(a1 + 1384) == 1)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v84 = --*&v137[32];
                  }
                }

                while (*&v137[24] + a3 <= v84);
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
          if (*&v137[2 * *(*(a1 + 160) + v58) + 36] && *&v137[2 * *(*(a1 + 168) + v58) + 36])
          {
            for (j = *&v137[24] + a3; ; j = v138 + *&v137[32] + 1)
            {
              *&v137[32] = j;
              if (*&v137[34] - *&v137[26] < j || *(a1 + 1428))
              {
                break;
              }

              v138 = 0;
              *(a1 + 1456) = *(a1 + 176) + *v137;
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, *&v137[30], j, v137, v30, v31, v32, v33);
            }
          }

          goto LABEL_215;
        case 6:
          v98 = v34 - 1;
          if (*&v137[2 * *(*(a1 + 160) + v98) + 36] && *&v137[2 * *(*(a1 + 168) + v98) + 36])
          {
            for (k = *&v137[34] - *&v137[26]; ; k = *&v137[32] - 1)
            {
              *&v137[32] = k;
              if (*&v137[24] + a3 > k || *(a1 + 1428))
              {
                break;
              }

              *(a1 + 1456) = *(a1 + 176) + *v137;
              *(a1 + 1470) = 0;
              EXEC_RULE(a1, *&v137[30], k, v137, v30, v31, v32, v33);
            }
          }

          goto LABEL_215;
        case 7:
          v100 = v34 - 1;
          if (*&v137[2 * *(*(a1 + 160) + v100) + 36])
          {
            if (*&v137[2 * *(*(a1 + 168) + v100) + 36])
            {
              v101 = *&v137[24] + a3;
              *&v137[32] = *&v137[24] + a3;
              *(a1 + 1384) = 0;
              if (*&v137[34] - *&v137[26] >= v101)
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

                  *(a1 + 1456) = *(a1 + 176) + *v137;
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, *&v137[30], v101, v137, v30, v31, v32, v33);
                  v101 = *&v137[32] + 1;
                  *&v137[32] = v101;
                  if (*&v137[34] - *&v137[26] < v101)
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
          if (!*&v137[2 * *(*(a1 + 160) + v89) + 36])
          {
            goto LABEL_215;
          }

          if (!*&v137[2 * *(*(a1 + 168) + v89) + 36])
          {
            goto LABEL_215;
          }

          v90 = *&v137[34] - *&v137[26];
          *&v137[32] = *&v137[34] - *&v137[26];
          *(a1 + 1384) = 0;
          if (*&v137[24] + a3 > v90)
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

            *(a1 + 1456) = *(a1 + 176) + *v137;
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, *&v137[30], v90, v137, v30, v31, v32, v33);
            v90 = *&v137[32] - 1;
            *&v137[32] = v90;
            if (*&v137[24] + a3 > v90)
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
          LODWORD(v139) = 1;
          v108 = *&v137[24] + a3;
          *&v137[32] = *&v137[24] + a3;
          v109 = *&v137[26];
          if (*&v137[34] - *&v137[26] < (*&v137[24] + a3))
          {
            goto LABEL_213;
          }

          v110 = *&v137[34];
          while (1)
          {
            LOWORD(v111) = *&v137[30];
            if (*(a1 + 1428))
            {
              break;
            }

            v138 = -2;
            v112 = *&v137[30] + *(*v28 + *&v137[30] - 1);
            *&v137[28] = v112;
            if (*&v137[30] > v112)
            {
              goto LABEL_164;
            }

            v113 = v112;
            do
            {
              v114 = v111 - 1;
              if (*&v137[2 * *(*(a1 + 160) + v114) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v114);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, v111, *&v137[32], v137, v30, v31, v32, v33);
                v113 = *&v137[28];
              }

              v111 = (v111 + 1);
            }

            while (v111 <= v113);
            v108 = *&v137[32];
            v110 = *&v137[34];
            v109 = *&v137[26];
            if (v138 == 65534)
            {
LABEL_164:
              v115 = 1;
            }

            else
            {
              v115 = v138 + 1;
            }

            v108 += v115;
            *&v137[32] = v108;
            if (v110 - v109 < v108)
            {
              LOWORD(v34) = *&v137[30];
              goto LABEL_213;
            }
          }

          LOWORD(v34) = *&v137[30];
          goto LABEL_213;
        case 10:
          v68 = *&v137[34] - *&v137[26];
          *&v137[32] = *&v137[34] - *&v137[26];
          if (*&v137[24] + a3 > (*&v137[34] - *&v137[26]))
          {
            goto LABEL_211;
          }

          v69 = *&v137[24];
          while (1)
          {
            LOWORD(v70) = *&v137[30];
            if (*(a1 + 1428))
            {
              break;
            }

            v71 = *&v137[30] + *(*v28 + *&v137[30] - 1);
            *&v137[28] = v71;
            if (*&v137[30] <= v71)
            {
              v72 = v71;
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v73 = v70 - 1;
                if (*&v137[2 * *(*(a1 + 160) + v73) + 36])
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v73);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v70, *&v137[32], v137, v30, v31, v32, v33);
                  v72 = *&v137[28];
                }

                v70 = (v70 + 1);
              }

              while (v70 <= v72);
              v68 = *&v137[32];
              v69 = *&v137[24];
            }

            *&v137[32] = --v68;
            if (a3 + v69 > v68)
            {
              LOWORD(v34) = *&v137[30];
              goto LABEL_211;
            }
          }

          LOWORD(v34) = *&v137[30];
LABEL_211:
          v124 = v34 + *(*v28 + v34 - 1);
          goto LABEL_197;
        case 11:
          v103 = *&v137[24] + a3;
          *&v137[32] = *&v137[24] + a3;
          *(a1 + 1384) = 0;
          v104 = v34 + *(*(a1 + 152) + v34 - 1);
          *&v137[28] = v104;
          v105 = *&v137[34];
          v106 = *&v137[26];
          if (*&v137[34] - *&v137[26] < v103)
          {
            goto LABEL_153;
          }

          while (!*(a1 + 1384))
          {
            if (*(a1 + 1428))
            {
              goto LABEL_153;
            }

            LOWORD(v125) = *&v137[30];
            if (*&v137[30] <= v104)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v126 = v125 - 1;
                if (*&v137[2 * *(*(a1 + 160) + v126) + 36])
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v126);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v125, *&v137[32], v137, v30, v31, v32, v33);
                  v104 = *&v137[28];
                }

                v125 = (v125 + 1);
              }

              while (v125 <= v104);
              v103 = *&v137[32];
              v105 = *&v137[34];
              v106 = *&v137[26];
            }

            *&v137[32] = ++v103;
            if (v105 - v106 < v103)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_151;
        case 12:
          v53 = *&v137[34] - *&v137[26];
          *&v137[32] = *&v137[34] - *&v137[26];
          *(a1 + 1384) = 0;
          v54 = v34 + *(*(a1 + 152) + v34 - 1);
          *&v137[28] = v54;
          v55 = *&v137[24];
          if (*&v137[24] + a3 > v53)
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

            LOWORD(v56) = *&v137[30];
            if (*&v137[30] <= v54)
            {
              do
              {
                if (*(a1 + 1428))
                {
                  break;
                }

                v57 = v56 - 1;
                if (*&v137[2 * *(*(a1 + 160) + v57) + 36])
                {
                  *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v57);
                  *(a1 + 1470) = 0;
                  EXEC_RULE(a1, v56, *&v137[32], v137, v30, v31, v32, v33);
                  v54 = *&v137[28];
                }

                v56 = (v56 + 1);
              }

              while (v56 <= v54);
              v53 = *&v137[32];
              v55 = *&v137[24];
            }

            *&v137[32] = --v53;
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
          LOWORD(v48) = *&v137[30];
          v107 = *v102 + *&v137[30];
          goto LABEL_196;
        case 13:
          LODWORD(v139) = 1;
          v60 = *&v137[24] + a3;
          *&v137[32] = *&v137[24] + a3;
          do
          {
            if (*&v137[34] - *&v137[26] < v60 || *(a1 + 1428))
            {
              break;
            }

            v61 = 0;
            v138 = -2;
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
              if (*&v137[2 * *(*(a1 + 160) + v65) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v65);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v34 + v62), *&v137[32], v137, v30, v31, v32, v33);
                LOWORD(v34) = *&v137[30];
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
            v67 = v63 ? v138 + 1 : 1;
            v60 = v67 + *&v137[32];
            *&v137[32] = v60;
          }

          while (v34 <= v66);
          if (*(a1 + 44) > v34)
          {
LABEL_213:
            *&v137[30] = v34 + *(*v28 + v34 - 1);
          }

          LODWORD(v139) = 0;
          goto LABEL_215;
        case 14:
          *&v137[32] = *&v137[34] - *&v137[26];
          if (*&v137[24] + a3 > (*&v137[34] - *&v137[26]))
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
              if (*&v137[2 * *(*(a1 + 160) + v122) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v122);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v34 + v121), *&v137[32], v137, v30, v31, v32, v33);
                v48 = *&v137[30];
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
            --*&v137[32];
            v34 = v123;
          }

          while (*&v137[24] + a3 <= *&v137[32]);
LABEL_194:
          v82 = *v28;
          goto LABEL_195;
        case 15:
          v47 = *&v137[24] + a3;
          *&v137[32] = *&v137[24] + a3;
          *(a1 + 1384) = 0;
          if (*&v137[34] - *&v137[26] < v47)
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
              if (*&v137[2 * *(*(a1 + 160) + v51) + 36])
              {
                *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v51);
                *(a1 + 1470) = 0;
                EXEC_RULE(a1, (v34 + v50), *&v137[32], v137, v30, v31, v32, v33);
                v48 = *&v137[30];
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
            ++*&v137[32];
            v34 = v52;
            if (*&v137[34] - *&v137[26] < *&v137[32])
            {
              goto LABEL_180;
            }
          }

          goto LABEL_209;
        case 16:
          v80 = *&v137[34] - *&v137[26];
          *&v137[32] = *&v137[34] - *&v137[26];
          *(a1 + 1384) = 0;
          if (*&v137[24] + a3 > v80)
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
            *&v137[8] = *(v45 + 8 * *(v35 + v36) - 8);
            *(a1 + 1440) = *&v137[8];
            v46 = v36 + 1;
            *&v137[16] = *(v45 + 8 * *(v35 + v46) - 8);
            *(a1 + 1448) = *&v137[16];
            LOWORD(v45) = *(v35 + v46) - 1;
            *(a1 + 1410) = v45;
            v141 = v45;
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
          if (*&v137[2 * *(*(a1 + 160) + v118) + 36])
          {
            *(a1 + 1456) = *(a1 + 176) + *(*(a1 + 112) + 4 * v118);
            *(a1 + 1470) = 0;
            EXEC_RULE(a1, (v34 + v117), *&v137[32], v137, v30, v31, v32, v33);
            v48 = *&v137[30];
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
        --*&v137[32];
        v34 = v119;
      }

      while (*&v137[24] + a3 <= *&v137[32]);
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
      *&v137[30] = v124;
LABEL_215:
      LOWORD(v27) = *&v137[30];
    }

    while (*&v137[30] < *(*(a1 + 72) + 2 * v26));
  }

  v127 = *&v137[34];
  v128 = v7;
  *v7 = *&v137[34];
  if (*(a1 + 24) >= 1)
  {
    v129 = 0;
    do
    {
      v130 = (*(*(a1 + 1504) + 8 * v129) + 4 * a3);
      memmove(v130 - 4, v130, 4 * (v127 - a3 + 1));
      ++v129;
    }

    while (v129 < *(a1 + 24));
  }

  *(*(a1 + 1560) + a3) += *(*(a1 + 1560) + a3 - 1);
  *(*(a1 + 1560) + v127 - 1) += *(*(a1 + 1560) + v127);
  memmove((*(a1 + 1560) + a3 - 1), (*(a1 + 1560) + a3), (v127 - a3));
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

  return HIDWORD(v139);
}

uint64_t EXEC_RULE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v309 = a2;
  v9 = result;
  LOWORD(v10) = 0;
  v12 = *(a4 + 34);
  v11 = a4 + 34;
  v312 = v12;
  *(result + 1476) = 0;
  v13 = (result + 2096);
  v14 = (result + 1400);
  v310 = v11;
  __s = (result + 1484);
  i = *(result + 1456);
  while (2)
  {
    switch(*i)
    {
      case 0:
        if (!v8)
        {
          goto LABEL_459;
        }

        v192 = *(a4 + 32);
        *(v9 + 1474) = v8 - v192;
        *(v9 + 1468) = -1;
        *(v9 + 1466) = v192 - 1;
        result = CTXT(v9, a2, a3, v11, a5, a6, a7, a8);
        if (!result)
        {
          goto LABEL_459;
        }

        *(v9 + 1468) = 1;
        *(v9 + 1466) = v8;
        result = CTXT(v9, v193, v194, v195, v196, v197, v198, v199);
        if (!result)
        {
          goto LABEL_459;
        }

        v315 = 0;
        v203 = a4;
        v204 = *(a4 + 32);
        v205 = *(v9 + 1474);
        v206 = (v205 + v204);
        *(v9 + 1448) = *(a4 + 16);
        *(v9 + 1384) = 1;
        *(v9 + 1410) = *(a4 + 562);
        v207 = *(a4 + 34);
        v208 = v207;
        v209 = *(v9 + 1456);
        result = v209 + 1;
        *(v9 + 1456) = v209 + 1;
        v210 = *(v209 + 1);
        if (v210 == 22)
        {
          v213 = *(*(v9 + 136) + v309 - 1);
          v214 = (v205 - v213);
          if (v206 - v204 <= v213)
          {
            v214 = 0;
          }

          v313 = v214;
          result = v209 + 2;
          *(v9 + 1456) = v209 + 2;
        }

        else
        {
          if (v210 == 1)
          {
            *(v9 + 1456) = v209 + 2;
            v211 = *(v209 + 2);
            if (v211 == 1)
            {
              v212 = v205 - 1;
              goto LABEL_446;
            }

            if (v211 == 2)
            {
              v212 = v205 - 1;
              *(a4 + 32) = **(v9 + 184);
              *(a4 + 30) = *(v9 + 44);
LABEL_446:
              if (!*(v203 + 552) || *(v203 + 548) < v212)
              {
                *(v203 + 548) = v212;
              }

              goto LABEL_449;
            }

            v304 = v204;
            if (v204 < v206)
            {
              v256 = v204;
              do
              {
                Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v256), v316, 5u);
                v257 = v316[0];
                if (v316[0])
                {
                  v258 = 0;
                  do
                  {
                    --*(a4 + 36 + 2 * v257);
                    v257 = v316[++v258];
                  }

                  while (v316[v258]);
                }

                ++v256;
              }

              while (v256 != v206);
            }

            v259 = *(v9 + 24);
            v260 = v206;
            if (v259 <= 0)
            {
              v262 = v207 - v206 + 1;
              v263 = v310;
            }

            else
            {
              v261 = 0;
              v262 = v207 - v206 + 1;
              v263 = v310;
              do
              {
                v264 = *(v9 + 1416);
                v265 = *(v264 + 2 * v261) - v262;
                *(v264 + 2 * v261) = v265;
                v266 = *(*(v9 + 1504) + 8 * v261);
                memmove((v266 + 4 * v265), (v266 + 4 * v206), 4 * v262);
                ++v261;
                v259 = *(v9 + 24);
              }

              while (v261 < v259);
            }

            v267 = *(v9 + 1416);
            *(v267 + 2 * v259) -= v262;
            memmove((*(v9 + 1560) + *(v267 + 2 * *(v9 + 24))), (*(v9 + 1560) + v206), v262);
            bzero((*(v9 + 1560) + v206), v262);
            *v263 = v206;
            *(v9 + 1432) = 0;
            ++*(v9 + 1430);
            v268 = *(v9 + 1476);
            v269 = **(v9 + 1456);
            v270 = *(*(v9 + 56) + v269 - 1);
            if (v270 > 1)
            {
              if (v270 == 3)
              {
                result = DCT_LKP(v9, *(*(v9 + 1520) + 8 * (v269 - 1)), v304, v263);
                goto LABEL_422;
              }

              if (v270 == 2)
              {
                result = INFERENCE(v9);
                goto LABEL_422;
              }
            }

            else
            {
              if (!*(*(v9 + 56) + v269 - 1))
              {
                INFERENCE(v9);
                result = 1;
                goto LABEL_422;
              }

              if (v270 == 1)
              {
                INFERENCE(v9);
                result = 0;
LABEL_422:
                *(v9 + 1384) = result;
                *(v9 + 1476) = v268;
                --*(v9 + 1430);
                if (*(v9 + 1428) == 156)
                {
                  goto LABEL_449;
                }

                v274 = v310;
                v275 = *v310;
                if (*(v9 + 1432))
                {
                  v276 = v304;
                }

                else
                {
                  if (v206 >= v275)
                  {
                    v277 = *v310;
                    LOWORD(v278) = v206;
                    v274 = v310;
                    do
                    {
                      v279 = *(v9 + 1560);
                      if (*(v279 + v278))
                      {
                        *(v279 + v275 - 1) += *(v279 + v278);
                        v277 = *v310;
                      }

                      v278 = (v278 - 1);
                      v275 = v277;
                    }

                    while (v278 >= v277);
                  }

                  else
                  {
                    v274 = v310;
                  }

                  *(*(v9 + 1560) + v275) = 0;
                  LODWORD(v275) = *v274;
                  v203 = a4;
                  v276 = v304;
                  if (v206 < v275)
                  {
                    do
                    {
                      *(*(v9 + 1560) + v260++) = 0;
                      v275 = *v274;
                    }

                    while (v260 < v275);
                    v203 = a4;
                    v276 = v304;
                  }
                }

                if (v276 < v275)
                {
                  v280 = v275;
                  do
                  {
                    Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v276), v316, 5u);
                    v281 = v316[0];
                    if (v316[0])
                    {
                      v282 = 0;
                      do
                      {
                        ++*(v203 + 36 + 2 * v281);
                        v281 = v316[++v282];
                      }

                      while (v316[v282]);
                    }

                    ++v276;
                  }

                  while (v276 != v280);
                  LOWORD(v275) = *v274;
                }

                if (*(v9 + 1384))
                {
                  v212 = v275 + ~*(v203 + 32) + *(v9 + 1476);
                }

                else
                {
                  v212 = 0;
                }

                result = RESTORE_SUBSTITUTION(v9, v275);
                *v274 = result;
                goto LABEL_446;
              }
            }

            result = pfExt[*(*(v9 + 56) + v269 - 1)](v9, v304, v263);
            goto LABEL_422;
          }

          v313 = 0;
        }

        if (v204 < v206)
        {
          v215 = v204;
          v216 = v204;
          do
          {
            Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v215), v316, 5u);
            v217 = v316[0];
            if (v316[0])
            {
              v218 = 0;
              do
              {
                --*(a4 + 36 + 2 * v217);
                v217 = v316[++v218];
              }

              while (v316[v218]);
            }

            ++v215;
          }

          while (v215 != v206);
          result = *(v9 + 1456);
          v204 = v216;
        }

        v219 = v204;
        v220 = v204;
        v306 = v208;
        v221 = v208;
        v303 = v220;
        v222 = v220;
        v223 = __s;
        break;
      case 2:
        v31 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          v32 = v8;
          do
          {
            LODWORD(v8) = v32;
            v33 = v32;
            v34 = *(v31 + 4 * v32);
            v32 += *(v9 + 1470);
          }

          while (v34 == 126);
        }

        else
        {
          v33 = v8;
        }

        v90 = (v31 + 4 * v33);
        if (*v13 != v90)
        {
          result = Utf32SymToUtf8Sym(*v90, v14, 5u);
          v91 = (*(v9 + 1440) + 4 * v33);
          *(v9 + 1405) = *v91 & 0x3F;
          *(v9 + 2096) = v91;
        }

        v92 = *v14;
        if (*v14)
        {
          v93 = v92 == 31;
        }

        else
        {
          v93 = 1;
        }

        if (v93)
        {
          goto LABEL_459;
        }

        v94 = *(v9 + 1512);
        v95 = (*(v9 + 1456) + 1);
        *(v9 + 1456) = v95;
        a2 = *v95;
        v96 = (v94 + 5 * a2);
        if (*v96)
        {
          v97 = 0;
          v98 = 0;
          do
          {
            if (v92 != v96[v97])
            {
              goto LABEL_459;
            }

            v97 = ++v98;
            v92 = v14[v98];
          }

          while (v14[v98]);
        }

        else
        {
          result = VAR_APPEARENCE(v9, a2);
          if (!result)
          {
            goto LABEL_459;
          }

          *(v9 + 1480) = 1;
          result = SETUTF8CHAR(v96, v14);
          v95 = *(v9 + 1456);
        }

        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
LABEL_230:
        i = (v95 + 1);
        *(v9 + 1456) = v95 + 1;
        continue;
      case 3:
        v23 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v24 = v8;
            v25 = v8;
            v26 = *(v23 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v26 == 126);
          LODWORD(v8) = v24;
        }

        else
        {
          v25 = v8;
        }

        v82 = (v23 + 4 * v25);
        if (*v13 != v82)
        {
          result = Utf32SymToUtf8Sym(*v82, v14, 5u);
          v83 = (*(v9 + 1440) + 4 * v25);
          *(v9 + 1405) = *v83 & 0x3F;
          *(v9 + 2096) = v83;
        }

        if (*v14)
        {
          v84 = *v14 == 31;
        }

        else
        {
          v84 = 1;
        }

        if (v84)
        {
          goto LABEL_459;
        }

        v85 = *(v9 + 2120);
        goto LABEL_100;
      case 4:
        v55 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v56 = v8;
            v57 = v8;
            v58 = *(v55 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v58 == 126);
          LODWORD(v8) = v56;
        }

        else
        {
          v57 = v8;
        }

        v129 = (v55 + 4 * v57);
        if (*v13 != v129)
        {
          result = Utf32SymToUtf8Sym(*v129, v14, 5u);
          v130 = (*(v9 + 1440) + 4 * v57);
          *(v9 + 1405) = *v130 & 0x3F;
          *(v9 + 2096) = v130;
        }

        if (*v14)
        {
          v131 = *v14 == 31;
        }

        else
        {
          v131 = 1;
        }

        if (v131)
        {
          goto LABEL_459;
        }

        v89 = *(v9 + 2120);
        goto LABEL_156;
      case 5:
        v35 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v36 = v8;
            v37 = v8;
            v38 = *(v35 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v38 == 126);
          LODWORD(v8) = v36;
        }

        else
        {
          v37 = v8;
        }

        v99 = (v35 + 4 * v37);
        if (*v13 != v99)
        {
          result = Utf32SymToUtf8Sym(*v99, v14, 5u);
          v100 = (*(v9 + 1440) + 4 * v37);
          *(v9 + 1405) = *v100 & 0x3F;
          *(v9 + 2096) = v100;
        }

        if (*v14)
        {
          v101 = *v14 == 31;
        }

        else
        {
          v101 = 1;
        }

        if (v101)
        {
          goto LABEL_459;
        }

        v85 = *(v9 + 2128);
LABEL_100:
        v102 = *(v9 + 1456);
        *(v9 + 1456) = v102 + 1;
        result = strstr(*(*(v85 + 8 * (*(v102 + 1) - 1)) + 8 * *(v9 + 1405)), v14);
        if (!result)
        {
          goto LABEL_459;
        }

        goto LABEL_157;
      case 6:
        v27 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v28 = v8;
            v29 = v8;
            v30 = *(v27 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v30 == 126);
          LODWORD(v8) = v28;
        }

        else
        {
          v29 = v8;
        }

        v86 = (v27 + 4 * v29);
        if (*v13 != v86)
        {
          result = Utf32SymToUtf8Sym(*v86, v14, 5u);
          v87 = (*(v9 + 1440) + 4 * v29);
          *(v9 + 1405) = *v87 & 0x3F;
          *(v9 + 2096) = v87;
        }

        if (*v14)
        {
          v88 = *v14 == 31;
        }

        else
        {
          v88 = 1;
        }

        if (v88)
        {
          goto LABEL_459;
        }

        v89 = *(v9 + 2128);
LABEL_156:
        v102 = *(v9 + 1456);
        *(v9 + 1456) = v102 + 1;
        result = strstr(*(*(v89 + 8 * (*(v102 + 1) - 1)) + 8 * *(v9 + 1405)), v14);
        if (result)
        {
          goto LABEL_459;
        }

LABEL_157:
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        i = (v102 + 2);
        *(v9 + 1456) = v102 + 2;
        continue;
      case 7:
        v59 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v60 = v8;
            v61 = v8;
            v62 = *(v59 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v62 == 126);
          LODWORD(v8) = v60;
        }

        else
        {
          v61 = v8;
        }

        v132 = (v59 + 4 * v61);
        if (*v13 != v132)
        {
          result = Utf32SymToUtf8Sym(*v132, v14, 5u);
          v133 = (*(v9 + 1440) + 4 * v61);
          *(v9 + 1405) = *v133 & 0x3F;
          *(v9 + 2096) = v133;
        }

        if (*v14)
        {
          v134 = *v14 == 31;
        }

        else
        {
          v134 = 1;
        }

        if (v134)
        {
          goto LABEL_459;
        }

        v135 = *(v9 + 1456);
        *(v9 + 1456) = v135 + 1;
        v136 = *(v135 + 1);
        v137 = v136 - 1;
        result = strstr(*(*(*(v9 + 2128) + 8 * (v136 - 1)) + 8 * *(v9 + 1405)), v14);
        if (!result)
        {
          goto LABEL_459;
        }

        v138 = *(v9 + 88);
        result = strstr((v138 + (v137 << 8)), v14);
        if (!result)
        {
          goto LABEL_459;
        }

        v139 = v138 + (v136 << 8);
        if (v137)
        {
          v139 -= 512;
          v140 = (*(v9 + 96) + (v137 << 8) + result - (v138 + (v137 << 8)));
        }

        else
        {
          v140 = (*(v9 + 96) + (v137 << 8) + result - (v138 + (v137 << 8)));
        }

        result = SETUTF8CHAR(__s, (v139 + *v140));
LABEL_205:
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        v95 = *(v9 + 1456);
        goto LABEL_230;
      case 8:
        v67 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v68 = v8;
            v69 = v8;
            v70 = *(v67 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v70 == 126);
          LODWORD(v8) = v68;
        }

        else
        {
          v69 = v8;
        }

        v154 = (v67 + 4 * v69);
        if (*v13 != v154)
        {
          Utf32SymToUtf8Sym(*v154, v14, 5u);
          v155 = (*(v9 + 1440) + 4 * v69);
          *(v9 + 1405) = *v155 & 0x3F;
          *(v9 + 2096) = v155;
          i = *(v9 + 1456);
        }

        *(v9 + 1456) = i + 1;
        result = CHECK_OF_LIST(v9, 8u, v8, v11, a5, a6, a7, a8);
        if (result)
        {
          goto LABEL_205;
        }

        goto LABEL_459;
      case 11:
        *(v9 + 1472) = v8;
        v39 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v40 = v8;
            v41 = v8;
            v42 = *(v39 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v42 == 126);
          LOWORD(v8) = v40;
        }

        else
        {
          v41 = v8;
        }

        v103 = (v39 + 4 * v41);
        if (*v13 != v103)
        {
          Utf32SymToUtf8Sym(*v103, v14, 5u);
          v104 = (*(v9 + 1440) + 4 * v41);
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
        if (v105 && (*(v9 + 1456) = i + 3, CHECK_OF_LIST(v9, 0xBu, v8, v11, a5, a6, a7, a8)))
        {
          LOWORD(v10) = 0;
          do
          {
            v107 = *(v9 + 1456);
            *(v9 + 1472) = v8 + 1;
            v108 = TOKEN1(v9, (v8 + 1), v106, v11, a5, a6, a7, a8);
            v10 = (v10 + 1);
            if (v10 >= *(v9 + 1406))
            {
              break;
            }

            LOWORD(v8) = v108;
            *(v9 + 1456) = i + 3;
          }

          while (CHECK_OF_LIST(v9, 0xBu, v108, v11, a5, a6, a7, a8));
        }

        else
        {
          v10 = 0;
          v107 = 0;
        }

        result = LOG_WARNING_ON_MAX_NUMBER(v9, v10, 1, v11, a5, a6, a7, a8);
        if (v10 < i[1])
        {
          goto LABEL_459;
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
            v161 = *(i - 2);
            v162 = v161 > 0x15;
            v163 = (1 << v161) & 0x20067C;
            if (v162 || v163 == 0)
            {
              break;
            }

            v165 = *(i - 3);
            v162 = v165 > 0x15;
            v166 = (1 << v165) & 0x20C67C;
            if (!v162 && v166 != 0)
            {
              break;
            }
          }

          *(v9 + 1456) = i;
        }

        goto LABEL_300;
      case 12:
        v19 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v20 = v8;
            v21 = v8;
            v22 = *(v19 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v22 == 126);
          LODWORD(v8) = v20;
        }

        else
        {
          v21 = v8;
        }

        v75 = (v19 + 4 * v21);
        if (*v13 != v75)
        {
          result = Utf32SymToUtf8Sym(*v75, v14, 5u);
          v76 = (*(v9 + 1440) + 4 * v21);
          *(v9 + 1405) = *v76 & 0x3F;
          *(v9 + 2096) = v76;
        }

        v77 = *v14;
        if (*v14)
        {
          v78 = v77 == 31;
        }

        else
        {
          v78 = 1;
        }

        if (v78)
        {
          goto LABEL_459;
        }

        v79 = 0;
        v80 = 0;
        v81 = *(v9 + 1456) + 1;
        *(v9 + 1456) = v81;
        do
        {
          if (v77 != *(v81 + v79))
          {
            goto LABEL_459;
          }

          v79 = ++v80;
          v77 = v14[v80];
        }

        while (v14[v80]);
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        result = strlen(v14);
        i = (v81 + result);
        *(v9 + 1456) = v81 + result;
        continue;
      case 13:
        v51 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v52 = v8;
            v53 = v8;
            v54 = *(v51 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v54 == 126);
          LODWORD(v8) = v52;
        }

        else
        {
          v53 = v8;
        }

        v120 = (v51 + 4 * v53);
        if (*v13 != v120)
        {
          result = Utf32SymToUtf8Sym(*v120, v14, 5u);
          v121 = (*(v9 + 1440) + 4 * v53);
          *(v9 + 1405) = *v121 & 0x3F;
          *(v9 + 2096) = v121;
        }

        v122 = *v14;
        if (*v14)
        {
          v123 = v122 == 31;
        }

        else
        {
          v123 = 1;
        }

        if (v123)
        {
          goto LABEL_459;
        }

        v124 = 0;
        v125 = 0;
        v126 = *(v9 + 1456);
        *(v9 + 1456) = v126 + 1;
        while (v122 == *(v126 + 1 + v124))
        {
          v124 = ++v125;
          v122 = v14[v125];
          if (!v14[v125])
          {
            goto LABEL_459;
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
        v16 = *(v9 + 1440);
        *(v9 + 1368) = v16;
        v17 = v16 + 4 * v8;
        if (*(v9 + 2104) == v17)
        {
          v8 = *(v9 + 2112);
        }

        else
        {
          *(v9 + 2104) = v17;
          *(v9 + 2112) = v8;
        }

        v18 = *(*(v9 + 1504) + 8 * i[1] - 8);
        goto LABEL_52;
      case 15:
      case 17:
        v18 = *(v9 + 1368);
LABEL_52:
        *(v9 + 1440) = v18;
        *(v9 + 1470) = 0;
        i += 2;
        *(v9 + 1456) = i;
        continue;
      case 18:
        *(v9 + 1472) = v8;
        v63 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v64 = v8;
            v65 = v8;
            v66 = *(v63 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v66 == 126);
          LOWORD(v8) = v64;
        }

        else
        {
          v65 = v8;
        }

        v141 = (v63 + 4 * v65);
        if (*v13 != v141)
        {
          result = Utf32SymToUtf8Sym(*v141, v14, 5u);
          v142 = (*(v9 + 1440) + 4 * v65);
          *(v9 + 1405) = *v142 & 0x3F;
          *(v9 + 2096) = v142;
          i = *(v9 + 1456);
        }

        v143 = i[2];
        if (v143 == 220)
        {
          v143 = 5000;
        }

        *(v9 + 1406) = v143;
        *(v9 + 1392) = i + 4;
        v144 = i[3];
        if (v144 > 5)
        {
          if (i[3] > 0xCu)
          {
            if (v144 == 13)
            {
              LOWORD(v10) = 0;
              if (v143)
              {
                do
                {
                  v186 = *v14;
                  if (*v14)
                  {
                    v187 = v186 == 31;
                  }

                  else
                  {
                    v187 = 1;
                  }

                  if (v187)
                  {
                    break;
                  }

                  v188 = 0;
                  v189 = 0;
                  while (v186 == *(*(v9 + 1392) + v188))
                  {
                    v188 = ++v189;
                    v186 = v14[v189];
                    if (!v14[v189])
                    {
                      goto LABEL_295;
                    }
                  }

                  *(v9 + 1472) = v8 + 1;
                  LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, v11, a5, a6, a7, a8);
                  v10 = (v10 + 1);
                }

                while (v10 < *(v9 + 1406));
              }

LABEL_295:
              v147 = v10;
              v148 = v9;
              v149 = 6;
            }

            else
            {
              if (v144 != 21)
              {
                goto LABEL_297;
              }

              LOWORD(v10) = 0;
              if (v143)
              {
                do
                {
                  v169 = *v14;
                  if (*v14)
                  {
                    v170 = v169 == 31;
                  }

                  else
                  {
                    v170 = 1;
                  }

                  if (v170)
                  {
                    break;
                  }

                  v171 = (*(v9 + 1512) + 5 * **(v9 + 1392));
                  if (*v171)
                  {
                    v172 = 0;
                    v173 = 0;
                    while (v169 == v171[v172])
                    {
                      v172 = ++v173;
                      v169 = v14[v173];
                      if (!v14[v173])
                      {
                        goto LABEL_254;
                      }
                    }
                  }

                  *(v9 + 1472) = v8 + 1;
                  LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, v11, a5, a6, a7, a8);
                  v10 = (v10 + 1);
                }

                while (v10 < *(v9 + 1406));
              }

LABEL_254:
              v147 = v10;
              v148 = v9;
              v149 = 8;
            }
          }

          else if (v144 == 6)
          {
            LOWORD(v10) = 0;
            if (v143)
            {
              do
              {
                if (*v14)
                {
                  v182 = *v14 == 31;
                }

                else
                {
                  v182 = 1;
                }

                if (v182)
                {
                  break;
                }

                if (strstr(*(*(*(v9 + 2128) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v14))
                {
                  break;
                }

                *(v9 + 1472) = v8 + 1;
                LOWORD(v8) = TOKEN1(v9, (v8 + 1), v183, v11, a5, a6, a7, a8);
                v10 = (v10 + 1);
              }

              while (v10 < *(v9 + 1406));
            }

            v147 = v10;
            v148 = v9;
            v149 = 4;
          }

          else
          {
            if (v144 != 12)
            {
              goto LABEL_297;
            }

            LOWORD(v10) = 0;
            if (v143)
            {
              do
              {
                v150 = *v14;
                if (*v14)
                {
                  v151 = v150 == 31;
                }

                else
                {
                  v151 = 1;
                }

                if (v151)
                {
                  break;
                }

                v152 = 0;
                v153 = 0;
                do
                {
                  if (v150 != *(*(v9 + 1392) + v152))
                  {
                    goto LABEL_200;
                  }

                  v152 = ++v153;
                  v150 = v14[v153];
                }

                while (v14[v153]);
                *(v9 + 1472) = v8 + 1;
                LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, v11, a5, a6, a7, a8);
                v10 = (v10 + 1);
              }

              while (v10 < *(v9 + 1406));
            }

LABEL_200:
            v147 = v10;
            v148 = v9;
            v149 = 5;
          }

LABEL_296:
          result = LOG_WARNING_ON_MAX_NUMBER(v148, v147, v149, v11, a5, a6, a7, a8);
          goto LABEL_297;
        }

        if (i[3] <= 3u)
        {
          if (v144 == 2)
          {
            LOWORD(v10) = 0;
            if (v143)
            {
              while (1)
              {
                v174 = *v14;
                if (*v14)
                {
                  v175 = v174 == 31;
                }

                else
                {
                  v175 = 1;
                }

                if (v175)
                {
                  goto LABEL_268;
                }

                v176 = *(v9 + 1512);
                v177 = *(v9 + 1392);
                v178 = *v177;
                v179 = (v176 + 5 * v178);
                if (*v179)
                {
                  break;
                }

                if (VAR_APPEARENCE(v9, v178))
                {
                  *(v9 + 1480) = 1;
                  SETUTF8CHAR(v176 + 5 * *v177, v14);
LABEL_267:
                  *(v9 + 1472) = v8 + 1;
                  LOWORD(v8) = TOKEN1(v9, (v8 + 1), a3, v11, a5, a6, a7, a8);
                  v10 = (v10 + 1);
                  if (v10 < *(v9 + 1406))
                  {
                    continue;
                  }
                }

                goto LABEL_268;
              }

              v180 = 0;
              v181 = 0;
              while (v174 == v179[v180])
              {
                v180 = ++v181;
                v174 = v14[v181];
                if (!v14[v181])
                {
                  goto LABEL_267;
                }
              }
            }

LABEL_268:
            v147 = v10;
            v148 = v9;
            v149 = 7;
          }

          else
          {
            if (v144 != 3)
            {
              goto LABEL_297;
            }

            LOWORD(v10) = 0;
            if (v143)
            {
              do
              {
                if (*v14)
                {
                  v145 = *v14 == 31;
                }

                else
                {
                  v145 = 1;
                }

                if (v145)
                {
                  break;
                }

                if (!strstr(*(*(*(v9 + 2120) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v14))
                {
                  break;
                }

                *(v9 + 1472) = v8 + 1;
                LOWORD(v8) = TOKEN1(v9, (v8 + 1), v146, v11, a5, a6, a7, a8);
                v10 = (v10 + 1);
              }

              while (v10 < *(v9 + 1406));
            }

            v147 = v10;
            v148 = v9;
            v149 = 2;
          }

          goto LABEL_296;
        }

        if (v144 == 4)
        {
          LOWORD(v10) = 0;
          if (v143)
          {
            do
            {
              if (*v14)
              {
                v184 = *v14 == 31;
              }

              else
              {
                v184 = 1;
              }

              if (v184)
              {
                break;
              }

              if (strstr(*(*(*(v9 + 2120) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v14))
              {
                break;
              }

              *(v9 + 1472) = v8 + 1;
              LOWORD(v8) = TOKEN1(v9, (v8 + 1), v185, v11, a5, a6, a7, a8);
              v10 = (v10 + 1);
            }

            while (v10 < *(v9 + 1406));
          }

          v147 = v10;
          v148 = v9;
          v149 = 3;
          goto LABEL_296;
        }

        if (v144 == 5)
        {
          LOWORD(v10) = 0;
          if (v143)
          {
            do
            {
              if (*v14)
              {
                v168 = *v14 == 31;
              }

              else
              {
                v168 = 1;
              }

              if (v168)
              {
                break;
              }

              result = strstr(*(*(*(v9 + 2128) + 8 * (**(v9 + 1392) - 1)) + 8 * *(v9 + 1405)), v14);
              if (!result)
              {
                break;
              }

              *(v9 + 1472) = v8 + 1;
              result = TOKEN1(v9, (v8 + 1), a3, v11, a5, a6, a7, a8);
              LOWORD(v8) = result;
              v10 = (v10 + 1);
            }

            while (v10 < *(v9 + 1406));
          }
        }

LABEL_297:
        v190 = *(v9 + 1456);
        if (*(v190 + 1) > v10)
        {
          goto LABEL_459;
        }

        v8 = *(v9 + 1472);
        i = (v190 + 5);
        do
        {
          *(v9 + 1456) = i;
          v191 = *i++;
        }

        while (v191 < -64);
LABEL_300:
        *(v9 + 1470) = 1;
        *(v9 + 1456) = i;
        continue;
      case 19:
        v47 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v48 = v8;
            v49 = v8;
            v50 = *(v47 + 4 * v8);
            v8 = v8 + *(v9 + 1470);
          }

          while (v50 == 126);
          v8 = v48;
        }

        else
        {
          v49 = v8;
        }

        v118 = (v47 + 4 * v49);
        if (*v13 != v118)
        {
          result = Utf32SymToUtf8Sym(*v118, v14, 5u);
          v119 = (*(v9 + 1440) + 4 * v49);
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
        v8 = v312;
        continue;
      case 21:
        v43 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v44 = v8;
            v45 = v8;
            v46 = *(v43 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v46 == 126);
          LODWORD(v8) = v44;
        }

        else
        {
          v45 = v8;
        }

        v109 = (v43 + 4 * v45);
        if (*v13 != v109)
        {
          result = Utf32SymToUtf8Sym(*v109, v14, 5u);
          v110 = (*(v9 + 1440) + 4 * v45);
          *(v9 + 1405) = *v110 & 0x3F;
          *(v9 + 2096) = v110;
        }

        v111 = *v14;
        if (*v14)
        {
          v112 = v111 == 31;
        }

        else
        {
          v112 = 1;
        }

        if (v112)
        {
          goto LABEL_459;
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
          v111 = v14[v117];
          if (!v14[v117])
          {
            goto LABEL_459;
          }
        }

LABEL_129:
        *(v9 + 1470) = 1;
        v8 = (v8 + 1);
        i = (v114 + 2);
        *(v9 + 1456) = v114 + 2;
        continue;
      default:
        v71 = *(v9 + 1440);
        if (*(v9 + 1470))
        {
          do
          {
            v72 = v8;
            v73 = v8;
            v74 = *(v71 + 4 * v8);
            LODWORD(v8) = v8 + *(v9 + 1470);
          }

          while (v74 == 126);
          LODWORD(v8) = v72;
        }

        else
        {
          v73 = v8;
        }

        v156 = (v71 + 4 * v73);
        if (*v13 != v156)
        {
          result = Utf32SymToUtf8Sym(*v156, v14, 5u);
          v157 = (*(v9 + 1440) + 4 * v73);
          *(v9 + 1405) = *v157 & 0x3F;
          *(v9 + 2096) = v157;
          i = *(v9 + 1456);
        }

        v158 = *v14;
        if (!*v14)
        {
          goto LABEL_459;
        }

        v159 = 0;
        v160 = 0;
        do
        {
          if (v158 != i[v159])
          {
            goto LABEL_459;
          }

          v159 = ++v160;
          v158 = v14[v160];
        }

        while (v14[v160]);
        *(v9 + 1470) = 1;
        result = strlen(v14);
        i += result;
        *(v9 + 1456) = i;
        v8 = (v8 + 1);
        continue;
    }

    break;
  }

  while (1)
  {
    v224 = *result;
    if (v224 > 0xE)
    {
      if (*result > 0x10u)
      {
        if (v224 == 17)
        {
LABEL_345:
          *(v9 + 1456) = result + 1;
          if (v220 < v222)
          {
            memmove((*(v9 + 1448) + 4 * v220), (*(v9 + 1448) + 4 * v222), 4 * (v221 - v222 + 1));
          }

          v225 = v306;
          if (v219 > v206)
          {
            result = MOVE_FOR_SUBSTITUTION(v9, v206, v306, (v219 - v206));
            if (!result)
            {
              goto LABEL_449;
            }

            v225 = v219 + v306 - v206;
            *v310 = v219 + v306 - v206;
            v206 = v219;
          }

          *(v9 + 1448) = *(v203 + 16);
          v227 = *(v203 + 562);
          goto LABEL_351;
        }

        if (v224 == 19)
        {
          if (v313 < 1)
          {
            goto LABEL_352;
          }

          v228 = 0;
          do
          {
            if (v220 >= v206)
            {
              if (v221 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
              {
                goto LABEL_388;
              }

              v229 = v220;
              v230 = *(v9 + 1448) + 4 * v220;
              v231 = v221;
              result = memmove((v230 + 4), v230, 4 * (v221 - v220 + 1));
              v221 = (v231 + 1);
            }

            else
            {
              v229 = v220;
            }

            v219 = (v219 + 1);
            ++v222;
            LODWORD(v220) = v220 + 1;
            *(*(v9 + 1448) + 4 * v229) = 126;
            ++v228;
          }

          while (v313 > v228);
          goto LABEL_378;
        }
      }

      else
      {
        if (v224 == 15)
        {
          goto LABEL_345;
        }

        if (v224 == 16)
        {
LABEL_329:
          *(v9 + 1456) = result + 1;
          if (v220 < v222)
          {
            memmove((*(v9 + 1448) + 4 * v220), (*(v9 + 1448) + 4 * v222), 4 * (v221 - v222 + 1));
          }

          v225 = v306;
          if (v219 > v206)
          {
            result = MOVE_FOR_SUBSTITUTION(v9, v206, v306, (v219 - v206));
            if (!result)
            {
              goto LABEL_449;
            }

            v225 = v219 + v306 - v206;
            v206 = v219;
          }

          v226 = *(v9 + 1456);
          *(v9 + 1448) = *(*(v9 + 1504) + 8 * *v226 - 8);
          v227 = *v226 - 1;
LABEL_351:
          *(v9 + 1410) = v227;
          LODWORD(v220) = v219;
          v306 = v225;
          v221 = v225;
          v222 = v219;
          goto LABEL_352;
        }
      }

      goto LABEL_382;
    }

    if (*result <= 6u)
    {
      break;
    }

    if (v224 == 7)
    {
      v244 = v221;
      *(v9 + 1456) = result + 1;
      result = strlen(v223);
      if (result >= 1)
      {
        v245 = v219;
        v246 = 0;
        v221 = v244;
        do
        {
          if (v220 >= v206)
          {
            if (v221 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
            {
              goto LABEL_388;
            }

            v247 = v246;
            if (v223[v246] >= -64)
            {
              v248 = *(v9 + 1448) + 4 * v220;
              v249 = v221;
              memmove((v248 + 4), v248, 4 * (v221 - v220 + 1));
              v221 = (v249 + 1);
            }
          }

          else
          {
            v247 = v246;
          }

          v250 = v221;
          if (v223[v247] >= -64)
          {
            v245 = (v245 + 1);
            ++v222;
            FirstUtf8SymToUtf32(&v223[v247], &v315);
            v251 = v220;
            LODWORD(v220) = v220 + 1;
            *(*(v9 + 1448) + 4 * v251) = v315;
          }

          ++v246;
          result = strlen(v223);
          v221 = v250;
        }

        while (result > v246);
        v219 = v245;
LABEL_378:
        v203 = a4;
        goto LABEL_352;
      }

      v221 = v244;
      goto LABEL_352;
    }

    if (v224 == 14)
    {
      goto LABEL_329;
    }

LABEL_382:
    v224 = v224;
    if (v220 < v206)
    {
      goto LABEL_386;
    }

    if (v221 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
    {
      *(v9 + 1428) = -100;
      goto LABEL_449;
    }

    if (v224 >= -64)
    {
      v252 = *(v9 + 1448) + 4 * v220;
      v253 = v221;
      memmove((v252 + 4), v252, 4 * (v221 - v220 + 1));
      v221 = (v253 + 1);
      result = *(v9 + 1456);
      LOBYTE(v224) = *result;
LABEL_386:
      if (v224 >= -64)
      {
        v219 = (v219 + 1);
        ++v222;
        v254 = v221;
        FirstUtf8SymToUtf32(result, &v315);
        v221 = v254;
        v255 = v220;
        LODWORD(v220) = v220 + 1;
        *(*(v9 + 1448) + 4 * v255) = v315;
      }
    }

LABEL_352:
    result = *(v9 + 1456) + 1;
    *(v9 + 1456) = result;
  }

  if (v224 == 2)
  {
    *(v9 + 1456) = result + 1;
    v232 = *(result + 1);
    v233 = *(v9 + 46);
    v305 = v221;
    v234 = v203;
    if (v232 > v233)
    {
      result = log_OutText(*(*(v9 + 2080) + 32), "FE_DEPES", 3, 0, "warning: pActRule > nr_vars (3)", v200, v201, v202, v302);
      v232 = **(v9 + 1456);
      v233 = *(v9 + 46);
    }

    v308 = v219;
    if (v232 > v233)
    {
      *(v9 + 1428) = -100;
      goto LABEL_449;
    }

    v235 = *(v9 + 1512);
    v236 = (5 * v232);
    result = strlen((v235 + v236));
    if (result < 1)
    {
      v223 = __s;
      v203 = v234;
      v219 = v308;
      v221 = v305;
    }

    else
    {
      v307 = v206;
      v237 = 0;
      v238 = 0;
      v221 = v305;
      do
      {
        if (v220 >= v307)
        {
          if (v221 + 1 >= *(*(v9 + 1416) + 2 * *(v9 + 1410)) - 1)
          {
LABEL_388:
            *(v9 + 1428) = -100;
            v203 = a4;
            goto LABEL_449;
          }

          if (*(v235 + v236 + v237) >= -64)
          {
            v239 = *(v9 + 1448) + 4 * v220;
            v240 = v221;
            memmove((v239 + 4), v239, 4 * (v221 - v220 + 1));
            v221 = (v240 + 1);
            v235 = *(v9 + 1512);
            v232 = **(v9 + 1456);
          }
        }

        v241 = v221;
        v236 = 5 * v232;
        v242 = v236 + v237;
        if (*(v235 + v242) >= -64)
        {
          v308 = (v308 + 1);
          ++v222;
          FirstUtf8SymToUtf32((v235 + v242), &v315);
          v243 = v220;
          LODWORD(v220) = v220 + 1;
          *(*(v9 + 1448) + 4 * v243) = v315;
          v235 = *(v9 + 1512);
          v232 = **(v9 + 1456);
          LODWORD(v236) = 5 * v232;
        }

        v237 = ++v238;
        result = strlen((v235 + v236));
        v221 = v241;
      }

      while (v238 < result);
      v203 = a4;
      v223 = __s;
      v206 = v307;
      v219 = v308;
    }

    goto LABEL_352;
  }

  if (*result)
  {
    goto LABEL_382;
  }

  if (v220 < v206)
  {
    memmove((*(v9 + 1448) + 4 * v220), (*(v9 + 1448) + 4 * v206), 4 * (v221 - v206 + 1));
  }

  result = MOVE_FOR_SUBSTITUTION(v9, v206, v306, (v219 - v206));
  if (result)
  {
    *(v203 + 34) = v219 + v306 - v206;
    v212 = v219 + ~*(v203 + 32);
    if (v303 < v219)
    {
      v271 = v303;
      v219 = v219;
      do
      {
        result = Utf32SymToUtf8Sym(*(**(v9 + 1504) + 4 * v271), v316, 5u);
        v272 = v316[0];
        if (v316[0])
        {
          v273 = 0;
          do
          {
            ++*(a4 + 36 + 2 * v272);
            v272 = v316[++v273];
          }

          while (v316[v273]);
        }

        ++v271;
      }

      while (v271 != v219);
    }

    v203 = a4;
    goto LABEL_446;
  }

LABEL_449:
  if (*(v9 + 1428) == 156)
  {
    *(v9 + 1384) = 1;
    *(v203 + 548) = *(v203 + 34) - *(v203 + 32);
    *(v203 + 32) = **(v9 + 184);
    *(v203 + 30) = *(v9 + 44);
    *v13 = 0;
    v13[1] = 0;
    goto LABEL_452;
  }

  v283 = *(v9 + 1384);
  *v13 = 0;
  v13[1] = 0;
  if (v283)
  {
LABEL_452:
    *(v203 + 556) = 1;
  }

  v284 = *(v203 + 8);
  if (*(v9 + 1440) != v284)
  {
    *(v9 + 1440) = v284;
  }

  if (*(v9 + 2088) >= 6)
  {
    v285 = *(v9 + 2 * *(v9 + 1430) + 1568);
    v286 = *v310;
    Utf32LayersToUtf8Layers(v9, *v310);
    result = log_OutText(*(*(v9 + 2080) + 32), "FE_DEPES", 6, 0, "Rule number %d", v287, v288, v289, (v309 - *(v9 + 2 * *(v9 + 1430) + 1824)));
    if (*(v9 + 24) >= 1)
    {
      v290 = 0;
      do
      {
        v291 = *(*(v9 + 1496) + 8 * v290);
        v292 = &v291[Utf8_LengthInBytes(v291, v285)];
        v293 = *(*(v9 + 1496) + 8 * v290);
        v294 = v293[Utf8_LengthInBytes(v293, v286)];
        v295 = *(*(v9 + 1496) + 8 * v290);
        v295[Utf8_LengthInBytes(v295, v286)] = 0;
        log_OutText(*(*(v9 + 2080) + 32), "FE_DEPES", 6, 0, "%s", v296, v297, v298, v292);
        v299 = *(*(v9 + 1496) + 8 * v290);
        result = Utf8_LengthInBytes(v299, v286);
        v299[result] = v294;
        ++v290;
      }

      while (v290 < *(v9 + 24));
    }
  }

LABEL_459:
  if (*(v9 + 1480))
  {
    if ((*(v9 + 46) & 0x80000000) == 0)
    {
      v300 = 0;
      do
      {
        *(*(v9 + 1512) + v300) = 0;
        v300 += 5;
      }

      while (5 * *(v9 + 46) + 5 > v300);
    }

    *(v9 + 1480) = 0;
  }

  v301 = *(a4 + 8);
  if (*(v9 + 1440) != v301)
  {
    *(v9 + 1440) = v301;
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
    result = strstr(*(*(v4 + 8 * *(v2 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400));
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
    v15 = "FE_DEPES";
    v16 = "warning: pActRule > nr_vars (1)";
    v17 = "warning: pActRule > nr_vars (2)";
LABEL_3:
    v18 = v9 + 1;
    *(a1 + 1456) = v9 + 1;
    switch(v10)
    {
      case 2:
        v43 = *v18;
        v44 = *(a1 + 46);
        if (v43 > v44)
        {
          log_OutText(*(*(a1 + 2080) + 32), v15, 3, 0, v16, a6, a7, a8, v63);
          v18 = *(a1 + 1456);
          v43 = *v18;
          v44 = *(a1 + 46);
        }

        if (v43 > v44)
        {
          return 0;
        }

        v45 = *(a1 + 1512);
        v46 = (v45 + 5 * v43);
        if (*v46)
        {
          v47 = *v13;
          if (!*v13)
          {
            goto LABEL_87;
          }

          v48 = 0;
          v49 = 0;
          do
          {
            if (v47 != v46[v48])
            {
              goto LABEL_87;
            }

            v48 = ++v49;
            v47 = v13[v49];
          }

          while (v13[v49]);
        }

        else
        {
          if (!VAR_APPEARENCE(a1, v43))
          {
            goto LABEL_87;
          }

          *(a1 + 1480) = 1;
          SETUTF8CHAR(v45 + 5 * *v18, (a1 + 1400));
        }

        goto LABEL_83;
      case 3:
        if (*v13)
        {
          v51 = *v13 == 31;
        }

        else
        {
          v51 = 1;
        }

        if (v51)
        {
          goto LABEL_87;
        }

        v42 = *(a1 + 2120);
        goto LABEL_58;
      case 4:
        if (*v13)
        {
          v50 = *v13 == 31;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          goto LABEL_87;
        }

        v29 = *(a1 + 2120);
        goto LABEL_51;
      case 5:
        if (*v13)
        {
          v41 = *v13 == 31;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          goto LABEL_87;
        }

        v42 = *(a1 + 2128);
LABEL_58:
        if (!strstr(*(*(v42 + 8 * (*v18 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 6:
        if (*v13)
        {
          v28 = *v13 == 31;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          goto LABEL_87;
        }

        v29 = *(a1 + 2128);
LABEL_51:
        if (strstr(*(*(v29 + 8 * (*v18 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      case 7:
        v64 = v12;
        v30 = v17;
        v31 = v15;
        v32 = v16;
        v33 = *v18;
        v34 = v33 - 1;
        if (!strstr(*(*(*(a1 + 2128) + 8 * (v33 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
        {
          goto LABEL_87;
        }

        v35 = *(a1 + 88);
        v36 = strstr((v35 + (v34 << 8)), (a1 + 1400));
        if (!v36 || !*v13 || *v13 == 31)
        {
          goto LABEL_87;
        }

        v37 = v35 + (v33 << 8);
        if (v34)
        {
          v40 = (v37 + v36[256 * v34 + *(a1 + 96) - v35 + -256 * v34] - 512);
          v39 = a1 + 1484;
        }

        else
        {
          v38 = v36[256 * v34 + *(a1 + 96) - v35 + -256 * v34];
          v39 = a1 + 1484;
          v40 = (v37 + v38);
        }

        SETUTF8CHAR(v39, v40);
        v16 = v32;
        v15 = v31;
        v17 = v30;
        v12 = v64;
        goto LABEL_83;
      case 12:
        v52 = *v13;
        if (*v13)
        {
          v53 = v52 == 31;
        }

        else
        {
          v53 = 1;
        }

        if (v53)
        {
          goto LABEL_87;
        }

        v54 = 0;
        v55 = 0;
        do
        {
          if (v52 != v18[v54])
          {
            goto LABEL_87;
          }

          v54 = ++v55;
          v52 = v13[v55];
        }

        while (v13[v55]);
        v9 = &v18[strlen((a1 + 1400))];
        goto LABEL_84;
      case 13:
        v56 = *v13;
        if (*v13)
        {
          v57 = v56 == 31;
        }

        else
        {
          v57 = 1;
        }

        if (v57)
        {
          goto LABEL_87;
        }

        v58 = 0;
        v59 = 0;
        while (v56 == v18[v58])
        {
          v58 = ++v59;
          v56 = v13[v59];
          if (!v13[v59])
          {
            goto LABEL_87;
          }
        }

        v60 = v9 + 2;
        do
        {
          *(a1 + 1456) = v60;
          v61 = *v60++;
        }

        while (v61 < -64);
        v9 = v60 - 1;
        goto LABEL_85;
      case 14:
      case 16:
        *(a1 + 1360) = *(a1 + 1440);
        v19 = *(*(a1 + 1504) + 8 * *v18 - 8);
        *(a1 + 1440) = v19;
        goto LABEL_7;
      case 15:
      case 17:
        v19 = *(a1 + 1360);
        if (!v19)
        {
          return 0;
        }

        *(a1 + 1440) = v19;
        *(a1 + 1360) = 0;
LABEL_7:
        v20 = (v19 + 4 * v14);
        if (*(a1 + 2096) != v20)
        {
          Utf32SymToUtf8Sym(*v20, (a1 + 1400), 5u);
          v21 = (*(a1 + 1440) + 4 * v14);
          *(a1 + 1405) = *v21 & 0x3F;
          *(a1 + 2096) = v21;
        }

        result = 0;
        if (!*v13 || *v13 == 31)
        {
          return result;
        }

        goto LABEL_83;
      case 21:
        v22 = *v18;
        v23 = *(a1 + 46);
        if (v22 > v23)
        {
          log_OutText(*(*(a1 + 2080) + 32), v15, 3, 0, v17, a6, a7, a8, v63);
          v22 = **(a1 + 1456);
          v23 = *(a1 + 46);
        }

        if (v22 > v23)
        {
          return 0;
        }

        v24 = (*(a1 + 1512) + 5 * v22);
        if (!*v24)
        {
          goto LABEL_83;
        }

        v25 = *v13;
        if (!*v13)
        {
          goto LABEL_83;
        }

        v26 = 0;
        v27 = 0;
        break;
      default:
        goto LABEL_83;
    }

    do
    {
      if (v25 != v24[v26])
      {
LABEL_83:
        v9 = (*(a1 + 1456) + 1);
LABEL_84:
        *(a1 + 1456) = v9;
LABEL_85:
        v10 = *v9;
        if (v10 == v12)
        {
          return 1;
        }

        goto LABEL_3;
      }

      v26 = ++v27;
      v25 = v13[v27];
    }

    while (v13[v27]);
LABEL_87:
    v62 = *(a1 + 1360);
    if (v62)
    {
      result = 0;
      *(a1 + 1440) = v62;
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
        v62 = (*(a1 + 1512) + 5 * v58);
        if (*v62)
        {
          v63 = 0;
          v64 = 0;
          v25 = 1;
          do
          {
            if (v60 != v62[v63])
            {
              return 0;
            }

            v63 = ++v64;
            v60 = *(v61 + v64);
          }

          while (*(v61 + v64));
        }

        else
        {
          if (!VAR_APPEARENCE(a1, v58))
          {
            return 0;
          }

          v25 = 1;
          *(a1 + 1480) = 1;
          SETUTF8CHAR(v62, (a1 + 1400));
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
        return strstr(*(*(v35 + 8 * (v33 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
      }

      return v25;
    case 4:
      v65 = *(a1 + 1466);
      if (v65 < 0)
      {
        return 0;
      }

      v66 = TOKEN(a1, v65, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v66;
      v67 = *(a1 + 1456);
      *(a1 + 1456) = v67 + 1;
      v27 = *(v67 + 1);
      v68 = *(a1 + 1468);
      *(a1 + 1470) = v68;
      *(a1 + 1456) = v67 + 2;
      *(a1 + 1466) = v68 + v66;
      if (*(a1 + 1400) && *(a1 + 1400) != 31)
      {
        v29 = *(a1 + 2120);
        return strstr(*(*(v29 + 8 * (v27 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
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
        return strstr(*(*(v35 + 8 * (v33 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) != 0;
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
        return strstr(*(*(v29 + 8 * (v27 - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)) == 0;
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
        v142 = *(a1 + 1464);
        if (!*(v39 + v142))
        {
          v143 = *(a1 + 1456);
          if (*v143 != 8)
          {
            v144 = v143 + 1;
            do
            {
              *(a1 + 1456) = v144;
              v145 = *v144++;
            }

            while (v145 != 8);
          }
        }

        *(a1 + 2 * v142 + 648) = *(a1 + 1466);
        if (!v49)
        {
LABEL_117:
          --*(a1 + 1464);
        }
      }

      else
      {
        v133 = *(a1 + 1466);
        if (v133 < 0)
        {
          return 0;
        }

        v134 = TOKEN(a1, v133, *(a1 + 1470), a4, a5, a6, a7, a8);
        *(a1 + 1466) = v134;
        *(a1 + 1352) = 1;
        v25 = CHECK_OF_LIST(a1, 8u, v134, v135, v136, v137, v138, v139);
        v140 = *(a1 + 1468);
        *(a1 + 2 * *(a1 + 1464) + 748) = v140;
        *(a1 + 1470) = v140;
        v141 = *(a1 + 1466) + v140;
        *(a1 + 1466) = v141;
        *(a1 + 2 * *(a1 + 1464) + 648) = v141;
        if (!v25)
        {
          goto LABEL_117;
        }
      }

      ++*(a1 + 1456);
      return v25;
    case 9:
      v77 = (v9 + 1);
      *(a1 + 1456) = v9 + 1;
      v78 = v9[1];
      if (v78)
      {
        if (v78 == 1)
        {
          v79 = *(a1 + 1464) + 1;
          *(a1 + 1464) = v79;
          *(a1 + 2 * v79 + 748) = *(a1 + 1470);
          v80 = *(a1 + 1464);
          *(a1 + 8 * v80 + 952) = *(a1 + 1440);
          *(a1 + 2 * v80 + 848) = 9;
          *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
          *(a1 + *(a1 + 1464) + 192) = **(a1 + 1456);
          *(a1 + 8 * *(a1 + 1464) + 248) = *(a1 + 1456) + 1;
          v77 = *(a1 + 1456);
        }

        else
        {
          SKIP_DATA(a1, 9, 0);
          v77 = *(a1 + 1456) + 1;
        }
      }

      goto LABEL_242;
    case 0xA:
      *(a1 + 1456) = v9 + 1;
      if (v9[1])
      {
        v81 = *(a1 + 1464) + 1;
        *(a1 + 1464) = v81;
        *(a1 + 2 * v81 + 748) = *(a1 + 1470);
        v82 = *(a1 + 1464);
        *(a1 + 8 * v82 + 952) = *(a1 + 1440);
        *(a1 + 2 * v82 + 848) = 10;
        *(a1 + 2 * *(a1 + 1464) + 648) = *(a1 + 1466);
        v83 = *(a1 + 1464);
        *(a1 + 8 * v83 + 248) = *(a1 + 1456) + 1;
        *(a1 + v83 + 192) = 0;
        SKIP_DATA(a1, 10, 0);
        v9 = *(a1 + 1456);
      }

      goto LABEL_5;
    case 0xB:
      v108 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v108 < 0)
      {
        return 0;
      }

      v109 = TOKEN(a1, v108, *(a1 + 1470), a4, a5, a6, a7, a8);
      *(a1 + 1466) = v109;
      v115 = *(a1 + 1456);
      v116 = *(v115 + 2);
      if (v116 == 220)
      {
        v116 = 5000;
      }

      *(a1 + 1406) = v116;
      if (v116 && (*(a1 + 1456) = v115 + 3, CHECK_OF_LIST(a1, 0xBu, v109, v110, v111, v112, v113, v114)))
      {
        LOWORD(v117) = 0;
        do
        {
          v118 = *(a1 + 1456);
          v119 = *(a1 + 1468);
          v120 = v119 + *(a1 + 1466);
          *(a1 + 1466) += *(a1 + 1468);
          *(a1 + 1472) = v120;
          if (v120 < 0)
          {
            return 0;
          }

          v121 = TOKEN(a1, v120, v119, v110, v111, v112, v113, v114);
          *(a1 + 1466) = v121;
          v117 = (v117 + 1);
          if (v117 >= *(a1 + 1406))
          {
            break;
          }

          *(a1 + 1456) = v115 + 3;
        }

        while (CHECK_OF_LIST(a1, 0xBu, v121, v110, v111, v112, v113, v114));
      }

      else
      {
        v117 = 0;
        v118 = 0;
      }

      LOG_WARNING_ON_MAX_NUMBER(a1, v117, 9, v110, v111, v112, v113, v114);
      *(a1 + 1466) = *(a1 + 1472);
      if (v118)
      {
        *(a1 + 1456) = v118;
      }

      else
      {
        v118 = *(a1 + 1456);
      }

      for (i = v118 + 1; ; ++i)
      {
        if (*(i - 1) == 11)
        {
          v158 = *(i - 2);
          v159 = v158 > 0x15;
          v160 = (1 << v158) & 0x20067C;
          if (v159 || v160 == 0)
          {
            break;
          }

          v162 = *(i - 3);
          v159 = v162 > 0x15;
          v163 = (1 << v162) & 0x20C67C;
          if (!v159 && v163 != 0)
          {
            break;
          }
        }

        *(a1 + 1456) = i;
      }

      *(a1 + 1470) = *(a1 + 1468);
      *(a1 + 1456) = i;
      return v117 >= *(v115 + 1);
    case 0xC:
      v100 = *(a1 + 1466);
      if (v100 < 0)
      {
        return 0;
      }

      v101 = TOKEN(a1, v100, *(a1 + 1470), a4, a5, a6, a7, a8);
      v102 = *(a1 + 1456);
      v103 = *(a1 + 1468);
      *(a1 + 1470) = v103;
      *(a1 + 1466) = v103 + v101;
      *(a1 + 1456) = v102 + 2;
      v16 = *(a1 + 1400);
      if (*(a1 + 1400))
      {
        v104 = 0;
        v105 = 0;
        v106 = a1 + 1400;
        v107 = *(a1 + 1400);
        do
        {
          v22 = v107 == *(v102 + 1 + v104);
          if (v107 != *(v102 + 1 + v104))
          {
            break;
          }

          v104 = ++v105;
          v107 = *(v106 + v105);
        }

        while (*(v106 + v105));
      }

      else
      {
        v22 = 0;
      }

      if (*(v102 + 2) <= -65)
      {
        v154 = (v102 + 3);
        do
        {
          *(a1 + 1456) = v154;
          v155 = *v154++;
        }

        while (v155 < -64);
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
        v152 = (v14 + 3);
        do
        {
          *(a1 + 1456) = v152;
          v153 = *v152++;
        }

        while (v153 < -64);
      }

LABEL_143:
      if (v16)
      {
        v156 = v22;
      }

      else
      {
        v156 = 0;
      }

      return v16 != 31 && v156;
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
      v84 = *(a1 + 1466);
      *(a1 + 1472) = *(a1 + 1466);
      if (v84 < 0)
      {
        return 0;
      }

      v90 = TOKEN(a1, v84, *(a1 + 1470), a4, a5, a6, a7, a8);
      LOWORD(v91) = 0;
      *(a1 + 1466) = v90;
      v92 = *(a1 + 1456);
      v93 = *(v92 + 2);
      if (v93 == 220)
      {
        v93 = 5000;
      }

      *(a1 + 1406) = v93;
      *(a1 + 1392) = v92 + 4;
      v94 = *(v92 + 3);
      if (v94 > 5)
      {
        if (v94 > 12)
        {
          if (v94 == 13)
          {
            LOWORD(v91) = 0;
            if (v93)
            {
              v191 = (a1 + 1400);
              do
              {
                v192 = *v191;
                if (!*v191 || v192 == 31)
                {
                  break;
                }

                v194 = 0;
                v195 = 0;
                while (v192 == *(*(a1 + 1392) + v194))
                {
                  v194 = ++v195;
                  v192 = v191[v195];
                  if (!v191[v195])
                  {
                    goto LABEL_234;
                  }
                }

                v196 = *(a1 + 1468);
                *(a1 + 1466) = *(a1 + 1468) + v90;
                *(a1 + 1472) = v196 + v90;
                if (((v196 + v90) & 0x8000) != 0)
                {
                  return 0;
                }

                v90 = TOKEN(a1, (v196 + v90), v196, v85, v86, v87, v88, v89);
                *(a1 + 1466) = v90;
                v91 = (v91 + 1);
              }

              while (v91 < *(a1 + 1406));
            }

LABEL_234:
            v97 = v91;
            v98 = a1;
            v99 = 14;
          }

          else
          {
            if (v94 != 21)
            {
              goto LABEL_236;
            }

            LOWORD(v91) = 0;
            if (v93)
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
                *(a1 + 1466) = *(a1 + 1468) + v90;
                *(a1 + 1472) = v178 + v90;
                if (((v178 + v90) & 0x8000) != 0)
                {
                  return 0;
                }

                v90 = TOKEN(a1, (v178 + v90), v178, v85, v86, v87, v88, v89);
                *(a1 + 1466) = v90;
                v91 = (v91 + 1);
              }

              while (v91 < *(a1 + 1406));
            }

LABEL_188:
            v97 = v91;
            v98 = a1;
            v99 = 16;
          }
        }

        else if (v94 == 6)
        {
          LOWORD(v91) = 0;
          if (v93)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v187 = *(a1 + 1400) == 31;
              }

              else
              {
                v187 = 1;
              }

              if (v187 || strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v188 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v90;
              *(a1 + 1472) = v188 + v90;
              if (((v188 + v90) & 0x8000) != 0)
              {
                return 0;
              }

              v90 = TOKEN(a1, (v188 + v90), v188, v85, v86, v87, v88, v89);
              *(a1 + 1466) = v90;
              v91 = (v91 + 1);
            }

            while (v91 < *(a1 + 1406));
          }

          v97 = v91;
          v98 = a1;
          v99 = 12;
        }

        else
        {
          if (v94 != 12)
          {
            goto LABEL_236;
          }

          LOWORD(v91) = 0;
          if (v93)
          {
            v146 = (a1 + 1400);
            do
            {
              v147 = *v146;
              if (!*v146 || v147 == 31)
              {
                break;
              }

              v149 = 0;
              v150 = 0;
              do
              {
                if (v147 != *(*(a1 + 1392) + v149))
                {
                  goto LABEL_133;
                }

                v149 = ++v150;
                v147 = v146[v150];
              }

              while (v146[v150]);
              v151 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v90;
              *(a1 + 1472) = v151 + v90;
              if (((v151 + v90) & 0x8000) != 0)
              {
                return 0;
              }

              v90 = TOKEN(a1, (v151 + v90), v151, v85, v86, v87, v88, v89);
              *(a1 + 1466) = v90;
              v91 = (v91 + 1);
            }

            while (v91 < *(a1 + 1406));
          }

LABEL_133:
          v97 = v91;
          v98 = a1;
          v99 = 13;
        }

        goto LABEL_235;
      }

      if (v94 <= 3)
      {
        if (v94 == 2)
        {
          LOWORD(v91) = 0;
          if (v93)
          {
            v179 = (a1 + 1400);
            while (1)
            {
              v180 = *(a1 + 1512);
              v181 = *(a1 + 1392);
              v182 = 5 * *v181;
              if (*(v180 + v182))
              {
                break;
              }

              if (!VAR_APPEARENCE(a1, v182))
              {
                goto LABEL_203;
              }

              *(a1 + 1480) = 1;
              SETUTF8CHAR(v180 + 5 * *v181, (a1 + 1400));
              v90 = *(a1 + 1466);
LABEL_201:
              v186 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v90;
              *(a1 + 1472) = v186 + v90;
              if (((v186 + v90) & 0x8000) != 0)
              {
                return 0;
              }

              v90 = TOKEN(a1, (v186 + v90), v186, v85, v86, v87, v88, v89);
              *(a1 + 1466) = v90;
              v91 = (v91 + 1);
              if (v91 >= *(a1 + 1406))
              {
                goto LABEL_203;
              }
            }

            v183 = *v179;
            if (*v179)
            {
              v184 = 0;
              v185 = 0;
              while (v183 == *(v180 + v182 + v184))
              {
                v184 = ++v185;
                v183 = v179[v185];
                if (!v179[v185])
                {
                  goto LABEL_201;
                }
              }
            }
          }

LABEL_203:
          v97 = v91;
          v98 = a1;
          v99 = 15;
        }

        else
        {
          if (v94 != 3)
          {
            goto LABEL_236;
          }

          LOWORD(v91) = 0;
          if (v93)
          {
            do
            {
              if (*(a1 + 1400))
              {
                v95 = *(a1 + 1400) == 31;
              }

              else
              {
                v95 = 1;
              }

              if (v95 || !strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
              {
                break;
              }

              v96 = *(a1 + 1468);
              *(a1 + 1466) = *(a1 + 1468) + v90;
              *(a1 + 1472) = v96 + v90;
              if (((v96 + v90) & 0x8000) != 0)
              {
                return 0;
              }

              v90 = TOKEN(a1, (v96 + v90), v96, v85, v86, v87, v88, v89);
              *(a1 + 1466) = v90;
              v91 = (v91 + 1);
            }

            while (v91 < *(a1 + 1406));
          }

          v97 = v91;
          v98 = a1;
          v99 = 10;
        }

        goto LABEL_235;
      }

      if (v94 == 4)
      {
        LOWORD(v91) = 0;
        if (v93)
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

            if (v189 || strstr(*(*(*(a1 + 2120) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
            {
              break;
            }

            v190 = *(a1 + 1468);
            *(a1 + 1466) = *(a1 + 1468) + v90;
            *(a1 + 1472) = v190 + v90;
            if (((v190 + v90) & 0x8000) != 0)
            {
              return 0;
            }

            v90 = TOKEN(a1, (v190 + v90), v190, v85, v86, v87, v88, v89);
            *(a1 + 1466) = v90;
            v91 = (v91 + 1);
          }

          while (v91 < *(a1 + 1406));
        }

        v97 = v91;
        v98 = a1;
        v99 = 11;
LABEL_235:
        LOG_WARNING_ON_MAX_NUMBER(v98, v97, v99, v85, v86, v87, v88, v89);
        goto LABEL_236;
      }

      LOWORD(v91) = 0;
      if (v93)
      {
        do
        {
          if (*(a1 + 1400))
          {
            v165 = *(a1 + 1400) == 31;
          }

          else
          {
            v165 = 1;
          }

          if (v165 || !strstr(*(*(*(a1 + 2128) + 8 * (**(a1 + 1392) - 1)) + 8 * *(a1 + 1405)), (a1 + 1400)))
          {
            break;
          }

          v171 = *(a1 + 1468);
          *(a1 + 1466) = *(a1 + 1468) + v90;
          *(a1 + 1472) = v171 + v90;
          if (((v171 + v90) & 0x8000) != 0)
          {
            return 0;
          }

          v90 = TOKEN(a1, (v171 + v90), v171, v166, v167, v168, v169, v170);
          *(a1 + 1466) = v90;
          v91 = (v91 + 1);
        }

        while (v91 < *(a1 + 1406));
      }

LABEL_236:
      v197 = *(a1 + 1456);
      if (*(v197 + 1) > v91)
      {
        return 0;
      }

      *(a1 + 1466) = *(a1 + 1472);
      v77 = v197 + 5;
      *(a1 + 1456) = v197 + 5;
      *(a1 + 1470) = *(a1 + 1468);
      if (*(v197 + 5) <= -65)
      {
        v198 = (v197 + 6);
        do
        {
          *(a1 + 1456) = v198;
          v199 = *v198++;
        }

        while (v199 < -64);
        v77 = (v198 - 1);
      }

LABEL_242:
      v11 = v77 + 1;
LABEL_243:
      *(a1 + 1456) = v11;
      return 1;
    case 0x13:
      v132 = *(a1 + 1466);
      if (v132 < 0)
      {
        return 0;
      }

      *(a1 + 1466) = TOKEN(a1, v132, *(a1 + 1470), a4, a5, a6, a7, a8);
      *(a1 + 1470) = *(a1 + 1468);
      v11 = *(a1 + 1456) + 1;
      goto LABEL_243;
    case 0x15:
      v122 = *(a1 + 1466);
      if (v122 < 0)
      {
        return 0;
      }

      v123 = TOKEN(a1, v122, *(a1 + 1470), a4, a5, a6, a7, a8);
      v25 = 0;
      *(a1 + 1466) = v123;
      v124 = *(a1 + 1456);
      *(a1 + 1456) = v124 + 1;
      v125 = *(v124 + 1);
      v126 = *(a1 + 1468);
      *(a1 + 1470) = v126;
      *(a1 + 1456) = v124 + 2;
      *(a1 + 1466) = v126 + v123;
      v127 = *(a1 + 1400);
      if (!*(a1 + 1400) || v127 == 31)
      {
        return v25;
      }

      v128 = (*(a1 + 1512) + 5 * v125);
      if (!*v128)
      {
        return 1;
      }

      v129 = 0;
      v130 = 0;
      v131 = a1 + 1400;
      while (v127 == v128[v129])
      {
        v25 = 0;
        v129 = ++v130;
        v127 = *(v131 + v130);
        if (!*(v131 + v130))
        {
          return v25;
        }
      }

      return 1;
    default:
      v69 = *(a1 + 1466);
      if (v69 < 0)
      {
        return 0;
      }

      v70 = TOKEN(a1, v69, *(a1 + 1470), a4, a5, a6, a7, a8);
      *(a1 + 1466) = v70;
      v71 = *(a1 + 1468);
      *(a1 + 1470) = v71;
      v72 = (a1 + 1400);
      v73 = *(a1 + 1456);
      v74 = *(a1 + 1400);
      if (!*(a1 + 1400))
      {
        goto LABEL_102;
      }

      v75 = 0;
      v76 = 0;
      while (v74 == *(v73 + v75))
      {
        v75 = ++v76;
        v74 = v72[v76];
        if (!v72[v76])
        {
          v25 = 1;
          goto LABEL_103;
        }
      }

LABEL_102:
      v25 = 0;
LABEL_103:
      *(a1 + 1456) = v73 + strlen(v72);
      *(a1 + 1466) = v71 + v70;
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
    v27 = 0;
    *(a1 + 1428) = -101;
    return v27;
  }

  v10 = v9;
  *&__c[3] = 0;
  v30 = 0;
  utf8_Utf32ToUtf8(**(a1 + 1504) + 4 * a3, (*v4 - a3), v9, v8, &v30);
  *(v10 + v30) = 0;
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
    v29 = v4;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = strchr(v14, __c[0]);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
      }

      v21 = strlen(v14);
      if (v21)
      {
        v22 = v21;
        v23 = Utf8_LengthInUtf8chars(v14, v21);
        v24 = a3 + v23;
        if (v24 >= *(*(a1 + 1416) + 2 * v17) - 1)
        {
          v27 = 0;
          *(a1 + 1428) = -100;
          goto LABEL_28;
        }

        utf8_Utf8ToUtf32(v14, v22, 0, *(*(a1 + 1504) + 8 * v17) + 4 * a3, (v23 + a3), &v30, 0);
        *(v12 + 2 * v17) = v24;
      }

      else
      {
        LOWORD(v24) = *(v12 + 2 * v17);
      }

      if (v18 <= v24)
      {
        v18 = v24;
      }

      v25 = *(a1 + 24);
      if (!v20)
      {
        break;
      }

      v14 = v20 + 1;
      ++v17;
    }

    while (v17 < v25);
    if (v25 < 1)
    {
      v4 = v29;
    }

    else
    {
      v26 = 0;
      v4 = v29;
      do
      {
        if (*(v12 + 2 * v26) < v18)
        {
          memset_pattern16((*(*(a1 + 1504) + 8 * v26) + 4 * *(v12 + 2 * v26)), &unk_1C37BD4D0, 4 * (v18 + ~*(v12 + 2 * v26)) + 4);
        }

        ++v26;
      }

      while (v25 != v26);
    }
  }

  *v4 = v18;
  v27 = 1;
LABEL_28:
  heap_Free(*(a1 + 1528), v10);
  heap_Free(*(a1 + 1528), v12);
  return v27;
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
          memmove((v10 + 4 * a2), (v10 + 4 * *(v8 + 2 * v5)), 4 * v13);
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

  memmove((*(a1 + 1560) + v7), (*(a1 + 1560) + *(v8 + 2 * v4)), (v6 + 1));
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

          memmove((v12 + 4 * v10), (v12 + 4 * v5), 4 * (v4 - v5 + 1));
          if (v10 > v5)
          {
            memset_pattern16((*(*(a1 + 1504) + 8 * v8) + 4 * v5), &unk_1C37BD4D0, v11);
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
      memmove((*(a1 + 1560) + v20), (*(a1 + 1560) + v5), (v4 - v5 + 1));
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
    memmove((*(*(a1 + 1504) + 8) + 4 * a2), (**(a1 + 1504) + 4 * a2), 4 * (v3 - a2));
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
  if (v5 + 4 >= **(a1 + 1416) - 1 || (memmove((v9 + 4 * v10 + 16), (v9 + 4 * v10), 4 * (v5 - v10)), v13 = *a3, v13 + 4 >= *(*(a1 + 1416) + 2) - 1) || (v14 = v10 + 4, memmove((*(*(a1 + 1504) + 8) + 4 * v14), (*(*(a1 + 1504) + 8) + 4 * v10), 4 * (v13 - v10)), v15 = *a3, v15 + 4 >= *(*(a1 + 1416) + 4) - 1) || (memmove((*(*(a1 + 1504) + 16) + 4 * v14), (*(*(a1 + 1504) + 16) + 4 * v10), 4 * (v15 - v10)), v16 = *a3, v16 + 4 >= *(*(a1 + 1416) + 6) - 1))
  {
    result = 0;
    *(a1 + 1428) = -100;
  }

  else
  {
    memmove((*(*(a1 + 1504) + 24) + 4 * v14), (*(*(a1 + 1504) + 24) + 4 * v10), 4 * (v16 - v10));
    *a3 += 4;
    v17 = *(a1 + 1504);
    v18 = v17[1];
    *(*v17 + 4 * v10) = xmmword_1C37BD4E0;
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
  v46 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = 0;
  v5 = 2305826826;
  HIWORD(v42) = 0;
  __src[0] = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 2) = 0;
    inited = InitRsrcFunction(a3, a4, &v44);
    if ((inited & 0x80000000) != 0 || (log_OutText(*(v44 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjOpen", v12, v13, v14, v42), inited = objc_GetObject(*(v44 + 48), "FE_DCTLKP", &v43), (inited & 0x80000000) != 0))
    {
      v5 = inited;
    }

    else
    {
      v15 = heap_Calloc(*(v44 + 8), 1, 712);
      if (v15)
      {
        v20 = v15;
        *a5 = v15;
        *(a5 + 2) = 62334;
        v21 = v44;
        *(v20 + 16) = a3;
        *(v20 + 24) = a4;
        *(v20 + 32) = a1;
        *(v20 + 40) = a2;
        *v20 = v21;
        *(v20 + 8) = a1;
        v22 = v43;
        *(v20 + 64) = *(v43 + 8);
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
        if (((hlp_CreateLngBrokerString(v21, __src, 0) & 0x80000000) != 0 || (hlp_OpenData(*v20, __src, (v20 + 72), (v20 + 136)) & 0x80000000) != 0 || !*(v20 + 72)) && ((LngBrokerString = hlp_CreateLngBrokerString(*v20, __src, 1), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v20, __src, (v20 + 72), (v20 + 136)), (LngBrokerString & 0x80000000) != 0)) || ((__strcpy_chk(), (hlp_CreateVoiceBrokerString_0(*v20, __src, 0, 0) & 0x80000000) != 0) || (hlp_OpenData(*v20, __src, (v20 + 80), (v20 + 140)) & 0x80000000) != 0 || !*v24) && ((hlp_CreateVoiceBrokerString_0(*v20, __src, 1, 1) & 0x80000000) != 0 || (hlp_OpenData(*v20, __src, (v20 + 80), (v20 + 140)) & 0x80000000) != 0 || !*v24) && ((LngBrokerString = hlp_CreateVoiceBrokerString_0(*v20, __src, 1, 0), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*v20, __src, (v20 + 80), (v20 + 140)), (LngBrokerString & 0x80000000) != 0)))
        {
          v5 = LngBrokerString;
          goto LABEL_34;
        }

        strcpy((v20 + 456), __src);
        if (*(v20 + 72))
        {
          v30 = heap_Calloc(*(*v20 + 8), 1, 2136);
          *(v20 + 144) = v30;
          if (!v30)
          {
LABEL_31:
            v39 = 42000;
LABEL_33:
            log_OutPublic(*(*v20 + 32), "FE_DEPES", v39, 0, v26, v27, v28, v29, v42);
            goto LABEL_34;
          }

          *(v30 + 1560) = 0;
          *(v30 + 1496) = 0u;
          *(v30 + 1512) = 0u;
          *(v30 + 1528) = *(v44 + 8);
          v31 = v43;
          *(v30 + 1536) = *(v43 + 16);
          v32 = *(v20 + 144);
          *(v32 + 1552) = *(v31 + 8);
          *v32 = 0;
          *(v32 + 2120) = 0u;
          if (!*v24)
          {
LABEL_29:
            v5 = fe_depes_InitModule(*a5, a5[1], "fe_depes", &v42 + 3);
            if ((v5 & 0x80000000) == 0)
            {
LABEL_35:
              log_OutText(*(v44 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjOpen", v36, v37, v38, v42);
              goto LABEL_36;
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
          v5 = 2305826819;
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
          *(v33 + 1528) = *(v44 + 8);
          v34 = v43;
          *(v33 + 1536) = *(v43 + 16);
          v35 = *(v20 + 152);
          *(v35 + 1552) = *(v34 + 8);
          *v35 = 0;
          *(v35 + 2120) = 0u;
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      log_OutPublic(*(v44 + 32), "FE_DEPES", 42000, 0, v16, v17, v18, v19, v42);
      objc_ReleaseObject(*(v44 + 48), "FE_DCTLKP");
    }
  }

  else
  {
    v5 = 2305826823;
  }

LABEL_36:
  v40 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t hlp_CreateLngBrokerString(uint64_t a1, char *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = "";
  *v9 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    strcpy(v10, "depes/");
    __strcat_chk();
    if (a3)
    {
LABEL_5:
      result = brokeraux_ComposeBrokerString(a1, v10, 1, 1, *v9, 0, 0, a2, 0x100uLL);
      goto LABEL_6;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      goto LABEL_5;
    }
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
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

uint64_t hlp_CreateVoiceBrokerString_0(uint64_t a1, char *a2, int a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = "";
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v14);
  if ((result & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "fevoice", &v13) & 0x80000000) == 0 || (result = paramc_ParamGetStr(*(a1 + 40), "voice", &v13), (result & 0x80000000) == 0))
    {
      strcpy(v15, "depes/");
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      if (a3)
      {
        if (a4)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }

      result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v12);
      if ((result & 0x80000000) == 0)
      {
        __strcat_chk();
        __strcat_chk();
        if (a4)
        {
LABEL_6:
          if ((paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v11) & 0x80000000) != 0)
          {
            v9 = 0;
            v11 = 0;
          }

          else
          {
            v9 = v11;
          }

          goto LABEL_12;
        }

LABEL_10:
        v9 = 0;
LABEL_12:
        result = brokeraux_ComposeBrokerString(a1, v15, 1, 1, v14, v13, v9, a2, 0x100uLL);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_depes_InitModule(uint64_t **a1, int a2, char *a3, _WORD *a4)
{
  v8 = 2305826826;
  v9 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v9 & 0x80000000) == 0)
  {
    inited = v9;
    log_OutText((*a1)[4], "FE_DEPES", 4, 0, "Entering fe_depes_InitModule", v10, v11, v12, v37);
    *a4 = 0;
    v14 = a1[9];
    if (v14)
    {
      v15 = a1[18];
      if (!v15)
      {
        goto LABEL_18;
      }

      inited = hlp_InitData(a1, *a1, a3, 1, (a1 + 25), v14, *(a1 + 34), v15);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v20 = a1[18];
      if (*a4)
      {
        if (*a4 != *(v20 + 12))
        {
          goto LABEL_19;
        }

        v21 = *(v20 + 12);
      }

      else
      {
        v21 = *(v20 + 12);
      }

      *a4 = v21;
      v20[23] = a1 + 186;
    }

    else
    {
      v21 = 0;
    }

    v22 = a1[10];
    if (!v22)
    {
LABEL_22:
      v26 = heap_Calloc((*a1)[1], v21, 8);
      a1[20] = v26;
      v27 = *a1;
      if (!v26)
      {
        v25 = 42000;
LABEL_42:
        log_OutPublic(v27[4], "FE_DEPES", v25, 0, v16, v17, v18, v19, v38);
        inited = v8;
        goto LABEL_43;
      }

      v28 = heap_Calloc(v27[1], *a4, 8);
      a1[21] = v28;
      if (v28)
      {
        v29 = *a4;
        *(a1 + 92) = *a4;
        if (v29 >= 1)
        {
          v30 = 0;
          do
          {
            a1[20][v30] = 0;
            a1[20][v30] = heap_Alloc((*a1)[1], 3172);
            if (!a1[20][v30])
            {
              goto LABEL_39;
            }

            a1[21][v30] = 0;
            a1[21][v30] = heap_Alloc((*a1)[1], 12688);
            if (!a1[21][v30])
            {
              goto LABEL_39;
            }

            if (a1[9])
            {
              *(a1[18][187] + 8 * v30) = a1[20][v30];
              *(a1[18][188] + 8 * v30) = a1[21][v30];
            }

            if (a1[10])
            {
              *(a1[19][187] + 8 * v30) = a1[20][v30];
              *(a1[19][188] + 8 * v30) = a1[21][v30];
            }
          }

          while (++v30 < *(a1 + 92));
        }

        v35 = heap_Calloc((*a1)[1], 3172, 1);
        a1[22] = v35;
        if (!v35)
        {
LABEL_39:
          log_OutPublic((*a1)[4], "FE_DEPES", 42000, 0, v31, v32, v33, v34, v38);
          return v8;
        }

        if (a1[9])
        {
          a1[18][195] = v35;
        }

        if (a1[10])
        {
          a1[19][195] = v35;
        }

LABEL_44:
        log_OutText((*a1)[4], "FE_DEPES", 4, 0, "Leaving fe_depes_InitModule", v32, v33, v34, v38);
        return inited;
      }

      v25 = 42000;
LABEL_41:
      v27 = *a1;
      goto LABEL_42;
    }

    v23 = a1[19];
    if (v23)
    {
      inited = hlp_InitData(a1, *a1, a3, 0, (a1 + 57), v22, *(a1 + 35), v23);
      if ((inited & 0x80000000) == 0)
      {
        v24 = a1[19];
        if (!*a4)
        {
          v21 = *(v24 + 12);
          goto LABEL_21;
        }

        if (*a4 == *(v24 + 12))
        {
          v21 = *(v24 + 12);
LABEL_21:
          *a4 = v21;
          v24[23] = a1 + 186;
          goto LABEL_22;
        }

LABEL_19:
        v8 = 2305826841;
        v25 = 42003;
        goto LABEL_41;
      }

LABEL_43:
      fe_depes_ExitModule(a1, a2);
      goto LABEL_44;
    }

LABEL_18:
    inited = 2305826823;
    goto LABEL_43;
  }

  return 2305826824;
}

uint64_t fe_depes_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a1)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjClose", v5, v6, v7, v15);
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    fe_depes_ExitModule(a1, a2);
    v11 = a1[18];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
      a1[18] = 0;
    }

    v12 = a1[19];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
      a1[19] = 0;
    }

    v13 = a1[9];
    if (v13)
    {
      brk_DataClose(*(*a1 + 24), v13);
      a1[9] = 0;
    }

    v14 = a1[10];
    if (v14)
    {
      brk_DataClose(*(*a1 + 24), v14);
      a1[10] = 0;
    }

    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjClose", v8, v9, v10, v16);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_depes_ObjReopen(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  inited = 2305826826;
  HIWORD(v32) = 0;
  __src[0] = 0;
  LngBrokerString = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((LngBrokerString & 0x80000000) != 0)
  {
    inited = 2305826824;
    goto LABEL_30;
  }

  if (!a1)
  {
    goto LABEL_28;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjReopen", v6, v7, v8, v32);
  fe_depes_ExitModule(a1, a2);
  v9 = *(a1 + 144);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
    *(a1 + 144) = 0;
  }

  v10 = *(a1 + 152);
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
    *(a1 + 152) = 0;
  }

  v12 = (a1 + 72);
  v11 = *(a1 + 72);
  if (v11)
  {
    brk_DataClose(*(*a1 + 24), v11);
    *(a1 + 72) = 0;
  }

  v14 = (a1 + 80);
  v13 = *(a1 + 80);
  if (v13)
  {
    brk_DataClose(*(*a1 + 24), v13);
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 186) = 3172;
  *(a1 + 192) = 0;
  *v12 = 0;
  *(a1 + 80) = 0;
  if ((hlp_CreateLngBrokerString(*a1, __src, 0) & 0x80000000) != 0 || (hlp_OpenData(*a1, __src, (a1 + 72), (a1 + 136)) & 0x80000000) != 0 || !*v12)
  {
    LngBrokerString = hlp_CreateLngBrokerString(*a1, __src, 1);
    if ((LngBrokerString & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    LngBrokerString = hlp_OpenData(*a1, __src, (a1 + 72), (a1 + 136));
    if ((LngBrokerString & 0x80000000) != 0)
    {
      goto LABEL_28;
    }
  }

  __strcpy_chk();
  if ((hlp_CreateVoiceBrokerString_0(*a1, __src, 0, 0) & 0x80000000) != 0 || (hlp_OpenData(*a1, __src, (a1 + 80), (a1 + 140)) & 0x80000000) != 0 || !*v14)
  {
    LngBrokerString = hlp_CreateVoiceBrokerString_0(*a1, __src, 1, 1);
    if ((LngBrokerString & 0x80000000) != 0 || ((hlp_OpenData(*a1, __src, (a1 + 80), (a1 + 140)) & 0x80000000) != 0 || !*v14) && ((LngBrokerString = hlp_CreateVoiceBrokerString_0(*a1, __src, 1, 0), (LngBrokerString & 0x80000000) != 0) || (LngBrokerString = hlp_OpenData(*a1, __src, (a1 + 80), (a1 + 140)), (LngBrokerString & 0x80000000) != 0)))
    {
LABEL_28:
      inited = LngBrokerString;
      goto LABEL_30;
    }
  }

  strcpy((a1 + 456), __src);
  if (!*(a1 + 72))
  {
    if (!*v14)
    {
      log_OutPublic(*(*a1 + 32), "FE_DEPES", 42002, 0, v15, v16, v17, v18, v32);
      inited = 2305826819;
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v19 = heap_Calloc(*(*a1 + 8), 1, 2136);
  *(a1 + 144) = v19;
  if (!v19)
  {
    goto LABEL_36;
  }

  *(v19 + 1560) = 0;
  *(v19 + 1496) = 0u;
  *(v19 + 1512) = 0u;
  *(v19 + 1528) = *(*a1 + 8);
  *(v19 + 1536) = *(a1 + 48);
  v24 = *(a1 + 144);
  *(v24 + 1552) = *(a1 + 64);
  *v24 = 0;
  *(v24 + 2120) = 0u;
  if (*(a1 + 80))
  {
LABEL_32:
    v27 = heap_Calloc(*(*a1 + 8), 1, 2136);
    *(a1 + 152) = v27;
    if (v27)
    {
      *(v27 + 1560) = 0;
      *(v27 + 1496) = 0u;
      *(v27 + 1512) = 0u;
      *(v27 + 1528) = *(*a1 + 8);
      *(v27 + 1536) = *(a1 + 48);
      v28 = *(a1 + 152);
      *(v28 + 1552) = *(a1 + 64);
      *v28 = 0;
      *(v28 + 2120) = 0u;
      goto LABEL_34;
    }

LABEL_36:
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0, v20, v21, v22, v23, v32);
    goto LABEL_30;
  }

LABEL_34:
  inited = fe_depes_InitModule(a1, a2, "fe_depes", &v32 + 3);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjReopen", v29, v30, v31, v32);
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t fe_depes_ExitModule(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExitModule", v3, v4, v5, v19);
  v9 = a1[20];
  if (v9)
  {
    if (*(a1 + 92) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(a1[20] + 8 * v10);
        if (v11)
        {
          heap_Free(*(*a1 + 8), v11);
          *(a1[20] + 8 * v10) = 0;
        }

        if (a1[9])
        {
          *(*(a1[18] + 1496) + 8 * v10) = 0;
        }

        if (a1[10])
        {
          *(*(a1[19] + 1496) + 8 * v10) = 0;
        }

        ++v10;
      }

      while (v10 < *(a1 + 92));
      v9 = a1[20];
    }

    heap_Free(*(*a1 + 8), v9);
    a1[20] = 0;
  }

  v12 = a1[21];
  if (v12)
  {
    if (*(a1 + 92) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(a1[21] + 8 * v13);
        if (v14)
        {
          heap_Free(*(*a1 + 8), v14);
          *(a1[21] + 8 * v13) = 0;
        }

        if (a1[9])
        {
          *(*(a1[18] + 1504) + 8 * v13) = 0;
        }

        if (a1[10])
        {
          *(*(a1[19] + 1504) + 8 * v13) = 0;
        }

        ++v13;
      }

      while (v13 < *(a1 + 92));
      v12 = a1[21];
    }

    heap_Free(*(*a1 + 8), v12);
    a1[21] = 0;
  }

  v15 = a1[22];
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
    a1[22] = 0;
  }

  if (a1[9])
  {
    hlp_ExitData(a1[2], a1[3], a1[4], a1[5], a1[18], a1[11], a1[14], a1[13]);
    v16 = a1[18];
    if (v16)
    {
      *v16 = 0;
    }

    a1[13] = 0;
    a1[14] = 0;
  }

  if (a1[10])
  {
    hlp_ExitData(a1[2], a1[3], a1[4], a1[5], a1[19], a1[12], a1[16], a1[15]);
    v17 = a1[19];
    if (v17)
    {
      *v17 = 0;
    }

    a1[15] = 0;
    a1[16] = 0;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExitModule", v6, v7, v8, v20);
  return 0;
}

uint64_t hlp_InitData(uint64_t a1, uint64_t *a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v177 = *MEMORY[0x1E69E9840];
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v171 = 0;
  *(a8 + 2080) = a2;
  U32 = brk_DataMap(a2[3], a6, 72, a7, &v175);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v170 = a4;
  v17 = LH_stricmp(v175, a3);
  v18 = 0;
  v19 = 0;
  v20 = v9 != 0;
  if (v9 && v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v21 = strlen(&v175[v18]);
      v19 += v21 + ((~v21 - v19) & 3) + 9;
      v18 = v19;
      v22 = LH_stricmp(&v175[v19], a3);
      v20 = v19 < v9;
    }

    while (v19 < v9 && v22 != 0);
  }

  if (!v20)
  {
    brk_DataUnmap(a2[3], a6, v175);
    v36 = 2305826820;
    goto LABEL_60;
  }

  v24 = strlen(&v175[v18]);
  v25 = &v175[v19 + 1 + v24 + ((~v24 - v19) & 3)];
  v171 = *v25;
  v26 = v25[1];
  brk_DataUnmap(a2[3], a6, v175);
  U32 = brk_DataMapRefCnt(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a5, v171, v26, &v174);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v30 = v174;
  v31 = 88;
  if (!v170)
  {
    v31 = 96;
  }

  *(a1 + v31) = v174;
  v32 = *(v30 + 264);
  v175 = v32;
  *a8 = v32;
  v172 = 0;
  U32 = hlp_GetU32(a2, v32, v26, &v172, (a8 + 8), v27, v28, v29);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v36 = 2305826825;
  v37 = v175;
  v38 = *(a8 + 8);
  v39 = v172;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v33, v34, v35, v38);
  if (v39 + v38 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 16) = &v37[v39];
  v172 = v39 + v38;
  U32 = hlp_GetU32(a2, v175, v26, &v172, &v171, v40, v41, v42);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  *(a8 + 24) = v171;
  U32 = hlp_GetU32(a2, v175, v26, &v172, (a8 + 28), v43, v44, v45);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  U32 = hlp_GetU32(a2, v175, v26, &v172, (a8 + 32), v46, v47, v48);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  U32 = hlp_GetU32(a2, v175, v26, &v172, (a8 + 36), v49, v50, v51);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  U32 = hlp_GetU32(a2, v175, v26, &v172, (a8 + 40), v52, v53, v54);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  U32 = hlp_GetU32(a2, v175, v26, &v172, &v171, v55, v56, v57);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  *(a8 + 46) = v171;
  U32 = hlp_GetU32(a2, v175, v26, &v172, &v171, v58, v59, v60);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  *(a8 + 44) = v171;
  U32 = hlp_GetU32(a2, v175, v26, &v172, (a8 + 48), v61, v62, v63);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v67 = v175;
  v68 = *(a8 + 28);
  v69 = v172;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v64, v65, v66, v68);
  v70 = v69 + v68;
  if (v70 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 56) = &v67[v69];
  v71 = heap_Alloc(a2[1], 8 * *(a8 + 28));
  *(a8 + 1520) = v71;
  if (!v71)
  {
LABEL_61:
    v163 = a2[4];
    goto LABEL_62;
  }

  v76 = *(a8 + 28);
  if (v76 >= 1)
  {
    v77 = v71;
    v78 = 0;
    do
    {
      v79 = v175;
      v80 = v78;
      log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v73, v74, v75, 1);
      if (v70 + 1 <= v26)
      {
        *(v77 + 8 * v80) = &v79[v70++];
      }

      v77 = *(a8 + 1520);
      if (**(v77 + 8 * v80))
      {
          ;
        }
      }

      v78 = v80 + 1;
      v76 = *(a8 + 28);
    }

    while (v76 > (v80 + 1));
  }

  v172 = v70;
  U32 = hlp_GetU16Ptr(a2, v175, v26, &v172, (2 * v76), (a8 + 64), v74, v75);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  U32 = hlp_GetU16Ptr(a2, v175, v26, &v172, (2 * *(a8 + 28)), (a8 + 72), v82, v83);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v87 = v175;
  v88 = *(a8 + 32);
  v89 = v172;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v84, v85, v86, (v88 << 8));
  v93 = v89 + (v88 << 8);
  if (v93 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 80) = &v87[v89];
  v94 = v175;
  v95 = *(a8 + 36);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v90, v91, v92, (v95 << 8));
  v99 = v93 + (v95 << 8);
  if (v99 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 88) = &v94[v93];
  v100 = v175;
  v101 = *(a8 + 36);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v96, v97, v98, (v101 << 8));
  v105 = v99 + (v101 << 8);
  if (v105 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 96) = &v100[v99];
  v106 = v175;
  v107 = *(a8 + 46);
  v108 = 2 * (v107 & 0x7FFF);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v102, v103, v104, 2 * (v107 & 0x7FFF));
  if (v105 + v108 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 104) = &v106[v105];
  v172 = v105 + v108;
  U32 = hlp_GetU32Ptr(a2, v175, v26, &v172, 4 * (*(a8 + 44) & 0x3FFFu), (a8 + 112), v109, v110);
  if ((U32 & 0x80000000) != 0)
  {
LABEL_58:
    v36 = U32;
    goto LABEL_60;
  }

  v114 = v175;
  v115 = *(a8 + 44);
  v116 = v172;
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v111, v112, v113, *(a8 + 44));
  v120 = v116 + v115;
  if (v120 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 120) = &v114[v116];
  v121 = v175;
  v122 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v117, v118, v119, *(a8 + 44));
  v126 = v120 + v122;
  if (v126 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 128) = &v121[v120];
  v127 = v175;
  v128 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v123, v124, v125, *(a8 + 44));
  v132 = v126 + v128;
  if (v132 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 136) = &v127[v126];
  v133 = v175;
  v134 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v129, v130, v131, *(a8 + 44));
  v138 = v132 + v134;
  if (v138 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 144) = &v133[v132];
  v139 = v175;
  v140 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v135, v136, v137, *(a8 + 44));
  v144 = v138 + v140;
  if (v144 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 152) = &v139[v138];
  v145 = v175;
  v146 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v141, v142, v143, *(a8 + 44));
  v150 = v144 + v146;
  if (v150 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 160) = &v145[v144];
  v151 = v175;
  v152 = *(a8 + 44);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v147, v148, v149, *(a8 + 44));
  v156 = v150 + v152;
  if (v156 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 168) = &v151[v150];
  v157 = v175;
  v158 = *(a8 + 48);
  log_OutText(a2[4], "FE_DEPES", 5, 0, "Reading U8 buffer of size %u at offset %u", v153, v154, v155, v158);
  if (v158 + v156 > v26)
  {
    goto LABEL_60;
  }

  *(a8 + 176) = &v157[v156];
  v159 = heap_Calloc(a2[1], *(a8 + 24), 8);
  *(a8 + 1496) = v159;
  if (!v159)
  {
    goto LABEL_61;
  }

  v160 = heap_Calloc(a2[1], *(a8 + 24), 8);
  *(a8 + 1504) = v160;
  if (!v160)
  {
    goto LABEL_61;
  }

  v161 = heap_Calloc(a2[1], (*(a8 + 24) + 1), 2);
  *(a8 + 1416) = v161;
  if (!v161)
  {
    goto LABEL_61;
  }

  v162 = heap_Alloc(a2[1], 5 * (*(a8 + 46) + 1));
  *(a8 + 1512) = v162;
  v163 = a2[4];
  if (!v162)
  {
LABEL_62:
    log_OutPublic(v163, "FE_DEPES", 42000, 0, v72, v73, v74, v75, v169);
    v36 = 2305826826;
    goto LABEL_60;
  }

  *(a8 + 2088) = log_GetLogLevel(v163);
  __strcpy_chk();
  __strcat_chk();
  U32 = hlp_SetupNewFeatRefCnt(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v176, *(a8 + 80), *(a8 + 32), &v173);
  if ((U32 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v164 = v173;
  *(a8 + 2120) = *(v173 + 272);
  v165 = 112;
  if (!v170)
  {
    v165 = 128;
  }

  *(a1 + v165) = v164;
  __strcpy_chk();
  __strcat_chk();
  v36 = hlp_SetupNewFeatRefCnt(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v176, *(a8 + 88), *(a8 + 36), &v173);
  if ((v36 & 0x80000000) == 0)
  {
    v166 = v173;
    *(a8 + 2128) = *(v173 + 272);
    if (v170)
    {
      *(a1 + 104) = v166;
    }

    else
    {
      *(a1 + 120) = v166;
    }
  }

LABEL_60:
  v167 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t fe_depes_SetLayerUtf8(__int16 *a1, int a2, signed int a3, const void *a4, int a5)
{
  v10 = 2305826823;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_SetLayer", v11, v12, v13, v22);
  if (a4 && a3 < a1[92])
  {
    v10 = fe_depes_SetLayerExUtf8(a1, a2, a3, a4, a5);
    if ((v10 & 0x80000000) == 0)
    {
      log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_SetLayer", v18, v19, v20, v23);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v14, v15, v16, v17, v23);
  }

  return v10;
}

uint64_t fe_depes_SetLayerExUtf8(__int16 *a1, int a2, unsigned int a3, const void *a4, int a5)
{
  LODWORD(v5) = a5;
  v9 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v9 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v13 = v9;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_SetLayerEx", v10, v11, v12, v35);
  if (a4)
  {
    v17 = a1[92];
    if (a3 < v17)
    {
      if (v5 >= 0x2710)
      {
        v5 = 10000;
      }

      else
      {
        v5 = v5;
      }

      v18 = (3 * v5);
      if (v18 > a1[93])
      {
        if (v17 > 0)
        {
          v19 = 0;
          do
          {
            v20 = heap_Realloc(*(*a1 + 8), *(*(a1 + 20) + 8 * v19), (3 * v5));
            if (!v20)
            {
              goto LABEL_40;
            }

            *(*(a1 + 20) + 8 * v19) = v20;
            if (*(a1 + 9))
            {
              *(*(*(a1 + 18) + 1496) + 8 * v19) = *(*(a1 + 20) + 8 * v19);
            }

            if (*(a1 + 10))
            {
              *(*(*(a1 + 19) + 1496) + 8 * v19) = *(*(a1 + 20) + 8 * v19);
            }

            if (v18 > a1[93])
            {
              v25 = a1[93];
              do
              {
                *(*(*(a1 + 20) + 8 * v19) + v25++) = 32;
              }

              while (v18 != v25);
            }

            v26 = heap_Realloc(*(*a1 + 8), *(*(a1 + 21) + 8 * v19), 4 * (3 * v5));
            if (!v26)
            {
              goto LABEL_40;
            }

            *(*(a1 + 21) + 8 * v19) = v26;
            if (*(a1 + 9))
            {
              *(*(*(a1 + 18) + 1504) + 8 * v19) = *(*(a1 + 21) + 8 * v19);
            }

            if (*(a1 + 10))
            {
              *(*(*(a1 + 19) + 1504) + 8 * v19) = *(*(a1 + 21) + 8 * v19);
            }

            if (v18 > a1[93])
            {
              memset_pattern16((*(*(a1 + 21) + 8 * v19) + 4 * a1[93]), &unk_1C37BD540, 4 * (v18 + ~a1[93]) + 4);
            }
          }

          while (++v19 < a1[92]);
        }

        v27 = heap_Realloc(*(*a1 + 8), *(a1 + 22), (3 * v5));
        if (!v27)
        {
LABEL_40:
          log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0, v21, v22, v23, v24, v36);
          return 2305826826;
        }

        *(a1 + 22) = v27;
        if (*(a1 + 9))
        {
          *(*(a1 + 18) + 1560) = v27;
        }

        if (*(a1 + 10))
        {
          *(*(a1 + 19) + 1560) = v27;
        }

        if (v18 > a1[93])
        {
          v28 = a1[93];
          do
          {
            *(*(a1 + 22) + v28++) = 0;
          }

          while (v18 != v28);
        }

        a1[93] = 3 * v5;
      }

      memcpy(*(*(a1 + 20) + 8 * a3), a4, v5);
      memset((*(*(a1 + 20) + 8 * a3) + v5), 32, a1[93] - v5);
      if (a3)
      {
        v29 = a1[94];
        if (v29 >= Utf8_LengthInUtf8chars(*(*(a1 + 20) + 8 * a3), v5))
        {
          goto LABEL_45;
        }
      }

      else if (a1[92] >= 2u)
      {
        v33 = 1;
        do
        {
          memset(*(*(a1 + 20) + 8 * v33++), 32, a1[93]);
        }

        while (v33 < a1[92]);
      }

      a1[94] = Utf8_LengthInUtf8chars(*(*(a1 + 20) + 8 * a3), v5);
LABEL_45:
      log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_SetLayerEx", v30, v31, v32, v36);
      return v13;
    }
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 5, 0, "Layer %d not defined in depes grammar", v14, v15, v16, a3 + 1);
  return v13;
}

uint64_t fe_depes_SetMarker(uint64_t a1, int a2, const void *a3, int a4)
{
  LODWORD(v4) = a4;
  v7 = 2305826823;
  v8 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v8 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v12 = v8;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_SetMarker", v9, v10, v11, v21);
  if (v4 >= 0x2710)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v4;
  }

  if (a3 && *(a1 + 188) >= v4)
  {
    memcpy(*(a1 + 176), a3, v4);
    bzero((*(a1 + 176) + v4), *(a1 + 186) - v4);
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_SetMarker", v17, v18, v19, v22);
    return v12;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v13, v14, v15, v16, v22);
  }

  return v7;
}

uint64_t fe_depes_GetLayerUtf8(uint64_t a1, int a2, unsigned int a3, void *a4, _WORD *a5)
{
  v9 = 2305826823;
  v10 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v10 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v14 = v10;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_GetLayer", v11, v12, v13, v23);
  if (a4 && a3 < *(a1 + 184))
  {
    *a5 = Utf8_LengthInBytes(*(*(a1 + 160) + 8 * a3), *(a1 + 188));
    *a4 = *(*(a1 + 160) + 8 * a3);
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_GetLayer", v19, v20, v21, v24);
    return v14;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v15, v16, v17, v18, v24);
  }

  return v9;
}

uint64_t fe_depes_GetNrLayers(_WORD *a1, int a2, _WORD *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v5 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v9 = v5;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_GetNrLayers", v6, v7, v8, v14);
  *a3 = a1[92];
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_GetNrLayers", v10, v11, v12, v15);
  return v9;
}

uint64_t fe_depes_GetMarker(uint64_t a1, int a2, void *a3, _WORD *a4)
{
  v7 = 2305826823;
  v8 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v8 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v12 = v8;
  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_GetMarker", v9, v10, v11, v18);
  if (a3)
  {
    *a4 = *(a1 + 188);
    *a3 = *(a1 + 176);
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_GetMarker", v14, v15, v16, v19);
    return v12;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v13, v14, v15, v16, v19);
  }

  return v7;
}

double hlp_ExitData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v23 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v23) & 0x80000000) == 0 && (InitRsrcFunction(a3, a4, &v22) & 0x80000000) == 0)
  {
    if (*a5)
    {
      brk_DataMapDeRefCnt(a1, a2, a3, a4, a6);
    }

    v17 = *(a5 + 1496);
    if (v17)
    {
      heap_Free(*(v23 + 8), v17);
      *(a5 + 1496) = 0;
    }

    v18 = *(a5 + 1504);
    if (v18)
    {
      heap_Free(*(v23 + 8), v18);
      *(a5 + 1504) = 0;
    }

    v19 = *(a5 + 1416);
    if (v19)
    {
      heap_Free(*(v23 + 8), v19);
      *(a5 + 1416) = 0;
    }

    v20 = *(a5 + 1512);
    if (v20)
    {
      heap_Free(*(v23 + 8), v20);
      *(a5 + 1512) = 0;
    }

    v21 = *(a5 + 1520);
    if (v21)
    {
      heap_Free(*(v23 + 8), v21);
      *(a5 + 1520) = 0;
    }

    hlp_SetupNewFeatDeRefCnt(a1, a2, a3, a4, a7);
    hlp_SetupNewFeatDeRefCnt(a1, a2, a3, a4, a8);
    result = 0.0;
    *(a5 + 2120) = 0u;
  }

  return result;
}

uint64_t fe_depes_ExistModule(void *a1, int a2, char *a3)
{
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExistModule for %s", v5, v6, v7, a3);
    if (a1[10])
    {
      exist = hlp_ExistModule(a3, a1[19], &v15);
      if (exist || !a1[9])
      {
        if (exist)
        {
          v12 = 1;
LABEL_12:
          log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExistModule", v8, v9, v10, v14);
          return v12;
        }

        goto LABEL_11;
      }
    }

    else if (!a1[9])
    {
      goto LABEL_11;
    }

    if (hlp_ExistModule(a3, a1[18], &v15))
    {
      v12 = 2;
      goto LABEL_12;
    }

LABEL_11:
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Module sequence not found", v8, v9, v10, v14);
    v12 = 0;
    goto LABEL_12;
  }

  return 0;
}

BOOL hlp_ExistModule(char *a1, uint64_t a2, unsigned int *a3)
{
  *a3 = 0;
  for (i = *(a2 + 16); LH_stricmp(i, a1); i = (v8 + v11))
  {
    v7 = *a3;
    if (v7 >= *(a2 + 8))
    {
      break;
    }

    v8 = *(a2 + 16);
    v9 = strlen((v8 + v7));
    v10 = v7 + v9 + ((~v9 - v7) & 3) + 1;
    *a3 = v10;
    v11 = v10 + *(v8 + v10) + 4;
    *a3 = v11;
  }

  return *a3 < *(a2 + 8);
}

uint64_t fe_depes_ExecModule(uint64_t a1, int a2, char *a3)
{
  v5 = 2305826820;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExecModule for %s", v6, v7, v8, a3);
  if (*(a1 + 80))
  {
    v5 = hlp_ExecModule(a3, *(a1 + 152), (a1 + 188));
  }

  if (*(a1 + 72) && (v5 & 0x1FFF) == 4)
  {
    v5 = hlp_ExecModule(a3, *(a1 + 144), (a1 + 188));
  }

  if ((v5 & 0x80000000) != 0)
  {
    v13 = *(*a1 + 32);
    if ((v5 & 0x1FFF) == 4)
    {
      log_OutText(v13, "FE_DEPES", 4, 0, "Module sequence not found", v10, v11, v12, v16);
    }

    else
    {
      if ((v5 & 0x1FFF) == 0xA)
      {
        v14 = 42000;
      }

      else
      {
        v14 = 42005;
      }

      log_OutPublic(v13, "FE_DEPES", v14, 0, v9, v10, v11, v12, v16);
    }
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExecModule", v10, v11, v12, v16);
  return v5;
}

uint64_t hlp_ExecModule(char *a1, uint64_t a2, __int16 *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (hlp_ExistModule(a1, a2, &v21))
  {
    v5 = *(a2 + 16);
    v6 = strlen((v5 + v21));
    v7 = v21 + v6 + ((~v6 - v21) & 3);
    v8 = *(v5 + v7 + 1);
    if (v8)
    {
      v9 = v7 + 5;
      v10 = v22;
      v11 = v8;
      do
      {
        *v10++ = *(v5 + v9++);
        --v11;
      }

      while (v11);
    }

    *(a2 + 1430) = 0;
    *(a2 + 1428) = 0;
    v12 = **(a2 + 184);
    *(a2 + 1410) = v12;
    if ((*(a2 + 24) & 0x80000000) == 0)
    {
      v13 = 0;
      v14 = *(a2 + 1416);
      do
      {
        *(v14 + 2 * v13++) = v12;
      }

      while (*(a2 + 24) >= v13);
    }

    bzero(*(a2 + 1512), (5 * *(a2 + 46) + 5));
    *(a2 + 1480) = 1;
    if (v8)
    {
      v15 = v8 - 1;
      v16 = v22;
      do
      {
        v17 = v15;
        v18 = *v16++;
        result = INFERENCE_MAIN(a2, v18, 1, a3);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v15 = v17 - 1;
      }

      while (v17);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 2305826820;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_depes_SetcbInsMrk(uint64_t a1, int a2, int a3, int a4)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a4 == 1)
  {
    *(a1 + 192) = a3;
  }

  else
  {
    *(a1 + 196) = a3;
  }

  return result;
}

uint64_t fe_depes_GetcbInsMrk(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v8 = 196;
  if (a4 == 1)
  {
    v8 = 192;
  }

  *a3 = *(a1 + v8);
  return result;
}

uint64_t hlp_Utf8HashCode(const char *a1, _WORD *a2)
{
  v6 = 0;
  v4 = strlen(a1);
  result = utf8_Utf8ToUtf32(a1, v4, 0, &v6 + 4, 1u, &v6, 0);
  if ((result & 0x80000000) == 0)
  {
    *a2 = BYTE4(v6) & 0x3F;
  }

  return result;
}

uint64_t hlp_SetupNewFeatDeRefCnt(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if (a5)
    {
      if ((result & 0x80000000) == 0)
      {
        ObjcForThisApi = getObjcForThisApi(v11, v10);
        return objc_ReleaseObject(ObjcForThisApi, a5);
      }
    }
  }

  return result;
}

uint64_t fe_depes_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2305826817;
  }

  result = 0;
  *a2 = &IFeDepes;
  return result;
}

uint64_t hlp_GetU32(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = hlp_AlignOffset(a1, *a4, 4, a4, a5, a6, a7, a8);
  *a4 = v13;
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Reading U32 at offset %u", v14, v15, v16, v13);
  v17 = *a4;
  if (v17 + 4 > a3)
  {
    return 2305826825;
  }

  result = 0;
  *a5 = *(a2 + v17);
  *a4 += 4;
  return result;
}

uint64_t hlp_GetU16Ptr(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  *a4 = hlp_AlignOffset(a1, *a4, 2, a4, a5, a6, a7, a8);
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Reading U16 buffer of size %u at offset %u", v14, v15, v16, a5);
  v17 = *a4;
  if (v17 + a5 > a3)
  {
    return 2305826825;
  }

  result = 0;
  *a6 = a2 + v17;
  *a4 = v17 + a5;
  return result;
}

uint64_t hlp_GetU32Ptr(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  *a4 = hlp_AlignOffset(a1, *a4, 4, a4, a5, a6, a7, a8);
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Reading U32 buffer of size %u at offset %u", v14, v15, v16, a5);
  v17 = *a4;
  if (v17 + a5 > a3)
  {
    return 2305826825;
  }

  result = 0;
  *a6 = a2 + v17;
  *a4 = v17 + a5;
  return result;
}

uint64_t hlp_SetupNewFeatRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  result = InitRsrcFunction(a1, a2, &v22);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v21);
    if ((result & 0x80000000) == 0)
    {
      v19[0] = a1;
      v19[1] = a2;
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = a6;
      v19[5] = a7;
      ObjcForThisApi = getObjcForThisApi(v22, v21);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a5, hlp_SetupNewFeat_ObjcLoad, hlp_SetupNewFeat_ObjcClose, v19, &v20);
      if ((result & 0x80000000) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v20 + 32);
      }

      *a8 = v18;
    }
  }

  return result;
}

uint64_t hlp_AlignOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Offset before alignment is %u", a6, a7, a8, a2);
  log_OutText(*(a1 + 32), "FE_DEPES", 5, 0, "Offset after alignment to %u bytes is %u", v11, v12, v13, a3);
  return (v9 + a3 - 1) & -a3;
}

uint64_t hlp_SetupNewFeat_ObjcLoad(_WORD *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = 0;
  inited = InitRsrcFunction(a1, a2, &v44);
  if ((inited & 0x80000000) != 0 || (inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v45), (inited & 0x80000000) != 0))
  {
    v27 = inited;
  }

  else
  {
    v9 = v44;
    v10 = *(a5 + 32);
    v11 = *(a5 + 40);
    v12 = heap_Calloc(*(v44 + 8), 1, 280);
    *(a4 + 32) = v12;
    if (!v12 || (*(*(a4 + 32) + 272) = heap_Alloc(*(v9 + 8), 8 * v11), v17 = *(a4 + 32), !*(v17 + 272)))
    {
LABEL_27:
      v27 = 2305826826;
      log_OutPublic(*(v9 + 32), "FE_DEPES", 42000, 0, v13, v14, v15, v16, v39);
      goto LABEL_28;
    }

    if (v11)
    {
      v39 = a3;
      v18 = 0;
      v42 = v11;
LABEL_7:
      v19 = heap_Alloc(*(v9 + 8), 512);
      if (v19)
      {
        v11 = v19;
        v43 = v18;
        v20 = (v10 + (v18 << 8));
        memset(v48, 0, sizeof(v48));
        v21 = strlen(v20);
        v22 = 0;
        while (1)
        {
          v23 = heap_Alloc(*(v9 + 8), (v21 + 65));
          *(v48 + v22) = v23;
          if (!v23)
          {
            break;
          }

          *v23 = 0;
          v22 += 8;
          if (v22 == 512)
          {
            v40 = v10;
            v41 = a4;
            v47 = 64;
            Utf8Symbol = utf8_GetUtf8Symbol(v20, 0, v21, __s2);
            if (Utf8Symbol)
            {
              v25 = Utf8Symbol;
              v26 = 0;
              while (1)
              {
                v27 = hlp_Utf8HashCode(__s2, &v47);
                if ((v27 & 0x80000000) != 0)
                {
                  goto LABEL_28;
                }

                strcat(*(v48 + v47), __s2);
                v26 += v25;
                v25 = utf8_GetUtf8Symbol(v20, v26, v21, __s2);
                if (!v25)
                {
                  goto LABEL_17;
                }
              }
            }

            v27 = 0;
LABEL_17:
            v28 = heap_Alloc(*(v9 + 8), (v21 + 65));
            a4 = v41;
            if (v28)
            {
              v29 = v28;
              v30 = 0;
              v31 = 0;
              *v28 = 0;
              do
              {
                v32 = &v29[v31];
                *(v11 + v30) = v32;
                v33 = *(v48 + v30);
                strcpy(v32, v33);
                v34 = strlen(v33);
                v29[(v31 + v34)] = 0;
                v31 += v34 + 1;
                v30 += 8;
              }

              while (v30 != 512);
              v35 = 0;
              v10 = v40;
              do
              {
                v36 = *(v48 + v35);
                if (v36)
                {
                  heap_Free(*(v9 + 8), v36);
                  *(v48 + v35) = 0;
                }

                v35 += 8;
              }

              while (v35 != 512);
              *(*(*(v41 + 32) + 272) + 8 * v43) = v11;
              v18 = v43 + 1;
              LODWORD(v11) = v42;
              if (v42 <= (v43 + 1))
              {
                v17 = *(v41 + 32);
                goto LABEL_30;
              }

              goto LABEL_7;
            }

            goto LABEL_27;
          }
        }
      }

      goto LABEL_27;
    }

    v27 = 0;
LABEL_30:
    *(v17 + 256) = v10;
    *(*(a4 + 32) + 264) = v11;
    __strcpy_chk();
  }

LABEL_28:
  v37 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t hlp_SetupNewFeat_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    v6 = v14;
    v7 = *(v5 + 272);
    if (v7)
    {
      v8 = *(v5 + 264);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v10 = *(v7 + 8 * i);
          if (v10)
          {
            v11 = 0;
            while (1)
            {
              v12 = *(v10 + v11);
              if (v12)
              {
                break;
              }

              v11 += 8;
              if (v11 == 512)
              {
                goto LABEL_11;
              }
            }

            heap_Free(*(v6 + 8), v12);
            *(v10 + v11) = 0;
LABEL_11:
            heap_Free(*(v6 + 8), v10);
          }
        }
      }

      heap_Free(*(v6 + 8), v7);
      v6 = v14;
    }

    heap_Free(*(v6 + 8), v5);
  }

  return inited;
}

uint64_t fe_depes_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2305826823;
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

unsigned __int8 **m2__fix__carray__len(unsigned __int8 **result, int *a2)
{
  if (*a2 <= 0)
  {
    v2 = *result;
    v3 = -1;
    do
    {
      v4 = *v2++;
      ++v3;
    }

    while (v4);
    *a2 = v3;
  }

  return result;
}

unsigned __int8 *m2__cp__str(unsigned __int8 *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    while (1)
    {
      v5 = *result++;
      v4 = v5;
      if (!v5)
      {
        break;
      }

      *a2++ = v4;
      if (!--v3)
      {
        return result;
      }
    }

    *a2 = 0;
  }

  return result;
}

char *m2__cp__arr(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t mosyntkbsymtab_WriteGraphSym(uint64_t a1, uint64_t a2, signed int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  kbsymtab_GraphSymString(a2, a3, v6, 0xC8uLL);
  result = mosyntbase_WString(a1, v6, 200);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}