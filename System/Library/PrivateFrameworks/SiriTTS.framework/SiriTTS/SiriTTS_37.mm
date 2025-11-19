void PNEW_LDOLabel_Con(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 120, &v14);
  if (!v14)
  {
    LDOLabel_Con(v12, a2, a3, a4, a5);
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

void PNEW_LDOLabel_ConSpecial(uint64_t a1, uint64_t a2, char *a3, char *a4, int a5, int a6, uint64_t *a7)
{
  v16 = 0;
  v14 = OOCAllocator_Malloc(a1, 120, &v16);
  if (!v16)
  {
    LDOLabel_ConSpecial(v14, a2, a3, a4, a5, a6);
    v16 = v15;
    if (v15)
    {
      OOCAllocator_Free(a1, v14);
      *a7 = 0;
    }

    else
    {
      *a7 = v14;
    }
  }
}

uint64_t LDOTreeNode_Con(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v14 = a7;
  v15 = a6;
  v13 = 0;
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNode;
    *(a1 + 96) = 0;
    *(a1 + 64) = 0;
    result = __LDOTreeNode_ValidateIndices(a3, &v15, &v14, &v13 + 1, &v13);
    if (!result)
    {
      v12 = v13;
      *(a1 + 104) = HIDWORD(v13);
      *(a1 + 108) = v12;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      result = LDOObject_SetCategory(a1, a4);
      if (!result)
      {
        result = LDOObject_SetType(a1, a5);
        if (!result)
        {
          return LDOTreeNode_SetParent(a1, a3);
        }
      }
    }
  }

  return result;
}

uint64_t __LDOTreeNode_ValidateIndices(size_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, unsigned int *a5)
{
  v20 = 0;
  v19 = 0;
  __LDOTreeNode_ComputeTextLength(a1, &v20);
  if (a2)
  {
    LODWORD(a2) = *a2;
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = &v20;
    }

    v11 = *v10;
    if (a2 > *v10)
    {
      v12 = "u32From is greater than u32To";
LABEL_15:
      v15 = kaldi::OffsetFileInputImpl::MyType(v12);
      goto LABEL_16;
    }

    v14 = v20;
    if (a2 > v20)
    {
      v12 = "u32From is greater than u32ParentLength";
      goto LABEL_15;
    }
  }

  else
  {
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = &v20;
    }

    v11 = *v13;
    v14 = v20;
  }

  if (v11 > v14)
  {
    v12 = "u32To is greater than u32ParentLength";
    goto LABEL_15;
  }

  v15 = LDOTreeNode_ComputeText(a1, &v19);
  if (!v15)
  {
    v18 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v19);
    if (!LDOString_IsValidUTF8(v18, 0))
    {
      v12 = "Not a valid UTF-8 string";
      goto LABEL_15;
    }

    if (a4)
    {
      *a4 = a2;
    }

    v15 = 0;
    if (a5)
    {
      *a5 = v11;
    }
  }

LABEL_16:
  if (v19)
  {
    v16 = LDOString_BorrowAllocator(v19);
    OOC_PlacementDeleteObject(v16, v19);
  }

  return v15;
}

uint64_t LDOTreeNode_SetParent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (!v4 || (result = LDOTreeNode_RemoveChild(v4, a1), !result))
  {
    if (a2)
    {

      return LDOTreeNode_AddChild(a2, a1);
    }

    else
    {
      result = 0;
      *(a1 + 64) = 0;
    }
  }

  return result;
}

uint64_t LDOTreeNode_ConRoot(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNode;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    result = LDOObject_SetCategory(a1, a4);
    if (!result)
    {
      result = LDOObject_SetType(a1, a5);
      if (!result)
      {

        return LDOTreeNode_SetText(a1, a3);
      }
    }
  }

  return result;
}

uint64_t LDOTreeNode_SetText(uint64_t a1, char *a2)
{
  v27 = 0;
  v26 = 0;
  if (*(a1 + 80) != *(a1 + 88))
  {

    return kaldi::StandardInputImpl::MyType(0);
  }

  v4 = a1;
  v5 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v6 = v5;
  if (*(v4 + 64))
  {
    memset(v23, 0, sizeof(v23));
    __LDOTreeNode_ComputeTextLength(v4, &v27);
    v7 = LDOString_ComputeCPtrLength(a2, 0, &v26);
    if (v7)
    {
      return v7;
    }

    v25 = 0;
    v8 = *(v4 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = v26 - v27;
      v11 = *(v4 + 64);
      v12 = v4;
      do
      {
        v9 += *(v12 + 104);
        v12 = v11;
        v11 = *(v11 + 64);
      }

      while (v11);
      v24 = v9 + v27;
      v25 = v9;
      v13 = v4;
      do
      {
        v4 = v8;
        v14 = *(v13 + 104);
        v15 = *(v13 + 108);
        v16 = *(v4 + 80);
        v17 = *(v4 + 88);
        while (v16 < v17)
        {
          v18 = *v16;
          v19 = *(*v16 + 104);
          if (v19 >= v14)
          {
            v20 = *(v18 + 108) + v10;
            *(v18 + 104) = v19 + v10;
            *(v18 + 108) = v20;
          }

          ++v16;
        }

        *(v13 + 104) = v14;
        *(v13 + 108) = v15 + v10;
        v8 = *(v4 + 64);
        v13 = v4;
      }

      while (v8);
    }

    else
    {
      v24 = v27;
    }

    v7 = LDOString_ConFromCPtr(v23, v6, a2);
    if (v7)
    {
      return v7;
    }

    v22 = LDOString_ReplaceSubstring(*(v4 + 96), &v25, &v24, v23);
    if (!v22)
    {
      *(v4 + 104) = 0;
      *(v4 + 108) = LHString_Length(*(v4 + 96));
    }

    (*(*&v23[0] + 16))(v23);
    return v22;
  }

  if (*(v4 + 96))
  {
    if (!LDOString_IsValidUTF8(a2, 0))
    {

      return kaldi::OffsetFileInputImpl::MyType("Not a valid UTF-8 string");
    }

    v21 = LHString_SetContentFromCPtr(*(v4 + 96), a2);
  }

  else
  {
    v21 = PNEW_LDOString_ConFromCPtr(v5, v5, a2, (v4 + 96));
  }

  v22 = v21;
  if (v21)
  {
    return v22;
  }

  *(v4 + 104) = 0;

  return LDOString_ComputeCPtrLength(a2, 0, (v4 + 108));
}

uint64_t LDOTreeNode_Des(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = LDOString_BorrowAllocator(v2);
    result = OOC_PlacementDeleteObject(v3, *(a1 + 96));
    if (result)
    {
      return result;
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    if (v5 >= *(a1 + 88))
    {
      *(a1 + 72) = 0;
    }

    else
    {
      do
      {
        v6 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
        v7 = *v5++;
        OOC_PlacementDeleteObject(v6, v7);
      }

      while (v5 < *(a1 + 88));
      v8 = *(a1 + 80);
      *(a1 + 72) = 0;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    v9 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
    OOCAllocator_Free(v9, *(a1 + 80));
    *(a1 + 80) = 0;
LABEL_10:
    *(a1 + 88) = 0;
  }

  return LDOObject_Des(a1);
}

uint64_t LDOTreeNode_AddChild(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = 0;
  v7 = v5 - v4;
  if (v5 != v4)
  {
    v8 = v7 >> 3;
    do
    {
      v9 = v8 >> 1;
      v10 = __LDOTreeNode_CompareToWithIDRelativeToParent(a2, *(v4 + 8 * v6 + 8 * (v8 >> 1)));
      if (v10 < 1)
      {
        v8 >>= 1;
        if ((v10 & 0x80000000) == 0)
        {
          result = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v6 += v9 + 1;
        v8 -= v9 + 1;
      }
    }

    while (v8);
  }

  v11 = v7 >> 3;
  if (*(a1 + 72) == (v7 >> 3) && v11 != -1)
  {
    v13 = 2 * v11;
    if (2 * v11 >= (v11 + 1000000))
    {
      v13 = v11 + 1000000;
    }

    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 <= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v14;
    }

    v16 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
    v4 = OOCAllocator_Realloc(v16, *(a1 + 80), 8 * v15, &v21);
    *(a1 + 80) = v4;
    result = v21;
    if (v21)
    {
      return result;
    }

    *(a1 + 72) = v15;
    v5 = v4 + (v7 & 0x7FFFFFFF8);
  }

  *(a1 + 88) = v5 + 8;
  v18 = (v7 >> 3);
  v19 = v18 > v6;
  v20 = v18 - v6;
  if (v19)
  {
    memmove((v4 + 8 * v6 + 8), (v4 + 8 * v6), 8 * v20);
    v4 = *(a1 + 80);
    result = v21;
  }

  else
  {
    result = 0;
  }

  *(v4 + 8 * v6) = a2;
LABEL_26:
  *(a2 + 64) = a1;
  return result;
}

uint64_t __LDOTreeNode_CompareToWithIDRelativeToParent(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[26];
  v3 = a2[26];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = a1[27];
  v6 = a2[27];
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = a1[4];
  v8 = a2[4];
  v9 = v7 >= v8;
  v10 = v7 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LDOTreeNode_CompareTo(size_t a1, size_t a2)
{
  v10 = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = 0;
    v5 = a1;
    do
    {
      v4 += *(v5 + 104);
      v5 = v3;
      v3 = *(v3 + 64);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v7 += *(v8 + 104);
      v8 = v6;
      v6 = *(v6 + 64);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v4 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v7)
  {
    return 1;
  }

  LDOTreeNode_ComputeAbsoluteTo(a1, &v10 + 1);
  LDOTreeNode_ComputeAbsoluteTo(a2, &v10);
  if (HIDWORD(v10) >= v10)
  {
    return HIDWORD(v10) > v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LDOTreeNode_ComputeAbsoluteFrom(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 += *(a1 + 104);
      *a2 = v3;
      a1 = v2;
      v2 = *(v2 + 64);
    }

    while (v2);
  }

  return 0;
}

uint64_t LDOTreeNode_ComputeAbsoluteTo(size_t a1, _DWORD *a2)
{
  v3 = a1;
  v7 = 0;
  __LDOTreeNode_ComputeTextLength(a1, &v7);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 += *(v3 + 104);
      v3 = v4;
      v4 = *(v4 + 64);
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v7 + v5;
  return 0;
}

uint64_t LDOTreeNode_CompareToWithID(size_t a1, size_t a2)
{
  result = LDOTreeNode_CompareTo(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

size_t __LDOTreeNode_ComputeTextLength(size_t result, _DWORD *a2)
{
  *a2 = 0;
  if (result)
  {
    if (*(result + 64))
    {
      v3 = *(result + 104);
      v4 = *(result + 108);
      result = v4 - v3;
      if (v4 < v3)
      {
        return result;
      }
    }

    else
    {
      result = *(result + 96);
      if (!result)
      {
        return result;
      }

      result = LHString_Length(result);
    }

    *a2 = result;
  }

  return result;
}

uint64_t LDOTreeNode_ComputeFromToIndices(uint64_t a1, int a2, unsigned int *a3, unsigned int *a4)
{
  v23 = 0;
  v4 = *(a1 + 8);
  if (((*(a1 + 16) - v4) & 0x7FFFFFFF8) != 0)
  {
    if (a2 == 1)
    {
      v9 = *v4;
      v10 = *(*v4 + 64);
      if (v10)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v11 += *(v12 + 104);
          v12 = v10;
          v10 = *(v10 + 64);
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      LDOTreeNode_ComputeAbsoluteTo(v9, &v23 + 1);
      v15 = *(a1 + 8);
      v14 = HIDWORD(v23);
LABEL_16:
      v17 = *(a1 + 16);
      while (v15 < v17)
      {
        v18 = *v15;
        if (a2 == 1)
        {
          v19 = *(v18 + 64);
          if (v19)
          {
            v20 = 0;
            v21 = *v15;
            do
            {
              v20 += *(v21 + 104);
              v21 = v19;
              v19 = *(v19 + 64);
            }

            while (v19);
          }

          else
          {
            v20 = 0;
          }

          LDOTreeNode_ComputeAbsoluteTo(v18, &v23);
          v22 = v23;
          v17 = *(a1 + 16);
        }

        else
        {
          v20 = *(v18 + 104);
          v22 = *(v18 + 108);
          LODWORD(v23) = v22;
        }

        if (v20 < v11)
        {
          v11 = v20;
        }

        if (v22 > v14)
        {
          v14 = v22;
        }

        ++v15;
      }

      if (a3)
      {
        *a3 = v11;
      }

      if (a4)
      {
        *a4 = v14;
      }

      return 0;
    }

    if (LDOTreeNode_HaveSameParent(a1) == 1)
    {
      v14 = 0;
      v11 = 0;
      v15 = *(a1 + 8);
      LODWORD(v23) = *(*v15 + 108);
      goto LABEL_16;
    }

    v13 = "pvecNodes has elements with different parent nodes";
  }

  else
  {
    v13 = "pvecNodes has no elements";
  }

  return kaldi::OffsetFileInputImpl::MyType(v13);
}

uint64_t LDOTreeNode_HaveSameParent(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (((v1 - v2) & 0x7FFFFFFF8) == 0)
  {
    return 1;
  }

  v3 = *(*v2 + 64);
  if (!v3)
  {
    while (v2 < v1)
    {
      if (*(*v2 + 64))
      {
        return 0;
      }

      v2 += 8;
    }

    return 1;
  }

  if (v2 >= v1)
  {
    return 1;
  }

  while (1)
  {
    v5 = *(*v2 + 64);
    if (!v5 || !LDOObject_IsEqual(v3, v5))
    {
      break;
    }

    v2 += 8;
    if (v2 >= *(a1 + 16))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t LDOTreeNode_ComputeIndexInParent(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    return __LDOTreeNode_ComputeChildIndex(v4, a1, a2);
  }

  else
  {
    return kaldi::StandardInputImpl::MyType(0);
  }
}

uint64_t __LDOTreeNode_ComputeChildIndex(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88) - v3;
  if (v4)
  {
    v7 = 0;
    v8 = v4 >> 3;
    do
    {
      v9 = v8 >> 1;
      v10 = __LDOTreeNode_CompareToWithIDRelativeToParent(a2, *(v3 + 8 * v7 + 8 * (v8 >> 1)));
      if (v10 < 1)
      {
        if ((v10 & 0x80000000) == 0)
        {
          *a3 = v9 + v7;
          return 0;
        }
      }

      else
      {
        v7 += v9 + 1;
        v9 = v8 - (v9 + 1);
      }

      v8 = v9;
    }

    while (v9);
  }

  return kaldi::OffsetFileInputImpl::MyType("pChild is not a child of the self node");
}

uint64_t LDOTreeNode_ComputeRoot(uint64_t result, void *a2)
{
  do
  {
    v2 = result;
    result = *(result + 64);
  }

  while (result);
  *a2 = v2;
  return result;
}

uint64_t LDOTreeNode_ComputeSubtreeNodes(size_t a1, uint64_t a2)
{
  v64 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = (a2 + 8);
  *(a2 + 16) = 0;
  v5 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v6 = OOCAllocator_Realloc(v5, 0, 64, &v64);
  v7 = v6;
  v8 = v64 == 0;
  v61 = a1;
  if (v64)
  {
    goto LABEL_2;
  }

  *v6 = a1;
  v62 = v6 + 1;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = 0;
  if (v12 == v11)
  {
    goto LABEL_15;
  }

  v14 = (v12 - v11) >> 3;
  do
  {
    v15 = v14 >> 1;
    v16 = *(*v4 + 8 * v13 + 8 * (v14 >> 1));
    v17 = LDOTreeNode_CompareTo(a1, v16);
    if (!v17)
    {
      v18 = *(a1 + 16);
      v19 = *(v16 + 16);
      if (v18 < v19)
      {
        goto LABEL_13;
      }

      v17 = v18 > v19;
    }

    if (v17 < 1)
    {
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 += v15 + 1;
      v15 = v14 - (v15 + 1);
    }

LABEL_13:
    v14 = v15;
  }

  while (v15);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
LABEL_15:
  v20 = v12 - v11;
  v21 = (v12 - v11) >> 3;
  if (*a2 != v21 || v21 == -1)
  {
LABEL_29:
    *(a2 + 16) = v12 + 8;
    v27 = (v20 >> 3);
    v28 = v27 > v13;
    v29 = v27 - v13;
    if (v28)
    {
      memmove((v11 + 8 * v13 + 8), (v11 + 8 * v13), 8 * v29);
      v11 = *v4;
    }

    *(v11 + 8 * v13) = a1;
LABEL_33:
    v30 = 0;
    v31 = 8 * v8;
    v32 = v62;
    while (1)
    {
      v59 = v30;
      v60 = *(v7 + 8 * v30);
      v33 = *(v60 + 80);
      if (v33 < *(v60 + 88))
      {
        break;
      }

LABEL_75:
      v30 = v59 + 1;
      if (v59 + 1 >= ((v32 - v7) >> 3))
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v34 = *v33;
      v35 = v32 - v7;
      v36 = ((v32 - v7) >> 3) + 1;
      if (v36 > v31)
      {
        v37 = 2 * v31;
        if (2 * v31 >= v31 + 1000000)
        {
          v37 = v31 + 1000000;
        }

        if (v37 > v36)
        {
          v36 = v37;
        }

        if (v36 <= 8)
        {
          v31 = 8;
        }

        else
        {
          v31 = v36;
        }

        v38 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v61);
        v39 = OOCAllocator_Realloc(v38, v7, 8 * v31, &v64);
        v7 = v39;
        if (v64)
        {
          goto LABEL_2;
        }

        v32 = (v39 + (v35 & 0x7FFFFFFF8));
      }

      *v32 = v34;
      v63 = v32 + 1;
      v40 = *(a2 + 8);
      v41 = *(a2 + 16);
      if (v41 != v40)
      {
        break;
      }

      v43 = 0;
LABEL_56:
      v50 = v41 - v40;
      v51 = (v41 - v40) >> 3;
      if (*a2 == v51 && v51 != -1)
      {
        v53 = 2 * v51;
        if (2 * v51 >= (v51 + 1000000))
        {
          v53 = v51 + 1000000;
        }

        if (v53 <= v51 + 1)
        {
          v54 = v51 + 1;
        }

        else
        {
          v54 = v53;
        }

        if (v54 <= 8)
        {
          v55 = 8;
        }

        else
        {
          v55 = v54;
        }

        v56 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v61);
        v40 = OOCAllocator_Realloc(v56, *v4, 8 * v55, &v64);
        *v4 = v40;
        if (v64)
        {
          goto LABEL_2;
        }

        *a2 = v55;
        v41 = v40 + (v50 & 0x7FFFFFFF8);
      }

      *(a2 + 16) = v41 + 8;
      v57 = (v50 >> 3);
      v42 = v7;
      v28 = v57 > v43;
      v58 = v57 - v43;
      if (v28)
      {
        memmove((v40 + 8 * v43 + 8), (v40 + 8 * v43), 8 * v58);
        v40 = *v4;
      }

      *(v40 + 8 * v43) = v34;
LABEL_74:
      ++v33;
      v7 = v42;
      v32 = v63;
      if (v33 >= *(v60 + 88))
      {
        goto LABEL_75;
      }
    }

    v42 = v7;
    v43 = 0;
    v44 = (v41 - v40) >> 3;
    while (1)
    {
      v45 = v44 >> 1;
      v46 = *(*v4 + 8 * v43 + 8 * (v44 >> 1));
      v47 = LDOTreeNode_CompareTo(v34, v46);
      if (v47)
      {
        goto LABEL_50;
      }

      v48 = *(v34 + 16);
      v49 = *(v46 + 16);
      if (v48 >= v49)
      {
        break;
      }

LABEL_53:
      v44 = v45;
      if (!v45)
      {
        v40 = *(a2 + 8);
        v41 = *(a2 + 16);
        v7 = v42;
        goto LABEL_56;
      }
    }

    v47 = v48 > v49;
LABEL_50:
    if (v47 < 1)
    {
      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v43 += v45 + 1;
      v45 = v44 - (v45 + 1);
    }

    goto LABEL_53;
  }

  v23 = 2 * v21;
  if (2 * v21 >= (v21 + 1000000))
  {
    v23 = v21 + 1000000;
  }

  if (v23 <= v21 + 1)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v23;
  }

  if (v24 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v24;
  }

  v26 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v11 = OOCAllocator_Realloc(v26, *v4, 8 * v25, &v64);
  *v4 = v11;
  if (!v64)
  {
    *a2 = v25;
    v12 = v11 + (v20 & 0x7FFFFFFF8);
    goto LABEL_29;
  }

LABEL_2:
  if (v7)
  {
    v9 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v61);
    OOCAllocator_Free(v9, v7);
  }

  return v64;
}

uint64_t LDOTreeNode_ComputeText(size_t a1, void *a2)
{
  v12 = 0;
  v4 = a1;
  do
  {
    v5 = v4;
    v4 = *(v4 + 64);
  }

  while (v4);
  v6 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v7 = v6;
  if (*(v5 + 96))
  {
    v13 = 0;
    v8 = *(a1 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v9 += *(v10 + 104);
        v10 = v8;
        v8 = *(v8 + 64);
      }

      while (v8);
      v13 = v9;
    }

    LDOTreeNode_ComputeAbsoluteTo(a1, &v12);
    return PNEW_LDOString_ConFromStringSubstring(v7, v7, *(v5 + 96), &v13, &v12, a2);
  }

  else
  {

    return PNEW_LDOString_Con(v6, v6, a2);
  }
}

uint64_t LDOTreeNode_ComputeUpdateInfo(size_t a1, char *__s, _DWORD *a3, _DWORD *a4)
{
  v11 = 0;
  if (LDOString_IsValidUTF8(__s, 0))
  {
    result = LDOString_ComputeCPtrLength(__s, 0, &v11);
    if (!result)
    {
      __LDOTreeNode_ComputeTextLength(a1, &v11 + 1);
      *a3 = 0;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = 0;
        do
        {
          v10 += *(a1 + 104);
          *a3 = v10;
          a1 = v9;
          v9 = *(v9 + 64);
        }

        while (v9);
      }

      result = 0;
      *a4 = v11 - HIDWORD(v11);
    }
  }

  else
  {

    return kaldi::OffsetFileInputImpl::MyType("not a valid UTF-8 string");
  }

  return result;
}

uint64_t LDOTreeNode_ComputeVectorTextLength(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  v11 = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
LABEL_7:
    v6 = 0;
    *a2 = v3;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v6 = LDOTreeNode_ComputeText(*v4, &v11);
      if (v6)
      {
        break;
      }

      v7 = LHString_Length(v11);
      if (v11)
      {
        v8 = LDOString_BorrowAllocator(v11);
        OOC_PlacementDeleteObject(v8, v11);
        v11 = 0;
      }

      v3 += v7;
      if (++v4 >= *(a1 + 16))
      {
        goto LABEL_7;
      }
    }

    if (v11)
    {
      v10 = LDOString_BorrowAllocator(v11);
      OOC_PlacementDeleteObject(v10, v11);
    }
  }

  return v6;
}

uint64_t LDOTreeNode_RemoveChild(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  result = __LDOTreeNode_ComputeChildIndex(a1, a2, &v5);
  if (!result)
  {
    v4 = v5;

    return LDOTreeNode_RemoveChildAtIndex(a1, v4);
  }

  return result;
}

uint64_t LDOTreeNode_GetNextSibling(uint64_t a1, void *a2)
{
  v6 = 0;
  *a2 = 0;
  result = *(a1 + 64);
  if (result)
  {
    result = __LDOTreeNode_ComputeChildIndex(result, a1, &v6);
    if (!result)
    {
      v5 = *(*(a1 + 64) + 80);
      result = 0;
      if (v6 + 1 < ((*(*(a1 + 64) + 88) - v5) >> 3))
      {
        *a2 = *(v5 + 8 * (v6 + 1));
      }
    }
  }

  return result;
}

uint64_t LDOTreeNode_GetPreviousSibling(uint64_t a1, void *a2)
{
  v6 = 0;
  *a2 = 0;
  result = *(a1 + 64);
  if (result)
  {
    result = __LDOTreeNode_ComputeChildIndex(result, a1, &v6);
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = v6 == 0;
    }

    if (!v5)
    {
      result = 0;
      *a2 = *(*(*(a1 + 64) + 80) + 8 * (v6 - 1));
    }
  }

  return result;
}

uint64_t LDOTreeNode_RemoveChildAtIndex(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  v3 = *(a1 + 80);
  v4 = (*(a1 + 88) - v3) >> 3;
  memmove((v3 + 8 * a2), (v3 + 8 * a2 + 8), 8 * (v4 + ~a2));
  result = 0;
  v6 = *(a1 + 88) - 8;
  *(a1 + 88) = v6;
  v7 = v4 - 1;
  if (*(a1 + 72) >= (3 * (v4 - 1)))
  {
    v8 = *(a1 + 80);
    v9 = 2 * v7;
    if (v9 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    v11 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
    v12 = OOCAllocator_Realloc(v11, *(a1 + 80), 8 * v10, &v13);
    *(a1 + 80) = v12;
    result = v13;
    if (!v13)
    {
      *(a1 + 72) = v10;
      *(a1 + 88) = v12 + ((v6 - v8) & 0x7FFFFFFF8);
    }
  }

  return result;
}

uint64_t LDOTreeNode_ToString(size_t a1, uint64_t *a2)
{
  v16 = 0;
  v4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v5 = PNEW_LDOString_Con(v4, v4, a2);
  if (v5)
  {
    return v5;
  }

  v6 = *a2;
  appended = LHString_Append(v6, "  LDOTreeNode\n");
  if (!appended)
  {
    appended = LDOObject_ToString(a1, &v16);
    if (!appended)
    {
      appended = LDOString_AppendString(v6, v16);
      if (!appended)
      {
        if (v16)
        {
          v8 = LDOString_BorrowAllocator(v16);
          OOC_PlacementDeleteObject(v8, v16);
          v16 = 0;
        }

        appended = LDOString_AppendPrefixU32Suffix(v6, "  Parent from: ", *(a1 + 104), "\n");
        if (!appended)
        {
          appended = LDOString_AppendPrefixU32Suffix(v6, "  Parent to: ", *(a1 + 108), "\n");
          if (!appended)
          {
            appended = LDOString_AppendPrefixStringSuffix(v6, "  pText: ", *(a1 + 96), "\n");
            if (!appended)
            {
              appended = LDOTreeNode_ComputeText(a1, &v16);
              if (!appended)
              {
                appended = LDOString_AppendPrefixStringSuffix(v6, "  text: ", v16, "\n");
                if (!appended)
                {
                  if (v16)
                  {
                    v9 = LDOString_BorrowAllocator(v16);
                    OOC_PlacementDeleteObject(v9, v16);
                    v16 = 0;
                  }

                  appended = LDOString_AppendPrefixU32Suffix(v6, "  children: ", (*(a1 + 88) - *(a1 + 80)) >> 3, "\n\n");
                  if (!appended)
                  {
                    v13 = *(a1 + 80);
                    if (v13 >= *(a1 + 88))
                    {
                      v5 = 0;
                      goto LABEL_16;
                    }

                    v14 = 0;
                    while (1)
                    {
                      appended = LDOString_AppendPrefixU32Suffix(v6, "  child #", v14, "\n");
                      if (appended)
                      {
                        break;
                      }

                      appended = (*(**v13 + 24))(*v13, &v16);
                      if (appended)
                      {
                        break;
                      }

                      appended = LDOString_AppendString(v6, v16);
                      if (appended)
                      {
                        break;
                      }

                      if (v16)
                      {
                        v15 = LDOString_BorrowAllocator(v16);
                        OOC_PlacementDeleteObject(v15, v16);
                        v16 = 0;
                      }

                      v5 = 0;
                      ++v14;
                      if (++v13 >= *(a1 + 88))
                      {
                        goto LABEL_16;
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

  v5 = appended;
LABEL_16:
  if (v16)
  {
    v10 = LDOString_BorrowAllocator(v16);
    OOC_PlacementDeleteObject(v10, v16);
    v16 = 0;
  }

  if (v6 && v5)
  {
    v11 = LDOString_BorrowAllocator(v6);
    OOC_PlacementDeleteObject(v11, v6);
  }

  return v5;
}

uint64_t PNEW_LDOTreeNode_Con(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, int a6, unsigned int a7, uint64_t *a8)
{
  v18 = 0;
  v16 = OOCAllocator_Malloc(a1, 112, &v18);
  result = v18;
  if (!v18)
  {
    result = LDOTreeNode_Con(v16, a2, a3, a4, a5, a6, a7);
    v18 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v16);
      *a8 = 0;
      return v18;
    }

    else
    {
      *a8 = v16;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNode_ConRoot(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 112, &v14);
  result = v14;
  if (!v14)
  {
    result = LDOTreeNode_ConRoot(v12, a2, a3, a4, a5);
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

uint64_t LDOString_ConFromCPtr(void *a1, uint64_t a2, char *__s)
{
  result = LDOString_ValidateIndicesCPtr(__s, 0, 0, 1, 0, 0, 0);
  if (!result)
  {
    result = LHString_ConFromCPtr(a1, a2, __s);
    if (!result)
    {
      *a1 = &__LDOString;
    }
  }

  return result;
}

uint64_t LDOString_ValidateIndicesCPtr(char *__s, _DWORD *a2, unsigned int *a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  if (__s)
  {
    v14 = strlen(__s);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = kaldi::OffsetFileInputImpl::MyType("szText is NULL and bAllowNULL is LH_FALSE");
  if (result)
  {
    return result;
  }

  v14 = 0;
  if (a2)
  {
LABEL_3:
    LODWORD(a2) = *a2;
  }

LABEL_4:
  v15 = v14;
  if (a3)
  {
    v15 = *a3;
  }

  if (a2 > v15)
  {
    v16 = "u32From is greater than u32To";
LABEL_14:

    return kaldi::OffsetFileInputImpl::MyType(v16);
  }

  if (a2 > v14)
  {
    v16 = "u32From is greater than u32Length";
    goto LABEL_14;
  }

  if (v15 > v14)
  {
    v16 = "u32To is greater than u32Length";
    goto LABEL_14;
  }

  if (a4 == 1 && !LDOString_IsValidUTF8(&__s[a2], &__s[v15]))
  {
    v16 = "not a valid UTF-8 string";
    goto LABEL_14;
  }

  if (a5)
  {
    *a5 = a2;
  }

  if (a6)
  {
    *a6 = v15;
  }

  result = 0;
  if (a7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t LDOString_ConFromCPtrSubstring(void *a1, uint64_t a2, char *__s, _DWORD *a4, unsigned int *a5)
{
  v9 = 0;
  result = LDOString_ValidateIndicesCPtr(__s, a4, a5, 1, &v9 + 1, &v9, 0);
  if (!result)
  {
    result = LHString_ConFromCPtrInterval(a1, a2, &__s[HIDWORD(v9)], &__s[v9]);
    if (!result)
    {
      *a1 = &__LDOString;
    }
  }

  return result;
}

uint64_t LDOString_ConFromString(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a3);
  result = LDOString_ConFromCPtr(a1, a2, v5);
  if (!result)
  {
    *a1 = &__LDOString;
  }

  return result;
}

uint64_t LDOString_ConFromStringSubstring(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  v9 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a3);
  result = LDOString_ConFromCPtrSubstring(a1, a2, v9, a4, a5);
  if (!result)
  {
    *a1 = &__LDOString;
  }

  return result;
}

uint64_t LDOString_AppendPrefixBoolSuffix(uint64_t a1, char *a2, int a3, char *a4)
{
  if (a3 == 1)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  return __LDOString_AppendPrefixCPtrSuffix(a1, a2, v4, a4);
}

uint64_t __LDOString_AppendPrefixCPtrSuffix(uint64_t a1, char *__s, char *a3, char *a4)
{
  if (__s)
  {
    if (!LDOString_IsValidUTF8(__s, 0))
    {
      v11 = "Prefix is not a valid UTF-8 string";
      goto LABEL_19;
    }

    result = LHString_Append(a1, __s);
    if (result)
    {
      return result;
    }
  }

  if (a3)
  {
    if (!LDOString_IsValidUTF8(a3, 0))
    {
      v11 = "String is not a valid UTF-8 string";
      goto LABEL_19;
    }

    v9 = a1;
    v10 = a3;
  }

  else
  {
    v10 = "NULL";
    v9 = a1;
  }

  result = LHString_Append(v9, v10);
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    return 0;
  }

  if (LDOString_IsValidUTF8(a4, 0))
  {

    return LHString_Append(a1, a4);
  }

  v11 = "Suffix is not a valid UTF-8 string";
LABEL_19:

  return kaldi::OffsetFileInputImpl::MyType(v11);
}

uint64_t LDOString_AppendPrefixS32Suffix(uint64_t a1, char *a2, unsigned int a3, char *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *v9 = 0;
  v10 = 0;
  LH_itoa(a3, v9, 0xAu);
  result = __LDOString_AppendPrefixCPtrSuffix(a1, a2, v9, a4);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LDOString_AppendPrefixStringSuffix(uint64_t a1, char *__s, char *a3, char *a4)
{
  if (a3)
  {
    a3 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a3);
  }

  return __LDOString_AppendPrefixCPtrSuffix(a1, __s, a3, a4);
}

uint64_t LDOString_AppendPrefixU32Suffix(uint64_t a1, char *a2, unsigned int a3, char *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *v9 = 0;
  v10 = 0;
  LH_utoa(a3, v9, 0xAu);
  result = __LDOString_AppendPrefixCPtrSuffix(a1, a2, v9, a4);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LDOString_AppendString(uint64_t a1, uint64_t a2)
{
  v3 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a2);

  return LHString_Append(a1, v3);
}

uint64_t LDOString_CompareTo(uint64_t a1, uint64_t a2)
{
  v3 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a2);

  return strcmp(v3, v4);
}

uint64_t LDOString_ComputeCPtrLength(const char *a1, int a2, _DWORD *a3)
{
  if (a1)
  {
    *a3 = strlen(a1);
    return 0;
  }

  if (a2 == 1)
  {
    *a3 = 0;
    return 0;
  }

  return kaldi::OffsetFileInputImpl::MyType("szText is NULL and bAllowNULL is LH_FALSE");
}

BOOL LDOString_IsValidUTF8(char *__s, char *a2)
{
  if (!a2)
  {
    if (__s)
    {
      v3 = strlen(__s);
    }

    else
    {
      if (kaldi::OffsetFileInputImpl::MyType("szText is NULL and bAllowNULL is LH_FALSE"))
      {
        return 0;
      }

      v3 = 0;
    }

    a2 = &__s[v3];
  }

  if (a2 == __s)
  {
    return 1;
  }

  v5 = __s;
  return utf8full_check(&v5, a2) == 0;
}

uint64_t LDOString_ReplaceSubstring(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v8 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1);
  v9 = LDOString_ValidateIndicesCPtr(v8, a2, a3, 1, &v18 + 1, &v18, 0);
  if (v9)
  {
    return v9;
  }

  v9 = LDOString_ConFromString(v17, *(a1 + 24), a1);
  if (v9)
  {
    return v9;
  }

  v10 = LDOString_ConFromStringSubstring(v16, *(a1 + 24), a1, &v18, 0);
  if (!v10)
  {
    v12 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v17);
    if (LDOString_IsValidUTF8(v12, &v12[HIDWORD(v18)]))
    {
      v13 = LHString_SetContentFromNCPtr(a1, v12, HIDWORD(v18));
      if (!v13)
      {
        v14 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a4);
        v13 = LHString_Append(a1, v14);
        if (!v13)
        {
          v15 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v16);
          v13 = LHString_Append(a1, v15);
        }
      }
    }

    else
    {
      v13 = kaldi::OffsetFileInputImpl::MyType("Not a valid UTF-8 string");
    }

    v10 = v13;
    (*(*&v16[0] + 16))(v16);
  }

  (*(*&v17[0] + 16))(v17);
  return v10;
}

uint64_t PNEW_LDOString_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 32, &v8);
  result = v8;
  if (!v8)
  {
    result = LHString_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOString;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_LDOString_ConFromCPtr(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 32, &v10);
  result = v10;
  if (!v10)
  {
    result = LDOString_ConFromCPtr(v8, a2, a3);
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

uint64_t PNEW_LDOString_ConFromStringSubstring(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 32, &v14);
  result = v14;
  if (!v14)
  {
    result = LDOString_ConFromStringSubstring(v12, a2, a3, a4, a5);
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

uint64_t LDOLabelSet_Des(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    *(a1 + 16) = 0;
LABEL_10:
    *(a1 + 32) = 0;

    return Object_Des();
  }

  if (v2 >= *(a1 + 32))
  {
    *(a1 + 16) = 0;
LABEL_9:
    OOCAllocator_Free(*(a1 + 8), v2);
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  while (1)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), *v2);
    if (result)
    {
      return result;
    }

    if (++v2 >= *(a1 + 32))
    {
      v2 = *(a1 + 24);
      *(a1 + 16) = 0;
      if (v2)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }
}

uint64_t LDOLabelSet_AddLabel(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = v5 - v4;
  v7 = ((v5 - v4) >> 3) + 1;
  v8 = *(a1 + 16);
  if (v7 <= v8)
  {
    goto LABEL_11;
  }

  v9 = 2 * v8;
  v10 = v8 + 1000000;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v9;
  }

  v12 = OOCAllocator_Realloc(*(a1 + 8), v4, 8 * v11, &v15);
  *(a1 + 24) = v12;
  v13 = v15;
  if (!v15)
  {
    *(a1 + 16) = v11;
    v5 = (v12 + (v6 & 0x7FFFFFFF8));
    *(a1 + 32) = v5;
LABEL_11:
    *v5 = a2;
    *(a1 + 32) += 8;
    return v15;
  }

  return v13;
}

uint64_t LDOLabelSet_ComputeContainedLabels(uint64_t *a1, unsigned int a2, unsigned int a3, int a4, unsigned int *a5)
{
  result = 0;
  v31 = 0;
  *a5 = 0;
  *(a5 + 1) = 0;
  v7 = (a5 + 2);
  *(a5 + 2) = 0;
  v8 = a1[3];
  if (v8 < a1[4])
  {
    do
    {
      v13 = *v8;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v8);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(v13);
      v17 = AbsoluteFrom >= a2 && AbsoluteTo <= a3;
      v19 = AbsoluteFrom == a2 && AbsoluteTo == a3;
      if (a4 == 1)
      {
        v17 = v19;
      }

      if ((AbsoluteFrom != a3 || *(v13 + 112) != 1) && v17)
      {
        v22 = *(a5 + 1);
        v23 = *(a5 + 2);
        v24 = v23 - v22;
        v25 = ((v23 - v22) >> 3) + 1;
        v26 = *a5;
        if (v25 > *a5)
        {
          v27 = 2 * v26;
          v28 = v26 + 1000000;
          if (v27 >= v28)
          {
            v27 = v28;
          }

          if (v27 <= v25)
          {
            v27 = v25;
          }

          if (v27 <= 8)
          {
            v29 = 8;
          }

          else
          {
            v29 = v27;
          }

          v30 = OOCAllocator_Realloc(a1[1], v22, 8 * v29, &v31);
          *v7 = v30;
          result = v31;
          if (v31)
          {
            return result;
          }

          *a5 = v29;
          v23 = (v30 + (v24 & 0x7FFFFFFF8));
          *(a5 + 2) = v23;
        }

        *v23 = v13;
        *(a5 + 2) += 8;
      }

      ++v8;
    }

    while (v8 < a1[4]);
    return v31;
  }

  return result;
}

uint64_t LDOLabelSet_ComputeOverlappingLabels(uint64_t *a1, unsigned int a2, unsigned int a3, int a4, unsigned int *a5)
{
  result = 0;
  v33 = 0;
  *a5 = 0;
  *(a5 + 1) = 0;
  v7 = (a5 + 2);
  *(a5 + 2) = 0;
  v8 = a1[3];
  if (v8 < a1[4])
  {
    while (1)
    {
      v13 = *v8;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v8);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(v13);
      v17 = AbsoluteFrom > a2 || AbsoluteTo < a3;
      if (a4 != 1)
      {
        v19 = AbsoluteFrom >= a3 || AbsoluteTo < a3;
        if (AbsoluteTo > a2 && AbsoluteFrom <= a2 || !v19)
        {
LABEL_30:
          v24 = *(a5 + 1);
          v25 = *(a5 + 2);
          v26 = v25 - v24;
          v27 = ((v25 - v24) >> 3) + 1;
          v28 = *a5;
          if (v27 > *a5)
          {
            v29 = 2 * v28;
            v30 = v28 + 1000000;
            if (v29 >= v30)
            {
              v29 = v30;
            }

            if (v29 <= v27)
            {
              v29 = v27;
            }

            if (v29 <= 8)
            {
              v31 = 8;
            }

            else
            {
              v31 = v29;
            }

            v32 = OOCAllocator_Realloc(a1[1], v24, 8 * v31, &v33);
            *v7 = v32;
            result = v33;
            if (v33)
            {
              return result;
            }

            *a5 = v31;
            v25 = (v32 + (v26 & 0x7FFFFFFF8));
            *(a5 + 2) = v25;
          }

          *v25 = v13;
          *(a5 + 2) += 8;
          goto LABEL_41;
        }

        v23 = AbsoluteFrom < a2 || AbsoluteTo > a3;
        v17 &= v23;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_41:
      if (++v8 >= a1[4])
      {
        return v33;
      }
    }
  }

  return result;
}

uint64_t LDOLabelSet_MergeLabels(uint64_t a1, uint64_t a2, char *a3, char *a4, void *a5)
{
  v19 = 0;
  v6 = *(a2 + 8);
  if (((*(a2 + 16) - v6) & 0x7FFFFFFF8) != 0)
  {
    v9 = *v6;
    v17 = *(v9 + 64);
    v18 = *(v9 + 80);
    PNEW_LDOLabel_Con(*(a1 + 8), *(a1 + 8), a3, a4, &v17, &v19);
    if (v10)
    {
      return v10;
    }

    else
    {
      for (i = *(a2 + 8); i < *(a2 + 16); ++i)
      {
        v10 = LDOLabel_AddNodes(v19, *i + 64);
        if (v10)
        {
          return v10;
        }
      }

      v14 = LDOLabelSet_AddLabel(a1, v19);
      if (v14)
      {
        v11 = v14;
        if (v19)
        {
          OOC_PlacementDeleteObject(*(a1 + 8), v19);
        }
      }

      else
      {
        for (j = *(a2 + 8); j < *(a2 + 16); ++j)
        {
          v16 = *j;
          v10 = LDOObject_CopyAttributes(v19, *j);
          if (v10)
          {
            return v10;
          }

          v10 = LDOLabelSet_RemoveLabel(a1, v16);
          if (v10)
          {
            return v10;
          }
        }

        v11 = 0;
        if (a5)
        {
          *a5 = v19;
        }
      }
    }
  }

  else
  {
    v11 = 0;
    *a5 = 0;
  }

  return v11;
}

uint64_t LDOLabelSet_RemoveLabel(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    return OOC_PlacementDeleteObject(*(a1 + 8), a2);
  }

  v6 = 0;
  v7 = *(a1 + 24);
  while (*(a2 + 16) != *(*v7 + 16))
  {
    v7 += 8;
    ++v6;
    if (v7 >= v5)
    {
      return OOC_PlacementDeleteObject(*(a1 + 8), a2);
    }
  }

  v8 = ((v5 - v4) >> 3) - 1;
  memmove((v4 + 8 * v6), (v4 + 8 * v6 + 8), 8 * (v8 - v6));
  v9 = *(a1 + 32) - 8;
  *(a1 + 32) = v9;
  if (*(a1 + 16) < (3 * v8))
  {
    return OOC_PlacementDeleteObject(*(a1 + 8), a2);
  }

  v10 = *(a1 + 24);
  if ((2 * v8) <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = 2 * v8;
  }

  v12 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 24), 8 * v11, &v15);
  *(a1 + 24) = v12;
  v13 = v15;
  if (!v15)
  {
    *(a1 + 16) = v11;
    *(a1 + 32) = v12 + ((v9 - v10) & 0x7FFFFFFF8);
    return OOC_PlacementDeleteObject(*(a1 + 8), a2);
  }

  return v13;
}

uint64_t LDOLabelSet_ToString(uint64_t *a1, uint64_t *a2)
{
  v15 = 0;
  v4 = PNEW_LDOString_Con(a1[1], a1[1], a2);
  if (!v4)
  {
    v5 = a1[3];
    if (v5 >= a1[4])
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = *a2;
      while (1)
      {
        appended = LDOString_AppendPrefixU32Suffix(v7, "  label #", v6, "\n");
        if (appended)
        {
          break;
        }

        v9 = (*(**v5 + 24))(*v5, &v15);
        v10 = v15;
        if (v9 || (v9 = LDOString_AppendPrefixStringSuffix(v7, 0, v15, "\n"), v10 = v15, v9))
        {
          v4 = v9;
          if (!v10)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        if (v15)
        {
          v11 = LDOString_BorrowAllocator(v15);
          OOC_PlacementDeleteObject(v11, v15);
          v15 = 0;
        }

        ++v6;
        if (++v5 >= a1[4])
        {
          return 0;
        }
      }

      v4 = appended;
      v10 = v15;
      if (v15)
      {
LABEL_12:
        v12 = LDOString_BorrowAllocator(v10);
        OOC_PlacementDeleteObject(v12, v15);
        v15 = 0;
      }

LABEL_13:
      if (v7)
      {
        v13 = LDOString_BorrowAllocator(v7);
        OOC_PlacementDeleteObject(v13, v7);
      }
    }
  }

  return v4;
}

uint64_t LDOLabelSet_UpdateRegularLabels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  for (i = *(a1 + 24); i < *(a1 + 32); ++i)
  {
    v7 = *i;
    if (*(*i + 112) != 1)
    {
      v10 = 0;
      result = LDOLabel_ContainsAllNodes(v7, a2, &v10);
      if (result)
      {
        return result;
      }

      if (v10 == 1)
      {
        result = LDOLabel_RemoveNodes(v7, a2);
        if (result)
        {
          return result;
        }

        result = LDOLabel_AddNodes(v7, a3);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = LDOLabel_ContainsAtLeastOneNode(v7, a2, &v9);
        if (result)
        {
          return result;
        }

        if (v9 == 1)
        {
          result = LDOLabel_RemoveNodes(v7, a2);
          if (result)
          {
            return result;
          }

          result = LDOLabel_Invalidate(v7);
          if (result)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t LDOLabelSet_UpdateSpan(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 24);
  if (v3 >= *(a1 + 32))
  {
    return 0;
  }

  while (1)
  {
    v7 = *v3;
    if (*(*v3 + 104) == 1 && *(v7 + 112) == 1 && LDOLabel_GetAbsoluteTo(v7) > a2)
    {
      result = LDOLabel_UpdateSpanLength(*v3, a2, a3);
      if (result)
      {
        break;
      }
    }

    if (++v3 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t PNEW_LDOLabelSet_Con(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 40, &v8);
  result = v8;
  if (!v8)
  {
    result = Object_Con(v6);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOLabelSet;
      *(v6 + 8) = a2;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t LDOObject_Con(uint64_t a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LDOObject;
    *(a1 + 8) = a2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 16) = a1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t LDOObject_Des(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v2);
    if (result)
    {
      return result;
    }

    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v4);
    if (result)
    {
      return result;
    }

    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    *(a1 + 24) = 0;
LABEL_18:
    *(a1 + 40) = 0;

    return Object_Des();
  }

  if (v5 >= *(a1 + 40))
  {
    *(a1 + 24) = 0;
LABEL_17:
    OOCAllocator_Free(*(a1 + 8), v5);
    *(a1 + 32) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 24);
    result = __LDOObject_DeallocateValue(a1, &v6);
    if (result)
    {
      return result;
    }

    result = OOC_PlacementDeleteObject(*(a1 + 8), *v5);
    if (result)
    {
      return result;
    }

    v5 += 32;
    if (v5 >= *(a1 + 40))
    {
      v5 = *(a1 + 32);
      *(a1 + 24) = 0;
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }
}

uint64_t __LDOObject_DeallocateValue(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*a2 == 2)
  {
    v5 = *(a2 + 2);
    if (!v5)
    {
      return 0;
    }

    result = OOC_PlacementDeleteObject(*(a1 + 8), v5);
    if (result)
    {
      return result;
    }

    *(a2 + 2) = 0;
    v4 = *a2;
  }

  if (v4 != 3)
  {
    return 0;
  }

  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0;
  }

  *v7 = 0;
  if (*(v7 + 8))
  {
    OOCAllocator_Free(*(a1 + 8), *(v7 + 8));
    v7 = *(a2 + 2);
    *(v7 + 8) = 0;
  }

  *(v7 + 16) = 0;
  OOCAllocator_Free(*(a1 + 8), v7);
  result = 0;
  *(a2 + 2) = 0;
  return result;
}

uint64_t LDOObject_CopyAttributes(uint64_t a1, uint64_t *a2)
{
  for (i = a2[4]; i < a2[5]; i += 32)
  {
    v5 = *(i + 8);
    v6 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*i);
    if (v5 <= 1)
    {
      if (!v5)
      {
        LODWORD(v16) = 0;
        v17 = 0;
        U32Attribute = LDOObject_GetU32Attribute(a2, v6, &v16, &v17);
        if (U32Attribute)
        {
          v13 = 0;
        }

        else
        {
          v13 = v16 == 1;
        }

        if (v13)
        {
          LDOObject_SetU32Attribute(a1, v6, v17);
          goto LABEL_37;
        }

LABEL_38:
        if (U32Attribute)
        {
          return U32Attribute;
        }

        continue;
      }

      if (v5 == 1)
      {
        LODWORD(v16) = 0;
        v17 = 0;
        U32Attribute = LDOObject_GetS32Attribute(a2, v6, &v16, &v17);
        if (U32Attribute)
        {
          v9 = 0;
        }

        else
        {
          v9 = v16 == 1;
        }

        if (!v9)
        {
          goto LABEL_38;
        }

        LDOObject_SetS32Attribute(a1, v6, v17);
LABEL_37:
        U32Attribute = v8;
        goto LABEL_38;
      }
    }

    else
    {
      switch(v5)
      {
        case 2:
          v17 = 0;
          v16 = 0;
          U32Attribute = LDOObject_GetStringAttribute(a2, v6, &v17, &v16);
          if (U32Attribute)
          {
            v10 = 0;
          }

          else
          {
            v10 = v17 == 1;
          }

          if (!v10)
          {
            goto LABEL_38;
          }

          v8 = LDOObject_SetStringAttribute(a1, v6, v16);
          goto LABEL_37;
        case 3:
          v17 = 0;
          v16 = 0;
          v15 = 0;
          U32Attribute = LDOObject_GetListU32Attribute(a2, v6, &v17, &v16, &v15);
          v11 = v16;
          if (U32Attribute)
          {
            v12 = 0;
          }

          else
          {
            v12 = v17 == 1;
          }

          if (v12)
          {
            U32Attribute = LDOObject_SetListU32Attribute(a1, v6, v16, v15);
          }

          if (v11)
          {
            OOCAllocator_Free(*(a1 + 8), v11);
          }

          goto LABEL_38;
        case 4:
          LODWORD(v16) = 0;
          v17 = 0;
          U32Attribute = LDOObject_GetBoolAttribute(a2, v6, &v16, &v17);
          if (U32Attribute || v16 != 1)
          {
            goto LABEL_38;
          }

          LDOObject_SetBoolAttribute(a1, v6, v17);
          goto LABEL_37;
      }
    }
  }

  return 0;
}

uint64_t LDOObject_GetBoolAttribute(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v9 = xmmword_1C37B1450;
  v10 = 0;
  v8 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v8, &v9);
  if (!result)
  {
    *a3 = 0;
    if (v8)
    {
      v7 = v9 == 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = DWORD1(v9) == 1;
    }
  }

  return result;
}

uint64_t __LDOObject_GetAttributeMapItem(uint64_t *a1, char *a2, void *a3, uint64_t a4)
{
  v15 = 0;
  v16 = 0uLL;
  v17 = 0;
  result = PNEW_LDOString_ConFromCPtr(a1[1], a1[1], a2, &v15);
  if (!result)
  {
    v8 = a1[5] - a1[4];
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 5;
      while (1)
      {
        v11 = v10 >> 1;
        v12 = LDOString_CompareTo(v15, *(a1[4] + 32 * v9 + 32 * (v10 >> 1)));
        if (v12 < 1)
        {
          if ((v12 & 0x80000000) == 0)
          {
            v14 = a1[4] + 32 * v11 + 32 * v9;
            v13 = *v14;
            v16 = *(v14 + 8);
            v17 = *(v14 + 24);
            LODWORD(v11) = 1;
            goto LABEL_11;
          }
        }

        else
        {
          v9 += v11 + 1;
          v11 = v10 - (v11 + 1);
        }

        v10 = v11;
        if (!v11)
        {
          goto LABEL_10;
        }
      }
    }

    LODWORD(v11) = 0;
LABEL_10:
    v13 = 0;
LABEL_11:
    result = OOC_PlacementDeleteObject(a1[1], v15);
    if (!result)
    {
      result = 0;
      if (v11)
      {
        *a3 = v13;
        *a4 = v16;
        *(a4 + 16) = v17;
      }

      else
      {
        *a3 = 0;
      }
    }
  }

  return result;
}

uint64_t LDOObject_GetCategory(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    *a2 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v2);
  }

  return 0;
}

uint64_t LDOObject_GetListU32Attribute(uint64_t *a1, char *a2, _DWORD *a3, uint64_t *a4, _DWORD *a5)
{
  v17 = 0;
  v18 = xmmword_1C37B1468;
  v19 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v17, &v18);
  v20 = result;
  if (!result)
  {
    *a3 = 0;
    if (v17)
    {
      if (v18 == 3)
      {
        *a3 = 1;
        v10 = v19;
        v11 = *(v19 + 16) - *(v19 + 8);
        *a5 = v11 >> 2;
        if ((v11 >> 2))
        {
          v12 = OOCAllocator_Calloc(a1[1], (v11 >> 2), 4, &v20);
          *a4 = v12;
          result = v20;
          if (!v20)
          {
            v13 = *(v10 + 8);
            v14 = *(v10 + 16);
            if (v13 >= v14)
            {
              return 0;
            }

            else
            {
              v15 = 0;
              do
              {
                v16 = *v13++;
                *(v12 + 4 * v15++) = v16;
              }

              while (v13 < v14);
              return v20;
            }
          }
        }

        else
        {
          result = 0;
          *a4 = 0;
        }
      }
    }
  }

  return result;
}

uint64_t LDOObject_GetS32Attribute(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v9 = xmmword_1C37B1480;
  v10 = 0;
  v8 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v8, &v9);
  if (!result)
  {
    *a3 = 0;
    if (v8)
    {
      v7 = v9 == 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = DWORD2(v9);
    }
  }

  return result;
}

uint64_t LDOObject_GetStringAttribute(uint64_t *a1, char *a2, _DWORD *a3, uint64_t *a4)
{
  v10 = xmmword_1C37B1498;
  v11 = 0;
  v9 = 0;
  AttributeMapItem = __LDOObject_GetAttributeMapItem(a1, a2, &v9, &v10);
  if (!AttributeMapItem)
  {
    *a3 = 0;
    if (v9)
    {
      v7 = v10 == 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v11);
    }
  }

  return AttributeMapItem;
}

uint64_t LDOObject_GetType(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    *a2 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v2);
  }

  return 0;
}

uint64_t LDOObject_GetU32Attribute(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v8, v9);
  if (!result)
  {
    *a3 = 0;
    if (v8)
    {
      v7 = LODWORD(v9[0]) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = HIDWORD(v9[0]);
    }
  }

  return result;
}

uint64_t LDOObject_RemoveAttribute(uint64_t a1, char *a2)
{
  v21 = 0;
  v19 = xmmword_1C37B1438;
  v20 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v21, &v19);
  v22 = result;
  v4 = v21;
  if (result || !v21)
  {
    goto LABEL_11;
  }

  v22 = __LDOObject_DeallocateValue(a1, &v19);
  if (v22 || (v5 = *(a1 + 40) - *(a1 + 32)) == 0)
  {
LABEL_12:
    OOC_PlacementDeleteObject(*(a1 + 8), v4);
    return v22;
  }

  v6 = 0;
  v7 = v5 >> 5;
  while (1)
  {
    v8 = v7 >> 1;
    v9 = LDOString_CompareTo(v4, *(*(a1 + 32) + 32 * v6 + 32 * (v7 >> 1)));
    if (v9 < 1)
    {
      break;
    }

    v6 += v8 + 1;
    v8 = v7 - (v8 + 1);
LABEL_9:
    v7 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  v10 = v8 + v6;
  v11 = *(a1 + 32);
  v12 = (*(a1 + 40) - v11) >> 5;
  memmove((v11 + 32 * v10), (v11 + 32 * v10 + 32), 32 * (~v10 + v12));
  v13 = *(a1 + 40) - 32;
  *(a1 + 40) = v13;
  v14 = v12 - 1;
  if (*(a1 + 24) < (3 * (v12 - 1)))
  {
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 32);
  v16 = 2 * v14;
  if (v16 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = v16;
  }

  v18 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 32), 32 * v17, &v22);
  *(a1 + 32) = v18;
  result = v22;
  if (!v22)
  {
    *(a1 + 24) = v17;
    *(a1 + 40) = v18 + ((v13 - v15) & 0x1FFFFFFFE0);
  }

LABEL_11:
  if (v4)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t LDOObject_RemoveAttributes(uint64_t *a1)
{
  v17 = 0;
  v1 = a1[4];
  if (v1 >= a1[5])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *v1;
    v7 = v5 - v4;
    v8 = ((v5 - v4) >> 3) + 1;
    if (v8 <= v3)
    {
      v12 = v5;
    }

    else
    {
      v9 = 2 * v3;
      if (2 * v3 >= v3 + 1000000)
      {
        v9 = v3 + 1000000;
      }

      if (v9 <= v8)
      {
        v9 = v8;
      }

      if (v9 <= 8)
      {
        v3 = 8;
      }

      else
      {
        v3 = v9;
      }

      v10 = OOCAllocator_Realloc(a1[1], v4, 8 * v3, &v17);
      v4 = v10;
      v11 = v17;
      if (v17)
      {
        goto LABEL_21;
      }

      v12 = (v10 + (v7 & 0x7FFFFFFF8));
      v5 = v12;
    }

    *v5++ = v6;
    v1 += 4;
  }

  while (v1 < a1[5]);
  v11 = v17;
  if (v17)
  {
    goto LABEL_21;
  }

  if (v4 >= v5)
  {
LABEL_20:
    v11 = 0;
LABEL_21:
    if (!v4)
    {
      return v11;
    }

    goto LABEL_22;
  }

  v13 = v4 - 8;
  while (1)
  {
    v14 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*(v13 + 8));
    v15 = LDOObject_RemoveAttribute(a1, v14);
    if (v15)
    {
      break;
    }

    v13 += 8;
    if (v13 >= v12)
    {
      goto LABEL_20;
    }
  }

  v11 = v15;
  if (v4)
  {
LABEL_22:
    OOCAllocator_Free(a1[1], v4);
  }

  return v11;
}

double LDOObject_SetBoolAttribute(uint64_t a1, char *a2, int a3)
{
  v27 = xmmword_1C37B1450;
  v28 = 0;
  v26 = 0;
  v5 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v26, &v27);
  v29 = v5;
  if (!v5)
  {
    DWORD1(v27) = a3 == 1;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
    v10 = v8 - v7;
    if (v8 != v7)
    {
      v11 = v10 >> 5;
      while (1)
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v26, *(*(a1 + 32) + 32 * v9 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v23 = *(a1 + 32) + 32 * (v9 + v12);
            result = *&v27;
            *(v23 + 8) = v27;
            *(v23 + 24) = v28;
            return result;
          }
        }

        else
        {
          v9 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
        if (!v12)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = v8 - v7;
          break;
        }
      }
    }

    v14 = v26;
    v24 = v27;
    v25 = v28;
    v15 = v10 >> 5;
    if (*(a1 + 24) == (v10 >> 5) && v15 != -1)
    {
      v16 = 2 * v15;
      if (2 * v15 >= (v15 + 1000000))
      {
        v16 = v15 + 1000000;
      }

      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 8)
      {
        v18 = 8;
      }

      else
      {
        v18 = v17;
      }

      v7 = OOCAllocator_Realloc(*(a1 + 8), v7, 32 * v18, &v29);
      *(a1 + 32) = v7;
      v5 = v29;
      if (v29)
      {
        goto LABEL_25;
      }

      *(a1 + 24) = v18;
      v8 = v7 + (v10 & 0x1FFFFFFFE0);
    }

    *(a1 + 40) = v8 + 32;
    v19 = (v10 >> 5);
    v20 = v19 > v9;
    v21 = v19 - v9;
    if (v20)
    {
      memmove((v7 + 32 * v9 + 32), (v7 + 32 * v9), 32 * v21);
      v7 = *(a1 + 32);
      v5 = v29;
    }

    else
    {
      v5 = 0;
    }

    v22 = v7 + 32 * v9;
    *v22 = v14;
    result = *&v24;
    *(v22 + 24) = v25;
    *(v22 + 8) = v24;
  }

LABEL_25:
  if (v5)
  {
    if (v26)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v26);
    }
  }

  return result;
}

uint64_t __LDOObject_EnsureKeyWithEmptyValue(uint64_t *a1, char *a2, void *a3, int *a4)
{
  result = __LDOObject_GetAttributeMapItem(a1, a2, a3, a4);
  if (!result)
  {
    if (*a3)
    {

      return __LDOObject_DeallocateValue(a1, a4);
    }

    else
    {
      v9 = a1[1];

      return PNEW_LDOString_ConFromCPtr(v9, v9, a2, a3);
    }
  }

  return result;
}

uint64_t LDOObject_SetCategory(uint64_t a1, char *a2)
{
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (v4)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v4);
    if (result)
    {
      return result;
    }

    *v5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(a1 + 8);

  return PNEW_LDOString_ConFromCPtr(v7, v7, a2, v5);
}

uint64_t LDOObject_SetListU32Attribute(uint64_t a1, char *a2, const void *a3, unsigned int a4)
{
  v34 = xmmword_1C37B1468;
  v35 = 0;
  v33 = 0;
  v7 = 0;
  v36 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v33, &v34);
  if (v36 || (v8 = OOCAllocator_Calloc(*(a1 + 8), 1, 24, &v36), v7 = v8, v36))
  {
LABEL_3:
    if (v33)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v33);
    }

    if (v7)
    {
      OOCAllocator_Free(*(a1 + 8), v7);
    }

    return v36;
  }

  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  if (a4)
  {
    if (a4 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = a4;
    }

    v11 = OOCAllocator_Realloc(*(a1 + 8), 0, 4 * v10, &v36);
    *(v7 + 8) = v11;
    if (v36)
    {
      goto LABEL_3;
    }

    *v7 = v10;
    *(v7 + 16) = v11;
    memcpy(v11, a3, 4 * a4);
    *(v7 + 16) += 4 * a4;
  }

  v35 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = 0;
  v15 = v13 - v12;
  if (v13 != v12)
  {
    v16 = v15 >> 5;
    while (1)
    {
      v17 = v16 >> 1;
      v18 = LDOString_CompareTo(v33, *(*(a1 + 32) + 32 * v14 + 32 * (v16 >> 1)));
      if (v18 < 1)
      {
        if ((v18 & 0x80000000) == 0)
        {
          v30 = *(a1 + 32) + 32 * (v14 + v17);
          *(v30 + 8) = v34;
          *(v30 + 24) = v35;
          goto LABEL_40;
        }
      }

      else
      {
        v14 += v17 + 1;
        v17 = v16 - (v17 + 1);
      }

      v16 = v17;
      if (!v17)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = v13 - v12;
        break;
      }
    }
  }

  v19 = v33;
  v31 = v34;
  v32 = v35;
  v20 = v15 >> 5;
  if (*(a1 + 24) == (v15 >> 5) && v20 != -1)
  {
    v22 = 2 * v20;
    if (2 * v20 >= (v20 + 1000000))
    {
      v22 = v20 + 1000000;
    }

    if (v22 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v22;
    }

    if (v23 <= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = v23;
    }

    v25 = OOCAllocator_Realloc(*(a1 + 8), v12, 32 * v24, &v36);
    *(a1 + 32) = v25;
    if (v36)
    {
      goto LABEL_3;
    }

    v12 = v25;
    *(a1 + 24) = v24;
    v13 = v25 + (v15 & 0x1FFFFFFFE0);
  }

  *(a1 + 40) = v13 + 32;
  v26 = (v15 >> 5);
  v27 = v26 > v14;
  v28 = v26 - v14;
  if (v27)
  {
    memmove((v12 + 32 * v14 + 32), (v12 + 32 * v14), 32 * v28);
    v12 = *(a1 + 32);
  }

  v29 = v12 + 32 * v14;
  *v29 = v19;
  *(v29 + 24) = v32;
  *(v29 + 8) = v31;
LABEL_40:
  if (v36)
  {
    goto LABEL_3;
  }

  return v36;
}

double LDOObject_SetS32Attribute(uint64_t a1, char *a2, int a3)
{
  v27 = xmmword_1C37B1480;
  v28 = 0;
  v26 = 0;
  v5 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v26, &v27);
  v29 = v5;
  if (!v5)
  {
    DWORD2(v27) = a3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
    v10 = v8 - v7;
    if (v8 != v7)
    {
      v11 = v10 >> 5;
      while (1)
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v26, *(*(a1 + 32) + 32 * v9 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v23 = *(a1 + 32) + 32 * (v9 + v12);
            result = *&v27;
            *(v23 + 8) = v27;
            *(v23 + 24) = v28;
            return result;
          }
        }

        else
        {
          v9 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
        if (!v12)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = v8 - v7;
          break;
        }
      }
    }

    v14 = v26;
    v24 = v27;
    v25 = v28;
    v15 = v10 >> 5;
    if (*(a1 + 24) == (v10 >> 5) && v15 != -1)
    {
      v16 = 2 * v15;
      if (2 * v15 >= (v15 + 1000000))
      {
        v16 = v15 + 1000000;
      }

      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 8)
      {
        v18 = 8;
      }

      else
      {
        v18 = v17;
      }

      v7 = OOCAllocator_Realloc(*(a1 + 8), v7, 32 * v18, &v29);
      *(a1 + 32) = v7;
      v5 = v29;
      if (v29)
      {
        goto LABEL_25;
      }

      *(a1 + 24) = v18;
      v8 = v7 + (v10 & 0x1FFFFFFFE0);
    }

    *(a1 + 40) = v8 + 32;
    v19 = (v10 >> 5);
    v20 = v19 > v9;
    v21 = v19 - v9;
    if (v20)
    {
      memmove((v7 + 32 * v9 + 32), (v7 + 32 * v9), 32 * v21);
      v7 = *(a1 + 32);
      v5 = v29;
    }

    else
    {
      v5 = 0;
    }

    v22 = v7 + 32 * v9;
    *v22 = v14;
    result = *&v24;
    *(v22 + 24) = v25;
    *(v22 + 8) = v24;
  }

LABEL_25:
  if (v5)
  {
    if (v26)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v26);
    }
  }

  return result;
}

uint64_t LDOObject_SetStringAttribute(uint64_t a1, char *a2, char *a3)
{
  v32 = 0;
  v30 = xmmword_1C37B1498;
  v31 = 0;
  v29 = 0;
  v33 = PNEW_LDOString_ConFromCPtr(*(a1 + 8), *(a1 + 8), a3, &v32);
  if (!v33)
  {
    v33 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v29, &v30);
    if (!v33)
    {
      v31 = v32;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 0;
      v9 = v7 - v6;
      if (v7 != v6)
      {
        v10 = v9 >> 5;
        while (1)
        {
          v11 = v10 >> 1;
          v12 = LDOString_CompareTo(v29, *(*(a1 + 32) + 32 * v8 + 32 * (v10 >> 1)));
          if (v12 < 1)
          {
            if ((v12 & 0x80000000) == 0)
            {
              v26 = *(a1 + 32) + 32 * (v8 + v11);
              *(v26 + 8) = v30;
              *(v26 + 24) = v31;
              return v33;
            }
          }

          else
          {
            v8 += v11 + 1;
            v11 = v10 - (v11 + 1);
          }

          v10 = v11;
          if (!v11)
          {
            v6 = *(a1 + 32);
            v7 = *(a1 + 40);
            v9 = v7 - v6;
            break;
          }
        }
      }

      v13 = v29;
      v27 = v30;
      v28 = v31;
      v14 = v9 >> 5;
      if (*(a1 + 24) == (v9 >> 5) && v14 != -1)
      {
        v16 = 2 * v14;
        if (2 * v14 >= (v14 + 1000000))
        {
          v16 = v14 + 1000000;
        }

        if (v16 <= v14 + 1)
        {
          v17 = v14 + 1;
        }

        else
        {
          v17 = v16;
        }

        if (v17 <= 8)
        {
          v18 = 8;
        }

        else
        {
          v18 = v17;
        }

        v19 = OOCAllocator_Realloc(*(a1 + 8), v6, 32 * v18, &v33);
        *(a1 + 32) = v19;
        if (v33)
        {
          goto LABEL_3;
        }

        v6 = v19;
        *(a1 + 24) = v18;
        v7 = v19 + (v9 & 0x1FFFFFFFE0);
      }

      *(a1 + 40) = v7 + 32;
      v20 = (v9 >> 5);
      v21 = (v6 + 32 * v8);
      v22 = v20 > v8;
      v23 = v20 - v8;
      if (!v22)
      {
        *v21 = v13;
        *(v21 + 3) = v28;
        *(v21 + 8) = v27;
        return v33;
      }

      memmove(v21 + 32, v21, 32 * v23);
      v24 = v33;
      v25 = *(a1 + 32) + 32 * v8;
      *v25 = v13;
      *(v25 + 24) = v28;
      *(v25 + 8) = v27;
      if (!v24)
      {
        return v33;
      }
    }
  }

LABEL_3:
  if (v29)
  {
    OOC_PlacementDeleteObject(*(a1 + 8), v29);
  }

  if (v32)
  {
    OOC_PlacementDeleteObject(*(a1 + 8), v32);
  }

  return v33;
}

uint64_t LDOObject_SetType(uint64_t a1, char *a2)
{
  v5 = (a1 + 56);
  v4 = *(a1 + 56);
  if (v4)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v4);
    if (result)
    {
      return result;
    }

    *v5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(a1 + 8);

  return PNEW_LDOString_ConFromCPtr(v7, v7, a2, v5);
}

double LDOObject_SetU32Attribute(uint64_t a1, char *a2, int a3)
{
  v28 = 0uLL;
  v29 = 0;
  v27 = 0;
  v5 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v27, &v28);
  v30 = v5;
  if (!v5)
  {
    DWORD1(v28) = a3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
    v10 = v8 - v7;
    if (v8 != v7)
    {
      v11 = v10 >> 5;
      while (1)
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v27, *(*(a1 + 32) + 32 * v9 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v24 = *(a1 + 32) + 32 * (v9 + v12);
            result = *&v28;
            *(v24 + 8) = v28;
            *(v24 + 24) = v29;
            return result;
          }
        }

        else
        {
          v9 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
        if (!v12)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = v8 - v7;
          break;
        }
      }
    }

    v14 = v27;
    v25 = v28;
    v26 = v29;
    v15 = v10 >> 5;
    if (*(a1 + 24) == (v10 >> 5) && v15 != -1)
    {
      v17 = 2 * v15;
      if (2 * v15 >= (v15 + 1000000))
      {
        v17 = v15 + 1000000;
      }

      if (v17 <= v15 + 1)
      {
        v18 = v15 + 1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v18;
      }

      v7 = OOCAllocator_Realloc(*(a1 + 8), v7, 32 * v19, &v30);
      *(a1 + 32) = v7;
      v5 = v30;
      if (v30)
      {
        goto LABEL_27;
      }

      *(a1 + 24) = v19;
      v8 = v7 + (v10 & 0x1FFFFFFFE0);
    }

    *(a1 + 40) = v8 + 32;
    v20 = (v10 >> 5);
    v21 = v20 > v9;
    v22 = v20 - v9;
    if (v21)
    {
      memmove((v7 + 32 * v9 + 32), (v7 + 32 * v9), 32 * v22);
      v7 = *(a1 + 32);
      v5 = v30;
    }

    else
    {
      v5 = 0;
    }

    v23 = v7 + 32 * v9;
    *v23 = v14;
    result = *&v25;
    *(v23 + 24) = v26;
    *(v23 + 8) = v25;
  }

LABEL_27:
  if (v5)
  {
    if (v27)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v27);
    }
  }

  return result;
}

uint64_t LDOObject_ToString(uint64_t a1, uint64_t *a2)
{
  v4 = PNEW_LDOString_Con(*(a1 + 8), *(a1 + 8), a2);
  if (v4)
  {
    return v4;
  }

  v5 = *a2;
  appended = LDOString_AppendPrefixU32Suffix(v5, "  ID: ", *(a1 + 16), "\n");
  if (!appended)
  {
    appended = LDOString_AppendPrefixStringSuffix(v5, "  Category: ", *(a1 + 48), "\n");
    if (!appended)
    {
      appended = LDOString_AppendPrefixStringSuffix(v5, "  Type: ", *(a1 + 56), "\n");
      if (!appended)
      {
        appended = LHString_Append(v5, "  Attributes:\n");
        if (!appended)
        {
          v9 = *(a1 + 32);
          if (!v9 || v9 >= *(a1 + 40))
          {
            return 0;
          }

          while (1)
          {
            v10 = *(v9 + 8);
            v11 = *(v9 + 12);
            v12 = *(v9 + 16);
            v13 = *(v9 + 24);
            appended = LDOString_AppendPrefixStringSuffix(v5, "    ", *v9, " = ");
            if (appended)
            {
              break;
            }

            if (v10 <= 1)
            {
              if (v10)
              {
                if (v10 != 1)
                {
LABEL_28:
                  v15 = v5;
                  v16 = "UNKNOWN TYPE OF ATTRIBUTE\n";
LABEL_30:
                  v17 = LHString_Append(v15, v16);
                  goto LABEL_31;
                }

                v17 = LDOString_AppendPrefixS32Suffix(v5, 0, v12, "\n");
              }

              else
              {
                v17 = LDOString_AppendPrefixU32Suffix(v5, 0, v11, "\n");
              }
            }

            else
            {
              switch(v10)
              {
                case 2:
                  v17 = LDOString_AppendPrefixStringSuffix(v5, 0, v13, "\n");
                  break;
                case 3:
                  appended = LHString_Append(v5, "[");
                  if (appended)
                  {
                    goto LABEL_6;
                  }

                  for (i = *(v13 + 8); i < *(v13 + 16); ++i)
                  {
                    appended = LDOString_AppendPrefixU32Suffix(v5, 0, *i, ", ");
                    if (appended)
                    {
                      goto LABEL_6;
                    }
                  }

                  v15 = v5;
                  v16 = "]\n";
                  goto LABEL_30;
                case 4:
                  v17 = LDOString_AppendPrefixBoolSuffix(v5, 0, v11 == 1, "\n");
                  break;
                default:
                  goto LABEL_28;
              }
            }

LABEL_31:
            v4 = v17;
            if (v17)
            {
              goto LABEL_7;
            }

            v9 += 32;
            if (v9 >= *(a1 + 40))
            {
              return v4;
            }
          }
        }
      }
    }
  }

LABEL_6:
  v4 = appended;
LABEL_7:
  if (v5)
  {
    v7 = LDOString_BorrowAllocator(v5);
    OOC_PlacementDeleteObject(v7, v5);
  }

  return v4;
}

uint64_t PNEW_LDOObject_Con(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 64, &v8);
  result = v8;
  if (!v8)
  {
    result = Object_Con(v6);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOObject;
      *(v6 + 8) = a2;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 16) = v6;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t lua_checkstack(void *a1, int a2)
{
  v8 = a2;
  v2 = a1[4];
  v3 = a1[2];
  v4 = a2;
  if (a2 >= (a1[6] - v3) >> 4)
  {
    if ((((v3 - a1[7]) >> 4) + 5) > 1000000 - a2 || luaD_rawrunprotected(a1, growstack, &v8))
    {
      return 0;
    }

    v3 = a1[2];
    v4 = v8;
  }

  v5 = v3 + 16 * v4;
  if (*(v2 + 8) < v5)
  {
    *(v2 + 8) = v5;
  }

  return 1;
}

__n128 lua_xmove(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 != a2)
  {
    *(a1 + 16) -= 16 * a3;
    if (a3 >= 1)
    {
      v3 = 0;
      v4 = *(a2 + 16);
      do
      {
        result = *(*(a1 + 16) + v3);
        *v4 = result;
        v4 = (*(a2 + 16) + 16);
        *(a2 + 16) = v4;
        v3 += 16;
      }

      while (16 * a3 != v3);
    }
  }

  return result;
}

void *lua_version(uint64_t a1)
{
  if (a1)
  {
    return *(*(a1 + 24) + 232);
  }

  else
  {
    return &lua_version_version;
  }
}

uint64_t lua_absindex(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0xFFF0B9D8)
  {
    return ((*(a1 + 16) - **(a1 + 32)) >> 4) + a2;
  }

  return a2;
}

uint64_t lua_settop(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = *(result + 16) + 16 * a2 + 16;
  }

  else
  {
    v2 = **(result + 32);
    v3 = v2 + 16 * a2 + 16;
    v4 = *(result + 16);
    if (v4 < v3)
    {
      v5 = 0;
      v6 = v2 + 16 * a2 + 16;
      if (v6 <= v4 + 16)
      {
        v6 = v4 + 16;
      }

      v7 = (v6 + ~v4) >> 4;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x1FFFFFFFFFFFFFFCLL;
      v10 = (v4 + 40);
      do
      {
        v11 = vdupq_n_s64(v5);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1C378AF00)));
        if (vuzp1_s16(v12, 2).u8[0])
        {
          *(v10 - 8) = 0;
        }

        if (vuzp1_s16(v12, 2).i8[2])
        {
          *(v10 - 4) = 0;
        }

        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1C378AEF0)))).i32[1])
        {
          *v10 = 0;
          v10[4] = 0;
        }

        v5 += 4;
        v10 += 16;
      }

      while (v9 != v5);
    }
  }

  *(result + 16) = v3;
  return result;
}

uint64_t *lua_rotate(void *a1, int a2, int a3)
{
  v4 = a1[2] - 16;
  result = index2addr(a1, a2);
  v6 = v4 - 16 * a3;
  if (a3 < 0)
  {
    v6 = &result[-2 * a3 - 2];
  }

  if (result < v6)
  {
    v7 = result;
    v8 = v6;
    do
    {
      v9 = *v7;
      v10 = v7[1];
      *v7 = *v8;
      v7 += 2;
      *v8 = v9;
      *(v8 + 8) = v10;
      v8 -= 16;
    }

    while (v7 < v8);
  }

  v11 = (v6 + 16);
  if (v11 < v4)
  {
    v12 = v4;
    do
    {
      v13 = *v11;
      v14 = v11[1];
      *v11 = *v12;
      v11 += 2;
      *v12 = v13;
      *(v12 + 8) = v14;
      v12 -= 16;
    }

    while (v11 < v12);
  }

  while (result < v4)
  {
    v15 = *result;
    v16 = result[1];
    *result = *v4;
    result += 2;
    *v4 = v15;
    *(v4 + 8) = v16;
    v4 -= 16;
  }

  return result;
}

uint64_t *index2addr(void *a1, int a2)
{
  v2 = a1[4];
  if (a2 < 1)
  {
    if (a2 >= -1000999)
    {
      return (a1[2] + 16 * a2);
    }

    else if (-1001000 == a2)
    {
      return (a1[3] + 64);
    }

    else
    {
      v4 = *v2;
      result = &luaO_nilobject_;
      if (*(v4 + 2) != 22)
      {
        v5 = *v4;
        v6 = *(v5 + 10);
        v7 = v5 + 16 * (-1001001 - a2) + 32;
        if (-1001000 - a2 <= v6)
        {
          return v7;
        }
      }
    }
  }

  else if (&(*v2)[2 * a2] >= a1[2])
  {
    return &luaO_nilobject_;
  }

  else
  {
    return &(*v2)[2 * a2];
  }

  return result;
}

uint64_t *lua_copy(uint64_t a1, int a2, int a3)
{
  v5 = index2addr(a1, a2);
  result = index2addr(a1, a3);
  *result = *v5;
  if (a3 <= -1001001 && (v5[1] & 0x40) != 0)
  {
    v7 = ***(a1 + 32);
    if ((*(v7 + 9) & 4) != 0)
    {
      v8 = *v5;
      if ((*(*v5 + 9) & 3) != 0)
      {

        return luaC_barrier_(a1, v7, v8);
      }
    }
  }

  return result;
}

__n128 lua_pushvalue(void *a1, int a2)
{
  v3 = a1[2];
  v4 = index2addr(a1, a2);
  result = *v4;
  *v3 = *v4;
  a1[2] += 16;
  return result;
}

uint64_t lua_type(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if (v2 == &luaO_nilobject_)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2[1] & 0xF;
  }
}

uint64_t lua_isnumber(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if (*(v2 + 2) == 3)
  {
    return 1;
  }

  v4 = 0;
  return luaV_tonumber_(v2, &v4);
}

uint64_t lua_rawequal(void *a1, int a2, int a3)
{
  v5 = index2addr(a1, a2);
  v6 = index2addr(a1, a3);
  if (v5 == &luaO_nilobject_ || v6 == &luaO_nilobject_)
  {
    return 0;
  }

  return luaV_equalobj(0, v5, v6);
}

uint64_t lua_compare(void *a1, int a2, int a3, int a4)
{
  v7 = index2addr(a1, a2);
  v8 = index2addr(a1, a3);
  if (v7 == &luaO_nilobject_ || v8 == &luaO_nilobject_)
  {
    return 0;
  }

  switch(a4)
  {
    case 2:

      return luaV_lessequal(a1, v7, v8);
    case 1:

      return luaV_lessthan(a1, v7, v8);
    case 0:

      return luaV_equalobj(a1, v7, v8);
    default:
      return 0;
  }
}

uint64_t lua_stringtonumber(uint64_t a1, char *__s1)
{
  result = luaO_str2num(__s1, *(a1 + 16));
  if (result)
  {
    *(a1 + 16) += 16;
  }

  return result;
}

double lua_tonumberx(void *a1, int a2, int *a3)
{
  v7 = 0.0;
  v4 = index2addr(a1, a2);
  if (*(v4 + 2) == 3)
  {
    v7 = *v4;
    v5 = 1;
  }

  else
  {
    v5 = luaV_tonumber_(v4, &v7);
    if (!v5)
    {
      v7 = 0.0;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v7;
}

uint64_t lua_tointegerx(void *a1, int a2, int *a3)
{
  v7 = 0;
  v4 = index2addr(a1, a2);
  if (*(v4 + 2) == 19)
  {
    v7 = *v4;
    v5 = 1;
  }

  else
  {
    v5 = luaV_tointeger(v4, &v7);
    if (!v5)
    {
      v7 = 0;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v7;
}

uint64_t lua_toBOOLean(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  result = *(v2 + 2);
  if (result)
  {
    return result != 1 || *v2 != 0;
  }

  return result;
}

uint64_t lua_tolstring(void *a1, int a2, void *a3)
{
  v6 = index2addr(a1, a2);
  if ((v6[1] & 0xF) == 3)
  {
    if (*(a1[3] + 24) >= 1)
    {
      luaC_step(a1);
    }

    v7 = index2addr(a1, a2);
    luaO_tostring(a1, v7, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v7 = v6;
    if ((v6[1] & 0xF) != 4)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }

      return result;
    }
  }

  if (a3)
  {
    v15 = *v7;
    if (*(*v7 + 8) == 4)
    {
      v16 = *(v15 + 11);
    }

    else
    {
      v16 = *(v15 + 16);
    }

    *a3 = v16;
  }

  return *v7 + 24;
}

uint64_t lua_rawlen(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  result = 0;
  v4 = v2[1] & 0x3F;
  if (v4 > 6)
  {
    if (v4 == 7)
    {
      return *(*v2 + 24);
    }

    else if (v4 == 20)
    {
      return *(*v2 + 16);
    }
  }

  else if (v4 == 4)
  {
    return *(*v2 + 11);
  }

  else if (v4 == 5)
  {
    return luaH_getn(*v2);
  }

  return result;
}

uint64_t lua_touserdata(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if ((v2[1] & 0xF) == 2)
  {
    return *v2;
  }

  if ((v2[1] & 0xF) == 7)
  {
    return *v2 + 40;
  }

  return 0;
}

uint64_t lua_tothread(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if (*(v2 + 2) == 72)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t lua_topointer(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  result = 0;
  v4 = v2[1] & 0x3F;
  if (v4 <= 6)
  {
    if (v4 != 2 && v4 != 5 && v4 != 6)
    {
      return result;
    }

    return *v2;
  }

  if ((v2[1] & 0x3Fu) > 0x15)
  {
    if (v4 != 22 && v4 != 38)
    {
      return result;
    }

    return *v2;
  }

  if (v4 == 7)
  {
    return *v2 + 40;
  }

  if (v4 == 8)
  {
    return *v2;
  }

  return result;
}

uint64_t lua_pushnil(uint64_t result)
{
  v1 = *(result + 16);
  *(v1 + 8) = 0;
  *(result + 16) = v1 + 16;
  return result;
}

uint64_t lua_pushnumber(uint64_t result, double a2)
{
  v2 = *(result + 16);
  *v2 = a2;
  *(v2 + 8) = 3;
  *(result + 16) += 16;
  return result;
}

uint64_t lua_pushinteger(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *v2 = a2;
  *(v2 + 8) = 19;
  *(result + 16) += 16;
  return result;
}

uint64_t lua_pushlstring(void *a1, char *a2, size_t a3)
{
  if (*(a1[3] + 24) >= 1)
  {
    luaC_step(a1);
  }

  v6 = luaS_newlstr(a1, a2, a3);
  v7 = a1[2];
  *v7 = v6;
  *(v7 + 8) = *(v6 + 8) | 0x40;
  a1[2] += 16;
  return v6 + 24;
}

uint64_t lua_pushstring(void *a1, char *a2)
{
  if (a2)
  {
    if (*(a1[3] + 24) >= 1)
    {
      luaC_step(a1);
    }

    v4 = luaS_new(a1, a2);
    v5 = a1[2];
    *v5 = v4;
    *(v5 + 8) = *(v4 + 8) | 0x40;
    result = v4 + 24;
    v7 = a1[2];
  }

  else
  {
    result = 0;
    v7 = a1[2];
    *(v7 + 8) = 0;
  }

  a1[2] = v7 + 16;
  return result;
}

uint64_t lua_pushvfstring(uint64_t a1, char *a2, uint64_t *a3)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  return luaO_pushvfstring(a1, a2, a3);
}

uint64_t lua_pushfstring(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  return luaO_pushvfstring(a1, a2, &a9);
}

uint64_t lua_pushcclosure(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3)
  {
    if (*(*(result + 24) + 24) >= 1)
    {
      luaC_step(result);
    }

    result = luaF_newCclosure(v4, a3);
    *(result + 24) = a2;
    v6 = a3;
    *(v4 + 16) -= 16 * a3;
    v7 = 16 * a3;
    do
    {
      *(result + v7 + 16) = *(*(v4 + 16) + v7 - 16);
      v7 -= 16;
      --v6;
    }

    while (v6);
    v8 = 102;
    a2 = result;
  }

  else
  {
    v8 = 22;
  }

  v9 = *(v4 + 16);
  *v9 = a2;
  *(v9 + 8) = v8;
  *(v4 + 16) += 16;
  return result;
}

uint64_t lua_pushBOOLean(uint64_t result, int a2)
{
  v2 = *(result + 16);
  *v2 = a2 != 0;
  v2[2] = 1;
  *(result + 16) += 16;
  return result;
}

uint64_t lua_pushlightuserdata(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *v2 = a2;
  *(v2 + 8) = 2;
  *(result + 16) += 16;
  return result;
}

BOOL lua_pushthread(uint64_t a1)
{
  v1 = *(a1 + 16);
  *v1 = a1;
  *(v1 + 8) = 72;
  v2 = *(a1 + 24);
  *(a1 + 16) += 16;
  return *(v2 + 224) == a1;
}

uint64_t lua_getglobal(void *a1, char *a2)
{
  v4 = luaH_getint(*(a1[3] + 64), 2);
  v5 = a1[2];
  v6 = luaS_new(a1, a2);
  *v5 = v6;
  *(v5 + 8) = *(v6 + 8) | 0x40;
  v7 = a1[2];
  a1[2] = v7 + 2;
  luaV_gettable(a1, v4, v7, v7);
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_gettable(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  luaV_gettable(a1, v3, (a1[2] - 16), (a1[2] - 16));
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_getfield(void *a1, int a2, char *a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  v7 = luaS_new(a1, a3);
  *v6 = v7;
  *(v6 + 8) = *(v7 + 8) | 0x40;
  v8 = a1[2];
  a1[2] = v8 + 2;
  luaV_gettable(a1, v5, v8, v8);
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_geti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  *v6 = a3;
  *(v6 + 8) = 19;
  v7 = a1[2];
  a1[2] = v7 + 2;
  luaV_gettable(a1, v5, v7, v7);
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_rawget(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = a1[2];
  *(v4 - 16) = *luaH_get(*v3, (v4 - 16));
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_rawgeti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  *v6 = *luaH_getint(*v5, a3);
  v7 = a1[2];
  a1[2] = v7 + 16;
  return *(v7 + 8) & 0xF;
}

uint64_t lua_rawgetp(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v9[0] = a3;
  v9[1] = 2;
  v6 = a1[2];
  *v6 = *luaH_get(*v5, v9);
  v7 = a1[2];
  a1[2] = v7 + 16;
  return *(v7 + 8) & 0xF;
}

_OWORD *lua_createtable(uint64_t a1, signed int a2, int a3)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  result = luaH_new(a1);
  v7 = *(a1 + 16);
  *v7 = result;
  *(v7 + 8) = 69;
  *(a1 + 16) += 16;
  if (a2 > 0 || a3 >= 1)
  {

    return luaH_resize(a1, result, a2, a3);
  }

  return result;
}

uint64_t lua_getmetatable(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  if ((v3[1] & 0xF) == 7)
  {
    v4 = (*v3 + 16);
  }

  else if ((v3[1] & 0xF) == 5)
  {
    v4 = (*v3 + 40);
  }

  else
  {
    v4 = (a1[3] + 8 * (v3[1] & 0xF) + 440);
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  v6 = a1[2];
  *v6 = v5;
  *(v6 + 8) = 69;
  a1[2] += 16;
  return 1;
}

uint64_t lua_getuservalue(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = a1[2];
  v5 = *v3;
  *v4 = *(*v3 + 32);
  *(v4 + 8) = *(v5 + 10);
  v6 = a1[2];
  a1[2] = v6 + 16;
  return *(v6 + 8) & 0xF;
}

uint64_t *lua_setglobal(void *a1, char *a2)
{
  v4 = luaH_getint(*(a1[3] + 64), 2);
  v5 = a1[2];
  v6 = luaS_new(a1, a2);
  *v5 = v6;
  *(v5 + 8) = *(v6 + 8) | 0x40;
  v7 = a1[2];
  a1[2] = v7 + 2;
  result = luaV_settable(a1, v4, v7, v7 - 16);
  a1[2] -= 32;
  return result;
}

uint64_t *lua_settable(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  result = luaV_settable(a1, v3, (a1[2] - 32), (a1[2] - 16));
  a1[2] -= 32;
  return result;
}

uint64_t *lua_setfield(void *a1, int a2, char *a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  v7 = luaS_new(a1, a3);
  *v6 = v7;
  *(v6 + 8) = *(v7 + 8) | 0x40;
  v8 = a1[2];
  a1[2] = v8 + 2;
  result = luaV_settable(a1, v5, v8, v8 - 16);
  a1[2] -= 32;
  return result;
}

uint64_t *lua_seti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  *v6 = a3;
  *(v6 + 8) = 19;
  v7 = a1[2];
  a1[2] = v7 + 2;
  result = luaV_settable(a1, v5, v7, v7 - 16);
  a1[2] -= 32;
  return result;
}

_OWORD *lua_rawset(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = *v3;
  result = luaH_set(a1, *v3, (a1[2] - 32));
  *result = *(a1[2] - 16);
  *(v4 + 10) = 0;
  v6 = a1[2];
  if ((*(v6 - 8) & 0x40) != 0 && (*(v4 + 9) & 4) != 0 && (*(*(v6 - 16) + 9) & 3) != 0)
  {
    result = luaC_barrierback_(a1, v4);
    v6 = a1[2];
  }

  a1[2] = v6 - 32;
  return result;
}

void lua_rawseti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = *v5;
  luaH_setint(a1, *v5, a3, (a1[2] - 16));
  v7 = a1[2];
  if ((*(v7 - 8) & 0x40) != 0 && (*(v6 + 9) & 4) != 0 && (*(*(v7 - 16) + 9) & 3) != 0)
  {
    luaC_barrierback_(a1, v6);
    v7 = a1[2];
  }

  a1[2] = v7 - 16;
}

_OWORD *lua_rawsetp(void *a1, int a2, uint64_t a3)
{
  v9 = 0;
  v5 = *index2addr(a1, a2);
  v8 = a3;
  LODWORD(v9) = 2;
  result = luaH_set(a1, v5, &v8);
  *result = *(a1[2] - 16);
  v7 = a1[2];
  if ((*(v7 - 8) & 0x40) != 0 && (*(v5 + 9) & 4) != 0 && (*(*(v7 - 16) + 9) & 3) != 0)
  {
    result = luaC_barrierback_(a1, v5);
    v7 = a1[2];
  }

  a1[2] = v7 - 16;
  return result;
}

uint64_t lua_setmetatable(uint64_t *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = v3;
  v5 = a1[2];
  if (*(v5 - 8))
  {
    v6 = *(v5 - 16);
  }

  else
  {
    v6 = 0;
  }

  if ((v3[1] & 0xF) == 7)
  {
    *(*v3 + 16) = v6;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3[1] & 0xF) != 5)
    {
      *(a1[3] + 8 * (v3[1] & 0xF) + 440) = v6;
      goto LABEL_14;
    }

    *(*v3 + 40) = v6;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = *v3;
  if ((*(*v3 + 9) & 4) != 0 && (*(v6 + 9) & 3) != 0)
  {
    luaC_barrier_(a1, v7, v6);
    v7 = *v4;
  }

  luaC_checkfinalizer(a1, v7, v6);
LABEL_14:
  a1[2] -= 16;
  return 1;
}

uint64_t *lua_setuservalue(void *a1, int a2)
{
  result = index2addr(a1, a2);
  v4 = a1[2];
  v5 = *result;
  *(v5 + 32) = *(v4 - 16);
  *(v5 + 10) = *(v4 - 8);
  v6 = a1[2];
  if ((*(v6 - 8) & 0x40) != 0 && (*(*result + 9) & 4) != 0)
  {
    v7 = *(v6 - 16);
    if ((*(v7 + 9) & 3) != 0)
    {
      result = luaC_barrier_(a1, *result, v7);
      v6 = a1[2];
    }
  }

  a1[2] = v6 - 16;
  return result;
}

uint64_t lua_callk(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a1 + 16) + 16 * ~a2);
  if (a5 && !*(a1 + 196))
  {
    *(*(a1 + 32) + 32) = a5;
    *(*(a1 + 32) + 48) = a4;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  result = luaD_call(a1, v7, a3, v8);
  if (a3 == -1)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 16);
    if (*(v10 + 8) < v11)
    {
      *(v10 + 8) = v11;
    }
  }

  return result;
}

uint64_t lua_pcallk(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v11 = index2addr(a1, a4) - *(a1 + 56);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(a1 + 16) + 16 * ~a2);
  v17 = v12;
  v18 = 0;
  if (a6 && !*(a1 + 196))
  {
    v14 = *(a1 + 32);
    *(v14 + 32) = a6;
    *(v14 + 48) = a5;
    *(v14 + 56) = &v12[-*(a1 + 56)];
    *(v14 + 40) = *(a1 + 176);
    *(a1 + 176) = v11;
    *(v14 + 66) |= 0x10u;
    luaD_call(a1, v12, a3, 1);
    result = 0;
    *(v14 + 66) &= ~0x10u;
    *(a1 + 176) = *(v14 + 40);
  }

  else
  {
    LODWORD(v18) = a3;
    result = luaD_pcall(a1, f_call, &v17, &v12[-*(a1 + 56)], v11);
  }

  if (a3 == -1)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 16);
    if (*(v15 + 8) < v16)
    {
      *(v15 + 8) = v16;
    }
  }

  return result;
}

uint64_t lua_load(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = "?";
  }

  luaZ_init(a1, v15, a2, a3);
  v8 = luaD_protectedparser(a1, v15, v7, a5);
  if (!v8)
  {
    v10 = *(*(a1 + 16) - 16);
    if (*(v10 + 10))
    {
      ***(v10 + 32) = *luaH_getint(*(*(a1 + 24) + 64), 2);
      v11 = *(v10 + 32);
      v14 = *v11;
      v12 = v11 + 2;
      v13 = v14;
      if ((*(v14 + 8) & 0x40) != 0 && v13 == v12)
      {
        luaC_upvalbarrier_(a1, *(v10 + 32));
      }
    }
  }

  return v8;
}

uint64_t lua_dump(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  if (*(v4 - 8) == 70)
  {
    return luaU_dump(a1, *(*(v4 - 16) + 24), a2, a3, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t lua_gc(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  result = 0xFFFFFFFFLL;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          result = *(v4 + 204);
          *(v4 + 204) = a3;
          break;
        case 7:
          result = *(v4 + 208);
          if (a3 <= 40)
          {
            v8 = 40;
          }

          else
          {
            v8 = a3;
          }

          *(v4 + 208) = v8;
          break;
        case 9:
          return *(v4 + 87);
      }

      return result;
    }

    if (a2 == 4)
    {
      return (*(v4 + 24) + *(v4 + 16)) & 0x3FF;
    }

    v6 = *(v4 + 87);
    *(v4 + 87) = 1;
    if (a3)
    {
      v7 = *(v4 + 24) + (a3 << 10);
      luaE_setdebt(v4, v7);
      if (*(*(a1 + 24) + 24) >= 1)
      {
        luaC_step(a1);
      }

      *(v4 + 87) = v6;
      if (v7 < 1)
      {
        return 0;
      }
    }

    else
    {
      luaE_setdebt(v4, -2400);
      luaC_step(a1);
      *(v4 + 87) = v6;
    }

    return *(v4 + 85) == 7;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return (*(v4 + 24) + *(v4 + 16)) >> 10;
    }

    luaC_fullgc(a1, 0);
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      luaE_setdebt(v4, 0);
      result = 0;
      *(v4 + 87) = 1;
    }
  }

  else
  {
    result = 0;
    *(v4 + 87) = 0;
  }

  return result;
}

uint64_t lua_next(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  result = luaH_next(a1, *v3, (a1[2] - 16));
  v5 = -16;
  if (result)
  {
    v5 = 16;
  }

  a1[2] += v5;
  return result;
}

uint64_t lua_concat(uint64_t result, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a2 < 2)
  {
    if (!a2)
    {
      v10 = *(result + 16);
      result = luaS_newlstr(result, "", 0);
      *v10 = result;
      *(v10 + 8) = *(result + 8) | 0x40;
      *(v9 + 16) += 16;
    }
  }

  else
  {
    if (*(*(result + 24) + 24) >= 1)
    {
      luaC_step(result);
    }

    return luaV_concat(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t lua_len(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  result = luaV_objlen(a1, a1[2], v3);
  a1[2] += 16;
  return result;
}

uint64_t lua_getallocf(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(*(a1 + 24) + 8);
  }

  return **(a1 + 24);
}

uint64_t lua_newuserdata(void *a1, unint64_t a2)
{
  if (*(a1[3] + 24) >= 1)
  {
    luaC_step(a1);
  }

  v4 = luaS_newudata(a1, a2);
  v5 = a1[2];
  *v5 = v4;
  *(v5 + 8) = 71;
  a1[2] += 16;
  return v4 + 40;
}

__n128 lua_getupvalue(void *a1, int a2, int a3)
{
  v7 = 0;
  v5 = index2addr(a1, a2);
  if (aux_upvalue(v5, a3, &v7, 0, 0))
  {
    result = *v7;
    *a1[2] = *v7;
    a1[2] += 16;
  }

  return result;
}

const char *aux_upvalue(_DWORD *a1, int a2, void *a3, void *a4, void *a5)
{
  if ((a1[2] & 0x3F) != 6)
  {
    if ((a1[2] & 0x3F) == 0x26 && a2 >= 1)
    {
      v5 = *a1;
      if (*(*a1 + 10) >= a2)
      {
        *a3 = v5 + 16 * (a2 - 1) + 32;
        if (a4)
        {
          *a4 = v5;
        }

        return "";
      }
    }

    return 0;
  }

  v7 = (a2 - 1);
  if (a2 < 1)
  {
    return 0;
  }

  v8 = *(*a1 + 24);
  if (*(v8 + 16) < a2)
  {
    return 0;
  }

  v9 = *a1 + 32;
  *a3 = **(v9 + 8 * v7);
  if (a5)
  {
    *a5 = *(v9 + 8 * v7);
  }

  v10 = *(*(v8 + 88) + 16 * v7);
  if (v10)
  {
    return (v10 + 24);
  }

  else
  {
    return "(*no name)";
  }
}

const char *lua_setupvalue(void *a1, int a2, int a3)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = index2addr(a1, a2);
  v6 = aux_upvalue(v5, a3, &v13, &v12, &v11);
  if (v6)
  {
    v7 = a1[2];
    a1[2] = v7 - 16;
    v8 = v12;
    *v13 = *(v7 - 16);
    if (v8)
    {
      v9 = a1[2];
      if ((*(v9 + 8) & 0x40) != 0 && (*(v8 + 9) & 4) != 0 && (*(*v9 + 9) & 3) != 0)
      {
        luaC_barrier_(a1, v8, *v9);
      }
    }

    else if (v11 && ((*v11)[1] & 0x40) != 0 && *v11 == (v11 + 2))
    {
      luaC_upvalbarrier_(a1, v11);
    }
  }

  return v6;
}

uint64_t lua_upvalueid(void *a1, int a2, int a3)
{
  v6 = index2addr(a1, a2);
  if ((v6[1] & 0x3F) == 0x26)
  {
    return *v6 + 16 * a3 + 16;
  }

  if ((v6[1] & 0x3F) == 6)
  {
    return *(*index2addr(a1, a2) + 8 * a3 + 24);
  }

  return 0;
}

uint64_t lua_upvaluejoin(void *a1, int a2, int a3, int a4, int a5)
{
  v9 = *index2addr(a1, a2) + 32;
  v10 = a3 - 1;
  v11 = *index2addr(a1, a4) + 8 * a5;
  result = luaC_upvdeccount(a1, *(v9 + 8 * v10));
  v13 = *(v11 + 24);
  *(v9 + 8 * v10) = v13;
  v14 = *v13;
  ++*(v13 + 8);
  if (v14 != (v13 + 16))
  {
    *(v13 + 24) = 1;
    v13 = *(v9 + 8 * v10);
    v14 = *v13;
  }

  if ((v14[1] & 0x40) != 0 && v14 == (v13 + 16))
  {

    return luaC_upvalbarrier_(a1, v13);
  }

  return result;
}

uint64_t luaL_traceback(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v8 = lua_gettop(a1);
  v9 = 1;
  v10 = 1;
  memset(v69, 0, sizeof(v69));
  do
  {
    v11 = v10;
    v10 = v9;
    v12 = lua_getstack(a2, v9, v69);
    v9 = 2 * v10;
  }

  while (v12);
  while (v11 < v10)
  {
    v19 = (v10 + v11) / 2;
    if (lua_getstack(a2, v19, v69))
    {
      v11 = v19 + 1;
    }

    else
    {
      v10 = (v10 + v11) / 2;
    }
  }

  if (v10 <= 23)
  {
    v20 = 0;
  }

  else
  {
    v20 = 12;
  }

  if (a3)
  {
    lua_pushfstring(a1, "%s\n", v13, v14, v15, v16, v17, v18, a3);
  }

  lua_pushstring(a1, "stack traceback:");
  if (lua_getstack(a2, a4, &v65))
  {
    while (++a4 == v20)
    {
      lua_pushstring(a1, "\n\t...");
      a4 = v10 - 11;
LABEL_30:
      if (!lua_getstack(a2, a4, &v65))
      {
        goto LABEL_33;
      }
    }

    lua_getinfo(a2, "Slnt", &v65);
    lua_pushfstring(a1, "\n\t%s:", v21, v22, v23, v24, v25, v26, v68 + 8);
    if (SDWORD2(v67) >= 1)
    {
      lua_pushfstring(a1, "%d:", v27, v28, v29, v30, v31, v32, DWORD2(v67));
    }

    lua_pushstring(a1, " in ");
    if (pushglobalfuncname(a1, &v65))
    {
      v39 = lua_tolstring(a1, -1, 0);
      lua_pushfstring(a1, "function '%s'", v40, v41, v42, v43, v44, v45, v39);
      lua_rotate(a1, -2, -1);
      lua_settop(a1, 0xFFFFFFFE);
    }

    else if (*v66)
    {
      lua_pushfstring(a1, "%s '%s'", v33, v34, v35, v36, v37, v38, v66);
    }

    else
    {
      v46 = **(&v66 + 1);
      if (v46 == 67)
      {
        v47 = a1;
        v48 = "?";
      }

      else
      {
        if (v46 != 109)
        {
          lua_pushfstring(a1, "function <%s:%d>", v33, v34, v35, v36, v37, v38, v68 + 8);
          goto LABEL_27;
        }

        v47 = a1;
        v48 = "main chunk";
      }

      lua_pushstring(v47, v48);
    }

LABEL_27:
    if (BYTE7(v68[0]))
    {
      lua_pushstring(a1, "\n\t(...tail calls...)");
    }

    v49 = lua_gettop(a1);
    lua_concat(a1, v49 - v8, v50, v51, v52, v53, v54, v55);
    goto LABEL_30;
  }

LABEL_33:
  v56 = lua_gettop(a1);
  result = lua_concat(a1, v56 - v8, v57, v58, v59, v60, v61, v62);
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaL_argerror(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  *__s1 = 0u;
  if (lua_getstack(a1, 0, &v19))
  {
    lua_getinfo(a1, "n", &v19);
    if (!strcmp(__s1[0], "method") && (a2 = (a2 - 1), !a2))
    {
      result = luaL_error(a1, "calling '%s' on bad self (%s)", v10, v11, v12, v13, v14, v15, *(&v19 + 1));
    }

    else
    {
      if (!*(&v19 + 1))
      {
        if (pushglobalfuncname(a1, &v19))
        {
          v16 = lua_tolstring(a1, -1, 0);
        }

        else
        {
          v16 = "?";
        }

        *(&v19 + 1) = v16;
      }

      result = luaL_error(a1, "bad argument #%d to '%s' (%s)", v10, v11, v12, v13, v14, v15, a2);
    }
  }

  else
  {
    result = luaL_error(a1, "bad argument #%d (%s)", v4, v5, v6, v7, v8, v9, a2);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaL_error(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  luaL_where(a1, 1);
  lua_pushvfstring(a1, a2, &a9);
  lua_concat(a1, 2, v11, v12, v13, v14, v15, v16);
  return lua_error(a1);
}

uint64_t pushglobalfuncname(void *a1, uint64_t a2)
{
  v4 = lua_gettop(a1);
  lua_getinfo(a1, "f", a2);
  lua_getfield(a1, -1001000, "_LOADED");
  if (findfield(a1, v4 + 1, 2))
  {
    v5 = lua_tolstring(a1, -1, 0);
    if (*v5 == 95 && v5[1] == 71 && v5[2] == 46)
    {
      lua_pushstring(a1, v5 + 3);
      lua_rotate(a1, -2, -1);
      lua_settop(a1, 0xFFFFFFFE);
    }

    lua_copy(a1, -1, v4 + 1);
    v6 = 1;
    v4 = -3;
  }

  else
  {
    v6 = 0;
  }

  lua_settop(a1, v4);
  return v6;
}

uint64_t luaL_where(void *a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  memset(v11, 0, sizeof(v11));
  if (lua_getstack(a1, a2, v11) && (lua_getinfo(a1, "Sl", v11), SDWORD2(v12) >= 1))
  {
    result = lua_pushfstring(a1, "%s:%d: ", v3, v4, v5, v6, v7, v8, v13 + 8);
  }

  else
  {
    result = lua_pushstring(a1, "");
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaL_newmetatable(void *a1, char *a2)
{
  if (lua_getfield(a1, -1001000, a2))
  {
    return 0;
  }

  lua_settop(a1, 0xFFFFFFFE);
  lua_createtable(a1, 0, 0);
  lua_pushstring(a1, a2);
  lua_setfield(a1, -2, "__name");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -1001000, a2);
  return 1;
}

uint64_t luaL_testudata(void *a1, int a2, char *a3)
{
  v6 = lua_touserdata(a1, a2);
  if (v6)
  {
    lua_getfield(a1, -1001000, a3);
    if (lua_getmetatable(a1, a2))
    {
      v7 = -3;
      while (!lua_rawequal(a1, -1, v7 + 1))
      {
        --v7;
        if (!lua_getmetatable(a1, -1))
        {
          v6 = 0;
          break;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = -3;
    }

    lua_settop(a1, v7);
  }

  return v6;
}

uint64_t luaL_checkudata(void *a1, uint64_t a2, char *a3)
{
  v6 = luaL_testudata(a1, a2, a3);
  if (!v6)
  {
    typeerror(a1, a2, a3);
  }

  return v6;
}

uint64_t typeerror(void *a1, uint64_t a2, uint64_t a3)
{
  if (luaL_getmetafield(a1, a2, "__name") == 4)
  {
    lua_tolstring(a1, -1, 0);
  }

  else if (lua_type(a1, a2) != 2)
  {
    v12 = lua_type(a1, a2);
    lua_typename(a1, v12);
  }

  lua_pushfstring(a1, "%s expected, got %s", v6, v7, v8, v9, v10, v11, a3);

  return luaL_argerror(a1, a2);
}

uint64_t luaL_checkoption(void *a1, uint64_t a2, const char *a3, const char **a4)
{
  if (!a3 || (v7 = a3, lua_type(a1, a2) >= 1))
  {
    v7 = luaL_checklstring(a1, a2, 0);
  }

  v14 = *a4;
  if (*a4)
  {
    v15 = 0;
    v16 = a4 + 1;
    while (strcmp(v14, v7))
    {
      v14 = v16[v15++];
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    return v15;
  }

  else
  {
LABEL_8:
    lua_pushfstring(a1, "invalid option '%s'", v8, v9, v10, v11, v12, v13, v7);

    return luaL_argerror(a1, a2);
  }
}

uint64_t luaL_optlstring(void *a1, uint64_t a2, const char *a3, size_t *a4)
{
  if (lua_type(a1, a2) <= 0)
  {
    if (a4)
    {
      if (a3)
      {
        v9 = strlen(a3);
      }

      else
      {
        v9 = 0;
      }

      *a4 = v9;
    }

    return a3;
  }

  else
  {

    return luaL_checklstring(a1, a2, a4);
  }
}

uint64_t luaL_checklstring(void *a1, uint64_t a2, void *a3)
{
  v5 = lua_tolstring(a1, a2, a3);
  if (!v5)
  {
    v6 = lua_typename(a1, 4);
    typeerror(a1, a2, v6);
  }

  return v5;
}

uint64_t luaL_checkstack(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = lua_checkstack(a1, a2 + 20);
  if (!result)
  {
    if (a3)
    {
      return luaL_error(a1, "stack overflow (%s)", v12, v13, v14, v15, v16, v17, a3);
    }

    else
    {

      return luaL_error(a1, "stack overflow", v12, v13, v14, v15, v16, v17, a9);
    }
  }

  return result;
}

uint64_t luaL_checktype(void *a1, uint64_t a2, int a3)
{
  result = lua_type(a1, a2);
  if (result != a3)
  {
    v7 = lua_typename(a1, a3);

    return typeerror(a1, a2, v7);
  }

  return result;
}

uint64_t luaL_checkany(void *a1, uint64_t a2)
{
  result = lua_type(a1, a2);
  if (result == -1)
  {

    return luaL_argerror(a1, a2);
  }

  return result;
}

double luaL_checknumber(void *a1, uint64_t a2)
{
  v7 = 0;
  v4 = lua_tonumberx(a1, a2, &v7);
  if (!v7)
  {
    v5 = lua_typename(a1, 3);
    typeerror(a1, a2, v5);
  }

  return v4;
}

uint64_t luaL_checkinteger(void *a1, uint64_t a2)
{
  v7 = 0;
  v4 = lua_tointegerx(a1, a2, &v7);
  if (!v7)
  {
    if (lua_isnumber(a1, a2))
    {
      luaL_argerror(a1, a2);
    }

    else
    {
      v5 = lua_typename(a1, 3);
      typeerror(a1, a2, v5);
    }
  }

  return v4;
}

uint64_t luaL_optinteger(void *a1, uint64_t a2, uint64_t a3)
{
  if (lua_type(a1, a2) < 1)
  {
    return a3;
  }

  return luaL_checkinteger(a1, a2);
}

char *luaL_prepbuffsize(const void **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  v9 = a1[2];
  if (&v10[-v9] >= a2)
  {
    v16 = *a1;
  }

  else
  {
    v11 = a1[3];
    v12 = 2 * v10;
    if (v12 - v9 >= a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9 + a2;
    }

    v15 = v13 >= v9;
    v14 = v13 - v9;
    v15 = v15 && v14 >= a2;
    if (!v15)
    {
      luaL_error(a1[3], "buffer too large", a3, a4, a5, a6, a7, a8, v18);
    }

    v16 = lua_newuserdata(v11, v13);
    memcpy(v16, *a1, a1[2]);
    if (*a1 != a1 + 4)
    {
      lua_rotate(v11, -2, -1);
      lua_settop(v11, 0xFFFFFFFE);
    }

    *a1 = v16;
    a1[1] = v13;
    v9 = a1[2];
  }

  return &v16[v9];
}

void *luaL_addlstring(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = luaL_prepbuffsize(a1, a3, a3, a4, a5, a6, a7, a8);
  result = memcpy(v11, a2, a3);
  *(a1 + 16) += a3;
  return result;
}

void *luaL_addstring(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v11 = luaL_prepbuffsize(a1, v4, v5, v6, v7, v8, v9, v10);
  result = memcpy(v11, __s, v4);
  *(a1 + 16) += v4;
  return result;
}

uint64_t luaL_pushresult(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = lua_pushlstring(v2, *a1, *(a1 + 16));
  if (*a1 != a1 + 32)
  {
    lua_rotate(v2, -2, -1);

    return lua_settop(v2, 0xFFFFFFFE);
  }

  return result;
}

uint64_t luaL_addvalue(uint64_t a1)
{
  v2 = *(a1 + 24);
  v14 = 0;
  v9 = lua_tolstring(v2, -1, &v14);
  if (*a1 != a1 + 32)
  {
    lua_rotate(v2, -2, 1);
  }

  v10 = v14;
  v11 = luaL_prepbuffsize(a1, v14, v3, v4, v5, v6, v7, v8);
  memcpy(v11, v9, v10);
  *(a1 + 16) += v10;
  if (*a1 == a1 + 32)
  {
    v12 = -1;
  }

  else
  {
    v12 = -2;
  }

  lua_rotate(v2, v12, -1);
  return lua_settop(v2, 0xFFFFFFFE);
}

double luaL_buffinit(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = a1;
  *a2 = a2 + 32;
  *&result = 0x2000;
  *(a2 + 8) = xmmword_1C37B14C0;
  return result;
}

char *luaL_buffinitsize(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 24) = a1;
  *a2 = a2 + 32;
  *(a2 + 8) = xmmword_1C37B14C0;
  return luaL_prepbuffsize(a2, a3, a3, a4, a5, a6, a7, a8);
}

uint64_t luaL_loadbufferx(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  return lua_load(a1, getS, v6, a4, a5);
}

uint64_t getS(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  if (!v3)
  {
    return 0;
  }

  *a3 = v3;
  a2[1] = 0;
  return *a2;
}

uint64_t luaL_getmetafield(void *a1, int a2, char *a3)
{
  if (!lua_getmetatable(a1, a2))
  {
    return 0;
  }

  lua_pushstring(a1, a3);
  v5 = lua_rawget(a1, -2);
  if (v5)
  {
    v6 = -2;
    lua_rotate(a1, -2, -1);
  }

  else
  {
    v6 = -3;
  }

  lua_settop(a1, v6);
  return v5;
}

uint64_t luaL_callmeta(void *a1, uint64_t a2, char *a3)
{
  v5 = lua_absindex(a1, a2);
  if (!luaL_getmetafield(a1, v5, a3))
  {
    return 0;
  }

  lua_pushvalue(a1, v5);
  v6 = 1;
  lua_callk(a1, 1, 1, 0, 0);
  return v6;
}

uint64_t luaL_len(void *a1, int a2)
{
  v12 = 0;
  lua_len(a1, a2);
  v9 = lua_tointegerx(a1, -1, &v12);
  if (!v12)
  {
    luaL_error(a1, "object length is not an integer", v3, v4, v5, v6, v7, v8, v11);
  }

  lua_settop(a1, 0xFFFFFFFE);
  return v9;
}

uint64_t luaL_tolstring(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (!luaL_callmeta(a1, a2, "__tostring"))
  {
    v7 = lua_type(a1, v4);
    if (v7 > 2)
    {
      if (v7 == 4)
      {
        lua_pushvalue(a1, v4);
        goto LABEL_2;
      }

      if (v7 == 3)
      {
        if (lua_isinteger(a1, v4))
        {
          v29 = lua_tointegerx(a1, v4, 0);
          lua_pushfstring(a1, "%I", v9, v10, v11, v12, v13, v14, v29);
        }

        else
        {
          v30 = lua_tonumberx(a1, v4, 0);
          lua_pushfstring(a1, "%f", v23, v24, v25, v26, v27, v28, v30);
        }

        goto LABEL_2;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = "nil";
LABEL_17:
        lua_pushstring(a1, v8);
        goto LABEL_2;
      }

      if (v7 == 1)
      {
        if (lua_toBOOLean(a1, v4))
        {
          v8 = "true";
        }

        else
        {
          v8 = "false";
        }

        goto LABEL_17;
      }
    }

    v15 = lua_type(a1, v4);
    v16 = lua_typename(a1, v15);
    lua_topointer(a1, v4);
    lua_pushfstring(a1, "%s: %p", v17, v18, v19, v20, v21, v22, v16);
  }

LABEL_2:

  return lua_tolstring(a1, -1, a3);
}

uint64_t luaL_setfuncs(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkstack(a1, a3, "too many upvalues", a4, a5, a6, a7, a8, v14);
  if (*a2)
  {
    do
    {
      if (a3 >= 1)
      {
        v11 = a3;
        do
        {
          lua_pushvalue(a1, -a3);
          --v11;
        }

        while (v11);
      }

      lua_pushcclosure(a1, *(a2 + 8), a3);
      lua_setfield(a1, -2 - a3, *a2);
      v12 = *(a2 + 16);
      a2 += 16;
    }

    while (v12);
  }

  return lua_settop(a1, ~a3);
}

uint64_t luaL_getsubtable(void *a1, uint64_t a2, char *a3)
{
  if (lua_getfield(a1, a2, a3) == 5)
  {
    return 1;
  }

  lua_settop(a1, 0xFFFFFFFE);
  v7 = lua_absindex(a1, a2);
  lua_createtable(a1, 0, 0);
  lua_pushvalue(a1, -1);
  lua_setfield(a1, v7, a3);
  return 0;
}

uint64_t *luaL_requiref(void *a1, char *a2, uint64_t a3, int a4)
{
  luaL_getsubtable(a1, 4293966296, "_LOADED");
  lua_getfield(a1, -1, a2);
  if (!lua_toBOOLean(a1, -1))
  {
    lua_settop(a1, 0xFFFFFFFE);
    lua_pushcclosure(a1, a3, 0);
    lua_pushstring(a1, a2);
    lua_callk(a1, 1, 1, 0, 0);
    lua_pushvalue(a1, -1);
    lua_setfield(a1, -3, a2);
  }

  lua_rotate(a1, -2, -1);
  result = lua_settop(a1, 0xFFFFFFFE);
  if (a4)
  {
    lua_pushvalue(a1, -1);

    return lua_setglobal(a1, a2);
  }

  return result;
}

double *luaL_checkversion_(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = lua_version(a1);
  if (a2 != 136)
  {
    luaL_error(a1, "core and library have incompatible numeric types", v13, v14, v15, v16, v17, v18, v27);
  }

  result = lua_version(0);
  if (v19 == result)
  {
    if (*v19 != a3)
    {
      v28 = *v19;
      return luaL_error(a1, "version mismatch: app. needs %f, Lua core provides %f", v21, v22, v23, v24, v25, v26, *&a3);
    }
  }

  else
  {

    return luaL_error(a1, "multiple Lua VMs detected", v21, v22, v23, v24, v25, v26, a10);
  }

  return result;
}

uint64_t findfield(void *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (lua_type(a1, -1) != 5)
  {
    return 0;
  }

  lua_pushnil(a1);
  if (!lua_next(a1, -2))
  {
    return 0;
  }

  v6 = (a3 - 1);
  while (1)
  {
    if (lua_type(a1, -2) == 4)
    {
      if (lua_rawequal(a1, a2, -1))
      {
        lua_settop(a1, 0xFFFFFFFE);
        return 1;
      }

      if (findfield(a1, a2, v6))
      {
        break;
      }
    }

    lua_settop(a1, 0xFFFFFFFE);
    if (!lua_next(a1, -2))
    {
      return 0;
    }
  }

  lua_rotate(a1, -2, -1);
  lua_settop(a1, 0xFFFFFFFE);
  lua_pushstring(a1, ".");
  v7 = 1;
  lua_rotate(a1, -2, 1);
  lua_concat(a1, 3, v9, v10, v11, v12, v13, v14);
  return v7;
}

uint64_t luaopen_base(void *a1)
{
  lua_rawgeti(a1, -1001000, 2);
  luaL_setfuncs(a1, &base_funcs, 0, v2, v3, v4, v5, v6);
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "_G");
  lua_pushstring(a1, "Lua 5.3");
  lua_setfield(a1, -2, "_VERSION");
  for (i = 0; i != 9; ++i)
  {
    v8 = lua_typename(a1, i);
    lua_pushstring(a1, v8);
  }

  lua_pushcclosure(a1, luaB_type, 9);
  lua_setfield(a1, -2, "type");
  return 1;
}

uint64_t luaB_type(void *a1)
{
  luaL_checkany(a1, 1);
  v2 = lua_type(a1, 1);
  lua_pushvalue(a1, -1001001 - v2);
  return 1;
}

unint64_t luaB_assert(void *a1)
{
  if (lua_toBOOLean(a1, 1))
  {

    return lua_gettop(a1);
  }

  else
  {
    luaL_checkany(a1, 1);
    lua_rotate(a1, 1, -1);
    lua_settop(a1, 0xFFFFFFFE);
    lua_pushstring(a1, "assertion failed!");
    lua_settop(a1, 1u);

    return luaB_error(a1);
  }
}

uint64_t luaB_collectgarbage(void *a1)
{
  v2 = luaB_collectgarbage_optsnum[luaL_checkoption(a1, 1, "collect", luaB_collectgarbage_opts)];
  v3 = luaL_optinteger(a1, 2, 0);
  v4 = lua_gc(a1, v2, v3);
  v5 = v4;
  if (v2 == 9 || v2 == 5)
  {
    lua_pushBOOLean(a1, v4);
  }

  else if (v2 == 3)
  {
    v7 = lua_gc(a1, 4, 0);
    lua_pushnumber(a1, vcvtd_n_f64_s32(v7, 0xAuLL) + v5);
  }

  else
  {
    lua_pushinteger(a1, v4);
  }

  return 1;
}

uint64_t luaB_error(void *a1)
{
  v2 = luaL_optinteger(a1, 2, 1);
  lua_settop(a1, 1u);
  if (lua_isstring(a1, 1) && v2 >= 1)
  {
    luaL_where(a1, v2);
    lua_pushvalue(a1, 1);
    lua_concat(a1, 2, v3, v4, v5, v6, v7, v8);
  }

  return lua_error(a1);
}

uint64_t luaB_getmetatable(void *a1)
{
  luaL_checkany(a1, 1);
  if (lua_getmetatable(a1, 1))
  {
    luaL_getmetafield(a1, 1, "__metatable");
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t luaB_ipairs(void *a1)
{
  if (luaL_getmetafield(a1, 1, "__index"))
  {
    v2 = ipairsaux;
  }

  else
  {
    v2 = ipairsaux_raw;
  }

  luaL_checkany(a1, 1);
  lua_pushcclosure(a1, v2, 0);
  lua_pushvalue(a1, 1);
  lua_pushinteger(a1, 0);
  return 3;
}

uint64_t luaB_load(void *a1)
{
  v9 = 0;
  v2 = lua_tolstring(a1, 1, &v9);
  v3 = luaL_optlstring(a1, 3, "bt", 0);
  v4 = lua_type(a1, 4);
  if (v2)
  {
    v5 = luaL_optlstring(a1, 2, v2, 0);
    if (luaL_loadbufferx(a1, v2, v9, v5, v3))
    {
LABEL_3:
      lua_pushnil(a1);
      lua_rotate(a1, -2, 1);
      return 2;
    }
  }

  else
  {
    v8 = luaL_optlstring(a1, 2, "=(load)", 0);
    luaL_checktype(a1, 1, 6);
    lua_settop(a1, 5u);
    if (lua_load(a1, generic_reader, 0, v8, v3))
    {
      goto LABEL_3;
    }
  }

  if (v4 == -1)
  {
    return 1;
  }

  lua_pushvalue(a1, 4);
  v6 = 1;
  if (!lua_setupvalue(a1, -2, 1))
  {
    lua_settop(a1, 0xFFFFFFFE);
  }

  return v6;
}

uint64_t luaB_next(void *a1)
{
  luaL_checktype(a1, 1, 5);
  v2 = 2;
  lua_settop(a1, 2u);
  if (!lua_next(a1, 1))
  {
    lua_pushnil(a1);
    return 1;
  }

  return v2;
}

uint64_t luaB_pairs(void *a1)
{
  if (luaL_getmetafield(a1, 1, "__pairs"))
  {
    lua_pushvalue(a1, 1);
    lua_callk(a1, 1, 3, 0, 0);
  }

  else
  {
    luaL_checktype(a1, 1, 5);
    lua_pushcclosure(a1, luaB_next, 0);
    lua_pushvalue(a1, 1);
    lua_pushnil(a1);
  }

  return 3;
}

uint64_t luaB_pcall(void *a1)
{
  luaL_checkany(a1, 1);
  lua_pushBOOLean(a1, 1);
  lua_rotate(a1, 1, 1);
  v2 = lua_gettop(a1);
  v3 = lua_pcallk(a1, v2 - 2, -1, 0, 0, finishpcall);

  return finishpcall(a1, v3, 0);
}

uint64_t luaB_rawequal(void *a1)
{
  luaL_checkany(a1, 1);
  luaL_checkany(a1, 2);
  v2 = lua_rawequal(a1, 1, 2);
  lua_pushBOOLean(a1, v2);
  return 1;
}

uint64_t luaB_rawlen(void *a1)
{
  if ((lua_type(a1, 1) & 0xFFFFFFFE) != 4)
  {
    luaL_argerror(a1, 1);
  }

  v2 = lua_rawlen(a1, 1);
  lua_pushinteger(a1, v2);
  return 1;
}

uint64_t luaB_rawget(void *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checkany(a1, 2);
  lua_settop(a1, 2u);
  lua_rawget(a1, 1);
  return 1;
}

uint64_t luaB_rawset(void *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checkany(a1, 2);
  luaL_checkany(a1, 3);
  lua_settop(a1, 3u);
  lua_rawset(a1, 1);
  return 1;
}

uint64_t luaB_select(void *a1)
{
  v2 = lua_gettop(a1);
  if (lua_type(a1, 1) == 4 && *lua_tolstring(a1, 1, 0) == 35)
  {
    lua_pushinteger(a1, v2 - 1);
    return 1;
  }

  else
  {
    v4 = luaL_checkinteger(a1, 1);
    v5 = v2;
    if (v4 < v2)
    {
      v5 = v4;
    }

    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4 + v2;
    }

    if (v6 <= 0)
    {
      luaL_argerror(a1, 1);
    }

    return (v2 - v6);
  }
}

uint64_t luaB_setmetatable(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = lua_type(a1, 2);
  luaL_checktype(a1, 1, 5);
  if (v10 && v10 != 5)
  {
    luaL_argerror(a1, 2);
  }

  if (luaL_getmetafield(a1, 1, "__metatable"))
  {

    return luaL_error(a1, "cannot change a protected metatable", v11, v12, v13, v14, v15, v16, a9);
  }

  else
  {
    lua_settop(a1, 2u);
    lua_setmetatable(a1, 1);
    return 1;
  }
}

uint64_t luaB_tonumber(void *a1)
{
  if (lua_type(a1, 2) > 0)
  {
    v20 = 0;
    v2 = luaL_checkinteger(a1, 2);
    luaL_checktype(a1, 1, 4);
    v3 = luaL_checklstring(a1, 1, &v20);
    if ((v2 - 2) >= 0x23)
    {
      luaL_argerror(a1, 2);
    }

    v4 = strspn(v3, " \f\n\r\t\v");
    v5 = v3[v4];
    if (v5 == 45 || v5 == 43)
    {
      v7 = &v3[v4 + 1];
    }

    else
    {
      v7 = &v3[v4];
    }

    v8 = *v7;
    v9 = MEMORY[0x1E69E9830];
    if (v8 < 0)
    {
      if (!__maskrune(*v7, 0x500uLL))
      {
        goto LABEL_28;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x500) == 0)
    {
      goto LABEL_28;
    }

    v10 = 0;
    while (1)
    {
      v11 = *v7;
      v12 = (v11 - 48) > 9 ? __toupper(v11) - 55 : v11 - 48;
      if (v12 >= v2)
      {
        break;
      }

      v13 = *++v7;
      if (v13 < 0)
      {
        v14 = __maskrune(*v7, 0x500uLL);
      }

      else
      {
        v14 = *(v9 + 4 * v13 + 60) & 0x500;
      }

      v10 = v10 * v2 + v12;
      if (!v14)
      {
        v15 = &v7[strspn(v7, " \f\n\r\t\v")];
        if (v5 == 45)
        {
          v16 = -v10;
        }

        else
        {
          v16 = v10;
        }

        goto LABEL_29;
      }
    }

LABEL_28:
    v16 = 0;
    v15 = 0;
LABEL_29:
    if (v15 == &v3[v20])
    {
      lua_pushinteger(a1, v16);
      return 1;
    }

    goto LABEL_30;
  }

  luaL_checkany(a1, 1);
  if (lua_type(a1, 1) == 3)
  {
    lua_settop(a1, 1u);
  }

  else
  {
    v20 = 0;
    v18 = lua_tolstring(a1, 1, &v20);
    if (!v18 || (v19 = lua_stringtonumber(a1, v18), v19 != v20 + 1))
    {
LABEL_30:
      lua_pushnil(a1);
    }
  }

  return 1;
}

uint64_t luaB_tostring(void *a1)
{
  luaL_checkany(a1, 1);
  luaL_tolstring(a1, 1, 0);
  return 1;
}

uint64_t luaB_xpcall(void *a1)
{
  v2 = lua_gettop(a1);
  luaL_checktype(a1, 2, 6);
  lua_pushBOOLean(a1, 1);
  lua_pushvalue(a1, 1);
  lua_rotate(a1, 3, 2);
  v3 = lua_pcallk(a1, v2 - 2, -1, 2, 2, finishpcall);

  return finishpcall(a1, v3, 2);
}

uint64_t ipairsaux(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  lua_pushinteger(a1, v2 + 1);
  if (lua_geti(a1, 1, v2 + 1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t ipairsaux_raw(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  luaL_checktype(a1, 1, 5);
  lua_pushinteger(a1, v2 + 1);
  if (lua_rawgeti(a1, 1, v2 + 1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t generic_reader(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkstack(a1, 2, "too many nested functions", a4, a5, a6, a7, a8, v17);
  lua_pushvalue(a1, 1);
  lua_callk(a1, 0, 1, 0, 0);
  if (lua_type(a1, -1))
  {
    if (!lua_isstring(a1, -1))
    {
      luaL_error(a1, "reader function must return a string", v10, v11, v12, v13, v14, v15, v18);
    }

    lua_copy(a1, -1, 5);
    lua_settop(a1, 0xFFFFFFFE);

    return lua_tolstring(a1, 5, a3);
  }

  else
  {
    lua_settop(a1, 0xFFFFFFFE);
    *a3 = 0;
    return 0;
  }
}

uint64_t finishpcall(void *a1, unsigned int a2, int a3)
{
  if (a2 < 2)
  {
    return lua_gettop(a1) - a3;
  }

  lua_pushBOOLean(a1, 0);
  lua_pushvalue(a1, -2);
  return 2;
}

int *luaK_nil(int *result, int a2, int a3)
{
  v3 = result[8];
  if (v3 <= result[9])
  {
    return luaK_code(result, ((a3 << 23) - 0x800000) | (a2 << 6) | 4u);
  }

  v4 = *(*result + 56) + 4 * v3;
  v5 = *(v4 - 4);
  if ((v5 & 0x3F) != 4)
  {
    return luaK_code(result, ((a3 << 23) - 0x800000) | (a2 << 6) | 4u);
  }

  v6 = a3 + a2;
  v7 = (v5 >> 6);
  v8 = (v5 >> 23) + v7;
  if ((v7 > a2 || v8 + 1 < a2) && (v7 < a2 || v7 > v6))
  {
    return luaK_code(result, ((a3 << 23) - 0x800000) | (a2 << 6) | 4u);
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  if (v8 >= v6)
  {
    v11 = (v5 >> 23) + (v5 >> 6);
  }

  else
  {
    v11 = v6 + 511;
  }

  *(v4 - 4) = v5 & 0x7FC004 | (v7 << 6) | ((v11 - v7) << 23);
  return result;
}

uint64_t luaK_jump(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = -1;
  v4 = luaK_code(a1, 2147450910);
  luaK_concat(a1, &v4, v2);
  return v4;
}

uint64_t *luaK_concat(uint64_t *result, int *a2, int a3)
{
  if (a3 != -1)
  {
    v3 = *a2;
    if (*a2 == -1)
    {
      *a2 = a3;
    }

    else
    {
      do
      {
        v4 = v3;
        v5 = (*(*(*result + 56) + 4 * v3) >> 14) - 0x1FFFF;
        v3 += v5 + 1;
      }

      while (v5 != -1 && v3 != -1);
      return fixjump(result, v4, a3);
    }
  }

  return result;
}

uint64_t luaK_getlabel(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 36) = v1;
  return v1;
}

uint64_t *luaK_patchlist(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 32) != a3)
  {
    return patchlistaux(a1, a2, a3, 255, a3);
  }

  *(a1 + 36) = a3;
  return luaK_concat(a1, (a1 + 40), a2);
}

uint64_t *patchlistaux(uint64_t *result, int a2, int a3, int a4, int a5)
{
  if (a2 != -1)
  {
    v8 = a2;
    v9 = result;
    do
    {
      v10 = (*(*(*v9 + 56) + 4 * v8) >> 14) - 0x1FFFF;
      if (patchtestreg(v9, v8, a4))
      {
        v11 = a3;
      }

      else
      {
        v11 = a5;
      }

      result = fixjump(v9, v8, v11);
      v12 = v10 == -1 || v8 + v10 == -2;
      v8 += v10 + 1;
    }

    while (!v12);
  }

  return result;
}

uint64_t luaK_patchclose(uint64_t result, int a2, __int16 a3)
{
  if (a2 != -1)
  {
    v3 = *(*result + 56);
    do
    {
      v4 = *(v3 + 4 * a2);
      *(v3 + 4 * a2) = v4 & 0xFFFFC03F | ((a3 << 6) + 64) & 0x3FC0;
      a2 += (v4 >> 14) - 0x1FFFF + 1;
    }

    while (v4 >> 14 != 131070 && a2 != -1);
  }

  return result;
}

uint64_t *fixjump(uint64_t *result, int a2, int a3)
{
  v4 = *(*result + 56);
  v5 = ~a2 + a3;
  if (v5 >= 0)
  {
    v6 = ~a2 + a3;
  }

  else
  {
    v6 = -v5;
  }

  if (v6 >= 0x20000)
  {
    result = luaX_syntaxerror(result[2], "control structure too long");
  }

  *(v4 + 4 * a2) = (*(v4 + 4 * a2) & 0x3FFF | (v5 << 14)) + 2147467264;
  return result;
}

uint64_t luaK_code(uint64_t a1, int a2)
{
  v4 = *a1;
  patchlistaux(a1, *(a1 + 40), *(a1 + 32), 255, *(a1 + 32));
  *(a1 + 40) = -1;
  v5 = *(a1 + 32);
  if (v5 >= *(v4 + 24))
  {
    v6 = luaM_growaux_(*(*(a1 + 16) + 56), *(v4 + 56), (v4 + 24), 4, 0x7FFFFFFF, "opcodes");
    *(v4 + 56) = v6;
    v5 = *(a1 + 32);
  }

  else
  {
    v6 = *(v4 + 56);
  }

  *(v6 + 4 * v5) = a2;
  v7 = *(a1 + 32);
  if (v7 >= *(v4 + 28))
  {
    v8 = luaM_growaux_(*(*(a1 + 16) + 56), *(v4 + 72), (v4 + 28), 4, 0x7FFFFFFF, "opcodes");
    *(v4 + 72) = v8;
    v7 = *(a1 + 32);
  }

  else
  {
    v8 = *(v4 + 72);
  }

  *(v8 + 4 * v7) = *(*(a1 + 16) + 8);
  result = *(a1 + 32);
  *(a1 + 32) = result + 1;
  return result;
}

uint64_t luaK_codek(uint64_t a1, int a2, int a3)
{
  v5 = a2 << 6;
  if (a3 >= 0x40000)
  {
    v7 = luaK_code(a1, v5 | 2u);
    luaK_code(a1, (a3 << 6) | 0x2E);
    return v7;
  }

  else
  {

    return luaK_code(a1, v5 | (a3 << 14) | 1u);
  }
}

uint64_t luaK_checkstack(uint64_t result, int a2)
{
  v2 = *(result + 60) + a2;
  v3 = *result;
  if (v2 > *(*result + 12))
  {
    if (v2 >= 0xFF)
    {
      v4 = result;
      result = luaX_syntaxerror(*(result + 16), "function or expression needs too many registers");
      v3 = *v4;
    }

    *(v3 + 12) = v2;
  }

  return result;
}

uint64_t luaK_reserveregs(uint64_t a1, int a2)
{
  v2 = a2;
  result = luaK_checkstack(a1, a2);
  *(a1 + 60) += v2;
  return result;
}

uint64_t luaK_stringK(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = 0;
  LODWORD(v4) = *(a2 + 8) | 0x40;
  return addk(a1, &v3, &v3);
}

uint64_t addk(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 56);
  v7 = *a1;
  v8 = luaH_set(v6, *(v5 + 80), a2);
  v9 = v8;
  if (*(v8 + 2) != 19 || (v10 = *v8, *(a1 + 44) <= *v8) || (v11 = (*(v7 + 48) + 16 * v10), ((*(a3 + 8) ^ v11[2]) & 0x3F) != 0) || !luaV_equalobj(0, v11, a3))
  {
    v12 = *(v7 + 20);
    v10 = *(a1 + 44);
    *v9 = v10;
    *(v9 + 2) = 19;
    v13 = *(v7 + 20);
    if (v10 >= v13)
    {
      *(v7 + 48) = luaM_growaux_(v6, *(v7 + 48), (v7 + 20), 16, 0x3FFFFFF, "constants");
      v13 = *(v7 + 20);
    }

    v14 = *(v7 + 48);
    if (v12 < v13)
    {
      v15 = 0;
      v16 = v13 - v12;
      v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = (v14 + 16 * v12 + 40);
      do
      {
        v20 = vdupq_n_s64(v15);
        v21 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_1C378AF00)));
        if (vuzp1_s16(v21, *v18.i8).u8[0])
        {
          *(v19 - 8) = 0;
        }

        if (vuzp1_s16(v21, *&v18).i8[2])
        {
          *(v19 - 4) = 0;
        }

        if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_1C378AEF0)))).i32[1])
        {
          *v19 = 0;
          v19[4] = 0;
        }

        v15 += 4;
        v19 += 16;
      }

      while (v17 != v15);
    }

    *(v14 + 16 * v10) = *a3;
    ++*(a1 + 44);
    if ((*(a3 + 8) & 0x40) != 0 && (*(v7 + 9) & 4) != 0 && (*(*a3 + 9) & 3) != 0)
    {
      luaC_barrier_(v6, v7, *a3);
    }
  }

  return v10;
}

uint64_t luaK_intK(uint64_t a1, uint64_t a2)
{
  v4[0] = a2;
  v4[1] = 2;
  v3[0] = a2;
  v3[1] = 19;
  return addk(a1, v4, v3);
}

unsigned __int8 *luaK_setreturns(unsigned __int8 *result, _DWORD *a2, int a3)
{
  v3 = result;
  if (*a2 == 14)
  {
    v4 = *(*result + 56);
    *(v4 + 4 * a2[2]) = (*(v4 + 4 * a2[2]) & 0x7FFFFF | (a3 << 23)) + 0x800000;
    *(v4 + 4 * a2[2]) = *(v4 + 4 * a2[2]) & 0xFFFFC03F | (result[60] << 6);
    result = luaK_checkstack(result, 1);
    ++v3[60];
  }

  else if (*a2 == 13)
  {
    *(*(*result + 56) + 4 * a2[2]) = *(*(*result + 56) + 4 * a2[2]) & 0xFF803FFF | (((((a3 << 14) + 0x4000) >> 14) & 0x1FF) << 14);
  }

  return result;
}

uint64_t luaK_setoneret(uint64_t result, _DWORD *a2)
{
  if (*a2 == 14)
  {
    *(*(*result + 56) + 4 * a2[2]) = *(*(*result + 56) + 4 * a2[2]) & 0x7FFFFF | 0x1000000;
    *a2 = 12;
  }

  else if (*a2 == 13)
  {
    *a2 = 7;
    a2[2] = (*(*(*result + 56) + 4 * a2[2]) >> 6);
  }

  return result;
}

uint64_t luaK_dischargevars(uint64_t result, int *a2)
{
  v3 = *a2;
  if (*a2 > 12)
  {
    if ((v3 - 13) < 2)
    {

      return luaK_setoneret(result, a2);
    }
  }

  else
  {
    if (v3 == 8)
    {
      v6 = 7;
    }

    else
    {
      if (v3 == 9)
      {
        v7 = (a2[2] << 23) | 5;
      }

      else
      {
        if (v3 != 10)
        {
          return result;
        }

        v4 = *(a2 + 4);
        if ((v4 & 0x100) == 0 && *(result + 58) <= v4)
        {
          --*(result + 60);
        }

        if (*(a2 + 11) == 8)
        {
          if (*(result + 58) <= *(a2 + 10))
          {
            --*(result + 60);
          }

          v5 = 7;
        }

        else
        {
          v5 = 6;
        }

        v7 = v5 | (*(a2 + 10) << 23) | (*(a2 + 4) << 14);
      }

      result = luaK_code(result, v7);
      a2[2] = result;
      v6 = 12;
    }

    *a2 = v6;
  }

  return result;
}

double luaK_exp2nextreg(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  if (*a2 == 7)
  {
    v4 = a2[2];
    if ((v4 & 0x100) == 0 && v4 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  luaK_checkstack(a1, 1);
  v5 = *(a1 + 60) + 1;
  *(a1 + 60) = v5;

  return exp2reg(a1, a2, v5 - 1);
}

double exp2reg(int *a1, int *a2, int a3)
{
  discharge2reg(a1, a2, a3);
  if (*a2 == 11)
  {
    luaK_concat(a1, a2 + 4, a2[2]);
  }

  v6 = a2[4];
  v7 = a2[5];
  if (v6 != v7)
  {
    if (need_value(a1, v6) || need_value(a1, v7))
    {
      if (*a2 == 11)
      {
        v8 = -1;
      }

      else
      {
        v8 = luaK_jump(a1);
      }

      a1[9] = a1[8];
      v9 = luaK_code(a1, (a3 << 6) | 0x4003u);
      a1[9] = a1[8];
      v10 = luaK_code(a1, (a3 << 6) | 0x800003u);
      a1[9] = a1[8];
      luaK_concat(a1, a1 + 10, v8);
      v7 = a2[5];
    }

    else
    {
      v9 = -1;
      v10 = -1;
    }

    v11 = a1[8];
    a1[9] = v11;
    patchlistaux(a1, v7, v11, a3, v9);
    patchlistaux(a1, a2[4], v11, a3, v10);
  }

  result = NAN;
  *(a2 + 2) = -1;
  a2[2] = a3;
  *a2 = 7;
  return result;
}

uint64_t luaK_exp2anyreg(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  if (*a2 != 7)
  {
LABEL_4:
    luaK_exp2nextreg(a1, a2);
    v4 = a2 + 2;
    return *v4;
  }

  v4 = a2 + 2;
  if (a2[4] != a2[5])
  {
    if (*v4 >= *(a1 + 58))
    {
      exp2reg(a1, a2, *v4);
      return *v4;
    }

    goto LABEL_4;
  }

  return *v4;
}

uint64_t luaK_exp2anyregup(uint64_t a1, int *a2)
{
  if (*a2 != 9 || a2[4] != a2[5])
  {
    return luaK_exp2anyreg(a1, a2);
  }

  return a1;
}

uint64_t luaK_exp2val(uint64_t result, int *a2)
{
  if (a2[4] == a2[5])
  {
    return luaK_dischargevars(result, a2);
  }

  else
  {
    return luaK_exp2anyreg(result, a2);
  }
}

uint64_t luaK_exp2RK(uint64_t a1, int *a2)
{
  luaK_exp2val(a1, a2);
  v4 = *a2;
  if (*a2 <= 3)
  {
    if ((v4 - 1) < 3 && *(a1 + 44) <= 255)
    {
      if (v4 == 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = *(*(a1 + 16) + 80);
        v13 = 69;
        v5 = &v10;
      }

      else
      {
        v12 = v4 == 2;
        v13 = 1;
        v5 = &v12;
      }

      v6 = addk(a1, &v12, v5);
      a2[2] = v6;
      *a2 = 4;
      return v6 | 0x100u;
    }

    return luaK_exp2anyreg(a1, a2);
  }

  if (v4 == 6)
  {
    v12 = *(a2 + 1);
    v13 = 2;
    v10 = v12;
    v11 = 19;
    v7 = &v10;
LABEL_12:
    v6 = addk(a1, &v12, v7);
    a2[2] = v6;
    *a2 = 4;
    goto LABEL_13;
  }

  if (v4 == 5)
  {
    v8 = *(a2 + 1);
    v13 = 3;
    v12 = v8;
    v7 = &v12;
    goto LABEL_12;
  }

  if (v4 != 4)
  {
    return luaK_exp2anyreg(a1, a2);
  }

  v6 = a2[2];
LABEL_13:
  if (v6 > 255)
  {
    return luaK_exp2anyreg(a1, a2);
  }

  return v6 | 0x100u;
}

void luaK_storevar(uint64_t a1, int *a2, int *a3)
{
  v5 = *a2;
  if (*a2 == 10)
  {
    if (*(a2 + 11) == 8)
    {
      v9 = 10;
    }

    else
    {
      v9 = 8;
    }

    v8 = v9 | (*(a2 + 10) << 6) | (*(a2 + 4) << 23) | (luaK_exp2RK(a1, a3) << 14);
    goto LABEL_16;
  }

  if (v5 == 9)
  {
    v8 = (luaK_exp2anyreg(a1, a3) << 6) | (a2[2] << 23) | 9;
LABEL_16:
    luaK_code(a1, v8);
    goto LABEL_17;
  }

  if (v5 == 8)
  {
    if (*a3 == 7)
    {
      v6 = a3[2];
      if ((v6 & 0x100) == 0 && v6 >= *(a1 + 58))
      {
        --*(a1 + 60);
      }
    }

    v7 = a2[2];

    exp2reg(a1, a3, v7);
    return;
  }

LABEL_17:
  if (*a3 == 7)
  {
    v10 = a3[2];
    if ((v10 & 0x100) == 0 && v10 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }
}

uint64_t luaK_self(uint64_t a1, int *a2, int *a3)
{
  luaK_exp2anyreg(a1, a2);
  v6 = a2[2];
  v7 = *a2 == 7 && (a2[2] & 0x100) == 0;
  if (v7 && v6 >= *(a1 + 58))
  {
    --*(a1 + 60);
  }

  a2[2] = *(a1 + 60);
  *a2 = 7;
  luaK_checkstack(a1, 2);
  *(a1 + 60) += 2;
  v8 = a2[2];
  v9 = luaK_exp2RK(a1, a3);
  result = luaK_code(a1, (v6 << 23) | (v8 << 6) | (v9 << 14) | 0xCu);
  if (*a3 == 7)
  {
    v11 = a3[2];
    if ((v11 & 0x100) == 0 && v11 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  return result;
}

uint64_t *luaK_goiftrue(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  v4 = *a2;
  v5 = (*a2 - 4) < 3 || v4 == 2;
  v6 = -1;
  if (!v5)
  {
    if (v4 == 11)
    {
      invertjump(a1, a2);
      v6 = a2[2];
    }

    else
    {
      v6 = jumponcond(a1, a2, 0);
    }
  }

  luaK_concat(a1, a2 + 5, v6);
  v7 = a2[4];
  *(a1 + 36) = *(a1 + 32);
  result = luaK_concat(a1, (a1 + 40), v7);
  a2[4] = -1;
  return result;
}

uint64_t invertjump(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*(*result + 56) + 4 * v2);
  if (v2 >= 1 && (v4 = *(v3 - 1), luaP_opmodes[v4 & 0x3F] < 0))
  {
    --v3;
  }

  else
  {
    v4 = *v3;
  }

  *v3 = v4 & 0xFFFFC03F | (((v4 & 0x3FC0) == 0) << 6);
  return result;
}

uint64_t jumponcond(uint64_t a1, int *a2, int a3)
{
  if (*a2 == 12 && (v6 = *(*(*a1 + 56) + 4 * a2[2]), (v6 & 0x3F) == 0x1B))
  {
    --*(a1 + 32);
    v7 = v6 >> 23;
    if (a3)
    {
      v8 = 34;
    }

    else
    {
      v8 = 16418;
    }

    v9 = v8 | (v7 << 6);
  }

  else
  {
    discharge2anyreg(a1, a2);
    if (*a2 == 7)
    {
      v10 = a2[2];
      if ((v10 & 0x100) == 0 && v10 >= *(a1 + 58))
      {
        --*(a1 + 60);
      }
    }

    v9 = (a3 << 14) | (a2[2] << 23) | 0x3FE3;
  }

  luaK_code(a1, v9);

  return luaK_jump(a1);
}

uint64_t *luaK_goiffalse(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  v4 = *a2;
  v5 = *a2 == 1 || v4 == 3;
  v6 = -1;
  if (!v5)
  {
    if (v4 == 11)
    {
      v6 = a2[2];
    }

    else
    {
      v6 = jumponcond(a1, a2, 1);
    }
  }

  luaK_concat(a1, a2 + 4, v6);
  v7 = a2[5];
  *(a1 + 36) = *(a1 + 32);
  result = luaK_concat(a1, (a1 + 40), v7);
  a2[5] = -1;
  return result;
}

uint64_t luaK_indexed(uint64_t a1, uint64_t a2, int *a3)
{
  *(a2 + 10) = *(a2 + 8);
  result = luaK_exp2RK(a1, a3);
  *(a2 + 8) = result;
  if (*a2 == 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  *(a2 + 11) = v5;
  *a2 = 10;
  return result;
}

unint64_t luaK_prefix(unint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  v5 = result;
  v11[2] = -1;
  v11[1] = 0;
  v11[0] = 6;
  if (a2 < 2)
  {
    return codeexpval(result, a2 + 25, a3, v11, a4);
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return result;
    }

    return codeexpval(result, a2 + 25, a3, v11, a4);
  }

  luaK_dischargevars(result, a3);
  v6 = *a3;
  if (*a3 <= 3)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        goto LABEL_20;
      }

      if (v6 != 3)
      {
        goto LABEL_22;
      }
    }

    v8 = 2;
LABEL_21:
    *a3 = v8;
    goto LABEL_22;
  }

  if (v6 < 7)
  {
LABEL_20:
    v8 = 3;
    goto LABEL_21;
  }

  switch(v6)
  {
    case 7:
      goto LABEL_11;
    case 11:
      invertjump(v5, a3);
      break;
    case 12:
LABEL_11:
      discharge2anyreg(v5, a3);
      if (*a3 == 7)
      {
        v7 = *(a3 + 8);
        if ((v7 & 0x100) == 0 && v7 >= *(v5 + 58))
        {
          --*(v5 + 60);
        }
      }

      *(a3 + 8) = luaK_code(v5, (*(a3 + 8) << 23) | 0x1Bu);
      v8 = 12;
      goto LABEL_21;
  }

LABEL_22:
  v9 = *(a3 + 16);
  *(a3 + 16) = vrev64_s32(v9);
  removevalues(v5, v9.i32[0]);
  v10 = *(a3 + 16);

  return removevalues(v5, v10);
}

unint64_t codeexpval(uint64_t a1, unsigned int a2, int *a3, int *a4, int a5)
{
  if (a2 > 0x1A || a3[4] != -1 || a3[5] != -1)
  {
    goto LABEL_4;
  }

  if (*a3 == 6)
  {
    v17 = 19;
    v16 = 1;
  }

  else
  {
    if (*a3 != 5)
    {
      goto LABEL_4;
    }

    v16 = 0;
    v17 = 3;
  }

  v31 = 0;
  v18 = *(a3 + 1);
  v30 = v18;
  LODWORD(v31) = v17;
  if (a4[4] != -1 || a4[5] != -1)
  {
LABEL_4:
    if (a2 <= 0x1C && ((1 << a2) & 0x16000000) != 0)
    {
      v10 = luaK_exp2anyreg(a1, a3);
      v11 = 0;
    }

    else
    {
      v11 = luaK_exp2RK(a1, a4);
      v10 = luaK_exp2RK(a1, a3);
    }

    if (v10 <= v11)
    {
      if (*a4 == 7)
      {
        v14 = a4[2];
        if ((v14 & 0x100) == 0 && v14 >= *(a1 + 58))
        {
          --*(a1 + 60);
        }
      }

      if (*a3 != 7)
      {
        goto LABEL_24;
      }

      v13 = a3[2];
      if ((v13 & 0x100) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (*a3 == 7)
      {
        v12 = a3[2];
        if ((v12 & 0x100) == 0 && v12 >= *(a1 + 58))
        {
          --*(a1 + 60);
        }
      }

      if (*a4 != 7)
      {
        goto LABEL_24;
      }

      v13 = a4[2];
      if ((v13 & 0x100) != 0)
      {
        goto LABEL_24;
      }
    }

    if (v13 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }

LABEL_24:
    result = luaK_code(a1, (v10 << 23) | (v11 << 14) | a2);
    a3[2] = result;
    *a3 = 12;
    *(*(*a1 + 72) + 4 * *(a1 + 32) - 4) = a5;
    return result;
  }

  if (*a4 == 6)
  {
    v20 = 19;
    v19 = 1;
  }

  else
  {
    if (*a4 != 5)
    {
      goto LABEL_4;
    }

    v19 = 0;
    v20 = 3;
  }

  v29 = 0;
  v26 = 0.0;
  v27 = 0;
  v21 = *(a4 + 1);
  v28 = v21;
  LODWORD(v29) = v20;
  if (((1 << a2) & 0x5F00000) == 0)
  {
    if (((1 << a2) & 0xD0000) == 0)
    {
      goto LABEL_50;
    }

    v22 = *&v21;
    if (!v19)
    {
      v22 = v21;
    }

    v23 = v22 == 0.0;
    goto LABEL_46;
  }

  v32 = 0;
  if (v16)
  {
    v32 = v18;
  }

  else
  {
    if (!luaV_tointeger(&v30, &v32))
    {
      goto LABEL_4;
    }

    v20 = v29;
  }

  if (v20 != 19)
  {
    v23 = luaV_tointeger(&v28, &v32) == 0;
LABEL_46:
    if (v23)
    {
      goto LABEL_4;
    }
  }

LABEL_50:
  result = luaO_arith(*(*(a1 + 16) + 56), a2 - 13, &v30, &v28, &v26);
  if (v27 == 19)
  {
    *a3 = 6;
    v25 = v26;
  }

  else
  {
    v25 = v26;
    if (v26 == 0.0)
    {
      goto LABEL_4;
    }

    *a3 = 5;
  }

  *(a3 + 1) = v25;
  return result;
}

double luaK_infix(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >= 0xC)
  {
    switch(a2)
    {
      case 0xCu:
        return luaK_exp2nextreg(a1, a3);
      case 0x14u:
        luaK_goiffalse(a1, a3);
        return result;
      case 0x13u:
        luaK_goiftrue(a1, a3);
        return result;
    }

LABEL_10:
    luaK_exp2RK(a1, a3);
    return result;
  }

  if (a3[4] != -1 || a3[5] != -1 || (*a3 - 5) >= 2)
  {
    goto LABEL_10;
  }

  return result;
}

__n128 luaK_posfix(uint64_t a1, int a2, int *a3, int *a4, int a5)
{
  v7 = a1;
  if (a2 > 12)
  {
    if (a2 < 16)
    {
      v11 = a2 + 18;
      v12 = 1;
    }

    else
    {
      if ((a2 - 16) >= 3)
      {
        if (a2 == 20)
        {
          luaK_dischargevars(a1, a4);
          v13 = a3[4];
          v14 = a4 + 4;
        }

        else
        {
          if (a2 != 19)
          {
            return result;
          }

          luaK_dischargevars(a1, a4);
          v13 = a3[5];
          v14 = a4 + 5;
        }

        luaK_concat(v7, v14, v13);
        result = *a4;
        *(a3 + 2) = *(a4 + 2);
        *a3 = result;
        return result;
      }

      v11 = a2 + 15;
      v12 = 0;
    }

    codecomp(a1, v11, v12, a3, a4);
    return result;
  }

  if (a2 < 0xC)
  {
    v9 = a2 + 13;
LABEL_4:

    codeexpval(a1, v9, a3, a4, a5);
    return result;
  }

  if (a2 != 12)
  {
    return result;
  }

  luaK_exp2val(a1, a4);
  if (*a4 != 12 || (v15 = *(*v7 + 56), v16 = a4[2], v17 = *(v15 + 4 * v16), (v17 & 0x3F) != 0x1D))
  {
    luaK_exp2nextreg(v7, a4);
    a1 = v7;
    v9 = 29;
    goto LABEL_4;
  }

  if (*a3 == 7)
  {
    v18 = a3[2];
    if ((v18 & 0x100) == 0 && v18 >= *(v7 + 58))
    {
      --*(v7 + 60);
      v16 = a4[2];
      v17 = *(v15 + 4 * v16);
    }
  }

  *(v15 + 4 * v16) = v17 & 0x7FFFFF | (a3[2] << 23);
  *a3 = 12;
  a3[2] = a4[2];
  return result;
}

uint64_t codecomp(uint64_t a1, int a2, int a3, int *a4, int *a5)
{
  v10 = luaK_exp2RK(a1, a4);
  v11 = luaK_exp2RK(a1, a5);
  if (*a5 == 7)
  {
    v12 = a5[2];
    if ((v12 & 0x100) == 0 && v12 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  if (*a4 == 7)
  {
    v13 = a4[2];
    if ((v13 & 0x100) == 0 && v13 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  v14 = a3 == 0;
  v15 = a2 != 31;
  v16 = !v15 || !v14;
  if (v15 && v14)
  {
    v17 = v11;
  }

  else
  {
    v17 = v10;
  }

  if (v16)
  {
    v18 = v11;
  }

  else
  {
    v18 = v10;
  }

  v19 = a3 << 6;
  if (!v16)
  {
    v19 = 64;
  }

  luaK_code(a1, v19 | (v17 << 23) | (v18 << 14) | a2);
  result = luaK_jump(a1);
  a4[2] = result;
  *a4 = 11;
  return result;
}

uint64_t luaK_setlist(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a2;
  v6 = (a3 - 1) / 50 + 1;
  v7 = a4 << 23;
  v8 = a2 << 6;
  if (a4 == -1)
  {
    v7 = 0;
  }

  if (a3 > 25550)
  {
    luaK_code(a1, v8 | v7 | 0x2B);
    v9 = (v6 << 6) | 0x2E;
  }

  else
  {
    v9 = v7 | (v6 << 14) | v8 | 0x2B;
  }

  result = luaK_code(a1, v9);
  *(a1 + 60) = v4 + 1;
  return result;
}

uint64_t patchtestreg(uint64_t a1, int a2, int a3)
{
  v3 = (*(*a1 + 56) + 4 * a2);
  if (a2 >= 1 && (v4 = *(v3 - 1), luaP_opmodes[v4 & 0x3F] < 0))
  {
    --v3;
  }

  else
  {
    v4 = *v3;
  }

  if ((v4 & 0x3F) != 0x23)
  {
    return 0;
  }

  v5 = v4 >> 23;
  if (a3 == 255 || v5 == a3)
  {
    v6 = v4 & 0x7FC022 | (v5 << 6);
  }

  else
  {
    v6 = v4 & 0xFFFFC023 | (a3 << 6);
  }

  *v3 = v6;
  return 1;
}

uint64_t discharge2reg(int *a1, int *a2, int a3)
{
  result = luaK_dischargevars(a1, a2);
  v7 = *a2;
  if (*a2 <= 4)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 == 1)
      {
        result = luaK_nil(a1, a3, 1);
        goto LABEL_24;
      }

      if (v7 != 4)
      {
        return result;
      }

      v8 = a2[2];
      goto LABEL_20;
    }

    if (v7 == 2)
    {
      v10 = 0x800000;
    }

    else
    {
      v10 = 2;
    }

    v11 = v10 | (a3 << 6) | 3;
    goto LABEL_17;
  }

  if (v7 <= 6)
  {
    if (v7 == 5)
    {
      v12 = *(a2 + 1);
      v16 = 3;
      v15 = v12;
      v9 = &v15;
    }

    else
    {
      if (v7 != 6)
      {
        return result;
      }

      v15 = *(a2 + 1);
      v16 = 2;
      v14[0] = v15;
      v14[1] = 19;
      v9 = v14;
    }

    v8 = addk(a1, &v15, v9);
LABEL_20:
    result = luaK_codek(a1, a3, v8);
    goto LABEL_24;
  }

  if (v7 == 7)
  {
    v13 = a2[2];
    if (v13 == a3)
    {
      goto LABEL_24;
    }

    v11 = (v13 << 23) | (a3 << 6);
LABEL_17:
    result = luaK_code(a1, v11);
    goto LABEL_24;
  }

  if (v7 != 12)
  {
    return result;
  }

  *(*(*a1 + 56) + 4 * a2[2]) = *(*(*a1 + 56) + 4 * a2[2]) & 0xFFFFC03F | (a3 << 6);
LABEL_24:
  a2[2] = a3;
  *a2 = 7;
  return result;
}

uint64_t need_value(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  while (1)
  {
    v2 = (*(*a1 + 56) + 4 * a2);
    if (a2 < 1 || (v3 = *(v2 - 1), (luaP_opmodes[v3 & 0x3F] & 0x80000000) == 0))
    {
      v3 = *v2;
    }

    if ((v3 & 0x3F) != 0x23)
    {
      break;
    }

    v4 = (*v2 >> 14) - 0x1FFFF;
    a2 += v4 + 1;
    if (v4 == -1 || a2 == -1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t discharge2anyreg(uint64_t result, int *a2)
{
  if (*a2 != 7)
  {
    v4 = result;
    luaK_checkstack(result, 1);
    v5 = *(v4 + 60) + 1;
    *(v4 + 60) = v5;

    return discharge2reg(v4, a2, v5 - 1);
  }

  return result;
}

uint64_t removevalues(uint64_t result, int a2)
{
  if (a2 != -1)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = patchtestreg(v3, v2, 255);
      v4 = (*(*(*v3 + 56) + 4 * v2) >> 14) - 0x1FFFF;
      v2 += v4 + 1;
    }

    while (v4 != -1 && v2 != -1);
  }

  return result;
}

uint64_t luaopen_coroutine(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 7);
  luaL_setfuncs(a1, &co_funcs, 0, v9, v10, v11, v12, v13);
  return 1;
}

uint64_t luaB_cocreate(void *a1)
{
  luaL_checktype(a1, 1, 6);
  v2 = lua_newthread(a1);
  lua_pushvalue(a1, 1);
  lua_xmove(a1, v2, 1);
  return 1;
}

uint64_t luaB_coresume(void *a1)
{
  v2 = getco(a1);
  v3 = lua_gettop(a1);
  v4 = auxresume(a1, v2, v3 - 1);
  if (v4 < 0)
  {
    lua_pushBOOLean(a1, 0);
    v6 = 2;
    v7 = -2;
  }

  else
  {
    v5 = v4;
    lua_pushBOOLean(a1, 1);
    v6 = (v5 + 1);
    v7 = ~v5;
  }

  lua_rotate(a1, v7, 1);
  return v6;
}

uint64_t luaB_corunning(uint64_t a1)
{
  v2 = lua_pushthread(a1);
  lua_pushBOOLean(a1, v2);
  return 2;
}

uint64_t luaB_costatus(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = getco(a1);
  if (v2 == a1)
  {
    v5 = "running";
  }

  else
  {
    v3 = v2;
    v4 = lua_status(v2);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = "suspended";
      }

      else
      {
        v5 = "dead";
      }
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      if (lua_getstack(v3, 0, v8) <= 0)
      {
        if (lua_gettop(v3))
        {
          v5 = "suspended";
        }

        else
        {
          v5 = "dead";
        }
      }

      else
      {
        v5 = "normal";
      }
    }
  }

  lua_pushstring(a1, v5);
  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t luaB_cowrap(void *a1)
{
  luaB_cocreate(a1);
  lua_pushcclosure(a1, luaB_auxwrap, 1);
  return 1;
}

uint64_t luaB_yield(uint64_t a1)
{
  v2 = lua_gettop(a1);

  return lua_yieldk(a1, v2, 0, 0);
}

uint64_t luaB_yieldable(uint64_t a1)
{
  v2 = lua_isyieldable(a1);
  lua_pushBOOLean(a1, v2);
  return 1;
}

uint64_t getco(void *a1)
{
  v2 = lua_tothread(a1, 1);
  if (!v2)
  {
    luaL_argerror(a1, 1);
  }

  return v2;
}

uint64_t auxresume(void *a1, void *a2, int a3)
{
  if (!lua_checkstack(a2, a3))
  {
    v7 = "too many arguments to resume";
LABEL_11:
    lua_pushstring(a1, v7);
    return 0xFFFFFFFFLL;
  }

  if (!lua_status(a2) && !lua_gettop(a2))
  {
    v7 = "cannot resume dead coroutine";
    goto LABEL_11;
  }

  lua_xmove(a1, a2, a3);
  if (lua_resume(a2, a1, a3) > 1)
  {
    lua_xmove(a2, a1, 1);
    return 0xFFFFFFFFLL;
  }

  v6 = lua_gettop(a2);
  if (!lua_checkstack(a1, v6 + 1))
  {
    lua_settop(a2, ~v6);
    v7 = "too many results to resume";
    goto LABEL_11;
  }

  lua_xmove(a2, a1, v6);
  return v6;
}

uint64_t luaB_auxwrap(void *a1)
{
  v2 = lua_tothread(a1, -1001001);
  v3 = lua_gettop(a1);
  result = auxresume(a1, v2, v3);
  if ((result & 0x80000000) != 0)
  {
    if (lua_isstring(a1, -1))
    {
      luaL_where(a1, 1);
      lua_rotate(a1, -2, 1);
      lua_concat(a1, 2, v5, v6, v7, v8, v9, v10);
    }

    return lua_error(a1);
  }

  return result;
}

uint64_t luaopen_debug(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 15);
  luaL_setfuncs(a1, &dblib, 0, v9, v10, v11, v12, v13);
  return 1;
}

uint64_t db_getuservalue(void *a1)
{
  if (lua_type(a1, 1) == 7)
  {
    lua_getuservalue(a1, 1);
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t db_gethook(void *a1)
{
  v2 = getthread(a1, &v14);
  v3 = lua_gethookmask(v2);
  v4 = lua_gethook(v2);
  if (v4)
  {
    if (v4 == hookf)
    {
      lua_rawgetp(a1, -1001000, &HOOKKEY);
      checkstack(a1, v2, 1, v6, v7, v8, v9, v10, v13);
      lua_pushthread(v2);
      lua_xmove(v2, a1, 1);
      lua_rawget(a1, -2);
      lua_rotate(a1, -2, -1);
      lua_settop(a1, 0xFFFFFFFE);
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      lua_pushstring(a1, "external hook");
      if (v3)
      {
LABEL_9:
        HIBYTE(v13) = 99;
        v5 = 1;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    lua_pushnil(a1);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  v5 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    *(&v13 + v5++ + 7) = 114;
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    *(&v13 + v5++ + 7) = 108;
  }

  *(&v13 + v5 + 7) = 0;
  lua_pushstring(a1, &v13 + 7);
  v11 = lua_gethookcount(v2);
  lua_pushinteger(a1, v11);
  return 3;
}

uint64_t db_getinfo(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v2 = getthread(a1, &v20);
  v3 = v20;
  v4 = luaL_optlstring(a1, (v20 + 2), "flnStu", 0);
  checkstack(a1, v2, 3, v5, v6, v7, v8, v9, v19);
  if (lua_type(a1, v3 + 1) == 6)
  {
    v4 = lua_pushfstring(a1, ">%s", v10, v11, v12, v13, v14, v15, v4);
    lua_pushvalue(a1, v3 + 1);
    lua_xmove(a1, v2, 1);
  }

  else
  {
    v16 = luaL_checkinteger(a1, (v3 + 1));
    if (!lua_getstack(v2, v16, &v21))
    {
      lua_pushnil(a1);
LABEL_21:
      result = 1;
      goto LABEL_22;
    }
  }

  if (lua_getinfo(v2, v4, &v21))
  {
    lua_createtable(a1, 0, 0);
    if (strchr(v4, 83))
    {
      lua_pushstring(a1, v23);
      lua_setfield(a1, -2, "source");
      lua_pushstring(a1, v24 + 8);
      lua_setfield(a1, -2, "short_src");
      lua_pushinteger(a1, SHIDWORD(v23));
      lua_setfield(a1, -2, "linedefined");
      lua_pushinteger(a1, SLODWORD(v24[0]));
      lua_setfield(a1, -2, "lastlinedefined");
      lua_pushstring(a1, *(&v22 + 1));
      lua_setfield(a1, -2, "what");
    }

    if (strchr(v4, 108))
    {
      lua_pushinteger(a1, SDWORD2(v23));
      lua_setfield(a1, -2, "currentline");
    }

    if (strchr(v4, 117))
    {
      lua_pushinteger(a1, BYTE4(v24[0]));
      lua_setfield(a1, -2, "nups");
      lua_pushinteger(a1, BYTE5(v24[0]));
      lua_setfield(a1, -2, "nparams");
      lua_pushBOOLean(a1, SBYTE6(v24[0]));
      lua_setfield(a1, -2, "isvararg");
    }

    if (strchr(v4, 110))
    {
      lua_pushstring(a1, *(&v21 + 1));
      lua_setfield(a1, -2, "name");
      lua_pushstring(a1, v22);
      lua_setfield(a1, -2, "namewhat");
    }

    if (strchr(v4, 116))
    {
      lua_pushBOOLean(a1, SBYTE7(v24[0]));
      lua_setfield(a1, -2, "istailcall");
    }

    if (strchr(v4, 76))
    {
      treatstackoption(a1, v2, "activelines");
    }

    if (strchr(v4, 102))
    {
      treatstackoption(a1, v2, "func");
    }

    goto LABEL_21;
  }

  result = luaL_argerror(a1, (v3 + 2));
LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_getlocal(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v2 = getthread(a1, &v17);
  v3 = v17;
  v4 = luaL_checkinteger(a1, (v17 + 2));
  if (lua_type(a1, v3 + 1) == 6)
  {
    lua_pushvalue(a1, v3 + 1);
    v5 = lua_getlocal(a1, 0, v4);
    lua_pushstring(a1, v5);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v7 = luaL_checkinteger(a1, (v3 + 1));
    if (!lua_getstack(v2, v7, v18))
    {
      result = luaL_argerror(a1, (v3 + 1));
      goto LABEL_8;
    }

    checkstack(a1, v2, 1, v8, v9, v10, v11, v12, v16);
    v13 = lua_getlocal(v2, v18, v4);
    if (v13)
    {
      v14 = v13;
      lua_xmove(v2, a1, 1);
      lua_pushstring(a1, v14);
      lua_rotate(a1, -2, 1);
      result = 2;
      goto LABEL_8;
    }

    lua_pushnil(a1);
  }

  result = 1;
LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_getmetatable(void *a1)
{
  luaL_checkany(a1, 1);
  if (!lua_getmetatable(a1, 1))
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t db_upvaluejoin(void *a1)
{
  v2 = checkupval(a1, 1, 2);
  v3 = checkupval(a1, 3, 4);
  if (lua_iscfunction(a1, 1))
  {
    luaL_argerror(a1, 1);
  }

  if (lua_iscfunction(a1, 3))
  {
    luaL_argerror(a1, 3);
  }

  lua_upvaluejoin(a1, 1, v2, 3, v3);
  return 0;
}

uint64_t db_upvalueid(void *a1)
{
  v2 = checkupval(a1, 1, 2);
  v3 = lua_upvalueid(a1, 1, v2);
  lua_pushlightuserdata(a1, v3);
  return 1;
}

uint64_t db_setuservalue(void *a1)
{
  luaL_checktype(a1, 1, 7);
  luaL_checkany(a1, 2);
  lua_settop(a1, 2u);
  lua_setuservalue(a1, 1);
  return 1;
}

uint64_t db_sethook(uint64_t *a1)
{
  v21 = 0;
  v2 = getthread(a1, &v21);
  v3 = v21;
  if (lua_type(a1, v21 + 1) <= 0)
  {
    lua_settop(a1, v3 + 1);
    v13 = 0;
    v5 = 0;
    v12 = 0;
  }

  else
  {
    v4 = luaL_checklstring(a1, (v3 + 2), 0);
    luaL_checktype(a1, (v3 + 1), 6);
    v5 = luaL_optinteger(a1, (v3 + 3), 0);
    v6 = strchr(v4, 99);
    v7 = strchr(v4, 114);
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }

    v10 = strchr(v4, 108);
    v11 = v9 | 4;
    if (!v10)
    {
      v11 = v9;
    }

    if (v5 <= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 | 8;
    }

    v13 = hookf;
  }

  if (!lua_rawgetp(a1, -1001000, &HOOKKEY))
  {
    lua_createtable(a1, 0, 2);
    lua_pushvalue(a1, -1);
    lua_rawsetp(a1, -1001000, &HOOKKEY);
    lua_pushstring(a1, "k");
    lua_setfield(a1, -2, "__mode");
    lua_pushvalue(a1, -1);
    lua_setmetatable(a1, -2);
  }

  checkstack(a1, v2, 1, v14, v15, v16, v17, v18, v20);
  lua_pushthread(v2);
  lua_xmove(v2, a1, 1);
  lua_pushvalue(a1, v3 + 1);
  lua_rawset(a1, -3);
  lua_sethook(v2, v13, v12, v5);
  return 0;
}

uint64_t db_setlocal(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v2 = getthread(a1, &v15);
  memset(v16, 0, sizeof(v16));
  v3 = v15;
  v4 = luaL_checkinteger(a1, (v15 + 1));
  v5 = luaL_checkinteger(a1, (v3 + 2));
  if (lua_getstack(v2, v4, v16))
  {
    luaL_checkany(a1, (v3 + 3));
    lua_settop(a1, v3 + 3);
    checkstack(a1, v2, 1, v6, v7, v8, v9, v10, v14);
    lua_xmove(a1, v2, 1);
    v11 = lua_setlocal(v2, v16, v5);
    if (!v11)
    {
      lua_settop(v2, 0xFFFFFFFE);
    }

    lua_pushstring(a1, v11);
    result = 1;
  }

  else
  {
    result = luaL_argerror(a1, (v3 + 1));
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_setmetatable(uint64_t *a1)
{
  v2 = lua_type(a1, 2);
  if (v2 && v2 != 5)
  {
    luaL_argerror(a1, 2);
  }

  lua_settop(a1, 2u);
  lua_setmetatable(a1, 1);
  return 1;
}

uint64_t db_setupvalue(void *a1)
{
  luaL_checkany(a1, 3);

  return auxupvalue(a1, 0);
}

uint64_t db_traceback(void *a1)
{
  v7 = 0;
  v2 = getthread(a1, &v7);
  v3 = v7;
  v4 = lua_tolstring(a1, v7 + 1, 0);
  if (v4 || lua_type(a1, v3 + 1) < 1)
  {
    v5 = luaL_optinteger(a1, (v3 + 2), v2 == a1);
    luaL_traceback(a1, v2, v4, v5);
  }

  else
  {
    lua_pushvalue(a1, v3 + 1);
  }

  return 1;
}

uint64_t getthread(void *a1, _DWORD *a2)
{
  if (lua_type(a1, 1) == 8)
  {
    *a2 = 1;

    return lua_tothread(a1, 1);
  }

  else
  {
    *a2 = 0;
    return a1;
  }
}

uint64_t hookf(void *a1, int *a2)
{
  lua_rawgetp(a1, -1001000, &HOOKKEY);
  lua_pushthread(a1);
  result = lua_rawget(a1, -2);
  if (result == 6)
  {
    lua_pushstring(a1, hookf_hooknames[*a2]);
    v5 = a2[10];
    if ((v5 & 0x80000000) != 0)
    {
      lua_pushnil(a1);
    }

    else
    {
      lua_pushinteger(a1, v5);
    }

    return lua_callk(a1, 2, 0, 0, 0);
  }

  return result;
}

uint64_t checkstack(uint64_t result, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = result;
    result = lua_checkstack(a2, a3);
    if (!result)
    {

      return luaL_error(v9, "stack overflow", v10, v11, v12, v13, v14, v15, a9);
    }
  }

  return result;
}

uint64_t *treatstackoption(void *a1, uint64_t a2, char *a3)
{
  if (a1 == a2)
  {
    lua_rotate(a1, -2, 1);
  }

  else
  {
    lua_xmove(a2, a1, 1);
  }

  return lua_setfield(a1, -2, a3);
}

uint64_t auxupvalue(void *a1, int a2)
{
  v4 = luaL_checkinteger(a1, 2);
  luaL_checktype(a1, 1, 6);
  if (a2)
  {
    lua_getupvalue(a1, 1, v4);
  }

  else
  {
    v5 = lua_setupvalue(a1, 1, v4);
  }

  if (!v5)
  {
    return 0;
  }

  lua_pushstring(a1, v5);
  v6 = (a2 + 1);
  lua_rotate(a1, ~a2, 1);
  return v6;
}

uint64_t checkupval(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = luaL_checkinteger(a1, a3);
  luaL_checktype(a1, a2, 6);
  lua_getupvalue(a1, a2, v6);
  if (!v7)
  {
    luaL_argerror(a1, a3);
  }

  return v6;
}

uint64_t lua_sethook(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 32);
  if ((*(v4 + 66) & 2) != 0)
  {
    *(result + 40) = *(v4 + 40);
  }

  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  *(result + 168) = v5;
  *(result + 188) = a4;
  *(result + 192) = a4;
  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  *(result + 200) = v6;
  return result;
}

uint64_t lua_getstack(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = a1 + 96;
  v4 = *(a1 + 32);
  v5 = v4 != a1 + 96;
  if (a2 && v4 != a1 + 96)
  {
    do
    {
      v4 = *(v4 + 16);
      v5 = v4 != v3;
      --a2;
    }

    while (a2 && v4 != v3);
  }

  result = 0;
  if (!a2 && v5)
  {
    *(a3 + 120) = v4;
    return 1;
  }

  return result;
}

uint64_t lua_getlocal(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 10) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *v4;
    v6 = *(a1 + 56);
    *v4 = v6 + v4[7];
    v4[7] = v5 - v6;
  }

  if (a2)
  {
    v12 = 0;
    result = findlocal(a1, *(a2 + 120), a3, &v12);
    if (result)
    {
      **(a1 + 16) = *v12;
      *(a1 + 16) += 16;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (*(v8 - 8) == 70)
    {
      result = luaF_getlocalname(*(*(v8 - 16) + 24), a3, 0);
    }

    else
    {
      result = 0;
    }
  }

  if (*(a1 + 10) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *v9;
    v11 = *(a1 + 56);
    *v9 = v11 + v9[7];
    v9[7] = v10 - v11;
  }

  return result;
}

const char *findlocal(uint64_t a1, void *a2, int a3, uint64_t *a4)
{
  if ((*(a2 + 66) & 2) != 0)
  {
    if (a3 < 0)
    {
      v12 = *(*(**a2 + 24) + 10);
      if ((((a2[4] - *a2) >> 4) - v12) <= -a3)
      {
        return 0;
      }

      v11 = *a2 + 16 * v12 + 16 * -a3;
      result = "(*vararg)";
      goto LABEL_13;
    }

    v8 = a2[4];
    result = luaF_getlocalname(*(**a2 + 24), a3, ((a2[5] - *(*(**a2 + 24) + 56)) >> 2) - 1);
    if (result)
    {
LABEL_12:
      v11 = v8 + 16 * a3 - 16;
LABEL_13:
      *a4 = v11;
      return result;
    }
  }

  else
  {
    v8 = *a2 + 16;
  }

  if (*(a1 + 32) == a2)
  {
    v9 = (a1 + 16);
  }

  else
  {
    v9 = a2[3];
  }

  result = 0;
  if (a3 >= 1 && (*v9 - v8) >> 4 >= a3)
  {
    result = "(*temporary)";
    goto LABEL_12;
  }

  return result;
}

const char *lua_setlocal(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  if (*(a1 + 10) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *v4;
    v6 = *(a1 + 56);
    *v4 = v6 + v4[7];
    v4[7] = v5 - v6;
  }

  result = findlocal(a1, *(a2 + 120), a3, &v11);
  if (result)
  {
    *v11 = *(*(a1 + 16) - 16);
    *(a1 + 16) -= 16;
  }

  if (*(a1 + 10) == 1)
  {
    v8 = *(a1 + 32);
    v9 = *v8;
    v10 = *(a1 + 56);
    *v8 = v10 + v8[7];
    v8[7] = v9 - v10;
  }

  return result;
}

uint64_t lua_getinfo(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = a2;
  if (*(a1 + 10) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *v6;
    v8 = *(a1 + 56);
    *v6 = v8 + v6[7];
    v6[7] = v7 - v8;
  }

  if (*a2 == 62)
  {
    v9 = 0;
    v10 = *(a1 + 16) - 16;
    v4 = a2 + 1;
    *(a1 + 16) = v10;
  }

  else
  {
    v9 = *(a3 + 120);
    v10 = *v9;
  }

  v42 = v10;
  if ((*(v10 + 8) & 0x1F) == 6)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  __s = v4;
  while (1)
  {
    v13 = *v4;
    if (v13 > 0x6B)
    {
      if (*v4 > 0x73u)
      {
        if (v13 == 116)
        {
          if (v9)
          {
            v20 = *(v9 + 66) & 0x20;
          }

          else
          {
            v20 = 0;
          }

          *(a3 + 55) = v20;
        }

        else
        {
          if (v13 != 117)
          {
            goto LABEL_29;
          }

          if (v11)
          {
            *(a3 + 52) = *(v11 + 10);
            if (*(v11 + 8) != 38)
            {
              *(a3 + 54) = *(*(v11 + 24) + 11);
              *(a3 + 53) = *(*(v11 + 24) + 10);
              goto LABEL_51;
            }
          }

          else
          {
            *(a3 + 52) = 0;
          }

          *(a3 + 53) = 256;
        }
      }

      else if (v13 == 108)
      {
        if (v9 && (*(v9 + 66) & 2) != 0 && (v17 = *(**v9 + 24), (v18 = *(v17 + 72)) != 0))
        {
          v19 = *(v18 + 4 * ((((*(v9 + 40) - *(v17 + 56)) << 30) - 0x100000000) >> 32));
        }

        else
        {
          v19 = -1;
        }

        *(a3 + 40) = v19;
      }

      else
      {
        if (v13 != 110)
        {
          goto LABEL_29;
        }

        if (v9 && (*(v9 + 66) & 0x20) == 0 && (v14 = *(v9 + 16), (*(v14 + 66) & 2) != 0))
        {
          if ((*(v14 + 66) & 4) != 0)
          {
            v30 = "?";
            v29 = "hook";
          }

          else
          {
            v24 = 0;
            v25 = *(**v14 + 24);
            v26 = v25[7];
            v27 = ((*(v14 + 40) - v26) >> 2) - 1;
            v28 = *(v26 + 4 * v27);
            v29 = "for iterator";
            v30 = "for iterator";
            switch(v28 & 0x3F)
            {
              case 8u:
              case 0xAu:
                v24 = 1;
                goto LABEL_55;
              case 0xDu:
              case 0xEu:
              case 0xFu:
              case 0x10u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
                v24 = (*(v26 + 4 * v27) & 0x3Fu) - 7;
                goto LABEL_55;
              case 0x19u:
                v24 = 18;
                goto LABEL_55;
              case 0x1Au:
                v24 = 19;
                goto LABEL_55;
              case 0x1Cu:
                v24 = 4;
                goto LABEL_55;
              case 0x1Du:
                v24 = 22;
                goto LABEL_55;
              case 0x1Fu:
                v24 = 5;
                goto LABEL_55;
              case 0x20u:
                v24 = 20;
                goto LABEL_55;
              case 0x21u:
                v24 = 21;
                goto LABEL_55;
              case 0x24u:
              case 0x25u:
                v31 = getobjname(v25, v27, (v28 >> 6), (a3 + 8));
                *(a3 + 16) = v31;
                if (!v31)
                {
                  goto LABEL_17;
                }

                goto LABEL_51;
              case 0x29u:
                break;
              default:
LABEL_55:
                v30 = (*(*(a1 + 24) + 8 * v24 + 248) + 24);
                v29 = "metamethod";
                break;
            }
          }

          *(a3 + 8) = v30;
          *(a3 + 16) = v29;
        }

        else
        {
LABEL_17:
          *(a3 + 8) = 0;
          *(a3 + 16) = "";
        }
      }

      goto LABEL_51;
    }

    if (*v4 <= 0x52u)
    {
      break;
    }

    if (v13 != 83)
    {
      if (v13 == 102)
      {
        goto LABEL_51;
      }

LABEL_29:
      v12 = 0;
      goto LABEL_51;
    }

    if (v11 && *(v11 + 8) != 38)
    {
      v21 = *(v11 + 24);
      v22 = *(v21 + 104);
      if (v22)
      {
        v16 = (v22 + 24);
      }

      else
      {
        v16 = "=?";
      }

      *(a3 + 32) = v16;
      v23 = *(v21 + 40);
      *(a3 + 44) = v23;
      v15 = "Lua";
      if (!v23)
      {
        v15 = "main";
      }
    }

    else
    {
      *(a3 + 32) = "=[C]";
      *(a3 + 44) = -1;
      v15 = "C";
      v16 = "=[C]";
    }

    *(a3 + 24) = v15;
    luaO_chunkid((a3 + 56), v16, 0x3CuLL);
LABEL_51:
    ++v4;
  }

  if (v13 == 76)
  {
    goto LABEL_51;
  }

  if (*v4)
  {
    goto LABEL_29;
  }

  if (strchr(__s, 102))
  {
    **(a1 + 16) = *v42;
    *(a1 + 16) += 16;
  }

  if (*(a1 + 10) == 1)
  {
    v32 = *(a1 + 32);
    v33 = *v32;
    v34 = *(a1 + 56);
    *v32 = v34 + v32[7];
    v32[7] = v33 - v34;
  }

  if (strchr(__s, 76))
  {
    if (v11 && *(v11 + 8) != 38)
    {
      v44 = 0uLL;
      v36 = *(*(v11 + 24) + 72);
      v37 = luaH_new(a1);
      v38 = *(a1 + 16);
      *v38 = v37;
      *(v38 + 8) = 69;
      *(a1 + 16) += 16;
      v44.n128_u32[0] = 1;
      v44.n128_u32[2] = 1;
      if (*(*(v11 + 24) + 28) >= 1)
      {
        v39 = v37;
        v40 = 0;
        do
        {
          luaH_setint(a1, v39, *(v36 + 4 * v40++), &v44);
        }

        while (v40 < *(*(v11 + 24) + 28));
      }
    }

    else
    {
      v35 = *(a1 + 16);
      *(v35 + 8) = 0;
      *(a1 + 16) = v35 + 16;
    }
  }

  return v12;
}