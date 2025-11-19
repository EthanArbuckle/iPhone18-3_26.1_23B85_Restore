uint64_t TranscriptionTokenizer_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__TranscriptionTokenizer;
    a1[1] = a2;

    return PNEW_StringTokenizer_Con(a2, a2, a1 + 2);
  }

  return result;
}

uint64_t TranscriptionTokenizer_Des(uint64_t a1)
{
  result = OOC_PlacementDeleteObject(*(a1 + 8), *(a1 + 16));
  if (!result)
  {

    return Object_Des();
  }

  return result;
}

uint64_t TranscriptionTokenizer_FetchTranscriptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v29 = 0;
  if (a3)
  {
    v10 = OOCAllocator_Malloc(*(a1 + 8), 24 * a3 + 8, &v29);
    result = v29;
    if (v29)
    {
      return result;
    }

    v23 = a4;
    v24 = a5;
    v12 = 0;
    v13 = 0;
    *v10 = a3;
    v14 = v10 + 1;
    v25 = a2;
    v26 = a3;
    do
    {
      v15 = (a2 + 24 * v13);
      if (*v15 == 1)
      {
        v27 = 0;
        v28 = 0;
        result = StringTokenizer_ExpandPhoneticMultiples(*(a1 + 16), *(a1 + 8), v15[1], &v28, &v27);
        v29 = result;
        if (result)
        {
          return result;
        }

        v16 = v27;
        if (!v27)
        {
          result = __TranscriptionTokenizer_GetTranscriptionData(a1, a2 + 24 * v13, &v14[3 * v12]);
          v29 = result;
          if (result)
          {
            return result;
          }

          ++v12;
          v16 = v27;
        }

        if (v16 >= 2)
        {
          v17 = v26 + v16;
          v10 = OOCAllocator_Realloc(*(a1 + 8), v10, 24 * (v26 + v16) - 16, &v29);
          result = v29;
          if (v29)
          {
            return result;
          }

          v26 = v17 - 1;
          *v10 = v17 - 1;
          v14 = v10 + 1;
          v16 = v27;
        }

        v18 = v28;
        if (v16)
        {
          v19 = 0;
          v20 = *v15;
          v21 = &v14[3 * v12 + 2];
          do
          {
            *(v21 - 4) = v20;
            *(v21 - 1) = *(v18 + 8 * v19);
            v18 = v28;
            *v21 = strlen(*(v28 + 8 * v19)) + 1;
            v21 += 3;
            ++v19;
          }

          while (v19 < v27);
          v12 += v19;
        }

        OOCAllocator_Free(*(a1 + 8), v18);
        a2 = v25;
      }

      else
      {
        result = __TranscriptionTokenizer_GetTranscriptionData(a1, a2 + 24 * v13, &v14[3 * v12]);
        v29 = result;
        if (result)
        {
          return result;
        }

        ++v12;
      }

      ++v13;
    }

    while (v13 != a3);
    result = v29;
    a4 = v23;
    a5 = v24;
    v22 = v26;
  }

  else
  {
    result = 0;
    v14 = 0;
    v22 = 0;
  }

  *a4 = v14;
  *a5 = v22;
  return result;
}

uint64_t __TranscriptionTokenizer_GetTranscriptionData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (*a2 == 1)
  {
    v6 = strlen(*(a2 + 8)) + 1;
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v7 = OOCAllocator_Malloc(*(a1 + 8), v6, &v10);
  *(a3 + 8) = v7;
  v8 = v10;
  if (!v10)
  {
    *a3 = *a2;
    memcpy(v7, *(a2 + 8), v6);
    *(a3 + 16) = v6;
    return v10;
  }

  return v8;
}

uint64_t TranscriptionTokenizer_ReturnTranscriptions(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2 - 8;
    v4 = *(a2 - 8);
    if (v4)
    {
      v5 = (a2 + 8);
      do
      {
        v6 = *v5;
        v5 += 3;
        OOCAllocator_Free(*(a1 + 8), v6);
        --v4;
      }

      while (v4);
    }

    OOCAllocator_Free(*(a1 + 8), v3);
  }

  return 0;
}

uint64_t PNEW_TranscriptionTokenizer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 24, &v8);
  result = v8;
  if (!v8)
  {
    result = TranscriptionTokenizer_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DestroySubDct(uint64_t a1, void *a2)
{
  v4 = DICT_Destruct(a2 + 7);
  if (!v4)
  {
    v5 = a2[3];
    if (v5)
    {
      OOCAllocator_Free(a1, v5);
    }

    v6 = a2[4];
    if (v6)
    {
      OOCAllocator_Free(a1, v6);
    }

    v7 = a2[5];
    if (v7)
    {
      OOCAllocator_Free(a1, v7);
    }

    v8 = a2[6];
    if (v8)
    {
      OOCAllocator_Free(a1, v8);
    }
  }

  return v4;
}

uint64_t edct_Close_RWDCT(uint64_t *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  if (*a1)
  {
    OOCAllocator_Free(a1[6], *a1);
  }

  v4 = a1[1];
  if (v4)
  {
    OOCAllocator_Free(v2, v4);
  }

  if (v3)
  {
    while (1)
    {
      v5 = v3[17];
      result = DestroySubDct(v2, v3);
      if (result)
      {
        break;
      }

      OOCAllocator_Free(v2, v3);
      v3 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    OOCAllocator_Free(v2, a1);
    return 0;
  }

  return result;
}

uint64_t edct_Close_RODCT(uint64_t a1)
{
  edct_Free_ROSUBDCT_List(*(a1 + 48), *(a1 + 56));
  OOCAllocator_Free(*(a1 + 48), a1);
  return 0;
}

uint64_t edct_Free_ROSUBDCT_List(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 80))
    {
      edct_Free_ROSUBDCT_List(result);
    }

    return OOCAllocator_Free(v3, a2);
  }

  return result;
}

uint64_t edct_GetEntryDataSpec_In_RWDCT(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v31 = 0;
  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  LODWORD(v9) = 0;
  v10 = 0;
  do
  {
    v11 = v4[3];
    if (v11)
    {
      LODWORD(v9) = v9 + strlen(v11) + 41;
    }

    else
    {
      LODWORD(v9) = v9 + 40;
    }

    v12 = v4[4];
    if (v12)
    {
      LODWORD(v9) = v9 + strlen(v12) + 1;
    }

    v13 = v4[6];
    if (v13)
    {
      LODWORD(v9) = v9 + strlen(v13) + 1;
    }

    if (v4[5])
    {
      v9 = (v9 + 128);
    }

    else
    {
      v9 = v9;
    }

    ++v10;
    v4 = v4[17];
  }

  while (v4);
  if (!v9)
  {
    return 0;
  }

  v14 = OOCAllocator_Malloc(a1, v9, &v31);
  result = v31;
  if (!v31)
  {
    v16 = *(a2 + 56);
    if (v16)
    {
      v17 = v14 + 40 * v10;
      v18 = v14 + 16;
      do
      {
        v19 = *(v16 + 8);
        v20 = *(v16 + 16);
        *(v18 - 8) = 0u;
        *(v18 - 16) = v19;
        *(v18 - 12) = v20;
        *(v18 + 8) = 0u;
        v21 = *(v16 + 24);
        if (v21)
        {
          *(v18 - 8) = v17;
          strcpy(v17, v21);
          v17 += strlen(*(v16 + 24)) + 1;
        }

        v22 = *(v16 + 32);
        if (v22)
        {
          *v18 = v17;
          strcpy(v17, v22);
          v17 += strlen(*(v16 + 32)) + 1;
        }

        v23 = *(v16 + 48);
        if (v23)
        {
          *(v18 + 16) = v17;
          strcpy(v17, v23);
          v17 += strlen(*(v16 + 48)) + 1;
        }

        v24 = *(v16 + 40);
        if (v24)
        {
          *(v18 + 8) = v17;
          v25 = *v24;
          v26 = v24[1];
          v27 = v24[3];
          *(v17 + 32) = v24[2];
          *(v17 + 48) = v27;
          *v17 = v25;
          *(v17 + 16) = v26;
          v28 = v24[4];
          v29 = v24[5];
          v30 = v24[7];
          *(v17 + 96) = v24[6];
          *(v17 + 112) = v30;
          *(v17 + 64) = v28;
          *(v17 + 80) = v29;
          v17 += 128;
        }

        v16 = *(v16 + 136);
        v18 += 40;
      }

      while (v16);
      result = v31;
    }

    else
    {
      result = 0;
    }

    *a3 = v14;
    *a4 = v10;
  }

  return result;
}

uint64_t edct_GetEntryDataSpec_In_RODCT(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v30 = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0;
  }

  LODWORD(v8) = 0;
  v9 = 0;
  do
  {
    v10 = v4[2];
    if (v10)
    {
      LODWORD(v8) = v8 + strlen(v10) + 41;
    }

    else
    {
      LODWORD(v8) = v8 + 40;
    }

    v11 = v4[3];
    if (v11)
    {
      LODWORD(v8) = v8 + strlen(v11) + 1;
    }

    v12 = v4[5];
    if (v12)
    {
      LODWORD(v8) = v8 + strlen(v12) + 1;
    }

    if (v4[4])
    {
      v8 = (v8 + 128);
    }

    else
    {
      v8 = v8;
    }

    ++v9;
    v4 = v4[10];
  }

  while (v4);
  if (!v8)
  {
    return 0;
  }

  v13 = OOCAllocator_Malloc(v3, v8, &v30);
  result = v30;
  if (!v30)
  {
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = v13 + 40 * v9;
      v17 = v13 + 16;
      do
      {
        v18 = *v15;
        if (!*v15)
        {
          v18 = v15[1];
        }

        *(v17 - 16) = *(v18 + 8);
        v19 = *(v18 + 16);
        *(v17 - 8) = 0u;
        *(v17 - 12) = v19;
        *(v17 + 8) = 0u;
        v20 = v15[2];
        if (v20)
        {
          *(v17 - 8) = v16;
          strcpy(v16, v20);
          v16 += strlen(v15[2]) + 1;
        }

        v21 = v15[3];
        if (v21)
        {
          *v17 = v16;
          strcpy(v16, v21);
          v16 += strlen(v15[3]) + 1;
        }

        v22 = v15[5];
        if (v22)
        {
          *(v17 + 16) = v16;
          strcpy(v16, v22);
          v16 += strlen(v15[5]) + 1;
        }

        v23 = v15[4];
        if (v23)
        {
          *(v17 + 8) = v16;
          v24 = *v23;
          v25 = v23[1];
          v26 = v23[3];
          *(v16 + 32) = v23[2];
          *(v16 + 48) = v26;
          *v16 = v24;
          *(v16 + 16) = v25;
          v27 = v23[4];
          v28 = v23[5];
          v29 = v23[7];
          *(v16 + 96) = v23[6];
          *(v16 + 112) = v29;
          *(v16 + 64) = v27;
          *(v16 + 80) = v28;
          v16 += 128;
        }

        v15 = v15[10];
        v17 += 40;
      }

      while (v15);
      result = v30;
    }

    else
    {
      result = 0;
    }

    *a2 = v13;
    *a3 = v9;
  }

  return result;
}

uint64_t edct_RemoveEntry_RWDCT(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v11 = -1;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v10 = 0;
      result = DICT_Remove(v2 + 56, a2, &v10, &v11);
      if (result)
      {
        return result;
      }

      if (!v11)
      {
        v9 = *(v2 + 4) - v10;
        --*v2;
        *(v2 + 4) = v9;
        v6 += v10;
        ++v5;
        v7 = 1;
      }

      v2 = *(v2 + 136);
    }

    while (v2);
    *(a1 + 24) -= v6;
    if (v5)
    {
      --*(a1 + 20);
      if (!v7)
      {
        return kaldi::OffsetFileInputImpl::MyType("szEntry");
      }

      return 0;
    }

    if (v7)
    {
      return 0;
    }
  }

  return kaldi::OffsetFileInputImpl::MyType("szEntry");
}

uint64_t edct_EntryFree_In_RWDCT(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v6 = a3 + (a4 << 6);
    v7 = a3;
    do
    {
      v8 = v7[2];
      if (v8 || (v8 = v7[3]) != 0 || (v8 = v7[4]) != 0 || (v8 = v7[5]) != 0)
      {
        OOCAllocator_Free(a1, v8);
      }

      OOCAllocator_Free(a1, v7[6]);
      v7 += 8;
    }

    while (v7 < v6);
  }

  OOCAllocator_Free(a1, a3);
  return 0;
}

uint64_t edct_EntryFree_In_RODCT(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = &a2[16 * a3];
    v6 = a2;
    do
    {
      if ((*a2 | 2) == 3)
      {
        OOCAllocator_Free(a1, *(v6 + 6));
      }

      v6 += 16;
    }

    while (v6 < v5);
  }

  return OOCAllocator_Free(a1, a2);
}

uint64_t edct_CheckEntryDataHealth(uint64_t a1)
{
  if (*a1 || *(a1 + 56) && **(a1 + 48))
  {
    return 0;
  }

  else
  {
    return kaldi::PipeInputImpl::MyType("Unexpected Data!");
  }
}

uint64_t edct_AddEntry_RWDCT(uint64_t a1, char *a2, int *a3, _DWORD *a4)
{
  v10 = -1;
  *a4 = 2;
  if (*a2)
  {
    result = edct_QuickEntryFind_RWDCT(a1, a2, &v10);
    if (!result)
    {
      if (v10 == 1)
      {
        ++*(a1 + 20);
        *a4 = 0;
      }

      SubDct = GetSubDct(a1, a3);
      v11 = SubDct;
      if (SubDct || (result = CreateSubDct(a1, &v11), !result) && (SubDct = v11, result = InitSubDct(v11, *(a1 + 48), a3), !result))
      {
        result = AddEntrySubDct(SubDct, a2, a3);
        if (!result)
        {
          ++*(a1 + 24);
        }
      }
    }
  }

  else
  {

    return kaldi::PipeInputImpl::MyType("empty string");
  }

  return result;
}

uint64_t edct_QuickEntryFind_RWDCT(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    while (1)
    {
      memset(v7, 0, sizeof(v7));
      *(v4 + 120) = -1;
      result = DICT_Find(v4 + 56, a2, v7, a3);
      if (result)
      {
        break;
      }

      if (!*a3)
      {
        return 0;
      }

      v4 = *(v4 + 136);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t GetSubDct(uint64_t a1, int *a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v2 + 8);
    if (v5 != -1 && v5 != v4)
    {
      goto LABEL_38;
    }

    v7 = *(v2 + 16);
    v8 = a2[2];
    if (v7 != -1 && v7 != v8)
    {
      goto LABEL_38;
    }

    v10 = *(v2 + 12);
    v11 = a2[1];
    if (v10 != -1 && v10 != v11)
    {
      goto LABEL_38;
    }

    v13 = *(v2 + 24);
    v14 = *(a2 + 2);
    if (v13 && v14)
    {
      if (strcmp(v13, v14))
      {
        goto LABEL_38;
      }
    }

    else if (v13 != v14)
    {
      goto LABEL_38;
    }

    v15 = *(v2 + 32);
    v16 = *(a2 + 3);
    if (v15 && v16)
    {
      if (strcmp(v15, v16))
      {
        goto LABEL_38;
      }
    }

    else if (v15 != v16)
    {
      goto LABEL_38;
    }

    v17 = *(v2 + 48);
    v18 = *(a2 + 5);
    if (v17 && v18)
    {
      if (strcmp(v17, v18))
      {
        goto LABEL_38;
      }
    }

    else if (v17 != v18)
    {
      goto LABEL_38;
    }

    v19 = *(v2 + 40);
    v20 = *(a2 + 4);
    if (!v19 || !v20)
    {
      break;
    }

    if (!memcmp(v19, v20, 0x80uLL))
    {
      goto LABEL_40;
    }

LABEL_38:
    v2 = *(v2 + 136);
    if (!v2)
    {
      return v2;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_38;
  }

LABEL_40:
  if ((v7 & v5 & v10) == 0xFFFFFFFF)
  {
    *(v2 + 8) = v4;
    *(v2 + 12) = v11;
    *(v2 + 16) = v8;
  }

  return v2;
}

uint64_t CreateSubDct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v3 = (a1 + 56);
  v4 = *(a1 + 56);
  v5 = OOCAllocator_Calloc(*(a1 + 48), 1, 144, &v8);
  result = v8;
  if (!v8)
  {
    if (v4)
    {
      do
      {
        v7 = v4;
        v4 = *(v4 + 136);
      }

      while (v4);
      v3 = (v7 + 136);
    }

    *v3 = v5;
    *(v5 + 136) = 0;
    *a2 = v5;
  }

  return result;
}

uint64_t InitSubDct(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v27 = 0;
  *a1 = 0;
  *(a1 + 16) = *(a3 + 2);
  v6 = *a3;
  *(a1 + 24) = 0u;
  v7 = (a1 + 24);
  *(a1 + 8) = v6;
  *(a1 + 40) = 0u;
  v8 = a3[2];
  if (v8)
  {
    v9 = strlen(v8);
    v10 = OOCAllocator_Malloc(a2, v9 + 1, &v27);
    *v7 = v10;
    v11 = v27;
    if (v27)
    {
      return v11;
    }

    strcpy(v10, a3[2]);
  }

  v12 = a3[3];
  if (v12)
  {
    v13 = strlen(v12);
    v14 = OOCAllocator_Malloc(a2, v13 + 1, &v27);
    *(a1 + 32) = v14;
    v11 = v27;
    if (v27)
    {
      return v11;
    }

    strcpy(v14, a3[3]);
  }

  if (a3[4])
  {
    v15 = OOCAllocator_Malloc(a2, 129, &v27);
    *(a1 + 40) = v15;
    v11 = v27;
    if (v27)
    {
      return v11;
    }

    v16 = a3[4];
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v15[2] = v16[2];
    v15[3] = v19;
    *v15 = v17;
    v15[1] = v18;
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[7];
    v15[6] = v16[6];
    v15[7] = v22;
    v15[4] = v20;
    v15[5] = v21;
    *(*(a1 + 40) + 128) = 0;
  }

  v23 = a3[5];
  if (!v23)
  {
    return DICT_Init(a1 + 56, a2, 10000, 50000);
  }

  v24 = strlen(v23);
  v25 = OOCAllocator_Malloc(a2, v24 + 1, &v27);
  *(a1 + 48) = v25;
  v11 = v27;
  if (!v27)
  {
    strcpy(v25, a3[5]);
    return DICT_Init(a1 + 56, a2, 10000, 50000);
  }

  return v11;
}

uint64_t AddEntrySubDct(_DWORD *a1, char *a2, uint64_t a3)
{
  v5 = -1;
  result = DICT_Add((a1 + 14), a2, *(a3 + 48), *(a3 + 56), &v5);
  if (!result)
  {
    if (v5)
    {
      ++*a1;
    }

    ++a1[1];
  }

  return result;
}

uint64_t edct_Open_RODCT(uint64_t a1, int *a2, uint64_t *a3)
{
  v49 = 0;
  v4 = (a2 + 6);
  v3 = *a2;
  *a3 = 0;
  v5 = v3 & 0xFFFFFF;
  if ((v3 & 0xFFFFFFu) - 8 >= 0xFFFFFFFE && !a2[2])
  {
    v10 = OOCAllocator_Calloc(a1, 1, 64, &v49);
    result = v49;
    if (v49)
    {
      return result;
    }

    *(v10 + 32) = 1;
    *(v10 + 48) = a1;
    *(v10 + 20) = *(a2 + 3);
    v11 = strlen(v4);
    v12 = (v11 + 1);
    if (v11)
    {
      v13 = v4;
    }

    else
    {
      v13 = 0;
    }

    *v10 = v13;
    v14 = &v4[v12];
    v15 = strlen(&v4[v12]);
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v45 = v10;
    *(v10 + 8) = v16;
    v17 = a2[5];
    if (!v17)
    {
      goto LABEL_55;
    }

    v18 = OOCAllocator_Calloc(a1, 1, 88, &v49);
    *(v10 + 56) = v18;
    result = v49;
    if (v49)
    {
      return result;
    }

    v48 = v18;
    v19 = a2[5];
    if (!v19)
    {
LABEL_55:
      result = 0;
      *a3 = v45;
      return result;
    }

    v20 = 0;
    v47 = &v14[v15 + 1 + (((v14 + v15 + 1) ^ (2 * (v14 + v15 + 1))) & 3)];
    v46 = &v47[4 * v17];
    v21 = v18;
    while (1)
    {
      v22 = &v46[*&v47[4 * v20]];
      if (v5 == 6)
      {
        break;
      }

      v21[1] = v22;
      v23 = v22 + 52;
      if (*v21)
      {
        v22 = *v21;
        goto LABEL_21;
      }

      if (*(v22 + 5))
      {
        v21[2] = v23;
        v23 += strlen(v22 + 52) + 1;
      }

      else
      {
        v21[2] = 0;
      }

      if (*(v22 + 6))
      {
        v21[3] = v23;
        v23 += strlen(v23) + 1;
      }

      else
      {
        v21[3] = 0;
      }

      v40 = *(v22 + 7);
      v41 = *(v22 + 8);
      v42 = v40 == 0;
      if (v40)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      v44 = 129;
      if (v42)
      {
        v44 = 0;
      }

      v29 = &v23[v44];
      v21[4] = v43;
      if (!v41)
      {
        v32 = &v29[(v29 ^ (2 * v29)) & 3];
        v21[5] = 0;
        v21[6] = v32;
        goto LABEL_33;
      }

      v22 = 0;
      v30 = 1;
LABEL_31:
      v21[5] = v29;
      v31 = strlen(v29);
      v32 = &v29[v31 + 1 + (((v31 + v29 + 1) ^ (2 * (v31 + v29 + 1))) & 3)];
      v21[6] = v32;
      if (!v30)
      {
        goto LABEL_35;
      }

      v22 = v21[1];
LABEL_33:
      v33 = (v32 + 4 * *(v22 + 9));
      v34 = *v33++;
      v35 = v33 + v34 + (((v33 + v34) ^ (2 * (v33 + v34))) & 3);
      v21[7] = v33;
      v21[8] = v35;
      v36 = (v21[1] + 36);
LABEL_36:
      v21[9] = &v35[4 * *v36 + 4];
      if (++v20 < v19)
      {
        v21 = OOCAllocator_Calloc(a1, 1, 88, &v49);
        v48[10] = v21;
        result = v49;
        if (v49)
        {
          return result;
        }

        v19 = a2[5];
        v48 = v21;
      }

      if (v20 >= v19)
      {
        goto LABEL_55;
      }
    }

    *v21 = v22;
    v23 = v22 + 48;
LABEL_21:
    if (*(v22 + 5))
    {
      v21[2] = v23;
      v23 += strlen(v23) + 1;
    }

    else
    {
      v21[2] = 0;
    }

    v24 = *(v22 + 6);
    v25 = *(v22 + 7);
    v26 = v24 == 0;
    if (v24)
    {
      v27 = v23;
    }

    else
    {
      v27 = 0;
    }

    v28 = 129;
    if (v26)
    {
      v28 = 0;
    }

    v29 = &v23[v28];
    v21[3] = 0;
    v21[4] = v27;
    if (!v25)
    {
      v32 = &v29[(v29 ^ (2 * v29)) & 3];
      v21[5] = 0;
      v21[6] = v32;
LABEL_35:
      v37 = *(v22 + 8);
      v36 = (v22 + 32);
      v38 = (v32 + 4 * v37);
      v39 = *v38++;
      v35 = v38 + v39 + (((v38 + v39) ^ (2 * (v38 + v39))) & 3);
      v21[7] = v38;
      v21[8] = v35;
      goto LABEL_36;
    }

    v30 = 0;
    goto LABEL_31;
  }

  return kaldi::OffsetFileInputImpl::MyType("pDctBuf");
}

uint64_t edct_Open_RWDCT(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Calloc(a1, 1, 72, &v8);
  result = v8;
  if (!v8)
  {
    *(v6 + 32) = 0;
    *(v6 + 20) = 0;
    *(v6 + 24) = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 48) = a1;
    if (!a2 || (result = DctFromArchive(v6, a2), !result))
    {
      result = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t GetNbrSubDct(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 136);
  }

  while (v1);
  return result;
}

uint64_t edct_EntryLookup_In_RODCT(char *__s1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  v57 = 0;
  v5 = *(a3 + 56);
  if (!v5)
  {
    result = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_65;
  }

  v6 = a2;
  v47 = a4;
  v48 = a5;
  v8 = 0;
  v9 = 0;
  v50 = *(a3 + 48);
  do
  {
    v58 = 0;
    v10 = *v5;
    v56 = v8;
    if (*v5)
    {
      v11 = v10 + 8;
      v12 = *v5;
    }

    else
    {
      v12 = v5[1];
      v11 = v12 + 9;
    }

    v13 = v12[2];
    v52 = v12[4];
    v53 = v12[3];
    v14 = v5[2];
    v54 = v5[4];
    __s2 = v5[5];
    v15 = v5[6];
    v16 = v5[7];
    v17 = *v11;
    if (v6)
    {
      v18 = *(v6 + 8);
      if (v18)
      {
        if (!v14 || strcmp(v18, v14))
        {
          goto LABEL_36;
        }
      }

      v19 = *(v6 + 32);
      if (v19)
      {
        if (__s2 && strcmp(v19, __s2))
        {
          goto LABEL_36;
        }
      }

      v20 = *(v6 + 24);
      if (v20)
      {
        if (v54 && memcmp(v20, v54, 0x80uLL))
        {
          goto LABEL_36;
        }
      }

      if (*v6 != -1)
      {
        v21 = v10;
        if (!v10)
        {
          v21 = v5[1];
        }

        if (*v6 != v21[2])
        {
          goto LABEL_36;
        }
      }

      v22 = *(v6 + 4);
      if (v22 != -1)
      {
        v23 = v10;
        if (!v10)
        {
          v23 = v5[1];
        }

        if (v22 != v23[4])
        {
          goto LABEL_36;
        }
      }
    }

    v24 = v10 ? v10 + 8 : (v5[1] + 36);
    if (!*v24)
    {
      goto LABEL_36;
    }

    v49 = v13;
    v25 = v17 - 1;
    v26 = strcmp(__s1, (v16 + *v15));
    v27 = strcmp(__s1, (v16 + v15[v17 - 1]));
    v28 = 0;
    LODWORD(v29) = 0;
    if ((v26 & 0x80000000) == 0 && v27 <= 0)
    {
      v30 = 0;
      while (1)
      {
        v31 = (v25 + v30) >> 1;
        v32 = strcmp(__s1, (v16 + v15[v31]));
        if (!v32)
        {
          break;
        }

        if (v32 > 0)
        {
          v30 = v31 + 1;
        }

        else
        {
          v25 = v31 - 1;
        }

        if (v30 > v25)
        {
          goto LABEL_36;
        }
      }

      v34 = v5[8];
      v35 = *(v34 + 4 * v31);
      v36 = *(v34 + 4 * (v31 + 1));
      if (v36 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = -v36;
      }

      if ((v35 & 0x80000000) != 0)
      {
        v40 = v5[9];
        v41 = (((v40 - v35) & 1) + v40 - v35);
        v42 = v40 + v37;
        v43 = v41 + 2;
        if ((v41 + 2) < v42)
        {
          v28 = 0;
          LODWORD(v29) = 0;
          while (1)
          {
            v29 = (v29 + 1);
            v28 = OOCAllocator_Realloc(v50, v28, v29 << 6, &v58);
            result = v58;
            if (v58)
            {
              break;
            }

            v44 = &v28[16 * v29];
            *(v44 - 16) = v49;
            *(v44 - 15) = v53;
            *(v44 - 14) = v52;
            *(v44 - 6) = v14;
            *(v44 - 4) = v54;
            *(v44 - 3) = __s2;
            v45 = *v41;
            *(v44 - 2) = v45;
            if ((*v28 | 2) == 3)
            {
              v46 = OOCAllocator_Malloc(v50, v45, &v58);
              result = v58;
              if (v58)
              {
                break;
              }

              *(v44 - 2) = v46;
              memcpy(v46, v43, *(v44 - 2) & 0xFFFFFFFE);
              v45 = *v41;
            }

            else
            {
              *(v44 - 2) = v43;
            }

            v41 = &v43[v45 + (&v43[v45] & 1)];
            v43 = v41 + 2;
            if ((v41 + 2) >= v42)
            {
              goto LABEL_37;
            }
          }

LABEL_63:
          a4 = v47;
          a5 = v48;
          v8 = v56;
          goto LABEL_65;
        }

LABEL_36:
        LODWORD(v29) = 0;
        v28 = 0;
        goto LABEL_37;
      }

      v28 = OOCAllocator_Malloc(v50, 64, &v58);
      result = v58;
      if (v58)
      {
        goto LABEL_63;
      }

      *v28 = v49;
      v28[1] = v53;
      v28[2] = v52;
      *(v28 + 2) = v14;
      *(v28 + 4) = v54;
      *(v28 + 5) = __s2;
      v38 = v37 - v35;
      v28[14] = v38;
      if ((v49 | 2) == 3)
      {
        v39 = OOCAllocator_Malloc(v50, v38, &v58);
        result = v58;
        if (v58)
        {
          goto LABEL_63;
        }

        *(v28 + 6) = v39;
        memcpy(v39, (v5[9] + v35), v28[14] & 0xFFFFFFFE);
      }

      else
      {
        *(v28 + 6) = v5[9] + v35;
      }

      LODWORD(v29) = 1;
    }

LABEL_37:
    result = v58;
    v57 = v58;
    if (v58)
    {
      goto LABEL_63;
    }

    v8 = v56;
    if (v29)
    {
      v9 = OOCAllocator_Realloc(v50, v9, (v29 + v56) << 6, &v57);
      result = v57;
      if (v57)
      {
        goto LABEL_64;
      }

      memcpy((v9 + (v56 << 6)), v28, v29 << 6);
      OOCAllocator_Free(v50, v28);
      v8 = v29 + v56;
    }

    v5 = v5[10];
    v6 = a2;
  }

  while (v5);
  result = v57;
LABEL_64:
  a4 = v47;
  a5 = v48;
LABEL_65:
  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t edct_EntryLookup_In_RWDCT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  v8 = *(a4 + 56);
  v24 = -1;
  v25 = 0;
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v22[0] = 0;
      v22[1] = 0;
      v23 = 0;
      if (!a3)
      {
        break;
      }

      if (*a3 == -1 || *a3 == *(v8 + 8))
      {
        v14 = *(a3 + 4);
        if (v14 == -1 || v14 == *(v8 + 16))
        {
          v15 = *(a3 + 8);
          if (!v15 || (v16 = *(v8 + 24)) != 0 && !strcmp(v15, v16))
          {
            v17 = *(a3 + 32);
            if (!v17 || (v18 = *(v8 + 48)) == 0 || !strcmp(v17, v18))
            {
              v19 = *(a3 + 24);
              if (!v19)
              {
                break;
              }

              v20 = *(v8 + 40);
              if (!v20 || !memcmp(v19, v20, 0x80uLL))
              {
                break;
              }
            }
          }
        }
      }

LABEL_24:
      v8 = *(v8 + 136);
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    *(v8 + 120) = -1;
    while (1)
    {
      result = DICT_Find(v8 + 56, a2, v22, &v24);
      v25 = result;
      if (result)
      {
        break;
      }

      if (!v24)
      {
        v13 = OOCAllocator_Realloc(a1, v13, (v12 + 1) << 6, &v25);
        result = v25;
        if (v25)
        {
          return result;
        }

        result = edct_CopyFoundMatch(a1, v13 + (v12 << 6), v8, v22);
        v25 = result;
        if (result)
        {
          return result;
        }

        ++v12;
      }

      if (HIDWORD(v23) != 1)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
LABEL_27:
    result = 0;
    *a5 = v13;
    *a6 = v12;
  }

  return result;
}

uint64_t edct_CopyFoundMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v8 = *(a3 + 24);
  if (v8)
  {
    v9 = strlen(v8) + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 32);
  if (v10)
  {
    v9 += strlen(v10) + 1;
  }

  v11 = *(a3 + 48);
  if (*(a3 + 40))
  {
    v9 += 128;
  }

  if (v11)
  {
    v9 += strlen(v11) + 1;
  }

  if (!v9)
  {
    v12 = 0;
    v16 = 0;
    v17 = 0;
LABEL_15:
    v18 = 0;
    goto LABEL_25;
  }

  v12 = OOCAllocator_Malloc(a1, v9, &v30);
  result = v30;
  if (v30)
  {
    return result;
  }

  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = strcpy(v12, v14);
    v16 = &v12[strlen(v15) + 1];
  }

  else
  {
    v16 = v12;
    v12 = 0;
  }

  v19 = *(a3 + 32);
  if (v19)
  {
    v20 = strcpy(v16, v19);
    v17 = &v16[strlen(v20) + 1];
  }

  else
  {
    v17 = v16;
    v16 = 0;
  }

  v21 = *(a3 + 40);
  if (v21)
  {
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[3];
    *(v17 + 2) = v21[2];
    *(v17 + 3) = v24;
    *v17 = v22;
    *(v17 + 1) = v23;
    v25 = v21[4];
    v26 = v21[5];
    v27 = v21[7];
    *(v17 + 6) = v21[6];
    *(v17 + 7) = v27;
    *(v17 + 4) = v25;
    *(v17 + 5) = v26;
    v18 = v17 + 128;
  }

  else
  {
    v18 = v17;
    v17 = 0;
  }

  v28 = *(a3 + 48);
  if (!v28)
  {
    goto LABEL_15;
  }

  strcpy(v18, v28);
LABEL_25:
  v29 = OOCAllocator_Malloc(a1, *(a4 + 16), &v30);
  result = v30;
  if (!v30)
  {
    memcpy(v29, *(a4 + 8), *(a4 + 16));
    *a2 = *(a3 + 8);
    *(a2 + 16) = v12;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
    *(a2 + 8) = *(a3 + 16);
    *(a2 + 48) = v29;
    *(a2 + 56) = *(a4 + 16);
    return v30;
  }

  return result;
}

uint64_t srvspi_MemblockInit(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return kaldi::OffsetFileInputImpl::MyType("pBlock");
  }

  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  return 0;
}

uint64_t srvspi_MemblockAlign(int *a1, unsigned int a2)
{
  if (!a1)
  {
    return kaldi::OffsetFileInputImpl::MyType("pBlock");
  }

  v2 = *a1;
  v3 = *a1 % a2;
  v4 = v3 ? a2 - v3 : 0;
  if (*(a1 + 1) && a1[1] < (v4 + v2))
  {
    return kaldi::OffsetFileInputImpl::MyType("pBlock");
  }

  if (v4)
  {
    *a1 = v4 + v2;
  }

  return 0;
}

uint64_t srvspi_MemblockAlloc(unsigned int *a1, int a2, void *a3)
{
  if (!a1)
  {
    return kaldi::OffsetFileInputImpl::MyType("pBlock");
  }

  if (a3)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      v3 += *a1;
    }

    *a3 = v3;
  }

  v4 = *a1 + a2;
  *a1 = v4;
  if (!*(a1 + 1) || a1[1] >= v4)
  {
    return 0;
  }

  else
  {
    return kaldi::OffsetFileInputImpl::MyType("pBlock");
  }
}

uint64_t srvspi_MemblockGetUsed(_DWORD *a1, _DWORD *a2)
{
  if (!a1)
  {
    return kaldi::OffsetFileInputImpl::MyType("pBlock");
  }

  if (!a2)
  {
    return kaldi::OffsetFileInputImpl::MyType("pulUsed");
  }

  *a2 = *a1;
  return 0;
}

uint64_t edct_DctArchive(uint64_t a1, char *a2, int *a3, int a4)
{
  if (!a4 && *(a1 + 44) == 1 || *(a1 + 32) == 1)
  {
    return kaldi::OffsetFileInputImpl::MyType("pDct");
  }

  else
  {
    return DctArchive(a1, a2, a3, a4);
  }
}

uint64_t edct_DctFreeAllEntryDataSpec(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  return edct_FreeEntryDataSpec_In_RWDCT(*(a1 + 48), a1, a2);
}

uint64_t edct_DctAddEntry(uint64_t a1, char *a2, int *a3, unsigned int a4)
{
  if (*(a1 + 32) == 1)
  {

    return kaldi::OffsetFileInputImpl::MyType("pDct");
  }

  else if (a4)
  {
    v5 = a3;
    v8 = &a3[16 * a4];
    while (1)
    {
      v9 = 0;
      result = edct_CheckEntryDataHealth(v5);
      if (result)
      {
        break;
      }

      result = edct_AddEntry_RWDCT(a1, a2, v5, &v9);
      if (result)
      {
        break;
      }

      v5 += 16;
      if (v5 >= v8)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t edct_DctOpen(uint64_t a1, int *a2, int a3, uint64_t *a4)
{
  v13 = a2;
  v12 = 0;
  if (!a2)
  {
    goto LABEL_7;
  }

  result = DctDecryptArchive(&v13, &v12);
  if (result)
  {
    return result;
  }

  v8 = v13;
  if (!v13)
  {
LABEL_7:
    if (a3 == 1)
    {
      result = kaldi::OffsetFileInputImpl::MyType("bReadOnly");
      if (result)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = a1;
    v8 = 0;
    v10 = a4;
LABEL_11:
    result = edct_Open_RWDCT(v9, v8, v10);
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v9 = a1;
  v10 = a4;
  if (a3 != 1)
  {
    goto LABEL_11;
  }

  result = edct_Open_RODCT(a1, v13, a4);
  if (result)
  {
    return result;
  }

LABEL_12:
  result = 0;
  v11 = *a4;
  v11[9] = 0;
  v11[10] = 0;
  v11[11] = v12;
  return result;
}

uint64_t edct_DctGetEntryData(uint64_t a1, char *__s1, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  *a4 = 0;
  *a5 = 0;
  if (*(a1 + 32) == 1)
  {
    return edct_EntryLookup_In_RODCT(__s1, a3, a1, a4, a5);
  }

  else
  {
    return edct_EntryLookup_In_RWDCT(*(a1 + 48), __s1, a3, a1, a4, a5);
  }
}

uint64_t edct_DctRemoveEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    return kaldi::OffsetFileInputImpl::MyType("pDct");
  }

  else
  {
    return edct_RemoveEntry_RWDCT(a1, a2);
  }
}

uint64_t edct_DctFreeEntryData(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (v7 == 1)
  {
    edct_EntryFree_In_RODCT(v8, a2, a3);
    return 0;
  }

  return edct_EntryFree_In_RWDCT(v8, a1, a2, a3);
}

uint64_t edct_DctGetInfo(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 20);
  if (*(a1 + 32))
  {
    *a2 = v4;
    *(a2 + 8) = v5;
LABEL_3:
    *(a2 + 20) = v6;
    *(a2 + 16) = *(a1 + 44);
    return v13;
  }

  v8 = *(a1 + 48);
  if (v5)
  {
    v9 = strlen(*(a1 + 8));
    v10 = OOCAllocator_Malloc(v8, v9 + 1, &v13);
    *(a2 + 8) = v10;
    result = v13;
    if (v13)
    {
      return result;
    }

    strcpy(v10, v5);
    if (!v4)
    {
LABEL_8:
      *a2 = 0;
      goto LABEL_3;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v11 = strlen(v4);
  v12 = OOCAllocator_Malloc(v8, v11 + 1, &v13);
  *a2 = v12;
  result = v13;
  if (!v13)
  {
    strcpy(v12, v4);
    goto LABEL_3;
  }

  return result;
}

uint64_t edct_DctFreeInfo(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 32))
  {
    v4 = a2[1];
    if (v4)
    {
      OOCAllocator_Free(*(a1 + 48), v4);
    }

    if (*a2)
    {
      OOCAllocator_Free(*(a1 + 48), *a2);
    }
  }

  return 0;
}

uint64_t edct_DctGetAllEntryDataSpec(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 32) == 1)
  {
    return edct_GetEntryDataSpec_In_RODCT(a1, a2, a3);
  }

  else
  {
    return edct_GetEntryDataSpec_In_RWDCT(*(a1 + 48), a1, a2, a3);
  }
}

uint64_t edct_DctClose(uint64_t a1)
{
  if (*(a1 + 36))
  {
    return kaldi::OffsetFileInputImpl::MyType("pDct");
  }

  if (*(a1 + 32) == 1)
  {
    return edct_Close_RODCT(a1);
  }

  return edct_Close_RWDCT(a1);
}

uint64_t edct_DctInitSubDctFromTransSpec(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  result = CreateSubDct(a1, &v5);
  if (!result)
  {
    return InitSubDct(v5, *(a1 + 48), a2);
  }

  return result;
}

uint64_t DctIt_RO_Open(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Calloc(a1, 1, 80, &v7);
  result = v7;
  if (!v7)
  {
    *(v5 + 64) = *(a2 + 56);
    *(v5 + 72) = 0;
    *a3 = v5;
  }

  return result;
}

uint64_t DctIt_RO_HasEnded(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 72);
    while (1)
    {
      v3 = (*v1 ? *v1 + 32 : v1[1] + 36);
      if (v2 != *v3)
      {
        break;
      }

      v2 = 0;
      v1 = v1[10];
      *(a1 + 64) = v1;
      *(a1 + 72) = 0;
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *(a1 + 40) = 1;
  }

  return 0;
}

uint64_t DctIt_RO_Increment(uint64_t a1)
{
  v1 = *(a1 + 72) + 1;
  *(a1 + 72) = v1;
  v2 = *(a1 + 64);
  do
  {
    if (*v2)
    {
      v3 = (*v2 + 32);
    }

    else
    {
      v3 = (v2[1] + 36);
    }

    if (v1 != *v3)
    {
      break;
    }

    v1 = 0;
    v2 = v2[10];
    *(a1 + 64) = v2;
    *(a1 + 72) = 0;
    *(a1 + 48) = 1;
  }

  while (v2);
  return 0;
}

uint64_t DctIt_RO_Current(uint64_t a1)
{
  v29 = 0;
  v2 = *a1;
  v3 = *(a1 + 64);
  v4 = *v3;
  if (!*v3)
  {
    v4 = v3[1];
  }

  v27 = v4[3];
  v28 = v4[2];
  v26 = v4[4];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *(a1 + 24) = 0;
  v9 = v3[8];
  v10 = *(a1 + 72);
  v11 = *(v9 + 4 * v10);
  *(a1 + 16) = 0;
  v12 = *(v9 + 4 * (v10 + 1));
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v16 = v3[9];
    v17 = (((v16 + -v11) & 1) + v16 + -v11);
    v18 = v16 + v13;
    v19 = v17 + 1;
    if ((v17 + 1) < v18)
    {
      LODWORD(v20) = 0;
      v21 = 0;
      do
      {
        if (*(a1 + 56))
        {
          v22 = OOCAllocator_Realloc(v2, v21, (v20 + 1) << 6, &v29);
          *(a1 + 16) = v22;
          v15 = v29;
          if (v29)
          {
            return v15;
          }

          v21 = v22;
          v20 = *(a1 + 24);
          v23 = v22 + (v20 << 6);
          *v23 = v28;
          *(v23 + 4) = v27;
          *(v23 + 8) = v26;
          *(v23 + 16) = v5;
          *(v23 + 24) = v6;
          *(v23 + 32) = v7;
          *(v23 + 40) = v8;
          v24 = *v17;
          *(v23 + 56) = v24;
          *(v23 + 48) = v19;
        }

        else
        {
          v24 = *v17;
        }

        v17 = (v19 + v24 + ((v19 + v24) & 1));
        LODWORD(v20) = v20 + 1;
        *(a1 + 24) = v20;
        v19 = v17 + 1;
      }

      while ((v17 + 1) < v18);
    }

    goto LABEL_18;
  }

  if (!*(a1 + 56))
  {
LABEL_10:
    *(a1 + 24) = 1;
LABEL_18:
    *(a1 + 32) = v3[7] + *(v3[6] + 4 * *(a1 + 72));
    return v29;
  }

  v14 = OOCAllocator_Malloc(v2, 64, &v29);
  *(a1 + 16) = v14;
  v15 = v29;
  if (!v29)
  {
    *v14 = v28;
    *(v14 + 4) = v27;
    *(v14 + 8) = v26;
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = v3[9] + v11;
    *(v14 + 56) = v13 - v11;
    goto LABEL_10;
  }

  return v15;
}

uint64_t DctIt_RO_FreeLastItem(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    OOCAllocator_Free(*a1, v1);
    a1[2] = 0;
  }

  return 0;
}

uint64_t DctIt_RW_Open(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v5 = OOCAllocator_Calloc(a1, 1, 144, &v8);
  result = v8;
  if (!v8)
  {
    v7 = *(a2 + 56);
    *(v5 + 64) = v7;
    if (!v7 || (result = DICTITT_Init(v5 + 72, (v7 + 56)), !result))
    {
      result = 0;
      *a3 = v5;
    }
  }

  return result;
}

uint64_t DctIt_RW_Close(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return ARRAY_Flush(a1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t DctIt_RW_HasEnded(uint64_t a1)
{
  if (*(a1 + 64))
  {
    while (!*(a1 + 80) && *(a1 + 136) == -1)
    {
      result = ARRAY_Flush(a1 + 96);
      if (result)
      {
        return result;
      }

      v3 = *(*(a1 + 64) + 136);
      *(a1 + 64) = v3;
      if (!v3)
      {
        goto LABEL_8;
      }

      result = DICTITT_Init(a1 + 72, (v3 + 56));
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    result = 0;
    *(a1 + 40) = 1;
  }

  return result;
}

uint64_t DctIt_RW_Increment(uint64_t a1)
{
  if (*(a1 + 136) != -1 || (result = BINTREEITT_Inc((a1 + 80)), !result))
  {
    for (; !*(a1 + 80); *(a1 + 48) = 1)
    {
      if (*(a1 + 136) != -1)
      {
        break;
      }

      result = ARRAY_Flush(a1 + 96);
      if (result)
      {
        return result;
      }

      v3 = *(*(a1 + 64) + 136);
      *(a1 + 64) = v3;
      if (!v3)
      {
        break;
      }

      result = DICTITT_Init(a1 + 72, (v3 + 56));
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DctIt_RW_Current(uint64_t a1)
{
  found = 0;
  __s[0] = 0;
  __s[1] = 0;
  v9 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  while (1)
  {
    DICTITT_Current((a1 + 72), &v6);
    *__s = v6;
    v9 = v7;
    if (*(a1 + 56))
    {
      v2 = OOCAllocator_Realloc(*a1, *(a1 + 16), (*(a1 + 24) + 1) << 6, &found);
      *(a1 + 16) = v2;
      if (found)
      {
        break;
      }

      found = edct_CopyFoundMatch(*a1, v2 + (*(a1 + 24) << 6), *(a1 + 64), __s);
      if (found)
      {
        break;
      }
    }

    ++*(a1 + 24);
    if (HIDWORD(v9) != 1)
    {
      if (*(a1 + 52))
      {
        v3 = strlen(__s[0]);
        v4 = OOCAllocator_Malloc(*a1, v3 + 1, &found);
        *(a1 + 32) = v4;
        if (!found)
        {
          strcpy(v4, __s[0]);
        }
      }

      return found;
    }
  }

  return found;
}

uint64_t DctIt_RW_FreeLastItem(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    OOCAllocator_Free(*a1, v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    result = edct_EntryFree_In_RWDCT(*a1, *(a1 + 8), v3, *(a1 + 24));
    if (result)
    {
      return result;
    }

    *(a1 + 16) = 0;
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

double edct_DctItOpen(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (a2[11] != 1)
  {
    if (a2[8])
    {
      if (DctIt_RO_Open(a1, a2, a3))
      {
        return result;
      }

      v8 = *a3;
      *(v8 + 40) = 0;
      if (DctIt_RO_HasEnded(v8))
      {
        return result;
      }
    }

    else
    {
      ++a2[10];
      if (DctIt_RW_Open(a1, a2, a3))
      {
        return result;
      }

      v9 = *a3;
      *(v9 + 40) = 0;
      if (DctIt_RW_HasEnded(v9))
      {
        return result;
      }
    }

    **a3 = a1;
    *(*a3 + 8) = a2;
    *(*a3 + 32) = 0;
    *(*a3 + 16) = 0;
    v10 = *a3;
    *(v10 + 24) = 0;
    *&result = 0x100000000;
    *(v10 + 44) = 0x100000000;
    return result;
  }

  kaldi::OffsetFileInputImpl::MyType("pDct");
  return result;
}

uint64_t edct_DctItClose(uint64_t *a1)
{
  v2 = a1[1];
  if (*(v2 + 32))
  {
    result = DctIt_RO_FreeLastItem(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  --*(v2 + 40);
  result = DctIt_RW_FreeLastItem(a1);
  if (!result)
  {
    result = DctIt_RW_Close(a1);
    if (!result)
    {
LABEL_3:
      OOCAllocator_Free(*a1, a1);
      return 0;
    }
  }

  return result;
}

uint64_t edct_DctItCurrent(uint64_t a1, void *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  if (a2)
  {
    *(a1 + 52) = 1;
  }

  if (a3)
  {
    *(a1 + 56) = 1;
  }

  if (*(a1 + 40))
  {

    return kaldi::OffsetFileInputImpl::MyType("pDctIt");
  }

  else
  {
    if (!*(a1 + 44))
    {
      if (*(*(a1 + 8) + 32))
      {
        result = DctIt_RO_Current(a1);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = DctIt_RW_Current(a1);
        if (result)
        {
          return result;
        }
      }
    }

    if (a2)
    {
      *a2 = *(a1 + 32);
    }

    if (a3)
    {
      *a3 = *(a1 + 16);
    }

    if (a4)
    {
      *a4 = *(a1 + 24);
    }

    if (a5)
    {
      *a5 = *(a1 + 48);
    }

    result = 0;
    *(a1 + 44) = 1;
  }

  return result;
}

uint64_t edct_DctItIncrement(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    if (*(*(a1 + 8) + 32))
    {
      result = DctIt_RO_FreeLastItem(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RO_Increment(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RO_HasEnded(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DctIt_RW_FreeLastItem(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RW_Increment(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RW_HasEnded(a1);
      if (result)
      {
        return result;
      }
    }

    result = 0;
    *(a1 + 44) = 0;
    return result;
  }

  return kaldi::OffsetFileInputImpl::MyType("pDctIt");
}

uint64_t CDSObject_Con(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, _DWORD *a5)
{
  result = CDSBase_Con(a1, a2, a3, a4, a5);
  if (!result)
  {
    *a1 = &__CDSObject;
    a1[19] = &unk_1F42D2070;
    a1[20] = &unk_1F42D20A8;
    a1[21] = &unk_1F42D20D0;
    a1[22] = &unk_1F42D20E8;
    a1[3] = &unk_1F42D2028;

    return __CDSObject_Init(a1, a2);
  }

  return result;
}

uint64_t __CDSObject_Init(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  *(a1 + 200) = 0;
  v4 = OOCAllocator_Calloc(a2, 1, 40, &v7);
  *(a1 + 184) = v4;
  v5 = v7;
  if (!v7)
  {
    *v4 = a1 + 144;
    return PNEW_TranscriptionTokenizer_Con(a2, a2, (a1 + 192));
  }

  return v5;
}

uint64_t CDSObject_Des(void *a1)
{
  v2 = a1[13];
  result = OOC_PlacementDeleteObject(v2, a1[24]);
  if (!result)
  {
    v4 = a1[23];
    if (v4)
    {
      OOCAllocator_Free(v2, v4);
    }

    return CDSBase_Des(a1);
  }

  return result;
}

uint64_t CDSObject_FetchInfo(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = OOCAllocator_Calloc(*(a1 + 104), 1, 24, &v7);
  *a2 = v4;
  v5 = v7;
  if (!v7)
  {
    *v4 = a1 + 144;
    *(*a2 + 8) = CDSHash_GetNbrKeyEntries(a1);
    *(*a2 + 16) = CDSBase_GetNbrValueEntries(a1);
    return v7;
  }

  return v5;
}

uint64_t CDSObject_FetchKeys(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = 0;
  v22 = 0;
  v6 = *(a1 + 104);
  NbrKeyEntries = CDSHash_GetNbrKeyEntries(a1);
  v8 = NbrKeyEntries;
  *a3 = NbrKeyEntries;
  v9 = 8 * NbrKeyEntries;
  v10 = 0;
  if (NbrKeyEntries)
  {
    v11 = 0;
    while (1)
    {
      v12 = CDSHash_UnhashKey(a1) + 1;
      v13 = OOCAllocator_Calloc(v6, 2, v12, &v24);
      result = v24;
      if (v24)
      {
        break;
      }

      CDSHash_UnhashKey(a1);
      CDSHash_DecodeKey(a1, v12, v13);
      v22 = v13;
      v15 = utf16_utf8_byte_count(&v22);
      if (v15 == -1)
      {
        v20 = *v22;
        return kaldi::OffsetFileInputImpl::MyType("pUcs2Key");
      }

      v9 += v15 + 1;
      if (v15 >= v10)
      {
        v10 = v15 + 1;
      }

      OOCAllocator_Free(v6, v13);
      if (v8 == ++v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = OOCAllocator_Calloc(v6, 1, v9, &v24);
    *a2 = v16;
    result = v24;
    if (!v24)
    {
      v23 = v16 + 8 * v8;
      v17 = OOCAllocator_Calloc(v6, 2, v10, &v24);
      result = v24;
      if (!v24)
      {
        if (v8)
        {
          v18 = 0;
          while (1)
          {
            v19 = CDSHash_UnhashKey(a1);
            CDSHash_DecodeKey(a1, v19 + 1, v17);
            *(v16 + 8 * v18) = v23;
            v22 = v17;
            if (utf16_to_utf8(&v22, &v17[v19 + 1], &v23, v16 + v9))
            {
              break;
            }

            if (v8 == ++v18)
            {
              goto LABEL_14;
            }
          }

          v21 = *v22;
          return kaldi::OffsetFileInputImpl::MyType("pUcs2Key");
        }

        else
        {
LABEL_14:
          OOCAllocator_Free(v6, v17);
          return v24;
        }
      }
    }
  }

  return result;
}

uint64_t CDSObject_FetchTranscriptions(uint64_t a1, char *a2, uint64_t *a3, unint64_t *a4)
{
  v27 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  FieldSeparator = CDSBase_GetFieldSeparator(a1);
  v9 = *(a1 + 104);
  result = utf8_str_to_utf16(v9, a2, &v30, &v29);
  if (!result)
  {
    v28 = 0;
    result = CDSBase_GetOutputString(a1, v30, 0, &v27, &v31, &v28, &v32);
    v33 = result;
    if (!result)
    {
      OOCAllocator_Free(v9, v30);
      v11 = v28;
      if (v28)
      {
        v12 = v27;
        v13 = OOCAllocator_Calloc(v9, v28, 24, &v33);
        result = v33;
        if (v33)
        {
          return result;
        }

        v25 = a4;
        v26 = v11;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v31;
        do
        {
          if (v16 == v17 || FieldSeparator == *(v12 + v16))
          {
            v19 = v16 - v15;
            if (v16 > v15)
            {
              if (v14 >= v26)
              {
                result = kaldi::PipeInputImpl::MyType("Inconsitent CDS output");
                a4 = v25;
                v11 = v26;
                if (result)
                {
                  return result;
                }

                goto LABEL_25;
              }

              *(v13 + 24 * v14) = CDSBase_GetTranscriptionType(a1);
              v20 = (v12 + v15);
              if (*(a1 + 200))
              {
                v21 = *v20 == 35;
                if (*v20 == 35)
                {
                  v22 = v20 + 1;
                }

                else
                {
                  v22 = (v12 + v15);
                }

                *(v13 + 24 * v14 + 8) = v22;
                v19 = v19 - v21 - (v20[v19 - v21] == 35);
                v20 = v22;
              }

              else
              {
                *(v13 + 24 * v14 + 8) = v20;
              }

              v20[v19] = 0;
              *(v13 + 24 * v14++ + 16) = v19 + 1;
              v17 = v31;
            }

            v18 = v16 + 1;
            v15 = v16 + 1;
          }

          else
          {
            v18 = v16 + 1;
          }

          v23 = v16 >= v17;
          v16 = v18;
        }

        while (!v23);
        v11 = v26;
        if (v14 == v26)
        {
          result = v33;
        }

        else
        {
          result = kaldi::PipeInputImpl::MyType("Inconsitent CDS output");
        }

        a4 = v25;
        if (result)
        {
          return result;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_25:
      result = TranscriptionTokenizer_FetchTranscriptions(*(a1 + 192), v13, v11, a3, a4);
      if (!result)
      {
        if (v13)
        {
          v24 = *(a1 + 104);
          OOCAllocator_Free(v24, v27);
          OOCAllocator_Free(v24, v13);
        }

        return lhi_LogPhoneticTranscriptions(*(a1 + 40), 0x3E62B2CD, a2, *a3, *a4);
      }
    }
  }

  return result;
}

uint64_t CDSObject_QueryInterface(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 > 1210932135)
  {
    if (a2 == 1210932136)
    {
      v3 = a1 + 168;
      goto LABEL_11;
    }

    if (a2 == 3420193956)
    {
      v3 = a1 + 176;
      goto LABEL_11;
    }

    return VoConObject_QueryInterface(a1, a2, a3);
  }

  if (a2 == 414531107)
  {
    v3 = a1 + 160;
    goto LABEL_11;
  }

  if (a2 != 414531721)
  {
    return VoConObject_QueryInterface(a1, a2, a3);
  }

  v3 = a1 + 152;
LABEL_11:
  *a3 = v3;
  return 0;
}

uint64_t CDSObject_ReturnInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 104), a2);
  }

  return 0;
}

uint64_t CDSObject_ReturnKeys(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 104), a2);
  }

  return 0;
}

uint64_t PNEW_CDSObject_Con(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 208, &v14);
  result = v14;
  if (!v14)
  {
    result = CDSObject_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      v12[2] = a1;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t DctArchive(uint64_t a1, char *__b, int *a3, int a4)
{
  v8 = *a3;
  if (__b)
  {
    memset(__b, 170, *a3);
  }

  v29[0] = 0;
  v29[1] = 0;
  __dst = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  result = srvspi_MemblockInit(v29, v8, __b);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = srvspi_MemblockAlign(v29, 4u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v29, 8, &v24);
    if (result)
    {
      return result;
    }

    if (v24)
    {
      *v24 = 1397247071;
    }
  }

  result = srvspi_MemblockAlign(v29, 4u);
  if (result)
  {
    return result;
  }

  result = srvspi_MemblockAlloc(v29, 24, &v28);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    v10 = strlen(*a1) + 1;
    HIDWORD(v26) = v10;
    result = srvspi_MemblockAlign(v29, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v29, v10, &__dst);
    if (result)
    {
      return result;
    }

    if (__dst)
    {
      strcpy(__dst, *a1);
    }
  }

  else
  {
    result = srvspi_MemblockAlign(v29, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v29, 1, &__dst);
    if (result)
    {
      return result;
    }

    if (__dst)
    {
      *__dst = 0;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = strlen(v11);
    result = srvspi_MemblockAlign(v29, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v29, v12 + 1, &__dst);
    if (result)
    {
      return result;
    }

    if (__dst)
    {
      strcpy(__dst, *(a1 + 8));
    }
  }

  else
  {
    result = srvspi_MemblockAlign(v29, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v29, 1, &__dst);
    if (result)
    {
      return result;
    }

    if (__dst)
    {
      *__dst = 0;
    }
  }

  NbrSubDct = GetNbrSubDct(a1);
  HIDWORD(v26) = 4 * NbrSubDct;
  result = srvspi_MemblockAlign(v29, 4u);
  if (result)
  {
    return result;
  }

  result = srvspi_MemblockAlloc(v29, 4 * NbrSubDct, &v25);
  if (result)
  {
    return result;
  }

  v23 = 0;
  result = DctGetBufferType(a1, &v23);
  if (result)
  {
    return result;
  }

  v14 = *(a1 + 56);
  result = srvspi_MemblockGetUsed(v29, &v26);
  if (result)
  {
    return result;
  }

  if (!v14)
  {
LABEL_42:
    result = srvspi_MemblockGetUsed(v29, &v26 + 1);
    if (result)
    {
      return result;
    }

    v17 = v28;
    if (v28)
    {
      *v28 = v23;
      v18 = HIDWORD(v26);
      *(v17 + 1) = HIDWORD(v26);
      *(v17 + 3) = *(a1 + 20);
      v17[5] = NbrSubDct;
      *a3 = v18;
      if (a4 != 1)
      {
        return 0;
      }

      v17[1] = v18 - 8;
    }

    else
    {
      v18 = HIDWORD(v26);
      *a3 = HIDWORD(v26);
      if (a4 != 1)
      {
        return 0;
      }
    }

    if (__b)
    {
      *(__b + 1) = v18;
      v19 = (v18 - 8);
      if (v19)
      {
        v20 = &__b[v19 + 8];
        v21 = __b + 8;
        v22 = 235;
        do
        {
          result = 0;
          *v21++ += v22;
          v22 += 111;
        }

        while (v21 < v20);
        return result;
      }
    }

    return 0;
  }

  v15 = v23;
  while (1)
  {
    result = srvspi_MemblockAlign(v29, 4u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockGetUsed(v29, &v26 + 1);
    if (result)
    {
      return result;
    }

    v16 = v25;
    if (v25)
    {
      *v25 = HIDWORD(v26) - v26;
      v25 = v16 + 1;
    }

    result = SubDctArchive(v14, v15, v29);
    if (result)
    {
      return result;
    }

    v14 = *(v14 + 136);
    if (!v14)
    {
      goto LABEL_42;
    }
  }
}

uint64_t DctGetBufferType(uint64_t a1, int *a2)
{
  *a2 = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if (*(v2 + 32))
      {
        if (!v3)
        {
          v3 = 7;
LABEL_12:
          *a2 = v3;
          goto LABEL_13;
        }

        if (v3 != 7)
        {
          return kaldi::PipeInputImpl::MyType("Unexpected: sub dictionaries should have the same type.");
        }
      }

      else
      {
        if (!v3)
        {
          v3 = 6;
          goto LABEL_12;
        }

        if (v3 != 6)
        {
          return kaldi::PipeInputImpl::MyType("Unexpected: sub dictionaries should have the same type.");
        }
      }

LABEL_13:
      v2 = *(v2 + 136);
      if (!v2)
      {
        return 0;
      }
    }
  }

  *a2 = 6;
  return 0;
}

uint64_t SubDctArchive(uint64_t a1, int a2, int *a3)
{
  v65 = 0;
  v66[0] = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  result = srvspi_MemblockGetUsed(a3, v66);
  if (!result)
  {
    if (a2 == 7)
    {
      HIDWORD(v66[0]) = 52;
      result = srvspi_MemblockAlign(a3, 4u);
      if (result)
      {
        return result;
      }

      v7 = HIDWORD(v66[0]);
      v8 = &v64;
    }

    else
    {
      HIDWORD(v66[0]) = 48;
      result = srvspi_MemblockAlign(a3, 4u);
      if (result)
      {
        return result;
      }

      v7 = HIDWORD(v66[0]);
      v8 = &v63;
    }

    result = srvspi_MemblockAlloc(a3, v7, v8);
    if (!result)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        __dst[0] = 0;
        HIDWORD(v66[0]) = strlen(v9) + 1;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          strcpy(__dst[0], *(a1 + 24));
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        __dst[0] = 0;
        HIDWORD(v66[0]) = strlen(v11) + 1;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          strcpy(__dst[0], *(a1 + 32));
        }

        v12 = 1;
        v13 = 6;
      }

      else
      {
        v12 = 0;
        v13 = 7;
      }

      if (v13 == a2)
      {
        return kaldi::PipeInputImpl::MyType("Unexpected");
      }

      if (*(a1 + 40))
      {
        __dst[0] = 0;
        HIDWORD(v66[0]) = 129;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), __dst);
        if (result)
        {
          return result;
        }

        v14 = __dst[0];
        if (__dst[0])
        {
          v15 = *(a1 + 40);
          *__dst[0] = *v15;
          v16 = *(v15 + 16);
          v17 = *(v15 + 32);
          v18 = *(v15 + 64);
          *(v14 + 3) = *(v15 + 48);
          *(v14 + 4) = v18;
          *(v14 + 1) = v16;
          *(v14 + 2) = v17;
          v19 = *(v15 + 80);
          v20 = *(v15 + 96);
          v21 = *(v15 + 112);
          v14[128] = *(v15 + 128);
          *(v14 + 6) = v20;
          *(v14 + 7) = v21;
          *(v14 + 5) = v19;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(a1 + 48);
      if (v23)
      {
        __dst[0] = 0;
        HIDWORD(v66[0]) = strlen(v23) + 1;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          strcpy(__dst[0], *(a1 + 48));
        }

        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      HIDWORD(v66[0]) = 4 * *a1 + 4;
      result = srvspi_MemblockAlign(a3, 4u);
      if (!result)
      {
        result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), &v60);
        if (!result)
        {
          result = srvspi_MemblockGetUsed(a3, &v65 + 1);
          if (!result)
          {
            result = DICTITT_Init(v61, (a1 + 56));
            if (!result)
            {
              v25 = 0;
              while (DWORD2(v61[0]) || v62 != -1)
              {
                do
                {
                  DICTITT_Current(v61, __dst);
                }

                while (v56 == 1);
                v27 = strlen(__dst[0]);
                if (v62 == -1)
                {
                  result = BINTREEITT_Inc(v61 + 2);
                }

                else
                {
                  result = 0;
                }

                v25 += v27 + 1;
                if (result)
                {
                  return result;
                }
              }

              result = ARRAY_Flush(&v61[1] + 8);
              if (!result)
              {
                HIDWORD(v66[0]) = 1;
                result = srvspi_MemblockAlign(a3, 1u);
                if (!result)
                {
                  result = srvspi_MemblockAlloc(a3, v25, &v57);
                  if (!result)
                  {
                    result = srvspi_MemblockGetUsed(a3, v66 + 1);
                    if (!result)
                    {
                      v28 = HIDWORD(v66[0]);
                      v29 = HIDWORD(v65);
                      HIDWORD(v66[0]) = 4 * *a1 + 4;
                      result = srvspi_MemblockAlign(a3, 4u);
                      if (!result)
                      {
                        result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), &v59);
                        if (!result)
                        {
                          result = srvspi_MemblockGetUsed(a3, &v65);
                          if (!result)
                          {
                            result = srvspi_MemblockAlign(a3, 1u);
                            if (!result)
                            {
                              result = srvspi_MemblockAlloc(a3, 1, &v58);
                              if (!result)
                              {
                                if (v58)
                                {
                                  *v58 = -86;
                                }

                                v49 = v57;
                                result = DICTITT_Init(v61, (a1 + 56));
                                if (!result)
                                {
                                  if (!DWORD2(v61[0]) && v62 == -1)
                                  {
LABEL_68:
                                    result = ARRAY_Flush(&v61[1] + 8);
                                    if (!result)
                                    {
                                      result = srvspi_MemblockGetUsed(a3, v66 + 1);
                                      if (!result)
                                      {
                                        if (v59)
                                        {
                                          *v59 = HIDWORD(v66[0]) - v65;
                                        }

                                        v30 = HIDWORD(v66[0]);
                                        v31 = v65;
                                        if (v60 && v49 && v57)
                                        {
                                          *v60 = v49 - v57;
                                        }

                                        v32 = v28 - v29;
                                        v33 = v30 - v31;
                                        v34 = v64;
                                        if (v64)
                                        {
                                          result = 0;
                                          *v64 = HIDWORD(v66[0]) - LODWORD(v66[0]);
                                          *(v34 + 1) = *(a1 + 8);
                                          v34[4] = *(a1 + 16);
                                          v34[5] = v10;
                                          v34[6] = v12;
                                          v34[7] = v22;
                                          v34[8] = v24;
                                          *(v34 + 9) = *a1;
                                          v34[11] = v32;
                                          v34[12] = v33;
                                        }

                                        else
                                        {
                                          v34 = v63;
                                          if (!v63)
                                          {
                                            return 0;
                                          }

                                          result = 0;
                                          *v63 = HIDWORD(v66[0]) - LODWORD(v66[0]);
                                          *(v34 + 1) = *(a1 + 8);
                                          v34[4] = *(a1 + 16);
                                          v34[5] = v10;
                                          v34[6] = v22;
                                          v34[7] = v24;
                                          *(v34 + 4) = *a1;
                                          v34[10] = v32;
                                          v34[11] = v33;
                                        }

                                        v34[1] = 0;
                                        return result;
                                      }
                                    }

                                    return result;
                                  }

                                  v50 = 0;
                                  while (1)
                                  {
                                    v53 = 0;
                                    DICTITT_Current(v61, __dst);
                                    v46 = __dst[1];
                                    v47 = v55;
                                    v52 = v56;
                                    if (!v50)
                                    {
                                      v36 = __dst[0];
                                      v37 = v60;
                                      v38 = v57;
                                      if (v60)
                                      {
                                        v39 = v49 == 0;
                                      }

                                      else
                                      {
                                        v39 = 1;
                                      }

                                      if (!v39 && v57 != 0)
                                      {
                                        *v60 = v49 - v57;
                                        v60 = v37 + 1;
                                      }

                                      if (v38 && v49)
                                      {
                                        __src = v36;
                                        v44 = strlen(v36) + 1;
                                        memcpy(v49, __src, v44);
                                        v49 += v44;
                                      }

                                      result = srvspi_MemblockGetUsed(a3, v66 + 1);
                                      if (result)
                                      {
                                        return result;
                                      }

                                      v41 = v59;
                                      if (v59)
                                      {
                                        if (v52 == 1)
                                        {
                                          *v59 = v65 - HIDWORD(v66[0]);
                                          v59 = v41 + 1;
                                          HIDWORD(v66[0]) = v47;
                                          v51 = 1;
LABEL_83:
                                          __dst[0] = 0;
                                          result = srvspi_MemblockAlign(a3, 2u);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          result = srvspi_MemblockAlloc(a3, 2, __dst);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          if (__dst[0])
                                          {
                                            *__dst[0] = WORD2(v66[0]);
                                          }

                                          v48 = 0;
                                          goto LABEL_104;
                                        }

                                        *v59 = HIDWORD(v66[0]) - v65;
                                        v59 = v41 + 1;
                                      }
                                    }

                                    v35 = v50;
                                    if (v52 == 1)
                                    {
                                      v35 = 1;
                                    }

                                    HIDWORD(v66[0]) = v47;
                                    v51 = v35;
                                    if (v35)
                                    {
                                      goto LABEL_83;
                                    }

                                    v51 = 0;
                                    v48 = 1;
LABEL_104:
                                    result = srvspi_MemblockAlign(a3, 1u);
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockAlloc(a3, SHIDWORD(v66[0]), &v53);
                                    if (result)
                                    {
                                      return result;
                                    }

                                    if (v53)
                                    {
                                      memcpy(v53, v46, HIDWORD(v66[0]));
                                    }

                                    if ((v48 & 1) == 0)
                                    {
                                      result = srvspi_MemblockAlign(a3, 2u);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v42 = v51;
                                    if (!v52)
                                    {
                                      v42 = 0;
                                    }

                                    v50 = v42;
                                    if (v62 == -1)
                                    {
                                      result = BINTREEITT_Inc(v61 + 2);
                                      if (result)
                                      {
                                        return result;
                                      }

                                      v43 = v62 != -1;
                                    }

                                    else
                                    {
                                      v43 = 1;
                                    }

                                    if (!DWORD2(v61[0]) && !v43)
                                    {
                                      goto LABEL_68;
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t DctFromArchive(char **a1, uint64_t a2)
{
  v16[0] = 0;
  v16[1] = 0;
  __src = 0;
  __s = 0;
  v12 = 0;
  v13 = 0;
  v17 = a2;
  result = srvspi_MemblockInit(v16, *(a2 + 4), a2);
  if (!result)
  {
    result = srvspi_MemblockAlign(v16, 4u);
    if (!result)
    {
      result = srvspi_MemblockRead(v16, 24, &v17);
      if (!result)
      {
        v4 = *v17;
        if ((*v17 & 0xFFFFFE) != 6)
        {
          v5 = "Wrong buffer type!";
          return kaldi::PipeInputImpl::MyType(v5);
        }

        if (*(v17 + 8))
        {
          v5 = "Corrupted buffer!";
          return kaldi::PipeInputImpl::MyType(v5);
        }

        *(a1 + 20) = *(v17 + 12);
        result = srvspi_MemblockAlign(v16, 1u);
        if (!result)
        {
          result = srvspi_MemblockRead(v16, 0, &__s);
          if (!result)
          {
            v6 = strlen(__s);
            result = srvspi_MemblockRead(v16, v6 + 1, &__s);
            v18 = result;
            if (!result)
            {
              if (v6)
              {
                v7 = OOCAllocator_Malloc(a1[6], v6 + 1, &v18);
                *a1 = v7;
                result = v18;
                if (v18)
                {
                  return result;
                }

                strcpy(v7, __s);
              }

              else
              {
                *a1 = 0;
              }

              result = srvspi_MemblockAlign(v16, 1u);
              v18 = result;
              if (!result)
              {
                result = srvspi_MemblockRead(v16, 0, &__src);
                v18 = result;
                if (!result)
                {
                  v8 = strlen(__src);
                  result = srvspi_MemblockRead(v16, v8 + 1, &__src);
                  v18 = result;
                  if (!result)
                  {
                    if (v8)
                    {
                      v9 = OOCAllocator_Malloc(a1[6], v8 + 1, &v18);
                      a1[1] = v9;
                      result = v18;
                      if (v18)
                      {
                        return result;
                      }

                      strcpy(v9, __src);
                    }

                    else
                    {
                      a1[1] = 0;
                    }

                    result = srvspi_MemblockAlign(v16, 4u);
                    v18 = result;
                    if (!result)
                    {
                      result = srvspi_MemblockRead(v16, (4 * *(v17 + 20)), &v13);
                      v18 = result;
                      if (!result)
                      {
                        result = srvspi_MemblockAlign(v16, 4u);
                        v18 = result;
                        if (!result)
                        {
                          result = srvspi_MemblockRead(v16, 0, &v12);
                          v18 = result;
                          if (!result)
                          {
                            if (*(v17 + 20))
                            {
                              v10 = 0;
                              do
                              {
                                v11 = 0;
                                result = CreateSubDct(a1, &v11);
                                v18 = result;
                                if (result)
                                {
                                  break;
                                }

                                result = srvspi_MemblockAlign(v16, 4u);
                                v18 = result;
                                if (result)
                                {
                                  break;
                                }

                                result = SubDctFromArchive(v11, v4 & 0xFFFFFF, v16, a1[6]);
                                v18 = result;
                                if (result)
                                {
                                  break;
                                }

                                v13 += 4;
                                ++v10;
                              }

                              while (v10 < *(v17 + 20));
                            }

                            else
                            {
                              return 0;
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
  }

  return result;
}

uint64_t SubDctFromArchive(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v49 = 0;
  v50 = 0;
  v44 = 0;
  result = srvspi_MemblockAlign(a3, 4u);
  v51 = result;
  if (!result)
  {
    v48 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    if (a2 == 6)
    {
      result = srvspi_MemblockRead(a3, 48, &v50);
      v51 = result;
      if (result)
      {
        return result;
      }

      v9 = 0;
      v10 = v50;
    }

    else
    {
      result = srvspi_MemblockRead(a3, 52, &v49);
      v51 = result;
      if (result)
      {
        return result;
      }

      v10 = 0;
      v9 = v49;
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11[1];
    *(a1 + 8) = v11[2];
    *(a1 + 16) = v11[4];
    *(a1 + 12) = v11[3];
    v13 = v10 + 8;
    if (!v10)
    {
      v13 = v9 + 9;
    }

    *a1 = *v13;
    v14 = v10 + 9;
    if (!v10)
    {
      v14 = v9 + 10;
    }

    *(a1 + 4) = *v14;
    *(a1 + 24) = 0;
    result = srvspi_MemblockAlign(a3, 1u);
    v51 = result;
    if (!result)
    {
      if (v11[5] == 1)
      {
        __s = 0;
        result = srvspi_MemblockRead(a3, 0, &__s);
        v51 = result;
        if (result)
        {
          return result;
        }

        v15 = strlen(__s) + 1;
        result = srvspi_MemblockRead(a3, v15, &__s);
        v51 = result;
        if (result)
        {
          return result;
        }

        v16 = OOCAllocator_Malloc(a4, v15, &v51);
        *(a1 + 24) = v16;
        result = v51;
        if (v51)
        {
          return result;
        }

        strcpy(v16, __s);
      }

      *(a1 + 32) = 0;
      result = srvspi_MemblockAlign(a3, 1u);
      v51 = result;
      if (result)
      {
        return result;
      }

      if (!v10 && v9[6] == 1)
      {
        __s = 0;
        result = srvspi_MemblockRead(a3, 0, &__s);
        v51 = result;
        if (result)
        {
          return result;
        }

        v17 = strlen(__s) + 1;
        result = srvspi_MemblockRead(a3, v17, &__s);
        v51 = result;
        if (result)
        {
          return result;
        }

        v18 = OOCAllocator_Malloc(a4, v17, &v51);
        *(a1 + 32) = v18;
        result = v51;
        if (v51)
        {
          return result;
        }

        strcpy(v18, __s);
      }

      *(a1 + 40) = 0;
      result = srvspi_MemblockAlign(a3, 1u);
      v51 = result;
      if (result)
      {
        return result;
      }

      v19 = v10 + 6;
      if (!v10)
      {
        v19 = v9 + 7;
      }

      if (*v19 == 1)
      {
        __s = 0;
        result = srvspi_MemblockRead(a3, 0, &__s);
        v51 = result;
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockRead(a3, 129, &__s);
        v51 = result;
        if (result)
        {
          return result;
        }

        v20 = OOCAllocator_Malloc(a4, 129, &v51);
        *(a1 + 40) = v20;
        result = v51;
        if (v51)
        {
          return result;
        }

        v21 = __s;
        v22 = *(__s + 3);
        v24 = *__s;
        v23 = *(__s + 1);
        v20[2] = *(__s + 2);
        v20[3] = v22;
        *v20 = v24;
        v20[1] = v23;
        v25 = *(v21 + 7);
        v27 = *(v21 + 4);
        v26 = *(v21 + 5);
        v20[6] = *(v21 + 6);
        v20[7] = v25;
        v20[4] = v27;
        v20[5] = v26;
        *(*(a1 + 40) + 128) = 0;
      }

      *(a1 + 48) = 0;
      v51 = srvspi_MemblockAlign(a3, 1u);
      if (v10)
      {
        if (!v10[7])
        {
          goto LABEL_44;
        }
      }

      else if (!v9[8])
      {
LABEL_44:
        result = DICT_Init(a1 + 56, a4, 10000, 50000);
        v51 = result;
        if (!result)
        {
          result = srvspi_MemblockAlign(a3, 4u);
          v51 = result;
          if (!result)
          {
            result = srvspi_MemblockRead(a3, (4 * *a1 + 4), &v47);
            v51 = result;
            if (!result)
            {
              v30 = v12 ? 2 : 1;
              result = srvspi_MemblockAlign(a3, v30);
              v51 = result;
              if (!result)
              {
                v31 = v10 + 10;
                if (!v10)
                {
                  v31 = v9 + 11;
                }

                result = srvspi_MemblockRead(a3, *v31, &v45);
                v51 = result;
                if (!result)
                {
                  result = srvspi_MemblockAlign(a3, 4u);
                  v51 = result;
                  if (!result)
                  {
                    result = srvspi_MemblockRead(a3, (4 * *a1 + 4), &v46);
                    v51 = result;
                    if (!result)
                    {
                      result = srvspi_MemblockGetUsed(a3, &v48);
                      v51 = result;
                      if (!result)
                      {
                        result = srvspi_MemblockAlign(a3, 1u);
                        v51 = result;
                        if (!result)
                        {
                          result = srvspi_MemblockRead(a3, 1, 0);
                          v51 = result;
                          if (!result)
                          {
                            if (*a1)
                            {
                              for (i = 0; i < *a1; ++i)
                              {
                                __s = 0;
                                v42 = -1;
                                if (v12)
                                {
                                  v41 = 0;
                                  result = utf16_str_to_utf8(a4, (v45 + *v47), &v44, &v41);
                                  v51 = result;
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                else
                                {
                                  v33 = strlen((v45 + *v47));
                                  v34 = OOCAllocator_Realloc(a4, v44, v33 + 1, &v51);
                                  v44 = v34;
                                  result = v51;
                                  if (v51)
                                  {
                                    return result;
                                  }

                                  strcpy(v34, (v45 + *v47));
                                }

                                v35 = *v46;
                                v36 = v46[1];
                                if (v36 >= 0)
                                {
                                  v37 = v46[1];
                                }

                                else
                                {
                                  v37 = -v36;
                                }

                                if (v35 < 0)
                                {
                                  v40 = -v35;
                                  result = srvspi_MemblockAlign(a3, 2u);
                                  v51 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  v39 = v40;
                                  while (v39 < v37)
                                  {
                                    v41 = 0;
                                    result = srvspi_MemblockRead(a3, 2, &v41);
                                    v51 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockAlign(a3, 1u);
                                    v51 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockRead(a3, *v41, &__s);
                                    v51 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = DICT_Add(a1 + 56, v44, __s, *v41, &v42);
                                    v51 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockAlign(a3, 2u);
                                    v51 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockGetUsed(a3, &v40);
                                    v51 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    v39 = v40 - v48;
                                    v40 -= v48;
                                  }
                                }

                                else
                                {
                                  LODWORD(v41) = 0;
                                  result = srvspi_MemblockAlign(a3, 1u);
                                  v51 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  result = srvspi_MemblockGetUsed(a3, &v41);
                                  v51 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  LODWORD(v41) = v41 - v48;
                                  v38 = v37 - v41;
                                  result = srvspi_MemblockRead(a3, v38, &__s);
                                  v51 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  result = DICT_Add(a1 + 56, v44, __s, v38, &v42);
                                  v51 = result;
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                ++v46;
                                ++v47;
                              }
                            }

                            OOCAllocator_Free(a4, v44);
                            return v51;
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

      __s = 0;
      result = srvspi_MemblockRead(a3, 0, &__s);
      v51 = result;
      if (result)
      {
        return result;
      }

      v28 = strlen(__s) + 1;
      result = srvspi_MemblockRead(a3, v28, &__s);
      v51 = result;
      if (result)
      {
        return result;
      }

      v29 = OOCAllocator_Malloc(a4, v28, &v51);
      *(a1 + 48) = v29;
      result = v51;
      if (v51)
      {
        return result;
      }

      strcpy(v29, __s);
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t DctDecryptArchive(_DWORD **a1, int *a2)
{
  v2 = *a1;
  if (**a1 == 1397247071)
  {
    v4 = v2 + 2;
    if (v2[1] != 8)
    {
      v5 = &v4[v2[1] - 8];
      v6 = 235;
      v7 = v4;
      do
      {
        *v7++ -= v6;
        v6 += 111;
      }

      while (v7 < v5);
      v2 = *a1;
    }

    *v2 = 1397247021;
    goto LABEL_10;
  }

  if (*v2 == 1397247021)
  {
    v4 = v2 + 2;
LABEL_10:
    *a1 = v4;
    v3 = 1;
    goto LABEL_11;
  }

  v3 = 0;
LABEL_11:
  *a2 = v3;
  return 0;
}

uint64_t _DTQuestion_Con(void *a1, uint64_t a2)
{
  *a1 = &__DTQuestion;
  a1[1] = a2;
  return 0;
}

uint64_t PNEW_DTHypothesisList_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v10);
  result = v10;
  if (!v10)
  {
    result = PtrList_Con(v8, a2, 1u, 1);
    if (result)
    {
      v10 = result;
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *v8 = &__DTHypothesisList;
      v8[5] = a3;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTGraphemeBuffer_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTGraphemeBuffer;
    *(a1 + 8) = a2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a3;
    *(a1 + 40) = 0;

    return _DTGraphemeBuffer_CreateGPTable(a1);
  }

  return result;
}

uint64_t _DTGraphemeBuffer_CreateGPTable(uint64_t a1)
{
  v23 = 0;
  v2 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 24), 8 * *(*(a1 + 16) + 4) + 8, &v23);
  *(a1 + 24) = v2;
  v3 = v23;
  if (!v23)
  {
    v4 = *(a1 + 16);
    v6 = *v4;
    v5 = v4 + 6;
    v7 = *(a1 + 16) + v6;
    *v2 = v5;
    v8 = 1;
    *(a1 + 40) = 1;
    if (*(*(a1 + 16) + 4) >= 2u)
    {
      v9 = 1;
      v8 = 1;
      v10 = 1;
      while (!*v5)
      {
LABEL_7:
        *(*(a1 + 24) + 8 * v8) = ++v5;
        if (**(*(a1 + 24) + 8 * v8) != **(*(a1 + 24) + 8 * v8 - 8))
        {
          *(a1 + 40) = ++v9;
        }

        v8 = ++v10;
        if (*(*(a1 + 16) + 4) <= v10)
        {
          v12 = 16 * v9;
          goto LABEL_12;
        }
      }

      while (v5 < v7)
      {
        if (!*++v5)
        {
          goto LABEL_7;
        }
      }

      return kaldi::PipeInputImpl::MyType("Grapheme block is corrupt");
    }

    v12 = 16;
LABEL_12:
    if (*v5)
    {
      while (v5 < v7)
      {
        if (!*++v5)
        {
          goto LABEL_15;
        }
      }

      return kaldi::PipeInputImpl::MyType("Grapheme block is corrupt");
    }

LABEL_15:
    *(*(a1 + 24) + 8 * v8) = v5 + 1;
    v14 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 32), v12, &v23);
    *(a1 + 32) = v14;
    v3 = v23;
    if (v23)
    {
      *(a1 + 40) = 0;
    }

    else
    {
      v17 = *(a1 + 16);
      v16 = *(a1 + 24);
      *v14 = *v16;
      *(v14 + 8) = 0;
      v18 = *(v17 + 4);
      if (v18 >= 2)
      {
        v19 = 0;
        for (i = 1; i < v18; ++i)
        {
          v21 = v16[i];
          if (*v21 != **(v14 + 16 * v19))
          {
            v22 = v14 + 16 * ++v19;
            *v22 = v21;
            *(v22 + 8) = i;
          }
        }
      }

      lhstdlib_qsort(v14, *(a1 + 40), 0x10u, __DTGraphemeBuffer_Compare);
      return v23;
    }
  }

  return v3;
}

uint64_t DTGraphemeBuffer_Des(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    OOCAllocator_Free(*(a1 + 8), v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return Object_Des();
}

uint64_t DTGraphemeBuffer_FirstGraphemeID(uint64_t a1, uint64_t a2)
{
  v4 = -1;
  v5[0] = a2;
  v5[1] = 0;
  v2 = lhstdlib_bsearch(v5, *(a1 + 32), *(a1 + 40), 0x10uLL, __DTGraphemeBuffer_Compare, &v4);
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 255;
  }
}

uint64_t __DTGraphemeBuffer_Compare(char **a1, char **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t PNEW_DTGraphemeBuffer_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v10);
  result = v10;
  if (!v10)
  {
    result = DTGraphemeBuffer_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionGPBin_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 1) + a2;
  if (v5 < 0)
  {
    return 0;
  }

  result = 0;
  if (a3 && v5 < a4)
  {
    v7 = *(v4 + 2);
    if (*(v4 + 2))
    {
      v8 = 0;
      v9 = *(a3 + v5);
      v10 = v4 + 3;
      v11 = v7 - 1;
      while (1)
      {
        v12 = (v11 + v8) >> 1;
        v13 = *(v10 + v12);
        if (v9 >= v13)
        {
          if (v9 <= v13)
          {
            return 1;
          }

          v8 = v12 + 1;
        }

        else
        {
          v11 = v12 - 1;
        }

        if (v8 > v11)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t PNEW_DTQuestionGPBin_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionGPBin;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTQuestionPP_IsTrue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  v8 = v7 + a6;
  if (v7 + a6 < 0)
  {
    return 0;
  }

  result = 0;
  if (!a5 || (v7 & 0x80000000) == 0)
  {
    return result;
  }

  v10 = *(v6 + 2);
  if (!*(v6 + 2))
  {
    return 0;
  }

  v11 = *(a5 + 2 * v8);
  v12 = (v6 + 3);
  while (1)
  {
    v13 = *v12++;
    if (v13 == v11)
    {
      break;
    }

    if (!--v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PNEW_DTQuestionPP_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionPP;
      *a3 = v6;
    }
  }

  return result;
}

BOOL DTQuestionSG_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  result = 0;
  v6 = *(v4 + 1) + a2;
  if (v6 >= 0 && a3 && v6 < a4)
  {
    return *(a3 + v6) == *(v4 + 2);
  }

  return result;
}

uint64_t PNEW_DTQuestionSG_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionSG;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_DTNodeBuffer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 16, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    v5[1] = a2 + 4;
    *a3 = v5;
  }

  return result;
}

uint64_t DTQuestionGP_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 1) + a2;
  if (v5 < 0)
  {
    return 0;
  }

  result = 0;
  if (!a3 || v5 >= a4)
  {
    return result;
  }

  v7 = *(v4 + 2);
  if (!*(v4 + 2))
  {
    return 0;
  }

  v8 = *(a3 + v5);
  v9 = (v4 + 3);
  while (1)
  {
    v10 = *v9++;
    if (v10 == v8)
    {
      break;
    }

    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PNEW_DTQuestionGP_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionGP;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t addExpScore(int a1, int a2)
{
  LOWORD(v2) = a1 - a2;
  v3 = (a1 - a2);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    LOWORD(v2) = a2 - a1;
  }

  v5 = v3 <= 254;
  if (v3 <= 254)
  {
    v6 = v4;
  }

  else
  {
    v6 = a2;
  }

  v2 = v2;
  if (!v5)
  {
    v2 = 254;
  }

  return (v6 + sc_logAddTable[v2]);
}

uint64_t PNEW_DTPhonemeBuffer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 16, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    v5[1] = a2 + 2;
    *a3 = v5;
  }

  return result;
}

uint64_t PNEW_DTNode_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 8, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    *a3 = v5;
  }

  return result;
}

uint64_t DTTree_Con(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTTree;
    a1[1] = a2;
    result = PNEW_DTBuffer_Con(a2, a3, a1 + 2);
    if (!result)
    {
      result = PNEW_DTNodeBuffer_Con(a2, *a1[2] + *(*a1[2] + 32), a1 + 3);
      if (!result)
      {
        result = PNEW_DTNode_Con(a2, *a1[2] + *(*a1[2] + 36), a1 + 4);
        if (!result)
        {
          result = PNEW_DTPhonemeBuffer_Con(a2, *a1[2] + *(*a1[2] + 44), a1 + 5);
          if (!result)
          {
            result = PNEW_DTPhonemeBuffer_Con(a2, *a1[2] + *(*a1[2] + 48), a1 + 6);
            if (!result)
            {
              result = PNEW_DTGraphemeBuffer_Con(a2, a2, *a1[2] + *(*a1[2] + 40), a1 + 7);
              if (!result)
              {
                result = PNEW_DTQuestionBuffer_Con(a2, a2, *a1[2] + *(*a1[2] + 52), a1 + 8);
                if (!result)
                {
                  v7 = *a1[2];
                  a1[9] = v7 + *(v7 + 28);
                  v8 = *(v7 + 56);
                  if (v8)
                  {
                    result = PNEW_DTNode_Con(a2, v7 + v8, a1 + 10);
                    if (result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    a1[10] = 0;
                  }

                  result = PNEW_DTNode_Con(a2, 0, a1 + 11);
                  if (!result)
                  {
                    a1[12] = 0;

                    return _DTTree_CreateStartNodeIdTable(a1);
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

uint64_t _DTTree_CreateStartNodeIdTable(uint64_t *a1)
{
  v16 = 0;
  v2 = *(*(a1[7] + 16) + 4);
  v3 = OOCAllocator_Realloc(a1[1], a1[12], 2 * v2, &v16);
  a1[12] = v3;
  v4 = v16;
  if (!v16)
  {
    v15 = 0;
    if (v2)
    {
      v5 = 0;
      v6 = a1[3];
      v7 = a1[11];
      do
      {
        *(v3 + 2 * v5) = 0;
        v8 = *(v6 + 8);
        *v7 = v8;
        v9 = *v8;
        if (v9 != 0xFFFF)
        {
          for (i = a1[8]; *(*(i + 32) + v9) == 4; i = a1[8])
          {
            v11 = DTQuestionBuffer_BorrowQuestion(i, v9);
            if ((*(*v11 + 24))(v11, 0, &v15, 1, 0, 0))
            {
              v7 = a1[11];
              v3 = a1[12];
              v12 = *(*v7 + 2);
              v5 = v15;
            }

            else
            {
              v5 = v15;
              v7 = a1[11];
              v3 = a1[12];
              v12 = *(v3 + 2 * v15) + 1;
            }

            *(v3 + 2 * v15) = v12;
            v6 = a1[3];
            v13 = *(v6 + 8);
            *v7 = v13 + 4 * v12;
            v9 = *(v13 + 4 * v12);
            if (v9 == 0xFFFF)
            {
              break;
            }
          }
        }

        v15 = ++v5;
      }

      while (v2 > v5);
      return v16;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t DTTree_Des(uint64_t *a1)
{
  result = OOC_PlacementDeleteObject(a1[1], a1[8]);
  if (!result)
  {
    result = OOC_PlacementDeleteObject(a1[1], a1[7]);
    if (!result)
    {
      result = PDELETE_DTNodeBuffer(a1[1], a1[6]);
      if (!result)
      {
        result = PDELETE_DTNodeBuffer(a1[1], a1[5]);
        if (!result)
        {
          result = PDELETE_DTNodeBuffer(a1[1], a1[4]);
          if (!result)
          {
            result = PDELETE_DTNodeBuffer(a1[1], a1[3]);
            if (!result)
            {
              result = PDELETE_DTNodeBuffer(a1[1], a1[2]);
              if (!result)
              {
                result = PDELETE_DTNodeBuffer(a1[1], a1[11]);
                if (!result)
                {
                  v3 = a1[10];
                  if (!v3 || (result = PDELETE_DTNodeBuffer(a1[1], v3), !result))
                  {
                    v4 = a1[12];
                    if (v4)
                    {
                      OOCAllocator_Free(a1[1], v4);
                    }

                    return Object_Des();
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

unint64_t DTTree_Traverse(uint64_t a1, uint64_t a2, _BYTE *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *(*(a1 + 96) + 2 * a3[a2]);
  v15 = (*(*(a1 + 24) + 8) + 4 * v14);
  **(a1 + 88) = v15;
  v16 = *v15;
  if (v16 != 0xFFFF)
  {
    do
    {
      v17 = DTQuestionBuffer_BorrowQuestion(*(a1 + 64), v16);
      if ((*(*v17 + 24))(v17, a2, a3, a4, a5, a6))
      {
        v18 = *(a1 + 88);
        LOWORD(v14) = *(*v18 + 2);
      }

      else
      {
        LOWORD(v14) = v14 + 1;
        v18 = *(a1 + 88);
      }

      v19 = *(*(a1 + 24) + 8);
      v20 = 4 * v14;
      *v18 = v19 + v20;
      v16 = *(v19 + v20);
    }

    while (v16 != 0xFFFF);
    v15 = (v19 + v20);
  }

  PLeaf = DTLeafBuffer_GetPLeaf(*(a1 + 32), v15[1]);
  *a7 = PLeaf;
  if (((*(PLeaf + 1) & 2) == 0 || !*(a1 + 80)) && ((*(PLeaf + 1) & 1) == 0 || (*(PLeaf + 1) & 0xFC | (*(PLeaf + 2) << 8)) != 4 || !*(a1 + 80)))
  {
    return 0;
  }

  return _DTTree_GraphemeFallbackTraverse(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t _DTTree_GraphemeFallbackTraverse(uint64_t a1, uint64_t a2, _BYTE *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a3[a2];
  result = DTGraphemeFallback_GetFallback(*(a1 + 80), v16, &v16);
  v17 = result;
  if (!result)
  {
    v15 = OOCAllocator_Malloc(*(a1 + 8), a4, &v17);
    result = v17;
    if (!v17)
    {
      memcpy(v15, a3, a4);
      *(v15 + a2) = v16;
      result = DTTree_Traverse(a1, a2, v15, a4, a5, a6, a7);
      v17 = result;
      if (!result)
      {
        OOCAllocator_Free(*(a1 + 8), v15);
        return v17;
      }
    }
  }

  return result;
}

uint64_t PNEW_DTTree_Con(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t **a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 104, &v10);
  result = v10;
  if (!v10)
  {
    result = DTTree_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

unint64_t DTGraphemeFallback_GetFallback(void *a1, char a2, _BYTE *a3)
{
  v7 = 0;
  v5 = *a1 + 2;
  v4 = **a1;
  v8[0] = a2;
  v8[1] = 0;
  result = lhstdlib_bsearch(v8, v5, v4, 2uLL, compareFallback, &v7);
  if (result)
  {
    *a3 = *(result + 1);
    return 1;
  }

  return result;
}

uint64_t compareFallback(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t DTBuffer_Con(void *a1, _DWORD *a2)
{
  *a1 = a2;
  if (a2[2] == 4)
  {
    if (a2[3] == 21586)
    {
      v2 = a2[1];
      if (a2[8] <= v2)
      {
        if (a2[9] <= v2)
        {
          if (a2[11] <= v2 && a2[10] <= v2)
          {
            if (a2[13] <= v2)
            {
              return 0;
            }

            else
            {
              *a1 = 0;
              return kaldi::PipeInputImpl::MyType("Questions block offset out of range");
            }
          }

          else
          {
            *a1 = 0;
            return kaldi::PipeInputImpl::MyType("Pseudo-phonemes block offset out of range");
          }
        }

        else
        {
          *a1 = 0;
          return kaldi::PipeInputImpl::MyType("Leafs block offset out of range");
        }
      }

      else
      {
        *a1 = 0;
        return kaldi::PipeInputImpl::MyType("Nodes block offset out of range");
      }
    }

    else
    {
      *a1 = 0;
      return kaldi::PipeInputImpl::MyType("Invalid build ID");
    }
  }

  else
  {
    *a1 = 0;
    return err_GenerateErrorVersion();
  }
}

uint64_t PNEW_DTBuffer_Con(uint64_t a1, _DWORD *a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 8, &v8);
  result = v8;
  if (!v8)
  {
    result = DTBuffer_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

int8x16_t DTPostProcessor_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!Object_Con(a1))
  {
    *a1 = &__DTPostProcessor;
    *(a1 + 8) = a2;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    v7 = *(a3 + 72);
    *(a1 + 56) = *(v7 + 16);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 16) = *(a3 + 40);
    result = vextq_s8(*(v7 + 28), *(v7 + 28), 8uLL);
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t DTPostProcessor_Des(uint64_t a1)
{
  _DTPostProcessor_Clear(a1);

  return Object_Des();
}

uint64_t _DTPostProcessor_Clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 40);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(v1 + 32) + 8 * i);
        if (v5)
        {
          OOCAllocator_Free(*(v1 + 8), v5);
          v3 = *(v1 + 40);
        }
      }

      v2 = *(v1 + 32);
    }

    result = OOCAllocator_Free(*(v1 + 8), v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    result = OOCAllocator_Free(*(v1 + 8), v6);
    *(v1 + 48) = 0;
  }

  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 100) = -1;
  *(v1 + 104) = 1;
  return result;
}

uint64_t DTPostProcessor_CreateNBest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  PhonemeSeq = 0;
  v20 = 0;
  v21 = 0;
  __s2 = 0;
  _DTPostProcessor_Clear(a1);
  *(a1 + 40) = 0;
  if (kaldi::MatrixBase<float>::Stride(a2) < a3)
  {
    a3 = kaldi::MatrixBase<float>::Stride(a2);
  }

  if (a3)
  {
    *(a1 + 32) = OOCAllocator_Calloc(*(a1 + 8), a3, 8, &PhonemeSeq);
    if (!PhonemeSeq)
    {
      *(a1 + 48) = OOCAllocator_Calloc(*(a1 + 8), a3, 4, &PhonemeSeq);
      if (!PhonemeSeq && *(a1 + 40) < a3)
      {
        v6 = 0;
        do
        {
          if (v6 >= kaldi::MatrixBase<float>::Stride(a2))
          {
            break;
          }

          v7 = *(*(a2 + 40) + 16);
          if (*(v7 + PtrList_ItemN(a2, v6) * *(*(a2 + 40) + 24) + 4) == -1)
          {
            break;
          }

          v8 = PtrList_ItemN(a2, v6);
          v9 = (*(*(a2 + 40) + 16) + *(*(a2 + 40) + 24) * v8);
          PhonemeSeq = _DTPostProcessor_GetPhonemeSeq(a1, v9 + 6, *v9, &v21, &v20);
          if (PhonemeSeq)
          {
            return PhonemeSeq;
          }

          if (v20)
          {
            v10 = v21;
            PhonemeSeq = _DTPostProcessor_GetTransFromPhnId(a1, v21, v20, &__s2);
            if (PhonemeSeq)
            {
              return PhonemeSeq;
            }

            if (*(a1 + 60) || (v16 = __s2, !_DTPostProcessor_IsDoubleTranscription(a1, __s2)))
            {
              v11 = *(a1 + 80);
              v12 = *(a1 + 84);
              v13 = (v12 + v11 * *(*(*(a2 + 40) + 16) + *(*(a2 + 40) + 24) * v8 + 4)) / 0x3E8;
              if (*(a1 + 88))
              {
                v14 = _DTPostProcessor_KeepVariant(a1, (v12 + v11 * *(*(*(a2 + 40) + 16) + *(*(a2 + 40) + 24) * v8 + 4)) / 0x3E8);
                v15 = __s2;
                if (!v14)
                {
                  OOCAllocator_Free(*(a1 + 8), __s2);
                  if (!v10)
                  {
                    return PhonemeSeq;
                  }

LABEL_23:
                  OOCAllocator_Free(*(a1 + 8), v10);
                  return PhonemeSeq;
                }
              }

              else
              {
                v15 = __s2;
              }

              v17 = *(a1 + 40);
              *(*(a1 + 32) + 8 * v17) = v15;
              *(*(a1 + 48) + 4 * v17) = v13;
              *(a1 + 40) = v17 + 1;
            }

            else
            {
              OOCAllocator_Free(*(a1 + 8), v16);
              __s2 = 0;
            }
          }

          ++v6;
        }

        while (*(a1 + 40) < a3);
        v10 = v21;
        if (!v21)
        {
          return PhonemeSeq;
        }

        goto LABEL_23;
      }
    }
  }

  return PhonemeSeq;
}

uint64_t _DTPostProcessor_GetPhonemeSeq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v22 = 0;
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v10 += *(*(*(a1 + 16) + 8) + *(a2 + 2 * v11++));
    }

    while (a3 != v11);
    if (v10)
    {
      *a4 = OOCAllocator_Realloc(*(a1 + 8), *a4, v10, &v22);
      result = v22;
      if (v22)
      {
        return result;
      }

      v13 = 0;
      v14 = 0;
      *a5 = 0;
      v15 = *(a1 + 16);
      while (1)
      {
        v16 = *(a2 + 2 * v14);
        v17 = (*(v15 + 8) + v16);
        v19 = *v17;
        v18 = v17 + 1;
        if (v19)
        {
          break;
        }

LABEL_17:
        if (++v14 == a3)
        {
          return v22;
        }
      }

      v20 = 0;
      while (1)
      {
        if (*(a1 + 56))
        {
          v21 = *a4;
        }

        else
        {
          v21 = *a4;
          if (v13 && *(v21 + v13 - 1) == v18[v20])
          {
            goto LABEL_12;
          }
        }

        *(v21 + v13) = v18[v20];
        v13 = *a5 + 1;
        *a5 = v13;
        v15 = *(a1 + 16);
        v16 = *(a2 + 2 * v14);
LABEL_12:
        if (++v20 >= *(*(v15 + 8) + v16))
        {
          goto LABEL_17;
        }
      }
    }
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t _DTPostProcessor_GetTransFromPhnId(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v18 = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  v5 = a3;
  v6 = a2;
  v8 = 0;
  v9 = *(*(a1 + 24) + 8);
  v10 = a2;
  v11 = a3;
  do
  {
    v12 = *v10++;
    v8 += strlen((v9 + v12));
    --v11;
  }

  while (v11);
  if (v8)
  {
    v13 = OOCAllocator_Malloc(*(a1 + 8), v8 + 1, &v18);
    *a4 = v13;
    result = v18;
    if (!v18)
    {
      do
      {
        v15 = *(*(a1 + 24) + 8);
        v16 = *v6++;
        v17 = strlen((v15 + v16));
        memcpy(v13, (v15 + v16), v17);
        v13 += v17;
        --v5;
      }

      while (v5);
      *v13 = 0;
      return v18;
    }
  }

  else
  {
LABEL_8:
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t _DTPostProcessor_IsDoubleTranscription(uint64_t a1, char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 32); strcmp(*i, __s2); ++i)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL _DTPostProcessor_KeepVariant(uint64_t a1, int a2)
{
  if (*(a1 + 104))
  {
    *(a1 + 96) = a2;
  }

  else
  {
    v4 = addExpScore(a2, *(a1 + 96));
    *(a1 + 96) = v4;
    if (v4 <= *(a1 + 88))
    {
      result = *(a1 + 92) + *(a1 + 100) > a2;
      goto LABEL_5;
    }
  }

  result = 1;
LABEL_5:
  *(a1 + 100) = a2;
  *(a1 + 104) = 0;
  return result;
}

void PNEW_DTPostProcessor_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 112, &v10);
  if (!v10)
  {
    DTPostProcessor_Con(v8, a2, a3);
    v10 = v9;
    if (v9)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
    }

    else
    {
      *a4 = v8;
    }
  }
}

uint64_t DTHypothesisPool_Compare(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (v3 + v4 * *a2);
  v6 = *(v5 + 2);
  v7 = v3 + v4 * *a3;
  v8 = *(v7 + 4);
  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 > v8)
  {
    return 1;
  }

  v10 = *v5;
  if (v10 < *v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 > *v7)
  {
    return 1;
  }

  if (v10)
  {
    v11 = v5 + 3;
    v12 = (v7 + 6);
    while (1)
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v16 = v13 > v15;
      if (v13 < v15)
      {
        break;
      }

      if (v16)
      {
        return 1;
      }

      result = 0;
      if (!--v10)
      {
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DTHypothesisPool_Con(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = ((2 - 2 * a3) & 2) + 2 * a3 + 6;
    *(a1 + 32) = 0;
    *a1 = &__DTHypothesisPool;
    *(a1 + 8) = a2;

    return PNEW_PtrStack_Con(a2, a2, 1, (a1 + 40));
  }

  return result;
}

uint64_t DTHypothesisPool_Des(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    OOCAllocator_Free(a1[1], v2);
  }

  result = OOC_PlacementDeleteObject(a1[1], a1[5]);
  if (!result)
  {

    return Object_Des();
  }

  return result;
}

uint64_t DTHypothesisPool_FetchHypoID(uint64_t a1, _DWORD *a2)
{
  v14 = 0;
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(*(v4 + 32) + 8 * (v5 - 1));
    result = PtrStack_Remove(v4);
    if (result)
    {
      return result;
    }

    v8 = (v6 - 1);
    v9 = *(a1 + 16) + *(a1 + 24) * v8;
    *v9 = 0;
    *(v9 + 4) = 0;
    goto LABEL_10;
  }

  v8 = *(a1 + 32);
  v10 = (v8 + 1);
  v11 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 16), *(a1 + 24) * v10, &v14);
  result = v14;
  if (v14)
  {
    return result;
  }

  *(a1 + 16) = v11;
  v12 = (*(a1 + 32) + 1);
  *(a1 + 32) = v12;
  if (v12 <= v10)
  {
LABEL_9:
    v13 = v11 + *(a1 + 24) * v8;
    *v13 = 0;
    *(v13 + 4) = 0;
    result = v14;
LABEL_10:
    *a2 = v8;
    return result;
  }

  while (1)
  {
    result = PtrStack_Put(*(a1 + 40), v12);
    v14 = result;
    if (result)
    {
      return result;
    }

    if (v10 >= --v12)
    {
      v11 = *(a1 + 16);
      goto LABEL_9;
    }
  }
}

uint64_t DTHypothesisPool_Resize(uint64_t a1, unsigned int a2)
{
  *(a1 + 24) = ((2 - 2 * a2) & 2) + 2 * a2 + 6;
  v3 = *(a1 + 16);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
  }

  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  v4 = *(a1 + 40);
  if (!*(v4 + 24))
  {
    return 0;
  }

  do
  {
    v5 = PtrStack_Remove(v4);
    v4 = *(a1 + 40);
  }

  while (*(v4 + 24));
  return v5;
}

uint64_t PNEW_DTHypothesisPool_Con(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v10);
  result = v10;
  if (!v10)
  {
    result = DTHypothesisPool_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionBuffer_Con(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = Object_Con(a1);
  v15 = result;
  if (!result)
  {
    *a1 = &__DTQuestionBuffer;
    a1[1] = a2;
    a1[2] = a3;
    a1[4] = a3 + 4;
    a1[3] = OOCAllocator_Calloc(a2, 9, 8, &v15);
    result = v15;
    if (!v15)
    {
      result = PNEW_DTQuestionPP_Con(a2, 0, &v14);
      v15 = result;
      if (!result)
      {
        *(a1[3] + 8) = v14;
        result = PNEW_DTQuestionWB_Con(a2, 0, &v12);
        v15 = result;
        if (!result)
        {
          *(a1[3] + 16) = v12;
          result = PNEW_DTQuestionGP_Con(a2, 0, &v13);
          v15 = result;
          if (!result)
          {
            *(a1[3] + 24) = v13;
            result = PNEW_DTQuestionTG_Con(a2, 0, &v11);
            v15 = result;
            if (!result)
            {
              *(a1[3] + 32) = v11;
              result = PNEW_DTQuestionSG_Con(a2, 0, &v10);
              v15 = result;
              if (!result)
              {
                *(a1[3] + 40) = v10;
                result = PNEW_DTQuestionSP_Con(a2, 0, &v9);
                v15 = result;
                if (!result)
                {
                  *(a1[3] + 48) = v9;
                  result = PNEW_DTQuestionPPBin_Con(a2, 0, &v8);
                  v15 = result;
                  if (!result)
                  {
                    *(a1[3] + 56) = v8;
                    result = PNEW_DTQuestionGPBin_Con(a2, 0, &v7);
                    if (!result)
                    {
                      *(a1[3] + 64) = v7;
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

uint64_t DTQuestionBuffer_Des(uint64_t *a1)
{
  v2 = 0;
  a1[2] = 0;
  while (1)
  {
    v3 = *(a1[3] + v2);
    if (v3)
    {
      result = OOC_PlacementDeleteObject(a1[1], v3);
      if (result)
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 72)
    {
      OOCAllocator_Free(a1[1], a1[3]);

      return Object_Des();
    }
  }

  return result;
}

uint64_t DTQuestionBuffer_BorrowQuestion(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 32) + a2);
  result = *(*(a1 + 24) + 8 * *v2);
  *(result + 8) = v2;
  return result;
}

uint64_t PNEW_DTQuestionBuffer_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 40, &v10);
  result = v10;
  if (!v10)
  {
    result = DTQuestionBuffer_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTSearch_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTSearch;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    result = PNEW_DTHypothesisPool_Con(a2, a2, 0, (a1 + 24));
    if (!result)
    {
      result = PNEW_DTHypothesisList_Con(a2, a2, *(a1 + 24), (a1 + 32));
      if (!result)
      {
        result = PNEW_DTHypothesisList_Con(a2, a2, *(a1 + 24), (a1 + 40));
        v10 = result;
        if (!result)
        {
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          v7 = *(*(a1 + 16) + 72);
          v8 = *v7;
          *(a1 + 48) = *v7;
          *(a1 + 50) = v8;
          v9 = *(v7 + 2);
          *(a1 + 52) = *(v7 + 1);
          *(a1 + 56) = v9;
          LOWORD(v7) = v7[6];
          *(a1 + 60) = v7;
          *(a1 + 62) = v7;
          *(a1 + 80) = 0;
          if (v9)
          {
            *(a1 + 80) = OOCAllocator_Realloc(a2, 0, 4 * v9, &v10);
            return v10;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DTSearch_Des(uint64_t *a1)
{
  result = _DTSearch_ClearHypothesis(a1, a1[5]);
  if (!result)
  {
    result = _DTSearch_ClearHypothesis(a1, a1[4]);
    if (!result)
    {
      result = OOC_PlacementDeleteObject(a1[1], a1[4]);
      if (!result)
      {
        result = OOC_PlacementDeleteObject(a1[1], a1[5]);
        if (!result)
        {
          result = OOC_PlacementDeleteObject(a1[1], a1[3]);
          if (!result)
          {
            result = __DTSearch_LeafPoolClear(a1);
            if (!result)
            {
              a1[2] = 0;
              a1[4] = 0;
              a1[5] = 0;
              v3 = a1[10];
              if (v3)
              {
                OOCAllocator_Free(a1[1], v3);
              }

              return Object_Des();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _DTSearch_ClearHypothesis(uint64_t a1, uint64_t a2)
{
  if (kaldi::MatrixBase<float>::Stride(a2))
  {
    v4 = 0;
    while (1)
    {
      v5 = PtrList_ItemN(a2, v4);
      result = DTHypothesisPool_ReturnHypoID(*(a1 + 24), v5);
      if (result)
      {
        break;
      }

      if (++v4 >= kaldi::MatrixBase<float>::Stride(a2))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    PtrList_RemoveAll(a2);
    return 0;
  }

  return result;
}

uint64_t __DTSearch_LeafPoolClear(uint64_t *a1)
{
  v2 = a1 + 8;
  v1 = a1[8];
  if (!v1)
  {
    return 0;
  }

  if (a1[9])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      result = DTLeaf_Con((*v2 + v4), 0);
      if (result)
      {
        break;
      }

      ++v5;
      v4 += 8;
      if (v5 >= a1[9])
      {
        v1 = *v2;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    OOCAllocator_Free(a1[1], v1);
    result = 0;
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

unint64_t DTSearch_BeamSearch(uint64_t a1, _BYTE *a2, size_t a3, void *a4)
{
  v38 = 0;
  result = _DTSearch_LeafPoolResize(a1, 1uLL);
  if (result)
  {
    return result;
  }

  result = _DTSearch_ClearHypothesis(a1, *(a1 + 32));
  if (result)
  {
    return result;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_19;
  }

  result = DTHypothesisPool_Resize(*(a1 + 24), a3);
  if (result)
  {
    return result;
  }

  v9 = *(a1 + 48);
  *(a1 + 50) = v9;
  if (!v9)
  {
    LOWORD(v9) = *(a1 + 60);
  }

  *(a1 + 62) = v9;
  result = DTTree_Traverse(*(a1 + 16), 0, a2, a3, 0, 0, *(a1 + 64));
  if (result)
  {
    return result;
  }

  if ((*(**(a1 + 64) + 1) & 2) != 0)
  {
LABEL_20:
    if (a3 != 1)
    {
      if (a3 <= 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = a3;
      }

      v17 = 1;
      do
      {
        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
        *(a1 + 32) = v18;
        *(a1 + 40) = v19;
        result = _DTSearch_ClearHypothesis(a1, v18);
        if (result)
        {
          return result;
        }

        v20 = kaldi::MatrixBase<float>::Stride(*(a1 + 40));
        result = _DTSearch_LeafPoolResize(a1, v20);
        if (result)
        {
          return result;
        }

        if (kaldi::MatrixBase<float>::Stride(*(a1 + 40)))
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = (*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * PtrList_ItemN(*(a1 + 40), v25));
            result = DTTree_Traverse(*(a1 + 16), v17, a2, a3, v26 + 6, *v26, (*(a1 + 64) + v24));
            if (result)
            {
              return result;
            }

            ++v25;
            v24 += 8;
          }

          while (v25 < kaldi::MatrixBase<float>::Stride(*(a1 + 40)));
        }

        v37 = v16;
        if (*(a1 + 52))
        {
          _DTSearch_GetHistogramPruningThreshold(a1, *(a1 + 40), v21, v22, v23, (a1 + 50));
        }

        if (kaldi::MatrixBase<float>::Stride(*(a1 + 40)))
        {
          v27 = 0;
LABEL_37:
          v28 = 0;
          v29 = PtrList_ItemN(*(a1 + 40), v27);
          v30 = *(*(a1 + 64) + 8 * v27);
          while (1)
          {
            v31 = *(v30 + v28);
            if (!_DTSearch_HypoWillBePruned(a1, *(a1 + 32), *(v30 + v28)))
            {
              result = DTHypothesisPool_FetchHypoID(*(a1 + 24), &v38);
              if (result)
              {
                return result;
              }

              v32 = *(a1 + 24);
              memcpy((*(v32 + 16) + *(v32 + 24) * v38), (*(v32 + 16) + *(v32 + 24) * v29), *(v32 + 24));
              v33 = v38;
              v34 = (*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * v38);
              *(v34 + 2) += v31;
              if (*(*(*(a1 + 64) + 8 * v27) + v28 + 1) >= 4u)
              {
                v35 = *v34;
                *(v34 + v35 + 3) = *(*(*(a1 + 64) + 8 * v27) + v28 + 1) >> 2;
                *v34 = v35 + 1;
                v33 = v38;
              }

              result = _DTSearch_AddHypothesis(a1, *(a1 + 32), v33);
              if (result)
              {
                return result;
              }
            }

            v30 = *(*(a1 + 64) + 8 * v27);
            v36 = *(v30 + v28 + 1);
            v28 += 3;
            if (v36)
            {
              if (++v27 < kaldi::MatrixBase<float>::Stride(*(a1 + 40)))
              {
                goto LABEL_37;
              }

              break;
            }
          }
        }

        ++v17;
        v16 = v37;
      }

      while (v17 != v37);
    }

    result = _DTSearch_ClearHypothesis(a1, *(a1 + 40));
    if (result)
    {
      return result;
    }

    PtrList_UdSort(*(a1 + 32), __DTSearch_HypoCompare, *(a1 + 24));
    v15 = kaldi::MatrixBase<float>::Stride(*(a1 + 32));
LABEL_19:
    result = 0;
    *a4 = v15;
    return result;
  }

  result = DTHypothesisPool_FetchHypoID(*(a1 + 24), &v38);
  if (!result)
  {
    v10 = 0;
    do
    {
      v11 = (**(a1 + 64) + v10);
      v12 = v38;
      v13 = *(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * v38;
      *(v13 + 4) = *v11;
      v14 = *(v11 + 1);
      if (v14 >= 4)
      {
        *(v13 + 6) = v14 >> 2;
        *v13 = 1;
        v12 = v38;
      }

      result = _DTSearch_AddHypothesis(a1, *(a1 + 32), v12);
      if (result)
      {
        break;
      }

      if (*(**(a1 + 64) + v10 + 1))
      {
        goto LABEL_20;
      }

      result = DTHypothesisPool_FetchHypoID(*(a1 + 24), &v38);
      v10 += 3;
    }

    while (!result);
  }

  return result;
}

uint64_t _DTSearch_LeafPoolResize(uint64_t *a1, unint64_t a2)
{
  result = 0;
  v8 = 0;
  if (a1[9] < a2)
  {
    a1[8] = OOCAllocator_Realloc(a1[1], a1[8], 8 * a2, &v8);
    result = v8;
    if (!v8)
    {
      v5 = a1[9];
      v6 = a2 - v5;
      if (a2 <= v5)
      {
LABEL_7:
        result = 0;
        a1[9] = a2;
      }

      else
      {
        v7 = 8 * v5;
        while (1)
        {
          result = DTLeaf_Con((a1[8] + v7), 0);
          v8 = result;
          if (result)
          {
            break;
          }

          v7 += 8;
          if (!--v6)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _DTSearch_AddHypothesis(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (kaldi::MatrixBase<float>::Stride(a2))
  {
    v6 = *(a1 + 24);
    v7 = *(v6 + 16);
    v8 = *(v7 + *(v6 + 24) * a3 + 4);
    v9 = PtrList_ItemN(a2, 0);
    v10 = *(a1 + 24);
    if (v8 == 0xFFFF || (v11 = *(v7 + v9 * v10[3] + 4), *(a1 + 50)) && *(a1 + 50) + v11 < v8)
    {

      return DTHypothesisPool_ReturnHypoID(v10, a3);
    }

    v14 = a2;
    v13 = a3;
    if (v8 >= v11)
    {

      return PtrList_Append(a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v14 = a2;
  }

  return PtrList_Prepend(v14, v13);
}

uint64_t _DTSearch_GetHistogramPruningThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v9 = *(a1 + 80);
  if (kaldi::MatrixBase<float>::Stride(a2))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 64) + 8 * v10);
      v14 = *(v12 + 1);
      v13 = (v12 + 1);
      if ((v14 & 2) == 0)
      {
        do
        {
          ++v11;
          v15 = *v13;
          v13 += 3;
        }

        while ((v15 & 1) == 0);
      }

      ++v10;
    }

    while (v10 < kaldi::MatrixBase<float>::Stride(a2));
  }

  else
  {
    v11 = 0;
  }

  v16 = *(a1 + 56);
  if (v11 < *(a1 + 52))
  {
    LOWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = *(a1 + 56);
LABEL_31:
    if (v20)
    {
      v17 = v16 * *(a1 + 62) / v20;
    }

    goto LABEL_33;
  }

  bzero(v9, 4 * v16);
  if (kaldi::MatrixBase<float>::Stride(a2))
  {
    v21 = 0;
    v19 = 0;
    v18 = 0;
    LOWORD(v17) = 0;
    while (1)
    {
      v22 = *(*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * PtrList_ItemN(a2, v21) + 4);
      v23 = *(a1 + 64);
      if (!v21)
      {
        v18 = v22 + **v23;
        v19 = v18;
      }

      v24 = v23[v21];
      if ((v24[1] & 2) == 0)
      {
        break;
      }

LABEL_23:
      if (++v21 >= kaldi::MatrixBase<float>::Stride(a2))
      {
        goto LABEL_26;
      }
    }

    v25 = (v24 + 1);
    while (1)
    {
      LOWORD(v17) = v22 + *(v25 - 1);
      v26 = v9;
      if (v17 < v18)
      {
        goto LABEL_19;
      }

      v27 = *(a1 + 56);
      v28 = v27 * (v17 - v18) / *(a1 + 62);
      if (v28 < v27)
      {
        break;
      }

LABEL_20:
      if (v17 < v19)
      {
        v19 = v17;
      }

      v29 = *v25;
      v25 += 3;
      if (v29)
      {
        goto LABEL_23;
      }
    }

    v26 = &v9[4 * v28];
LABEL_19:
    ++*v26;
    goto LABEL_20;
  }

  LOWORD(v17) = 0;
  v18 = 0;
  v19 = 0;
LABEL_26:
  v20 = *(a1 + 56);
  if (v20)
  {
    v30 = 0;
    v16 = 0;
    while (v30 < *(a1 + 52))
    {
      v30 += *&v9[4 * v16++];
      if (v20 == v16)
      {
        v16 = *(a1 + 56);
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_33:
  *a6 = v17 - v19 + v18;
  if (*(a1 + 48))
  {
    v31 = (v17 - v19 + v18);
    if (v31 >= *(a1 + 48))
    {
      LOWORD(v31) = *(a1 + 48);
    }

    *a6 = v31;
  }

  return 0;
}

uint64_t _DTSearch_HypoWillBePruned(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = kaldi::MatrixBase<float>::Stride(a2);
  if (result)
  {
    v7 = PtrList_ItemN(a2, 0);
    return *(a1 + 50) && *(*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * v7 + 4) + *(a1 + 50) < a3;
  }

  return result;
}

uint64_t DTSearch_SetHistogramBins(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  *(a1 + 56) = a2;
  if (!a2)
  {
    return 0;
  }

  *(a1 + 80) = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 80), 4 * a2, &v3);
  return v3;
}

uint64_t PNEW_DTSearch_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 88, &v10);
  result = v10;
  if (!v10)
  {
    result = DTSearch_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

BOOL DTQuestionSP_IsTrue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  result = 0;
  if (v7 + a6 >= 0 && a5 && v7 < 0)
  {
    return *(a5 + 2 * (v7 + a6)) == *(v6 + 2);
  }

  return result;
}

uint64_t PNEW_DTQuestionSP_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionSP;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_DTQuestionTG_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionTG;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTGraphemeParser_Des(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    OOCAllocator_Free(*(a1 + 8), v2);
    *(a1 + 24) = 0;
  }

  return Object_Des();
}

uint64_t DTGraphemeParser_Parse(void *a1, char *__s)
{
  v18 = 0;
  v4 = strlen(__s);
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    if (v4 >= v6)
    {
      v7 = OOCAllocator_Realloc(a1[1], a1[3], v4, &v18);
      a1[3] = v7;
      v9 = v18;
      if (v18)
      {
        return v9;
      }

      a1[4] = v5;
      v6 = v5;
    }

    else
    {
      v7 = a1[3];
    }

    a1[5] = 0;
    bzero(v7, v6);
    v10 = 0;
    v11 = *(*(a1[2] + 16) + 4);
    while (1)
    {
      GraphemeID = DTGraphemeBuffer_FirstGraphemeID(a1[2], &__s[v10]);
      if (v11 <= GraphemeID)
      {
        break;
      }

      v13 = GraphemeID;
      v14 = *(a1[2] + 24);
      while (1)
      {
        v15 = v14 + 8 * v13;
        v16 = *(v15 + 8) + ~*v15;
        if (!strncmp(*v15, &__s[v10], v16))
        {
          break;
        }

        if (v11 <= ++v13)
        {
          goto LABEL_17;
        }
      }

      *(a1[3] + a1[5]++) = v13;
      v10 += v16;
      if (v10 >= v5)
      {
        return v18;
      }
    }

LABEL_17:
    a1[5] = 0;
    bzero(a1[3], a1[4]);
    return 4;
  }

  else
  {
    a1[5] = 0;
    v8 = a1[3];
    if (v8)
    {
      bzero(v8, a1[4]);
    }

    return 0;
  }
}

uint64_t PNEW_DTGraphemeParser_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v11);
  result = v11;
  if (!v11)
  {
    result = Object_Con(v8);
    if (result)
    {
      v11 = result;
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v11;
    }

    else
    {
      *v8 = &__DTGraphemeParser;
      v8[1] = a2;
      v10 = *(a3 + 56);
      v8[4] = 0;
      v8[5] = 0;
      v8[2] = v10;
      v8[3] = 0;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionPPBin_IsTrue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  v8 = v7 + a6;
  if (v7 + a6 < 0)
  {
    return 0;
  }

  result = 0;
  if (a5 && v7 < 0)
  {
    v10 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v11 = 0;
      v12 = *(a5 + 2 * v8);
      v13 = v6 + 3;
      v14 = v10 - 1;
      while (1)
      {
        v15 = (v14 + v11) >> 1;
        v16 = *(v13 + 2 * v15);
        if (v12 >= v16)
        {
          if (v12 <= v16)
          {
            return 1;
          }

          v11 = v15 + 1;
        }

        else
        {
          v14 = v15 - 1;
        }

        if (v11 > v14)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t PNEW_DTQuestionPPBin_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionPPBin;
      *a3 = v6;
    }
  }

  return result;
}

double LexDT_Con(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (!_LexChain_Con(a1, a2, a3))
  {
    *a1 = &__LexDT;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    if (a4)
    {
      *(a1 + 72) = a4;
      *(a1 + 80) = a5;
      if (!PNEW_DTTree_Con(a2, a2, a4, (a1 + 56)) && !PNEW_DTGraphemeParser_Con(a2, a2, *(a1 + 56), (a1 + 32)) && !PNEW_DTSearch_Con(a2, a2, *(a1 + 56), (a1 + 40)))
      {
        PNEW_DTPostProcessor_Con(a2, a2, *(a1 + 56), (a1 + 48));
        if (!v10)
        {
          *(a1 + 64) = *(*(*(a1 + 56) + 72) + 24);
        }
      }
    }

    else
    {
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
    }
  }

  return result;
}

uint64_t LexDT_Des(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[6];
  if (!v3 || (result = OOC_PlacementDeleteObject(a1[2], v3), !result))
  {
    v5 = a1[5];
    if (!v5 || (result = OOC_PlacementDeleteObject(v2, v5), !result))
    {
      v6 = a1[4];
      if (!v6 || (result = OOC_PlacementDeleteObject(v2, v6), !result))
      {
        v7 = a1[7];
        if (!v7 || (result = OOC_PlacementDeleteObject(v2, v7), !result))
        {
          v8 = a1[10];
          if (v8)
          {
            OOCAllocator_Free(v8, a1[9]);
          }

          return LexChain_Des(a1);
        }
      }
    }
  }

  return result;
}

uint64_t LexDT_GetParamList(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    result = 0;
    v5 = a3;
    for (i = (a2 + 4); ; i += 2)
    {
      v7 = *(i - 1);
      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          if (v7 != 2)
          {
            v9 = *(a1 + 40);
LABEL_22:
            v8 = *(v9 + 56);
            goto LABEL_23;
          }

          v8 = *(*(a1 + 40) + 52);
        }

        else if (v7)
        {
          if (v7 != 1)
          {
LABEL_26:
            result = kaldi::PipeInputImpl::MyType("Param list contains parameter with invalid ID");
            goto LABEL_24;
          }

          v8 = *(*(a1 + 40) + 48);
        }

        else
        {
          v8 = *(a1 + 64);
        }
      }

      else
      {
        if (v7 <= 5)
        {
          if (v7 == 4)
          {
            v8 = *(*(a1 + 40) + 60);
          }

          else
          {
            v8 = *(*(a1 + 48) + 88);
          }

          goto LABEL_23;
        }

        switch(v7)
        {
          case 6:
            v8 = *(*(a1 + 48) + 92);
            break;
          case 7:
            v9 = *(a1 + 48);
            goto LABEL_22;
          case 8:
            v8 = *(*(a1 + 48) + 60);
            break;
          default:
            goto LABEL_26;
        }
      }

LABEL_23:
      *i = v8;
LABEL_24:
      if (!--v5)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t LexDT_HasParam(uint64_t a1, int a2)
{
  v2 = 0;
  while (dword_1C37BD250[v2] != a2)
  {
    if (++v2 == 9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t LexDT_SetParamList(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = a3;
    for (i = (a2 + 4); ; i += 2)
    {
      v7 = *(i - 1);
      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          if (v7 != 2)
          {
            v8 = DTSearch_SetHistogramBins(*(a1 + 40), *i);
LABEL_23:
            v4 = v8;
            goto LABEL_24;
          }

          DTSearch_SetHistogramPruning(*(a1 + 40), *i);
        }

        else if (v7)
        {
          if (v7 != 1)
          {
LABEL_22:
            v8 = kaldi::PipeInputImpl::MyType("Param list contains parameter with invalid ID");
            goto LABEL_23;
          }

          DTSearch_SetPruning(*(a1 + 40), *i);
        }

        else
        {
          *(a1 + 64) = *i;
        }
      }

      else
      {
        if (v7 <= 5)
        {
          if (v7 == 4)
          {
            DTSearch_SetHistogramDiff(*(a1 + 40), *i);
          }

          else
          {
            *(*(a1 + 48) + 88) = *i;
          }

          goto LABEL_24;
        }

        switch(v7)
        {
          case 6:
            *(*(a1 + 48) + 92) = *i;
            break;
          case 7:
            *(*(a1 + 48) + 56) = *i;
            break;
          case 8:
            *(*(a1 + 48) + 60) = *i;
            break;
          default:
            goto LABEL_22;
        }
      }

LABEL_24:
      if (!--v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

unint64_t _LexDT_FindWord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  result = DTGraphemeParser_Parse(*(a1 + 32), *(a2 + 8));
  if (!result)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    if (!*(v7 + 40))
    {
      return 0;
    }

    v9 = *(v7 + 24);
    v17 = 0;
    result = DTSearch_BeamSearch(*(a1 + 40), v9, v8, &v17);
    if (result)
    {
      return result;
    }

    result = DTPostProcessor_CreateNBest(*(a1 + 48), *(*(a1 + 40) + 32), *(a1 + 64));
    if (result)
    {
      return result;
    }

    v10 = *(*(a1 + 48) + 40);
    if (!v10)
    {
      return 0;
    }

    for (i = 0; i != v10; ++i)
    {
      v16 = 0;
      v12 = *(a1 + 48);
      v13 = *(*(v12 + 32) + 8 * i);
      TranscriptionSize = DTPostProcessor_GetTranscriptionSize(v12, i);
      result = PNEW_Transcription_Con(v5, v5, v13, TranscriptionSize, 1, 1, &v16);
      if (result)
      {
        break;
      }

      v15 = v16;
      *(v16 + 28) = *(*(*(a1 + 48) + 48) + 4 * i);
      result = PtrQueue_Put(a3, v15);
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

void PNEW_LexDT_Con(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 88, &v14);
  if (!v14)
  {
    LexDT_Con(v12, a2, a3, a4, a5);
    v14 = v13;
    if (v13)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
    }

    else
    {
      *a6 = v12;
    }
  }
}

BOOL DTQuestionWB_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 8) + 1);
  v5 = v4 + a2;
  if (v4 < 0)
  {
    if (v5 < a4)
    {
      if ((v5 & 0x80000000) != 0)
      {
        return 1;
      }

      v8 = (a3 + v5);
      if (!*v8)
      {
        if (v5 != a4 - 1)
        {
          v7 = v8 + 1;
          return *v7 != 0;
        }

        return 1;
      }
    }

    return 0;
  }

  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  if (v5 >= a4)
  {
    return 1;
  }

  v6 = (a3 + v5);
  if (*v6)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = v6 - 1;
  return *v7 != 0;
}

uint64_t PNEW_DTQuestionWB_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionWB;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t _LexChain_Con(void *a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LexChain;
    a1[1] = a3;
    a1[2] = a2;
    a1[3] = 0;
  }

  return result;
}

uint64_t LexChain_Des(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 16), v2);
    if (result)
    {
      return result;
    }

    *(a1 + 24) = 0;
  }

  return Object_Des();
}

uint64_t LexChain_AddPostProcessor(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
    result = PNEW_PtrList_Con(*(a1 + 16), *(a1 + 16), 8u, 8, v5);
    if (result)
    {
      return result;
    }

    v4 = *v5;
  }

  return PtrList_Append(v4, a2);
}

uint64_t LexChain_FetchTranscription(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1 + 72))(a1, *(a2 + 20)))
  {
    memset(v17, 0, sizeof(v17));
    result = PtrQueue_Con(v17, a1[2], 5u, 5);
    if (!result)
    {
      result = (*(*a1 + 64))(a1, a2, v17);
      if (!result)
      {
        if (PtrQueue_IsEmpty(v17))
        {
          v9 = a1[1];
          if (v9)
          {
            result = (*(*v9 + 24))(v9, a2, a3, a4);
            if (result)
            {
              return result;
            }
          }
        }

        else
        {
          while (!PtrQueue_IsEmpty(v17))
          {
            v11 = PtrQueue_Item(v17);
            v12 = v11;
            if (a3 && (*(v11 + 20) & a3) == 0)
            {
              v13 = a1[1];
              if (v13)
              {
                result = (*(*v13 + 24))(v13, v12, a3, a4);
                if (result)
                {
                  return result;
                }
              }

              result = PDELETE_Transcription(a1[2], v12);
              if (result)
              {
                return result;
              }
            }

            else
            {
              result = PtrQueue_Put(a4, v11);
              if (result)
              {
                return result;
              }
            }

            result = PtrQueue_Remove(v17);
            if (result)
            {
              return result;
            }
          }
        }

        v14 = a1[3];
        if (v14 && kaldi::MatrixBase<float>::Stride(v14))
        {
          v15 = 0;
          while (1)
          {
            v16 = PtrList_ItemN(a1[3], v15);
            result = (*(*v16 + 80))(v16, a2, a3, a4);
            if (result)
            {
              break;
            }

            if (++v15 >= kaldi::MatrixBase<float>::Stride(a1[3]))
            {
              return (*(*&v17[0] + 16))(v17);
            }
          }
        }

        else
        {
          return (*(*&v17[0] + 16))(v17);
        }
      }
    }
  }

  else
  {
    result = a1[1];
    if (result)
    {
      v10 = *(*result + 24);

      return v10();
    }
  }

  return result;
}

uint64_t _LexChain_PostProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v13, 0, sizeof(v13));
  v7 = PtrQueue_NrItems(a4);
  result = PtrQueue_Con(v13, a1[2], 5u, 5);
  if (!result)
  {
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v10 = PtrQueue_Item(a4);
        result = PtrQueue_Remove(a4);
        if (result)
        {
          break;
        }

        if ((*(*a1 + 72))(a1, *(v10 + 20)))
        {
          result = (*(*a1 + 24))(a1, v10, a3, v13);
          if (result)
          {
            return result;
          }

          while (!PtrQueue_IsEmpty(v13))
          {
            v11 = PtrQueue_Item(v13);
            result = PtrQueue_Put(a4, v11);
            if (!result)
            {
              result = PtrQueue_Remove(v13);
              if (!result)
              {
                continue;
              }
            }

            return result;
          }

          result = PDELETE_Transcription(a1[2], v10);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = PtrQueue_Put(a4, v10);
          if (result)
          {
            return result;
          }

          while (!PtrQueue_IsEmpty(v13))
          {
            v12 = PtrQueue_Item(v13);
            result = PDELETE_Transcription(a1[2], v12);
            if (!result)
            {
              result = PtrQueue_Remove(v13);
              if (!result)
              {
                continue;
              }
            }

            return result;
          }
        }

        if (++v9 == v7)
        {
          return (*(*&v13[0] + 16))(v13);
        }
      }
    }

    else
    {
      return (*(*&v13[0] + 16))(v13);
    }
  }

  return result;
}

uint64_t Transcription_Con(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v16 = 0;
  if (a5 == 1)
  {
    if (a3[a4 - 1])
    {
      v12 = a4 + 1;
    }

    else
    {
      v12 = a4;
    }
  }

  else
  {
    v12 = a4;
    if (a5 == 4)
    {
      if (!a4 || (v12 = a4, a3[a4 - 1]))
      {
        v12 = a4 + 1;
      }
    }
  }

  v13 = OOCAllocator_Calloc(a2, 1, v12, &v16);
  *(a1 + 8) = v13;
  v14 = v16;
  if (!v16)
  {
    memcpy(v13, a3, a4);
    *(a1 + 16) = v12;
    *(a1 + 20) = a5;
    *(a1 + 24) = a6;
    *(a1 + 28) = 0;
    *a1 = a2;
    return v16;
  }

  return v14;
}

uint64_t Transcription_Des(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    OOCAllocator_Free(*a1, *(a1 + 8));
  }

  return 0;
}

uint64_t PNEW_Transcription_Con(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, int a5, int a6, uint64_t *a7)
{
  v16 = 0;
  v14 = OOCAllocator_Malloc(a1, 32, &v16);
  result = v16;
  if (!v16)
  {
    result = Transcription_Con(v14, a2, a3, a4, a5, a6);
    v16 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v14);
      *a7 = 0;
      return v16;
    }

    else
    {
      *a7 = v14;
    }
  }

  return result;
}

uint64_t PDELETE_Transcription(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= 1)
  {
    OOCAllocator_Free(*a2, *(a2 + 8));
  }

  OOCAllocator_Free(a1, a2);
  return 0;
}

uint64_t StringTokenizer_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  v5 = result;
  if (!result)
  {
    *a1 = &__StringTokenizer;
    a1[1] = a2;
    a1[3] = 50;
    a1[5] = 50;
    a1[2] = OOCAllocator_Malloc(a2, 50, &v5);
    result = v5;
    if (!v5)
    {
      a1[4] = OOCAllocator_Malloc(a1[1], a1[5], &v5);
      result = v5;
      if (!v5)
      {
        a1[6] = 0;
      }
    }
  }

  return result;
}

uint64_t StringTokenizer_Des(uint64_t *a1)
{
  OOCAllocator_Free(a1[1], a1[2]);
  OOCAllocator_Free(a1[1], a1[4]);

  return Object_Des();
}

uint64_t StringTokenizer_ExpandPhoneticMultiples(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, void *a5)
{
  v15 = 0;
  v16 = 0;
  *a4 = 0;
  v8 = __StringTokenizer_ExpandMultiple(a2, a3, &v15, &v16);
  if (!v8)
  {
    v9 = v16;
    v10 = v15;
    if (v16 >= 0x11)
    {
      v11 = (v15 + 128);
      v12 = v16 - 16;
      do
      {
        v13 = *v11++;
        OOCAllocator_Free(a2, v13);
        --v12;
      }

      while (v12);
      v9 = 16;
    }

    *a4 = v10;
    *a5 = v9;
  }

  return v8;
}

uint64_t __StringTokenizer_ExpandMultiple(uint64_t a1, char *a2, uint64_t *a3, unsigned int *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v100 = 0;
  *a4 = 0;
  *a3 = 0;
  v8 = strchr(a2, 40);
  if (v8)
  {
    v9 = v8;
    v10 = strchr(v8 + 2, 37);
    v11 = strchr(v9 + 1, 41);
    if (v11)
    {
      v12 = v11;
      while (*(v12 - 1) == 37)
      {
        v12 = strchr(v12 + 1, 41);
        if (!v12)
        {
          return v100;
        }
      }

      if (!v10 || v10 >= v12)
      {
        goto LABEL_24;
      }

      do
      {
        v14 = v10 + 1;
        if (v10[1] == 34)
        {
          v15 = strchr(v10 + 2, 34);
          if (!v15)
          {
            return v100;
          }

          v16 = v15;
          if (v15 > v12)
          {
            for (i = v15 + 1; ; i = v18 + 1)
            {
              v18 = strchr(i, 41);
              v12 = v18;
              if (!v18 || *(v18 - 1) != 37)
              {
                break;
              }
            }
          }

          v14 = v16 + 1;
        }

        v19 = strchr(v14, 37);
        if (!v19)
        {
          break;
        }

        v10 = v19;
      }

      while (v19 < v12);
      if (v12)
      {
LABEL_24:
        for (j = v9 + 1; ; j = v22 + 1)
        {
          v21 = strchr(j, 40);
          if (!v21)
          {
            break;
          }

          v22 = v21;
          if (v21 >= v12)
          {
            break;
          }

          v23 = strchr(v21 + 1, 37);
          v24 = strchr(v12 + 1, 41);
          if (!v24)
          {
            return v100;
          }

          v12 = v24;
          while (*(v12 - 1) == 37)
          {
            v12 = strchr(v12 + 1, 41);
            if (!v12)
            {
              return v100;
            }
          }

          if (v23 && v23 < v12)
          {
            do
            {
              v25 = v23 + 1;
              if (v23[1] == 34)
              {
                v26 = strchr(v23 + 2, 34);
                if (!v26)
                {
                  return v100;
                }

                v27 = v26;
                if (v26 > v12)
                {
                  for (k = v26 + 1; ; k = v29 + 1)
                  {
                    v29 = strchr(k, 41);
                    v12 = v29;
                    if (!v29 || *(v29 - 1) != 37)
                    {
                      break;
                    }
                  }
                }

                v25 = v27 + 1;
              }

              v30 = strchr(v25, 37);
              if (!v30)
              {
                break;
              }

              v23 = v30;
            }

            while (v30 < v12);
            if (!v12)
            {
              return v100;
            }
          }
        }

        v91 = strlen(v12);
        v31 = OOCAllocator_Malloc(a1, v12 - v9, &v100);
        if (!v100)
        {
          v32 = v31;
          v33 = strncpy(v31, v9 + 1, v12 - v9 - 1);
          v33[v12 - v9 - 1] = 0;
          LODWORD(v99) = 0;
          v34 = strchr(v33, 124);
          if (v34)
          {
            v35 = v34;
            v86 = v6;
            v87 = v4;
            v97 = 0;
            v92 = 0;
            v36 = v32;
            v37 = v32;
            v88 = v5;
            v89 = v32;
            do
            {
              __s = v36;
              v38 = strchr(v37, 40);
              if (!v38 || v35 <= v38)
              {
                goto LABEL_55;
              }

              v39 = 1;
              do
              {
                v38 = strchr(v38 + 1, 40);
                --v39;
              }

              while (v38 && v35 > v38);
              if (v39 != 1)
              {
                v45 = 0;
                v84 = -v39;
                do
                {
                  v46 = strchr(v37 + 1, 37);
                  v47 = strchr(v37 + 1, 41);
                  if (!v47)
                  {
                    goto LABEL_83;
                  }

                  v37 = v47;
                  while (*(v37 - 1) == 37)
                  {
                    v37 = strchr(v37 + 1, 41);
                    if (!v37)
                    {
                      goto LABEL_83;
                    }
                  }

                  if (v46 && v46 < v37)
                  {
                    do
                    {
                      v48 = v46 + 1;
                      if (v46[1] == 34)
                      {
                        v49 = strchr(v46 + 2, 34);
                        if (!v49)
                        {
                          goto LABEL_83;
                        }

                        v50 = v49;
                        if (v49 > v37)
                        {
                          for (m = v49 + 1; ; m = v52 + 1)
                          {
                            v52 = strchr(m, 41);
                            v37 = v52;
                            if (!v52 || *(v52 - 1) != 37)
                            {
                              break;
                            }
                          }
                        }

                        v48 = v50 + 1;
                      }

                      v53 = strchr(v48, 37);
                      if (!v53)
                      {
                        break;
                      }

                      v46 = v53;
                    }

                    while (v53 < v37);
                    if (!v37)
                    {
LABEL_83:
                      v85 = 0;
                      v6 = v86;
                      goto LABEL_84;
                    }
                  }
                }

                while (v84 != v45++);
                if (v35 > v37)
                {
                  goto LABEL_55;
                }

                ++v37;
                v36 = __s;
              }

              else
              {
LABEL_55:
                v40 = OOCAllocator_Realloc(a1, v97, 8 * (v92 + 1), &v99);
                v41 = v99;
                if (v99)
                {
                  return v41;
                }

                v42 = v40;
                v43 = v35 - __s;
                v44 = OOCAllocator_Malloc(a1, v35 - __s + 2, &v99);
                *(v42 + 8 * v92) = v44;
                v41 = v99;
                if (v99)
                {
                  return v41;
                }

                strncpy(v44, __s, v43);
                *(*(v42 + 8 * v92) + v43) = 0;
                v97 = v42;
                *(*(v42 + 8 * v92) + v43 + 1) = 0;
                v37 = v35 + 1;
                ++v92;
                v36 = v35 + 1;
                v5 = v88;
                v32 = v89;
                v4 = v87;
              }

              v35 = strchr(v37, 124);
            }

            while (v35);
            __sa = v36;
            v80 = v92 + 1;
            v81 = v97;
            v6 = v86;
          }

          else
          {
            v81 = 0;
            v80 = 1;
            __sa = v32;
          }

          v76 = OOCAllocator_Realloc(a1, v81, 8 * v80, &v99);
          v41 = v99;
          if (v99)
          {
            return v41;
          }

          v77 = v76;
          v94 = strlen(__sa);
          v78 = OOCAllocator_Malloc(a1, (v94 + 2), &v99);
          *(v77 + 8 * (v80 - 1)) = v78;
          v41 = v99;
          if (v99)
          {
            return v41;
          }

          else
          {
            v85 = v80;
            strcpy(v78, __sa);
            v97 = v77;
            *(*(v77 + 8 * (v80 - 1)) + (v94 + 1)) = 0;
LABEL_84:
            v100 = v99;
            if (!v99)
            {
              *v5 = OOCAllocator_Malloc(a1, 8 * v85, &v100);
              if (!v100)
              {
                *v4 = v85;
                if (v85)
                {
                  v55 = 0;
                  v56 = 0;
                  v83 = v9 - v6;
                  __n = (v9 - v6);
                  v90 = v32;
                  while (1)
                  {
                    v57 = v55;
                    v58 = strlen(*(v97 + 8 * v55));
                    v59 = OOCAllocator_Malloc(a1, (v91 + 1 + v58 + v83), &v100);
                    if (v100)
                    {
                      break;
                    }

                    v60 = v59;
                    v61 = strncpy(v59, v6, __n);
                    v93 = v57;
                    v62 = strcpy(&v61[__n], *(v97 + 8 * v57));
                    strcpy(&v62[v58], v12 + 1);
                    v60[v58 + v83 + v91] = 0;
                    if (strchr(v60, 40))
                    {
                      v99 = 0;
                      v98 = 0;
                      v100 = __StringTokenizer_ExpandMultiple(a1, v60, &v99, &v98);
                      if (v100)
                      {
                        return v100;
                      }

                      v63 = v98;
                      v64 = *v4 + v98 - 1;
                      if (v64 > 0x10)
                      {
                        if (*v4 < 0x10)
                        {
                          *v5 = OOCAllocator_Realloc(a1, *v5, 128, &v100);
                          if (v100)
                          {
                            return v100;
                          }

                          v65 = v99;
                          if (v63)
                          {
                            v71 = v99;
                            do
                            {
                              v72 = *v71;
                              if (v56 > 0xF)
                              {
                                if (v72)
                                {
                                  OOCAllocator_Free(a1, v72);
                                  *v71 = 0;
                                }
                              }

                              else
                              {
                                *(*v5 + 8 * v56++) = v72;
                              }

                              ++v71;
                              --v63;
                            }

                            while (v63);
                          }

                          *v4 = 16;
                        }

                        else
                        {
                          v65 = v99;
                          if (v98)
                          {
                            v68 = 0;
                            v69 = 8 * v98;
                            do
                            {
                              v70 = *(v65 + v68);
                              if (v70)
                              {
                                OOCAllocator_Free(a1, v70);
                                *(v65 + v68) = 0;
                              }

                              v68 += 8;
                            }

                            while (v69 != v68);
                          }
                        }
                      }

                      else
                      {
                        *v4 = v64;
                        *v5 = OOCAllocator_Realloc(a1, *v5, 8 * v64, &v100);
                        if (v100)
                        {
                          return v100;
                        }

                        v65 = v99;
                        if (v63)
                        {
                          v66 = 0;
                          do
                          {
                            *(*v5 + 8 * v56++) = *(v65 + v66);
                            v66 += 8;
                          }

                          while (8 * v63 != v66);
                        }
                      }

                      v32 = v90;
                      OOCAllocator_Free(a1, v65);
                      OOCAllocator_Free(a1, v60);
                      v67 = v85;
                    }

                    else
                    {
                      *(*v5 + 8 * v56++) = v60;
                      v67 = v85;
                      v32 = v90;
                    }

                    v55 = v93 + 1;
                    if (v93 + 1 == v67)
                    {
                      goto LABEL_116;
                    }
                  }
                }

                else
                {
LABEL_116:
                  if (v32)
                  {
                    OOCAllocator_Free(a1, v32);
                  }

                  if (v97)
                  {
                    v73 = v85;
                    if (v85)
                    {
                      v74 = v97;
                      do
                      {
                        v75 = *v74++;
                        OOCAllocator_Free(a1, v75);
                        --v73;
                      }

                      while (v73);
                    }

                    OOCAllocator_Free(a1, v97);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else if (!strchr(v6, 124))
  {
    *v5 = OOCAllocator_Malloc(a1, 8, &v100);
    if (!v100)
    {
      v13 = strlen(v6);
      **v5 = OOCAllocator_Malloc(a1, v13 + 2, &v100);
      if (!v100)
      {
        strcpy(**v5, v6);
        *(**v5 + strlen(v6) + 1) = 0;
        *v4 = 1;
      }
    }
  }

  return v100;
}

uint64_t PNEW_StringTokenizer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 56, &v8);
  result = v8;
  if (!v8)
  {
    result = StringTokenizer_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t abbrtn_checkIfBisectedbyTokenType(uint64_t a1, unsigned int a2, unsigned int a3, int a4, _DWORD *a5)
{
  v20 = 0;
  *a5 = 0;
  LDO_GetLabels(*(a1 + 192), &v18);
  v9 = 0;
  v10 = v18.n128_u64[1];
  v11 = v19;
  if (v18.n128_u64[1] < v19)
  {
    do
    {
      v18.n128_u32[0] = 0;
      U32Attribute = LDOObject_GetU32Attribute(*v10, "_TTYPE", &v18, &v20);
      v9 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v10);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(*v10);
      if (v18.n128_u32[0] == 1 && v20 == a4)
      {
        v16 = AbsoluteFrom < a2 || AbsoluteFrom >= a3;
        if (!v16 || AbsoluteTo > a2 && AbsoluteTo <= a3)
        {
          *a5 = 1;
          return v9;
        }
      }

      ++v10;
    }

    while (v10 < v11);
  }

  return v9;
}

uint64_t abbrtn_checkIfSubsumedbyOtherToken(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, _DWORD *a6)
{
  v24 = 0;
  *a6 = 0;
  LDO_GetLabels(*(a1 + 192), &v22);
  v10 = 0;
  v12 = v22.n128_u64[1];
  v11 = v23;
  if (v22.n128_u64[1] < v23)
  {
    do
    {
      v13 = *v12;
      v22.n128_u32[0] = 0;
      U32Attribute = LDOObject_GetU32Attribute(v13, "_TTYPE", &v22, &v24);
      v10 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v13);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(v13);
      if (v22.n128_u32[0] == 1)
      {
        v17 = AbsoluteFrom == a2 && AbsoluteTo == a3;
        v18 = v17;
        v19 = v24 == a4 && v18;
        if (v24 == a5 && !v19 && AbsoluteFrom <= a2 && AbsoluteTo >= a3 && !v18)
        {
          *a6 = 1;
          return v10;
        }
      }

      ++v12;
    }

    while (v12 < v11);
  }

  return v10;
}

uint64_t abbrtn_TnLookup(void *a1, const char *a2, unsigned __int16 a3, __int16 a4, char *a5, uint64_t a6)
{
  v8 = a3;
  v108 = *MEMORY[0x1E69E9840];
  v11 = a3 - 1;
  v96 = a3 - 1;
  v94 = 0uLL;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  __s1[0] = 0;
  __s[0] = 0;
  v105[0] = 0;
  __s2[0] = 0;
  v103[0] = 0;
  v102[0] = 0;
  v12 = LDO_ComputeNodesCoveredByLabel(a1[24], a6, &v94);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_143;
  }

  v87 = (v95 - v94.n128_u64[1]) >> 3;
  if (!v87 || (v86 = a2, a4 < 1))
  {
LABEL_139:
    if (v87)
    {
      goto LABEL_140;
    }

    goto LABEL_143;
  }

  v14 = 0;
  v84 = a4;
  v85 = 3;
  v83 = a5;
  while (1)
  {
    while (1)
    {
      v15 = *(v94.n128_u64[1] + 8 * v14);
      v16 = abbrtn_checkForTokens(a1, v15, v8, &v90 + 1, &v90, &v89 + 1, &v88 + 1);
      if (v16 < 0)
      {
LABEL_144:
        LODWORD(v13) = v16;
        goto LABEL_140;
      }

      v99 = 0;
      LODWORD(v89) = 0;
      LDO_GetLabels(a1[24], &v97);
      LODWORD(v13) = 0;
      v17 = v97.n128_u64[1];
      v18 = v98;
      while (v17 < v18)
      {
        v19 = *v17;
        v100 = 0;
        U32Attribute = LDOObject_GetU32Attribute(v19, "_TTYPE", &v100, &v99);
        LODWORD(v13) = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_140;
        }

        v21 = v100 == 1 && v99 == 4;
        if (v21)
        {
          v22 = LDOLabel_ContainsNode(v19, v15, &v89);
          LODWORD(v13) = LH_ERROR_to_VERROR(v22);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          if (v89 == 1)
          {
            break;
          }
        }

        ++v17;
      }

      v23 = v14;
      if (HIDWORD(v89) != 1)
      {
        break;
      }

      if (HIDWORD(v88) == 1)
      {
        v24 = HIWORD(v90);
        v25 = 6;
        v26 = v90;
        goto LABEL_27;
      }

LABEL_21:
      ++v14;
      if (v23 + 1 >= v87)
      {
        goto LABEL_140;
      }
    }

    if (v89 == 1)
    {
      goto LABEL_21;
    }

    v27 = LDOTreeNode_ComputeAbsoluteFrom(v15, &v92);
    v16 = LH_ERROR_to_VERROR(v27);
    if (v16 < 0)
    {
      goto LABEL_144;
    }

    v24 = v92;
    v28 = LDOTreeNode_ComputeAbsoluteTo(v15, &v91);
    v16 = LH_ERROR_to_VERROR(v28);
    if (v16 < 0)
    {
      goto LABEL_144;
    }

    v26 = v91;
    v29 = LDOObject_GetU32Attribute(v15, "_TTYPE", &v93, &v93 + 1);
    v16 = LH_ERROR_to_VERROR(v29);
    if (v16 < 0)
    {
      goto LABEL_144;
    }

    v25 = HIDWORD(v93);
LABEL_27:
    v13 = abbrtn_checkForTokens(a1, v15, v26, &v90 + 1, &v90, &v88, &v88 + 1);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_140;
    }

    v30 = v23 + 1;
    v80 = v26;
    v81 = v25;
    if (v23 + 1 >= v87)
    {
      v32 = 9999;
      v31 = 3;
    }

    else if (v88 == 1)
    {
      v31 = 1;
      v32 = v23 + 1;
    }

    else
    {
      v33 = *(v94.n128_u64[1] + 8 * v30);
      v34 = LDOObject_GetU32Attribute(v33, "_TTYPE", &v93, &v93 + 1);
      v16 = LH_ERROR_to_VERROR(v34);
      if (v16 < 0)
      {
        goto LABEL_144;
      }

      v31 = HIDWORD(v93);
      v35 = LDOTreeNode_ComputeAbsoluteTo(v33, &v92 + 1);
      v13 = LH_ERROR_to_VERROR(v35);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }

      v30 = v23 + 1;
      v32 = v23 + 1;
    }

    v36 = v24;
    v82 = v24;
    if (v24 <= v11)
    {
      v43 = v84;
      goto LABEL_48;
    }

    if (v85 == 3)
    {
      v21 = v25 == 3;
      v37 = v86;
      if (!v21)
      {
        break;
      }
    }

    v42 = v31;
    v43 = v84;
LABEL_124:
    if (v36 > v11 && !v81 && (v85 != 3 || v42 != 3))
    {
      v78 = v30;
      v68 = *(v94.n128_u64[1] + 8 * v23);
      v69 = LDOTreeNode_ComputeAbsoluteFrom(v68, &v92);
      v16 = LH_ERROR_to_VERROR(v69);
      if (v16 < 0)
      {
        goto LABEL_144;
      }

      v70 = v92;
      v71 = LDOTreeNode_ComputeAbsoluteTo(v68, &v92 + 1);
      v13 = LH_ERROR_to_VERROR(v71);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }

      v72 = WORD2(v92) - v70;
      if (v72 > 127)
      {
        v82 = v70;
        v43 = v84;
      }

      else
      {
        __strncpy_chk();
        v105[v72] = 0;
        __strcpy_chk();
        v13 = (*(a1[8] + 104))(a1[6], a1[7], v83, v102, 128);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_140;
        }

        v43 = v84;
        if (strcmp(__s2, v102))
        {
          v97 = v94;
          v98 = v95;
          v13 = abbrtn_Lookup(a1, v102, v105, v83, v86, v70, v23, &v96, &v97);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_140;
          }
        }

        v82 = v70;
      }

      v30 = v78;
    }

LABEL_48:
    v44 = v96;
    if (v96 < v82)
    {
      v44 = v80;
    }

    if (HIDWORD(v89) == 1)
    {
      v14 = v23;
    }

    else
    {
      v14 = v30;
    }

    v11 = v44 - 1;
    v96 = v44 - 1;
    if (v14 < v87)
    {
      v8 = v44;
      v85 = v81;
      if (v44 < v43)
      {
        continue;
      }
    }

    goto LABEL_139;
  }

  v79 = v24;
  v38 = 0;
  v39 = v24;
  while (1)
  {
    v40 = v86[v39];
    v41 = v40 > 0x20 || ((1 << v40) & 0x100002601) == 0;
    if (!v41 || v40 == 95)
    {
      break;
    }

    ++v39;
    __s1[v38++] = v40;
    if (v38 == 128)
    {
      v42 = v31;
      v43 = v84;
LABEL_123:
      v36 = v79;
      goto LABEL_124;
    }
  }

  __s1[v38] = 0;
  __strcpy_chk();
  v97.n128_u64[0] = 0;
  LOWORD(v100) = 0;
  memset(v101, 0, sizeof(v101));
  v13 = (*(a1[8] + 120))(a1[6], a1[7], __s, 255, "femwtn", v83, &v97, &v100);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_140;
  }

  if (v100)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = LH_atou(*(v97.n128_u64[0] + 8 * v46));
      if (v47 <= 0x3F)
      {
        *(v101 + v45++) = v47;
      }

      ++v46;
    }

    while (v46 < v100);
    ssft_qsort(v101, v45, 1, compare);
    v37 = v86;
    if (v45)
    {
      v77 = v30;
      v48 = 0;
      do
      {
        if (v32 == 9999)
        {
LABEL_66:
          v32 = 9999;
        }

        else if (*(v101 + v48))
        {
          while (1)
          {
            v49 = LDOObject_GetU32Attribute(*(v94.n128_u64[1] + 8 * v32), "_TTYPE", &v93, &v93 + 1);
            v13 = LH_ERROR_to_VERROR(v49);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_140;
            }

            v50 = v32 + 1;
            if (v32 + 1 >= v87 || v32 == 9998)
            {
              v31 = 0;
              goto LABEL_66;
            }

            ++v32;
            if (!*(v101 + v48))
            {
              v31 = 0;
              v32 = v50;
              break;
            }
          }
        }

        v51 = *(v101 + v48);
        if (*(v101 + v48))
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = v86[v82];
          v56 = v82;
          while (v55)
          {
            __s[v52] = v55;
            if (v52 == 255)
            {
              goto LABEL_106;
            }

            v57 = &v86[++v56];
            v55 = *v57;
            v58 = v55 > 0x20 || ((1 << v55) & 0x100002600) == 0;
            if (!v58 || v55 == 95)
            {
              v59 = *(v57 - 1);
              v60 = v59 == 95 ? v53 : v53 + 1;
              v61 = v59 > 0x20;
              v62 = (1 << v59) & 0x100002600;
              if (v61 || v62 == 0)
              {
                v53 = v60;
              }
            }

            ++v52;
            ++v54;
            if (v51 <= v53)
            {
              goto LABEL_96;
            }
          }

          v54 = v52;
LABEL_96:
          v64 = v56;
        }

        else
        {
          v54 = 0;
          LOBYTE(v53) = 0;
          v64 = v82;
        }

        __s[v54] = 0;
        if (!v86[v64])
        {
          v65 = v86[v64 - 1];
          v66 = v65 > 0x20 || ((1 << v65) & 0x100002600) == 0;
          if (v66 && v65 != 95)
          {
            LOBYTE(v53) = v53 + 1;
          }
        }

        if (v51 == v53)
        {
          __strcpy_chk();
          v16 = (*(a1[8] + 112))(a1[6], a1[7], v83, v103, 256);
          if (v16 < 0)
          {
            goto LABEL_144;
          }

          v97 = v94;
          v98 = v95;
          v13 = abbrtn_Lookup(a1, v103, __s, v83, v86, v82, v23, &v96, &v97);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          v11 = v96;
        }

LABEL_106:
        ++v48;
      }

      while (v48 < v45 && v79 > v11);
      v42 = v31;
      v67 = v83;
      v43 = v84;
      v30 = v77;
      if (v79 > v11)
      {
        goto LABEL_116;
      }

      goto LABEL_118;
    }

    v42 = v31;
  }

  else
  {
    v42 = v31;
    ssft_qsort(v101, 0, 1, compare);
  }

  v67 = v83;
  v43 = v84;
LABEL_116:
  v97 = v94;
  v98 = v95;
  v13 = abbrtn_Lookup(a1, __s1, __s1, v67, v37, v82, v23, &v96, &v97);
  if ((v13 & 0x80000000) == 0)
  {
    v11 = v96;
LABEL_118:
    v36 = v79;
    if (v79 <= v11)
    {
      goto LABEL_124;
    }

    __strcpy_chk();
    v13 = (*(a1[8] + 112))(a1[6], a1[7], v67, __s2, 128);
    if ((v13 & 0x80000000) == 0)
    {
      if (strcmp(__s1, __s2))
      {
        v97 = v94;
        v98 = v95;
        v13 = abbrtn_Lookup(a1, __s2, __s1, v67, v37, v82, v23, &v96, &v97);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_140;
        }

        v11 = v96;
      }

      goto LABEL_123;
    }
  }

LABEL_140:
  v73 = LDO_FreeLDOTreeNodeVector(a1[24], &v94);
  v74 = LH_ERROR_to_VERROR(v73);
  if (v13 >= 0)
  {
    v13 = v74;
  }

  else
  {
    v13 = v13;
  }

LABEL_143:
  v75 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t abbrtn_checkForTokens(uint64_t a1, uint64_t a2, int a3, _WORD *a4, _WORD *a5, _DWORD *a6, _DWORD *a7)
{
  v25 = 0;
  *a6 = 0;
  *a7 = 0;
  LDO_GetLabels(*(a1 + 192), &v23);
  v12 = 0;
  v14 = v23.n128_u64[1];
  v13 = v24;
  if (v23.n128_u64[1] < v24)
  {
    do
    {
      v15 = *v14;
      v23.n128_u32[0] = 0;
      U32Attribute = LDOObject_GetU32Attribute(v15, "_TTYPE", &v23, &v25);
      v12 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      if (v23.n128_u32[0] == 1 && v25 == 6)
      {
        v18 = LDOLabel_ContainsNode(v15, a2, a6);
        v12 = LH_ERROR_to_VERROR(v18);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (*a6 == 1)
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v15);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(v15);
          if (AbsoluteFrom == a3)
          {
            *a4 = a3;
            *a5 = AbsoluteTo;
            *a7 = 1;
          }

          return v12;
        }
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return v12;
}

uint64_t abbrtn_Lookup(uint64_t a1, const char *a2, char *__s, char *a4, const char *a5, uint64_t a6, unsigned int a7, _WORD *a8, uint64_t a9)
{
  v10 = a6;
  v13 = __s;
  v264 = *MEMORY[0x1E69E9840];
  v261 = 0;
  v259 = 0;
  if (a2)
  {
    if (!*a2)
    {
      v29 = 0;
      goto LABEL_355;
    }

    v245 = a8;
    v16 = strlen(__s) + a6;
    *__sa = 0;
    v246 = a2;
    __s2 = a4;
    if (strcmp(a2, v13))
    {
      v17 = &a5[v10];
      LOWORD(v18) = v10;
      if ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v17))
      {
        v18 = v10;
        do
        {
          v18 += utf8_determineUTF8CharLength(*v17);
          v17 = &a5[v18];
        }

        while ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v17));
      }

      v19 = v10;
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a5, v16);
      v21 = PreviousUtf8Offset;
      v22 = &a5[PreviousUtf8Offset];
      v23 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v22);
      if (PreviousUtf8Offset && v23)
      {
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a5, v21);
          v21 = PreviousUtf8Offset;
          v22 = &a5[PreviousUtf8Offset];
          v24 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v22);
        }

        while (PreviousUtf8Offset && v24);
      }

      v25 = utf8_determineUTF8CharLength(*v22) + PreviousUtf8Offset;
      v10 = v19;
      goto LABEL_14;
    }
  }

  else
  {
    __s2 = a4;
    v245 = a8;
    v246 = 0;
    v16 = strlen(__s) + a6;
    *__sa = 0;
  }

  LOWORD(v18) = v10;
LABEL_14:
  v262 = 0;
  v260 = 0;
  v29 = abbrtn_checkIfSubsumedbyOtherToken(a1, v18, v16, 4, 6, __sa);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_355;
  }

  if (*__sa == 1)
  {
    v30 = *(*(a1 + 16) + 32);
    v31 = "BLOCK Creating TN DCT token record for %s %d,%d bSubsumed=%d";
    v226 = v13;
LABEL_17:
    log_OutText(v30, "FE_ABBRTN", 5, 0, v31, v26, v27, v28, v226);
    goto LABEL_355;
  }

  v32 = *(*(a9 + 8) + 8 * a7);
  v33 = LDOTreeNode_ComputeAbsoluteFrom(v32, &v259 + 1);
  v34 = LH_ERROR_to_VERROR(v33);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_354;
  }

  v35 = LDOTreeNode_ComputeAbsoluteTo(v32, &v259);
  v34 = LH_ERROR_to_VERROR(v35);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_354;
  }

  log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "TN look up %s", v36, v37, v38, v246);
  LODWORD(v226) = 0;
  v39 = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v246, &v262, &v261, &v260, *(a1 + 112));
  v29 = v39;
  if ((v39 & 0x80000000) != 0 || !v261)
  {
    goto LABEL_355;
  }

  NextTOKEN_INT_TNPos = v39;
  v231 = v16;
  v40 = 0;
  v236 = v13 - 1;
  v240 = "";
  v238 = v10;
  v242 = 1;
  v243 = v16;
  v41 = 0;
  do
  {
    v250 = v41;
    v42 = *(v262 + 8 * v40);
    v43 = strchr(v42, v260);
    v248 = v40;
    if (!v43)
    {
      v244 = 0;
      v49 = 0;
LABEL_31:
      v51 = 0;
      v53 = 0;
      v247 = 0;
      goto LABEL_34;
    }

    *v43 = 0;
    v244 = v43 + 1;
    v48 = strchr(v43 + 1, v260);
    v49 = v48;
    if (!v48)
    {
      goto LABEL_31;
    }

    *v48 = 0;
    v49 = v48 + 1;
    v50 = strchr(v48 + 1, v260);
    v51 = v50;
    if (!v50)
    {
      v53 = 0;
LABEL_33:
      v247 = 0;
      goto LABEL_34;
    }

    *v50 = 0;
    v51 = v50 + 1;
    v52 = strchr(v50 + 1, v260);
    v53 = v52;
    if (!v52)
    {
      goto LABEL_33;
    }

    *v52 = 0;
    v53 = v52 + 1;
    v54 = strchr(v52 + 1, v260);
    if (!v54)
    {
      goto LABEL_33;
    }

    *v54 = 0;
    v247 = v54 + 1;
    v55 = strchr(v54 + 1, v260);
    if (v55)
    {
      *v55 = 0;
    }

LABEL_34:
    v56 = *(*(a1 + 16) + 32);
    if (!v42)
    {
      v29 = 2310021127;
      log_OutPublic(v56, "FE_ABBRTN", 32001, 0, v44, v45, v46, v47, v226);
      goto LABEL_355;
    }

    v251 = v42;
    log_OutText(v56, "FE_ABBRTN", 5, 0, "TN Validating %s", v45, v46, v47, v42);
    if (v49 && *v49)
    {
      if ((v57 = strstr(v49, __s2)) == 0 || (v58 = v57, v59 = strlen(__s2), v58 != v49) && *(v58 - 1) != 44 || v58[v59] && v58[v59] != 44)
      {
        v62 = *(*(a1 + 16) + 32);
        v63 = "TN Domain validation not OK";
        goto LABEL_50;
      }
    }

    if (!v53)
    {
      v64 = v243;
      v65 = v248;
      v41 = v250;
      goto LABEL_52;
    }

    v60 = *v53;
    if (v60 <= 0x34)
    {
      if (v60 == 49)
      {
        v61 = v251;
        if (v53[1])
        {
          goto LABEL_120;
        }
      }

      else
      {
        v61 = v251;
        if (v60 != 52)
        {
          goto LABEL_113;
        }

        if (v53[1])
        {
          goto LABEL_120;
        }
      }

LABEL_62:
      if (v51 && *v51)
      {
        v66 = strlen(v13);
        if (v66 < 1)
        {
          v69 = &v13[v66];
        }

        else
        {
          v67 = &v236[v66];
          while (v67 > v13)
          {
            v68 = *v67--;
            if (v68 >= -64)
            {
              v69 = v67 + 1;
              goto LABEL_84;
            }
          }

          v69 = v13;
        }

LABEL_84:
        v75 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v69);
        if (v69)
        {
          do
          {
            v76 = v69;
            if (!v75)
            {
              break;
            }

            if (v69 > v13)
            {
              v77 = v69 - 1;
              while (v77 > v13)
              {
                v78 = *v77--;
                if (v78 >= -64)
                {
                  v69 = v77 + 1;
                  goto LABEL_92;
                }
              }

              v69 = v13;
            }

LABEL_92:
            v75 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v69);
          }

          while (v69 != v76);
        }

          ;
        }

        while ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v51))
        {
          v51 += utf8_determineUTF8CharLength(*v51);
        }

        if (i <= v69)
        {
          do
          {
            v80 = abbrtn_compareUtf8Char(i, v51);
            v81 = utf8_determineUTF8CharLength(*i);
            v51 += utf8_determineUTF8CharLength(*v51);
            if (v80)
            {
              break;
            }

            i += v81;
          }

          while (i <= v69);
          v73 = v80 == 0;
        }

        else
        {
          v73 = 1;
        }

        if (v73 && *v51)
        {
          do
          {
            v82 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v51);
            v51 += utf8_determineUTF8CharLength(*v51);
            if (v82)
            {
              v83 = *v51 == 0;
            }

            else
            {
              v83 = 1;
            }
          }

          while (!v83);
          v73 = v82 != 0;
        }
      }

      else
      {
        v70 = *v13;
        if (!*v13)
        {
LABEL_112:
          v60 = *v53;
          v61 = v251;
          goto LABEL_113;
        }

        v71 = v13;
        do
        {
          v73 = 0;
          if ((v70 - 97) >= 0x1Au)
          {
            if (v70 != 195 || (v71[1] - 133 <= 0x37 ? (v72 = ((1 << (v71[1] + 123)) & 0x82101780000001) == 0, v71[1]) : (v72 = 1), v72))
            {
              v73 = 1;
            }
          }

          v74 = utf8_determineUTF8CharLength(v70);
          if (!v73)
          {
            break;
          }

          v71 += v74;
          v70 = *v71;
        }

        while (*v71);
      }

      if (!v73)
      {
        v62 = *(*(a1 + 16) + 32);
        v63 = "TN Case validation not OK";
        goto LABEL_50;
      }

      goto LABEL_112;
    }

    if (v60 == 53)
    {
      v61 = v251;
      if (v53[1])
      {
        goto LABEL_119;
      }

      goto LABEL_62;
    }

    v61 = v251;
    if (v60 == 55)
    {
      if (v53[1])
      {
        goto LABEL_119;
      }

      goto LABEL_62;
    }

    if (v60 == 56)
    {
      if (!v53[1])
      {
        v62 = *(*(a1 + 16) + 32);
        v63 = "TN expansion only valid within regexps";
LABEL_50:
        log_OutText(v62, "FE_ABBRTN", 5, 0, v63, v26, v27, v28, v226);
        v64 = v243;
        v65 = v248;
        v41 = v250;
        goto LABEL_148;
      }

      goto LABEL_120;
    }

LABEL_113:
    if (v60 > 53)
    {
      if (v60 == 54 || v60 == 55)
      {
LABEL_119:
        if (!v53[1])
        {
          v91 = strlen(v13);
          v92 = strlen(v13);
          if (v92 < 1)
          {
            v95 = &v13[v92];
          }

          else
          {
            v93 = &v236[v92];
            while (v93 > v13)
            {
              v94 = *v93--;
              if (v94 >= -64)
              {
                v95 = v93 + 1;
                goto LABEL_281;
              }
            }

            v95 = v13;
          }

LABEL_281:
          v182 = v91 - strlen(v95);
          NextUtf8Offset = v182;
          v184 = v182;
          v185 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &v13[v182]);
          if (NextUtf8Offset && v185)
          {
            do
            {
              v186 = utf8_GetPreviousUtf8Offset(v13, NextUtf8Offset);
              v184 = v186;
              NextUtf8Offset = v186;
              v187 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &v13[v186]);
            }

            while (v184 && v187);
          }

          v188 = strlen(v13);
          v189 = strlen(v13);
          if (v189 < 1)
          {
            v192 = &v13[v189];
          }

          else
          {
            v190 = &v236[v189];
            while (v190 > v13)
            {
              v191 = *v190--;
              if (v191 >= -64)
              {
                v192 = v190 + 1;
                goto LABEL_292;
              }
            }

            v192 = v13;
          }

LABEL_292:
          if (v188 - strlen(v192) != v184)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v13, NextUtf8Offset);
          }

          v61 = v251;
          if (v51 && *v51)
          {
            v193 = strlen(v51);
            if (v193 < 1)
            {
              v51 += v193;
            }

            else
            {
              v194 = &v51[v193 - 1];
              while (v194 > v51)
              {
                v195 = *v194--;
                if (v195 >= -64)
                {
                  v51 = v194 + 1;
                  break;
                }
              }
            }

            if (abbrtn_compareUtf8Char(&v13[NextUtf8Offset], v51))
            {
              v62 = *(*(a1 + 16) + 32);
              v63 = "Punctuation validation not OK";
              goto LABEL_50;
            }
          }

          else if (v13[NextUtf8Offset] != 46)
          {
            v62 = *(*(a1 + 16) + 32);
            v63 = "TN Punctuation validation not OK";
            goto LABEL_50;
          }
        }
      }
    }

    else if (v60 == 51 || v60 == 53)
    {
      goto LABEL_119;
    }

LABEL_120:
    v84 = *v53;
    if (v84 > 0x35)
    {
      if (v84 != 54 && v84 != 55)
      {
LABEL_138:
        v64 = v243;
        v65 = v248;
        v41 = v250;
        goto LABEL_139;
      }
    }

    else if (v84 != 50 && v84 != 52)
    {
      goto LABEL_138;
    }

    v64 = v243;
    v41 = v250;
    if (v53[1])
    {
      v65 = v248;
      goto LABEL_139;
    }

    __s1 = 0;
    LOWORD(v255) = 0;
    v85 = strlen(a5);
    v86 = strlen(a5);
    if (v86 < 1)
    {
      v89 = v10;
      v90 = &a5[v86];
    }

    else
    {
      v87 = &a5[v86 - 1];
      while (v87 > a5)
      {
        v88 = *v87--;
        if (v88 >= -64)
        {
          v89 = v10;
          v90 = v87 + 1;
          goto LABEL_153;
        }
      }

      v89 = v10;
      v90 = a5;
    }

LABEL_153:
    v97 = strlen(v90);
    v257 = 0;
    BYTE4(v252) = 0;
    LOWORD(v254) = 0;
    LOWORD(v253) = 0;
    v256 = 0;
    strcpy(__sa, "disambiguate_abbreviations");
    v235 = strlen(__sa);
    if (!v238)
    {
      goto LABEL_175;
    }

    v98 = 0;
    v99 = -v238;
    v100 = &a5[v238];
    v101 = v100;
    do
    {
      v103 = *--v101;
      v102 = v103;
      v104 = (1 << v103) & 0x100002600;
      v105 = v103 > 0x20 || v104 == 0;
      if (!v105 || v102 == 95)
      {
        v106 = *v100;
        v107 = v106 == 95 ? v98 : v98 + 1;
        v143 = v106 > 0x20;
        v108 = (1 << v106) & 0x100002600;
        if (v143 || v108 == 0)
        {
          v98 = v107;
        }
      }

      v110 = v99 + 1;
      if (v98 > 3u)
      {
        break;
      }

      v100 = v101;
      ++v99;
    }

    while (v99);
    if (v110)
    {
      v241 = utf8_determineUTF8CharLength(a5[-v110]) - v110;
    }

    else
    {
LABEL_175:
      v241 = 0;
    }

    v111 = (v85 - v97);
    if (v111 >= v238)
    {
      v159 = 0;
      LOBYTE(v160) = a5[v238];
      v113 = v238;
      do
      {
        v113 += utf8_determineUTF8CharLength(v160);
        v161 = &a5[v113];
        v160 = *v161;
        v162 = v160 > 0x20 || ((1 << v160) & 0x100002600) == 0;
        if (!v162 || v160 == 95)
        {
          v163 = *(v161 - 1);
          v164 = v163 == 95 ? v159 : v159 + 1;
          v143 = v163 > 0x20;
          v165 = (1 << v163) & 0x100002600;
          if (v143 || v165 == 0)
          {
            v159 = v164;
          }
        }

        v112 = v113;
      }

      while (v159 <= 3u && v111 >= v113);
    }

    else
    {
      v112 = v238;
      LOWORD(v113) = v238;
    }

    v114 = v112 - v241;
    v115 = strlen(v251);
    v116 = v114 + 25;
    v117 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 96), (v116 + v115));
    if (!v117 || (*(a1 + 96) = v117, *v117 = 0, v122 = strlen(v251), (v123 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 104), (v116 + v122))) == 0))
    {
      log_OutPublic(*(*(a1 + 16) + 32), "FE_ABBRTN", 32000, 0, v118, v119, v120, v121, v226);
      NextTOKEN_INT_TNPos = -1984946166;
      goto LABEL_327;
    }

    *(a1 + 104) = v123;
    *v123 = 0;
    v124 = strlen(v13);
    v125 = &a5[v238];
    LOWORD(v126) = v238;
    if ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v125))
    {
      v126 = v238;
      do
      {
        v126 += utf8_determineUTF8CharLength(*v125);
        v125 = &a5[v126];
      }

      while ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v125));
    }

    v127 = utf8_GetPreviousUtf8Offset(a5, (v238 + v124));
    v128 = v127;
    v129 = &a5[v127];
    v130 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v129);
    if (v127 && v130)
    {
      do
      {
        v127 = utf8_GetPreviousUtf8Offset(a5, v128);
        v128 = v127;
        v129 = &a5[v127];
        v131 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v129);
      }

      while (v127 && v131);
    }

    v132 = utf8_determineUTF8CharLength(*v129);
    NextTOKEN_INT_TNPos = getNextTOKEN_INT_TNPos(a1, &v254, &v253, &v257, v241, v113, &v256);
    if ((NextTOKEN_INT_TNPos & 0x80000000) != 0)
    {
      goto LABEL_327;
    }

    if (v241 >= v113)
    {
      v10 = v89;
      v64 = v243;
      v65 = v248;
LABEL_264:
      v229 = *(a1 + 96);
      log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "%s L1: %s", v133, v134, v135, __sa);
      v167 = strlen(*(a1 + 96));
      v168 = (*(*(a1 + 88) + 120))(*(a1 + 72), *(a1 + 80), 0, *(a1 + 96), v167);
      if ((v168 & 0x80000000) != 0)
      {
        goto LABEL_326;
      }

      v230 = *(a1 + 104);
      log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "%s L2: %s", v169, v170, v171, __sa);
      v172 = strlen(*(a1 + 104));
      v168 = (*(*(a1 + 88) + 120))(*(a1 + 72), *(a1 + 80), 1, *(a1 + 104), v172);
      if ((v168 & 0x80000000) != 0)
      {
        goto LABEL_326;
      }

      if (strcmp(__s2, "normal") && strlen(__s2) + v235 + 2 <= 0x7F)
      {
        __strcat_chk();
        __strcat_chk();
      }

      v41 = v250;
      if (((*(*(a1 + 88) + 80))(*(a1 + 72), *(a1 + 80), __sa) & 0x80000000) != 0)
      {
        __sa[v235] = 0;
        v168 = (*(*(a1 + 88) + 80))(*(a1 + 72), *(a1 + 80), __sa);
        if ((v168 & 0x80000000) != 0)
        {
LABEL_326:
          NextTOKEN_INT_TNPos = v168;
          goto LABEL_327;
        }
      }

      NextTOKEN_INT_TNPos = (*(*(a1 + 88) + 128))(*(a1 + 72), *(a1 + 80), 0, &__s1, &v255);
      if ((NextTOKEN_INT_TNPos & 0x80000000) != 0)
      {
LABEL_327:
        v29 = NextTOKEN_INT_TNPos;
        goto LABEL_355;
      }

      __s1[v255] = 0;
      log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "%s O1: %s", v173, v174, v175, __sa);
      v176 = strstr(__s1, "§");
      if (v176)
      {
        v177 = v176;
        while (1)
        {
          v178 = utf8_determineUTF8CharLength(*v177);
          v179 = strstr(&v177[v178], "§");
          if (!v179)
          {
            break;
          }

          v180 = v179;
          v181 = v177[utf8_determineUTF8CharLength(*v177)];
          v177 = v180;
          if (v181 != 32)
          {
            goto LABEL_314;
          }
        }
      }

LABEL_52:
      v61 = v251;
      if (!v247 || !*v247)
      {
        goto LABEL_146;
      }

LABEL_139:
      v96 = atoi(v247);
      if (v96 < v242)
      {
        log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "Lower priority than previous valid normalizations", v26, v27, v28, v226);
        goto LABEL_148;
      }

      if (v96 > v242)
      {
        if (v41)
        {
          log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "Higher priority than previous valid normalizations", v26, v27, v28, v226);
          v41 = 0;
        }
      }

      else
      {
LABEL_146:
        v96 = v242;
      }

      ++v41;
      v240 = v61;
      v242 = v96;
      goto LABEL_148;
    }

    v136 = v132 + v127;
    v234 = v136;
    v137 = v241;
    v10 = v89;
    v138 = v251;
    v232 = v13;
    v233 = v89;
    v237 = v136;
    while (1)
    {
      v139 = v254;
      v140 = v253;
      if (v256 == 1 && v254 == v241 && v253 == v113)
      {
        break;
      }

      if (v256 != 1)
      {
        if (v137 > v126 || v256)
        {
          goto LABEL_309;
        }

LABEL_217:
        addToLayer(a1, a5, v137, v126, 0, 0, &v252 + 4);
        if (BYTE4(v252) > 0x13u)
        {
          goto LABEL_313;
        }

        addToLayer(a1, a5, v126, v237, v138, v244, &v252 + 4);
        if (BYTE4(v252) > 0x13u)
        {
          goto LABEL_313;
        }

        if (v139 == v126)
        {
          NextTOKEN_INT_TNPos = getNextTOKEN_INT_TNPos(a1, &v254, &v253, &v257, v237, v113, &v256);
          if ((NextTOKEN_INT_TNPos & 0x80000000) != 0)
          {
            goto LABEL_327;
          }
        }

        v137 = v237;
        goto LABEL_242;
      }

      if (v254 >= v126 && v137 <= v126 && v137 <= v254)
      {
        goto LABEL_217;
      }

      v141 = v137 > v254;
      if (v234 > v137)
      {
        v141 = 1;
      }

      v143 = v137 <= v254 && v137 < v126 && v126 > v254;
      if (!v143 && v141)
      {
LABEL_309:
        addToLayer(a1, a5, v137, v113, 0, 0, &v252 + 4);
        v64 = v243;
        v65 = v248;
        if (BYTE4(v252) <= 0x13u)
        {
          goto LABEL_264;
        }

        goto LABEL_314;
      }

      addToLayer(a1, a5, v137, v254, 0, 0, &v252 + 4);
      v144 = BYTE4(v252);
      if (BYTE4(v252) > 0x13u)
      {
        goto LABEL_312;
      }

      v137 = v140;
      if (v140 > v113)
      {
        LOWORD(v253) = v113;
        v137 = v113;
      }

      if (v137)
      {
        v145 = 0;
        v146 = 0;
        do
        {
          if (!a5[v146])
          {
            break;
          }

          v146 += utf8_determineUTF8CharLength(a5[v146]);
          ++v145;
        }

        while (v146 < v137);
      }

      else
      {
        v145 = 0;
      }

      v147 = 0;
      if (v139)
      {
        v148 = 0;
        do
        {
          if (!a5[v148])
          {
            break;
          }

          v148 += utf8_determineUTF8CharLength(a5[v148]);
          ++v147;
        }

        while (v139 > v148);
      }

      strncat(*(a1 + 96), &a5[v139], v137 - v139);
      v149 = strlen(v257);
      strncat(*(a1 + 104), v257 + 1, v149 - 2);
      v150 = strlen(v257);
      v151 = v145 - v147;
      if ((v150 << 16) - 0x20000 <= v151 << 16)
      {
        v154 = v151 + 2;
        if (v150 != v154)
        {
          v155 = 0;
          v156 = v154;
          do
          {
            *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
            ++v155;
          }

          while (v156 - strlen(v257) > v155);
        }
      }

      else
      {
        v152 = v147 - v145 - 2;
        if (v152 + v150)
        {
          v157 = 1;
          do
          {
            *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
            v153 = v144 + 1;
            v143 = v152 + strlen(v257) > v157++;
          }

          while (v143 && v144++ < 0x13);
        }

        else
        {
          v153 = v144;
        }

        BYTE4(v252) = v153;
        if (v153 > 0x13)
        {
          v13 = v232;
LABEL_312:
          v10 = v233;
LABEL_313:
          v64 = v243;
          v65 = v248;
          goto LABEL_314;
        }
      }

      v13 = v232;
      v10 = v233;
      v138 = v251;
      NextTOKEN_INT_TNPos = getNextTOKEN_INT_TNPos(a1, &v254, &v253, &v257, v137, v113, &v256);
      if ((NextTOKEN_INT_TNPos & 0x80000000) != 0)
      {
        goto LABEL_327;
      }

LABEL_242:
      if (v137 >= v113)
      {
        goto LABEL_307;
      }
    }

    addToLayer(a1, a5, v241, v113, v138, v244, &v252 + 4);
    v256 = 0;
    v238 = v241;
LABEL_307:
    v64 = v243;
    v65 = v248;
    if (BYTE4(v252) <= 0x13u)
    {
      goto LABEL_264;
    }

LABEL_314:
    log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "Context validation not OK", v133, v134, v135, v226);
    v41 = v250;
LABEL_148:
    v40 = v65 + 1;
  }

  while (v40 < v261 && v41 < 2);
  v29 = NextTOKEN_INT_TNPos;
  if (!v41)
  {
    goto LABEL_355;
  }

  if (v41 != 1)
  {
    v30 = *(*(a1 + 16) + 32);
    v31 = "Multiple valid lookups => no normalization";
    goto LABEL_17;
  }

  *v245 = v64;
  v256 = v231;
  LODWORD(v257) = 0;
  v255 = v231;
  if (v246 && strcmp(v246, v13))
  {
    v196 = &a5[v10];
    for (j = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v196); j; j = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v196))
    {
      LODWORD(v10) = v10 + utf8_determineUTF8CharLength(*v196);
      v196 = &a5[v10];
    }

    v198 = a5;
    for (k = v231; ; k = v200)
    {
      v200 = utf8_GetPreviousUtf8Offset(v198, k);
      if (!(*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &a5[v200]) || v200 == 0)
      {
        break;
      }

      v198 = a5;
    }

    v256 = v200 + utf8_determineUTF8CharLength(a5[v200]);
  }

  v202 = LDO_CountLeafNodesOnRange(*(a1 + 192), &v256, &v255, &v257, &v256);
  v34 = LH_ERROR_to_VERROR(v202);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_354;
  }

  v206 = v257 ? v256 : v64;
  v207 = v206;
  log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "Creating TN DCT token record for %s %d,%d %s", v203, v204, v205, v13);
  *__sa = 0;
  __s1 = 0;
  v253 = v207;
  v254 = v10;
  v252 = 0;
  LODWORD(v257) = 0;
  v208 = LDO_CountLeafNodesOnRange(*(a1 + 192), &v254, &v253, &v257, 0);
  v34 = LH_ERROR_to_VERROR(v208);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_354;
  }

  if (v253 <= v254 || v257)
  {
    v218 = *(a1 + 192);
    v219 = &v254;
    v220 = &v253;
LABEL_348:
    v221 = LDO_AddLabelOnSubstring(v218, "TOKEN", "TOKEN", v219, v220, __sa);
    v29 = LH_ERROR_to_VERROR(v221);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_355;
    }

    goto LABEL_351;
  }

  log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "No node in the given range => attempting to find a containing node", v209, v210, v211, v227);
  v212 = LDO_ComputeLeafNodeContainingRange(*(a1 + 192), &v254, &v253, &__s1);
  v29 = LH_ERROR_to_VERROR(v212);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_355;
  }

  if (!__s1)
  {
    log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "No containing node found => no label created", v213, v214, v215, v228);
LABEL_351:
    if (*__sa)
    {
      LDOObject_SetU32Attribute(*__sa, "_TTYPE", 4);
      v34 = LH_ERROR_to_VERROR(v222);
      if ((v34 & 0x80000000) == 0)
      {
        v223 = LDOObject_SetStringAttribute(*__sa, "NORM", v240);
        v34 = LH_ERROR_to_VERROR(v223);
      }

      goto LABEL_354;
    }

    goto LABEL_355;
  }

  v216 = LDOTreeNode_ComputeAbsoluteFrom(__s1, &v252 + 1);
  v34 = LH_ERROR_to_VERROR(v216);
  if ((v34 & 0x80000000) == 0)
  {
    v217 = LDOTreeNode_ComputeAbsoluteTo(__s1, &v252);
    v34 = LH_ERROR_to_VERROR(v217);
    if ((v34 & 0x80000000) == 0)
    {
      v218 = *(a1 + 192);
      v219 = &v252 + 1;
      v220 = &v252;
      goto LABEL_348;
    }
  }

LABEL_354:
  v29 = v34;
LABEL_355:
  v224 = *MEMORY[0x1E69E9840];
  return v29;
}