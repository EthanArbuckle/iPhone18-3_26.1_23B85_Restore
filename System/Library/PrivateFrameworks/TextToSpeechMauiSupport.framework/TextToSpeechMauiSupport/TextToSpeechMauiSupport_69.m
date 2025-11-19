void *mfs_CostList_FreeAt(void *a1, unsigned int a2)
{
  v3 = a2;
  v4 = 32 * a2;
  result = heap_Free(*(*a1 + 8), *(a1[2] + v4));
  v6 = a1[2];
  v7 = v6 + 32 * v3;
  *(v6 + v4) = 0;
  v10 = *(v7 + 8);
  v9 = (v7 + 8);
  v8 = v10;
  if (v10)
  {
    result = heap_Free(*(*a1 + 8), v8);
    *v9 = 0;
  }

  return result;
}

void *UNICORN__mfs_CostList_DeInit(void *result)
{
  v1 = result;
  v2 = result[5];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[5] = 0;
  }

  v3 = v1[6];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[6] = 0;
  }

  v4 = v1[8];
  if (v4)
  {
    result = heap_Free(*(*v1 + 8), v4);
    v1[8] = 0;
  }

  v5 = v1[9];
  if (v5)
  {
    result = heap_Free(*(*v1 + 8), v5);
    v1[9] = 0;
  }

  v6 = v1[11];
  if (v6)
  {
    result = heap_Free(*(*v1 + 8), v6);
    v1[11] = 0;
  }

  v7 = v1[12];
  if (v7)
  {
    result = heap_Free(*(*v1 + 8), v7);
    v1[12] = 0;
  }

  v8 = v1[26];
  if (v8)
  {
    result = heap_Free(*(*v1 + 8), v8);
    v1[26] = 0;
  }

  v9 = v1[13];
  if (v9)
  {
    result = heap_Free(*(*v1 + 8), v9);
    v1[13] = 0;
  }

  v10 = v1[2];
  if (v10)
  {
    if (*(v1 + 6))
    {
      v11 = 0;
      do
      {
        mfs_CostList_FreeAt(v1, v11++);
      }

      while (v11 < *(v1 + 6));
      v10 = v1[2];
    }

    result = heap_Free(*(*v1 + 8), v10);
    v1[2] = 0;
  }

  *(v1 + 6) = 0;
  return result;
}

uint64_t UNICORN__mfs_CostList_IsNodeInList(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v6 = *(a1 + 16) + 32 * a2;
  *a4 = -1;
  InsertionPoint = mfs_CostList_FindInsertionPoint(v6, a3);
  if (InsertionPoint >= *(v6 + 16) || *(*v6 + 12 * InsertionPoint) != a3)
  {
    return 0;
  }

  *a4 = InsertionPoint;
  return 1;
}

uint64_t mfs_CostList_FindInsertionPoint(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  v3 = v2 - 1;
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v6 = *a1;
  while (1)
  {
    v7 = (v3 + result) >> 1;
    v8 = *(v6 + 12 * v7);
    if (v8 >= a2)
    {
      if (v8 <= a2)
      {
        return v7;
      }

      v3 = v7 - 1;
    }

    else
    {
      result = (v7 + 1);
    }

    if (result <= v3)
    {
      v7 = (v3 + result) >> 1;
      v9 = *(v6 + 12 * v7);
      if (v9 >= a2)
      {
        if (v9 <= a2)
        {
          return v7;
        }

        v3 = v7 - 1;
      }

      else
      {
        result = (v7 + 1);
      }

      if (result <= v3)
      {
        break;
      }
    }

LABEL_17:
    if (result > v3)
    {
      return result;
    }
  }

  v7 = (v3 + result) >> 1;
  v10 = *(v6 + 12 * v7);
  if (v10 < a2)
  {
    result = (v7 + 1);
    goto LABEL_17;
  }

  if (v10 > a2)
  {
    v3 = v7 - 1;
    goto LABEL_17;
  }

  return v7;
}

uint64_t UNICORN__mfs_CostList_Resize(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = a1[2] + 32 * a2;
  if (*(v3 + 20) >= a3)
  {
    return 0;
  }

  v5 = heap_Realloc(*(*a1 + 8), *v3, 12 * a3);
  if (!v5)
  {
    return 2229280778;
  }

  v6 = v5;
  result = 0;
  *(v3 + 20) = a3;
  *v3 = v6;
  return result;
}

uint64_t UNICORN__mfs_CostList_Add(float a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5)
{
  v5 = 2229280769;
  v6 = a3[2] + 32 * a4;
  if (!*(v6 + 24))
  {
    InsertionPoint = mfs_CostList_FindInsertionPoint((a3[2] + 32 * a4), a5);
    v11 = InsertionPoint;
    v12 = *(v6 + 16);
    v13 = *v6;
    if (InsertionPoint < v12 && *(v13 + 12 * InsertionPoint) == a5)
    {
      return 2229280770;
    }

    else
    {
      if (*(v6 + 20) == v12)
      {
        v14 = v12 + 64;
        *(v6 + 20) = v14;
        v15 = heap_Realloc(*(*a3 + 8), v13, 12 * v14);
        *v6 = v15;
        if (!v15)
        {
          *(v6 + 20) -= 64;
          return 2229280778;
        }

        v13 = v15;
        v12 = *(v6 + 16);
      }

      v16 = v11;
      v17 = v12 - v11;
      if (v17)
      {
        cstdlib_memmove((v13 + 12 * v11 + 12), (v13 + 12 * v11), 12 * v17);
        v13 = *v6;
        v11 = *(v6 + 16);
      }

      v5 = 0;
      v18 = v13 + 12 * v16;
      *v18 = a5;
      *(v18 + 4) = a1;
      *(v6 + 16) = v11 + 1;
    }
  }

  return v5;
}

uint64_t UNICORN__mfs_CostList_Pad(void *a1, unsigned int a2, int a3, float a4)
{
  v4 = 2229280769;
  v5 = a1[2] + 32 * a2;
  if (!*(v5 + 24))
  {
    v8 = *(v5 + 16);
    v9 = *v5;
    if (*(v5 + 20) == v8)
    {
      *(v5 + 20) = v8 + 64;
      v10 = heap_Realloc(*(*a1 + 8), v9, 12 * (v8 + 64));
      *v5 = v10;
      if (!v10)
      {
        *(v5 + 20) -= 64;
        return 2229280778;
      }

      v9 = v10;
      v11 = *(v5 + 16);
    }

    else
    {
      v11 = *(v5 + 16);
    }

    v4 = 0;
    v12 = v9 + 12 * v8;
    *v12 = a3;
    *(v12 + 4) = a4;
    *(v5 + 16) = v11 + 1;
  }

  return v4;
}

uint64_t mfs_CostList_Pad_Faster(uint64_t result, int a2, float a3)
{
  v3 = *(result + 16);
  v4 = *result + 12 * v3;
  *v4 = a2;
  *(v4 + 4) = a3;
  *(result + 16) = v3 + 1;
  return result;
}

uint64_t mfs_CostList_PadWithBnfOffset(void *a1, unsigned int a2, int a3, int a4, float a5)
{
  result = UNICORN__mfs_CostList_Pad(a1, a2, a3, a5);
  if (!result)
  {
    v9 = a1[2] + 32 * a2;
    *(*v9 + 12 * (*(v9 + 16) - 1) + 8) = a4;
  }

  return result;
}

uint64_t UNICORN__mfs_ConcatTwoLists(void *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a3 + 16) + 32 * a4;
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = a1[2] + 32 * a2;
  v7 = *(v6 + 16) + 2 * v5;
  if (v7 <= *(v6 + 20))
  {
    goto LABEL_5;
  }

  *(v6 + 20) = v7;
  v8 = heap_Realloc(*(*a1 + 8), *v6, 12 * v7);
  *v6 = v8;
  if (!v8)
  {
    *(v6 + 20) -= v5;
    result = 2229280778;
    goto LABEL_8;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
LABEL_5:
    cstdlib_memcpy((*v6 + 12 * *(v6 + 16)), *v4, 12 * v5);
    result = 0;
    *(v6 + 16) += *(v4 + 16);
    *(v6 + 28) = 0;
  }

  else
  {
LABEL_6:
    result = 0;
  }

LABEL_8:
  *(v4 + 16) = 0;
  return result;
}

uint64_t mfs_ClonePrevList(void *a1, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = a1 + 22;
      v6 = a3 - 1;
      if (*(a1 + a3 + 44) == *(a1 + a3 + 43))
      {
        v8 = a1[2];
        v9 = v8 + 32 * (a2 - 1);
        if ((UNICORN__mfs_CostList_Resize(a1, a2, *(v9 + 16)) & 0x80000000) == 0)
        {
          v10 = v8 + 32 * a2;
          v11 = a1 + 14;
          cstdlib_memcpy(*v10, *v9, 12 * *(v9 + 16));
          v12 = *(v9 + 16);
          if (v12)
          {
            v13 = *v10;
            v14 = *(v9 + 16);
            do
            {
              ++*v13;
              v13 += 3;
              --v14;
            }

            while (v14);
          }

          *(v10 + 16) = v12;
          *(v10 + 28) = *(v9 + 28);
          v15 = v11[a3];
          *(v10 + 20) = *(v9 + 20);
          cstdlib_memcpy(v15, v11[v6], 4 * *(v5 + v6));
        }
      }
    }
  }

  return 0;
}

uint64_t UNICORN__mfs_CostList_Sort(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 16) + 32 * a2;
  if (*(v4 + 24) == a3 && *(v4 + 28))
  {
    return 0;
  }

  if (!a3)
  {
    v6 = *(v4 + 16);
    v7 = mfs_CostList_CompareNodesUid;
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v6 = *(v4 + 16);
    v7 = UNICORN__mfs_CostList_CompareNodesScore_faster;
    if (!v6)
    {
LABEL_8:
      result = 0;
      *(v4 + 24) = a3;
      *(v4 + 28) = 1;
      return result;
    }

LABEL_7:
    ssft_qsort(*v4, v6, 12, v7);
    goto LABEL_8;
  }

  return 2229280769;
}

uint64_t mfs_CostList_CompareNodesUid(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t mfs_CostList_QSelectUnitIDs_Faster(uint64_t result, int a2, unsigned int a3)
{
  v3 = a2 - 1;
  if (a2 != 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = (result + 12 * a3);
    do
    {
      v7 = v3;
      v8 = (result + 12 * v3);
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v6 + 2);
      *v8 = *v6;
      *(v8 + 2) = v11;
      *v6 = v10;
      *(v6 + 2) = v9;
      v12 = v4;
      if (v4 < v3)
      {
        v13 = (result + 12 * v4);
        v14 = v7 - v4;
        v12 = v4;
        do
        {
          if (*v13 < *v8)
          {
            v15 = (result + 12 * v12);
            v16 = *(v15 + 2);
            v17 = *v15;
            v18 = *(v13 + 2);
            *v15 = *v13;
            *(v15 + 2) = v18;
            *v13 = v17;
            *(v13 + 2) = v16;
            ++v12;
          }

          v13 = (v13 + 12);
          --v14;
        }

        while (v14);
      }

      v19 = (result + 12 * v12);
      v20 = *(v19 + 2);
      v21 = *v19;
      v22 = *(v8 + 2);
      *v19 = *v8;
      *(v19 + 2) = v22;
      *v8 = v21;
      *(v8 + 2) = v20;
      if (v12 == a3)
      {
        break;
      }

      if (v12 >= a3)
      {
        v3 = v12 - 1;
      }

      else
      {
        v4 = v12 + 1;
        v3 = v7;
      }

      ++v5;
    }

    while (v5 < v3);
  }

  return result;
}

uint64_t mfs_CostList_QSelectScores_Faster(uint64_t result, int a2, int a3)
{
  v3 = a2 - 1;
  if (a2 != 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = a3 - 1;
    do
    {
      v7 = (result + 12 * v3);
      v8 = *(v7 + 2);
      v9 = *v7;
      v10 = (result + 12 * (v3 >> 1));
      v11 = *(v10 + 2);
      v12 = v3;
      *v7 = *v10;
      *(v7 + 2) = v11;
      *v10 = v9;
      *(v10 + 2) = v8;
      v13 = v4;
      if (v4 < v3)
      {
        v14 = (result + 12 * v4);
        v15 = v12 - v4;
        v13 = v4;
        do
        {
          if (*(v14 + 1) < *(v7 + 1))
          {
            v16 = (result + 12 * v13);
            v17 = *(v16 + 2);
            v18 = *v16;
            v19 = *(v14 + 2);
            *v16 = *v14;
            *(v16 + 2) = v19;
            *v14 = v18;
            *(v14 + 2) = v17;
            ++v13;
          }

          v14 = (v14 + 12);
          --v15;
        }

        while (v15);
      }

      v20 = (result + 12 * v13);
      v21 = *(v20 + 2);
      v22 = *v20;
      v23 = *(v7 + 2);
      *v20 = *v7;
      *(v20 + 2) = v23;
      *v7 = v22;
      *(v7 + 2) = v21;
      if (v13 == v6)
      {
        break;
      }

      if (v13 >= v6)
      {
        v3 = v13 - 1;
      }

      else
      {
        v4 = v13 + 1;
        v3 = v12;
      }

      ++v5;
    }

    while (v5 < v3);
  }

  return result;
}

uint64_t mfs_CostList_Select(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = *(a1 + 16) + 32 * a2;
  if (*(v4 + 24) == a3 && *(v4 + 28))
  {
    return 0;
  }

  if (!a3)
  {
    v7 = *(v4 + 16);
    if (v7)
    {
      mfs_CostList_QSelectUnitIDs_Faster(*v4, v7, a4);
    }

    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v6 = *(v4 + 16);
    if (v6)
    {
      mfs_CostList_QSelectScores_Faster(*v4, v6, a4);
    }

LABEL_10:
    result = 0;
    *(v4 + 28) = 0;
    return result;
  }

  return 2229280769;
}

uint64_t UNICORN__mfs_CostList_UpdateCostEnd_inlined(uint64_t result, unsigned int a2)
{
  v2 = *(result + 16) + 32 * a2;
  if (*(v2 + 24) == 1)
  {
    *(v2 + 28) = 0;
  }

  return result;
}

uint64_t UNICORN__mfs_CostList_UpdateCost(uint64_t result, unsigned int a2, unsigned int a3, float a4)
{
  v4 = *(result + 16) + 32 * a2;
  *(*v4 + 12 * a3 + 4) = a4;
  if (*(v4 + 24) == 1)
  {
    *(v4 + 28) = 0;
  }

  return result;
}

uint64_t UNICORN__mfs_CostList_HasUnit(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3 + 32 * a2;
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  if (!*(v4 + 24))
  {
    v14 = __OFSUB__(v5, 1);
    v15 = v5 - 1;
    if (v15 < 0 == v14)
    {
      v16 = 0;
      do
      {
        v17 = (v15 + v16) >> 1;
        v18 = *(*v4 + 12 * v17);
        if (v18 >= a3)
        {
          if (v18 <= a3)
          {
            return 1;
          }

          v15 = v17 - 1;
        }

        else
        {
          v16 = v17 + 1;
        }
      }

      while (v16 <= v15);
    }

    return 0;
  }

  if (*(v4 + 8))
  {
    goto LABEL_26;
  }

  v7 = heap_Alloc(*(*a1 + 8), 4 * v5);
  *(v4 + 8) = v7;
  v8 = *(v4 + 16);
  if (v7)
  {
    if (v8)
    {
      v9 = 0;
      v10 = *v4;
      do
      {
        v11 = *v10;
        v10 += 3;
        *(v7 + 4 * v9++) = v11;
        v12 = *(v4 + 16);
      }

      while (v9 < v12);
    }

    else
    {
      v12 = 0;
    }

    ssft_qsort(v7, v12, 4, mfs_CostList_CompareNodesUid);
    LODWORD(v5) = *(v4 + 16);
LABEL_26:
    v14 = __OFSUB__(v5, 1);
    v21 = v5 - 1;
    if (v21 < 0 == v14)
    {
      v22 = 0;
      do
      {
        v23 = (v21 + v22) >> 1;
        v24 = *(*(v4 + 8) + 4 * v23);
        if (v24 >= a3)
        {
          if (v24 <= a3)
          {
            return 1;
          }

          v21 = v23 - 1;
        }

        else
        {
          v22 = v23 + 1;
        }
      }

      while (v22 <= v21);
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v19 = *v4;
  while (1)
  {
    v20 = *v19;
    v19 += 3;
    if (v20 == a3)
    {
      break;
    }

    result = 0;
    if (!--v8)
    {
      return result;
    }
  }

  return 1;
}

void *UNICORN__mfs_CostList_Prune(void *result, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  v4 = result[2] + 32 * a2;
  if (*(v4 + 16) > a3)
  {
    v5 = result;
    *(v4 + 16) = a3;
    *(v4 + 20) = a3;
    result = heap_Realloc(*(*result + 8), *v4, 12 * a3);
    if (result)
    {
      *v4 = result;
    }

    v6 = v5[2] + 32 * v3;
    v9 = *(v6 + 8);
    v8 = (v6 + 8);
    v7 = v9;
    if (v9)
    {
      result = heap_Free(*(*v5 + 8), v7);
      *v8 = 0;
    }
  }

  return result;
}

void *UNICORN__mfs_CostList_FreeUidIndex(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = *(result + 6);
    if (v2)
    {
      v3 = 0;
      v4 = 8;
      do
      {
        v5 = v1[2];
        v6 = *(v5 + v4);
        if (v6)
        {
          result = heap_Free(*(*v1 + 8), v6);
          *(v5 + v4) = 0;
          v2 = *(v1 + 6);
        }

        ++v3;
        v4 += 32;
      }

      while (v3 < v2);
    }
  }

  return result;
}

uint64_t UNICORN__mfs_SparseMtx_Load(uint64_t a1, uint64_t a2)
{
  v2 = 2229280772;
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *a1 = v3;
      v5 = vcvts_n_f32_u32(v4, 2uLL);
      v6 = sqrtf(v5);
      if (v6 <= floorf(v6))
      {
        v9 = v6;
        v10 = v4 >> 2;
        do
        {
          v11 = v9 * v9;
          ++v9;
        }

        while (v11 < v10);
        v8 = v9 - 1;
      }

      else
      {
        v7 = sqrt((v5 + -1.0) * 0.5);
        v8 = v7;
      }

      v2 = 0;
      *(a1 + 8) = v8;
      *(a1 + 12) = v8;
    }
  }

  return v2;
}

uint64_t mfs_FullMtx_Load(void *a1, char *__src, int a3, void *a4, int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (__src)
  {
    cstdlib_memcpy(a1 + 1, __src, 4uLL);
    cstdlib_memcpy(a1 + 12, __src + 4, 4uLL);
    v10 = __src + 8;
    if (a5)
    {
      v11 = *a5 + 8;
      *a5 = v11;
      if (a3)
      {
        cstdlib_memcpy(a4, v10, 4uLL);
        v10 = __src + 12;
        v11 = *a5 + 4;
        *a5 = v11;
      }

      *a1 = v10;
      *a5 = v11 + 4 * *(a1 + 2) * *(a1 + 3);
    }

    else if (a3)
    {
      cstdlib_memcpy(a4, v10, 4uLL);
      *a1 = __src + 12;
    }

    else
    {
      *a1 = v10;
    }
  }

  return 0;
}

uint64_t UnicornSearch_StageTwo_TreeIndex_Sliced(uint64_t a1, uint64_t a2)
{
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  __b = 0u;
  v102 = 0u;
  v3 = a2 + *(a1 + 96) * *(a1 + 92);
  v4 = v3 - 2;
  if (*(*(a1 + 144) + 4 * v4))
  {
    updated = 0;
    *(*(*(*(a1 + 136) + 16) + 32 * v4) + 4) = 0;
  }

  else
  {
    cstdlib_memset(&__b, 0, 0x48uLL);
    *(a1 + 280) = *(*(*(a1 + 128) + 16) + 4 * a2);
    if (*(*(a1 + 112) + 6704) == 0.0)
    {
      LODWORD(updated) = 0;
    }

    else
    {
      updated = mfs_UpdateTargetQuantizedTrajectory_LF0(*(a1 + 104), *(a1 + 120), a1 + 176);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }
    }

    v100 = updated;
    v7 = *(a1 + 336);
    if (v7)
    {
      mfs_TCost_Elf0_Manhattan_TreeIndex(*(a1 + 112), *(a1 + 120), (*(a1 + 120) + 1088), v3 - 2, a1 + 176, *(*(*(a1 + 128) + 64) + 4 * a2), a2, *(a1 + 345) == 1, *(v7 + 4 * (2 * v4)), *(v7 + 4 * ((2 * v4) | 1u)));
    }

    if (*(a1 + 156) || *(a1 + 345) != 1)
    {
      v9 = *(a1 + 112);
      v8 = *(a1 + 120);
      v10 = *(a1 + 100);
      v11 = *(a1 + 380);
      v12 = *(v8 + 1096);
      v13 = *v12;
      cstdlib_memset(&__b, 0, 0x48uLL);
      if (v12[482] == 1)
      {
        v105 = __PAIR64__(v11, v10);
        if (v11)
        {
          if (a2 == 2)
          {
            v14 = 1;
          }

          else
          {
            v14 = v13 + 1 == a2 ? 2 : 4;
          }

          HIDWORD(v104) = v14;
        }

        else
        {
          HIDWORD(v104) = 0;
        }

        *&__b = GetBnfTargetVectorPacked(v8, v4 / *(v9 + 5992), &v103 + 2);
        if (*(v9 + 6752) >= 1)
        {
          if (v3 != 2)
          {
            if (*(*(a1 + 144) + 4 * (v3 - 3)))
            {
              BnfTargetVectorPacked = 0;
            }

            else
            {
              BnfTargetVectorPacked = GetBnfTargetVectorPacked(v8, (v3 - 3) / *(v9 + 5992), &v103 + 3);
            }

            *(&__b + 1) = BnfTargetVectorPacked;
          }

          v16 = (v3 - 1) / *(v9 + 5992);
          if (v16 < v10)
          {
            if (*(*(a1 + 144) + 4 * (v3 - 1)))
            {
              v17 = 0;
            }

            else
            {
              v17 = GetBnfTargetVectorPacked(v8, v16, &v104);
            }

            *&v102 = v17;
          }

          if (*(v9 + 6752) >= 2)
          {
            if (v4 >= 2)
            {
              if (*(*(a1 + 144) + 4 * (v3 - 4)))
              {
                v18 = 0;
              }

              else
              {
                v18 = GetBnfTargetVectorPacked(v8, (v3 - 4) / *(v9 + 5992), &v104 + 1);
              }

              *(&v102 + 1) = v18;
            }

            v19 = v3 / *(v9 + 5992);
            if (v19 < v10)
            {
              if (*(*(a1 + 144) + 4 * v3))
              {
                v20 = 0;
              }

              else
              {
                v20 = GetBnfTargetVectorPacked(v8, v19, &v104 + 2);
              }

              *&v103 = v20;
            }
          }
        }
      }

      v21 = *(a1 + 120);
      switch(HIDWORD(v104))
      {
        case 4:
          v56 = v21[137];
          if (*(v56 + 1928) == 1)
          {
            v57 = *(a1 + 112);
            if (v57[1688])
            {
              v58 = v21[138] + 32 * v4;
              if (*(v58 + 16))
              {
                v59 = 0;
                v60 = 0;
                v61 = 1.0 - *(v21[169] + 4 * v4);
                v99 = *(*(v56 + 568) + 11548) - 1;
                v62 = *v58;
                do
                {
                  if (v57[1496])
                  {
                    v63 = (*v58 + v59 + 8);
                    v64 = v63;
                  }

                  else
                  {
                    v65 = *(v56 + 1064);
                    v66 = *(*v58 + v59 + 8);
                    v63 = (v65 + 4 * (2 * v66));
                    v64 = (v65 + 4 * ((2 * v66) | 1u));
                  }

                  v67 = *(v62 + v59);
                  v68 = *v64;
                  if (*(&__b + 1))
                  {
                    v69 = *(v21[164] + 4);
                    if ((*(v21[144] + 4 * (((v67 - 1) / v57[1498]) >> 5)) >> ((v67 - 1) / v57[1498])))
                    {
                      v70 = *(v21[145] + 4 * *v63);
                    }

                    else
                    {
                      v70 = (*(a1 + 392))(v56, *(a1 + 56), *(&v103 + 3));
                    }

                    v71 = (v69 * v70) + 0.0;
                  }

                  else
                  {
                    v71 = 0.0;
                  }

                  if (v102)
                  {
                    v72 = *(v21[164] + 8);
                    if ((*(v21[144] + 4 * (((v67 + 1) / v57[1498]) >> 5)) >> ((v67 + 1) / v57[1498])))
                    {
                      v73 = *(v21[145] + 4 * v68);
                    }

                    else
                    {
                      v73 = (*(a1 + 392))(v56, *(a1 + 56), *&v104);
                    }

                    v71 = v71 + (v72 * v73);
                  }

                  if (v57[1688] >= 2)
                  {
                    if (*(&v102 + 1) && v67 >= 2)
                    {
                      v74 = *(v21[164] + 12);
                      v71 = v71 + (v74 * (*(a1 + 392))(v56, *(a1 + 56), *(&v104 + 1)));
                    }

                    if (v103 && v67 + 2 <= v99)
                    {
                      v75 = *(v21[164] + 16);
                      v71 = v71 + (v75 * (*(a1 + 392))(v56, *(a1 + 56), *(&v104 + 2)));
                    }
                  }

                  v76 = v21[138] + 32 * v4;
                  v62 = *v76;
                  *(*v76 + v59 + 4) = (v61 * v71) + *(*v76 + v59 + 4);
                  ++v60;
                  v59 += 12;
                }

                while (v60 < *(v76 + 16));
              }
            }
          }

          break;
        case 2:
          v39 = v21[137];
          if (*(v39 + 1928) == 1)
          {
            v40 = *(a1 + 112);
            if (v40[1688])
            {
              v41 = v21[138] + 32 * v4;
              if (*(v41 + 16))
              {
                v42 = 0;
                v43 = 0;
                v44 = 1.0 - *(v21[169] + 4 * v4);
                v45 = *(*(v39 + 568) + 11548) - 1;
                v46 = *v41;
                do
                {
                  if (v40[1496])
                  {
                    v47 = (*v41 + v42 + 8);
                  }

                  else
                  {
                    v47 = (*(v39 + 1064) + 4 * (2 * *(*v41 + v42 + 8)));
                  }

                  v48 = *(v46 + v42);
                  if (*(&__b + 1))
                  {
                    v49 = *(v21[164] + 4);
                    if ((*(v21[144] + 4 * (((v48 - 1) / v40[1498]) >> 5)) >> ((v48 - 1) / v40[1498])))
                    {
                      v50 = *(v21[145] + 4 * *v47);
                    }

                    else
                    {
                      v50 = (*(a1 + 392))(v39, *(a1 + 56), *(&v103 + 3));
                    }

                    v51 = (v49 * v50) + 0.0;
                  }

                  else
                  {
                    v51 = 0.0;
                  }

                  if (v102 && v48 < v45)
                  {
                    v52 = *(v21[164] + 8);
                    v51 = v51 + (v52 * (*(a1 + 392))(v39, *(a1 + 56), *&v104));
                  }

                  if (v40[1688] >= 2)
                  {
                    if (*(&v102 + 1) && v48 >= 2)
                    {
                      v53 = *(v21[164] + 12);
                      v51 = v51 + (v53 * (*(a1 + 392))(v39, *(a1 + 56), *(&v104 + 1)));
                    }

                    if (v103 && v48 + 2 <= v45)
                    {
                      v54 = *(v21[164] + 16);
                      v51 = v51 + (v54 * (*(a1 + 392))(v39, *(a1 + 56), *(&v104 + 2)));
                    }
                  }

                  v55 = v21[138] + 32 * v4;
                  v46 = *v55;
                  *(*v55 + v42 + 4) = (v44 * v51) + *(*v55 + v42 + 4);
                  ++v43;
                  v42 += 12;
                }

                while (v43 < *(v55 + 16));
              }
            }
          }

          break;
        case 1:
          v22 = v21[137];
          if (*(v22 + 1928) == 1)
          {
            v23 = *(a1 + 112);
            if (v23[1688])
            {
              v98 = v21[138] + 32 * v4;
              if (*(v98 + 16))
              {
                v24 = 0;
                v25 = 0;
                v26 = 1.0 - *(v21[169] + 4 * v4);
                v97 = *(*(v22 + 568) + 11548) - 1;
                v27 = *v98;
                do
                {
                  if (v23[1496])
                  {
                    v28 = (*v98 + v24 + 8);
                  }

                  else
                  {
                    v28 = (*(v22 + 1064) + 4 * ((2 * *(*v98 + v24 + 8)) | 1u));
                  }

                  v29 = *(v27 + v24);
                  v30 = *v28;
                  v31 = 0.0;
                  if (*(&__b + 1))
                  {
                    v32 = v29 < 1;
                  }

                  else
                  {
                    v32 = 1;
                  }

                  if (!v32)
                  {
                    v33 = *(v21[164] + 4);
                    v31 = (v33 * (*(a1 + 392))(v22, *(a1 + 56), *(&v103 + 3))) + 0.0;
                  }

                  if (v102)
                  {
                    v34 = v29 + 1;
                    if ((*(v21[144] + 4 * ((v34 / v23[1498]) >> 5)) >> (v34 / v23[1498])))
                    {
                      v31 = v31 + (*(v21[164] + 8) * *(v21[145] + 4 * v30));
                    }

                    else
                    {
                      v35 = (*(a1 + 392))(v22, *(a1 + 56), *&v104);
                      v31 = v31 + (*(v21[164] + 8) * v35);
                      *(v21[144] + 4 * ((v34 / v23[1498]) >> 5)) |= 1 << (v34 / v23[1498]);
                      *(v21[145] + 4 * v30) = v35;
                    }
                  }

                  if (v23[1688] >= 2)
                  {
                    if (*(&v102 + 1) && v29 >= 2)
                    {
                      v36 = *(v21[164] + 12);
                      v31 = v31 + (v36 * (*(a1 + 392))(v22, *(a1 + 56), *(&v104 + 1)));
                    }

                    if (v103 && v29 + 2 <= v97)
                    {
                      v37 = *(v21[164] + 16);
                      v31 = v31 + (v37 * (*(a1 + 392))(v22, *(a1 + 56), *(&v104 + 2)));
                    }
                  }

                  v38 = v21[138] + 32 * v4;
                  v27 = *v38;
                  *(*v38 + v24 + 4) = (v26 * v31) + *(*v38 + v24 + 4);
                  ++v25;
                  v24 += 12;
                }

                while (v25 < *(v38 + 16));
              }
            }
          }

          break;
        default:
          v77 = v21[137];
          if (*(v77 + 1928) == 1)
          {
            v78 = *(a1 + 112);
            if (*(v78 + 6752))
            {
              v79 = v21[138] + 32 * v4;
              if (*(v79 + 16))
              {
                v80 = 0;
                v81 = 0;
                v82 = 1.0 - *(v21[169] + 4 * v4);
                v83 = *(*(v77 + 568) + 11548) - 1;
                v84 = *v79;
                do
                {
                  v85 = *(v84 + v80);
                  if (*(&__b + 1))
                  {
                    v86 = v85 < 1;
                  }

                  else
                  {
                    v86 = 1;
                  }

                  v87 = 0.0;
                  if (!v86)
                  {
                    v88 = *(v21[164] + 4);
                    v87 = (v88 * (*(a1 + 392))(v77, *(a1 + 56), *(&v103 + 3))) + 0.0;
                  }

                  if (v102)
                  {
                    v89 = v85 < v83;
                  }

                  else
                  {
                    v89 = 0;
                  }

                  if (v89)
                  {
                    v90 = *(v21[164] + 8);
                    v87 = v87 + (v90 * (*(a1 + 392))(v77, *(a1 + 56), *&v104));
                  }

                  if (*(v78 + 6752) >= 2)
                  {
                    if (*(&v102 + 1) && v85 >= 2)
                    {
                      v91 = *(v21[164] + 12);
                      v87 = v87 + (v91 * (*(a1 + 392))(v77, *(a1 + 56), *(&v104 + 1)));
                    }

                    if (v103 && v85 + 2 <= v83)
                    {
                      v92 = *(v21[164] + 16);
                      v87 = v87 + (v92 * (*(a1 + 392))(v77, *(a1 + 56), *(&v104 + 2)));
                    }
                  }

                  v93 = v21[138] + 32 * v4;
                  v84 = *v93;
                  *(*v93 + v80 + 4) = (v82 * v87) + *(*v93 + v80 + 4);
                  ++v81;
                  v80 += 12;
                }

                while (v81 < *(v93 + 16));
              }
            }
          }

          break;
      }
    }

    v94 = *(a1 + 136);
    v95 = *(*(a1 + 112) + 5564);
    updated = v100;
    if (*(*(v94 + 16) + 32 * v4 + 16) > v95)
    {
      updated = mfs_CostList_Select(v94, v4, 1, v95);
      UNICORN__mfs_CostList_Prune(*(a1 + 136), v4, *(*(a1 + 112) + 5564));
    }

    UNICORN__log_select_Diag(*(a1 + 56), 11, "costlist(%d)\n");
  }

  return updated;
}

uint64_t select_bet5_loadVoice(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__s2 = 0u;
  v23 = 0u;
  v19[1] = 0;
  v20[0] = a2;
  v20[1] = 1;
  v19[0] = a2;
  if (a5)
  {
    VAOBrokerString = betX_CreateVAOBrokerString(a2, 1, __s2, 0x100uLL, 0);
    v11 = v19;
    if ((VAOBrokerString & 0x80000000) != 0)
    {
      return VAOBrokerString;
    }
  }

  else
  {
    VAOBrokerString = betX_CreateRegularBrokerString(a2, 0, __s2, 0x100uLL);
    v11 = v20;
    if ((VAOBrokerString & 0x80000000) != 0)
    {
      return VAOBrokerString;
    }
  }

  if (a3)
  {
    v12 = cstdlib_strcmp(a3, __s2);
    v13 = *(a1 + 48);
    if (!v12)
    {
      Object = objc_GetObject(v13, __s2, &v21);
      VAOBrokerString = Object;
      if (!a5 && (Object & 0x80000000) == 0)
      {
        objc_ReleaseObject(*(a1 + 48), a3);
        v16 = *(v21 + 32);
        *a4 = v16;
        *(a4 + 8) = 117;
LABEL_18:
        paramc_ParamSetStr(*(a2 + 40), "voicecomponentid", (v16 + 43362));
        paramc_ParamSetInt(*(a2 + 40), "bet5nstatesperphoneme", *(v16 + 11912));
        return VAOBrokerString;
      }

      goto LABEL_12;
    }

    objc_ReleaseObject(v13, a3);
  }

  AddRefCountedObject = objc_GetAddRefCountedObject(*(a1 + 48), __s2, ObjcVoiceOpen, ObjcVoiceClose, v11, &v21);
  VAOBrokerString = AddRefCountedObject;
  if (a5 && (AddRefCountedObject & 0x80000000) != 0)
  {
    v15 = betX_CreateVAOBrokerString(a2, 1, __s2, 0x100uLL, 1);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    VAOBrokerString = objc_GetAddRefCountedObject(*(a1 + 48), __s2, ObjcVoiceOpen, ObjcVoiceClose, v20, &v21);
  }

LABEL_12:
  if ((VAOBrokerString & 0x80000000) == 0)
  {
    v16 = *(v21 + 32);
    *a4 = v16;
    *(a4 + 8) = 117;
    if (!a5)
    {
      goto LABEL_18;
    }
  }

  return VAOBrokerString;
}

uint64_t ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t *a5)
{
  v78 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = 0;
  v9 = *(a5 + 2);
  v10 = *a5;
  __src = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
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
  v49 = 0u;
  v50 = 0u;
  memset(__dst, 0, sizeof(__dst));
  result = InitRsrcFunction(a1, a2, &__src);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memcpy(__dst, __src, 0x1A0uLL);
    v49 = *(v10 + 32);
    v12 = ssftriff_reader_ObjOpen(a1, a2, 2 * (v9 == 0), a3, "SEL5", 1031, &v75);
    if (v12 < 0)
    {
      return (v12 & 0x1FFFu) - 2065686528;
    }

    else
    {
      v13 = heap_Calloc(*(&__dst[0] + 1), 1, 43432);
      v18 = v13;
      if (v13)
      {
        *(a4 + 32) = v13;
        cstdlib_strcpy(v13, a3);
        cstdlib_strcpy((v18 + 14536), a3);
        cstdlib_memset((v18 + 16528), 255, 0x100uLL);
        cstdlib_memset((v18 + 17432), 255, 0x11CuLL);
        cstdlib_memset((v18 + 17760), 255, 0x20uLL);
        *(v18 + 16908) = 1;
        *(v18 + 43362) = 0;
        UNICORN__mfs_InitParam(v18 + 256);
        cstdlib_memset(__b, 0, 0x50uLL);
        *(v18 + 43428) = 0;
        if ((paramc_ParamGetStr(*(&v49 + 1), "bet5odlbnf", &v74) & 0x80000000) == 0 && v74 && *v74 && cstdlib_strchr("yYtT1", *v74))
        {
          *(v18 + 43428) = 1;
        }

        v19 = select_bet5_ParseRiff(__dst, v18, v75, 0, __b, 0, 0);
        if ((v19 & 0x80000000) != 0)
        {
          Data = v19;
          cstdlib_strcpy(__s1, "");
          if (__b[0])
          {
            v43 = 1;
            v44 = __b;
            do
            {
              cstdlib_strcat(__s1, "/");
              cstdlib_strcat(__s1, v44);
              v44 = &__b[5 * v43++];
            }

            while (*v44);
          }

          log_OutPublic(v49, "SELECT_BET5", 58003, "%s%s%s%s%s%x", v39, v40, v41, v42, "file");
        }

        else if (*(v18 + 5071) && *(v18 + 388) > 0)
        {
          v24 = *(v18 + 16848);
          if (v24)
          {
            v25 = *v24;
            if (v25)
            {
              v26 = 0;
              v27 = 1;
              do
              {
                *(v18 + 2984 + 8 * v26) = v25;
                v26 = v27;
                v25 = *(*(v18 + 16848) + 8 * v27++);
              }

              while (v25);
            }
          }

          log_OutText(v49, "SELECT_BET5", 3, 0, "Memory mapped %s: %lu bytes in %lu chunks", v21, v22, v23, a3);
          inited = UNICORN__mfs_InitData(__dst, (v18 + 11912), v18 + 256);
          if ((inited & 0x80000000) != 0)
          {
            Data = inited;
          }

          else
          {
            Data = UNICORN__mfs_LoadData(__dst, a3, *(v18 + 43428), (v18 + 11912), (v18 + 256));
            if ((Data & 0x80000000) == 0)
            {
              *(v18 + 17962) = *(v18 + 11912);
              *(v18 + 17964) = *(v18 + 6240);
              *(v18 + 17134) = 33620481;
              *(v18 + 17187) = 1;
              *(v18 + 17139) = 0x101010101010101;
              *(v18 + 17147) = 0x101010101010101;
              *(v18 + 17157) = 16843009;
              *(v18 + 17161) = 1;
              *(v18 + 17163) = 16843009;
              *(v18 + 17166) = 16843009;
              *(v18 + 17185) = -1;
              *(v18 + 17156) = 8;
              *(v18 + 17178) = 9;
              *(v18 + 17195) = 0x101010101010101;
              *(v18 + 17208) = 257;
              *(v18 + 17204) = 16843009;
              *&v37 = 0x101010101010101;
              *(&v37 + 1) = 0x101010101010101;
              *(v18 + 17313) = v37;
              *(v18 + 17285) = v37;
              *(v18 + 17301) = v37;
              *(v18 + 17253) = v37;
              *(v18 + 17269) = v37;
              v38 = *(&v49 + 1);
              *__s1 = 0;
              if ((paramc_ParamGetUInt(*(&v49 + 1), "bet5underrunthreshold", __s1) & 0x80000000) == 0)
              {
                *(v18 + 6180) = *__s1;
              }

              if ((paramc_ParamGetUInt(v38, "bet5earlyemissionmaxhypotheses", __s1) & 0x80000000) == 0)
              {
                *(v18 + 6184) = *__s1;
              }

              if ((paramc_ParamGetUInt(v38, "bet5earlyemissionmaxphonambiguitywindow", __s1) & 0x80000000) == 0)
              {
                *(v18 + 6188) = *__s1;
              }
            }
          }
        }

        else
        {
          log_OutPublic(v49, "SELECT_BET5", 71002, "%s%s", v20, v21, v22, v23, "file");
          Data = -2065686524;
        }
      }

      else
      {
        log_OutPublic(v49, "SELECT_BET5", 71000, 0, v14, v15, v16, v17, v47);
        Data = -2065686518;
      }

      if (v75)
      {
        ssftriff_reader_ObjClose(v75, v29, v30, v31, v32, v33, v34, v35);
        v75 = 0;
      }

      v45 = Data & 0x7FF01FFF;
      if ((Data & 0x7FF01FFF) == 0xA200014)
      {
        result = 2229280772;
      }

      else
      {
        result = Data;
      }

      if (v45 == 169869332)
      {
        v46 = 0;
      }

      else
      {
        v46 = v18;
      }

      if (v18)
      {
        if (v45 == 169869332)
        {
          heap_Free(*(&__dst[0] + 1), v18);
          v46 = 0;
          result = 2229280772;
        }
      }

      *(a4 + 32) = v46;
    }
  }

  return result;
}

uint64_t ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v33 = 0;
  inited = InitRsrcFunction(a1, a2, &v33);
  v5 = inited;
  if (a3 && (inited & 0x80000000) == 0)
  {
    v6 = *(a3 + 32);
    v7 = *(v6 + 16848);
    if (v7 && *v7)
    {
      v8 = (v6 + 2984);
      v9 = 8;
      do
      {
        *v8++ = 0;
        v10 = *(*(v6 + 16848) + v9);
        v9 += 8;
      }

      while (v10);
    }

    v11 = *(v6 + 17752);
    if (v11)
    {
      heap_Free(v33[1], v11);
      *(v6 + 17752) = 0;
    }

    uselect_FreeRiffStringTable(v33, *(v6 + 5296));
    *(v6 + 5296) = 0;
    uselect_FreeRiffStringTable(v33, *(v6 + 17816));
    uselect_FreeRiffStringTable(v33, *(v6 + 17808));
    v12 = v33;
    v13 = *(v6 + 17720);
    v14 = *(v6 + 17728);
    v15 = *(v6 + 17736);
    if (v13)
    {
      v16 = *v13;
      if (*v13)
      {
        v17 = 0;
        do
        {
          heap_Free(v12[1], v16);
          v16 = v13[++v17];
        }

        while (v16);
      }

      heap_Free(v12[1], v13);
    }

    if (v14)
    {
      v18 = *v14;
      if (*v14)
      {
        v19 = 0;
        v20 = v14;
        do
        {
          v21 = *v18;
          if (*v18)
          {
            v22 = 0;
            do
            {
              heap_Free(v12[1], v21);
              ++v22;
              v18 = *v20;
              v21 = (*v20)[v22];
            }

            while (v21);
          }

          heap_Free(v12[1], v18);
          v20 = &v14[++v19];
          v18 = *v20;
        }

        while (*v20);
      }

      heap_Free(v12[1], v14);
    }

    if (v15)
    {
      v23 = *v15;
      if (*v15)
      {
        v24 = 0;
        do
        {
          heap_Free(v12[1], v23);
          v23 = v15[++v24];
        }

        while (v23);
      }

      heap_Free(v12[1], v15);
    }

    uselect_FreeRiffStringTable(v33, *(v6 + 16848));
    uselect_FreeRiffStringTable(v33, *(v6 + 16856));
    mfs_DeInitDataAndParam(v33, v6 + 11912, (v6 + 256));
    uselect_FreeRiffStringTable(v33, *(v6 + 42800));
    v25 = *(v6 + 42792);
    if (v25)
    {
      v26 = v33;
      if (*(v6 + 42784))
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = *(v6 + 42792);
          v30 = *(v29 + v27);
          if (v30)
          {
            heap_Free(v26[1], v30);
            v29 = *(v6 + 42792);
          }

          uselect_FreeRiffStringTable(v26, *(v29 + v27 + 8));
          ++v28;
          v27 += 16;
        }

        while (v28 < *(v6 + 42784));
        v25 = *(v6 + 42792);
      }

      heap_Free(v26[1], v25);
      *(v6 + 42792) = 0;
      *(v6 + 42784) = 0;
    }

    if (*(v6 + 43360))
    {
      v31 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(v6 + 42848 + 8 * v31++));
      }

      while (v31 < *(v6 + 43360));
    }

    *(v6 + 43360) = 0;
    *v6 = 0;
    heap_Free(v33[1], v6);
  }

  return v5;
}

uint64_t select_bet5_GetUSVoice(uint64_t a1, int a2)
{
  if (safeh_HandleCheck(a1, a2, 117, 43432) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3 + 14384;
  }

  else
  {
    return 0;
  }
}

uint64_t select_bet5_GetVParam(uint64_t a1, int a2)
{
  if (safeh_HandleCheck(a1, a2, 117, 43432) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3 + 256;
  }

  else
  {
    return 0;
  }
}

uint64_t select_bet5_GetNNFeatexData(uint64_t a1, int a2)
{
  if (safeh_HandleCheck(a1, a2, 117, 43432) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3 + 42784;
  }

  else
  {
    return 0;
  }
}

uint64_t select_bet5_GetTransWeightRulesDiph(uint64_t a1, int a2, _DWORD *a3)
{
  if (safeh_HandleCheck(a1, a2, 117, 43432) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a3 && v5)
  {
    *a3 = *(v5 + 42824);
    return *(v5 + 42816);
  }

  if (v5)
  {
    return *(v5 + 42816);
  }

  return 0;
}

uint64_t select_bet5_GetTransWeightRulesPhon(uint64_t a1, int a2, _DWORD *a3)
{
  if (safeh_HandleCheck(a1, a2, 117, 43432) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a3 && v5)
  {
    *a3 = *(v5 + 42840);
    return *(v5 + 42832);
  }

  if (v5)
  {
    return *(v5 + 42832);
  }

  return 0;
}

uint64_t select_bet5_ParseRiff(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, unsigned int a7)
{
  v7 = a6;
  v12 = a1;
  v425 = *MEMORY[0x277D85DE8];
  v407 = 0;
  v405 = (a2 + 42784);
  v410 = (a2 + 16880);
  v408 = a2 + 40960;
  v421 = 0;
  v420 = 0;
  *__src = 0;
  v415 = 5 * a4;
  v377 = a2 + 7064;
  v379 = a2 + 5700;
  v378 = a2 + 5720;
  v391 = a2 + 5680;
  v390 = a2 + 5740;
  v389 = a2 + 5784;
  v388 = a2 + 6304;
  v387 = a2 + 6264;
  v386 = a2 + 6284;
  v385 = a2 + 6336;
  v384 = a2 + 6356;
  v401 = a2 + 460;
  v402 = a2 + 42848;
  v406 = a2 + 17760;
  v404 = a2 + 17432;
  v413 = (a2 + 11824);
  v403 = (a2 + 14986);
  v409 = a2 + 16528;
  v382 = a2 + 480;
  v383 = a2 + 2264;
  v380 = a2 + 1664;
  v381 = a2 + 984;
  v393 = a2 + 500;
  v394 = a2 + 1544;
  v396 = a2 + 1404;
  v397 = a2 + 440;
  v395 = a2 + 1384;
  v399 = a2 + 1504;
  v400 = a2 + 1464;
  v398 = a2 + 1424;
  v392 = a2 + 400;
  do
  {
    LODWORD(v13) = ssftriff_reader_OpenChunk(a3, __src, &v421, 0);
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strcpy(&a5[v415], __src);
    if (a4 == 1)
    {
      if (!cstdlib_strcmp(__src, "VSTG"))
      {
        LODWORD(__s) = 0;
        *__s1 = 0;
        if (v7)
        {
          *__s1 = v7 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v421, __s1, v20);
          v13 = v49;
          if ((v49 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        __dst[0] = 0;
        __s2[0] = 0;
        v50 = v421;
        if (v421)
        {
          v51 = 0;
          do
          {
            LODWORD(__s) = 1024;
            LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s1, v50, v51, __s2, &__s);
            if ((v13 & 0x80000000) == 0 && v51 < v421)
            {
              v51 += __s;
              LODWORD(__s) = 1024;
              LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s1, v421, v51, __dst, &__s);
            }

            if ((v13 & 0x80000000) != 0)
            {
              break;
            }

            v52 = __s;
            if (!cstdlib_strcmp(__s2, "MEANDURINSECS"))
            {
              cstdlib_atof(__dst);
              *&v53 = v53;
              *v413 = LODWORD(v53);
            }

            if (!cstdlib_strcmp(__s2, "STDEVDURINSECS"))
            {
              cstdlib_atof(__dst);
              *&v54 = v54;
              *(a2 + 11828) = LODWORD(v54);
            }

            if (!cstdlib_strcmp(__s2, "MEANDURINSECSLOG"))
            {
              cstdlib_atof(__dst);
              *&v55 = v55;
              *(a2 + 11832) = LODWORD(v55);
            }

            if (!cstdlib_strcmp(__s2, "STDEVDURINSECSLOG"))
            {
              cstdlib_atof(__dst);
              *&v56 = v56;
              *(a2 + 11836) = LODWORD(v56);
            }

            if (!cstdlib_strcmp(__s2, "MEANLEFTPITCH"))
            {
              cstdlib_atof(__dst);
              *&v57 = v57;
              *(a2 + 11840) = LODWORD(v57);
            }

            if (!cstdlib_strcmp(__s2, "STDEVLEFTPITCH"))
            {
              cstdlib_atof(__dst);
              *&v58 = v58;
              *(a2 + 11844) = LODWORD(v58);
            }

            if (!cstdlib_strcmp(__s2, "MEANRIGHTPITCH"))
            {
              cstdlib_atof(__dst);
              *&v59 = v59;
              *(a2 + 11848) = LODWORD(v59);
            }

            if (!cstdlib_strcmp(__s2, "STDEVRIGHTPITCH"))
            {
              cstdlib_atof(__dst);
              *&v60 = v60;
              *(a2 + 11852) = LODWORD(v60);
            }

            if (!cstdlib_strcmp(__s2, "MEANSLOPEPITCH"))
            {
              cstdlib_atof(__dst);
              *&v61 = v61;
              *(a2 + 11856) = LODWORD(v61);
            }

            if (!cstdlib_strcmp(__s2, "STDEVSLOPEPITCH"))
            {
              cstdlib_atof(__dst);
              *&v62 = v62;
              *(a2 + 11860) = LODWORD(v62);
            }

            v51 += v52;
            v50 = v421;
          }

          while (v51 < v421);
        }

        goto LABEL_816;
      }

      if (!cstdlib_strcmp(__src, "VSTC"))
      {
        *__s2 = 0;
        if (v7)
        {
          *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v421, __s2, v21);
          v13 = v84;
          if ((v84 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        if (v421 < 4)
        {
          LODWORD(v13) = -2065686524;
        }

        if ((v13 & 0x80000000) == 0)
        {
          cstdlib_memcpy((a2 + 11864), *__s2, 4uLL);
          *__s2 += 4;
          LODWORD(v13) = -2065686524;
          if (v421 >= 4 * (*(a2 + 11864) + 1))
          {
            LODWORD(v13) = StatValues_AllocMemoryForClusterCount(v12, v413);
            if ((v13 & 0x80000000) == 0)
            {
              if (*(a2 + 11864))
              {
                v85 = 0;
                v86 = 0;
                v87 = *__s2;
                do
                {
                  cstdlib_memcpy((*(a2 + 11872) + v85), v87, 4uLL);
                  v87 = (*__s2 + 4);
                  *__s2 += 4;
                  ++v86;
                  v85 += 4;
                }

                while (v86 < *(a2 + 11864));
              }
            }
          }
        }

        goto LABEL_816;
      }

      if (!cstdlib_strcmp(__src, "VSC1") || !cstdlib_strcmp(__src, "VSC2"))
      {
        *__s2 = 0;
        if (v7)
        {
          *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v421, __s2, v22);
          v13 = v66;
          if ((v66 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        v67 = *(a2 + 11864);
        if (v67)
        {
          v68 = 0;
          v69 = *(a2 + 11872);
          do
          {
            v70 = *v69++;
            v68 += 4 * v70 + 4;
            --v67;
          }

          while (v67);
        }

        else
        {
          v68 = 0;
        }

        if (v421 != v68)
        {
          LODWORD(v13) = -2065686524;
        }

        if ((v13 & 0x80000000) == 0)
        {
          v71 = cstdlib_strcmp(__src, "VSC1") ? 11888 : 11880;
          LODWORD(v13) = StatValues_AllocMemoryForClusterStatValues(v12, (a2 + v71), *(a2 + 11864), *(a2 + 11872));
          if ((v13 & 0x80000000) == 0)
          {
            v72 = *(a2 + 11864);
            if (v72)
            {
              for (i = 0; i < v72; ++i)
              {
                v74 = *(*(a2 + 11872) + 4 * i);
                v75 = __CFADD__(v74, 1);
                v76 = v74 + 1;
                if (!v75)
                {
                  v77 = 0;
                  v78 = *__s2;
                  v79 = 4 * v76;
                  do
                  {
                    cstdlib_memcpy((*(*(a2 + v71) + 8 * i) + v77), v78, 4uLL);
                    v78 = (*__s2 + 4);
                    *__s2 += 4;
                    v77 += 4;
                  }

                  while (v79 != v77);
                  v72 = *(a2 + 11864);
                  v7 = a6;
                  v12 = a1;
                }
              }
            }
          }
        }

        goto LABEL_816;
      }

      if (!cstdlib_strcmp(a5, "FEEX"))
      {
        if (!cstdlib_strcmp(__src, "VCAT"))
        {
          *__s2 = 0;
          if (v7)
          {
            *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v88);
            if ((v276 & 0x80000000) != 0)
            {
              return v276;
            }
          }

LABEL_754:
          v40 = v12;
          v41 = a2;
          v42 = a3;
          v43 = 2;
LABEL_83:
          RiffStringTable = select_bet5_ParseRiff(v40, v41, v42, v43, a5, 0, 0);
          goto LABEL_746;
        }

        if (!cstdlib_strcmp(__src, "VBOP"))
        {
          *__s2 = 0;
          if (v7)
          {
            v282 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
            *__s2 = v282;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v89);
            v13 = v301;
            if ((v301 & 0x80000000) != 0)
            {
              return v13;
            }

            v282 = *__s2;
          }

          if (v421 >= 0xF8)
          {
            v302 = 248;
          }

          else
          {
            v302 = v421;
          }

          v303 = 16884;
LABEL_790:
          cstdlib_memcpy((a2 + v303), v282, v302);
          goto LABEL_816;
        }

        if (!cstdlib_strcmp(__src, "PRE3"))
        {
          *__dst = 0;
          *__s2 = 0;
          if (v7)
          {
            *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v90);
            v13 = v309;
            if ((v309 & 0x80000000) != 0)
            {
              return v13;
            }
          }

          if (v421 >= 2)
          {
            v310 = 0;
            do
            {
              cstdlib_memcpy(__dst, (*__s2 + 2 * v310), 2uLL);
              if (*__dst < 0x47u)
              {
                *(v404 + 4 * *__dst) = 1;
              }

              else
              {
                log_OutText(v12[4], "SELECT_BET5", 3, 0, "Unknown preselection feature: %u for %s", v311, v312, v313, *__dst);
              }

              ++v310;
            }

            while (v421 >> 1 > v310);
          }

          goto LABEL_816;
        }

        if (!cstdlib_strcmp(__src, "TRA3"))
        {
          *__dst = 0;
          *__s2 = 0;
          if (v7)
          {
            *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v91);
            v13 = v322;
            if ((v322 & 0x80000000) != 0)
            {
              return v13;
            }
          }

          if (v421 >= 2)
          {
            v323 = 0;
            do
            {
              cstdlib_memcpy(__dst, (*__s2 + 2 * v323), 2uLL);
              if (*__dst < 8u)
              {
                *(v406 + 4 * *__dst) = 1;
              }

              else
              {
                log_OutText(v12[4], "SELECT_BET5", 3, 0, "Unknown transition feature: %u for %s", v324, v325, v326, *__dst);
              }

              ++v323;
            }

            while (v421 >> 1 > v323);
          }

          goto LABEL_816;
        }

        if (!cstdlib_strcmp(__src, "TRAF"))
        {
          *__dst = 0;
          *__s2 = 0;
          if (v7)
          {
            v308 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
            *__s2 = v308;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v92);
            if ((v276 & 0x80000000) != 0)
            {
              return v276;
            }

            v308 = *__s2;
          }

          cstdlib_memcpy(__dst, v308, 4uLL);
          *(v410 + 432) = *__dst;
          ssftriff_reader_Seek(a3, 4u, 1);
          v337 = heap_Calloc(v12[1], 12, *(v410 + 432));
          *(a2 + 17752) = v337;
          if (!v337)
          {
            return 2229280778;
          }

LABEL_869:
          v263 = select_bet5_ParseRiff(v12, a2, a3, 2, a5, 0, 0);
LABEL_709:
          LODWORD(v13) = v263;
          goto LABEL_816;
        }

        if (!cstdlib_strcmp(__src, "PHM3"))
        {
          *__s2 = 0;
          if (v7)
          {
            v282 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
            *__s2 = v282;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v93);
            v13 = v341;
            if ((v341 & 0x80000000) != 0)
            {
              return v13;
            }

            v282 = *__s2;
          }

          if (v421 >= 0x100)
          {
            v302 = 256;
          }

          else
          {
            v302 = v421;
          }

          v303 = 5036;
          goto LABEL_790;
        }

        if (!cstdlib_strcmp(__src, "CTXR"))
        {
          goto LABEL_754;
        }

        if (!cstdlib_strcmp(__src, "NNFE"))
        {
          goto LABEL_869;
        }

        goto LABEL_813;
      }

      if (cstdlib_strcmp(a5, "STM3"))
      {
LABEL_813:
        cstdlib_strcpy(__s2, "");
        v314 = 0;
        do
        {
          cstdlib_strcat(__s2, "/");
          cstdlib_strcat(__s2, &a5[5 * v314++]);
        }

        while (a4 >= v314);
        log_OutText(v12[4], "SELECT_BET5", 3, 0, "Unknown data: %s for %s", v315, v316, v317, __s2);
        goto LABEL_816;
      }

      *__s1 = 0;
      v23 = *(a2 + 388);
      if (cstdlib_strcmp(__src, "STC3"))
      {
        if (cstdlib_strcmp(__src, "TRE3"))
        {
          if (cstdlib_strcmp(__src, "PDF3"))
          {
            if (cstdlib_strcmp(__src, "WIN3"))
            {
              if (cstdlib_strcmp(__src, "STC3") && cstdlib_strcmp(__src, "STC4"))
              {
                if (cstdlib_strcmp(__src, "STW4"))
                {
                  if (cstdlib_strcmp(__src, "UNP4"))
                  {
                    if (cstdlib_strcmp(__src, "PCI4"))
                    {
                      if (cstdlib_strcmp(__src, "JCI4"))
                      {
                        if (cstdlib_strcmp(__src, "JCS4"))
                        {
                          if (cstdlib_strcmp(__src, "JTYP"))
                          {
                            if (cstdlib_strcmp(__src, "JFSM"))
                            {
                              if (cstdlib_strcmp(__src, "FSMR"))
                              {
                                if (cstdlib_strcmp(__src, "JCBK"))
                                {
                                  goto LABEL_223;
                                }

                                v28 = v421;
                                v29 = a2;
                                v30 = a3;
                                v31 = 24;
                              }

                              else
                              {
                                v28 = v421;
                                v29 = a2;
                                v30 = a3;
                                v31 = 16;
                              }
                            }

                            else
                            {
                              v28 = v421;
                              v29 = a2;
                              v30 = a3;
                              v31 = 9;
                            }
                          }

                          else
                          {
                            v28 = v421;
                            v29 = a2;
                            v30 = a3;
                            v31 = 14;
                          }
                        }

                        else
                        {
                          v28 = v421;
                          v29 = a2;
                          v30 = a3;
                          v31 = 7;
                        }
                      }

                      else
                      {
                        v28 = v421;
                        v29 = a2;
                        v30 = a3;
                        v31 = 6;
                      }

                      MfsData = select_bet5_LoadMfsData(v29, v30, v31, v23, v28, v7, a7, 0);
                    }

                    else
                    {
                      MfsData = select_bet5_ParseRiff(v12, a2, a3, 2, a5, v7, a7);
                    }

                    goto LABEL_810;
                  }

                  if (v7)
                  {
                    v344 = v421;
                    Position = ssftriff_reader_GetPosition(a3);
                    LODWORD(v13) = 0;
                    v346 = v377 + 24 * v23;
                    *(v346 + 368) = v7 + Position - a7;
                    *(v346 + 376) = v344;
                    v12 = a1;
                  }

                  else
                  {
                    LODWORD(v13) = -2065686527;
                  }
                }

                else
                {
                  *__s2 = 0;
                  if (v7)
                  {
                    v340 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
                    *__s2 = v340;
                  }

                  else
                  {
                    ssftriff_reader_GetChunkData(a3, v421, __s2, v27);
                    v13 = v349;
                    if ((v349 & 0x80000000) != 0)
                    {
                      return v13;
                    }

                    v340 = *__s2;
                  }

                  cstdlib_memcpy((v379 + 4 * v23), v340, 4uLL);
                  *__s2 += 4;
                  cstdlib_memcpy((v378 + 4 * v23), *__s2, 4uLL);
                }
              }

              else
              {
                LODWORD(__s) = 0;
                *__dst = 0;
                if (v7)
                {
                  v306 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
                  *__dst = v306;
                }

                else
                {
                  ssftriff_reader_GetChunkData(a3, v421, __dst, v26);
                  v13 = v334;
                  if ((v334 & 0x80000000) != 0)
                  {
                    return v13;
                  }

                  v306 = *__dst;
                }

                cstdlib_memcpy((v391 + 4 * v23), v306, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v390 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v389 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v388 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v387 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v386 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v385 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                cstdlib_memcpy((v384 + 4 * v23), *__dst, 4uLL);
                *__dst += 4;
                if (*(v401 + 4 * v23) >= 1)
                {
                  v335 = 0;
                  v336 = *__s1;
                  do
                  {
                    __s2[0] = 0;
                    LODWORD(__s) = 256;
                    LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__dst, v421, v336, __s2, &__s);
                    if ((v13 & 0x80000000) != 0)
                    {
                      break;
                    }

                    *(*(v400 + 8 * v23) + 8 * v335) = UNICORN__heap_StrDup(v12[1], __s2);
                    if (!*(*(v400 + 8 * v23) + 8 * v335))
                    {
                      goto LABEL_865;
                    }

                    v336 = *__s1 + __s;
                    *__s1 += __s;
                    ++v335;
                  }

                  while (v335 < *(v401 + 4 * v23));
                }
              }

              goto LABEL_811;
            }

            v307 = *(v382 + 4 * v23);
            v285 = v383 + 120 * v23 + 24 * v307;
            *(v382 + 4 * v23) = v307 + 1;
          }

          else
          {
            *__dst = 0;
            if (v7)
            {
              v289 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
              *__dst = v289;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v421, __dst, v25);
              if ((v276 & 0x80000000) != 0)
              {
                return v276;
              }

              v289 = *__dst;
            }

            *__s1 = 256;
            LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, v289, v421, 0, __s2, __s1);
            if ((v13 & 0x80000000) != 0)
            {
              v285 = 0;
            }

            else
            {
              v320 = UNICORN__heap_StrDup(v12[1], __s2);
              v321 = *(v393 + 4 * v23);
              *(v381 + 40 * v23 + 8 * v321) = v320;
              if ((__s1[0] & 3) != 0)
              {
                *__s1 -= *__s1 | 0xFFFFFFFC;
              }

              v285 = v380 + 120 * v23 + 24 * v321;
              *(v393 + 4 * v23) = v321 + 1;
            }
          }
        }

        else
        {
          v285 = v394 + 24 * v23;
        }

        v105 = 1;
        if ((v13 & 0x80000000) != 0 || !v285)
        {
          goto LABEL_812;
        }

        *__s2 = 0;
        if (v7)
        {
          v327 = ssftriff_reader_GetPosition(a3);
          v328 = *__s1;
          *(v285 + 8) = v7 + v327 - a7 + *__s1;
          v329 = v421 - v328;
        }

        else
        {
          v330 = *(v408 + 2400);
          LODWORD(v13) = -2065686524;
          if (v330 > 0x3F)
          {
            goto LABEL_811;
          }

          if (*__s1)
          {
            ssftriff_reader_Seek(a3, *__s1, 1);
            v330 = *(v408 + 2400);
          }

          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v330), __s2);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_811;
          }

          ++*(v408 + 2400);
          v331 = v421;
          *(v408 + 1884) += v421;
          *(v285 + 8) = *__s2;
          v329 = v331 - *__s1;
        }

        *(v285 + 16) = v329;
      }

      else
      {
        LODWORD(__s) = 0;
        *__dst = 0;
        if (v7)
        {
          v281 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
          *__dst = v281;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v421, __dst, v24);
          v13 = v290;
          if ((v290 & 0x80000000) != 0)
          {
            return v13;
          }

          v281 = *__dst;
        }

        cstdlib_memcpy((v397 + 4 * v23), &v281[*__s1], 4uLL);
        *__s1 += 4;
        cstdlib_memcpy((v401 + 4 * v23), (*__dst + *__s1), 4uLL);
        v291 = *__s1;
        *__s1 += 4;
        v292 = *__dst;
        *(v396 + 4 * v23) = *(*__dst + *__s1) != 0;
        v293 = (v291 + 5);
        *__s1 = v293;
        cstdlib_memcpy((v395 + 4 * v23), &v292[v293], 4uLL);
        v294 = *__s1 + 4;
        *__s1 += 4;
        v376 = (v401 + 4 * v23);
        v295 = *v376;
        if (v295 >= 1)
        {
          v296 = heap_Calloc(v12[1], v295, 8);
          *(v399 + 8 * v23) = v296;
          if (!v296)
          {
            LODWORD(v13) = -2065686518;
          }

          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_811;
          }

          v297 = heap_Calloc(v12[1], *v376, 8);
          *(v398 + 8 * v23) = v297;
          if (!v297)
          {
            LODWORD(v13) = -2065686518;
            goto LABEL_811;
          }

          v298 = heap_Calloc(v12[1], *v376, 8);
          *(v400 + 8 * v23) = v298;
          if (!v298)
          {
            goto LABEL_865;
          }

          v294 = *__s1;
        }

        __s2[0] = 0;
        LODWORD(__s) = 256;
        LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__dst, v421, v294, __s2, &__s);
        if ((v13 & 0x80000000) == 0)
        {
          v299 = UNICORN__heap_StrDup(v12[1], __s2);
          *(v392 + 8 * v23) = v299;
          *__s1 += __s;
          if (!v299)
          {
            goto LABEL_865;
          }

          if (*v376 >= 1)
          {
            v300 = 0;
            while (1)
            {
              __s2[0] = 0;
              LODWORD(__s) = 256;
              MfsData = ssftriff_reader_ReadStringZ(a3, *__dst, v421, *__s1, __s2, &__s);
              if (MfsData < 0)
              {
                goto LABEL_810;
              }

              *(*(v399 + 8 * v23) + 8 * v300) = UNICORN__heap_StrDup(v12[1], __s2);
              if (!*(*(v399 + 8 * v23) + 8 * v300))
              {
                goto LABEL_865;
              }

              *__s1 += __s;
              __s2[0] = 0;
              LODWORD(__s) = 256;
              LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__dst, v421, *__s1, __s2, &__s);
              if ((v13 & 0x80000000) == 0)
              {
                *(*(v398 + 8 * v23) + 8 * v300) = UNICORN__heap_StrDup(v12[1], __s2);
                if (!*(*(v398 + 8 * v23) + 8 * v300))
                {
                  goto LABEL_865;
                }

                *__s1 += __s;
                if (++v300 < *v376)
                {
                  continue;
                }
              }

              break;
            }
          }
        }
      }

LABEL_811:
      v105 = 1;
      goto LABEL_812;
    }

    if (a4)
    {
      if (cstdlib_strcmp(a5, "FEEX") || cstdlib_strcmp(a5 + 5, "VCAT"))
      {
        if (!cstdlib_strcmp(a5, "FEEX") && !cstdlib_strcmp(a5 + 5, "TRAF") && !cstdlib_strcmp(__src, "FEAT"))
        {
          *__dst = 0;
          *__s2 = 0;
          if (v7)
          {
            v102 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
            *__s2 = v102;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v421, __s2, v33);
            v13 = v266;
            if ((v266 & 0x80000000) != 0)
            {
              return v13;
            }

            v102 = *__s2;
          }

          cstdlib_memcpy(__dst, v102, 2uLL);
          v271 = (*__s2 + 2);
          *__s2 += 2;
          v272 = *__dst;
          if (*__dst >= 8u)
          {
            log_OutPublic(v12[4], "SELECT_BET5", 58010, "%s%hu", v267, v268, v269, v270, "feature");
            return 2229280772;
          }

          *(v406 + 4 * *__dst) = v407;
          v273 = (*(a2 + 17752) + 12 * v407);
          *v273 = v272;
          cstdlib_memcpy(v273 + 2, v271, 2uLL);
          *__s2 += 2;
          cstdlib_memcpy((*(a2 + 17752) + 12 * v407++ + 4), *__s2, 4uLL);
          goto LABEL_816;
        }

        if (!cstdlib_strcmp(a5, "FEEX") && !cstdlib_strcmp(a5 + 5, "CTXR"))
        {
          if (!cstdlib_strcmp(__src, "RULF"))
          {
            *__s2 = 0;
            if (v7)
            {
              v103 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
              *__s2 = v103;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v421, __s2, v63);
              if ((v276 & 0x80000000) != 0)
              {
                return v276;
              }

              v103 = *__s2;
            }

            v277 = v421;
            v278 = 17808;
            goto LABEL_745;
          }

          if (!cstdlib_strcmp(__src, "RULT"))
          {
            *__s2 = 0;
            if (v7)
            {
              v103 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
              *__s2 = v103;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v421, __s2, v64);
              if ((v276 & 0x80000000) != 0)
              {
                return v276;
              }

              v103 = *__s2;
            }

            v277 = v421;
            v278 = 17816;
LABEL_745:
            RiffStringTable = select_bet5_LoadRiffStringTable(v12, a3, v103, v277, (a2 + v278));
LABEL_746:
            LODWORD(v13) = RiffStringTable;
            goto LABEL_816;
          }

          if (!cstdlib_strcmp(__src, "TRD4"))
          {
            v274 = *(v408 + 2400);
            if (v274 <= 0x3F)
            {
              LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v274), (a2 + 42816));
              if ((v13 & 0x80000000) == 0)
              {
                ++*(v408 + 2400);
                v275 = v421;
                *(v408 + 1884) += v421;
                *(v405 + 10) = v275 / 0xC;
              }

              goto LABEL_816;
            }

LABEL_912:
            LODWORD(v13) = -2065686524;
            goto LABEL_816;
          }

          if (!cstdlib_strcmp(__src, "TRP4"))
          {
            v65 = *(v408 + 2400);
            if (v65 <= 0x3F)
            {
              LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v65), (a2 + 42832));
              if ((v13 & 0x80000000) == 0)
              {
                ++*(v408 + 2400);
                v288 = v421;
                *(v408 + 1884) += v421;
                *(v405 + 14) = v288 / 0xC;
              }

              goto LABEL_816;
            }

LABEL_133:
            LODWORD(v13) = -2065686524;
            goto LABEL_816;
          }

          goto LABEL_813;
        }

        if (cstdlib_strcmp(a5, "FEEX") || cstdlib_strcmp(a5 + 5, "NNFE"))
        {
          if (!cstdlib_strcmp(a5, "STM3") && !cstdlib_strcmp(a5 + 5, "PCI4"))
          {
            v35 = *(a2 + 388);
            if (!cstdlib_strcmp(__src, "PCII"))
            {
              v36 = v421;
              v37 = a2;
              v38 = a3;
              v39 = 4;
              goto LABEL_708;
            }

            if (!cstdlib_strcmp(__src, "PCIL"))
            {
              v36 = v421;
              v37 = a2;
              v38 = a3;
              v39 = 5;
LABEL_708:
              v263 = select_bet5_LoadMfsData(v37, v38, v39, v35, v36, v7, a7, 0);
              goto LABEL_709;
            }
          }

          goto LABEL_813;
        }

        *__s2 = 0;
        if (v7)
        {
          *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v421, __s2, v34);
          v13 = v104;
          if ((v104 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        if (cstdlib_strcmp(__src, "NNLT"))
        {
          if (cstdlib_strcmp(__src, "NNUF"))
          {
LABEL_223:
            v105 = 0;
LABEL_812:
            if (v105)
            {
              goto LABEL_816;
            }

            goto LABEL_813;
          }

          cstdlib_memcpy((a2 + 42808), *__s2, 2uLL);
          v95 = *__s2;
          v96 = v421;
          v97 = 42800;
LABEL_713:
          v113 = (a2 + v97);
LABEL_714:
          MfsData = select_bet5_LoadRiffStringTable(v12, a3, v95, v96, v113);
          goto LABEL_810;
        }

        v106 = *v405;
        LODWORD(v13) = -2065686524;
        if (v106 <= 0x10)
        {
          v107 = *__s2;
          v108 = v421;
          if (*(v405 + 1))
          {
LABEL_228:
            *v405 = v106 + 1;
            *__dst = 0;
            StringW = ssftriff_reader_ReadStringW(a3, v107, v108, 0, 0, __dst);
            if ((StringW & 0x80000000) == 0 || (LODWORD(v13) = StringW, (StringW & 0x1FFF) == 9))
            {
              v111 = heap_Alloc(v12[1], *__dst);
              *(*(v405 + 1) + 16 * *v405 - 16) = v111;
              if (!v111)
              {
                goto LABEL_865;
              }

              MfsData = ssftriff_reader_ReadStringW(a3, v107, v108, 0, v111, __dst);
              if ((MfsData & 0x80000000) == 0)
              {
                v96 = v108 - (*__dst + 1);
                v113 = (*(v405 + 1) + 16 * *v405 - 8);
                v95 = &v107[*__dst - 1 + 2];
                goto LABEL_714;
              }

LABEL_810:
              LODWORD(v13) = MfsData;
            }
          }

          else
          {
            v109 = heap_Calloc(v12[1], 18, 16);
            *(v405 + 1) = v109;
            if (v109)
            {
              LOWORD(v106) = *v405;
              goto LABEL_228;
            }

LABEL_865:
            LODWORD(v13) = -2065686518;
          }
        }
      }

      else
      {
        *__s2 = 0;
        if (v7)
        {
          *__s2 = v7 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v421, __s2, v32);
          v13 = v94;
          if ((v94 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        if (cstdlib_strcmp(__src, "ALPH"))
        {
          if (cstdlib_strcmp(__src, "VOIC"))
          {
            if (cstdlib_strcmp(__src, "COVO"))
            {
              if (cstdlib_strcmp(__src, "SAFE"))
              {
                if (cstdlib_strcmp(__src, "PLOS"))
                {
                  if (cstdlib_strcmp(__src, "DIFF"))
                  {
                    if (cstdlib_strcmp(__src, "NUCL"))
                    {
                      if (cstdlib_strcmp(__src, "GENF"))
                      {
                        if (cstdlib_strcmp(__src, "TAGA"))
                        {
                          if (cstdlib_strcmp(__src, "BTOA"))
                          {
                            goto LABEL_223;
                          }

                          v95 = *__s2;
                          v96 = v421;
                          v97 = 16856;
                        }

                        else
                        {
                          v95 = *__s2;
                          v96 = v421;
                          v97 = 16848;
                        }

                        goto LABEL_713;
                      }

                      MfsData = select_bet5_LoadRiffGenericFeatureMap(v12, a3, *__s2, v421, (a2 + 17720), (a2 + 17728), (a2 + 17736));
                      goto LABEL_810;
                    }

                    *__dst = 128;
                    v260 = *__s2;
                    v261 = v421;
                    v262 = 42656;
                  }

                  else
                  {
                    *__dst = 64;
                    v260 = *__s2;
                    v261 = v421;
                    v262 = 16784;
                  }
                }

                else
                {
                  *__dst = 257;
                  v260 = *__s2;
                  v261 = v421;
                  v262 = 15757;
                }
              }

              else
              {
                *__dst = 257;
                v260 = *__s2;
                v261 = v421;
                v262 = 16014;
              }
            }

            else
            {
              *__dst = 257;
              v260 = *__s2;
              v261 = v421;
              v262 = 15500;
            }
          }

          else
          {
            *__dst = 257;
            v260 = *__s2;
            v261 = v421;
            v262 = 15243;
          }

          MfsData = ssftriff_reader_ReadStringZ(a3, v260, v261, 0, (a2 + v262), __dst);
          goto LABEL_810;
        }

        *__dst = 257;
        LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s2, v421, 0, v403, __dst);
        if ((v13 & 0x80000000) == 0)
        {
          *v410 = 255;
          if (cstdlib_strlen(v403))
          {
            v98 = 0;
            v99 = 0;
            do
            {
              v100 = v403[v98];
              if (v100 < *v410)
              {
                *v410 = v100;
                v100 = v403[v98];
              }

              if (v100 > v410[1])
              {
                v410[1] = v100;
                v100 = v403[v98];
              }

              *(v409 + v100) = v99;
              v98 = (v99 + 1);
              v101 = cstdlib_strlen(v403);
              v99 = v98;
            }

            while (v101 > v98);
          }
        }
      }

      goto LABEL_811;
    }

    if (!cstdlib_strcmp(__src, "VINF"))
    {
      LODWORD(__s) = 0;
      *__s1 = 0;
      if (v7)
      {
        *__s1 = v7 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        ssftriff_reader_GetChunkData(a3, v421, __s1, v14);
        v13 = v45;
        if ((v45 & 0x80000000) != 0)
        {
          return v13;
        }
      }

      v46 = v421;
      if (!v421)
      {
        goto LABEL_816;
      }

      v47 = 0;
      while (1)
      {
        __dst[0] = 0;
        __s2[0] = 0;
        LODWORD(__s) = 1024;
        LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s1, v46, v47, __s2, &__s);
        if ((v13 & 0x80000000) == 0 && v47 < v421)
        {
          v47 += __s;
          LODWORD(__s) = 1024;
          LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s1, v421, v47, __dst, &__s);
        }

        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_127;
        }

        v48 = __s;
        if (!cstdlib_strcmp("GUID", __s2) || !cstdlib_strcmp("ComponentID", __s2))
        {
          cstdlib_strcpy((a2 + 43362), __dst);
          goto LABEL_127;
        }

        v47 += v48;
        v46 = v421;
        v12 = a1;
        if (v47 >= v421)
        {
          goto LABEL_816;
        }
      }
    }

    if (!cstdlib_strcmp(__src, "VPRP"))
    {
      LODWORD(__s) = 0;
      *__s1 = 0;
      if (v7)
      {
        *__s1 = v7 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        ssftriff_reader_GetChunkData(a3, v421, __s1, v15);
        v13 = v80;
        if ((v80 & 0x80000000) != 0)
        {
          return v13;
        }
      }

      __dst[0] = 0;
      __s2[0] = 0;
      v81 = v421;
      if (v421)
      {
        v82 = 0;
        do
        {
          LODWORD(__s) = 1024;
          LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s1, v81, v82, __s2, &__s);
          if ((v13 & 0x80000000) == 0 && v82 < v421)
          {
            v82 += __s;
            LODWORD(__s) = 1024;
            LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *__s1, v421, v82, __dst, &__s);
          }

          if ((v13 & 0x80000000) != 0)
          {
            break;
          }

          v83 = __s;
          if (!cstdlib_strcmp(__s2, "COUNT_UNITS_FULL_SPEECHBASE"))
          {
            *(a2 + 11804) = LH_atou(__dst);
          }

          if (!cstdlib_strcmp(__s2, "COUNT_UNITS_AVAILABLE"))
          {
            *(a2 + 11812) = LH_atou(__dst);
          }

          if (!cstdlib_strcmp(__s2, "COUNT_UNITS_GRAVEYARD"))
          {
            *(a2 + 11816) = LH_atou(__dst);
          }

          if (!cstdlib_strcmp(__s2, "COUNT_UNITS_REMOVED"))
          {
            *(a2 + 11808) = LH_atou(__dst);
          }

          v82 += v83;
          v81 = v421;
        }

        while (v82 < v421);
      }

      goto LABEL_816;
    }

    if (!cstdlib_strcmp(__src, "VSTS"))
    {
      goto LABEL_82;
    }

    if (!cstdlib_strcmp(__src, "VCFG"))
    {
      v418 = 0;
      *v416 = 0;
      __s = 0;
      if (v7)
      {
        *v416 = v7 + ssftriff_reader_GetPosition(a3) - a7;
      }

      else
      {
        ssftriff_reader_GetChunkData(a3, v421, v416, v16);
        v13 = v114;
        if ((v114 & 0x80000000) != 0)
        {
          return v13;
        }
      }

      v115 = v421;
      if (v421)
      {
        v116 = 0;
        do
        {
          __s2[0] = 0;
          __s1[0] = 0;
          v418 = 64;
          LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *v416, v115, v116, __s1, &v418);
          if ((v13 & 0x80000000) == 0 && v116 < v421)
          {
            v116 += v418;
            v418 = 256;
            LODWORD(v13) = ssftriff_reader_ReadStringZ(a3, *v416, v421, v116, __s2, &v418);
          }

          if ((v13 & 0x80000000) != 0)
          {
            break;
          }

          v117 = v418;
          cstdlib_strcpy(__dst, "bet5voiceoverride.");
          cstdlib_strcat(__dst, __s1);
          if ((paramc_ParamGetStr(v12[5], __dst, &__s) & 0x80000000) != 0 || !__s || !*__s)
          {
            __s = __s2;
          }

          if (!cstdlib_strcmp(__s1, "BREAKER"))
          {
            v118 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 336) = v118;
            if (!v118)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "BRK_LENGTH"))
          {
            *(a2 + 344) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "BRK_TC"))
          {
            *(a2 + 348) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "BRK_ZPAD"))
          {
            *(a2 + 352) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "ALGN_ST"))
          {
            *(a2 + 368) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "ALGN_PH"))
          {
            *(a2 + 372) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "ALPHA"))
          {
            cstdlib_atof(__s);
            *&v119 = v119;
            *(a2 + 256) = LODWORD(v119);
          }

          if (!cstdlib_strcmp(__s1, "BETA"))
          {
            cstdlib_atof(__s);
            *&v120 = v120;
            *(a2 + 260) = LODWORD(v120);
          }

          if (!cstdlib_strcmp(__s1, "FS"))
          {
            *(a2 + 264) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_SILENCE_SYNTH"))
          {
            *(a2 + 5304) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "VUV_REL_AMP"))
          {
            cstdlib_atof(__s);
            *&v121 = v121;
            *(a2 + 268) = LODWORD(v121);
          }

          if (!cstdlib_strcmp(__s1, "ORDER"))
          {
            *(a2 + 272) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "FRAME_SIZE"))
          {
            *(a2 + 280) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "RHO"))
          {
            cstdlib_atof(__s);
            *&v122 = v122;
            *(a2 + 288) = LODWORD(v122);
          }

          if (!cstdlib_strcmp(__s1, "VOL"))
          {
            cstdlib_atof(__s);
            *&v123 = v123;
            *(a2 + 292) = LODWORD(v123);
          }

          if (!cstdlib_strcmp(__s1, "MVF_BOOST"))
          {
            cstdlib_atof(__s);
            *&v124 = v124;
            *(a2 + 296) = LODWORD(v124);
          }

          if (!cstdlib_strcmp(__s1, "VSYNTH"))
          {
            v125 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 360) = v125;
            if (!v125)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "F0_RHO"))
          {
            cstdlib_atof(__s);
            *&v126 = v126;
            *(a2 + 300) = LODWORD(v126);
          }

          if (!cstdlib_strcmp(__s1, "F0_STD"))
          {
            cstdlib_atof(__s);
            *&v127 = v127;
            *(a2 + 304) = LODWORD(v127);
          }

          if (!cstdlib_strcmp(__s1, "F0_MEAN"))
          {
            cstdlib_atof(__s);
            *&v128 = v128;
            *(a2 + 308) = LODWORD(v128);
          }

          if (!cstdlib_strcmp(__s1, "SPEECH_F0_MEAN"))
          {
            *(a2 + 312) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "PDF_VARIANCE_TYPE"))
          {
            *(a2 + 328) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_PSOLA_MODE"))
          {
            *(a2 + 11776) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_PSOLA_MODE2_PROTECT_VOWELS"))
          {
            *(a2 + 11780) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_ENABLE_CREAK_PROTECTION"))
          {
            *(a2 + 11792) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_PSOLA_MIN_DURATION_RATIO"))
          {
            *(a2 + 11796) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_PSOLA_MAX_DURATION_RATIO"))
          {
            *(a2 + 11800) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_VITERBI_DECODER_VARIANT"))
          {
            *(a2 + 11744) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ"))
          {
            cstdlib_atof(__s);
            *&v129 = v129;
            *(a2 + 5760) = LODWORD(v129);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_SLL"))
          {
            cstdlib_atof(__s);
            *&v130 = v130;
            *(a2 + 5848) = LODWORD(v130);
          }

          if (!cstdlib_strcmp(__s1, "F_SLL_STEP"))
          {
            cstdlib_atof(__s);
            *&v131 = v131;
            *(a2 + 5844) = LODWORD(v131);
          }

          if (!cstdlib_strcmp(__s1, "F_Q"))
          {
            cstdlib_atof(__s);
            *&v132 = v132;
            *(a2 + 5772) = LODWORD(v132);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_UNV"))
          {
            cstdlib_atof(__s);
            *&v133 = v133;
            *(a2 + 5776) = LODWORD(v133);
          }

          if (!cstdlib_strcmp(__s1, "F_SYM_QA"))
          {
            cstdlib_atof(__s);
            *&v134 = v134;
            *(a2 + 5780) = LODWORD(v134);
          }

          if (!cstdlib_strcmp(__s1, "N_SEARCH_MODE"))
          {
            *(a2 + 7056) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_NODE_LIMIT"))
          {
            *(a2 + 5804) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_INV_NODE_LIMIT"))
          {
            *(a2 + 5808) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_PCT"))
          {
            cstdlib_atof(__s);
            *&v135 = v135;
            *(a2 + 5812) = LODWORD(v135);
          }

          if (!cstdlib_strcmp(__s1, "F_BEAM_WIDTH"))
          {
            cstdlib_atof(__s);
            *&v136 = v136;
            *(a2 + 5824) = LODWORD(v136);
          }

          if (!cstdlib_strcmp(__s1, "F_BEAM_WIDTH_UNV"))
          {
            cstdlib_atof(__s);
            *&v137 = v137;
            *(a2 + 5828) = LODWORD(v137);
          }

          if (!cstdlib_strcmp(__s1, "F_NODE_PRUNE_PCT"))
          {
            cstdlib_atof(__s);
            *&v138 = v138;
            *(a2 + 5816) = LODWORD(v138);
          }

          if (!cstdlib_strcmp(__s1, "N_NODE_PRUNE_MAX"))
          {
            *(a2 + 5820) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_SILVIT"))
          {
            *(a2 + 5832) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_SLL_MAX"))
          {
            cstdlib_atof(__s);
            *&v139 = v139;
            *(a2 + 5836) = LODWORD(v139);
          }

          if (!cstdlib_strcmp(__s1, "F_SLL_WEIGHT"))
          {
            cstdlib_atof(__s);
            *&v140 = v140;
            *(a2 + 5840) = LODWORD(v140);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPOS_SNT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v141 = v141;
            *(a2 + 5860) = LODWORD(v141);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPOS_SNT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v142 = v142;
            *(a2 + 5864) = LODWORD(v142);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPOS_PHR_FINAL"))
          {
            cstdlib_atof(__s);
            *&v143 = v143;
            *(a2 + 5868) = LODWORD(v143);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPOS_PHR_FINAL"))
          {
            cstdlib_atof(__s);
            *&v144 = v144;
            *(a2 + 5872) = LODWORD(v144);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPOS_SNT_INIT"))
          {
            cstdlib_atof(__s);
            *&v145 = v145;
            *(a2 + 5876) = LODWORD(v145);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPOS_SNT_INIT"))
          {
            cstdlib_atof(__s);
            *&v146 = v146;
            *(a2 + 5880) = LODWORD(v146);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPOS_PHR_INIT"))
          {
            cstdlib_atof(__s);
            *&v147 = v147;
            *(a2 + 5884) = LODWORD(v147);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPOS_PHR_INIT"))
          {
            cstdlib_atof(__s);
            *&v148 = v148;
            *(a2 + 5888) = LODWORD(v148);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPOS_PHR_MID"))
          {
            cstdlib_atof(__s);
            *&v149 = v149;
            *(a2 + 5892) = LODWORD(v149);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPOS_PHR_MID"))
          {
            cstdlib_atof(__s);
            *&v150 = v150;
            *(a2 + 5896) = LODWORD(v150);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDWRDPOSSHP_SENT_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v151 = v151;
            *(a2 + 5900) = LODWORD(v151);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDWRDPOSSHP_SENT_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v152 = v152;
            *(a2 + 5904) = LODWORD(v152);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDWRDPOSSHP_SENT_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v153 = v153;
            *(a2 + 5908) = LODWORD(v153);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDWRDPOSSHP_SENT_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v154 = v154;
            *(a2 + 5912) = LODWORD(v154);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDWRDPOSSHP_SENT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v155 = v155;
            *(a2 + 5916) = LODWORD(v155);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDWRDPOSSHP_SENT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v156 = v156;
            *(a2 + 5920) = LODWORD(v156);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDWRDPOSSHP_IP4_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v157 = v157;
            *(a2 + 5924) = LODWORD(v157);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDWRDPOSSHP_IP4_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v158 = v158;
            *(a2 + 5928) = LODWORD(v158);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDWRDPOSSHP_IP4_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v159 = v159;
            *(a2 + 5932) = LODWORD(v159);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDWRDPOSSHP_IP4_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v160 = v160;
            *(a2 + 5936) = LODWORD(v160);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDWRDPOSSHP_IP4_FINAL"))
          {
            cstdlib_atof(__s);
            *&v161 = v161;
            *(a2 + 5940) = LODWORD(v161);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDWRDPOSSHP_IP4_FINAL"))
          {
            cstdlib_atof(__s);
            *&v162 = v162;
            *(a2 + 5944) = LODWORD(v162);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRM_UACC"))
          {
            cstdlib_atof(__s);
            *&v163 = v163;
            *(a2 + 5948) = LODWORD(v163);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRM_UACC"))
          {
            cstdlib_atof(__s);
            *&v164 = v164;
            *(a2 + 5952) = LODWORD(v164);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRM_DACC"))
          {
            cstdlib_atof(__s);
            *&v165 = v165;
            *(a2 + 5956) = LODWORD(v165);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRM_DACC"))
          {
            cstdlib_atof(__s);
            *&v166 = v166;
            *(a2 + 5960) = LODWORD(v166);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRM_ACC"))
          {
            cstdlib_atof(__s);
            *&v167 = v167;
            *(a2 + 5964) = LODWORD(v167);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRM_ACC"))
          {
            cstdlib_atof(__s);
            *&v168 = v168;
            *(a2 + 5968) = LODWORD(v168);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRM_EMPH"))
          {
            cstdlib_atof(__s);
            *&v169 = v169;
            *(a2 + 5972) = LODWORD(v169);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRM_EMPH"))
          {
            cstdlib_atof(__s);
            *&v170 = v170;
            *(a2 + 5976) = LODWORD(v170);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRMSHP_UACC"))
          {
            cstdlib_atof(__s);
            *&v171 = v171;
            *(a2 + 5980) = LODWORD(v171);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRMSHP_UACC"))
          {
            cstdlib_atof(__s);
            *&v172 = v172;
            *(a2 + 5984) = LODWORD(v172);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRMSHP_DACC"))
          {
            cstdlib_atof(__s);
            *&v173 = v173;
            *(a2 + 5988) = LODWORD(v173);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRMSHP_DACC"))
          {
            cstdlib_atof(__s);
            *&v174 = v174;
            *(a2 + 5992) = LODWORD(v174);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRMSHP_ACC"))
          {
            cstdlib_atof(__s);
            *&v175 = v175;
            *(a2 + 5996) = LODWORD(v175);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRMSHP_ACC"))
          {
            cstdlib_atof(__s);
            *&v176 = v176;
            *(a2 + 6000) = LODWORD(v176);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRMSHP_NUC"))
          {
            cstdlib_atof(__s);
            *&v177 = v177;
            *(a2 + 6004) = LODWORD(v177);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRMSHP_NUC"))
          {
            cstdlib_atof(__s);
            *&v178 = v178;
            *(a2 + 6008) = LODWORD(v178);
          }

          if (!cstdlib_strcmp(__s1, "F_Q_WRDPRMSHP_EMPH"))
          {
            cstdlib_atof(__s);
            *&v179 = v179;
            *(a2 + 6012) = LODWORD(v179);
          }

          if (!cstdlib_strcmp(__s1, "F_B_WRDPRMSHP_EMPH"))
          {
            cstdlib_atof(__s);
            *&v180 = v180;
            *(a2 + 6016) = LODWORD(v180);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPOS_SNT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v181 = v181;
            *(a2 + 6020) = LODWORD(v181);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPOS_PHR_FINAL"))
          {
            cstdlib_atof(__s);
            *&v182 = v182;
            *(a2 + 6024) = LODWORD(v182);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPOS_SNT_INIT"))
          {
            cstdlib_atof(__s);
            *&v183 = v183;
            *(a2 + 6028) = LODWORD(v183);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPOS_PHR_INIT"))
          {
            cstdlib_atof(__s);
            *&v184 = v184;
            *(a2 + 6032) = LODWORD(v184);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPOS_PHR_MID"))
          {
            cstdlib_atof(__s);
            *&v185 = v185;
            *(a2 + 6036) = LODWORD(v185);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDWRDPOSSHP_SENT_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v186 = v186;
            *(a2 + 6040) = LODWORD(v186);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDWRDPOSSHP_SENT_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v187 = v187;
            *(a2 + 6044) = LODWORD(v187);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDWRDPOSSHP_SENT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v188 = v188;
            *(a2 + 6048) = LODWORD(v188);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDWRDPOSSHP_IP4_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v189 = v189;
            *(a2 + 6052) = LODWORD(v189);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDWRDPOSSHP_IP4_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v190 = v190;
            *(a2 + 6056) = LODWORD(v190);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDWRDPOSSHP_IP4_FINAL"))
          {
            cstdlib_atof(__s);
            *&v191 = v191;
            *(a2 + 6060) = LODWORD(v191);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRM_UACC"))
          {
            cstdlib_atof(__s);
            *&v192 = v192;
            *(a2 + 6064) = LODWORD(v192);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRM_DACC"))
          {
            cstdlib_atof(__s);
            *&v193 = v193;
            *(a2 + 6068) = LODWORD(v193);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRM_ACC"))
          {
            cstdlib_atof(__s);
            *&v194 = v194;
            *(a2 + 6072) = LODWORD(v194);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRM_EMPH"))
          {
            cstdlib_atof(__s);
            *&v195 = v195;
            *(a2 + 6076) = LODWORD(v195);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRMSHP_UACC"))
          {
            cstdlib_atof(__s);
            *&v196 = v196;
            *(a2 + 6080) = LODWORD(v196);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRMSHP_DACC"))
          {
            cstdlib_atof(__s);
            *&v197 = v197;
            *(a2 + 6084) = LODWORD(v197);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRMSHP_ACC"))
          {
            cstdlib_atof(__s);
            *&v198 = v198;
            *(a2 + 6088) = LODWORD(v198);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRMSHP_NUC"))
          {
            cstdlib_atof(__s);
            *&v199 = v199;
            *(a2 + 6092) = LODWORD(v199);
          }

          if (!cstdlib_strcmp(__s1, "F_QA_WRDPRMSHP_EMPH"))
          {
            cstdlib_atof(__s);
            *&v200 = v200;
            *(a2 + 6096) = LODWORD(v200);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPOS_SNT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v201 = v201;
            *(a2 + 6100) = LODWORD(v201);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPOS_PHR_FINAL"))
          {
            cstdlib_atof(__s);
            *&v202 = v202;
            *(a2 + 6104) = LODWORD(v202);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPOS_SNT_INIT"))
          {
            cstdlib_atof(__s);
            *&v203 = v203;
            *(a2 + 6108) = LODWORD(v203);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPOS_PHR_INIT"))
          {
            cstdlib_atof(__s);
            *&v204 = v204;
            *(a2 + 6112) = LODWORD(v204);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPOS_PHR_MID"))
          {
            cstdlib_atof(__s);
            *&v205 = v205;
            *(a2 + 6116) = LODWORD(v205);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDWRDPOSSHP_SENT_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v206 = v206;
            *(a2 + 6120) = LODWORD(v206);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDWRDPOSSHP_SENT_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v207 = v207;
            *(a2 + 6124) = LODWORD(v207);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDWRDPOSSHP_SENT_FINAL"))
          {
            cstdlib_atof(__s);
            *&v208 = v208;
            *(a2 + 6128) = LODWORD(v208);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDWRDPOSSHP_IP4_SINGLE"))
          {
            cstdlib_atof(__s);
            *&v209 = v209;
            *(a2 + 6132) = LODWORD(v209);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDWRDPOSSHP_IP4_INITIAL"))
          {
            cstdlib_atof(__s);
            *&v210 = v210;
            *(a2 + 6136) = LODWORD(v210);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDWRDPOSSHP_IP4_FINAL"))
          {
            cstdlib_atof(__s);
            *&v211 = v211;
            *(a2 + 6140) = LODWORD(v211);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRM_UACC"))
          {
            cstdlib_atof(__s);
            *&v212 = v212;
            *(a2 + 6144) = LODWORD(v212);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRM_DACC"))
          {
            cstdlib_atof(__s);
            *&v213 = v213;
            *(a2 + 6148) = LODWORD(v213);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRM_ACC"))
          {
            cstdlib_atof(__s);
            *&v214 = v214;
            *(a2 + 6152) = LODWORD(v214);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRM_EMPH"))
          {
            cstdlib_atof(__s);
            *&v215 = v215;
            *(a2 + 6156) = LODWORD(v215);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRMSHP_UACC"))
          {
            cstdlib_atof(__s);
            *&v216 = v216;
            *(a2 + 6160) = LODWORD(v216);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRMSHP_DACC"))
          {
            cstdlib_atof(__s);
            *&v217 = v217;
            *(a2 + 6164) = LODWORD(v217);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRMSHP_ACC"))
          {
            cstdlib_atof(__s);
            *&v218 = v218;
            *(a2 + 6168) = LODWORD(v218);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRMSHP_NUC"))
          {
            cstdlib_atof(__s);
            *&v219 = v219;
            *(a2 + 6172) = LODWORD(v219);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_WRDPRMSHP_EMPH"))
          {
            cstdlib_atof(__s);
            *&v220 = v220;
            *(a2 + 6176) = LODWORD(v220);
          }

          if (!cstdlib_strcmp(__s1, "F_W_CONTEXT"))
          {
            cstdlib_atof(__s);
            *&v221 = v221;
            *(a2 + 5764) = LODWORD(v221);
          }

          if (!cstdlib_strcmp(__s1, "F_W_GENERIC_CONTEXT"))
          {
            cstdlib_atof(__s);
            *&v222 = v222;
            *(a2 + 5768) = LODWORD(v222);
          }

          if (!cstdlib_strcmp(__s1, "N_DATABNF_TYPE_OF_BNF_STYLE"))
          {
            *(a2 + 7012) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_DATAJV_TYPE_OF_JV_STYLE"))
          {
            *(a2 + 7016) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_DATAJV_CLUSTERED"))
          {
            *(a2 + 7020) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "F_MODE_DEC4_SIMD_STYLE"))
          {
            *(a2 + 7024) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_EXPLICIT_PHONE_MODEL"))
          {
            *(a2 + 6232) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_DIPHONE_UNITS"))
          {
            *(a2 + 6236) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_PHONEME_SUBSTATE_MODEL"))
          {
            *(a2 + 6240) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_PHONEME_SUBSTATE_DATA_OPTIMIZATION"))
          {
            *(a2 + 6244) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_UNITBULKING"))
          {
            *(a2 + 6252) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_UNITBULKING_SEARCH_MINADJ"))
          {
            *(a2 + 6256) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_UNITBULKING_SEARCH_COST_NO_ADJACENT"))
          {
            cstdlib_atof(__s);
            *&v223 = v223;
            *(a2 + 6260) = LODWORD(v223);
          }

          if (!cstdlib_strcmp(__s1, "B_STATE_LM_BACKUP"))
          {
            *(a2 + 6324) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_ALL_STATE_LM"))
          {
            *(a2 + 6328) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_BACKOFF"))
          {
            *(a2 + 6332) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_UNIGRAMS_IN_PJ_SPMTX_MCP"))
          {
            *(a2 + 6932) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_CODEBOOK_VECTORS_MCP"))
          {
            *(a2 + 6948) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_CONTEXTEXPANDBNF"))
          {
            *(a2 + 7008) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_TYPEOFPITCHCOST"))
          {
            *(a2 + 7028) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_LLMINNEGTARGETSTEP"))
          {
            cstdlib_atof(__s);
            *&v224 = v224;
            *(a2 + 6448) = LODWORD(v224);
          }

          if (!cstdlib_strcmp(__s1, "B_USEQUANTIZEDLL"))
          {
            *(a2 + 6452) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_USELL"))
          {
            *(a2 + 6456) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "F_PITCHSLOPEWEIGHT"))
          {
            cstdlib_atof(__s);
            *&v225 = v225;
            *(a2 + 7032) = LODWORD(v225);
          }

          if (!cstdlib_strcmp(__s1, "F_BNF_MAXVAL"))
          {
            cstdlib_atof(__s);
            *&v226 = v226;
            *(a2 + 6928) = 127.0 / *&v226;
          }

          if (!cstdlib_strcmp(__s1, "B_UNIGRAMS_IN_PJ_SPMTX_LF0"))
          {
            *(a2 + 6936) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_USE_PJ_FSM_MCP"))
          {
            *(a2 + 6940) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_NGRAM_ORDER_PJ_FSM_MCP"))
          {
            *(a2 + 6944) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_USE_PJ_FSM_LF0"))
          {
            *(a2 + 6952) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_NGRAM_ORDER_PJ_FSM_LF0"))
          {
            *(a2 + 6956) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_BIAS_PJ_FSM_LF0"))
          {
            cstdlib_atof(__s);
            *&v227 = v227;
            *(a2 + 6960) = LODWORD(v227);
          }

          if (!cstdlib_strcmp(__s1, "N_BIAS_SHIFT_PJ_FSM_LF0"))
          {
            *(a2 + 6964) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_BIAS_ONLY_VOICED_PJ_FSM_LF0"))
          {
            *(a2 + 6968) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_QUANT_PRECOMP_FSMR_LF0"))
          {
            *(a2 + 6972) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_TRANSPOSE_PJ_MTX"))
          {
            *(a2 + 6980) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_ANN_CHUNK_PH_SIZE"))
          {
            *(a2 + 6996) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_ANN_CHUNK_PH_OVL_L_SIZE"))
          {
            *(a2 + 7000) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_ANN_CHUNK_PH_OVL_R_SIZE"))
          {
            *(a2 + 7004) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_ADDITIVE_TRANS_WEIGHTS"))
          {
            *(a2 + 6392) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_ENABLE_CCL"))
          {
            *(a2 + 6376) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_LEN_CCL"))
          {
            *(a2 + 6380) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_SLL_THRES"))
          {
            cstdlib_atof(__s);
            *&v228 = v228;
            *(a2 + 6384) = LODWORD(v228);
          }

          if (!cstdlib_strcmp(__s1, "B_ENABLE_SLL_THRES"))
          {
            *(a2 + 6388) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "B_ENABLE_BNF_DISTANCE_PRUNING"))
          {
            *(a2 + 6396) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_BNF_PRUNING_MIN_NODES"))
          {
            *(a2 + 6400) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_BNF_MIN_CAND"))
          {
            *(a2 + 6404) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_BNF_MAX_CAND"))
          {
            *(a2 + 6408) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_BNF_THRESH"))
          {
            cstdlib_atof(__s);
            *&v229 = v229;
            *(a2 + 6412) = LODWORD(v229);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_DUR_OUTLIER_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v230 = v230;
            *(a2 + 6416) = LODWORD(v230);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_DUR_OUTLIER_MAX"))
          {
            cstdlib_atof(__s);
            *&v231 = v231;
            *(a2 + 6420) = LODWORD(v231);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_DUR_OUTLIER_DIST_PARAM1"))
          {
            cstdlib_atof(__s);
            *&v232 = v232;
            *(a2 + 6424) = LODWORD(v232);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_DUR_OUTLIER_DIST_PARAM2"))
          {
            cstdlib_atof(__s);
            *&v233 = v233;
            *(a2 + 6428) = LODWORD(v233);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_PITCH_SLOPE_OUTLIER_DIST_PARAM1"))
          {
            cstdlib_atof(__s);
            *&v234 = v234;
            *(a2 + 6432) = LODWORD(v234);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_PITCH_SLOPE_OUTLIER_DIST_PARAM2"))
          {
            cstdlib_atof(__s);
            *&v235 = v235;
            *(a2 + 6436) = LODWORD(v235);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_PITCH_EDGE_OUTLIER_DIST_PARAM1"))
          {
            cstdlib_atof(__s);
            *&v236 = v236;
            *(a2 + 6440) = LODWORD(v236);
          }

          if (!cstdlib_strcmp(__s1, "F_PRUNE_PITCH_EDGE_OUTLIER_DIST_PARAM2"))
          {
            cstdlib_atof(__s);
            *&v237 = v237;
            *(a2 + 6444) = LODWORD(v237);
          }

          if (!cstdlib_strcmp(__s1, "B_BNF_RND_PROJECTION"))
          {
            *(a2 + 6984) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_BNF_VECTOR_SIZE"))
          {
            *(a2 + 6988) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_BNF_LF0_JOIN_THRESHOLD"))
          {
            *(a2 + 6920) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_MAX_RNN_LF0_JOIN_DEVIATION"))
          {
            *(a2 + 6924) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "S_LANGUAGE_INDICES"))
          {
            *(a2 + 6464) = UNICORN__heap_StrDup(v12[1], __s);
          }

          if (!cstdlib_strcmp(__s1, "S_QUESTION_INDICES"))
          {
            *(a2 + 6472) = UNICORN__heap_StrDup(v12[1], __s);
          }

          if (!cstdlib_strcmp(__s1, "S_STYLE_INDICES"))
          {
            *(a2 + 6480) = UNICORN__heap_StrDup(v12[1], __s);
          }

          if (!cstdlib_strcmp(__s1, "N_MAIN_LANGUAGE_INDEX"))
          {
            *(a2 + 6872) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_LANGUAGE_SCORE"))
          {
            cstdlib_atof(__s);
            *&v238 = v238;
            *(a2 + 6876) = LODWORD(v238);
          }

          if (!cstdlib_strcmp(__s1, "F_QUESTION_SCORE"))
          {
            cstdlib_atof(__s);
            *&v239 = v239;
            *(a2 + 6880) = LODWORD(v239);
          }

          if (!cstdlib_strcmp(__s1, "F_STYLE_SCORE"))
          {
            cstdlib_atof(__s);
            *&v240 = v240;
            *(a2 + 6884) = LODWORD(v240);
          }

          if (!cstdlib_strcmp(__s1, "N_NODE_PRUNE_MIN"))
          {
            *(a2 + 6888) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "F_NODE_SCORE_MAX"))
          {
            cstdlib_atof(__s);
            *&v241 = v241;
            *(a2 + 6892) = LODWORD(v241);
          }

          if (!cstdlib_strcmp(__s1, "F_BEG_1ST_CASCADED_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v242 = v242;
            *(a2 + 6896) = LODWORD(v242);
          }

          if (!cstdlib_strcmp(__s1, "F_MID_1ST_CASCADED_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v243 = v243;
            *(a2 + 6900) = LODWORD(v243);
          }

          if (!cstdlib_strcmp(__s1, "F_END_1ST_CASCADED_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v244 = v244;
            *(a2 + 6904) = LODWORD(v244);
          }

          if (!cstdlib_strcmp(__s1, "F_BEG_2ND_CASCADED_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v245 = v245;
            *(a2 + 6908) = LODWORD(v245);
          }

          if (!cstdlib_strcmp(__s1, "F_MID_2ND_CASCADED_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v246 = v246;
            *(a2 + 6912) = LODWORD(v246);
          }

          if (!cstdlib_strcmp(__s1, "F_END_2ND_CASCADED_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v247 = v247;
            *(a2 + 6916) = LODWORD(v247);
          }

          if (!cstdlib_strcmp(__s1, "N_MAX_UNITBASE_UNITS"))
          {
            *(a2 + 7048) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_MAXLOAD_UNITS"))
          {
            *(a2 + 7052) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_USE_ANN_PRED"))
          {
            *(a2 + 6992) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_BNF"))
          {
            v248 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10664) = v248;
            if (!v248)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_LF0"))
          {
            v249 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10672) = v249;
            if (!v249)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_DUR"))
          {
            v250 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10680) = v250;
            if (!v250)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_SDUR"))
          {
            v251 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10688) = v251;
            if (!v251)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_VUV"))
          {
            v252 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10696) = v252;
            if (!v252)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_ELF0"))
          {
            v253 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10704) = v253;
            if (!v253)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "S_ANN_PRED_OUTLAYER_PDUR"))
          {
            v254 = UNICORN__heap_StrDup(v12[1], __s);
            *(a2 + 10712) = v254;
            if (!v254)
            {
              LODWORD(v13) = -2065686518;
            }
          }

          if (!cstdlib_strcmp(__s1, "F_JOIN_UNIT_SYLRATE_FACTOR"))
          {
            cstdlib_atof(__s);
            *&v255 = v255;
            *(a2 + 7040) = LODWORD(v255);
          }

          if (!cstdlib_strcmp(__s1, "B_JOIN_UNIT_SYLRATE_ADJ"))
          {
            *(a2 + 7044) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "F_HMM_STREAM_WEIGHT_DUR_TUNE"))
          {
            cstdlib_atof(__s);
            *&v256 = v256;
            *(a2 + 11752) = LODWORD(v256);
          }

          if (!cstdlib_strcmp(__s1, "F_BEAM_WIDTH_TUNE"))
          {
            cstdlib_atof(__s);
            *&v257 = v257;
            *(a2 + 11748) = LODWORD(v257);
          }

          if (!cstdlib_strcmp(__s1, "F_JCOST_WEIGHT_ADJ_TUNE"))
          {
            cstdlib_atof(__s);
            *&v258 = v258;
            *(a2 + 11756) = LODWORD(v258);
          }

          if (!cstdlib_strcmp(__s1, "F_SYM_QA_TUNE"))
          {
            cstdlib_atof(__s);
            *&v259 = v259;
            *(a2 + 11760) = LODWORD(v259);
          }

          if (!cstdlib_strcmp(__s1, "N_NODE_LIMIT_TUNE"))
          {
            *(a2 + 11764) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_INV_NODE_LIMIT_TUNE"))
          {
            *(a2 + 11768) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_NODE_PRUNE_MAX_TUNE"))
          {
            *(a2 + 11772) = LH_atoi(__s);
          }

          if (!cstdlib_strcmp(__s1, "B_MIXEDVOICINGBIGRAMS"))
          {
            *(a2 + 5852) = LH_atoi(__s) != 0;
          }

          if (!cstdlib_strcmp(__s1, "N_UV_CODE"))
          {
            *(a2 + 5856) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_UNDERRUN_THRESHOLD"))
          {
            *(a2 + 6180) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_EARLYEMISSION_MAX_HYPOTHESES"))
          {
            *(a2 + 6184) = LH_atou(__s);
          }

          if (!cstdlib_strcmp(__s1, "N_EARLYEMISSION_MAX_AMBIGUITY_WINDOW"))
          {
            *(a2 + 6188) = LH_atou(__s);
          }

          if ((v13 & 0x80000000) != 0)
          {
            break;
          }

          v116 += v117;
          v115 = v421;
        }

        while (v116 < v421);
      }

      goto LABEL_816;
    }

    if (!cstdlib_strcmp(__src, "FEEX"))
    {
LABEL_82:
      v40 = v12;
      v41 = a2;
      v42 = a3;
      v43 = 1;
      goto LABEL_83;
    }

    if (!cstdlib_strcmp(__src, "PCT4"))
    {
      *__s2 = 0;
      if (v7)
      {
        v103 = (v7 + ssftriff_reader_GetPosition(a3) - a7);
        *__s2 = v103;
      }

      else
      {
        ssftriff_reader_GetChunkData(a3, v421, __s2, v17);
        if ((v276 & 0x80000000) != 0)
        {
          return v276;
        }

        v103 = *__s2;
      }

      v277 = v421;
      v278 = 5296;
      goto LABEL_745;
    }

    if (cstdlib_strcmp(__src, "STM3"))
    {
      if (!cstdlib_strcmp(__src, "CJE5"))
      {
        v279 = *(v408 + 2400);
        if (v279 <= 0x3F)
        {
          v280 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v279), (a2 + 8872));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v280;
            *(a2 + 8880) = v280;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "UND4"))
      {
        v283 = *(v408 + 2400);
        if (v283 <= 0x3F)
        {
          v284 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v283), (a2 + 7312));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v284;
            *(a2 + 7320) = v284;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "ANNP"))
      {
        v286 = *(v408 + 2400);
        if (v286 <= 0x3F)
        {
          v287 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v286), (a2 + 8272));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v287;
            *(a2 + 8280) = v287;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "ANNF"))
      {
        v304 = *(v408 + 2400);
        if (v304 <= 0x3F)
        {
          v305 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v304), (a2 + 10072));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v305;
            *(a2 + 10080) = v305;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "BNCV"))
      {
        RiffStringTable = select_bet5_LoadMfsData(a2, a3, 8u, 0, v421, 0, 0, *(v408 + 2468));
        goto LABEL_746;
      }

      if (!cstdlib_strcmp(__src, "BNCN"))
      {
        v332 = *(v408 + 2400);
        if (v332 <= 0x3F)
        {
          v333 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v332), (a2 + 8056));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v333;
            *(a2 + 8064) = v333;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "UIDO"))
      {
        v338 = *(v408 + 2400);
        if (v338 <= 0x3F)
        {
          v339 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v338), (a2 + 9112));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v339;
            *(a2 + 9120) = v339;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "EF0L"))
      {
        v342 = *(v408 + 2400);
        if (v342 <= 0x3F)
        {
          v343 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v342), (a2 + 9232));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v343;
            *(a2 + 9240) = v343;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "EF0R"))
      {
        v347 = *(v408 + 2400);
        if (v347 <= 0x3F)
        {
          v348 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v347), (a2 + 9256));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v348;
            *(a2 + 9264) = v348;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "MIF0"))
      {
        v350 = *(v408 + 2400);
        if (v350 <= 0x3F)
        {
          v351 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v350), (a2 + 9352));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v351;
            *(a2 + 9360) = v351;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "FRAD"))
      {
        v352 = *(v408 + 2400);
        if (v352 <= 0x3F)
        {
          v353 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v352), (a2 + 9472));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v353;
            *(a2 + 9480) = v353;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "CSLL"))
      {
        v354 = *(v408 + 2400);
        if (v354 <= 0x3F)
        {
          v355 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v354), (a2 + 9592));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v355;
            *(a2 + 9600) = v355;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "CINT"))
      {
        v356 = *(v408 + 2400);
        if (v356 <= 0x3F)
        {
          v357 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v356), (a2 + 9712));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v357;
            *(a2 + 9720) = v357;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "FUZ5"))
      {
        v358 = *(v408 + 2400);
        if (v358 <= 0x3F)
        {
          v361 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v358), (a2 + 10432));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v361;
            *(a2 + 10440) = v361;
          }

          goto LABEL_816;
        }

        goto LABEL_912;
      }

      if (!cstdlib_strcmp(__src, "CSYM"))
      {
        v359 = *(v408 + 2400);
        if (v359 > 0x3F)
        {
          goto LABEL_133;
        }

        v360 = v421;
        LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v359), (a2 + 10192));
        if ((v13 & 0x80000000) == 0)
        {
          ++*(v408 + 2400);
          *(v408 + 1884) += v360;
          *(a2 + 10200) = v360;
        }

LABEL_934:
        v7 = a6;
LABEL_127:
        v12 = a1;
        goto LABEL_816;
      }

      if (!cstdlib_strcmp(__src, "GCR5"))
      {
        v362 = *(v408 + 2400);
        if (v362 <= 0x3F)
        {
          v363 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v362), (a2 + 10552));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v363;
            *(a2 + 10560) = v363;
          }

          goto LABEL_934;
        }

LABEL_933:
        LODWORD(v13) = -2065686524;
        goto LABEL_934;
      }

      if (!cstdlib_strcmp(__src, "PHOD"))
      {
        v364 = *(v408 + 2400);
        if (v364 <= 0x3F)
        {
          v365 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v364), (a2 + 9832));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v365;
            *(a2 + 9840) = v365;
          }

          goto LABEL_934;
        }

        goto LABEL_933;
      }

      if (!cstdlib_strcmp(__src, "BNFT"))
      {
        v366 = *(v408 + 2400);
        if (v366 <= 0x3F)
        {
          v367 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v366), (a2 + 8392));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v367;
            *(a2 + 8400) = v367;
          }

          goto LABEL_934;
        }

        goto LABEL_933;
      }

      if (!cstdlib_strcmp(__src, "LOUD"))
      {
        v368 = *(v408 + 2400);
        if (v368 <= 0x3F)
        {
          v369 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v368), (a2 + 8512));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v369;
            *(a2 + 8520) = v369;
          }

          goto LABEL_934;
        }

        goto LABEL_933;
      }

      if (!cstdlib_strcmp(__src, "SYLR"))
      {
        v370 = *(v408 + 2400);
        if (v370 <= 0x3F)
        {
          v371 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v370), (a2 + 8632));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v371;
            *(a2 + 8640) = v371;
          }

          goto LABEL_934;
        }

        goto LABEL_933;
      }

      v7 = a6;
      v12 = a1;
      if (!cstdlib_strcmp(__src, "BNFD"))
      {
        v18 = *(v408 + 2400);
        if (v18 <= 0x3F)
        {
          v19 = v421;
          LODWORD(v13) = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v18), (a2 + 8032));
          if ((v13 & 0x80000000) == 0)
          {
            ++*(v408 + 2400);
            *(v408 + 1884) += v19;
            *(a2 + 8040) = v19;
          }

          goto LABEL_934;
        }

        goto LABEL_933;
      }

      goto LABEL_813;
    }

    *__s2 = 0;
    v264 = *(v408 + 2400);
    LODWORD(v13) = -2065686524;
    if (v264 <= 0x3F)
    {
      RiffStringTable = ssftriff_reader_DetachChunkData(a3, (v402 + 8 * v264), __s2);
      if (RiffStringTable < 0)
      {
        goto LABEL_746;
      }

      v265 = ssftriff_reader_GetPosition(a3);
      ++*(v408 + 2400);
      *(v408 + 1884) += v421;
      LODWORD(v13) = select_bet5_ParseRiff(v12, a2, a3, 1, a5, *__s2, v265);
      ++*(a2 + 388);
    }

LABEL_816:
    v318 = ssftriff_reader_CloseChunk(a3);
    if (v13 > -1 && v318 < 0)
    {
      LODWORD(v13) = v318;
    }
  }

  while ((v13 & 0x80000000) == 0);
  if ((v13 & 0x1FFF) == 0x14)
  {
    v13 = 0;
  }

  else
  {
    v13 = v13;
  }

  if ((v13 & 0x80000000) == 0)
  {
    a5[v415] = 0;
  }

  v372 = *(a2 + 6464);
  if (v372)
  {
    ParseInternalTagString(v372, a2 + 6488);
  }

  v373 = *(a2 + 6472);
  if (v373)
  {
    ParseInternalTagString(v373, a2 + 6616);
  }

  v374 = *(a2 + 6480);
  if (v374)
  {
    ParseInternalTagString(v374, a2 + 6744);
  }

  return v13;
}

uint64_t select_bet5_LoadRiffStringTable(uint64_t a1, uint64_t a2, char *__src, int a4, uint64_t *a5)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, __src, 2uLL);
  if (__dst)
  {
    v10 = heap_Calloc(*(a1 + 8), __dst + 1, 8);
    *a5 = v10;
    if (v10)
    {
      if (__dst)
      {
        v11 = 0;
        v12 = a4 - 2;
        v13 = __src + 2;
        do
        {
          v17 = 0;
          result = ssftriff_reader_ReadStringW(a2, v13, v12, 0, 0, &v17);
          if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 9)
          {
            break;
          }

          *(*a5 + 8 * v11) = heap_Alloc(*(a1 + 8), v17);
          v15 = *(*a5 + 8 * v11);
          if (!v15)
          {
            return 2229280778;
          }

          result = ssftriff_reader_ReadStringW(a2, v13, v12, 0, v15, &v17);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v13 += v17 + 1;
          v12 -= v17 + 1;
          ++v11;
        }

        while (v11 < __dst);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2229280778;
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t select_bet5_LoadMfsData(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  if (a6)
  {
    Position = ssftriff_reader_GetPosition(a2);
    result = 0;
    v16 = a1 + 120 * a3 + 24 * a4;
    *(v16 + 7072) = a6 + (Position - a7);
    *(v16 + 7080) = a5;
  }

  else
  {
    result = 2229280769;
    if (a8)
    {
      if (a3 == 8 && !a4)
      {
        *(a1 + 8040) = a5;
        v17 = ssftriff_reader_GetPosition(a2);
        result = 0;
        *(a1 + 8044) = v17;
      }
    }

    else
    {
      v18 = a1 + 40960;
      v19 = *(a1 + 43360);
      if (v19 <= 0x3F)
      {
        v20 = a1 + 8 * v19;
        v21 = a1 + 120 * a3 + 24 * a4;
        result = ssftriff_reader_DetachChunkData(a2, (v20 + 42848), (v21 + 7072));
        if ((result & 0x80000000) == 0)
        {
          ++*(v18 + 2400);
          *(v18 + 1884) += a5;
          *(v21 + 7080) = a5;
        }
      }

      else
      {
        return 2229280772;
      }
    }
  }

  return result;
}

uint64_t select_bet5_LoadRiffGenericFeatureMap(uint64_t a1, uint64_t a2, char *__src, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v13 = 2229280778;
  __dst = 0;
  cstdlib_memcpy(&__dst, __src, 2uLL);
  v14 = heap_Calloc(*(a1 + 8), __dst + 1, 8);
  *a5 = v14;
  if (v14)
  {
    v15 = heap_Calloc(*(a1 + 8), __dst + 1, 8);
    *a6 = v15;
    if (v15)
    {
      v16 = heap_Calloc(*(a1 + 8), __dst + 1, 8);
      *a7 = v16;
      if (v16)
      {
        if (__dst)
        {
          v26 = a5;
          v27 = a7;
          v17 = 0;
          v18 = 2;
          while (1)
          {
            v29 = 0;
            __s[0] = 0;
            v30 = 256;
            v13 = ssftriff_reader_ReadStringZ(a2, __src, a4, v18, __s, &v30);
            v19 = v30;
            *(*a5 + 8 * v17) = UNICORN__heap_StrDup(*(a1 + 8), __s);
            if (!*(*a5 + 8 * v17))
            {
              return 2229280778;
            }

            v20 = v19 + v18;
            cstdlib_memcpy(&v29, &__src[v20], 2uLL);
            *(*a6 + 8 * v17) = heap_Calloc(*(a1 + 8), v29 + 1, 8);
            if (!*(*a6 + 8 * v17))
            {
              return 2229280778;
            }

            *(*v27 + 8 * v17) = heap_Calloc(*(a1 + 8), v29 + 1, 1);
            if (!*(*v27 + 8 * v17))
            {
              return 2229280778;
            }

            v18 = v20 + 2;
            if (v29)
            {
              v21 = 0;
              while (1)
              {
                v22 = v18;
                __s[0] = 0;
                v30 = 256;
                v13 = ssftriff_reader_ReadStringZ(a2, __src, a4, v18, __s, &v30);
                v23 = v30;
                *(*(*a6 + 8 * v17) + 8 * v21) = UNICORN__heap_StrDup(*(a1 + 8), __s);
                if (!*(*(*a6 + 8 * v17) + 8 * v21))
                {
                  return 2229280778;
                }

                v18 += v23;
                if (++v21 >= v29)
                {
                  if (v29)
                  {
                    v24 = 0;
                    a5 = v26;
                    do
                    {
                      *(*(*v27 + 8 * v17) + v24) = __src[v22 + v23 + v24];
                      ++v24;
                    }

                    while (v24 < v29);
                    v18 = v22 + v23 + v24;
                  }

                  else
                  {
                    a5 = v26;
                  }

                  goto LABEL_19;
                }
              }
            }

            a5 = v26;
LABEL_19:
            if (++v17 >= __dst)
            {
              return v13;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v13;
}

uint64_t ParseInternalTagString(char *a1, uint64_t a2)
{
  v3 = a1;
  v4 = cstdlib_strchr(a1, 95);
  if (v4)
  {
    v5 = 0;
    do
    {
      *v4 = 0;
      *(a2 + v5++) = cstdlib_atoi(v3);
      v3 = (v4 + 1);
      v4 = cstdlib_strchr(v4 + 1, 95);
    }

    while (v4);
    v4 = v5;
  }

  result = cstdlib_atoi(v3);
  v4[a2] = result;
  return result;
}

uint64_t UNICORN__mfs_ParamMap_UnMapSection(uint64_t result)
{
  v1 = result;
  v2 = (result + 1592);
  v3 = 5;
  do
  {
    if (*v2)
    {
      result = brk_DataUnmap(*(*(v1 + 1072) + 24), *(v2 - 1), *v2);
      *v2 = 0;
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t mfs_Stub_ParamMap_GetDecodeLF0FromJV(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6, float a7)
{
  if (!*(a2 + 2416))
  {
    return 0;
  }

  v12 = *(a2 + 568);
  *a6 = 2;
  if (*(a3 + 1712) <= 1u)
  {
    v13 = heap_Realloc(*(a1 + 8), *(a3 + 1680), 208);
    *(a3 + 1680) = v13;
    if (!v13)
    {
      return 2229280778;
    }

    *(a3 + 1712) = *a6 + 50;
  }

  if (*(v12 + 6764))
  {
    v14 = *(a2 + 568);
    if (*(v12 + 5984))
    {
      a4 = *(*(a2 + 848) + 4 * (a4 / *(v14 + 5992))) + *(v14 + 11564) / *a2 * (a4 % *a2);
    }

    else
    {
      a4 = *(*(a2 + 848) + 4 * (a4 / *(v14 + 5992)));
    }
  }

  result = 0;
  v16 = (*(a2 + 2416) + 24 * a4);
  LOWORD(a7) = *v16;
  *&v17 = (LODWORD(a7) / *(v12 + 6056)) + *(v12 + 6016);
  v18 = *(a3 + 1680);
  *v18 = *&v17;
  LOWORD(v17) = v16[1];
  v18[*a6 - 1] = (v17 / *(v12 + 6056)) + *(v12 + 6016);
  *(a5 + 16) = v18;
  return result;
}

uint64_t UNICORN__mfs_Stub_ParamMap_GetAcousticVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6, double a7)
{
  v7 = *(a2 + 568);
  v8 = *(v7 + 6772) - 5;
  if (v8 >= 0xFFFFFFFE && *(a3 + 1896) && *(v7 + 11520) != 3 && ((v10 = *(v7 + 6800), v10 != 9) ? (v11 = v10 == 7) : (v11 = 1), v11))
  {
    v14 = a4;
    if (*(a2 + 1928))
    {

      return mfs_Stub_ParamMap_GetDecodeLF0FromJV(a1, a2, a3, a4, a5, a6, *&a7);
    }

    else
    {
      v19 = *a6;
      if (!*a6)
      {
        v39 = 0;
        mfs_GetMessageOffsetAndDur_Frames(a2, a4, 0, &v39);
        v19 = v39;
        *a6 = v39;
      }

      if (*(a3 + 1712) < v19)
      {
        v20 = heap_Realloc(*(a1 + 8), *(a3 + 1680), 4 * v19 + 200);
        *(a3 + 1680) = v20;
        if (!v20)
        {
          return 2229280778;
        }

        *(a3 + 1712) = *a6 + 50;
      }

      if (*(v7 + 6764))
      {
        v21 = *(a2 + 568);
        if (*(v7 + 5984))
        {
          v14 = *(*(a2 + 848) + 4 * (v14 / *(v21 + 5992))) + *(v21 + 11564) / *a2 * (v14 % *a2);
        }

        else
        {
          v14 = *(*(a2 + 848) + 4 * (v14 / *(v21 + 5992)));
        }
      }

      v22 = (*(a2 + 2416) + 24 * v14);
      LOWORD(a7) = *v22;
      *&v23 = (LODWORD(a7) / *(v7 + 6056)) + *(v7 + 6016);
      v24 = *(a3 + 1680);
      *v24 = *&v23;
      LOWORD(v23) = v22[1];
      v25 = *a6;
      v24[v25 - 1] = (v23 / *(v7 + 6056)) + *(v7 + 6016);
      *(a5 + 16) = v24;
      v26 = (v25 >> 1);
      if (v26 < 2)
      {
        LODWORD(v26) = 1;
      }

      else
      {
        v27 = 0;
        v28 = v24 + 2;
        *&a7 = *v24;
        v29 = vdupq_n_s64(v26 - 2);
        do
        {
          v30 = vdupq_n_s64(v27);
          v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v30, xmmword_26ECC7980)));
          if (vuzp1_s16(v31, *&a7).u8[0])
          {
            *(v28 - 1) = LODWORD(a7);
          }

          if (vuzp1_s16(v31, *&a7).i8[2])
          {
            *v28 = LODWORD(a7);
          }

          if (vuzp1_s16(*&a7, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v30, xmmword_26ECCE810)))).i32[1])
          {
            v28[1] = LODWORD(a7);
            v28[2] = LODWORD(a7);
          }

          v27 += 4;
          v28 += 4;
        }

        while (((v26 + 2) & 0xFFFFFFFC) != v27);
      }

      v32 = (v25 - 1);
      if (v26 >= v32)
      {
        return 0;
      }

      else
      {
        v33 = 0;
        *&a7 = v24[v32];
        v34 = v32 - v26;
        v35 = vdupq_n_s64(v34 - 1);
        v36 = &v24[v26 + 2];
        do
        {
          v37 = vdupq_n_s64(v33);
          v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_26ECC7980)));
          if (vuzp1_s16(v38, *&a7).u8[0])
          {
            *(v36 - 2) = *&a7;
          }

          if (vuzp1_s16(v38, *&a7).i8[2])
          {
            *(v36 - 1) = *&a7;
          }

          if (vuzp1_s16(*&a7, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_26ECCE810)))).i32[1])
          {
            *v36 = *&a7;
            v36[1] = *&a7;
          }

          result = 0;
          v33 += 4;
          v36 += 4;
        }

        while (((v34 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v33);
      }
    }
  }

  else
  {
    result = 2229280769;
    if (*(v7 + 11520) != 3)
    {
      if (*(v7 + 6800) != 8 || v8 >= 0xFFFFFFFE)
      {
        return 0;
      }

      else
      {
        return 2229280769;
      }
    }
  }

  return result;
}

uint64_t mfs_bnfData_Init(int32x2_t *a1, int32x2_t *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = a1[844].i32[1];
  a2[241].i32[0] = v6 == 1;
  v7 = a1[972];
  if (v7)
  {
    a2[242] = (v7 + 1);
    a2[241].i8[4] = *v7;
  }

  else
  {
    a2[242] = 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v8 = a1[846].i32[1] - 5;
  if (a1[775].i32[0])
  {
    v9 = a1[774].i32[1] != 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = a1[748].i32[0];
  v12 = a2->i32[0];
  if (v11)
  {
    v13 = a2->i32[0];
  }

  else
  {
    v13 = 1;
  }

  a1[749].i32[0] = v13;
  if (v12 <= 0)
  {
    v14 = 0;
    LODWORD(v17) = 0;
    a2[124].i32[1] = 0;
  }

  else
  {
    v14 = 0;
    v15 = a2[5];
    if (v12 + 2 <= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = (v12 + 2);
    }

    v17 = v16 - 2;
    v18 = (*&v15 + 8);
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v14 <= v20)
      {
        v14 = v19;
      }

      --v17;
    }

    while (v17);
    v21 = 0;
    a2[124].i32[1] = 0;
    v22 = 2;
    do
    {
      v23 = *(*&v15 + 4 * v22);
      if (v23)
      {
        v24 = (*(*&a2[97] + 8 * v22) + 44);
        do
        {
          v26 = *v24;
          v24 += 10;
          v25 = v26;
          if (v21 <= v26)
          {
            v21 = v25;
          }

          LODWORD(v17) = v25 + v17;
          --v23;
        }

        while (v23);
        a2[124].i32[1] = v21;
      }

      ++v22;
    }

    while (v22 != v16);
  }

  v27 = v5[1444].i32[1];
  if (!v27)
  {
    v5[1444].i32[1] = v17;
    v28 = v5[1443].i32[1] - v17;
    v5[1445].i32[0] = v28;
    goto LABEL_34;
  }

  if (v17 == v27)
  {
    v28 = v5[1445].u32[0];
LABEL_34:
    v29 = v28 + v17;
    v5[1445].i32[1] = v29;
    v30 = v5[1107];
    a2[106] = v30;
    if (!*&v30)
    {
      goto LABEL_120;
    }

    if (v28)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v44 = v11 == 0;
    a2[106] = (*&v30 + 4);
    v32 = v31 + v14;
    v33 = a2[71];
    v34 = *(*&v33 + 5992);
    v35 = v28 / v34;
    if (v44)
    {
      v36 = v35 + 1;
    }

    else
    {
      v36 = v35;
    }

    a2[124].i32[0] = v29 / v34;
    a2[107].i32[0] = v32;
    if (v12 >= 1)
    {
      v86 = v9;
      v87 = v5;
      v37 = 0;
      v38 = a2 + 108;
      v39 = 2;
      while (1)
      {
        v40 = *(*&a2[71] + 5984);
        v41 = 8 * v39 - 16;
        *(v38 + v41) = heap_Calloc(*(a3 + 8), v32, 4);
        v42 = heap_Calloc(*(a3 + 8), v32, 4);
        *(&a2[116] + v41) = v42;
        v43 = *(v38 + v41);
        v44 = !v43 || v42 == 0;
        if (v44)
        {
          goto LABEL_120;
        }

        if (v40)
        {
          v37 = 0;
        }

        v45 = *(*&a2[5] + 4 * v39);
        if (v45)
        {
          v46 = (v43 + 4);
          v47 = (v42 + 4);
          v48 = (*(*&a2[97] + 8 * v39) + 44);
          do
          {
            v49 = *v48;
            v48 += 10;
            *v47++ = v36 + v37;
            *v46++ = v49;
            v37 += v49;
            --v45;
          }

          while (v45);
        }

        if (v39++ > a2->i32[0])
        {
          v33 = a2[71];
          v5 = v87;
          v13 = v87[749].u32[0];
          v3 = a3;
          v9 = v86;
          break;
        }
      }
    }

    v51 = heap_Calloc(*(v3 + 8), 2 * ((*(*&v33 + 11548) + 1) / v13), 4);
    a2[133] = v51;
    if (!v51)
    {
LABEL_120:
      result = 2229280778;
      goto LABEL_121;
    }

    if (v5[1443].i32[1])
    {
      v52 = 0;
      v53 = a2[106];
      v54 = a2[71];
      v55 = v5[749].i32[0];
      do
      {
        v56 = *(*&v54 + 5992);
        if ((v52 - v55) < 0)
        {
          v57 = 0;
        }

        else
        {
          v57 = *(*&v53 + 4 * ((v52 - v55) / v56));
        }

        v58 = v52 + v55;
        if (v58 >= *(*&v54 + 11548) + 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = *(*&v53 + 4 * (v58 / v56));
        }

        v60 = *(*&v53 + 4 * (v52 / v56));
        *(v51 + 4 * (2 * v60)) = v57;
        *(v51 + 4 * ((2 * v60) | 1u)) = v59;
        v55 = v5[749].i32[0];
        v52 += v55;
      }

      while (v52 < v5[1443].i32[1]);
    }

    v61 = v5[975];
    if (*&v61 && (a2[126] = (*&v61 + 16), v62 = v5[976].i32[0] - 16, v62 > 3))
    {
      v63 = v5[972];
      if (!v63)
      {
        v64 = v62 >> 2;
        LODWORD(v63) = v5[841].i32[1];
LABEL_73:
        a2[190].i32[1] = 1;
        a2[125] = 0;
        v65 = vadd_s32(v5[973], 0x10FFFFFFF0);
        a2[191] = vrev64_s32(v65);
        if (!v63)
        {
          if (v64 <= 1)
          {
            v66 = 1;
          }

          else
          {
            v66 = v64;
          }

          LODWORD(v63) = v65.i32[0] / v66;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v63 = v5[972];
      if (!v63)
      {
        LODWORD(v63) = v5[841].i32[1];
        if (!v63)
        {
          result = 2229280785;
          goto LABEL_121;
        }

        v64 = 0;
        goto LABEL_73;
      }
    }

    a2[190].i32[1] = 0;
    a2[125] = (v63 + 16);
    a2[191] = 0;
    LOBYTE(v63) = *v63;
LABEL_78:
    a2[190].i8[0] = v63;
    v67 = v5[1122];
    if (v67)
    {
      a2[127] = (*&v67 + 16);
    }

    v68 = v5[1125];
    if (v68)
    {
      a2[128] = (*&v68 + 16);
    }

    v69 = v5[1152];
    if (v69)
    {
      a2[129] = (*&v69 + 16);
    }

    if (v9)
    {
      v70 = v5[1167];
      if (v70)
      {
        a2[130] = (*&v70 + 16);
      }
    }

    v71 = v5[1182];
    if (v71)
    {
      a2[131] = (*&v71 + 16);
    }

    if (v8 <= 0xFFFFFFFD)
    {
      v72 = v5[1137];
      if (v72)
      {
        a2[132] = (*&v72 + 16);
      }
    }

    if (a2->i32[0] < 1)
    {
      result = 0;
      goto LABEL_121;
    }

    v88 = v5;
    v73 = 0;
    v74 = a2[107].u32[0];
    v75 = a2 + 134;
    while (1)
    {
      v76 = a2[190].i32[1] ? 4 : 8;
      v77 = (a2[190].i32[1] ? &a2[192] : &a2[134]);
      *(v77 + 8 * v73) = heap_Calloc(*(v3 + 8), v74, v76);
      v78 = a2[190].i32[1];
      if (v78 == 1)
      {
        if (!*&v75[58])
        {
          goto LABEL_120;
        }
      }

      else if (!v78 && !*v75)
      {
        goto LABEL_120;
      }

      if (a2[126])
      {
        v79 = heap_Calloc(*(v3 + 8), v74, 8);
        v75[8] = v79;
        if (!v79)
        {
          goto LABEL_120;
        }
      }

      if (a2[127])
      {
        v80 = heap_Calloc(*(v3 + 8), v74, 8);
        v75[16] = v80;
        if (!v80)
        {
          goto LABEL_120;
        }
      }

      if (a2[128])
      {
        v81 = heap_Calloc(*(v3 + 8), v74, 8);
        v75[24] = v81;
        if (!v81)
        {
          goto LABEL_120;
        }
      }

      if (a2[129])
      {
        v82 = heap_Calloc(*(v3 + 8), v74, 8);
        v75[32] = v82;
        if (!v82)
        {
          goto LABEL_120;
        }
      }

      if (a2[130])
      {
        v83 = heap_Calloc(*(v3 + 8), v74, 8);
        v75[40] = v83;
        if (!v83)
        {
          goto LABEL_120;
        }
      }

      if (v8 <= 0xFFFFFFFD)
      {
        if (a2[132])
        {
          v84 = heap_Calloc(*(v3 + 8), v74, 8);
          v75[48] = v84;
          if (!v84)
          {
            goto LABEL_120;
          }
        }
      }

      v85 = v73 + 2;
      initClusterData(a2, v88, v73 + 2, v8 < 0xFFFFFFFE, v9);
      result = 0;
      ++v73;
      ++v75;
      if (v85 > a2->i32[0])
      {
        goto LABEL_121;
      }
    }
  }

  result = 2229280768;
LABEL_121:
  a2[241].i8[4] = a2[190].i8[0];
  return result;
}

uint64_t initClusterData(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(*(result + 40) + 4 * a3);
  if (v5)
  {
    v6 = 0;
    v7 = a3 - 2;
    do
    {
      v8 = *(a2 + 5984);
      if (v8)
      {
        v8 = *(*(result + 568) + 11564) / *result * v7;
      }

      v9 = *(*(result + 928 + 8 * v7) + 4 * v6 + 4);
      if (*(result + 1524))
      {
        *(*(result + 1536 + 8 * v7) + 4 * v6 + 4) = v9 * *(result + 1520);
      }

      else
      {
        *(*(result + 1072 + 8 * v7) + 8 * v6 + 8) = *(result + 1000) + v9 * *(result + 1520);
      }

      v10 = *(result + 1008);
      if (v10)
      {
        *(*(result + 1136 + 8 * v7) + 8 * v6 + 8) = v10 + 4 * v9;
      }

      v11 = v8 + v9;
      v12 = *(result + 1016);
      if (v12)
      {
        *(*(result + 1200 + 8 * v7) + 8 * v6 + 8) = v12 + 2 * v11;
      }

      v13 = *(result + 1024);
      if (v13)
      {
        *(*(result + 1264 + 8 * v7) + 8 * v6 + 8) = v13 + 2 * v11;
      }

      v14 = *(result + 1032);
      if (v14)
      {
        *(*(result + 1328 + 8 * v7) + 8 * v6 + 8) = v14 + v11;
      }

      if (a5)
      {
        v15 = *(result + 1040);
        if (v15)
        {
          *(*(result + 1392 + 8 * v7) + 8 * v6 + 8) = v15 + v11;
        }
      }

      if (a4)
      {
        v16 = *(result + 1056);
        if (v16)
        {
          *(*(result + 1456 + 8 * v7) + 8 * v6 + 8) = v16 + 2 * v11;
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

void *mfs_bnfData_DeInit(void *result, uint64_t a2)
{
  v2 = result;
  if (*(result + 482) == 1)
  {
    if (*result >= 1)
    {
      v4 = result + 108;
      v5 = 1;
      do
      {
        v6 = v4[84];
        if (v6)
        {
          heap_Free(*(a2 + 8), v6);
          v4[84] = 0;
        }

        v7 = v4[26];
        if (v7)
        {
          heap_Free(*(a2 + 8), v7);
          v4[26] = 0;
        }

        v8 = v4[34];
        if (v8)
        {
          heap_Free(*(a2 + 8), v8);
          v4[34] = 0;
        }

        v9 = v4[42];
        if (v9)
        {
          heap_Free(*(a2 + 8), v9);
          v4[42] = 0;
        }

        v10 = v4[50];
        if (v10)
        {
          heap_Free(*(a2 + 8), v10);
          v4[50] = 0;
        }

        v11 = v4[58];
        if (v11)
        {
          heap_Free(*(a2 + 8), v11);
          v4[58] = 0;
        }

        v12 = v4[66];
        if (v12)
        {
          heap_Free(*(a2 + 8), v12);
          v4[66] = 0;
        }

        if (*v4)
        {
          heap_Free(*(a2 + 8), *v4);
          *v4 = 0;
        }

        v13 = v4[8];
        if (v13)
        {
          heap_Free(*(a2 + 8), v13);
          v4[8] = 0;
        }

        v14 = v4[74];
        if (v14)
        {
          heap_Free(*(a2 + 8), v14);
          v4[74] = 0;
        }

        ++v5;
        ++v4;
      }

      while (v5 <= *v2);
    }

    v15 = *(a2 + 8);
    v16 = *(v2 + 133);

    return heap_Free(v15, v16);
  }

  else
  {
    *(result + 1932) = 0;
    result[242] = 0;
  }

  return result;
}

double mfs_bnfData_sse(float *a1, float *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = a3;
  result = 0.0;
  do
  {
    v5 = *a1++;
    v6 = v5;
    v7 = *a2++;
    *&result = *&result + ((v6 - v7) * (v6 - v7));
    --v3;
  }

  while (v3);
  return result;
}

char *mfs_bnfData_Delta(char *result, char *a2, unsigned int a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = *result++;
      v5 = v6;
      v7 = *a2++;
      *a4++ = v5 - v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

float mfs_bnfData_Delta_flt(float *a1, float *a2, unsigned int a3, float *a4)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a1++;
      v6 = v5;
      v7 = *a2++;
      result = v6 - v7;
      *a4++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *mfs_bnfData_Delta_norm(char *result, char *a2, unsigned int a3, float *a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = 0.0;
    v6 = a3;
    v7 = a2;
    v8 = result;
    v9 = 0.0;
    do
    {
      v10 = *v8++;
      v11 = (v10 * v10);
      v12 = *v7++;
      v9 = v9 + v11;
      v5 = v5 + (v12 * v12);
      --v6;
    }

    while (v6);
    v13 = sqrtf(v9);
    v14 = sqrtf(v5);
    do
    {
      v15 = *result++;
      v16 = v15;
      v17 = *a2++;
      *a4++ = (v16 / v13) - (v17 / v14);
      --v4;
    }

    while (v4);
  }

  return result;
}

float mfs_bnfData_CosineCost(char *a1, char *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = a3;
    do
    {
      v8 = *a1++;
      v7 = v8;
      v9 = *a2++;
      v5 += v9 * v7;
      v4 += v7 * v7;
      v3 += v9 * v9;
      --v6;
    }

    while (v6);
    v10 = v5;
    v11 = v4;
    v12 = v3;
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  return 1.0 - (v10 / (sqrtf(v11) * sqrtf(v12)));
}

float mfs_bnfData_CosineCost_LeftSidedPreNormalised(float *a1, char *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = v7;
      v9 = *a1++;
      v4 = v4 + (v8 * v9);
      v5 = v5 + (v6 * v6);
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  return 1.0 - (v4 / sqrtf(v5));
}

float mfs_bnfData_CosineCost_Normalised(float *a1, float *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = 0.0;
    do
    {
      v5 = *a2++;
      v6 = v5;
      v7 = *a1++;
      v4 = v4 + (v6 * v7);
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
  }

  return 1.0 - v4;
}

float mfs_bnfData_CosineCost_F32(float *a1, float *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = *a1++;
      v8 = v7;
      v9 = *a2++;
      v6 = v6 + (v8 * v9);
      v5 = v5 + (v8 * v8);
      v4 = v4 + (v9 * v9);
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  return 1.0 - (v6 / (sqrtf(v5) * sqrtf(v4)));
}

float mfs_bnfData_Distance(uint64_t a1, float *a2, unsigned int a3)
{
  v3 = *(a1 + 1932);
  if (*(a1 + 1932))
  {
    v4 = (*(a1 + 1936) + v3 * a3);
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = v8;
      v10 = *a2++;
      v5 = v5 + (v9 * v10);
      v6 = v6 + (v7 * v7);
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  result = 1.0 - (v5 / sqrtf(v6));
  v12 = *(a1 + 1904);
  if (v12)
  {
    return result * *(v12 + 4 * a3);
  }

  return result;
}

uint64_t mfs_bnfData_Clusterize_Block_Distance_fxd16(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, int a5, uint64_t a6, float a7)
{
  v36 = 0;
  v12 = a5 - 2;
  v13 = *(a1 + 1520);
  v14 = (a1 + 8 * v12);
  v15 = *(v14[108] + 4 * a4);
  if (*(a1 + 1524) != 1)
  {
    result = 0;
    v36 = *(v14[134] + 8 * a4);
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_6:
    v22 = 0;
    v23 = 0;
    v24 = *(v14[142] + 8 * a4);
    v25 = v36;
    do
    {
      if (v13)
      {
        v26 = 0;
        v27 = v13;
        v28 = a3;
        v29 = (v25 + v22);
        do
        {
          v31 = *v29++;
          v30 = v31;
          v32 = *v28++;
          v26 += v32 * v30;
          --v27;
        }

        while (v27);
        v33 = v26;
      }

      else
      {
        v33 = 0.0;
      }

      *(a6 + 4 * v23) = (-(*(v24 + 4 * v23) * v33) * a7) + 1.0;
      ++v23;
      v22 += v13;
    }

    while (v23 != v15);
    goto LABEL_13;
  }

  v35 = a2;
  result = brk_DataMap(*(a2 + 24), *(a1 + 2464), (*(*(a1 + 1536 + 8 * v12) + 4 * a4) + *(a1 + 1528)), (v15 * v13), &v36);
  if ((result & 0x80000000) != 0)
  {
    v34 = result;
    UNICORN__log_select_Error(v35, 74001, "ODLBNF DataMap (%u,%u) Error %x", v17, v18, v19, v20, v21);
    return v34;
  }

  a2 = v35;
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_13:
  if (*(a1 + 1524) == 1)
  {
    return brk_DataUnmap(*(a2 + 24), *(a1 + 2464), v36);
  }

  return result;
}

uint64_t mfs_bnfData_Clusterize_Block_Distance_RandomProjection(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, int a5, uint64_t a6)
{
  v44 = 0;
  v10 = a5 - 2;
  v11 = *(a1 + 1520);
  if (*(a1 + 1520))
  {
    v12 = 3.1416 / (v11 * 8.0);
  }

  else
  {
    v12 = 0.3927;
  }

  v13 = a1 + 8 * v10;
  v14 = *(*(v13 + 864) + 4 * a4);
  if (*(a1 + 1524) != 1)
  {
    v41 = a2;
    v42 = 0;
    v44 = *(*(v13 + 1072) + 8 * a4);
    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v15 = brk_DataMap(*(a2 + 24), *(a1 + 2464), (*(*(a1 + 1536 + 8 * v10) + 4 * a4) + *(a1 + 1528)), (v14 * v11), &v44);
  v21 = v15;
  if ((v15 & 0x80000000) != 0)
  {
    UNICORN__log_select_Error(a2, 74001, "ODLBNF DataMap (%u,%u) Error %x", v16, v17, v18, v19, v20);
    return v21;
  }

  v41 = a2;
  v42 = v15;
  if (v14)
  {
LABEL_9:
    v22 = 0;
    v23 = 0;
    v24 = v44;
    v43 = v44 + 1;
    do
    {
      if ((v11 & 3) != 0)
      {
        if (v11)
        {
          v25 = 0;
          v26 = v11;
          v27 = a3;
          v28 = (v24 + v22);
          do
          {
            v30 = *v27++;
            v29 = v30;
            v31 = *v28++;
            v25 += BitsSetTable256[(v31 ^ v29)];
            --v26;
          }

          while (v26);
          goto LABEL_20;
        }
      }

      else if (v11)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = a3 + 1;
        v37 = 3;
        v38 = (v43 + v22);
        do
        {
          v35 += BitsSetTable256[*(v38 - 1) ^ *(v36 - 1)];
          v34 += BitsSetTable256[*v38 ^ *v36];
          v33 += BitsSetTable256[v38[1] ^ v36[1]];
          v32 += BitsSetTable256[v38[2] ^ v36[2]];
          v39 = v37 + 1;
          v37 += 4;
          v38 += 4;
          v36 += 4;
        }

        while (v39 < v11);
        v25 = v34 + v35 + v33 + v32;
        goto LABEL_20;
      }

      v25 = 0;
LABEL_20:
      *(a6 + 4 * v23++) = 1.0 - cosf(v12 * v25);
      v22 += v11;
    }

    while (v23 != v14);
  }

LABEL_21:
  v21 = v42;
  if (*(a1 + 1524) == 1)
  {
    return brk_DataUnmap(*(v41 + 24), *(a1 + 2464), v44);
  }

  return v21;
}

uint64_t mfs_bnfData_Distance_Unit_ID_fxd16(uint64_t result, uint64_t a2, __int16 *a3, unsigned int a4)
{
  v6 = result;
  v19 = 0;
  v7 = *(result + 1520);
  if (*(result + 1524) == 1)
  {
    result = brk_DataMap(*(a2 + 24), *(result + 2464), (*(result + 1528) + *(*(result + 848) + 4 * (a4 / *(*(result + 568) + 5992))) * v7), v7, &v19);
    if ((result & 0x80000000) != 0)
    {
      return UNICORN__log_select_Error(a2, 74001, "ODLBNF DataMap (%u,%u) Error %x", v8, v9, v10, v11, v12);
    }

    v13 = v19;
  }

  else
  {
    v13 = *(result + 1000) + (*(*(result + 848) + 4 * (a4 / *(*(result + 568) + 5992))) * v7);
    v19 = v13;
  }

  if (v7)
  {
    v14 = 0;
    v15 = v13;
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = *a3++;
      v14 += v18 * v16;
      --v7;
    }

    while (v7);
  }

  if (*(v6 + 1524) == 1)
  {
    return brk_DataUnmap(*(a2 + 24), *(v6 + 2464), v13);
  }

  return result;
}

void mfs_bnfData_Distance_Unit_ID_RandomProjection(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  v7 = *(a1 + 1520);
  v28 = 0;
  if (v7)
  {
    v8 = 3.1416 / (v7 * 8.0);
  }

  else
  {
    v8 = 0.3927;
  }

  if (*(a1 + 1524) == 1)
  {
    if ((brk_DataMap(*(a2 + 24), *(a1 + 2464), (*(a1 + 1528) + *(*(a1 + 848) + 4 * (a4 / *(*(a1 + 568) + 5992))) * v7), v7, &v28) & 0x80000000) != 0)
    {
      UNICORN__log_select_Error(a2, 74001, "ODLBNF DataMap (%u,%u) Error %x", v9, v10, v11, v12, v13);
      return;
    }

    v14 = v28;
  }

  else
  {
    v14 = *(a1 + 1000) + (*(*(a1 + 848) + 4 * (a4 / *(*(a1 + 568) + 5992))) * v7);
    v28 = v14;
  }

  if ((v7 & 3) != 0)
  {
    if (v7)
    {
      v15 = 0;
      v16 = v14;
      do
      {
        v18 = *a3++;
        v17 = v18;
        v19 = *v16++;
        v15 += BitsSetTable256[(v19 ^ v17)];
        --v7;
      }

      while (v7);
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = (v14 + 1);
    v25 = a3 + 1;
    v26 = 3;
    do
    {
      v23 += BitsSetTable256[*(v24 - 1) ^ *(v25 - 1)];
      v22 += BitsSetTable256[*v24 ^ *v25];
      v21 += BitsSetTable256[v24[1] ^ v25[1]];
      v20 += BitsSetTable256[v24[2] ^ v25[2]];
      v27 = v26 + 1;
      v26 += 4;
      v24 += 4;
      v25 += 4;
    }

    while (v27 < v7);
    v15 = v22 + v23 + v21 + v20;
    goto LABEL_18;
  }

  v15 = 0;
LABEL_18:
  cosf(v8 * v15);
  if (*(a1 + 1524) == 1)
  {
    brk_DataUnmap(*(a2 + 24), *(a1 + 2464), v14);
  }
}

uint64_t clamp_u32(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t clamp_s32(signed int a1, unsigned int a2, signed int a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t UNICORN__redistributeInjectDur(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = UNICORN__mfs_SegmentList_Length(a1 + 1552);
  if (*a2 != 3)
  {
    return 2229280775;
  }

  if (v10 >= 7)
  {
    v11 = 0;
    v12 = *(a3 + 24);
    v13 = 4 * v12;
    v14 = 3 * v12;
    v15 = (a4 + 196);
    v16 = (a5 + 16);
    v17 = 28 * (v10 - 3) - 84;
    v18 = 3;
    do
    {
      v19 = *a2;
      v20 = (*a2 & 1) == 0 || v19 < 2;
      v21 = (*a2 - 1) >> 1;
      if (v20)
      {
        v21 = (*a2 >> 1) - 1;
      }

      if (v18 != v21 + v18 / *a2 * v19)
      {
        goto LABEL_36;
      }

      if (*(v15 - 11) == 1 && !*(v15 - 21))
      {
        v22 = *(v16 - 2);
        v23 = *(a1 + 1568);
        v24 = *(v23 + v11 + 68);
        v25 = v22 - v24;
        if (v22 > v24)
        {
          if (v25 >= v13)
          {
            v25 /= 2;
          }

          *(v16 - 1) += v25;
          v26 = v22 - v25;
          goto LABEL_16;
        }

        if (v22 < v24)
        {
          v27 = v24 - v22;
          if (v27 >= v13)
          {
            v27 /= 2;
          }

          if (*(v23 + v11 + 96) > v14)
          {
            v28 = *(v16 - 1);
            if (v25 + v28 > v14)
            {
              *(v16 - 1) = v28 - v27;
              v26 = v27 + v22;
LABEL_16:
              *(v16 - 2) = v26;
            }
          }
        }
      }

      if (*(v15 - 10) == 1 && !*v15)
      {
        v29 = *v16;
        v30 = *(a1 + 1568);
        v31 = *(v30 + v11 + 124);
        v32 = *v16 - v31;
        if (*v16 <= v31)
        {
          if (v29 >= v31)
          {
            goto LABEL_36;
          }

          v34 = v31 - v29;
          if (v34 >= v13)
          {
            v34 /= 2;
          }

          if (*(v30 + v11 + 96) <= v14)
          {
            goto LABEL_36;
          }

          v35 = *(v16 - 1);
          if (v32 + v35 <= v14)
          {
            goto LABEL_36;
          }

          *(v16 - 1) = v35 - v34;
          v33 = v34 + v29;
        }

        else
        {
          if (v32 >= v13)
          {
            v32 /= 2;
          }

          *(v16 - 1) += v32;
          v33 = v29 - v32;
        }

        *v16 = v33;
      }

LABEL_36:
      v11 += 28;
      v15 += 10;
      ++v16;
      ++v18;
    }

    while (v17 != v11);
  }

  return 0;
}

uint64_t mfs_Psola_CalculateAdjustments_ByOne(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v11 = a1;
  v94 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v13 = (*(a2 + 1568) + 28 * a4);
  v14 = *(a2 + 1536);
  v15 = (a3 + 40 * a4);
  if (a4 <= 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (a3 + 40 * a4 - 40);
  }

  v17 = *v13;
  *v15 = *v13;
  if (v17 == -1)
  {
    v19 = 0;
    v18 = (v14 + 28 * a4 + 12);
  }

  else
  {
    v18 = v13 + 3;
    v19 = v13[2];
  }

  v20 = *v18;
  v15[1] = v19;
  v15[2] = v20;
  v15[5] = 1000;
  if (!a4)
  {
    v15[8] = 0;
    v15[3] = 1000;
    goto LABEL_98;
  }

  v89 = v12;
  v88 = a4;
  v21 = *v16 + 1 == v17;
  if (*v16 + 1 == v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = 100;
  }

  v15[8] = v21;
  v16[9] = v21;
  v15[6] = v22;
  v16[7] = v22;
  v15[3] = 1000;
  v16[4] = 1000;
  v23 = UnicornAddon_UID2AddonId(*(a2 + 1776), *(a2 + 1784), v17);
  v24 = *(a2 + 1776);
  v25 = v11;
  if (v23 != -1)
  {
    v26 = v24 + 48 * v23;
    v25 = *(v26 + 16);
    *v15 -= *(v26 + 24);
  }

  v87 = v23;
  v27 = UnicornAddon_UID2AddonId(v24, *(a2 + 1784), *v16);
  if (v27 != -1)
  {
    v28 = *(a2 + 1776) + 48 * v27;
    v11 = *(v28 + 16);
    *v16 -= *(v28 + 24);
  }

  v29 = v89;
  v30 = a4 / v89;
  v31 = *(v25 + 71);
  v32 = v31[2880];
  if ((v32 - 1) <= 1 && !v15[8] && *v16 != -1)
  {
    v41 = *v15;
    if (*v15 != -1)
    {
      v83 = v27;
      v84 = a5;
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      v90 = 0;
      v85 = a6;
      if ((UNICORN__mfs_Stub_ParamMap_GetAcousticVector(*(a2 + 1072), v25, a2, v41, &v91, &v90, 0.0) & 0x80000000) != 0 || (v42 = v90, v90 < 1))
      {
        v45 = 1000;
      }

      else
      {
        v43 = v92;
        while (1)
        {
          v44 = exp(*v43);
          v45 = (v44 + 0.5);
          if (v45 >= 10)
          {
            break;
          }

          ++v43;
          if (!--v42)
          {
            v45 = 1000;
            break;
          }
        }

        v30 = a4 / v89;
      }

      v50 = *v16;
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      v90 = 0;
      if ((UNICORN__mfs_Stub_ParamMap_GetAcousticVector(*(a2 + 1072), v11, a2, v50, &v91, &v90, 0.0) & 0x80000000) != 0 || v90 < 1)
      {
LABEL_48:
        v56 = 1000;
        v57 = 1000;
        v27 = v83;
        a5 = v84;
        v29 = v89;
      }

      else
      {
        v86 = v92;
        v51 = -v90;
        v52 = v90 - 1;
        while (1)
        {
          v53 = exp(*(v86 + 4 * v52));
          v54 = (v53 + 0.5);
          if (v54 > 9)
          {
            break;
          }

          --v52;
          if (__CFADD__(v51++, 1))
          {
            goto LABEL_48;
          }
        }

        v56 = 1000;
        v27 = v83;
        a5 = v84;
        v29 = v89;
        v57 = 1000;
        if (v45 != 1000 && v54 != 1000)
        {
          v82 = 1000 * ((v45 + v54) >> 1);
          v57 = v82 / v45;
          v56 = v82 / v54;
        }
      }

      v15[3] = v57;
      v16[4] = v56;
      v31 = *(v25 + 71);
      v32 = v31[2880];
      a6 = v85;
    }
  }

  v33 = a4 - v30 * v29;
  if ((v32 & 0xFFFFFFFE) == 2)
  {
    if (v33 + 1 == v29)
    {
      v34 = *v25;
      v35 = v34 * v30;
      if (v34 < 1)
      {
        goto LABEL_34;
      }

      v36 = 0;
      v37 = (a3 + 40 * v35 + 8);
      v38 = *v25;
      do
      {
        v39 = *v37;
        v37 += 10;
        v36 += v39;
        --v38;
      }

      while (v38);
      if (v36 < 1)
      {
LABEL_34:
        v40 = 1000;
      }

      else
      {
        v40 = ((*(*(a2 + 384) + 312 * v30 + 32) * 1000.0) / v36);
      }

      v46 = (a3 + 40 * v35);
      if (v34 + *v46 - 1 != *(a3 + 40 * (v35 + v34) - 40))
      {
        if (v34 < 1)
        {
          goto LABEL_64;
        }

        v47 = (a3 + 40 * v35 + 8);
        v48 = *v25;
        while (1)
        {
          v49 = *v47;
          v47 += 10;
          if (v49 == v31[6])
          {
            break;
          }

          if (!--v48)
          {
            goto LABEL_56;
          }
        }

        if (v40 >= 1300)
        {
          v58 = 1300;
        }

        else
        {
          v58 = v40;
        }

        if (v58 <= 700)
        {
          v40 = 700;
        }

        else
        {
          v40 = v58;
        }
      }

LABEL_56:
      v59 = v31[2885];
      v60 = v31[2886];
      if (v40 < v60)
      {
        v60 = v40;
      }

      if (v40 >= v59)
      {
        v59 = v60;
      }

      if (v34 >= 1)
      {
        do
        {
          if (*v46 != -1)
          {
            v46[5] = v59;
          }

          v46 += 10;
          --v34;
        }

        while (v34);
      }
    }

LABEL_64:
    if (v33 && a4 + 1 != a5)
    {
      goto LABEL_67;
    }
  }

  *a6 = a4;
LABEL_67:
  v61 = *(a2 + 8);
  if (*(*(v61 + 32) + v30) == 1 && v33 == v29 - 1 && v29 - 1 <= a4)
  {
    v62 = v30 | *(*(v61 + 1784) + 2 * v30);
    if (*(*(a2 + 384) + 312 * v30 + 32) >= 50)
    {
      v63 = 50;
    }

    else
    {
      v63 = *(*(a2 + 384) + 312 * v30 + 32);
    }

    if (v62)
    {
      v64 = *(*(a2 + 384) + 312 * v30 + 32);
    }

    else
    {
      v64 = v63;
    }

    v65 = v88 - v33;
    if (v29 == 2 && (v66 = (a3 + 40 * v65), *v66 == -1) && v66[10] == -1)
    {
      v80 = v31[6];
      v66[2] = v80;
      v74 = __OFSUB__(v64, v80);
      v81 = v64 - v80;
      if ((v81 < 0) ^ v74 | (v81 == 0))
      {
        v66[12] = 0;
      }

      else
      {
        v66[12] = v81;
      }
    }

    else
    {
      v67 = (a3 + 40 * (v65 + 1));
      if (*v67 == -1)
      {
        v68 = v27;
        v69 = a5;
        if (v29 < 1)
        {
          v70 = 0;
        }

        else
        {
          v70 = 0;
          v71 = 1;
          v72 = ~v33 + v88;
          v73 = (40 * v88 - 40 * v33 + a3 + 8);
          do
          {
            if (v71)
            {
              v70 += *v73;
            }

            --v71;
            ++v72;
            v73 += 10;
          }

          while (v72 < v88);
        }

        v74 = __OFSUB__(v64, v70);
        v75 = v64 - v70;
        if ((v75 < 0) ^ v74 | (v75 == 0))
        {
          v76 = 0;
        }

        else
        {
          v76 = v75;
        }

        UNICORN__log_select_Diag(*(a2 + 1072), 2, "PSOLA: changing dead unit duration from %d to %d ms");
        v67[2] = v76;
        a5 = v69;
        v27 = v68;
      }
    }
  }

  if (v87 == -1)
  {
    v77 = 0;
  }

  else
  {
    v77 = *(*(a2 + 1776) + 48 * v87 + 24);
  }

  *v15 += v77;
  if (v27 == -1)
  {
    v78 = 0;
  }

  else
  {
    v78 = *(*(a2 + 1776) + 48 * v27 + 24);
  }

  *v16 += v78;
LABEL_98:
  if (a4 + 1 >= a5)
  {
    v15[9] = 0;
    v15[4] = 1000;
    *a6 = a5;
  }

  return 0;
}

uint64_t UnicornSearch_StageTwo_TreeIndex_Cascaded(uint64_t a1, uint64_t a2)
{
  v166 = *MEMORY[0x277D85DE8];
  memset(v161, 0, sizeof(v161));
  v159 = 0u;
  v160 = 0u;
  __b = 0u;
  v2 = a2 + *(a1 + 96) * *(a1 + 92);
  v3 = v2 - 2;
  v4 = (*(*(a1 + 136) + 16) + 32 * v3);
  if (*(*(a1 + 144) + 4 * v3))
  {
    updated = 0;
    *(*v4 + 4) = 0;
    return updated;
  }

  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  v162 = *(v8 + 6640);
  __asm { FMOV            V1.2S, #1.0 }

  v163 = *(v8 + 6656);
  v164 = _D1;
  v165 = 1065353216;
  cstdlib_memset(&__b, 0, 0x50uLL);
  v14 = *(v9 + 1768);
  v15 = !v14 || !*(v14 + 16) && !*(v14 + 12);
  v16 = *(a1 + 112);
  if (*(v16 + 6752) > 1)
  {
    return 2229280769;
  }

  v17 = *(a1 + 92);
  v18 = *(a1 + 96);
  *(a1 + 280) = *(*(*(a1 + 128) + 16) + 4 * a2);
  if (*(v16 + 6704) == 0.0)
  {
    updated = 0;
  }

  else
  {
    updated = mfs_UpdateTargetQuantizedTrajectory_LF0(*(a1 + 104), *(a1 + 120), a1 + 176);
    if ((updated & 0x80000000) != 0)
    {
      return updated;
    }
  }

  v19 = *(a1 + 336);
  if (v19)
  {
    v20 = (a2 + v18 * v17 - 2);
    mfs_TCost_Elf0_Manhattan_TreeIndex(*(a1 + 112), *(a1 + 120), (*(a1 + 120) + 1088), v20, a1 + 176, *(*(*(a1 + 128) + 64) + 4 * a2), a2, *(a1 + 345) == 1, *(v19 + 4 * (2 * v20)), *(v19 + 4 * ((2 * v20) | 1u)));
  }

  if (*(a1 + 156) || *(a1 + 345) != 1)
  {
    v155 = v15;
    v156 = v4;
    v157 = v9;
    v151 = *(a1 + 100);
    v22 = *(a1 + 380);
    v24 = *(a1 + 112);
    v23 = *(a1 + 120);
    v25 = *(v23 + 1096);
    v26 = *v25;
    cstdlib_memset(&__b, 0, 0x50uLL);
    if (v25[482] == 1)
    {
      *(&v161[1] + 4) = __PAIR64__(v22, v151);
      LODWORD(v161[1]) = 0;
      if (v22)
      {
        if (a2 == 2)
        {
          HIDWORD(v161[0]) = 1;
        }

        else
        {
          v27 = v26 + 1 == a2 ? 0x200000002 : 0x100000004;
          *(v161 + 12) = v27;
        }
      }

      else
      {
        HIDWORD(v161[0]) = 0;
      }

      *&__b = GetBnfTargetVectorPacked(v23, v3 / *(v24 + 5992), &v160 + 2);
      if (*(v24 + 6752) >= 1)
      {
        if (v2 != 2)
        {
          if (*(*(a1 + 144) + 4 * (v2 - 3)))
          {
            BnfTargetVectorPacked = 0;
          }

          else
          {
            BnfTargetVectorPacked = GetBnfTargetVectorPacked(v23, (v2 - 3) / *(v24 + 5992), &v160 + 3);
          }

          *(&__b + 1) = BnfTargetVectorPacked;
        }

        v29 = (v2 - 1) / *(v24 + 5992);
        if (v29 < v151)
        {
          if (*(*(a1 + 144) + 4 * (v2 - 1)))
          {
            v30 = 0;
          }

          else
          {
            v30 = GetBnfTargetVectorPacked(v23, v29, v161);
          }

          *&v159 = v30;
        }

        if (*(v24 + 6752) >= 2)
        {
          if (v3 >= 2)
          {
            if (*(*(a1 + 144) + 4 * (v2 - 4)))
            {
              v31 = 0;
            }

            else
            {
              v31 = GetBnfTargetVectorPacked(v23, (v2 - 4) / *(v24 + 5992), v161 + 1);
            }

            *(&v159 + 1) = v31;
          }

          v32 = v2 / *(v24 + 5992);
          if (v32 < v151)
          {
            if (*(*(a1 + 144) + 4 * v2))
            {
              v33 = 0;
            }

            else
            {
              v33 = GetBnfTargetVectorPacked(v23, v32, v161 + 2);
            }

            *&v160 = v33;
          }
        }
      }
    }

    v34 = *(&v162 + LODWORD(v161[1])) * *(*(a1 + 112) + 5564);
    v35 = v34;
    if (v156[4] > v34)
    {
      updated = mfs_CostList_Select(*(a1 + 136), v2 - 2, 1, v34);
      v36 = *(*(a1 + 136) + 16) + 32 * v3;
      v38 = *(v36 + 16);
      v37 = (v36 + 16);
      if (v38 > v35)
      {
        *v37 = v35;
      }
    }

    if (UNICORN__log_select_GetLogLevel(*(*(v157 + 1072) + 32)) >= 3)
    {
      *(v157 + 1956) += v156[4];
    }

    v39 = *(a1 + 120);
    if (HIDWORD(v161[0]) != 4)
    {
      if (HIDWORD(v161[0]) == 2)
      {
        v53 = *(v39 + 1096);
        if (*(v53 + 1928) == 1)
        {
          v54 = *(a1 + 112);
          if (*(v54 + 6752))
          {
            if (v159)
            {
              v55 = 1.0 - *(*(v39 + 1352) + 4 * v3);
              v56 = *(*(v53 + 568) + 11548) - 1;
              v57 = *(v39 + 1104) + 32 * v3;
              v58 = v3 / *v53 + 1;
              v59 = 0.0;
              if (v58 >= *(a1 + 88) || *(v39 + 1168) != v58 || !*(v39 + 1176) || !*(v39 + 1184))
              {
                goto LABEL_189;
              }

              v59 = *(v54 + 6004);
              v60 = *(v57 + 16);
              if (v60)
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = *v57;
                do
                {
                  v65 = *(v64 + v61);
                  if (v65 < v56)
                  {
                    if ((*(*(v39 + 1176) + 4 * (((v65 + 1) / *(v54 + 5992)) >> 5)) >> ((v65 + 1) / *(v54 + 5992))))
                    {
                      ++v63;
                      *(v64 + v61 + 4) = *(v64 + v61 + 4) + (v55 * (*(*(v39 + 1312) + 8) * *(*(v39 + 1184) + 4 * *(*(v53 + 1064) + 4 * ((2 * *(v64 + v61 + 8)) | 1u)))));
                    }

                    else if (*(v54 + 6000))
                    {
                      *(v64 + v61 + 4) = v59 + *(v64 + v61 + 4);
                    }

                    else
                    {
                      v66 = *(*(v39 + 1312) + 8);
                      v152 = v63;
                      v67 = (*(a1 + 392))(v53, *(a1 + 56), v159, *v161);
                      v63 = v152;
                      v64 = *v57;
                      *(*v57 + v61 + 4) = *(*v57 + v61 + 4) + (v55 * (v66 * v67));
                      v60 = *(v57 + 16);
                    }
                  }

                  ++v62;
                  v61 += 12;
                }

                while (v62 < v60);
              }

              else
              {
                v63 = 0;
              }

              v133 = *(v54 + 6000);
              if (v133 && v63 < v133)
              {
LABEL_189:
                v135 = *(v57 + 16);
                if (v135)
                {
                  v136 = 0;
                  v137 = 0;
                  v138 = *v57;
                  do
                  {
                    v139 = *(v138 + v136);
                    if (v139 < v56)
                    {
                      v140 = *(*(v39 + 1312) + 8);
                      v141 = (*(a1 + 392))(v53, *(a1 + 56), v159, (v139 + 1), *v161);
                      v138 = *v57;
                      *(*v57 + v136 + 4) = (v55 * (v140 * v141)) + (*(*v57 + v136 + 4) - v59);
                      v135 = *(v57 + 16);
                    }

                    ++v137;
                    v136 += 12;
                    v21 = 4295000000.0;
                  }

                  while (v137 < v135);
                  goto LABEL_118;
                }
              }
            }
          }
        }
      }

      else if (HIDWORD(v161[0]) == 1)
      {
        v40 = *(v39 + 1096);
        if (*(v40 + 1928) == 1)
        {
          v41 = *(a1 + 112);
          if (*(v41 + 6752))
          {
            if (*(&__b + 1))
            {
              v42 = 1.0 - *(*(v39 + 1352) + 4 * v3);
              v43 = *(v39 + 1104) + 32 * v3;
              v44 = 0.0;
              if (*v40 > v3 || *(v39 + 1120) != v3 / *v40 - 1 || !*(v39 + 1128) || !*(v39 + 1136))
              {
                goto LABEL_200;
              }

              v44 = *(v41 + 6004);
              v45 = *(v43 + 16);
              if (v45)
              {
                v46 = 0;
                v47 = 0;
                v48 = 0;
                v49 = *v43;
                do
                {
                  v50 = *(v49 + v46);
                  if (v50 >= 1)
                  {
                    if ((*(*(v39 + 1128) + 4 * (((v50 - 1) / *(v41 + 5992)) >> 5)) >> ((v50 - 1) / *(v41 + 5992))))
                    {
                      ++v48;
                      *(v49 + v46 + 4) = *(v49 + v46 + 4) + (v42 * (*(*(v39 + 1312) + 4) * *(*(v39 + 1136) + 4 * *(*(v40 + 1064) + 4 * (2 * *(v49 + v46 + 8))))));
                    }

                    else if (*(v41 + 6000))
                    {
                      *(v49 + v46 + 4) = v44 + *(v49 + v46 + 4);
                    }

                    else
                    {
                      v51 = *(*(v39 + 1312) + 4);
                      v52 = (*(a1 + 392))(v40, *(a1 + 56), *(&__b + 1), *(&v160 + 3));
                      v49 = *v43;
                      *(*v43 + v46 + 4) = *(*v43 + v46 + 4) + (v42 * (v51 * v52));
                      v45 = *(v43 + 16);
                    }
                  }

                  ++v47;
                  v46 += 12;
                }

                while (v47 < v45);
              }

              else
              {
                v48 = 0;
              }

              v142 = *(v41 + 6000);
              if (v142 && v48 < v142)
              {
LABEL_200:
                v144 = *(v43 + 16);
                if (v144)
                {
                  v145 = 0;
                  v146 = 0;
                  v147 = *v43;
                  do
                  {
                    v148 = *(v147 + v145);
                    if (v148 >= 1)
                    {
                      v149 = *(*(v39 + 1312) + 4);
                      v150 = (*(a1 + 392))(v40, *(a1 + 56), *(&__b + 1), (v148 - 1), *(&v160 + 3));
                      v147 = *v43;
                      *(*v43 + v145 + 4) = (v42 * (v149 * v150)) + (*(*v43 + v145 + 4) - v44);
                      v144 = *(v43 + 16);
                    }

                    ++v146;
                    v145 += 12;
                    v21 = 4295000000.0;
                  }

                  while (v146 < v144);
                  goto LABEL_118;
                }
              }
            }
          }
        }
      }

      else
      {
        UnicornSearch_TreeIndex_InnerDefault_Cascaded(a1, (v39 + 1088), v2 - 2, &__b);
      }

LABEL_117:
      v21 = 4295000000.0;
LABEL_118:
      if (HIDWORD(v161[0]) == 4)
      {
        v4 = v156;
        v9 = v157;
        v15 = v155;
      }

      else
      {
        v87 = *((&v162 | 0xC) + 4 * LODWORD(v161[1])) * *(*(a1 + 112) + 5564);
        v88 = v87;
        v4 = v156;
        v9 = v157;
        v15 = v155;
        if (v156[4] > v87)
        {
          updated = mfs_CostList_Select(*(a1 + 136), v3, 1, v87);
          v89 = *(*(a1 + 136) + 16) + 32 * v3;
          v91 = *(v89 + 16);
          v90 = (v89 + 16);
          if (v91 > v88)
          {
            *v90 = v88;
          }
        }
      }

      if (UNICORN__log_select_GetLogLevel(*(*(v9 + 1072) + 32)) >= 3)
      {
        *(v9 + 1960) += v4[4];
      }

      if (HIDWORD(v161[0]) != 4)
      {
        if (HIDWORD(v161[0]) == 2)
        {
          v108 = *(a1 + 120);
          v109 = v108[137];
          if (*(v109 + 1928) == 1)
          {
            v110 = *(a1 + 112);
            if (v110[1688] && *(&__b + 1))
            {
              v111 = v108[138] + 32 * v3;
              v112 = *(v111 + 16);
              if (v112)
              {
                v113 = 0;
                v114 = 0;
                v115 = 1.0 - *(v108[169] + 4 * v3);
                v116 = *v111;
                do
                {
                  if (v110[1496])
                  {
                    v117 = (v116 + v113 + 8);
                  }

                  else
                  {
                    v117 = (*(v109 + 1064) + 4 * (2 * *(v116 + v113 + 8)));
                  }

                  if ((*(v108[144] + 4 * (((*(v116 + v113) - 1) / v110[1498]) >> 5)) >> ((*(v116 + v113) - 1) / v110[1498])))
                  {
                    v118 = *(v108[164] + 4) * *(v108[145] + 4 * *v117);
                  }

                  else
                  {
                    v119 = *(v108[164] + 4);
                    v118 = v119 * (*(a1 + 392))(v109, *(a1 + 56), *(&__b + 1), *(&v160 + 3));
                    v116 = *v111;
                    v112 = *(v111 + 16);
                  }

                  v120 = (v115 * v118) + *(v116 + v113 + 4);
                  *(v116 + v113 + 4) = v120;
                  if (v120 < v21)
                  {
                    v21 = v120;
                  }

                  ++v114;
                  v113 += 12;
                }

                while (v114 < v112);
                v4 = v156;
              }

              v9 = v157;
            }

            v15 = v155;
          }
        }

        else if (HIDWORD(v161[0]) == 1)
        {
          v154 = updated;
          v92 = *(a1 + 120);
          v93 = v92[137];
          if (*(v93 + 1928) == 1)
          {
            v94 = *(a1 + 112);
            if (v94[1688])
            {
              if (v159)
              {
                v95 = v92[138] + 32 * v3;
                v96 = *(v95 + 16);
                if (v96)
                {
                  v97 = 0;
                  v98 = 0;
                  v99 = 1.0 - *(v92[169] + 4 * v3);
                  v100 = *v95;
                  do
                  {
                    if (v94[1496])
                    {
                      v101 = (v100 + v97 + 8);
                    }

                    else
                    {
                      v101 = (*(v93 + 1064) + 4 * ((2 * *(v100 + v97 + 8)) | 1u));
                    }

                    v102 = *(v100 + v97) + 1;
                    v103 = *v101;
                    if ((*(v92[144] + 4 * ((v102 / v94[1498]) >> 5)) >> (v102 / v94[1498])))
                    {
                      v104 = *(v92[164] + 8) * *(v92[145] + 4 * v103);
                    }

                    else
                    {
                      v105 = (*(a1 + 392))(v93, *(a1 + 56), v159, (*(v100 + v97) + 1), *v161);
                      v106 = *(v92[164] + 8);
                      *(v92[144] + 4 * ((v102 / v94[1498]) >> 5)) |= 1 << (v102 / v94[1498]);
                      v104 = v105 * v106;
                      *(v92[145] + 4 * v103) = v105;
                      v100 = *v95;
                      v96 = *(v95 + 16);
                    }

                    v107 = (v99 * v104) + *(v100 + v97 + 4);
                    *(v100 + v97 + 4) = v107;
                    if (v107 < v21)
                    {
                      v21 = v107;
                    }

                    ++v98;
                    v97 += 12;
                  }

                  while (v98 < v96);
                  v4 = v156;
                }
              }
            }

            v9 = v157;
          }

          v15 = v155;
          updated = v154;
        }

        else
        {
          UnicornSearch_TreeIndex_InnerDefault_Cascaded(a1, (*(a1 + 120) + 1088), v3, &__b);
        }
      }

      goto LABEL_163;
    }

    v68 = *(v39 + 1096);
    if (*(v68 + 1928) != 1)
    {
      goto LABEL_117;
    }

    v69 = *(a1 + 112);
    if (!v69[1688])
    {
      goto LABEL_117;
    }

    v70 = *(v39 + 1104) + 32 * v3;
    if (!*(v70 + 16))
    {
      goto LABEL_117;
    }

    v71 = 0;
    v72 = 0;
    v73 = 1.0 - *(*(v39 + 1352) + 4 * v3);
    v74 = *v70;
    v21 = 4295000000.0;
    v153 = *(v39 + 1096);
    while (1)
    {
      v75 = v69[1496];
      v76 = (v75 ? v74 + v71 + 8 : *(v68 + 1064) + 4 * (2 * *(v74 + v71 + 8)));
      v77 = *(v74 + v71);
      v78 = *v76;
      if (!*(&__b + 1))
      {
        break;
      }

      v79 = *(*(v39 + 1312) + 4);
      if (((*(*(v39 + 1152) + 4 * (((v77 - 1) / v69[1498]) >> 5)) >> ((v77 - 1) / v69[1498])) & 1) == 0)
      {
        v83 = (*(a1 + 392))(v153, *(a1 + 56), *(&v160 + 3));
        v68 = v153;
        v80 = (v79 * v83) + 0.0;
        if (v69[1496])
        {
          goto LABEL_103;
        }

LABEL_102:
        v78 = *(*(v68 + 1064) + 4 * ((2 * *(*v70 + v71 + 8)) | 1u));
        goto LABEL_103;
      }

      v80 = (v79 * *(*(v39 + 1160) + 4 * v78)) + 0.0;
      if (!v75)
      {
        goto LABEL_102;
      }

LABEL_103:
      if (v159)
      {
        v81 = *(*(v39 + 1312) + 8);
        if ((*(*(v39 + 1152) + 4 * (((v77 + 1) / v69[1498]) >> 5)) >> ((v77 + 1) / v69[1498])))
        {
          v82 = *(*(v39 + 1160) + 4 * v78);
        }

        else
        {
          (*(a1 + 392))(v153, *(a1 + 56), *v161);
          v68 = v153;
        }

        v80 = v80 + (v81 * v82);
      }

      v74 = *v70;
      v84 = *v70 + v71;
      v85 = *(v84 + 4);
      v86 = (v73 * v80) + v85;
      *(v84 + 4) = v86;
      if (v86 < v21)
      {
        v21 = (v73 * v80) + v85;
      }

      ++v72;
      v71 += 12;
      if (v72 >= *(v70 + 16))
      {
        goto LABEL_118;
      }
    }

    v80 = 0.0;
    if (v75)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v21 = 4295000000.0;
LABEL_163:
  v121 = v4[4];
  v122 = *(a1 + 112);
  v123 = *(v122 + 5564);
  v124 = *(v122 + 6636);
  v125 = !v15;
  if (v124 <= 0.0)
  {
    v125 = 1;
  }

  if ((v125 & 1) == 0)
  {
    v126 = 0;
    if (v121 && v123 >= 1)
    {
      v126 = 0;
      v127 = v21 + v124;
      v128 = (*v4 + 4);
      v129 = 1;
      do
      {
        v130 = *v128;
        v128 += 3;
        if (v130 < v127)
        {
          ++v126;
        }

        if (v129 >= v121)
        {
          break;
        }

        ++v129;
      }

      while (v126 < v123);
    }

    if (v126 >= v123)
    {
      v126 = *(v122 + 5564);
    }

    v131 = *(v122 + 6632);
    if (v126 <= v131)
    {
      v123 = v131;
    }

    else
    {
      v123 = v126;
    }
  }

  if (v121 > v123)
  {
    updated = mfs_CostList_Select(*(a1 + 136), v3, 1, v123);
    UNICORN__mfs_CostList_Prune(*(a1 + 136), v3, v123);
  }

  if (UNICORN__log_select_GetLogLevel(*(*(v9 + 1072) + 32)) >= 3)
  {
    *(v9 + 1964) += v4[4];
  }

  UNICORN__log_select_Diag(*(a1 + 56), 11, "costlist(%d)\n");
  return updated;
}

void UnicornSearch_TreeIndex_InnerDefault_Cascaded(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v4 = a2[1];
  if (*(v4 + 1928) == 1)
  {
    if (*(*(a1 + 112) + 6752))
    {
      v7 = a2[2] + 32 * a3;
      if (*(v7 + 16))
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.0 - *(*(*(a1 + 120) + 1352) + 4 * a3);
        v12 = *(*(v4 + 568) + 11548) - 1;
        v13 = *v7;
        do
        {
          v14 = *(v13 + v9);
          if (*(a4 + 8))
          {
            v15 = v14 < 1;
          }

          else
          {
            v15 = 1;
          }

          v16 = 0.0;
          if (!v15)
          {
            v17 = *(a2[28] + 4);
            v16 = (v17 * (*(a1 + 392))(v4, *(a1 + 56), *(a4 + 44))) + 0.0;
          }

          if (*(a4 + 16))
          {
            v18 = v14 < v12;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v19 = *(a2[28] + 8);
            v16 = v16 + (v19 * (*(a1 + 392))(v4, *(a1 + 56), *(a4 + 48)));
          }

          v13 = *v7;
          *(*v7 + v9 + 4) = (v11 * v16) + *(*v7 + v9 + 4);
          ++v10;
          v9 += 12;
        }

        while (v10 < *(v7 + 16));
      }
    }
  }
}

uint64_t UNICORN__mfs_TCost_Init(uint64_t a1, uint64_t a2, _DWORD *__b)
{
  cstdlib_memset(__b, 0, 0xA0uLL);
  *__b = *(a2 + 212) + *(a2 + 208);
  v6 = 1.0 / (*(a2 + 5428) + *(a2 + 5432));
  *(__b + 1) = v6;
  __b[3] = *(a2 + 5532);
  __b[2] = *(a2 + 208);
  __b[27] = *(a2 + 5432);
  __b[28] = *(a2 + 5428);
  v7 = *(a2 + 5424);
  *(__b + 29) = v7;
  *(__b + 1) = v6 * v7;
  UNICORN__mfs_F32Vect_Init(a1, __b + 7);
  UNICORN__mfs_F32Vect_Init(a1, __b + 10);
  *(__b + 3) = 0;
  *(__b + 4) = 0;
  *(__b + 19) = mfs_TCost_Elf0_Manhattan_Clusterize;
  return 0;
}

uint64_t mfs_TCost_EnableSIMD(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  v4 = mfs_TCost_Elf0_Manhattan_Clusterize_SIMD;
  if (!a2)
  {
    v4 = mfs_TCost_Elf0_Manhattan_Clusterize;
  }

  *(a1 + 152) = v4;
  return result;
}

uint64_t UNICORN__mfs_FillTgtVect(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  v8 = *(a2 + 24);
  v9 = *(v8 + 1520);
  v10 = *(v8 + 3040);
  *(a3 + 104) = a4;
  UNICORN__mfs_F32Vect_Clear((a3 + 56));
  result = UNICORN__mfs_F32Vect_Create(a3 + 56, a4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  UNICORN__mfs_F32Vect_Clear((a3 + 80));
  result = UNICORN__mfs_F32Vect_Create(a3 + 80, a4 + *a3 - 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v12 = v9;
  v13 = *(a3 + 64);
  *(a3 + 24) = *(*(v8 + 1576) + 8 * v9);
  *(a3 + 32) = v13;
  if (a4 < 1)
  {
LABEL_21:
    v22 = *(a2 + 24);
    *(v22 + 3040) = v10;
    *(v22 + 1520) = v9;
    return result;
  }

  v14 = 0;
  v15 = 0;
  v16 = -1.0;
  v17 = 1.0;
  while ((*(*(a2 + 48) + v12) & 4) == 0)
  {
    v18 = -1.0e10;
    v19 = 1.0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    result = UNICORN__mfs_F32Vect_Pad(a3 + 56, v18);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v21 = sqrtf(v19);
    if (v16 != v19)
    {
      v17 = v21;
    }

    result = UNICORN__mfs_F32Vect_Pad(a3 + 80, v17);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v16 != v19)
    {
      v16 = v19;
    }

    ++v12;
    ++v15;
    v14 = 1;
    if (v15 == a4)
    {
      v9 = v12;
      goto LABEL_21;
    }
  }

  v18 = **(*(v8 + 3096) + 8 * v10);
  v19 = **(*(v8 + 3136) + 8 * v10++);
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (*(a1 + 208) < 1)
  {
    goto LABEL_13;
  }

  v20 = 0;
  while (1)
  {
    result = UNICORN__mfs_F32Vect_Pad(a3 + 80, sqrtf(*(*(*(v8 + 1616) + 8 * v12) + 4 * v20)));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (++v20 >= *(a1 + 208))
    {
      goto LABEL_13;
    }
  }
}

void *UNICORN__mfs_TCost_Clear(uint64_t a1)
{
  UNICORN__mfs_F32Vect_Clear((a1 + 56));

  return UNICORN__mfs_F32Vect_Clear((a1 + 80));
}

void mfs_TCost_BNFCandidateCostStream(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float *a5, unsigned int a6, int a7)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = *(a3 + 16);
  v9 = *(a1 + 104);
  a5[2] = 0.0;
  *a5 = 0.0;
  if (v9)
  {
    if (a7 > 2)
    {
      if ((a7 - 3) < 2)
      {
        v14 = (&UNICORN__tblSubUnitLRWeights + 12 * a6);
        v15 = v7[v9 - 1];
        v16 = a4 - 1;
        v17 = v8[v16];
        v18 = v7[(v9 - 1) >> 1];
        v19 = v8[v16 >> 1];
        v20 = vabds_f32(*v7, *v8);
        if (*v7 <= *v8)
        {
          v21 = *v8;
        }

        else
        {
          v21 = *v7;
        }

        v22 = (v20 / v21) * *v14;
        v23 = vabds_f32(v15, v17);
        if (v15 <= v17)
        {
          v24 = v8[v16];
        }

        else
        {
          v24 = v7[v9 - 1];
        }

        v25 = v22 + ((v23 / v24) * v14[1]);
        v26 = vabds_f32(v18, v19);
        if (v18 <= v19)
        {
          v18 = v8[v16 >> 1];
        }

        v27 = v26 / v18;
        v28 = a4;
        v29 = v25 + ((v27 * v14[2]) * ((a4 + v9) / (a4 * v9)));
        if (a7 == 4)
        {
          v29 = (vabds_f32((*v7 - v15) / v9, (*v8 - v17) / v28) * *(a2 + 6776)) + ((1.0 - *(a2 + 6776)) * v29);
        }

        a5[2] = v29 * *(a1 + 108);
        v30 = *(a1 + 116);
        v31 = v9 - a4;
        if (v9 - a4 < 0)
        {
          v31 = a4 - v9;
        }

        v32 = v31 / v28;
        goto LABEL_56;
      }

      if (a7 != 5)
      {
        return;
      }

      goto LABEL_21;
    }

    if (a7 == 1)
    {
      v58 = *v7;
      v57[0] = *v8;
      v42 = &v8[a4 - 1];
      if (v9 < 3)
      {
        v59 = v7[v9 - 1];
        v43 = 2;
      }

      else
      {
        v60 = v7[v9 - 1];
        v57[2] = *v42;
        v59 = *(v7 + ((2 * v9) & 0x1FFFFFFFCLL));
        v42 = &v8[a4 >> 1];
        v43 = 3;
      }

      v57[1] = *v42;
      a5[2] = mfs_bnfData_CosineCost_F32(&v58, v57, v43) * *(a1 + 108);
      v30 = *(a1 + 116);
      v56 = v9 - a4;
      if (v9 - a4 < 0)
      {
        v56 = a4 - v9;
      }

      v54 = v56;
      v55 = a4;
      goto LABEL_55;
    }

    if (a7 == 2)
    {
LABEL_21:
      if (*(a1 + 120) == 1)
      {
        v33 = 0.0;
        if (a4 >= 3)
        {
          v34 = v8 + 1;
          for (i = (a4 - 1) - 1; i; --i)
          {
            v36 = *v34;
            if (*v34 <= 0.0)
            {
              v40 = 1000.0;
              v39 = 5.0;
            }

            else
            {
              v37 = *(v34 - 1);
              v38 = v34[1];
              v33 = v33 + UNICORN__mfsLLCost(v36 - *(a1 + 124), *(a1 + 136));
              if (v37 <= 0.0 || v38 <= 0.0)
              {
                goto LABEL_30;
              }

              v33 = v33 + UNICORN__mfsLLCost(((v38 * 0.5) + (v37 * -0.5)) - *(a1 + 128), *(a1 + 140));
              v39 = ((v37 + v38) + (v36 * -2.0)) - *(a1 + 132);
              v40 = *(a1 + 144);
            }

            v33 = v33 + UNICORN__mfsLLCost(v39, v40);
LABEL_30:
            ++v34;
          }
        }

        v41 = sqrtf(v33) / ((a4 + -2.0) * 3.0);
      }

      else
      {
        v44 = 0.0;
        if (a4 >= 3)
        {
          v45 = v8 + 1;
          v46 = (a4 - 1) - 1;
          do
          {
            if (*v45 > 0.0)
            {
              v44 = v44 + UNICORN__mfsLLCost(5.0, 1000.0);
            }

            ++v45;
            --v46;
          }

          while (v46);
        }

        v41 = sqrtf(v44);
      }

      if (a7 == 5)
      {
        v47 = v8[1];
        v48 = v7[v9 - 1];
        v49 = &v8[a4];
        v50 = *(v49 - 2);
        if (*v7 <= v47)
        {
          v51 = v8[1];
        }

        else
        {
          v51 = *v7;
        }

        if (v48 <= v50)
        {
          v52 = *(v49 - 2);
        }

        else
        {
          v52 = v7[v9 - 1];
        }

        v41 = v41 + ((vabds_f32(*v7, v47) / v51) + (vabds_f32(v48, v50) / v52));
      }

      a5[2] = v41 * *(a1 + 108);
      v30 = *(a1 + 116);
      v53 = -2 - (v9 - a4);
      if (v9 - a4 + 2 >= 0)
      {
        v53 = v9 - a4 + 2;
      }

      v54 = v53;
      v55 = a4 + -2.0;
LABEL_55:
      v32 = v54 / v55;
LABEL_56:
      *a5 = v32 * v30;
    }
  }
}

float mfs_TCost_BNFCandidateCostStreamElf0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float *a5, unsigned int a6, float *a7, int a8, float result)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = *(a3 + 16);
  v10 = *(a1 + 104);
  a5[2] = 0.0;
  *a5 = 0.0;
  if (v10)
  {
    if ((a8 - 3) < 2)
    {
      v16 = (&UNICORN__tblSubUnitLRWeights + 12 * a6);
      v17 = *v9;
      v18 = a7[1];
      v19 = &v9[a4];
      v20 = *(v19 - 1);
      v21 = vabds_f32(*a7, v17);
      if (*a7 <= v17)
      {
        v22 = v17;
      }

      else
      {
        v22 = *a7;
      }

      v23 = (v21 / v22) * *v16;
      v24 = vabds_f32(v18, v20);
      if (v18 <= v20)
      {
        v25 = *(v19 - 1);
      }

      else
      {
        v25 = a7[1];
      }

      v26 = v23 + ((v24 / v25) * v16[1]);
      if (a8 == 4)
      {
        v26 = (vabds_f32((*a7 - v18) / v10, (v17 - v20) / a4) * *(a2 + 6776)) + ((1.0 - *(a2 + 6776)) * v26);
      }

      a5[2] = v26 * *(a1 + 108);
      v27 = *(a1 + 116);
      v30 = v10 - a4;
      if (v10 - a4 < 0)
      {
        v30 = a4 - v10;
      }

      v29 = v30 / a4;
    }

    else
    {
      if (a8)
      {
        if (a8 != 1)
        {
          return result;
        }

        v14 = a7[1];
        v32[0] = *a7;
        v31[0] = *v9;
        v32[1] = v14;
        v31[1] = v9[a4 - 1];
        v15 = mfs_bnfData_CosineCost_F32(v32, v31, 2u) * *(a1 + 108);
      }

      else
      {
        v15 = *(a1 + 108) * sqrtf((*a7 - *v9) + (a7[1] - v9[a4 - 1]));
      }

      a5[2] = v15;
      v27 = *(a1 + 116);
      v28 = v10 - a4;
      if (v10 - a4 < 0)
      {
        v28 = a4 - v10;
      }

      v29 = v28 / a4;
    }

    result = v29 * v27;
    *a5 = result;
  }

  return result;
}

uint64_t mfs_LogElf0Targets_Clustered(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    return UNICORN__log_select_Diag(result, 10, "PHN:%3d  STA:%d - F0_LEFT_PGEN:%5.2f F0_LEFT_RNN :%5.2f   F0_RIGHT_PGEN:%5.2f F0_RIGHT_RNN :%5.2f\n");
  }

  return result;
}

uint64_t LogEdgeLF0Targets(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 104))
  {
    return UNICORN__log_select_Diag(result, 10, "PHN:%3d  STA:%d - F0_LEFT_PGEN:%5.2f F0_LEFT_RNN :%5.2f   F0_RIGHT_PGEN:%5.2f F0_RIGHT_RNN :%5.2f\n");
  }

  return result;
}

uint64_t UNICORN__mfs_TCost_SetTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v8 = UNICORN__mfs_FillTgtVect(*(a2 + 568), a3, a1, *(a4[2] + 4 * a5));
  *(a1 + 124) = *(*(a4[14] + 8 * a5) + 4);
  *(a1 + 136) = UNICORN__bet5_finv(sqrtf(*(*(a4[19] + 8 * a5) + 4)));
  *(a1 + 128) = *(*(a4[14] + 8 * a5) + 8);
  *(a1 + 140) = UNICORN__bet5_finv(sqrtf(*(*(a4[19] + 8 * a5) + 8)));
  *(a1 + 132) = *(*(a4[14] + 8 * a5) + 12);
  *(a1 + 144) = UNICORN__bet5_finv(sqrtf(*(*(a4[19] + 8 * a5) + 12)));
  *(a1 + 120) = (*(a4[22] + a5) >> 2) & 1;
  return v8;
}

void UNICORN__mfs_TCost_Copy(void *a1, uint64_t *a2)
{
  UNICORN__mfs_F32Vect_Clear(a1 + 7);
  UNICORN__mfs_F32Vect_Clear(a1 + 10);
  cstdlib_memcpy(a1, a2, 0xA0uLL);
  UNICORN__mfs_F32Vect_Copy((a1 + 7), a2 + 7);
  UNICORN__mfs_F32Vect_Copy((a1 + 10), a2 + 10);
  v4 = a1[8];
  a1[3] = a2[3];
  a1[4] = v4;
}

uint64_t GetBnfTargetVectorPacked(uint64_t a1, int a2, float *a3)
{
  *a3 = VectBlock_Get_IndexElm_LH_F32(a1 + 1928, a2);
  if (*(a1 + 1944))
  {

    return VectBlock_Get_IndexPtr_LH_S8(a1 + 1864, a2);
  }

  else
  {

    return VectBlock_Get_IndexPtr_LH_S16(a1 + 1880, a2);
  }
}

uint64_t Search_TreeIndex(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, signed int a9)
{
  v12 = *(a1 + 104);
  v39 = *(a1 + 112);
  v13 = &v12[2 * a2];
  v14 = *(a1 + 120);
  v36 = *(*(a5 + 8 * a2 + 56) + 4 * a3);
  v15 = (*(*(v13 + 96) + 8 * a3) + 40 * v36);
  v16 = v15[1];
  v33 = *(v13 + 101);
  v34 = *v15;
  v17 = *(*(v14 + 1352) + 4 * a9);
  v18 = **(a8 + 224);
  v19 = *(a8 + 16) + 32 * a9;
  v20 = *v12;
  v35 = *(v19 + 16);
  if (*(v19 + 20) >= v16)
  {
    v22 = 0;
  }

  else
  {
    v21 = v14;
    v22 = UNICORN__mfs_CostList_Resize(a8, a9, v16);
    v14 = v21;
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }
  }

  v40 = 0.0;
  BnfTargetVectorPacked = GetBnfTargetVectorPacked(v14, a9 / *(v39 + 5992), &v40);
  v24 = a9 / v20;
  if (*(v39 + 5992) == 1 || *(a8 + 56) != v24)
  {
    (*(a1 + 384))(v12, *(a1 + 56), BnfTargetVectorPacked, v36, a3, *(a8 + 104), v40);
    *(a8 + 56) = v24;
  }

  if (v16 && v35 - a6 < a7)
  {
    v25 = 0;
    v26 = (v33 + 4 * v34);
    v27 = (1.0 - v17) * v18;
    v28 = *(*(v12 + 106) + 4 * (*v26 / *(*(v12 + 71) + 5992)));
    do
    {
      v29 = v26[v25];
      v30 = *(*(a8 + 104) + 4 * v25);
      v31 = *(a8 + 72);
      *(*(a8 + 64) + 4 * ((v29 / *(v39 + 5992)) >> 5)) |= 1 << (v29 / *(v39 + 5992));
      *(v31 + 4 * v28) = v30;
      mfs_CostList_PadWithBnfOffset(a8, a9, v29, v28 + v25, v27 * v30);
      *(*(a8 + 112 + 8 * (a3 - 2)) + 4 * (v25 >> 5)) |= 1 << v25;
      ++v25;
    }

    while (v25 < v16 && *(*(a8 + 16) + 32 * a9 + 16) - a6 < a7);
    return v22;
  }

  return v22;
}

uint64_t Search_PruneBNF_TreeIndex(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, signed int a9)
{
  *&v168[4] = *MEMORY[0x277D85DE8];
  v152 = *(a4 + 1);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v155 = v11 + 192;
  v156 = *(*(a5 + 8 * a2 + 56) + 4 * a3);
  v14 = (*(*&v11[2 * a2 + 192] + 8 * a3) + 40 * v156);
  v15 = *(*(v13 + 1352) + 4 * a9);
  v16 = v14[1];
  v17 = **(a8 + 224);
  v157 = v11 + 202;
  v158 = *v14;
  v18 = *(*&v11[2 * a2 + 202] + 4 * v158);
  v19 = *(a8 + 16);
  v159 = v11;
  v20 = *v11;
  v162 = 0.0;
  v163 = 0.0;
  BET5_GenericRules_Param_GetLocalValue(v12, v13, 1u, a9, &v163);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v140 = v19;
  BET5_GenericRules_Param_GetLocalValue(v12, v13, 2u, a9, &v162);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v154 = a3;
  v141 = a3 - 2;
  cstdlib_memset(__b, 0, 0x400uLL);
  v22 = v13;
  if (UNICORN__log_select_GetLogLevel(*(*(v13 + 1072) + 32)) >= 3)
  {
    *(v13 + 1948) += *(*(*&v155[2 * a2] + 8 * a3) + 40 * v156 + 4);
  }

  v23 = a9;
  v24 = *(v159 + 71);
  v25 = v18 / *(v24 + 5992);
  v26 = *(*(v159 + 106) + 4 * v25);
  v27 = v12;
  v28 = *(v12 + 5984) ? v26 + *(v24 + 11564) / *v159 * v141 : *(*(v159 + 106) + 4 * v25);
  if (*(*(a8 + 16) + 32 * a9 + 20) < v16)
  {
    v21 = UNICORN__mfs_CostList_Resize(a8, a9, v16);
    v23 = a9;
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  v29 = *(v22 + 1768);
  if (v29 && *(v29 + 12) == 1 && *(v29 + 8) > v23 && *(*v29 + 48 * a9 + 16) != 0.0)
  {
    v30 = *(v29 + 20);
    if (v30 >= 0x64)
    {
      v31 = 100;
    }

    else
    {
      v31 = v30;
    }
  }

  else
  {
    v31 = -1;
  }

  v32 = 0.0;
  v33 = (v23 / v20);
  v34 = v152;
  v35 = v152 == 1;
  v153 = v26;
  v136 = v28;
  if (v35)
  {
    v36 = v31;
    v145 = 0;
    v146 = 0;
    v37 = 0;
    v151 = v34;
    v38 = 0.0;
    v39 = v159;
    goto LABEL_39;
  }

  v40 = *(v12 + 6160);
  v39 = v159;
  if (v40 >= *(v27 + 6164) && v31 == -1)
  {
    v38 = v163;
    if (v163 == 0.0 || (v41 = *(v27 + 11624)) == 0 || (v42 = *(v27 + 11632)) == 0 || v141 >= *(v27 + 11608))
    {
      v36 = -1;
      v145 = 0;
      v146 = 0;
      v37 = 0;
      v151 = 1;
      v38 = 0.0;
      goto LABEL_39;
    }

    v36 = -1;
    if (v156 > *(*(v27 + 11616) + 4 * v141))
    {
      v145 = 0;
      v146 = 0;
      v37 = 0;
      v151 = 1;
      v38 = 0.0;
      goto LABEL_39;
    }

    v37 = (*(*(v41 + 8 * v141) + 4 * v156) + *(*(v159 + 71) + 24) * *(a5 + 24)) >> 1;
    v145 = *(*(v42 + 8 * v141) + 4 * v156);
    v32 = v162;
    v146 = PhonemeDurationOutlierDistance;
    if (UNICORN__log_select_GetLogLevel(*(*(a1 + 56) + 32)) < 3)
    {
      v151 = 0;
    }

    else
    {
      UNICORN__log_select_Diag(*(a1 + 56), 3, "phonidx %u: dist duroutlier: phondur target %u msecs [(predicted %u + meancluster %u)/2], stdevcluster %u msecs, param1 %.3f, param2 %.3f\n");
      v151 = 0;
      v146 = PhonemeDurationOutlierDistance;
    }
  }

  else
  {
    v43 = *(v159 + 71);
    v44 = *(v43 + 24);
    v37 = (v44 * *(a5 + 24));
    v45 = (*(a5 + 28) * v44);
    if (v31)
    {
      if (v31 == -1)
      {
        v36 = -1;
        v38 = v40 * v45;
      }

      else
      {
        v36 = v31;
        v46 = *(v43 + 11572) * 1000.0 * (130 - v31);
        v38 = v46 / 100.0;
      }
    }

    else
    {
      v36 = 0;
      v38 = 1000.0;
    }

    v145 = v45;
    v146 = PhonemeDurationOutlierDistance_LegacyOrTuning;
    if (UNICORN__log_select_GetLogLevel(*(*(a1 + 56) + 32)) < 3)
    {
      v151 = 0;
    }

    else
    {
      UNICORN__log_select_Diag(*(a1 + 56), 3, "phonidx %u: dist duroutlier legacy: phondur target %u msecs, stdevdur %u msecs, threshold %u msecs\n");
      v151 = 0;
      v146 = PhonemeDurationOutlierDistance_LegacyOrTuning;
    }
  }

  v23 = a9;
LABEL_39:
  if (*(a8 + 56) != v33)
  {
    v21 = Search_BNFCostCache_Fill(a1, v33, *(a1 + 136) + 56);
    v23 = a9;
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  if (*(*(v39 + 71) + 5992) != 1)
  {
    v47 = v33 + 1;
    if ((v33 + 1) < *(a1 + 88) && v47 != *(a8 + 80))
    {
      v21 = Search_BNFCostCache_Fill(a1, v47, *(a1 + 136) + 80);
      v23 = a9;
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }
    }
  }

  v144 = v37;
  if (a3 < 3 || *(v27 + 5992) == 1 || *(a8 + 56) != v33)
  {
LABEL_60:
    v48 = 1;
    goto LABEL_61;
  }

  v48 = 1;
  v49 = (v23 - 1);
  if (v23 >= 1 && !*(v27 + 6200) && v36 == -1 && *(*(v22 + 1352) + 4 * v49) == *(*(v22 + 1352) + 4 * a9) && !*(*(a1 + 144) + 4 * v49))
  {
    v164 = 0.0;
    *v165 = 0.0;
    BET5_GenericRules_Param_GetLocalValue(v27, v22, 1u, v23 - 1, v165);
    if ((v21 & 0x80000000) == 0)
    {
      BET5_GenericRules_Param_GetLocalValue(v27, v22, 2u, v49, &v164);
      if ((v21 & 0x80000000) == 0)
      {
        if (*v165 == v163)
        {
          v23 = a9;
          if (v164 == v162)
          {
            v48 = 0;
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        v48 = 1;
        v23 = a9;
        goto LABEL_61;
      }
    }

    return v21;
  }

LABEL_61:
  v52 = *(a1 + 104);
  v53 = *(v52 + 2376);
  if (!v53)
  {
    List = 0;
    v54 = 0;
    v69 = a9;
    goto LABEL_124;
  }

  v54 = 0;
  v55 = 0;
  v149 = *(a1 + 120);
  v164 = 0.0;
  v56 = *(v52 + 2384) + 1;
  do
  {
    if (!--v56)
    {
      break;
    }

    if (*(v53 + 20))
    {
      *&v165[4 * v55] = v53;
      v54 = ++v55;
    }

    v53 += 64;
  }

  while (v55 < 0x64);
  v135 = v48;
  if (*(v52 + 2392))
  {
    if (v55 > 0x63)
    {
      List = 0;
LABEL_95:
      v70 = 0;
      v71 = *(a1 + 120);
      v150 = (v33 + 1);
      v137 = v22;
      while (1)
      {
        v72 = &v165[4 * v70];
        v73 = *v72;
        v74 = *(*v72 + 16);
        v75 = *(v71 + 8);
        if ((v74 - 253) > 1)
        {
          v78 = *(v75 + 8 * v74 + 16);
          if (!v78)
          {
            goto LABEL_109;
          }

          v77 = (v78 + v33);
          goto LABEL_103;
        }

        v76 = *(v75 + 32);
        if (!v76)
        {
          goto LABEL_109;
        }

        if (v74 == 253)
        {
          if (v33)
          {
            v77 = (v76 + (v33 - 1));
LABEL_103:
            v79 = *v77;
            goto LABEL_107;
          }
        }

        else if (v150 < *(a1 + 88))
        {
          v77 = (v76 + v150);
          goto LABEL_103;
        }

        v79 = 1;
LABEL_107:
        v72[8] = v79;
        if (*(v73 + 36) <= v79)
        {
LABEL_109:
          if (UNICORN__log_select_GetLogLevel(*(*(a1 + 56) + 32)) >= 3)
          {
            UNICORN__log_select_Diag(*(a1 + 56), 3, "\nphonidx %u: Warning : fuzzy table %s has been deactivated for target feature value %u\n");
          }

          v80 = v70 + 1;
          if (v70 + 1 < v54)
          {
            v81 = v54 - v80;
            v82 = &v165[4 * v80];
            v83 = v70;
            do
            {
              v84 = *v82++;
              *&v165[4 * v83++] = v84;
              --v81;
            }

            while (v81);
          }

          v55 = --v54;
          goto LABEL_115;
        }

        ++v70;
LABEL_115:
        if (v70 >= v55)
        {
          v22 = v137;
          goto LABEL_117;
        }
      }
    }

    if (*(v52 + 2400))
    {
      v57 = 0;
      while (1)
      {
        v58 = *(v52 + 2392) + 48 * v57;
        List = BET5_GenericRules_Rule_Matches(v149, v58, v33, &v164);
        if ((List & 0x80000000) != 0)
        {
          return List;
        }

        if (v164 != 0.0)
        {
          v59 = *(v58 + 16);
          if (v59)
          {
            v60 = 0;
            v61 = *(v58 + 24);
            do
            {
              v62 = (v61 + 12 * v60);
              if (*v62 == 4)
              {
                if (v54)
                {
                  v63 = 0;
                  v64 = *(v52 + 2376);
                  v65 = v62[2];
                  v66 = v64 + (v65 << 6);
                  v67 = v54;
                  v68 = v165;
                  while (*(*v68 + 16) != *(v66 + 16))
                  {
                    ++v63;
                    v68 += 4;
                    if (v54 == v63)
                    {
                      goto LABEL_85;
                    }
                  }

                  *v68 = v66;
                }

                else
                {
                  LODWORD(v63) = 0;
                }

                if (v63 == v54)
                {
                  v64 = *(v52 + 2376);
                  v65 = v62[2];
                  v67 = v54;
LABEL_85:
                  *&v165[4 * v67] = v64 + (v65 << 6);
                  ++v54;
                }
              }

              ++v60;
            }

            while (v60 != v59);
          }
        }

        if (v54 >= 0x64)
        {
          break;
        }

        ++v57;
        v55 = v54;
        if (v57 >= *(v52 + 2400))
        {
          goto LABEL_92;
        }
      }

      v55 = v54;
      goto LABEL_95;
    }
  }

  List = 0;
LABEL_92:
  if (v55)
  {
    goto LABEL_95;
  }

LABEL_117:
  if (UNICORN__log_select_GetLogLevel(*(*(a1 + 56) + 32)) <= 2)
  {
    v69 = a9;
  }

  else
  {
    v69 = a9;
    if (v54)
    {
      v85 = v22;
      v86 = 0;
      v87 = &v166;
      do
      {
        v87 += 2;
        UNICORN__log_select_Diag(*(a1 + 56), 3, "phonidx %u: dist fuzzy %u:%s: target feature value: %u\n");
        ++v86;
      }

      while (v54 != v86);
      v22 = v85;
    }
  }

  v26 = v153;
  v23 = a9;
  v48 = v135;
LABEL_124:
  v88 = v140 + 32 * v69;
  if ((v48 & 1) == 0)
  {
    List = mfs_ClonePrevList(a8, v23, v141);
    if ((List & 0x80000000) != 0)
    {
      return List;
    }

    if (UNICORN__log_select_GetLogLevel(*(*(a1 + 56) + 32)) >= 4)
    {
      UNICORN__log_select_Diag(*(a1 + 56), 3, "[Stage1 costs cloned from previous costlist.]\n");
    }

    goto LABEL_173;
  }

  v89 = 1.0 - v15;
  if ((v151 & 1) == 0)
  {
    v91 = a2;
    v90 = *&v155[2 * a2];
    goto LABEL_132;
  }

  v90 = *&v155[2 * a2];
  if (*(v27 + 6200))
  {
    v91 = a2;
LABEL_132:
    v92 = *(v90 + 8 * v154);
    if (*(v92 + 40 * v156 + 4))
    {
      v138 = v22;
      v93 = 0;
      v147 = v140 + 32 * v69;
      while (1)
      {
        v94 = *(*&v157[2 * v91] + 4 * (v158 + v93));
        if (v151)
        {
          v95 = v153 + v93;
          v96 = (v153 + v93);
          v97 = 0.0;
        }

        else
        {
          v97 = v146(*(*(v159 + 71) + 24) * *(*(v159 + 307) + (v153 + v93)), v144, v145, v38, v32);
          if (v97 >= 9999.9)
          {
            v95 = v153 + v93;
            v98 = a8;
            goto LABEL_145;
          }

          v95 = v153 + v93;
          v96 = (v153 + v93);
        }

        v98 = a8;
        v97 = v97 + *(*(a8 + 72) + 4 * v96);
        if (*(v27 + 6200))
        {
          if (*(v27 + 6196))
          {
            v99 = *(*(v159 + 130) + (v136 + v93));
            v100 = *(v27 + 6192);
            v101 = v156;
            if (v99 < v100)
            {
              v97 = v97 * (v99 / v100);
            }

            goto LABEL_146;
          }

          v102 = *(*(v159 + 74) + 16 * v94);
          v103 = *(v27 + 6192);
          if (v102 < v103)
          {
            v97 = v97 * (v102 / v103);
          }
        }

LABEL_145:
        v101 = v156;
LABEL_146:
        v104 = ComputeFuzzyDist(v54, v165, v95);
        v105 = v97 + *&v104;
        v106 = (v105 * 10.0);
        if (v106 >= 0xFF)
        {
          v107 = v168;
        }

        else
        {
          v107 = &__b[v106];
        }

        ++*v107;
        *(*(v98 + 104) + 4 * v93) = v105;
        v91 = a2;
        ++v93;
        v92 = *(*&v155[2 * a2] + 8 * v154);
        if (v93 >= *(v92 + 40 * v101 + 4))
        {
          v22 = v138;
          v26 = v153;
          goto LABEL_151;
        }
      }
    }

    v26 = v153;
    goto LABEL_153;
  }

  v139 = v22;
  v92 = *(v90 + 8 * v154);
  v124 = v92 + 40 * v156;
  v126 = *(v124 + 4);
  v125 = (v124 + 4);
  if (v126)
  {
    v147 = v140 + 32 * v69;
    v127 = v26;
    v128 = 0;
    v129 = *(a8 + 72);
    do
    {
      v130 = *(v129 + 4 * (v127 + v128));
      v131 = ComputeFuzzyDist(v54, v165, v127 + v128);
      v132 = v130 + *&v131;
      v133 = (v132 * 10.0);
      if (v133 >= 0xFF)
      {
        v134 = v168;
      }

      else
      {
        v134 = &__b[v133];
      }

      ++*v134;
      *(*(a8 + 104) + 4 * v128++) = v132;
    }

    while (v128 < *v125);
    v22 = v139;
    v26 = v127;
LABEL_151:
    v88 = v147;
  }

  else
  {
    v22 = v139;
  }

LABEL_153:
  v108 = __b[0];
  for (i = 1; i != 256; ++i)
  {
    v108 += __b[i];
    __b[i] = v108;
  }

  v110 = (*(v27 + 6156) * 10.0);
  if ((v110 - 1) <= 0xFE)
  {
    v111 = v110 + 1;
    while (__b[(v110 - 1)] < *(v27 + 6148))
    {
      LODWORD(v110) = v110 + 1;
      v35 = v111++ == 256;
      if (v35)
      {
        LODWORD(v110) = 256;
        break;
      }
    }
  }

  v112 = v110;
  v113 = v110 != 0;
  v114 = &__b[v110 - 1];
  while (v112 >= 2)
  {
    if (*(v114 - 1) <= *(v27 + 6148))
    {
      v113 = v112;
      break;
    }

    --v112;
    v115 = *v114--;
    if (v115 <= *(v27 + 6152))
    {
      v113 = v112 + 1;
      break;
    }
  }

  v116 = v92 + 40 * v156;
  v119 = *(v116 + 4);
  v117 = (v116 + 4);
  v118 = v119;
  if (v119)
  {
    v120 = 0;
    do
    {
      v121 = *(v88 + 16);
      if (v121 - a6 >= a7)
      {
        break;
      }

      v122 = *(*(a8 + 104) + 4 * v120);
      if ((v122 * 10.0) <= v113)
      {
        v123 = *v88 + 12 * v121;
        *v123 = *(*&v157[2 * a2] + 4 * (v158 + v120));
        *(v123 + 4) = (v89 * v17) * v122;
        *(v123 + 8) = v26 + v120;
        *(v88 + 16) = v121 + 1;
        *(*(a8 + 112 + 8 * v141) + ((v120 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v120;
        v118 = *v117;
      }

      ++v120;
    }

    while (v120 < v118);
  }

LABEL_173:
  if (UNICORN__log_select_GetLogLevel(*(*(v22 + 1072) + 32)) >= 3)
  {
    *(v22 + 1952) += *(v88 + 16);
  }

  return List;
}